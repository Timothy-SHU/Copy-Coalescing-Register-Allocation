; ModuleID = 'drivers/acpi/acpica/evxface.c'
source_filename = "drivers/acpi/acpica/evxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_notify_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_notify_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_remove_notify_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_remove_notify_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_sci_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_sci_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_remove_sci_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_remove_sci_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_global_event_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_global_event_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_fixed_event_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_fixed_event_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_remove_fixed_event_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_remove_fixed_event_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_gpe_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_gpe_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_gpe_raw_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_gpe_raw_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_remove_gpe_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_remove_gpe_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_acquire_global_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_acquire_global_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_release_global_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_release_global_lock ; .previous"

%struct.acpi_global_notify_handler = type { ptr, ptr }
%struct.acpi_fixed_event_handler = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_notify_common = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr }
%struct.acpi_object_notify_handler = type { ptr, i8, i8, i16, i8, ptr, i32, ptr, ptr, [2 x ptr] }
%struct.acpi_sci_handler_info = type { ptr, ptr, ptr }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, ptr, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { ptr }
%struct.acpi_gpe_handler_info = type { ptr, ptr, ptr, i8, i8 }

@acpi_gbl_global_notify = external dso_local global [2 x %struct.acpi_global_notify_handler], align 16
@_acpi_module_name = internal constant [8 x i8] c"evxface\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_acpi_install_notify_handler174 = internal global ptr @acpi_install_notify_handler, section ".discard.addressable", align 8, !dbg !2271
@__UNIQUE_ID___addressable_acpi_remove_notify_handler175 = internal global ptr @acpi_remove_notify_handler, section ".discard.addressable", align 8, !dbg !2273
@acpi_gbl_gpe_lock = external dso_local global ptr, align 8
@acpi_gbl_sci_handler_list = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_install_sci_handler176 = internal global ptr @acpi_install_sci_handler, section ".discard.addressable", align 8, !dbg !2275
@__UNIQUE_ID___addressable_acpi_remove_sci_handler177 = internal global ptr @acpi_remove_sci_handler, section ".discard.addressable", align 8, !dbg !2277
@acpi_gbl_global_event_handler = external dso_local global ptr, align 8
@acpi_gbl_global_event_handler_context = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_install_global_event_handler178 = internal global ptr @acpi_install_global_event_handler, section ".discard.addressable", align 8, !dbg !2279
@acpi_gbl_fixed_event_handlers = external dso_local global [5 x %struct.acpi_fixed_event_handler], align 16
@.str = private unnamed_addr constant [39 x i8] c"Could not enable fixed event - %s (%u)\00", align 1, !dbg !2281
@__UNIQUE_ID___addressable_acpi_install_fixed_event_handler179 = internal global ptr @acpi_install_fixed_event_handler, section ".discard.addressable", align 8, !dbg !2286
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not disable fixed event - %s (%u)\00", align 1, !dbg !2288
@__UNIQUE_ID___addressable_acpi_remove_fixed_event_handler180 = internal global ptr @acpi_remove_fixed_event_handler, section ".discard.addressable", align 8, !dbg !2293
@__UNIQUE_ID___addressable_acpi_install_gpe_handler181 = internal global ptr @acpi_install_gpe_handler, section ".discard.addressable", align 8, !dbg !2295
@__UNIQUE_ID___addressable_acpi_install_gpe_raw_handler182 = internal global ptr @acpi_install_gpe_raw_handler, section ".discard.addressable", align 8, !dbg !2297
@__UNIQUE_ID___addressable_acpi_remove_gpe_handler183 = internal global ptr @acpi_remove_gpe_handler, section ".discard.addressable", align 8, !dbg !2299
@acpi_gbl_global_lock_mutex = external dso_local global ptr, align 8
@acpi_gbl_global_lock_handle = external dso_local global i16, align 2
@__UNIQUE_ID___addressable_acpi_acquire_global_lock184 = internal global ptr @acpi_acquire_global_lock, section ".discard.addressable", align 8, !dbg !2301
@__UNIQUE_ID___addressable_acpi_release_global_lock185 = internal global ptr @acpi_release_global_lock, section ".discard.addressable", align 8, !dbg !2303
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2305
@.str.3 = private unnamed_addr constant [31 x i8] c"GPE type mismatch (level/edge)\00", align 1, !dbg !2310
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_install_notify_handler174, ptr @__UNIQUE_ID___addressable_acpi_remove_notify_handler175, ptr @__UNIQUE_ID___addressable_acpi_install_sci_handler176, ptr @__UNIQUE_ID___addressable_acpi_remove_sci_handler177, ptr @__UNIQUE_ID___addressable_acpi_install_global_event_handler178, ptr @__UNIQUE_ID___addressable_acpi_install_fixed_event_handler179, ptr @__UNIQUE_ID___addressable_acpi_remove_fixed_event_handler180, ptr @__UNIQUE_ID___addressable_acpi_install_gpe_handler181, ptr @__UNIQUE_ID___addressable_acpi_install_gpe_raw_handler182, ptr @__UNIQUE_ID___addressable_acpi_remove_gpe_handler183, ptr @__UNIQUE_ID___addressable_acpi_acquire_global_lock184, ptr @__UNIQUE_ID___addressable_acpi_release_global_lock185], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_notify_handler(ptr noundef %device, i32 noundef %handler_type, ptr noundef %handler, ptr noundef %context) #0 align 16 !dbg !2326 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %handler_type.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2330, metadata !DIExpression()), !dbg !2340
  store i32 %handler_type, ptr %handler_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handler_type.addr, metadata !2331, metadata !DIExpression()), !dbg !2341
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !2332, metadata !DIExpression()), !dbg !2342
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2333, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !2344
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2334, metadata !DIExpression()), !dbg !2345
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2346
  %1 = ptrtoint ptr %0 to i64, !dbg !2346
  %2 = inttoptr i64 %1 to ptr, !dbg !2346
  store ptr %2, ptr %node, align 8, !dbg !2345
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !2347
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !2335, metadata !DIExpression()), !dbg !2348
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #13, !dbg !2349
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !2336, metadata !DIExpression()), !dbg !2350
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2351
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2337, metadata !DIExpression()), !dbg !2352
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2353
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2338, metadata !DIExpression()), !dbg !2354
  %3 = load ptr, ptr %device.addr, align 8, !dbg !2355
  %tobool = icmp ne ptr %3, null, !dbg !2355
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2357

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %handler.addr, align 8, !dbg !2358
  %tobool1 = icmp ne ptr %4, null, !dbg !2358
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2359

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load i32, ptr %handler_type.addr, align 4, !dbg !2360
  %tobool3 = icmp ne i32 %5, 0, !dbg !2360
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !2361

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %6 = load i32, ptr %handler_type.addr, align 4, !dbg !2362
  %cmp = icmp ugt i32 %6, 3, !dbg !2363
  br i1 %cmp, label %if.then, label %if.end, !dbg !2364

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !2365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2365

if.end:                                           ; preds = %lor.lhs.false4
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !2367
  store i32 %call, ptr %status, align 4, !dbg !2368
  %7 = load i32, ptr %status, align 4, !dbg !2369
  %tobool5 = icmp ne i32 %7, 0, !dbg !2369
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2371

if.then6:                                         ; preds = %if.end
  %8 = load i32, ptr %status, align 4, !dbg !2372
  store i32 %8, ptr %retval, align 4, !dbg !2372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2372

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %device.addr, align 8, !dbg !2374
  %cmp8 = icmp eq ptr %9, inttoptr (i64 -1 to ptr), !dbg !2376
  br i1 %cmp8, label %if.then9, label %if.end24, !dbg !2377

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr %i, align 4, !dbg !2378
  br label %for.cond, !dbg !2381

for.cond:                                         ; preds = %for.inc, %if.then9
  %10 = load i32, ptr %i, align 4, !dbg !2382
  %cmp10 = icmp ult i32 %10, 2, !dbg !2384
  br i1 %cmp10, label %for.body, label %for.end, !dbg !2385

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %handler_type.addr, align 4, !dbg !2386
  %12 = load i32, ptr %i, align 4, !dbg !2389
  %add = add i32 %12, 1, !dbg !2390
  %and = and i32 %11, %add, !dbg !2391
  %tobool11 = icmp ne i32 %and, 0, !dbg !2391
  br i1 %tobool11, label %if.then12, label %if.end23, !dbg !2392

if.then12:                                        ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !2393
  %idxprom = zext i32 %13 to i64, !dbg !2396
  %arrayidx = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom, !dbg !2396
  %handler13 = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %arrayidx, i32 0, i32 0, !dbg !2397
  %14 = load ptr, ptr %handler13, align 16, !dbg !2397
  %tobool14 = icmp ne ptr %14, null, !dbg !2396
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2398

if.then15:                                        ; preds = %if.then12
  store i32 7, ptr %status, align 4, !dbg !2399
  br label %unlock_and_exit, !dbg !2401

if.end16:                                         ; preds = %if.then12
  %15 = load ptr, ptr %handler.addr, align 8, !dbg !2402
  %16 = load i32, ptr %i, align 4, !dbg !2403
  %idxprom17 = zext i32 %16 to i64, !dbg !2404
  %arrayidx18 = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom17, !dbg !2404
  %handler19 = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %arrayidx18, i32 0, i32 0, !dbg !2405
  store ptr %15, ptr %handler19, align 16, !dbg !2406
  %17 = load ptr, ptr %context.addr, align 8, !dbg !2407
  %18 = load i32, ptr %i, align 4, !dbg !2408
  %idxprom20 = zext i32 %18 to i64, !dbg !2409
  %arrayidx21 = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom20, !dbg !2409
  %context22 = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %arrayidx21, i32 0, i32 1, !dbg !2410
  store ptr %17, ptr %context22, align 8, !dbg !2411
  br label %if.end23, !dbg !2412

if.end23:                                         ; preds = %if.end16, %for.body
  br label %for.inc, !dbg !2413

for.inc:                                          ; preds = %if.end23
  %19 = load i32, ptr %i, align 4, !dbg !2414
  %inc = add i32 %19, 1, !dbg !2414
  store i32 %inc, ptr %i, align 4, !dbg !2414
  br label %for.cond, !dbg !2415, !llvm.loop !2416

for.end:                                          ; preds = %for.cond
  br label %unlock_and_exit, !dbg !2420

if.end24:                                         ; preds = %if.end7
  %20 = load ptr, ptr %node, align 8, !dbg !2421
  %call25 = call zeroext i8 @acpi_ev_is_notify_object(ptr noundef %20) #14, !dbg !2423
  %tobool26 = icmp ne i8 %call25, 0, !dbg !2423
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !2424

if.then27:                                        ; preds = %if.end24
  store i32 8, ptr %status, align 4, !dbg !2425
  br label %unlock_and_exit, !dbg !2427

if.end28:                                         ; preds = %if.end24
  %21 = load ptr, ptr %node, align 8, !dbg !2428
  %call29 = call ptr @acpi_ns_get_attached_object(ptr noundef %21) #14, !dbg !2429
  store ptr %call29, ptr %obj_desc, align 8, !dbg !2430
  %22 = load ptr, ptr %obj_desc, align 8, !dbg !2431
  %tobool30 = icmp ne ptr %22, null, !dbg !2431
  br i1 %tobool30, label %if.end42, label %if.then31, !dbg !2433

if.then31:                                        ; preds = %if.end28
  %23 = load ptr, ptr %node, align 8, !dbg !2434
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %23, i32 0, i32 2, !dbg !2434
  %24 = load i8, ptr %type, align 1, !dbg !2434
  %conv = zext i8 %24 to i32, !dbg !2434
  %call32 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 126, i32 noundef 4, i32 noundef %conv) #14, !dbg !2434
  store ptr %call32, ptr %obj_desc, align 8, !dbg !2436
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !2437
  %tobool33 = icmp ne ptr %25, null, !dbg !2437
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !2439

if.then34:                                        ; preds = %if.then31
  store i32 4, ptr %status, align 4, !dbg !2440
  br label %unlock_and_exit, !dbg !2442

if.end35:                                         ; preds = %if.then31
  %26 = load ptr, ptr %device.addr, align 8, !dbg !2443
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !2444
  %28 = load ptr, ptr %node, align 8, !dbg !2445
  %type36 = getelementptr inbounds %struct.acpi_namespace_node, ptr %28, i32 0, i32 2, !dbg !2446
  %29 = load i8, ptr %type36, align 1, !dbg !2446
  %conv37 = zext i8 %29 to i32, !dbg !2445
  %call38 = call i32 @acpi_ns_attach_object(ptr noundef %26, ptr noundef %27, i32 noundef %conv37) #14, !dbg !2447
  store i32 %call38, ptr %status, align 4, !dbg !2448
  %30 = load ptr, ptr %obj_desc, align 8, !dbg !2449
  call void @acpi_ut_remove_reference(ptr noundef %30) #14, !dbg !2450
  %31 = load i32, ptr %status, align 4, !dbg !2451
  %tobool39 = icmp ne i32 %31, 0, !dbg !2451
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2453

if.then40:                                        ; preds = %if.end35
  br label %unlock_and_exit, !dbg !2454

if.end41:                                         ; preds = %if.end35
  br label %if.end42, !dbg !2456

if.end42:                                         ; preds = %if.end41, %if.end28
  store i32 0, ptr %i, align 4, !dbg !2457
  br label %for.cond43, !dbg !2459

for.cond43:                                       ; preds = %for.inc62, %if.end42
  %32 = load i32, ptr %i, align 4, !dbg !2460
  %cmp44 = icmp ult i32 %32, 2, !dbg !2462
  br i1 %cmp44, label %for.body46, label %for.end64, !dbg !2463

for.body46:                                       ; preds = %for.cond43
  %33 = load i32, ptr %handler_type.addr, align 4, !dbg !2464
  %34 = load i32, ptr %i, align 4, !dbg !2467
  %add47 = add i32 %34, 1, !dbg !2468
  %and48 = and i32 %33, %add47, !dbg !2469
  %tobool49 = icmp ne i32 %and48, 0, !dbg !2469
  br i1 %tobool49, label %if.then50, label %if.end61, !dbg !2470

if.then50:                                        ; preds = %for.body46
  %35 = load ptr, ptr %obj_desc, align 8, !dbg !2471
  %notify_list = getelementptr inbounds %struct.acpi_object_notify_common, ptr %35, i32 0, i32 5, !dbg !2473
  %36 = load i32, ptr %i, align 4, !dbg !2474
  %idxprom51 = zext i32 %36 to i64, !dbg !2471
  %arrayidx52 = getelementptr [2 x ptr], ptr %notify_list, i64 0, i64 %idxprom51, !dbg !2471
  %37 = load ptr, ptr %arrayidx52, align 8, !dbg !2471
  store ptr %37, ptr %handler_obj, align 8, !dbg !2475
  br label %while.cond, !dbg !2476

while.cond:                                       ; preds = %if.end58, %if.then50
  %38 = load ptr, ptr %handler_obj, align 8, !dbg !2477
  %tobool53 = icmp ne ptr %38, null, !dbg !2476
  br i1 %tobool53, label %while.body, label %while.end, !dbg !2476

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %handler_obj, align 8, !dbg !2478
  %handler54 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %39, i32 0, i32 7, !dbg !2481
  %40 = load ptr, ptr %handler54, align 8, !dbg !2481
  %41 = load ptr, ptr %handler.addr, align 8, !dbg !2482
  %cmp55 = icmp eq ptr %40, %41, !dbg !2483
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !2484

if.then57:                                        ; preds = %while.body
  store i32 7, ptr %status, align 4, !dbg !2485
  br label %unlock_and_exit, !dbg !2487

if.end58:                                         ; preds = %while.body
  %42 = load ptr, ptr %handler_obj, align 8, !dbg !2488
  %next = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %42, i32 0, i32 9, !dbg !2489
  %43 = load i32, ptr %i, align 4, !dbg !2490
  %idxprom59 = zext i32 %43 to i64, !dbg !2488
  %arrayidx60 = getelementptr [2 x ptr], ptr %next, i64 0, i64 %idxprom59, !dbg !2488
  %44 = load ptr, ptr %arrayidx60, align 8, !dbg !2488
  store ptr %44, ptr %handler_obj, align 8, !dbg !2491
  br label %while.cond, !dbg !2476, !llvm.loop !2492

while.end:                                        ; preds = %while.cond
  br label %if.end61, !dbg !2494

if.end61:                                         ; preds = %while.end, %for.body46
  br label %for.inc62, !dbg !2495

for.inc62:                                        ; preds = %if.end61
  %45 = load i32, ptr %i, align 4, !dbg !2496
  %inc63 = add i32 %45, 1, !dbg !2496
  store i32 %inc63, ptr %i, align 4, !dbg !2496
  br label %for.cond43, !dbg !2497, !llvm.loop !2498

for.end64:                                        ; preds = %for.cond43
  %call65 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 159, i32 noundef 4, i32 noundef 23) #14, !dbg !2500
  store ptr %call65, ptr %handler_obj, align 8, !dbg !2501
  %46 = load ptr, ptr %handler_obj, align 8, !dbg !2502
  %tobool66 = icmp ne ptr %46, null, !dbg !2502
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !2504

if.then67:                                        ; preds = %for.end64
  store i32 4, ptr %status, align 4, !dbg !2505
  br label %unlock_and_exit, !dbg !2507

if.end68:                                         ; preds = %for.end64
  %47 = load ptr, ptr %node, align 8, !dbg !2508
  %48 = load ptr, ptr %handler_obj, align 8, !dbg !2509
  %node69 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %48, i32 0, i32 5, !dbg !2510
  store ptr %47, ptr %node69, align 8, !dbg !2511
  %49 = load i32, ptr %handler_type.addr, align 4, !dbg !2512
  %50 = load ptr, ptr %handler_obj, align 8, !dbg !2513
  %handler_type70 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %50, i32 0, i32 6, !dbg !2514
  store i32 %49, ptr %handler_type70, align 8, !dbg !2515
  %51 = load ptr, ptr %handler.addr, align 8, !dbg !2516
  %52 = load ptr, ptr %handler_obj, align 8, !dbg !2517
  %handler71 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %52, i32 0, i32 7, !dbg !2518
  store ptr %51, ptr %handler71, align 8, !dbg !2519
  %53 = load ptr, ptr %context.addr, align 8, !dbg !2520
  %54 = load ptr, ptr %handler_obj, align 8, !dbg !2521
  %context72 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %54, i32 0, i32 8, !dbg !2522
  store ptr %53, ptr %context72, align 8, !dbg !2523
  store i32 0, ptr %i, align 4, !dbg !2524
  br label %for.cond73, !dbg !2526

for.cond73:                                       ; preds = %for.inc91, %if.end68
  %55 = load i32, ptr %i, align 4, !dbg !2527
  %cmp74 = icmp ult i32 %55, 2, !dbg !2529
  br i1 %cmp74, label %for.body76, label %for.end93, !dbg !2530

for.body76:                                       ; preds = %for.cond73
  %56 = load i32, ptr %handler_type.addr, align 4, !dbg !2531
  %57 = load i32, ptr %i, align 4, !dbg !2534
  %add77 = add i32 %57, 1, !dbg !2535
  %and78 = and i32 %56, %add77, !dbg !2536
  %tobool79 = icmp ne i32 %and78, 0, !dbg !2536
  br i1 %tobool79, label %if.then80, label %if.end90, !dbg !2537

if.then80:                                        ; preds = %for.body76
  %58 = load ptr, ptr %obj_desc, align 8, !dbg !2538
  %notify_list81 = getelementptr inbounds %struct.acpi_object_notify_common, ptr %58, i32 0, i32 5, !dbg !2540
  %59 = load i32, ptr %i, align 4, !dbg !2541
  %idxprom82 = zext i32 %59 to i64, !dbg !2538
  %arrayidx83 = getelementptr [2 x ptr], ptr %notify_list81, i64 0, i64 %idxprom82, !dbg !2538
  %60 = load ptr, ptr %arrayidx83, align 8, !dbg !2538
  %61 = load ptr, ptr %handler_obj, align 8, !dbg !2542
  %next84 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %61, i32 0, i32 9, !dbg !2543
  %62 = load i32, ptr %i, align 4, !dbg !2544
  %idxprom85 = zext i32 %62 to i64, !dbg !2542
  %arrayidx86 = getelementptr [2 x ptr], ptr %next84, i64 0, i64 %idxprom85, !dbg !2542
  store ptr %60, ptr %arrayidx86, align 8, !dbg !2545
  %63 = load ptr, ptr %handler_obj, align 8, !dbg !2546
  %64 = load ptr, ptr %obj_desc, align 8, !dbg !2547
  %notify_list87 = getelementptr inbounds %struct.acpi_object_notify_common, ptr %64, i32 0, i32 5, !dbg !2548
  %65 = load i32, ptr %i, align 4, !dbg !2549
  %idxprom88 = zext i32 %65 to i64, !dbg !2547
  %arrayidx89 = getelementptr [2 x ptr], ptr %notify_list87, i64 0, i64 %idxprom88, !dbg !2547
  store ptr %63, ptr %arrayidx89, align 8, !dbg !2550
  br label %if.end90, !dbg !2551

if.end90:                                         ; preds = %if.then80, %for.body76
  br label %for.inc91, !dbg !2552

for.inc91:                                        ; preds = %if.end90
  %66 = load i32, ptr %i, align 4, !dbg !2553
  %inc92 = add i32 %66, 1, !dbg !2553
  store i32 %inc92, ptr %i, align 4, !dbg !2553
  br label %for.cond73, !dbg !2554, !llvm.loop !2555

for.end93:                                        ; preds = %for.cond73
  %67 = load i32, ptr %handler_type.addr, align 4, !dbg !2557
  %cmp94 = icmp eq i32 %67, 3, !dbg !2559
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !2560

if.then96:                                        ; preds = %for.end93
  %68 = load ptr, ptr %handler_obj, align 8, !dbg !2561
  call void @acpi_ut_add_reference(ptr noundef %68) #14, !dbg !2563
  br label %if.end97, !dbg !2564

if.end97:                                         ; preds = %if.then96, %for.end93
  br label %unlock_and_exit, !dbg !2565

unlock_and_exit:                                  ; preds = %if.end97, %if.then67, %if.then57, %if.then40, %if.then34, %if.then27, %for.end, %if.then15
  call void @llvm.dbg.label(metadata !2339), !dbg !2566
  %call98 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !2567
  %69 = load i32, ptr %status, align 4, !dbg !2568
  store i32 %69, ptr %retval, align 4, !dbg !2568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2568

cleanup:                                          ; preds = %unlock_and_exit, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2569
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !2569
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #13, !dbg !2569
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !2569
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !2569
  %70 = load i32, ptr %retval, align 4, !dbg !2569
  ret i32 %70, !dbg !2569
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2570 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2575 dso_local zeroext i8 @acpi_ev_is_notify_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2579 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2583 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2588 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2591 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2594 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2595 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_remove_notify_handler(ptr noundef %device, i32 noundef %handler_type, ptr noundef %handler) #0 align 16 !dbg !2596 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %handler_type.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  %previous_handler_obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2600, metadata !DIExpression()), !dbg !2610
  store i32 %handler_type, ptr %handler_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handler_type.addr, metadata !2601, metadata !DIExpression()), !dbg !2611
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !2602, metadata !DIExpression()), !dbg !2612
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2603, metadata !DIExpression()), !dbg !2614
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2615
  %1 = ptrtoint ptr %0 to i64, !dbg !2615
  %2 = inttoptr i64 %1 to ptr, !dbg !2615
  store ptr %2, ptr %node, align 8, !dbg !2614
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !2616
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !2604, metadata !DIExpression()), !dbg !2617
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #13, !dbg !2618
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !2605, metadata !DIExpression()), !dbg !2619
  call void @llvm.lifetime.start.p0(i64 8, ptr %previous_handler_obj) #13, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %previous_handler_obj, metadata !2606, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2607, metadata !DIExpression()), !dbg !2623
  store i32 0, ptr %status, align 4, !dbg !2623
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2608, metadata !DIExpression()), !dbg !2625
  %3 = load ptr, ptr %device.addr, align 8, !dbg !2626
  %tobool = icmp ne ptr %3, null, !dbg !2626
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2628

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %handler.addr, align 8, !dbg !2629
  %tobool1 = icmp ne ptr %4, null, !dbg !2629
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2630

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load i32, ptr %handler_type.addr, align 4, !dbg !2631
  %tobool3 = icmp ne i32 %5, 0, !dbg !2631
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !2632

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %6 = load i32, ptr %handler_type.addr, align 4, !dbg !2633
  %cmp = icmp ugt i32 %6, 3, !dbg !2634
  br i1 %cmp, label %if.then, label %if.end, !dbg !2635

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !2636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2636

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %device.addr, align 8, !dbg !2638
  %cmp5 = icmp eq ptr %7, inttoptr (i64 -1 to ptr), !dbg !2640
  br i1 %cmp5, label %if.then6, label %if.end29, !dbg !2641

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !2642
  br label %for.cond, !dbg !2645

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, ptr %i, align 4, !dbg !2646
  %cmp7 = icmp ult i32 %8, 2, !dbg !2648
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2649

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %handler_type.addr, align 4, !dbg !2650
  %10 = load i32, ptr %i, align 4, !dbg !2653
  %add = add i32 %10, 1, !dbg !2654
  %and = and i32 %9, %add, !dbg !2655
  %tobool8 = icmp ne i32 %and, 0, !dbg !2655
  br i1 %tobool8, label %if.then9, label %if.end28, !dbg !2656

if.then9:                                         ; preds = %for.body
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !2657
  store i32 %call, ptr %status, align 4, !dbg !2659
  %11 = load i32, ptr %status, align 4, !dbg !2660
  %tobool10 = icmp ne i32 %11, 0, !dbg !2660
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2662

if.then11:                                        ; preds = %if.then9
  %12 = load i32, ptr %status, align 4, !dbg !2663
  store i32 %12, ptr %retval, align 4, !dbg !2663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2663

if.end12:                                         ; preds = %if.then9
  %13 = load i32, ptr %i, align 4, !dbg !2665
  %idxprom = zext i32 %13 to i64, !dbg !2667
  %arrayidx = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom, !dbg !2667
  %handler13 = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %arrayidx, i32 0, i32 0, !dbg !2668
  %14 = load ptr, ptr %handler13, align 16, !dbg !2668
  %tobool14 = icmp ne ptr %14, null, !dbg !2667
  br i1 %tobool14, label %lor.lhs.false15, label %if.then20, !dbg !2669

lor.lhs.false15:                                  ; preds = %if.end12
  %15 = load i32, ptr %i, align 4, !dbg !2670
  %idxprom16 = zext i32 %15 to i64, !dbg !2671
  %arrayidx17 = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom16, !dbg !2671
  %handler18 = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %arrayidx17, i32 0, i32 0, !dbg !2672
  %16 = load ptr, ptr %handler18, align 16, !dbg !2672
  %17 = load ptr, ptr %handler.addr, align 8, !dbg !2673
  %cmp19 = icmp ne ptr %16, %17, !dbg !2674
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !2675

if.then20:                                        ; preds = %lor.lhs.false15, %if.end12
  store i32 6, ptr %status, align 4, !dbg !2676
  br label %unlock_and_exit, !dbg !2678

if.end21:                                         ; preds = %lor.lhs.false15
  %18 = load i32, ptr %i, align 4, !dbg !2679
  %idxprom22 = zext i32 %18 to i64, !dbg !2680
  %arrayidx23 = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom22, !dbg !2680
  %handler24 = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %arrayidx23, i32 0, i32 0, !dbg !2681
  store ptr null, ptr %handler24, align 16, !dbg !2682
  %19 = load i32, ptr %i, align 4, !dbg !2683
  %idxprom25 = zext i32 %19 to i64, !dbg !2684
  %arrayidx26 = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom25, !dbg !2684
  %context = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %arrayidx26, i32 0, i32 1, !dbg !2685
  store ptr null, ptr %context, align 8, !dbg !2686
  %call27 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !2687
  call void @acpi_os_wait_events_complete() #14, !dbg !2688
  br label %if.end28, !dbg !2689

if.end28:                                         ; preds = %if.end21, %for.body
  br label %for.inc, !dbg !2690

for.inc:                                          ; preds = %if.end28
  %20 = load i32, ptr %i, align 4, !dbg !2691
  %inc = add i32 %20, 1, !dbg !2691
  store i32 %inc, ptr %i, align 4, !dbg !2691
  br label %for.cond, !dbg !2692, !llvm.loop !2693

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2695

if.end29:                                         ; preds = %if.end
  %21 = load ptr, ptr %node, align 8, !dbg !2696
  %call30 = call zeroext i8 @acpi_ev_is_notify_object(ptr noundef %21) #14, !dbg !2698
  %tobool31 = icmp ne i8 %call30, 0, !dbg !2698
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !2699

if.then32:                                        ; preds = %if.end29
  store i32 8, ptr %retval, align 4, !dbg !2700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2700

if.end33:                                         ; preds = %if.end29
  %22 = load ptr, ptr %node, align 8, !dbg !2702
  %call34 = call ptr @acpi_ns_get_attached_object(ptr noundef %22) #14, !dbg !2703
  store ptr %call34, ptr %obj_desc, align 8, !dbg !2704
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !2705
  %tobool35 = icmp ne ptr %23, null, !dbg !2705
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !2707

if.then36:                                        ; preds = %if.end33
  store i32 6, ptr %retval, align 4, !dbg !2708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2708

if.end37:                                         ; preds = %if.end33
  store i32 0, ptr %i, align 4, !dbg !2710
  br label %for.cond38, !dbg !2712

for.cond38:                                       ; preds = %for.inc76, %if.end37
  %24 = load i32, ptr %i, align 4, !dbg !2713
  %cmp39 = icmp ult i32 %24, 2, !dbg !2715
  br i1 %cmp39, label %for.body40, label %for.end78, !dbg !2716

for.body40:                                       ; preds = %for.cond38
  %25 = load i32, ptr %handler_type.addr, align 4, !dbg !2717
  %26 = load i32, ptr %i, align 4, !dbg !2720
  %add41 = add i32 %26, 1, !dbg !2721
  %and42 = and i32 %25, %add41, !dbg !2722
  %tobool43 = icmp ne i32 %and42, 0, !dbg !2722
  br i1 %tobool43, label %if.then44, label %if.end75, !dbg !2723

if.then44:                                        ; preds = %for.body40
  %call45 = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !2724
  store i32 %call45, ptr %status, align 4, !dbg !2726
  %27 = load i32, ptr %status, align 4, !dbg !2727
  %tobool46 = icmp ne i32 %27, 0, !dbg !2727
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !2729

if.then47:                                        ; preds = %if.then44
  %28 = load i32, ptr %status, align 4, !dbg !2730
  store i32 %28, ptr %retval, align 4, !dbg !2730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2730

if.end48:                                         ; preds = %if.then44
  %29 = load ptr, ptr %obj_desc, align 8, !dbg !2732
  %notify_list = getelementptr inbounds %struct.acpi_object_notify_common, ptr %29, i32 0, i32 5, !dbg !2733
  %30 = load i32, ptr %i, align 4, !dbg !2734
  %idxprom49 = zext i32 %30 to i64, !dbg !2732
  %arrayidx50 = getelementptr [2 x ptr], ptr %notify_list, i64 0, i64 %idxprom49, !dbg !2732
  %31 = load ptr, ptr %arrayidx50, align 8, !dbg !2732
  store ptr %31, ptr %handler_obj, align 8, !dbg !2735
  store ptr null, ptr %previous_handler_obj, align 8, !dbg !2736
  br label %while.cond, !dbg !2737

while.cond:                                       ; preds = %while.body, %if.end48
  %32 = load ptr, ptr %handler_obj, align 8, !dbg !2738
  %tobool51 = icmp ne ptr %32, null, !dbg !2738
  br i1 %tobool51, label %land.rhs, label %land.end, !dbg !2739

land.rhs:                                         ; preds = %while.cond
  %33 = load ptr, ptr %handler_obj, align 8, !dbg !2740
  %handler52 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %33, i32 0, i32 7, !dbg !2741
  %34 = load ptr, ptr %handler52, align 8, !dbg !2741
  %35 = load ptr, ptr %handler.addr, align 8, !dbg !2742
  %cmp53 = icmp ne ptr %34, %35, !dbg !2743
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %36 = phi i1 [ false, %while.cond ], [ %cmp53, %land.rhs ], !dbg !2744
  br i1 %36, label %while.body, label %while.end, !dbg !2737

while.body:                                       ; preds = %land.end
  %37 = load ptr, ptr %handler_obj, align 8, !dbg !2745
  store ptr %37, ptr %previous_handler_obj, align 8, !dbg !2747
  %38 = load ptr, ptr %handler_obj, align 8, !dbg !2748
  %next = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %38, i32 0, i32 9, !dbg !2749
  %39 = load i32, ptr %i, align 4, !dbg !2750
  %idxprom54 = zext i32 %39 to i64, !dbg !2748
  %arrayidx55 = getelementptr [2 x ptr], ptr %next, i64 0, i64 %idxprom54, !dbg !2748
  %40 = load ptr, ptr %arrayidx55, align 8, !dbg !2748
  store ptr %40, ptr %handler_obj, align 8, !dbg !2751
  br label %while.cond, !dbg !2737, !llvm.loop !2752

while.end:                                        ; preds = %land.end
  %41 = load ptr, ptr %handler_obj, align 8, !dbg !2754
  %tobool56 = icmp ne ptr %41, null, !dbg !2754
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !2756

if.then57:                                        ; preds = %while.end
  store i32 6, ptr %status, align 4, !dbg !2757
  br label %unlock_and_exit, !dbg !2759

if.end58:                                         ; preds = %while.end
  %42 = load ptr, ptr %previous_handler_obj, align 8, !dbg !2760
  %tobool59 = icmp ne ptr %42, null, !dbg !2760
  br i1 %tobool59, label %if.then60, label %if.else, !dbg !2762

if.then60:                                        ; preds = %if.end58
  %43 = load ptr, ptr %handler_obj, align 8, !dbg !2763
  %next61 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %43, i32 0, i32 9, !dbg !2765
  %44 = load i32, ptr %i, align 4, !dbg !2766
  %idxprom62 = zext i32 %44 to i64, !dbg !2763
  %arrayidx63 = getelementptr [2 x ptr], ptr %next61, i64 0, i64 %idxprom62, !dbg !2763
  %45 = load ptr, ptr %arrayidx63, align 8, !dbg !2763
  %46 = load ptr, ptr %previous_handler_obj, align 8, !dbg !2767
  %next64 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %46, i32 0, i32 9, !dbg !2768
  %47 = load i32, ptr %i, align 4, !dbg !2769
  %idxprom65 = zext i32 %47 to i64, !dbg !2767
  %arrayidx66 = getelementptr [2 x ptr], ptr %next64, i64 0, i64 %idxprom65, !dbg !2767
  store ptr %45, ptr %arrayidx66, align 8, !dbg !2770
  br label %if.end73, !dbg !2771

if.else:                                          ; preds = %if.end58
  %48 = load ptr, ptr %handler_obj, align 8, !dbg !2772
  %next67 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %48, i32 0, i32 9, !dbg !2774
  %49 = load i32, ptr %i, align 4, !dbg !2775
  %idxprom68 = zext i32 %49 to i64, !dbg !2772
  %arrayidx69 = getelementptr [2 x ptr], ptr %next67, i64 0, i64 %idxprom68, !dbg !2772
  %50 = load ptr, ptr %arrayidx69, align 8, !dbg !2772
  %51 = load ptr, ptr %obj_desc, align 8, !dbg !2776
  %notify_list70 = getelementptr inbounds %struct.acpi_object_notify_common, ptr %51, i32 0, i32 5, !dbg !2777
  %52 = load i32, ptr %i, align 4, !dbg !2778
  %idxprom71 = zext i32 %52 to i64, !dbg !2776
  %arrayidx72 = getelementptr [2 x ptr], ptr %notify_list70, i64 0, i64 %idxprom71, !dbg !2776
  store ptr %50, ptr %arrayidx72, align 8, !dbg !2779
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then60
  %call74 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !2780
  call void @acpi_os_wait_events_complete() #14, !dbg !2781
  %53 = load ptr, ptr %handler_obj, align 8, !dbg !2782
  call void @acpi_ut_remove_reference(ptr noundef %53) #14, !dbg !2783
  br label %if.end75, !dbg !2784

if.end75:                                         ; preds = %if.end73, %for.body40
  br label %for.inc76, !dbg !2785

for.inc76:                                        ; preds = %if.end75
  %54 = load i32, ptr %i, align 4, !dbg !2786
  %inc77 = add i32 %54, 1, !dbg !2786
  store i32 %inc77, ptr %i, align 4, !dbg !2786
  br label %for.cond38, !dbg !2787, !llvm.loop !2788

for.end78:                                        ; preds = %for.cond38
  %55 = load i32, ptr %status, align 4, !dbg !2790
  store i32 %55, ptr %retval, align 4, !dbg !2790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2790

unlock_and_exit:                                  ; preds = %if.then57, %if.then20
  call void @llvm.dbg.label(metadata !2609), !dbg !2791
  %call79 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !2792
  %56 = load i32, ptr %status, align 4, !dbg !2793
  store i32 %56, ptr %retval, align 4, !dbg !2793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2793

cleanup:                                          ; preds = %unlock_and_exit, %for.end78, %if.then47, %if.then36, %if.then32, %for.end, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2794
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !2794
  call void @llvm.lifetime.end.p0(i64 8, ptr %previous_handler_obj) #13, !dbg !2794
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #13, !dbg !2794
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !2794
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !2794
  %57 = load i32, ptr %retval, align 4, !dbg !2794
  ret i32 %57, !dbg !2794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2795 dso_local void @acpi_os_wait_events_complete() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_sci_handler(ptr noundef %address, ptr noundef %context) #0 align 16 !dbg !2799 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %new_sci_handler = alloca ptr, align 8
  %sci_handler = alloca ptr, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !2807, metadata !DIExpression()), !dbg !2821
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2808, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_sci_handler) #13, !dbg !2823
  call void @llvm.dbg.declare(metadata ptr %new_sci_handler, metadata !2809, metadata !DIExpression()), !dbg !2824
  call void @llvm.lifetime.start.p0(i64 8, ptr %sci_handler) #13, !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %sci_handler, metadata !2816, metadata !DIExpression()), !dbg !2826
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2827
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2817, metadata !DIExpression()), !dbg !2828
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2829
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2818, metadata !DIExpression()), !dbg !2830
  %0 = load ptr, ptr %address.addr, align 8, !dbg !2831
  %tobool = icmp ne ptr %0, null, !dbg !2831
  br i1 %tobool, label %if.end, label %if.then, !dbg !2833

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !2834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2834

if.end:                                           ; preds = %entry
  %call = call ptr @acpi_os_allocate(i64 noundef 24) #14, !dbg !2836
  store ptr %call, ptr %new_sci_handler, align 8, !dbg !2837
  %1 = load ptr, ptr %new_sci_handler, align 8, !dbg !2838
  %tobool1 = icmp ne ptr %1, null, !dbg !2838
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2840

if.then2:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !2841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2841

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %address.addr, align 8, !dbg !2843
  %3 = load ptr, ptr %new_sci_handler, align 8, !dbg !2844
  %address4 = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %3, i32 0, i32 1, !dbg !2845
  store ptr %2, ptr %address4, align 8, !dbg !2846
  %4 = load ptr, ptr %context.addr, align 8, !dbg !2847
  %5 = load ptr, ptr %new_sci_handler, align 8, !dbg !2848
  %context5 = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %5, i32 0, i32 2, !dbg !2849
  store ptr %4, ptr %context5, align 8, !dbg !2850
  %call6 = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !2851
  store i32 %call6, ptr %status, align 4, !dbg !2852
  %6 = load i32, ptr %status, align 4, !dbg !2853
  %tobool7 = icmp ne i32 %6, 0, !dbg !2853
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2855

if.then8:                                         ; preds = %if.end3
  br label %exit, !dbg !2856

if.end9:                                          ; preds = %if.end3
  %7 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !2858
  %call10 = call i64 @acpi_os_acquire_lock(ptr noundef %7) #14, !dbg !2859
  store i64 %call10, ptr %flags, align 8, !dbg !2860
  %8 = load ptr, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !2861
  store ptr %8, ptr %sci_handler, align 8, !dbg !2862
  br label %while.cond, !dbg !2863

while.cond:                                       ; preds = %if.end14, %if.end9
  %9 = load ptr, ptr %sci_handler, align 8, !dbg !2864
  %tobool11 = icmp ne ptr %9, null, !dbg !2863
  br i1 %tobool11, label %while.body, label %while.end, !dbg !2863

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %address.addr, align 8, !dbg !2865
  %11 = load ptr, ptr %sci_handler, align 8, !dbg !2868
  %address12 = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %11, i32 0, i32 1, !dbg !2869
  %12 = load ptr, ptr %address12, align 8, !dbg !2869
  %cmp = icmp eq ptr %10, %12, !dbg !2870
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !2871

if.then13:                                        ; preds = %while.body
  store i32 7, ptr %status, align 4, !dbg !2872
  br label %unlock_and_exit, !dbg !2874

if.end14:                                         ; preds = %while.body
  %13 = load ptr, ptr %sci_handler, align 8, !dbg !2875
  %next = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %13, i32 0, i32 0, !dbg !2876
  %14 = load ptr, ptr %next, align 8, !dbg !2876
  store ptr %14, ptr %sci_handler, align 8, !dbg !2877
  br label %while.cond, !dbg !2863, !llvm.loop !2878

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !2880
  %16 = load ptr, ptr %new_sci_handler, align 8, !dbg !2881
  %next15 = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %16, i32 0, i32 0, !dbg !2882
  store ptr %15, ptr %next15, align 8, !dbg !2883
  %17 = load ptr, ptr %new_sci_handler, align 8, !dbg !2884
  store ptr %17, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !2885
  br label %unlock_and_exit, !dbg !2886

unlock_and_exit:                                  ; preds = %while.end, %if.then13
  call void @llvm.dbg.label(metadata !2819), !dbg !2887
  %18 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !2888
  %19 = load i64, ptr %flags, align 8, !dbg !2889
  call void @acpi_os_release_lock(ptr noundef %18, i64 noundef %19) #14, !dbg !2890
  %call16 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !2891
  br label %exit, !dbg !2892

exit:                                             ; preds = %unlock_and_exit, %if.then8
  call void @llvm.dbg.label(metadata !2820), !dbg !2893
  %20 = load i32, ptr %status, align 4, !dbg !2894
  %tobool17 = icmp ne i32 %20, 0, !dbg !2894
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2896

if.then18:                                        ; preds = %exit
  %21 = load ptr, ptr %new_sci_handler, align 8, !dbg !2897
  call void @acpi_os_free(ptr noundef %21) #14, !dbg !2897
  br label %if.end19, !dbg !2899

if.end19:                                         ; preds = %if.then18, %exit
  %22 = load i32, ptr %status, align 4, !dbg !2900
  store i32 %22, ptr %retval, align 4, !dbg !2900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2900

cleanup:                                          ; preds = %if.end19, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 8, ptr %sci_handler) #13, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_sci_handler) #13, !dbg !2901
  %23 = load i32, ptr %retval, align 4, !dbg !2901
  ret i32 %23, !dbg !2901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #4 align 16 !dbg !2902 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2907, metadata !DIExpression()), !dbg !2918
  %0 = load i64, ptr %size.addr, align 8, !dbg !2919
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !2908, metadata !DIExpression()), !dbg !2920
  br label %do.body, !dbg !2920

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !2921
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2910, metadata !DIExpression()), !dbg !2921
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !2921
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2913, metadata !DIExpression()), !dbg !2921
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2921
  %conv = zext i1 %cmp to i32, !dbg !2921
  store i32 1, ptr %tmp, align 4, !dbg !2921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !2922
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !2922
  %1 = load i32, ptr %tmp, align 4, !dbg !2921
  %call = call i64 @arch_local_save_flags() #14, !dbg !2922
  store i64 %call, ptr %_flags, align 8, !dbg !2922
  br label %do.cond, !dbg !2922

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2922

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !2923
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !2914, metadata !DIExpression()), !dbg !2923
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !2923
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !2917, metadata !DIExpression()), !dbg !2923
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !2923
  %conv6 = zext i1 %cmp5 to i32, !dbg !2923
  store i32 1, ptr %tmp7, align 4, !dbg !2923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !2924
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !2924
  %2 = load i32, ptr %tmp7, align 4, !dbg !2923
  %3 = load i64, ptr %_flags, align 8, !dbg !2924
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !2924
  store i32 %call9, ptr %tmp8, align 4, !dbg !2924
  %4 = load i32, ptr %tmp8, align 4, !dbg !2924
  store i32 %4, ptr %tmp1, align 4, !dbg !2922
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !2925
  %5 = load i32, ptr %tmp1, align 4, !dbg !2920
  %tobool = icmp ne i32 %5, 0, !dbg !2925
  %6 = zext i1 %tobool to i64, !dbg !2925
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !2925
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !2926
  ret ptr %call10, !dbg !2927
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2928 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2932 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !2935 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !2939, metadata !DIExpression()), !dbg !2940
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !2941
  call void @kfree(ptr noundef %0) #14, !dbg !2942
  ret void, !dbg !2943
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_remove_sci_handler(ptr noundef %address) #0 align 16 !dbg !2944 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca ptr, align 8
  %prev_sci_handler = alloca ptr, align 8
  %next_sci_handler = alloca ptr, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_sci_handler) #13, !dbg !2955
  call void @llvm.dbg.declare(metadata ptr %prev_sci_handler, metadata !2949, metadata !DIExpression()), !dbg !2956
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_sci_handler) #13, !dbg !2957
  call void @llvm.dbg.declare(metadata ptr %next_sci_handler, metadata !2950, metadata !DIExpression()), !dbg !2958
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2959
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2951, metadata !DIExpression()), !dbg !2960
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2961
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2952, metadata !DIExpression()), !dbg !2962
  %0 = load ptr, ptr %address.addr, align 8, !dbg !2963
  %tobool = icmp ne ptr %0, null, !dbg !2963
  br i1 %tobool, label %if.end, label %if.then, !dbg !2965

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !2966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2966

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !2968
  store i32 %call, ptr %status, align 4, !dbg !2969
  %1 = load i32, ptr %status, align 4, !dbg !2970
  %tobool1 = icmp ne i32 %1, 0, !dbg !2970
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2972

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !2973
  store i32 %2, ptr %retval, align 4, !dbg !2973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2973

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !2975
  %call4 = call i64 @acpi_os_acquire_lock(ptr noundef %3) #14, !dbg !2976
  store i64 %call4, ptr %flags, align 8, !dbg !2977
  store ptr null, ptr %prev_sci_handler, align 8, !dbg !2978
  %4 = load ptr, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !2979
  store ptr %4, ptr %next_sci_handler, align 8, !dbg !2980
  br label %while.cond, !dbg !2981

while.cond:                                       ; preds = %if.end13, %if.end3
  %5 = load ptr, ptr %next_sci_handler, align 8, !dbg !2982
  %tobool5 = icmp ne ptr %5, null, !dbg !2981
  br i1 %tobool5, label %while.body, label %while.end, !dbg !2981

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %next_sci_handler, align 8, !dbg !2983
  %address6 = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %6, i32 0, i32 1, !dbg !2986
  %7 = load ptr, ptr %address6, align 8, !dbg !2986
  %8 = load ptr, ptr %address.addr, align 8, !dbg !2987
  %cmp = icmp eq ptr %7, %8, !dbg !2988
  br i1 %cmp, label %if.then7, label %if.end13, !dbg !2989

if.then7:                                         ; preds = %while.body
  %9 = load ptr, ptr %prev_sci_handler, align 8, !dbg !2990
  %tobool8 = icmp ne ptr %9, null, !dbg !2990
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2993

if.then9:                                         ; preds = %if.then7
  %10 = load ptr, ptr %next_sci_handler, align 8, !dbg !2994
  %next = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %10, i32 0, i32 0, !dbg !2996
  %11 = load ptr, ptr %next, align 8, !dbg !2996
  %12 = load ptr, ptr %prev_sci_handler, align 8, !dbg !2997
  %next10 = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %12, i32 0, i32 0, !dbg !2998
  store ptr %11, ptr %next10, align 8, !dbg !2999
  br label %if.end12, !dbg !3000

if.else:                                          ; preds = %if.then7
  %13 = load ptr, ptr %next_sci_handler, align 8, !dbg !3001
  %next11 = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %13, i32 0, i32 0, !dbg !3003
  %14 = load ptr, ptr %next11, align 8, !dbg !3003
  store ptr %14, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !3004
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %15 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3005
  %16 = load i64, ptr %flags, align 8, !dbg !3006
  call void @acpi_os_release_lock(ptr noundef %15, i64 noundef %16) #14, !dbg !3007
  %17 = load ptr, ptr %next_sci_handler, align 8, !dbg !3008
  call void @acpi_os_free(ptr noundef %17) #14, !dbg !3008
  br label %unlock_and_exit, !dbg !3009

if.end13:                                         ; preds = %while.body
  %18 = load ptr, ptr %next_sci_handler, align 8, !dbg !3010
  store ptr %18, ptr %prev_sci_handler, align 8, !dbg !3011
  %19 = load ptr, ptr %next_sci_handler, align 8, !dbg !3012
  %next14 = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %19, i32 0, i32 0, !dbg !3013
  %20 = load ptr, ptr %next14, align 8, !dbg !3013
  store ptr %20, ptr %next_sci_handler, align 8, !dbg !3014
  br label %while.cond, !dbg !2981, !llvm.loop !3015

while.end:                                        ; preds = %while.cond
  %21 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3017
  %22 = load i64, ptr %flags, align 8, !dbg !3018
  call void @acpi_os_release_lock(ptr noundef %21, i64 noundef %22) #14, !dbg !3019
  store i32 6, ptr %status, align 4, !dbg !3020
  br label %unlock_and_exit, !dbg !3021

unlock_and_exit:                                  ; preds = %while.end, %if.end12
  call void @llvm.dbg.label(metadata !2953), !dbg !3022
  %call15 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !3023
  %23 = load i32, ptr %status, align 4, !dbg !3024
  store i32 %23, ptr %retval, align 4, !dbg !3024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3024

cleanup:                                          ; preds = %unlock_and_exit, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3025
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !3025
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_sci_handler) #13, !dbg !3025
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_sci_handler) #13, !dbg !3025
  %24 = load i32, ptr %retval, align 4, !dbg !3025
  ret i32 %24, !dbg !3025
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_global_event_handler(ptr noundef %handler, ptr noundef %context) #0 align 16 !dbg !3026 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !3034, metadata !DIExpression()), !dbg !3038
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3035, metadata !DIExpression()), !dbg !3039
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3040
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3036, metadata !DIExpression()), !dbg !3041
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !3042
  %tobool = icmp ne ptr %0, null, !dbg !3042
  br i1 %tobool, label %if.end, label %if.then, !dbg !3044

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !3045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !3045

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !3047
  store i32 %call, ptr %status, align 4, !dbg !3048
  %1 = load i32, ptr %status, align 4, !dbg !3049
  %tobool1 = icmp ne i32 %1, 0, !dbg !3049
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3051

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !3052
  store i32 %2, ptr %retval, align 4, !dbg !3052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !3052

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr @acpi_gbl_global_event_handler, align 8, !dbg !3054
  %tobool4 = icmp ne ptr %3, null, !dbg !3054
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3056

if.then5:                                         ; preds = %if.end3
  store i32 7, ptr %status, align 4, !dbg !3057
  br label %cleanup, !dbg !3059

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %handler.addr, align 8, !dbg !3060
  store ptr %4, ptr @acpi_gbl_global_event_handler, align 8, !dbg !3061
  %5 = load ptr, ptr %context.addr, align 8, !dbg !3062
  store ptr %5, ptr @acpi_gbl_global_event_handler_context, align 8, !dbg !3063
  br label %cleanup, !dbg !3064

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.dbg.label(metadata !3037), !dbg !3065
  %call7 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !3066
  %6 = load i32, ptr %status, align 4, !dbg !3067
  store i32 %6, ptr %retval, align 4, !dbg !3067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !3067

cleanup8:                                         ; preds = %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3068
  %7 = load i32, ptr %retval, align 4, !dbg !3068
  ret i32 %7, !dbg !3068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_fixed_event_handler(i32 noundef %event, ptr noundef %handler, ptr noundef %context) #0 align 16 !dbg !3069 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !3074, metadata !DIExpression()), !dbg !3079
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !3075, metadata !DIExpression()), !dbg !3080
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3076, metadata !DIExpression()), !dbg !3081
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3082
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3077, metadata !DIExpression()), !dbg !3083
  %0 = load i32, ptr %event.addr, align 4, !dbg !3084
  %cmp = icmp ugt i32 %0, 4, !dbg !3086
  br i1 %cmp, label %if.then, label %if.end, !dbg !3087

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !3088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !3088

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !3090
  store i32 %call, ptr %status, align 4, !dbg !3091
  %1 = load i32, ptr %status, align 4, !dbg !3092
  %tobool = icmp ne i32 %1, 0, !dbg !3092
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !3094

if.then1:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !3095
  store i32 %2, ptr %retval, align 4, !dbg !3095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !3095

if.end2:                                          ; preds = %if.end
  %3 = load i32, ptr %event.addr, align 4, !dbg !3097
  %idxprom = zext i32 %3 to i64, !dbg !3099
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom, !dbg !3099
  %handler3 = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx, i32 0, i32 0, !dbg !3100
  %4 = load ptr, ptr %handler3, align 16, !dbg !3100
  %tobool4 = icmp ne ptr %4, null, !dbg !3099
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3101

if.then5:                                         ; preds = %if.end2
  store i32 7, ptr %status, align 4, !dbg !3102
  br label %cleanup, !dbg !3104

if.end6:                                          ; preds = %if.end2
  %5 = load ptr, ptr %handler.addr, align 8, !dbg !3105
  %6 = load i32, ptr %event.addr, align 4, !dbg !3106
  %idxprom7 = zext i32 %6 to i64, !dbg !3107
  %arrayidx8 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom7, !dbg !3107
  %handler9 = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx8, i32 0, i32 0, !dbg !3108
  store ptr %5, ptr %handler9, align 16, !dbg !3109
  %7 = load ptr, ptr %context.addr, align 8, !dbg !3110
  %8 = load i32, ptr %event.addr, align 4, !dbg !3111
  %idxprom10 = zext i32 %8 to i64, !dbg !3112
  %arrayidx11 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom10, !dbg !3112
  %context12 = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx11, i32 0, i32 1, !dbg !3113
  store ptr %7, ptr %context12, align 8, !dbg !3114
  %9 = load i32, ptr %event.addr, align 4, !dbg !3115
  %call13 = call i32 @acpi_clear_event(i32 noundef %9) #14, !dbg !3116
  store i32 %call13, ptr %status, align 4, !dbg !3117
  %10 = load i32, ptr %status, align 4, !dbg !3118
  %tobool14 = icmp ne i32 %10, 0, !dbg !3118
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !3120

if.then15:                                        ; preds = %if.end6
  %11 = load i32, ptr %event.addr, align 4, !dbg !3121
  %call16 = call i32 @acpi_enable_event(i32 noundef %11, i32 noundef 0) #14, !dbg !3122
  store i32 %call16, ptr %status, align 4, !dbg !3123
  br label %if.end17, !dbg !3124

if.end17:                                         ; preds = %if.then15, %if.end6
  %12 = load i32, ptr %status, align 4, !dbg !3125
  %tobool18 = icmp ne i32 %12, 0, !dbg !3125
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !3127

if.then19:                                        ; preds = %if.end17
  %13 = load i32, ptr %event.addr, align 4, !dbg !3128
  %call20 = call ptr @acpi_ut_get_event_name(i32 noundef %13) #14, !dbg !3128
  %14 = load i32, ptr %event.addr, align 4, !dbg !3128
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 618, ptr noundef @.str, ptr noundef %call20, i32 noundef %14) #14, !dbg !3128
  %15 = load i32, ptr %event.addr, align 4, !dbg !3130
  %idxprom21 = zext i32 %15 to i64, !dbg !3131
  %arrayidx22 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom21, !dbg !3131
  %handler23 = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx22, i32 0, i32 0, !dbg !3132
  store ptr null, ptr %handler23, align 16, !dbg !3133
  %16 = load i32, ptr %event.addr, align 4, !dbg !3134
  %idxprom24 = zext i32 %16 to i64, !dbg !3135
  %arrayidx25 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom24, !dbg !3135
  %context26 = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx25, i32 0, i32 1, !dbg !3136
  store ptr null, ptr %context26, align 8, !dbg !3137
  br label %if.end27, !dbg !3138

if.else:                                          ; preds = %if.end17
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then19
  br label %cleanup, !dbg !3125

cleanup:                                          ; preds = %if.end27, %if.then5
  call void @llvm.dbg.label(metadata !3078), !dbg !3139
  %call28 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !3140
  %17 = load i32, ptr %status, align 4, !dbg !3141
  store i32 %17, ptr %retval, align 4, !dbg !3141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !3141

cleanup29:                                        ; preds = %cleanup, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3142
  %18 = load i32, ptr %retval, align 4, !dbg !3142
  ret i32 %18, !dbg !3142
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3143 dso_local i32 @acpi_clear_event(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3147 dso_local i32 @acpi_enable_event(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3150 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3153 dso_local ptr @acpi_ut_get_event_name(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_remove_fixed_event_handler(i32 noundef %event, ptr noundef %handler) #0 align 16 !dbg !3156 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !3160, metadata !DIExpression()), !dbg !3163
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !3161, metadata !DIExpression()), !dbg !3164
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3165
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3162, metadata !DIExpression()), !dbg !3166
  store i32 0, ptr %status, align 4, !dbg !3166
  %0 = load i32, ptr %event.addr, align 4, !dbg !3167
  %cmp = icmp ugt i32 %0, 4, !dbg !3169
  br i1 %cmp, label %if.then, label %if.end, !dbg !3170

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !3171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3171

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !3173
  store i32 %call, ptr %status, align 4, !dbg !3174
  %1 = load i32, ptr %status, align 4, !dbg !3175
  %tobool = icmp ne i32 %1, 0, !dbg !3175
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !3177

if.then1:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !3178
  store i32 %2, ptr %retval, align 4, !dbg !3178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3178

if.end2:                                          ; preds = %if.end
  %3 = load i32, ptr %event.addr, align 4, !dbg !3180
  %call3 = call i32 @acpi_disable_event(i32 noundef %3, i32 noundef 0) #14, !dbg !3181
  store i32 %call3, ptr %status, align 4, !dbg !3182
  %4 = load i32, ptr %event.addr, align 4, !dbg !3183
  %idxprom = zext i32 %4 to i64, !dbg !3184
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom, !dbg !3184
  %handler4 = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx, i32 0, i32 0, !dbg !3185
  store ptr null, ptr %handler4, align 16, !dbg !3186
  %5 = load i32, ptr %event.addr, align 4, !dbg !3187
  %idxprom5 = zext i32 %5 to i64, !dbg !3188
  %arrayidx6 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom5, !dbg !3188
  %context = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx6, i32 0, i32 1, !dbg !3189
  store ptr null, ptr %context, align 8, !dbg !3190
  %6 = load i32, ptr %status, align 4, !dbg !3191
  %tobool7 = icmp ne i32 %6, 0, !dbg !3191
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !3193

if.then8:                                         ; preds = %if.end2
  %7 = load i32, ptr %event.addr, align 4, !dbg !3194
  %call9 = call ptr @acpi_ut_get_event_name(i32 noundef %7) #14, !dbg !3194
  %8 = load i32, ptr %event.addr, align 4, !dbg !3194
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 680, ptr noundef @.str.1, ptr noundef %call9, i32 noundef %8) #14, !dbg !3194
  br label %if.end10, !dbg !3196

if.else:                                          ; preds = %if.end2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %call11 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !3197
  %9 = load i32, ptr %status, align 4, !dbg !3198
  store i32 %9, ptr %retval, align 4, !dbg !3198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3198

cleanup:                                          ; preds = %if.end10, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3199
  %10 = load i32, ptr %retval, align 4, !dbg !3199
  ret i32 %10, !dbg !3199
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3200 dso_local i32 @acpi_disable_event(i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_gpe_handler(ptr noundef %gpe_device, i32 noundef %gpe_number, i32 noundef %type, ptr noundef %address, ptr noundef %context) #0 align 16 !dbg !3201 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %address.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !3205, metadata !DIExpression()), !dbg !3211
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !3206, metadata !DIExpression()), !dbg !3212
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3207, metadata !DIExpression()), !dbg !3213
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3208, metadata !DIExpression()), !dbg !3214
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3209, metadata !DIExpression()), !dbg !3215
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3216
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3210, metadata !DIExpression()), !dbg !3217
  %0 = load ptr, ptr %gpe_device.addr, align 8, !dbg !3218
  %1 = load i32, ptr %gpe_number.addr, align 4, !dbg !3219
  %2 = load i32, ptr %type.addr, align 4, !dbg !3220
  %3 = load ptr, ptr %address.addr, align 8, !dbg !3221
  %4 = load ptr, ptr %context.addr, align 8, !dbg !3222
  %call = call i32 @acpi_ev_install_gpe_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %4) #14, !dbg !3223
  store i32 %call, ptr %status, align 4, !dbg !3224
  %5 = load i32, ptr %status, align 4, !dbg !3225
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3226
  ret i32 %5, !dbg !3225
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_install_gpe_handler(ptr noundef %gpe_device, i32 noundef %gpe_number, i32 noundef %type, i8 noundef zeroext %is_raw_handler, ptr noundef %address, ptr noundef %context) #0 align 16 !dbg !3227 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %is_raw_handler.addr = alloca i8, align 1
  %address.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %gpe_event_info = alloca ptr, align 8
  %handler = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !3231, metadata !DIExpression()), !dbg !3243
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !3232, metadata !DIExpression()), !dbg !3244
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3233, metadata !DIExpression()), !dbg !3245
  store i8 %is_raw_handler, ptr %is_raw_handler.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_raw_handler.addr, metadata !3234, metadata !DIExpression()), !dbg !3246
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3235, metadata !DIExpression()), !dbg !3247
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3236, metadata !DIExpression()), !dbg !3248
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !3249
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !3237, metadata !DIExpression()), !dbg !3250
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #13, !dbg !3251
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !3238, metadata !DIExpression()), !dbg !3252
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3253
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3239, metadata !DIExpression()), !dbg !3254
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !3255
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3240, metadata !DIExpression()), !dbg !3256
  %0 = load ptr, ptr %address.addr, align 8, !dbg !3257
  %tobool = icmp ne ptr %0, null, !dbg !3257
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3259

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !3260
  %and = and i32 %1, -9, !dbg !3261
  %tobool1 = icmp ne i32 %and, 0, !dbg !3261
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3262

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !3263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3263

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !3265
  store i32 %call, ptr %status, align 4, !dbg !3266
  %2 = load i32, ptr %status, align 4, !dbg !3267
  %tobool2 = icmp ne i32 %2, 0, !dbg !3267
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3269

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !3270
  store i32 %3, ptr %retval, align 4, !dbg !3270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3270

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @acpi_os_allocate_zeroed(i64 noundef 32) #14, !dbg !3272
  store ptr %call5, ptr %handler, align 8, !dbg !3273
  %4 = load ptr, ptr %handler, align 8, !dbg !3274
  %tobool6 = icmp ne ptr %4, null, !dbg !3274
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3276

if.then7:                                         ; preds = %if.end4
  store i32 4, ptr %status, align 4, !dbg !3277
  br label %unlock_and_exit, !dbg !3279

if.end8:                                          ; preds = %if.end4
  %5 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3280
  %call9 = call i64 @acpi_os_acquire_lock(ptr noundef %5) #14, !dbg !3281
  store i64 %call9, ptr %flags, align 8, !dbg !3282
  %6 = load ptr, ptr %gpe_device.addr, align 8, !dbg !3283
  %7 = load i32, ptr %gpe_number.addr, align 4, !dbg !3284
  %call10 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %6, i32 noundef %7) #14, !dbg !3285
  store ptr %call10, ptr %gpe_event_info, align 8, !dbg !3286
  %8 = load ptr, ptr %gpe_event_info, align 8, !dbg !3287
  %tobool11 = icmp ne ptr %8, null, !dbg !3287
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3289

if.then12:                                        ; preds = %if.end8
  store i32 4097, ptr %status, align 4, !dbg !3290
  br label %free_and_exit, !dbg !3292

if.end13:                                         ; preds = %if.end8
  %9 = load ptr, ptr %gpe_event_info, align 8, !dbg !3293
  %flags14 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %9, i32 0, i32 2, !dbg !3293
  %10 = load i8, ptr %flags14, align 8, !dbg !3293
  %conv = zext i8 %10 to i32, !dbg !3293
  %and15 = and i32 %conv, 7, !dbg !3293
  %conv16 = trunc i32 %and15 to i8, !dbg !3293
  %conv17 = zext i8 %conv16 to i32, !dbg !3293
  %cmp = icmp eq i32 %conv17, 2, !dbg !3295
  br i1 %cmp, label %if.then27, label %lor.lhs.false19, !dbg !3296

lor.lhs.false19:                                  ; preds = %if.end13
  %11 = load ptr, ptr %gpe_event_info, align 8, !dbg !3297
  %flags20 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %11, i32 0, i32 2, !dbg !3297
  %12 = load i8, ptr %flags20, align 8, !dbg !3297
  %conv21 = zext i8 %12 to i32, !dbg !3297
  %and22 = and i32 %conv21, 7, !dbg !3297
  %conv23 = trunc i32 %and22 to i8, !dbg !3297
  %conv24 = zext i8 %conv23 to i32, !dbg !3297
  %cmp25 = icmp eq i32 %conv24, 4, !dbg !3298
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !3299

if.then27:                                        ; preds = %lor.lhs.false19, %if.end13
  store i32 7, ptr %status, align 4, !dbg !3300
  br label %free_and_exit, !dbg !3302

if.end28:                                         ; preds = %lor.lhs.false19
  %13 = load ptr, ptr %address.addr, align 8, !dbg !3303
  %14 = load ptr, ptr %handler, align 8, !dbg !3304
  %address29 = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %14, i32 0, i32 0, !dbg !3305
  store ptr %13, ptr %address29, align 8, !dbg !3306
  %15 = load ptr, ptr %context.addr, align 8, !dbg !3307
  %16 = load ptr, ptr %handler, align 8, !dbg !3308
  %context30 = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %16, i32 0, i32 1, !dbg !3309
  store ptr %15, ptr %context30, align 8, !dbg !3310
  %17 = load ptr, ptr %gpe_event_info, align 8, !dbg !3311
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %17, i32 0, i32 0, !dbg !3312
  %18 = load ptr, ptr %dispatch, align 8, !dbg !3313
  %19 = load ptr, ptr %handler, align 8, !dbg !3314
  %method_node = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %19, i32 0, i32 2, !dbg !3315
  store ptr %18, ptr %method_node, align 8, !dbg !3316
  %20 = load ptr, ptr %gpe_event_info, align 8, !dbg !3317
  %flags31 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %20, i32 0, i32 2, !dbg !3318
  %21 = load i8, ptr %flags31, align 8, !dbg !3318
  %conv32 = zext i8 %21 to i32, !dbg !3317
  %and33 = and i32 %conv32, 15, !dbg !3319
  %conv34 = trunc i32 %and33 to i8, !dbg !3320
  %22 = load ptr, ptr %handler, align 8, !dbg !3321
  %original_flags = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %22, i32 0, i32 3, !dbg !3322
  store i8 %conv34, ptr %original_flags, align 8, !dbg !3323
  %23 = load ptr, ptr %handler, align 8, !dbg !3324
  %original_flags35 = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %23, i32 0, i32 3, !dbg !3324
  %24 = load i8, ptr %original_flags35, align 8, !dbg !3324
  %conv36 = zext i8 %24 to i32, !dbg !3324
  %and37 = and i32 %conv36, 7, !dbg !3324
  %conv38 = trunc i32 %and37 to i8, !dbg !3324
  %conv39 = zext i8 %conv38 to i32, !dbg !3324
  %cmp40 = icmp eq i32 %conv39, 1, !dbg !3326
  br i1 %cmp40, label %land.lhs.true, label %lor.lhs.false42, !dbg !3327

lor.lhs.false42:                                  ; preds = %if.end28
  %25 = load ptr, ptr %handler, align 8, !dbg !3328
  %original_flags43 = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %25, i32 0, i32 3, !dbg !3328
  %26 = load i8, ptr %original_flags43, align 8, !dbg !3328
  %conv44 = zext i8 %26 to i32, !dbg !3328
  %and45 = and i32 %conv44, 7, !dbg !3328
  %conv46 = trunc i32 %and45 to i8, !dbg !3328
  %conv47 = zext i8 %conv46 to i32, !dbg !3328
  %cmp48 = icmp eq i32 %conv47, 3, !dbg !3329
  br i1 %cmp48, label %land.lhs.true, label %if.end61, !dbg !3330

land.lhs.true:                                    ; preds = %lor.lhs.false42, %if.end28
  %27 = load ptr, ptr %gpe_event_info, align 8, !dbg !3331
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %27, i32 0, i32 4, !dbg !3332
  %28 = load i8, ptr %runtime_count, align 2, !dbg !3332
  %conv50 = zext i8 %28 to i32, !dbg !3331
  %tobool51 = icmp ne i32 %conv50, 0, !dbg !3331
  br i1 %tobool51, label %if.then52, label %if.end61, !dbg !3333

if.then52:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %handler, align 8, !dbg !3334
  %originally_enabled = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %29, i32 0, i32 4, !dbg !3336
  store i8 1, ptr %originally_enabled, align 1, !dbg !3337
  %30 = load ptr, ptr %gpe_event_info, align 8, !dbg !3338
  %call53 = call i32 @acpi_ev_remove_gpe_reference(ptr noundef %30) #14, !dbg !3339
  %31 = load i32, ptr %type.addr, align 4, !dbg !3340
  %32 = load ptr, ptr %gpe_event_info, align 8, !dbg !3342
  %flags54 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %32, i32 0, i32 2, !dbg !3343
  %33 = load i8, ptr %flags54, align 8, !dbg !3343
  %conv55 = zext i8 %33 to i32, !dbg !3342
  %and56 = and i32 %conv55, 8, !dbg !3344
  %cmp57 = icmp ne i32 %31, %and56, !dbg !3345
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !3346

if.then59:                                        ; preds = %if.then52
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 791, ptr noundef @.str.3) #14, !dbg !3347
  br label %if.end60, !dbg !3349

if.end60:                                         ; preds = %if.then59, %if.then52
  br label %if.end61, !dbg !3350

if.end61:                                         ; preds = %if.end60, %land.lhs.true, %lor.lhs.false42
  %34 = load ptr, ptr %handler, align 8, !dbg !3351
  %35 = load ptr, ptr %gpe_event_info, align 8, !dbg !3352
  %dispatch62 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %35, i32 0, i32 0, !dbg !3353
  store ptr %34, ptr %dispatch62, align 8, !dbg !3354
  %36 = load ptr, ptr %gpe_event_info, align 8, !dbg !3355
  %flags63 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %36, i32 0, i32 2, !dbg !3356
  %37 = load i8, ptr %flags63, align 8, !dbg !3357
  %conv64 = zext i8 %37 to i32, !dbg !3357
  %and65 = and i32 %conv64, -16, !dbg !3357
  %conv66 = trunc i32 %and65 to i8, !dbg !3357
  store i8 %conv66, ptr %flags63, align 8, !dbg !3357
  %38 = load i32, ptr %type.addr, align 4, !dbg !3358
  %39 = load i8, ptr %is_raw_handler.addr, align 1, !dbg !3359
  %conv67 = zext i8 %39 to i32, !dbg !3359
  %tobool68 = icmp ne i32 %conv67, 0, !dbg !3359
  %40 = zext i1 %tobool68 to i64, !dbg !3359
  %cond = select i1 %tobool68, i32 4, i32 2, !dbg !3359
  %or = or i32 %38, %cond, !dbg !3360
  %conv69 = trunc i32 %or to i8, !dbg !3361
  %conv70 = zext i8 %conv69 to i32, !dbg !3361
  %41 = load ptr, ptr %gpe_event_info, align 8, !dbg !3362
  %flags71 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %41, i32 0, i32 2, !dbg !3363
  %42 = load i8, ptr %flags71, align 8, !dbg !3364
  %conv72 = zext i8 %42 to i32, !dbg !3364
  %or73 = or i32 %conv72, %conv70, !dbg !3364
  %conv74 = trunc i32 %or73 to i8, !dbg !3364
  store i8 %conv74, ptr %flags71, align 8, !dbg !3364
  %43 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3365
  %44 = load i64, ptr %flags, align 8, !dbg !3366
  call void @acpi_os_release_lock(ptr noundef %43, i64 noundef %44) #14, !dbg !3367
  br label %unlock_and_exit, !dbg !3367

unlock_and_exit:                                  ; preds = %free_and_exit, %if.end61, %if.then7
  call void @llvm.dbg.label(metadata !3241), !dbg !3368
  %call75 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !3369
  %45 = load i32, ptr %status, align 4, !dbg !3370
  store i32 %45, ptr %retval, align 4, !dbg !3370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3370

free_and_exit:                                    ; preds = %if.then27, %if.then12
  call void @llvm.dbg.label(metadata !3242), !dbg !3371
  %46 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3372
  %47 = load i64, ptr %flags, align 8, !dbg !3373
  call void @acpi_os_release_lock(ptr noundef %46, i64 noundef %47) #14, !dbg !3374
  %48 = load ptr, ptr %handler, align 8, !dbg !3375
  call void @acpi_os_free(ptr noundef %48) #14, !dbg !3375
  br label %unlock_and_exit, !dbg !3376

cleanup:                                          ; preds = %unlock_and_exit, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !3377
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3377
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #13, !dbg !3377
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !3377
  %49 = load i32, ptr %retval, align 4, !dbg !3377
  ret i32 %49, !dbg !3377
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_gpe_raw_handler(ptr noundef %gpe_device, i32 noundef %gpe_number, i32 noundef %type, ptr noundef %address, ptr noundef %context) #0 align 16 !dbg !3378 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %address.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !3380, metadata !DIExpression()), !dbg !3386
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !3381, metadata !DIExpression()), !dbg !3387
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3382, metadata !DIExpression()), !dbg !3388
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3383, metadata !DIExpression()), !dbg !3389
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3384, metadata !DIExpression()), !dbg !3390
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3385, metadata !DIExpression()), !dbg !3392
  %0 = load ptr, ptr %gpe_device.addr, align 8, !dbg !3393
  %1 = load i32, ptr %gpe_number.addr, align 4, !dbg !3394
  %2 = load i32, ptr %type.addr, align 4, !dbg !3395
  %3 = load ptr, ptr %address.addr, align 8, !dbg !3396
  %4 = load ptr, ptr %context.addr, align 8, !dbg !3397
  %call = call i32 @acpi_ev_install_gpe_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext 1, ptr noundef %3, ptr noundef %4) #14, !dbg !3398
  store i32 %call, ptr %status, align 4, !dbg !3399
  %5 = load i32, ptr %status, align 4, !dbg !3400
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3401
  ret i32 %5, !dbg !3400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_remove_gpe_handler(ptr noundef %gpe_device, i32 noundef %gpe_number, ptr noundef %address) #0 align 16 !dbg !3402 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %address.addr = alloca ptr, align 8
  %gpe_event_info = alloca ptr, align 8
  %handler = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !3406, metadata !DIExpression()), !dbg !3414
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !3407, metadata !DIExpression()), !dbg !3415
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3408, metadata !DIExpression()), !dbg !3416
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !3417
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !3409, metadata !DIExpression()), !dbg !3418
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #13, !dbg !3419
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !3410, metadata !DIExpression()), !dbg !3420
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3421
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3411, metadata !DIExpression()), !dbg !3422
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !3423
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3412, metadata !DIExpression()), !dbg !3424
  %0 = load ptr, ptr %address.addr, align 8, !dbg !3425
  %tobool = icmp ne ptr %0, null, !dbg !3425
  br i1 %tobool, label %if.end, label %if.then, !dbg !3427

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !3428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3428

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !3430
  store i32 %call, ptr %status, align 4, !dbg !3431
  %1 = load i32, ptr %status, align 4, !dbg !3432
  %tobool1 = icmp ne i32 %1, 0, !dbg !3432
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3434

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !3435
  store i32 %2, ptr %retval, align 4, !dbg !3435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3435

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3437
  %call4 = call i64 @acpi_os_acquire_lock(ptr noundef %3) #14, !dbg !3438
  store i64 %call4, ptr %flags, align 8, !dbg !3439
  %4 = load ptr, ptr %gpe_device.addr, align 8, !dbg !3440
  %5 = load i32, ptr %gpe_number.addr, align 4, !dbg !3441
  %call5 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %4, i32 noundef %5) #14, !dbg !3442
  store ptr %call5, ptr %gpe_event_info, align 8, !dbg !3443
  %6 = load ptr, ptr %gpe_event_info, align 8, !dbg !3444
  %tobool6 = icmp ne ptr %6, null, !dbg !3444
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3446

if.then7:                                         ; preds = %if.end3
  store i32 4097, ptr %status, align 4, !dbg !3447
  br label %unlock_and_exit, !dbg !3449

if.end8:                                          ; preds = %if.end3
  %7 = load ptr, ptr %gpe_event_info, align 8, !dbg !3450
  %flags9 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %7, i32 0, i32 2, !dbg !3450
  %8 = load i8, ptr %flags9, align 8, !dbg !3450
  %conv = zext i8 %8 to i32, !dbg !3450
  %and = and i32 %conv, 7, !dbg !3450
  %conv10 = trunc i32 %and to i8, !dbg !3450
  %conv11 = zext i8 %conv10 to i32, !dbg !3450
  %cmp = icmp ne i32 %conv11, 2, !dbg !3452
  br i1 %cmp, label %land.lhs.true, label %if.end21, !dbg !3453

land.lhs.true:                                    ; preds = %if.end8
  %9 = load ptr, ptr %gpe_event_info, align 8, !dbg !3454
  %flags13 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %9, i32 0, i32 2, !dbg !3454
  %10 = load i8, ptr %flags13, align 8, !dbg !3454
  %conv14 = zext i8 %10 to i32, !dbg !3454
  %and15 = and i32 %conv14, 7, !dbg !3454
  %conv16 = trunc i32 %and15 to i8, !dbg !3454
  %conv17 = zext i8 %conv16 to i32, !dbg !3454
  %cmp18 = icmp ne i32 %conv17, 4, !dbg !3455
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3456

if.then20:                                        ; preds = %land.lhs.true
  store i32 6, ptr %status, align 4, !dbg !3457
  br label %unlock_and_exit, !dbg !3459

if.end21:                                         ; preds = %land.lhs.true, %if.end8
  %11 = load ptr, ptr %gpe_event_info, align 8, !dbg !3460
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %11, i32 0, i32 0, !dbg !3462
  %12 = load ptr, ptr %dispatch, align 8, !dbg !3463
  %address22 = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %12, i32 0, i32 0, !dbg !3464
  %13 = load ptr, ptr %address22, align 8, !dbg !3464
  %14 = load ptr, ptr %address.addr, align 8, !dbg !3465
  %cmp23 = icmp ne ptr %13, %14, !dbg !3466
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !3467

if.then25:                                        ; preds = %if.end21
  store i32 4097, ptr %status, align 4, !dbg !3468
  br label %unlock_and_exit, !dbg !3470

if.end26:                                         ; preds = %if.end21
  %15 = load ptr, ptr %gpe_event_info, align 8, !dbg !3471
  %dispatch27 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %15, i32 0, i32 0, !dbg !3472
  %16 = load ptr, ptr %dispatch27, align 8, !dbg !3473
  store ptr %16, ptr %handler, align 8, !dbg !3474
  %17 = load ptr, ptr %gpe_event_info, align 8, !dbg !3475
  %dispatch28 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %17, i32 0, i32 0, !dbg !3476
  store ptr null, ptr %dispatch28, align 8, !dbg !3477
  %18 = load ptr, ptr %handler, align 8, !dbg !3478
  %method_node = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %18, i32 0, i32 2, !dbg !3479
  %19 = load ptr, ptr %method_node, align 8, !dbg !3479
  %20 = load ptr, ptr %gpe_event_info, align 8, !dbg !3480
  %dispatch29 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %20, i32 0, i32 0, !dbg !3481
  store ptr %19, ptr %dispatch29, align 8, !dbg !3482
  %21 = load ptr, ptr %gpe_event_info, align 8, !dbg !3483
  %flags30 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %21, i32 0, i32 2, !dbg !3484
  %22 = load i8, ptr %flags30, align 8, !dbg !3485
  %conv31 = zext i8 %22 to i32, !dbg !3485
  %and32 = and i32 %conv31, -16, !dbg !3485
  %conv33 = trunc i32 %and32 to i8, !dbg !3485
  store i8 %conv33, ptr %flags30, align 8, !dbg !3485
  %23 = load ptr, ptr %handler, align 8, !dbg !3486
  %original_flags = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %23, i32 0, i32 3, !dbg !3487
  %24 = load i8, ptr %original_flags, align 8, !dbg !3487
  %conv34 = zext i8 %24 to i32, !dbg !3486
  %25 = load ptr, ptr %gpe_event_info, align 8, !dbg !3488
  %flags35 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %25, i32 0, i32 2, !dbg !3489
  %26 = load i8, ptr %flags35, align 8, !dbg !3490
  %conv36 = zext i8 %26 to i32, !dbg !3490
  %or = or i32 %conv36, %conv34, !dbg !3490
  %conv37 = trunc i32 %or to i8, !dbg !3490
  store i8 %conv37, ptr %flags35, align 8, !dbg !3490
  %27 = load ptr, ptr %handler, align 8, !dbg !3491
  %original_flags38 = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %27, i32 0, i32 3, !dbg !3491
  %28 = load i8, ptr %original_flags38, align 8, !dbg !3491
  %conv39 = zext i8 %28 to i32, !dbg !3491
  %and40 = and i32 %conv39, 7, !dbg !3491
  %conv41 = trunc i32 %and40 to i8, !dbg !3491
  %conv42 = zext i8 %conv41 to i32, !dbg !3491
  %cmp43 = icmp eq i32 %conv42, 1, !dbg !3493
  br i1 %cmp43, label %land.lhs.true52, label %lor.lhs.false, !dbg !3494

lor.lhs.false:                                    ; preds = %if.end26
  %29 = load ptr, ptr %handler, align 8, !dbg !3495
  %original_flags45 = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %29, i32 0, i32 3, !dbg !3495
  %30 = load i8, ptr %original_flags45, align 8, !dbg !3495
  %conv46 = zext i8 %30 to i32, !dbg !3495
  %and47 = and i32 %conv46, 7, !dbg !3495
  %conv48 = trunc i32 %and47 to i8, !dbg !3495
  %conv49 = zext i8 %conv48 to i32, !dbg !3495
  %cmp50 = icmp eq i32 %conv49, 3, !dbg !3496
  br i1 %cmp50, label %land.lhs.true52, label %if.end75, !dbg !3497

land.lhs.true52:                                  ; preds = %lor.lhs.false, %if.end26
  %31 = load ptr, ptr %handler, align 8, !dbg !3498
  %originally_enabled = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %31, i32 0, i32 4, !dbg !3499
  %32 = load i8, ptr %originally_enabled, align 1, !dbg !3499
  %conv53 = zext i8 %32 to i32, !dbg !3498
  %tobool54 = icmp ne i32 %conv53, 0, !dbg !3498
  br i1 %tobool54, label %if.then55, label %if.end75, !dbg !3500

if.then55:                                        ; preds = %land.lhs.true52
  %33 = load ptr, ptr %gpe_event_info, align 8, !dbg !3501
  %call56 = call i32 @acpi_ev_add_gpe_reference(ptr noundef %33, i8 noundef zeroext 0) #14, !dbg !3503
  %34 = load ptr, ptr %gpe_event_info, align 8, !dbg !3504
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %34, i32 0, i32 4, !dbg !3504
  %35 = load i8, ptr %runtime_count, align 2, !dbg !3504
  %conv57 = zext i8 %35 to i32, !dbg !3504
  %cmp58 = icmp eq i32 %conv57, 1, !dbg !3504
  br i1 %cmp58, label %land.lhs.true60, label %if.end74, !dbg !3504

land.lhs.true60:                                  ; preds = %if.then55
  %36 = load ptr, ptr %gpe_event_info, align 8, !dbg !3504
  %flags61 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %36, i32 0, i32 2, !dbg !3504
  %37 = load i8, ptr %flags61, align 8, !dbg !3504
  %conv62 = zext i8 %37 to i32, !dbg !3504
  %and63 = and i32 %conv62, 64, !dbg !3504
  %tobool64 = icmp ne i32 %and63, 0, !dbg !3504
  br i1 %tobool64, label %land.lhs.true65, label %if.end74, !dbg !3504

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %38 = load ptr, ptr %gpe_event_info, align 8, !dbg !3504
  %flags66 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %38, i32 0, i32 2, !dbg !3504
  %39 = load i8, ptr %flags66, align 8, !dbg !3504
  %conv67 = zext i8 %39 to i32, !dbg !3504
  %and68 = and i32 %conv67, 8, !dbg !3504
  %cmp69 = icmp eq i32 %and68, 0, !dbg !3504
  br i1 %cmp69, label %if.then71, label %if.end74, !dbg !3506

if.then71:                                        ; preds = %land.lhs.true65
  %40 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3507
  %41 = load i64, ptr %flags, align 8, !dbg !3509
  call void @acpi_os_release_lock(ptr noundef %40, i64 noundef %41) #14, !dbg !3510
  %42 = load ptr, ptr %gpe_device.addr, align 8, !dbg !3511
  %43 = load ptr, ptr %gpe_event_info, align 8, !dbg !3512
  %44 = load i32, ptr %gpe_number.addr, align 4, !dbg !3513
  %call72 = call i32 @acpi_ev_detect_gpe(ptr noundef %42, ptr noundef %43, i32 noundef %44) #14, !dbg !3514
  %45 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3515
  %call73 = call i64 @acpi_os_acquire_lock(ptr noundef %45) #14, !dbg !3516
  store i64 %call73, ptr %flags, align 8, !dbg !3517
  br label %if.end74, !dbg !3518

if.end74:                                         ; preds = %if.then71, %land.lhs.true65, %land.lhs.true60, %if.then55
  br label %if.end75, !dbg !3519

if.end75:                                         ; preds = %if.end74, %land.lhs.true52, %lor.lhs.false
  %46 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3520
  %47 = load i64, ptr %flags, align 8, !dbg !3521
  call void @acpi_os_release_lock(ptr noundef %46, i64 noundef %47) #14, !dbg !3522
  %call76 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !3523
  call void @acpi_os_wait_events_complete() #14, !dbg !3524
  %48 = load ptr, ptr %handler, align 8, !dbg !3525
  call void @acpi_os_free(ptr noundef %48) #14, !dbg !3525
  %49 = load i32, ptr %status, align 4, !dbg !3526
  store i32 %49, ptr %retval, align 4, !dbg !3526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3526

unlock_and_exit:                                  ; preds = %if.then25, %if.then20, %if.then7
  call void @llvm.dbg.label(metadata !3413), !dbg !3527
  %50 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !3528
  %51 = load i64, ptr %flags, align 8, !dbg !3529
  call void @acpi_os_release_lock(ptr noundef %50, i64 noundef %51) #14, !dbg !3530
  %call77 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !3531
  %52 = load i32, ptr %status, align 4, !dbg !3532
  store i32 %52, ptr %retval, align 4, !dbg !3532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3532

cleanup:                                          ; preds = %unlock_and_exit, %if.end75, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !3533
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3533
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #13, !dbg !3533
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !3533
  %53 = load i32, ptr %retval, align 4, !dbg !3533
  ret i32 %53, !dbg !3533
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3534 dso_local ptr @acpi_ev_get_gpe_event_info(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3537 dso_local i32 @acpi_ev_add_gpe_reference(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3540 dso_local i32 @acpi_ev_detect_gpe(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_acquire_global_lock(i16 noundef zeroext %timeout, ptr noundef %handle) #0 align 16 !dbg !3543 {
entry:
  %retval = alloca i32, align 4
  %timeout.addr = alloca i16, align 2
  %handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %timeout, ptr %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !3547, metadata !DIExpression()), !dbg !3550
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3548, metadata !DIExpression()), !dbg !3551
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3552
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3549, metadata !DIExpression()), !dbg !3553
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !3554
  %tobool = icmp ne ptr %0, null, !dbg !3554
  br i1 %tobool, label %if.end, label %if.then, !dbg !3556

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !3557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3557

if.end:                                           ; preds = %entry
  call void @acpi_ex_enter_interpreter() #14, !dbg !3559
  %1 = load i16, ptr %timeout.addr, align 2, !dbg !3560
  %2 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !3561
  %call = call i64 @acpi_os_get_thread_id() #14, !dbg !3562
  %call1 = call i32 @acpi_ex_acquire_mutex_object(i16 noundef zeroext %1, ptr noundef %2, i64 noundef %call) #14, !dbg !3563
  store i32 %call1, ptr %status, align 4, !dbg !3564
  %3 = load i32, ptr %status, align 4, !dbg !3565
  %tobool2 = icmp ne i32 %3, 0, !dbg !3565
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3567

if.then3:                                         ; preds = %if.end
  %4 = load i16, ptr @acpi_gbl_global_lock_handle, align 2, !dbg !3568
  %conv = zext i16 %4 to i32, !dbg !3568
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !3570
  store i32 %conv, ptr %5, align 4, !dbg !3571
  br label %if.end4, !dbg !3572

if.end4:                                          ; preds = %if.then3, %if.end
  call void @acpi_ex_exit_interpreter() #14, !dbg !3573
  %6 = load i32, ptr %status, align 4, !dbg !3574
  store i32 %6, ptr %retval, align 4, !dbg !3575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3575

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3576
  %7 = load i32, ptr %retval, align 4, !dbg !3576
  ret i32 %7, !dbg !3576
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3577 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3579 dso_local i32 @acpi_ex_acquire_mutex_object(i16 noundef zeroext, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_os_get_thread_id() #4 align 16 !dbg !3582 {
entry:
  %call = call ptr @get_current() #14, !dbg !3585
  %0 = ptrtoint ptr %call to i64, !dbg !3586
  ret i64 %0, !dbg !3587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3588 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_release_global_lock(i32 noundef %handle) #0 align 16 !dbg !3589 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %handle, ptr %handle.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3591, metadata !DIExpression()), !dbg !3593
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !3594
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3592, metadata !DIExpression()), !dbg !3595
  %0 = load i32, ptr %handle.addr, align 4, !dbg !3596
  %tobool = icmp ne i32 %0, 0, !dbg !3596
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3598

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %handle.addr, align 4, !dbg !3599
  %2 = load i16, ptr @acpi_gbl_global_lock_handle, align 2, !dbg !3600
  %conv = zext i16 %2 to i32, !dbg !3600
  %cmp = icmp ne i32 %1, %conv, !dbg !3601
  br i1 %cmp, label %if.then, label %if.end, !dbg !3602

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 20, ptr %retval, align 4, !dbg !3603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3603

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !3605
  %call = call i32 @acpi_ex_release_mutex_object(ptr noundef %3) #14, !dbg !3606
  store i32 %call, ptr %status, align 4, !dbg !3607
  %4 = load i32, ptr %status, align 4, !dbg !3608
  store i32 %4, ptr %retval, align 4, !dbg !3609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3609

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !3610
  %5 = load i32, ptr %retval, align 4, !dbg !3610
  ret i32 %5, !dbg !3610
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3611 dso_local i32 @acpi_ex_release_mutex_object(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !3614 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3618, metadata !DIExpression()), !dbg !3623
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3619, metadata !DIExpression()), !dbg !3624
  %0 = load i64, ptr %size.addr, align 8, !dbg !3625
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3626
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3627

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3628
  %tobool = icmp ne i64 %2, 0, !dbg !3628
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3629

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !3630
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3620, metadata !DIExpression()), !dbg !3631
  %3 = load i64, ptr %size.addr, align 8, !dbg !3632
  %cmp = icmp ugt i64 %3, 8192, !dbg !3634
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3635

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3636
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3637
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !3638
  store ptr %call, ptr %retval, align 8, !dbg !3639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3639

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3640
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !3640
  store i32 %call2, ptr %index, align 4, !dbg !3641
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3642
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3643
  %9 = ptrtoint ptr %8 to i64, !dbg !3643
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !3644
  %idxprom = zext i32 %call3 to i64, !dbg !3645
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3645
  %10 = load i32, ptr %index, align 4, !dbg !3646
  %idxprom4 = zext i32 %10 to i64, !dbg !3645
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3645
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3645
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3647
  %13 = load i64, ptr %size.addr, align 8, !dbg !3648
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !3649
  store ptr %call6, ptr %retval, align 8, !dbg !3650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3650

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !3651
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3652
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3653
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !3654
  store ptr %call8, ptr %retval, align 8, !dbg !3655
  br label %return, !dbg !3655

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3656
  ret ptr %16, !dbg !3656
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !3657 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !3661
  ret i64 %call, !dbg !3662
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !3663 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3667, metadata !DIExpression()), !dbg !3668
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3669
  %and = and i64 %0, 512, !dbg !3670
  %tobool = icmp ne i64 %and, 0, !dbg !3671
  %lnot = xor i1 %tobool, true, !dbg !3671
  %lnot.ext = zext i1 %lnot to i32, !dbg !3671
  ret i32 %lnot.ext, !dbg !3672
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3673 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !3674 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3678, metadata !DIExpression()), !dbg !3680
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3679, metadata !DIExpression()), !dbg !3681
  %0 = load i64, ptr %size.addr, align 8, !dbg !3682
  %tobool = icmp ne i64 %0, 0, !dbg !3682
  br i1 %tobool, label %if.end, label %if.then, !dbg !3684

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3685
  br label %return, !dbg !3685

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3686
  %cmp = icmp ule i64 %1, 8, !dbg !3688
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3689

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3690
  br label %return, !dbg !3690

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3691
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3693
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3694

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3695
  %cmp4 = icmp ule i64 %3, 96, !dbg !3696
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3697

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3698
  br label %return, !dbg !3698

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3699
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3701
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3702

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3703
  %cmp9 = icmp ule i64 %5, 192, !dbg !3704
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3705

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3706
  br label %return, !dbg !3706

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3707
  %cmp12 = icmp ule i64 %6, 8, !dbg !3709
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3710

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3711
  br label %return, !dbg !3711

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3712
  %cmp15 = icmp ule i64 %7, 16, !dbg !3714
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3715

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3716
  br label %return, !dbg !3716

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3717
  %cmp18 = icmp ule i64 %8, 32, !dbg !3719
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3720

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3721
  br label %return, !dbg !3721

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3722
  %cmp21 = icmp ule i64 %9, 64, !dbg !3724
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3725

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3726
  br label %return, !dbg !3726

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3727
  %cmp24 = icmp ule i64 %10, 128, !dbg !3729
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3730

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3731
  br label %return, !dbg !3731

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3732
  %cmp27 = icmp ule i64 %11, 256, !dbg !3734
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3735

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3736
  br label %return, !dbg !3736

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3737
  %cmp30 = icmp ule i64 %12, 512, !dbg !3739
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3740

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3741
  br label %return, !dbg !3741

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3742
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3744
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3745

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3746
  br label %return, !dbg !3746

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3747
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3749
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3750

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3751
  br label %return, !dbg !3751

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3752
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3754
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3755

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3756
  br label %return, !dbg !3756

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3757
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3759
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3760

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3761
  br label %return, !dbg !3761

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3762
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3764
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3765

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3766
  br label %return, !dbg !3766

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3767
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3769
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3770

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3771
  br label %return, !dbg !3771

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3772
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3774
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3775

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3776
  br label %return, !dbg !3776

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3777
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3779
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3780

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3781
  br label %return, !dbg !3781

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3782
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3784
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3785

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3786
  br label %return, !dbg !3786

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3787
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3789
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3790

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3791
  br label %return, !dbg !3791

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3792
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3794
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3795

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3796
  br label %return, !dbg !3796

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3797
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3799
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3800

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3801
  br label %return, !dbg !3801

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3802, !range !3804, !noundef !1197
  %tobool69 = trunc i8 %25 to i1, !dbg !3802
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3805

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3806

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !3807, !srcloc !3810
  unreachable, !dbg !3807

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3811

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3812

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3813

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3815

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3813

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #13, !dbg !3817, !srcloc !3819
  br label %do.end75, !dbg !3817

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3813

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3820
  br label %return, !dbg !3820

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3821
  ret i32 %26, !dbg !3821
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3822 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !3828 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3832, metadata !DIExpression()), !dbg !3834
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3833, metadata !DIExpression()), !dbg !3835
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3836
  %and = and i32 %0, 17, !dbg !3836
  %cmp = icmp eq i32 %and, 0, !dbg !3836
  %lnot = xor i1 %cmp, true, !dbg !3836
  %lnot1 = xor i1 %lnot, true, !dbg !3836
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3836
  %conv = sext i32 %lnot.ext to i64, !dbg !3836
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3836
  %tobool = icmp ne i64 %expval, 0, !dbg !3836
  br i1 %tobool, label %if.then, label %if.end, !dbg !3838

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3839
  br label %return, !dbg !3839

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3840
  %and2 = and i32 %1, 1, !dbg !3842
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3842
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3843

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3844
  br label %return, !dbg !3844

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3845
  br label %return, !dbg !3845

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3847
  ret i32 %2, !dbg !3847
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3848 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3849 dso_local void @__compiletime_assert_173() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !3850 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3852, metadata !DIExpression()), !dbg !3854
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !3855, !srcloc !3856
  %0 = load i64, ptr %flags, align 8, !dbg !3857
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !3858
  ret i64 %0, !dbg !3859
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3860 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !3865 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3867, metadata !DIExpression()), !dbg !3878
  %0 = load i64, ptr %size.addr, align 8, !dbg !3879
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !3880
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !3868, metadata !DIExpression()), !dbg !3880
  br label %do.body, !dbg !3880

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !3881
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3870, metadata !DIExpression()), !dbg !3881
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !3881
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3873, metadata !DIExpression()), !dbg !3881
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3881
  %conv = zext i1 %cmp to i32, !dbg !3881
  store i32 1, ptr %tmp, align 4, !dbg !3881
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !3882
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !3882
  %1 = load i32, ptr %tmp, align 4, !dbg !3881
  %call = call i64 @arch_local_save_flags() #14, !dbg !3882
  store i64 %call, ptr %_flags, align 8, !dbg !3882
  br label %do.cond, !dbg !3882

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3882

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !3883
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !3874, metadata !DIExpression()), !dbg !3883
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !3883
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !3877, metadata !DIExpression()), !dbg !3883
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !3883
  %conv6 = zext i1 %cmp5 to i32, !dbg !3883
  store i32 1, ptr %tmp7, align 4, !dbg !3883
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !3884
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !3884
  %2 = load i32, ptr %tmp7, align 4, !dbg !3883
  %3 = load i64, ptr %_flags, align 8, !dbg !3884
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !3884
  store i32 %call9, ptr %tmp8, align 4, !dbg !3884
  %4 = load i32, ptr %tmp8, align 4, !dbg !3884
  store i32 %4, ptr %tmp1, align 4, !dbg !3882
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !3885
  %5 = load i32, ptr %tmp1, align 4, !dbg !3880
  %tobool = icmp ne i32 %5, 0, !dbg !3885
  %6 = zext i1 %tobool to i64, !dbg !3885
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !3885
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !3886
  ret ptr %call10, !dbg !3887
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3888 dso_local i32 @acpi_ev_remove_gpe_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !3891 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3893, metadata !DIExpression()), !dbg !3895
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3894, metadata !DIExpression()), !dbg !3896
  %0 = load i64, ptr %size.addr, align 8, !dbg !3897
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3898
  %or = or i32 %1, 256, !dbg !3899
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !3900
  ret ptr %call, !dbg !3901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !3902 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !3913
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3907, metadata !DIExpression()), !dbg !3913
  br label %do.body, !dbg !3913

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3914
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3909, metadata !DIExpression()), !dbg !3914
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3914
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3914
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3913
  br label %do.cond, !dbg !3914

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3914

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !3915
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3911, metadata !DIExpression()), !dbg !3915
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !3915, !srcloc !3916
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3915
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3915
  %3 = inttoptr i64 %2 to ptr, !dbg !3915
  store ptr %3, ptr %tmp, align 8, !dbg !3915
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !3913
  %4 = load ptr, ptr %tmp, align 8, !dbg !3915
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3913
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3913
  store ptr %5, ptr %tmp1, align 8, !dbg !3913
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !3917
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3913
  ret ptr %6, !dbg !3918
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }
attributes #18 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324}
!llvm.ident = !{!2325}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !2315, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evxface.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evxface\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evxface.ll drivers/acpi/acpica/evxface.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !2270, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evxface.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ae6860f7e4c7db3c49dfdad27229f10d")
!4 = !{!5, !11, !21, !26, !32}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!25 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !27, line: 16, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "TT_NONE", value: 0)
!30 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!31 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !33, line: 51, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!36 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!37 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!38 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!39 = !{!40, !816, !155, !390, !132, !819, !78, !54, !820, !818, !93, !821, !822}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !42, line: 133, size: 384, elements: !43)
!42 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!43 = !{!44, !803, !804, !805, !806, !812, !813, !814, !815}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !41, file: !42, line: 134, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !47, line: 369, size: 576, elements: !48)
!47 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!48 = !{!49, !65, !81, !95, !109, !123, !133, !452, !469, !485, !498, !576, !588, !602, !612, !630, !652, !671, !690, !709, !722, !749, !766, !779, !793, !802}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !46, file: !47, line: 370, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !47, line: 73, size: 128, elements: !51)
!51 = !{!52, !53, !59, !60, !64}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !47, line: 74, baseType: !45, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !55, line: 17, baseType: !56)
!55 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !57, line: 21, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !47, line: 74, baseType: !61, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !55, line: 19, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !57, line: 24, baseType: !63)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !46, file: !47, line: 371, baseType: !66, size: 192)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !47, line: 76, size: 192, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !47, line: 77, baseType: !45, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !47, line: 77, baseType: !54, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !47, line: 77, baseType: !54, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !47, line: 77, baseType: !61, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !47, line: 77, baseType: !54, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !66, file: !47, line: 77, baseType: !74, size: 24, offset: 104)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !47, line: 78, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !55, line: 23, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !57, line: 31, baseType: !80)
!80 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !46, file: !47, line: 372, baseType: !82, size: 256)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !47, line: 93, size: 256, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !92}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !47, line: 94, baseType: !45, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !47, line: 94, baseType: !54, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !47, line: 94, baseType: !54, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !47, line: 94, baseType: !61, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !47, line: 94, baseType: !54, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !47, line: 94, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !47, line: 94, baseType: !93, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !55, line: 21, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !57, line: 27, baseType: !7)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !46, file: !47, line: 373, baseType: !96, size: 384)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !47, line: 97, size: 384, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !105, !106, !107, !108}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !47, line: 98, baseType: !45, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !47, line: 98, baseType: !54, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !47, line: 98, baseType: !54, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !47, line: 98, baseType: !61, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !47, line: 98, baseType: !54, size: 8, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !96, file: !47, line: 98, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !96, file: !47, line: 98, baseType: !93, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !96, file: !47, line: 99, baseType: !93, size: 32, offset: 224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !96, file: !47, line: 100, baseType: !104, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !96, file: !47, line: 101, baseType: !40, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !46, file: !47, line: 374, baseType: !110, size: 384)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !47, line: 104, size: 384, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !120, !121, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !47, line: 105, baseType: !45, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !47, line: 105, baseType: !54, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !47, line: 105, baseType: !54, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !47, line: 105, baseType: !61, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !47, line: 105, baseType: !54, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !110, file: !47, line: 105, baseType: !40, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !110, file: !47, line: 106, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !110, file: !47, line: 107, baseType: !104, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !110, file: !47, line: 108, baseType: !93, size: 32, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !110, file: !47, line: 109, baseType: !93, size: 32, offset: 352)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !47, line: 375, baseType: !124, size: 192)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !47, line: 118, size: 192, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !47, line: 119, baseType: !45, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !47, line: 119, baseType: !54, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !47, line: 119, baseType: !54, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !47, line: 119, baseType: !61, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !47, line: 119, baseType: !54, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !124, file: !47, line: 119, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !46, file: !47, line: 376, baseType: !134, size: 448)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !47, line: 144, size: 448, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !449, !450, !451}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !47, line: 145, baseType: !45, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !47, line: 145, baseType: !54, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !47, line: 145, baseType: !54, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !47, line: 145, baseType: !61, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !47, line: 145, baseType: !54, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !134, file: !47, line: 145, baseType: !54, size: 8, offset: 104)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !134, file: !47, line: 146, baseType: !54, size: 8, offset: 112)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !134, file: !47, line: 147, baseType: !54, size: 8, offset: 120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !134, file: !47, line: 148, baseType: !45, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !47, line: 149, baseType: !45, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !134, file: !47, line: 150, baseType: !104, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !134, file: !47, line: 154, baseType: !148, size: 64, offset: 320)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !47, line: 151, size: 64, elements: !149)
!149 = !{!150, !448}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !148, file: !47, line: 152, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !42, line: 248, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !157}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !156, line: 421, baseType: !93)
!156 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !159, line: 37, size: 9024, elements: !160)
!159 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !394, !395, !396, !397, !398, !402, !404, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !431, !432, !433, !434, !435, !436, !437, !438, !440, !446}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !159, line: 38, baseType: !157, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !158, file: !159, line: 39, baseType: !54, size: 8, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !158, file: !159, line: 40, baseType: !54, size: 8, offset: 72)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !158, file: !159, line: 41, baseType: !61, size: 16, offset: 80)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !158, file: !159, line: 42, baseType: !54, size: 8, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !158, file: !159, line: 43, baseType: !54, size: 8, offset: 104)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !158, file: !159, line: 44, baseType: !54, size: 8, offset: 112)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !158, file: !159, line: 45, baseType: !169, size: 16, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !156, line: 445, baseType: !61)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !158, file: !159, line: 46, baseType: !54, size: 8, offset: 144)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !158, file: !159, line: 47, baseType: !54, size: 8, offset: 152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !158, file: !159, line: 48, baseType: !54, size: 8, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !158, file: !159, line: 49, baseType: !54, size: 8, offset: 168)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !158, file: !159, line: 50, baseType: !54, size: 8, offset: 176)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !158, file: !159, line: 51, baseType: !54, size: 8, offset: 184)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !158, file: !159, line: 52, baseType: !54, size: 8, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !158, file: !159, line: 53, baseType: !54, size: 8, offset: 200)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !158, file: !159, line: 54, baseType: !104, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !158, file: !159, line: 55, baseType: !93, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !158, file: !159, line: 56, baseType: !93, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !158, file: !159, line: 57, baseType: !93, size: 32, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !158, file: !159, line: 58, baseType: !93, size: 32, offset: 416)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !158, file: !159, line: 60, baseType: !184, size: 640, offset: 448)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !42, line: 909, size: 640, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !275, !276, !392, !393}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !184, file: !42, line: 910, baseType: !104, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !42, line: 911, baseType: !104, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !184, file: !42, line: 912, baseType: !104, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !184, file: !42, line: 913, baseType: !104, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !184, file: !42, line: 914, baseType: !104, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !184, file: !42, line: 915, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !42, line: 891, size: 1600, elements: !194)
!194 = !{!195, !215, !231}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !193, file: !42, line: 892, baseType: !196, size: 448)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !42, line: 844, size: 448, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !214}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !42, line: 845, baseType: !192, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !196, file: !42, line: 845, baseType: !54, size: 8, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !42, line: 845, baseType: !54, size: 8, offset: 72)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !196, file: !42, line: 845, baseType: !61, size: 16, offset: 80)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !196, file: !42, line: 845, baseType: !104, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !42, line: 845, baseType: !192, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !42, line: 845, baseType: !40, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !196, file: !42, line: 845, baseType: !206, size: 64, offset: 320)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !42, line: 732, size: 64, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !206, file: !42, line: 733, baseType: !78, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !42, line: 734, baseType: !93, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !206, file: !42, line: 735, baseType: !90, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !206, file: !42, line: 736, baseType: !104, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !42, line: 737, baseType: !90, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !206, file: !42, line: 738, baseType: !192, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !196, file: !42, line: 845, baseType: !54, size: 8, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !193, file: !42, line: 893, baseType: !216, size: 640)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !42, line: 851, size: 640, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !42, line: 852, baseType: !192, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !42, line: 852, baseType: !54, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !42, line: 852, baseType: !54, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !216, file: !42, line: 852, baseType: !61, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !216, file: !42, line: 852, baseType: !104, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !42, line: 852, baseType: !192, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !42, line: 852, baseType: !40, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !42, line: 852, baseType: !206, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !216, file: !42, line: 852, baseType: !54, size: 8, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !216, file: !42, line: 852, baseType: !90, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !216, file: !42, line: 853, baseType: !104, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !216, file: !42, line: 854, baseType: !93, size: 32, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !42, line: 855, baseType: !93, size: 32, offset: 608)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !193, file: !42, line: 894, baseType: !232, size: 1600)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !42, line: 862, size: 1600, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !42, line: 863, baseType: !192, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !42, line: 863, baseType: !54, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !42, line: 863, baseType: !54, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !232, file: !42, line: 863, baseType: !61, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !232, file: !42, line: 863, baseType: !104, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !42, line: 863, baseType: !192, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !232, file: !42, line: 863, baseType: !40, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !42, line: 863, baseType: !206, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !232, file: !42, line: 863, baseType: !54, size: 8, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !232, file: !42, line: 863, baseType: !192, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !232, file: !42, line: 864, baseType: !192, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !232, file: !42, line: 865, baseType: !90, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !232, file: !42, line: 866, baseType: !54, size: 8, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !232, file: !42, line: 867, baseType: !90, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !232, file: !42, line: 868, baseType: !90, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !232, file: !42, line: 869, baseType: !90, size: 64, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !232, file: !42, line: 870, baseType: !251, size: 32, offset: 896)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 4)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !232, file: !42, line: 871, baseType: !93, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !232, file: !42, line: 872, baseType: !93, size: 32, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !232, file: !42, line: 873, baseType: !93, size: 32, offset: 992)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !232, file: !42, line: 874, baseType: !93, size: 32, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !232, file: !42, line: 875, baseType: !93, size: 32, offset: 1056)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !232, file: !42, line: 876, baseType: !93, size: 32, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !232, file: !42, line: 877, baseType: !93, size: 32, offset: 1120)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !232, file: !42, line: 878, baseType: !93, size: 32, offset: 1152)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !232, file: !42, line: 879, baseType: !93, size: 32, offset: 1184)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !232, file: !42, line: 880, baseType: !93, size: 32, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !232, file: !42, line: 881, baseType: !93, size: 32, offset: 1248)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !232, file: !42, line: 882, baseType: !93, size: 32, offset: 1280)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !232, file: !42, line: 883, baseType: !93, size: 32, offset: 1312)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !232, file: !42, line: 884, baseType: !61, size: 16, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !232, file: !42, line: 885, baseType: !54, size: 8, offset: 1360)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !232, file: !42, line: 886, baseType: !54, size: 8, offset: 1368)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !232, file: !42, line: 887, baseType: !54, size: 8, offset: 1376)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !232, file: !42, line: 888, baseType: !272, size: 160, offset: 1384)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 20)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !184, file: !42, line: 916, baseType: !40, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !184, file: !42, line: 917, baseType: !277, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !42, line: 679, size: 640, elements: !279)
!279 = !{!280, !288, !301, !310, !319, !332, !346, !358, !370}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !278, file: !42, line: 680, baseType: !281, size: 128)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !42, line: 575, size: 128, elements: !282)
!282 = !{!283, !284, !285, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !42, line: 576, baseType: !132, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !42, line: 576, baseType: !54, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !42, line: 576, baseType: !54, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !42, line: 576, baseType: !61, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !42, line: 576, baseType: !61, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !278, file: !42, line: 681, baseType: !289, size: 384)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !42, line: 604, size: 384, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !42, line: 605, baseType: !132, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !42, line: 605, baseType: !54, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !42, line: 605, baseType: !54, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !42, line: 605, baseType: !61, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !42, line: 605, baseType: !61, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !289, file: !42, line: 606, baseType: !61, size: 16, offset: 112)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !289, file: !42, line: 607, baseType: !192, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !289, file: !42, line: 608, baseType: !104, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !289, file: !42, line: 609, baseType: !104, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !289, file: !42, line: 610, baseType: !78, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !278, file: !42, line: 682, baseType: !302, size: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !42, line: 582, size: 192, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !42, line: 583, baseType: !132, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !42, line: 583, baseType: !54, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !42, line: 583, baseType: !54, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !42, line: 583, baseType: !61, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !302, file: !42, line: 583, baseType: !61, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !302, file: !42, line: 584, baseType: !45, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !278, file: !42, line: 683, baseType: !311, size: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !42, line: 616, size: 192, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !42, line: 617, baseType: !132, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !42, line: 617, baseType: !54, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !42, line: 617, baseType: !54, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !42, line: 617, baseType: !61, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !42, line: 617, baseType: !61, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !311, file: !42, line: 618, baseType: !40, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !278, file: !42, line: 684, baseType: !320, size: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !42, line: 621, size: 448, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !42, line: 622, baseType: !132, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !42, line: 622, baseType: !54, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !42, line: 622, baseType: !54, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !42, line: 622, baseType: !61, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !42, line: 622, baseType: !61, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !320, file: !42, line: 623, baseType: !93, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !320, file: !42, line: 624, baseType: !192, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !320, file: !42, line: 625, baseType: !104, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !320, file: !42, line: 626, baseType: !104, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !320, file: !42, line: 627, baseType: !93, size: 32, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !278, file: !42, line: 685, baseType: !333, size: 512)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !42, line: 590, size: 512, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !42, line: 591, baseType: !132, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !42, line: 591, baseType: !54, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !42, line: 591, baseType: !54, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !42, line: 591, baseType: !61, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !42, line: 591, baseType: !61, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !333, file: !42, line: 592, baseType: !93, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !333, file: !42, line: 593, baseType: !45, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !333, file: !42, line: 594, baseType: !45, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !333, file: !42, line: 595, baseType: !157, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !333, file: !42, line: 596, baseType: !132, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !333, file: !42, line: 597, baseType: !93, size: 32, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !278, file: !42, line: 686, baseType: !347, size: 320)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !42, line: 634, size: 320, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !42, line: 635, baseType: !132, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !42, line: 635, baseType: !54, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !42, line: 635, baseType: !54, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !42, line: 635, baseType: !61, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !42, line: 635, baseType: !61, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !347, file: !42, line: 636, baseType: !54, size: 8, offset: 112)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !347, file: !42, line: 637, baseType: !157, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !347, file: !42, line: 638, baseType: !45, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !347, file: !42, line: 639, baseType: !78, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !278, file: !42, line: 687, baseType: !359, size: 640)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !42, line: 646, size: 640, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !42, line: 647, baseType: !132, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !42, line: 647, baseType: !54, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !42, line: 647, baseType: !54, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !42, line: 647, baseType: !61, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !42, line: 647, baseType: !61, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !359, file: !42, line: 648, baseType: !367, size: 512, offset: 128)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !278, file: !42, line: 688, baseType: !371, size: 320)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !42, line: 669, size: 320, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !42, line: 670, baseType: !132, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !42, line: 670, baseType: !54, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !42, line: 670, baseType: !54, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !42, line: 670, baseType: !61, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !42, line: 670, baseType: !61, size: 16, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !371, file: !42, line: 671, baseType: !54, size: 8, offset: 112)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !371, file: !42, line: 672, baseType: !40, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !371, file: !42, line: 673, baseType: !45, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !371, file: !42, line: 674, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !42, line: 660, size: 128, elements: !384)
!384 = !{!385, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !383, file: !42, line: 661, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !156, line: 1061, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390, !93, !132}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !156, line: 424, baseType: !132)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !383, file: !42, line: 662, baseType: !132, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !184, file: !42, line: 918, baseType: !192, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !184, file: !42, line: 919, baseType: !93, size: 32, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !158, file: !159, line: 61, baseType: !93, size: 32, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !158, file: !159, line: 62, baseType: !93, size: 32, offset: 1120)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !158, file: !159, line: 63, baseType: !61, size: 16, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !158, file: !159, line: 64, baseType: !54, size: 8, offset: 1168)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !158, file: !159, line: 66, baseType: !399, size: 2688, offset: 1216)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2688, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 7)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !158, file: !159, line: 67, baseType: !403, size: 3072, offset: 3904)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 3072, elements: !368)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !158, file: !159, line: 68, baseType: !405, size: 576, offset: 6976)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 576, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 9)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !158, file: !159, line: 69, baseType: !119, size: 64, offset: 7552)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !158, file: !159, line: 71, baseType: !104, size: 64, offset: 7616)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !158, file: !159, line: 72, baseType: !119, size: 64, offset: 7680)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !158, file: !159, line: 73, baseType: !277, size: 64, offset: 7744)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !158, file: !159, line: 74, baseType: !40, size: 64, offset: 7808)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !158, file: !159, line: 75, baseType: !45, size: 64, offset: 7872)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !158, file: !159, line: 76, baseType: !40, size: 64, offset: 7936)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !158, file: !159, line: 77, baseType: !192, size: 64, offset: 8000)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !158, file: !159, line: 78, baseType: !45, size: 64, offset: 8064)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !158, file: !159, line: 79, baseType: !40, size: 64, offset: 8128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !158, file: !159, line: 80, baseType: !90, size: 64, offset: 8192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !158, file: !159, line: 81, baseType: !192, size: 64, offset: 8256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !158, file: !159, line: 82, baseType: !421, size: 64, offset: 8320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !42, line: 718, size: 128, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !423, file: !42, line: 722, baseType: !93, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !423, file: !42, line: 723, baseType: !93, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !42, line: 724, baseType: !61, size: 16, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !423, file: !42, line: 725, baseType: !54, size: 8, offset: 80)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !423, file: !42, line: 726, baseType: !54, size: 8, offset: 88)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !42, line: 727, baseType: !54, size: 8, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !158, file: !159, line: 83, baseType: !192, size: 64, offset: 8384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !158, file: !159, line: 84, baseType: !45, size: 64, offset: 8448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !158, file: !159, line: 85, baseType: !277, size: 64, offset: 8512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !158, file: !159, line: 86, baseType: !45, size: 64, offset: 8576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !158, file: !159, line: 87, baseType: !277, size: 64, offset: 8640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !158, file: !159, line: 88, baseType: !192, size: 64, offset: 8704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !158, file: !159, line: 89, baseType: !192, size: 64, offset: 8768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !158, file: !159, line: 90, baseType: !439, size: 64, offset: 8832)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !158, file: !159, line: 91, baseType: !441, size: 64, offset: 8896)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !42, line: 652, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!155, !157, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !158, file: !159, line: 92, baseType: !447, size: 64, offset: 8960)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !42, line: 656, baseType: !152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !148, file: !47, line: 153, baseType: !45, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !134, file: !47, line: 156, baseType: !93, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !47, line: 157, baseType: !169, size: 16, offset: 416)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !134, file: !47, line: 158, baseType: !54, size: 8, offset: 432)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !46, file: !47, line: 377, baseType: !453, size: 576)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !47, line: 122, size: 576, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !453, file: !47, line: 123, baseType: !45, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !453, file: !47, line: 123, baseType: !54, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !47, line: 123, baseType: !54, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !453, file: !47, line: 123, baseType: !61, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !47, line: 123, baseType: !54, size: 8, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !453, file: !47, line: 123, baseType: !54, size: 8, offset: 104)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !453, file: !47, line: 124, baseType: !61, size: 16, offset: 112)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !453, file: !47, line: 125, baseType: !132, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !453, file: !47, line: 126, baseType: !78, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !453, file: !47, line: 127, baseType: !439, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !453, file: !47, line: 128, baseType: !45, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !47, line: 129, baseType: !45, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !453, file: !47, line: 130, baseType: !40, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !453, file: !47, line: 131, baseType: !54, size: 8, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !46, file: !47, line: 378, baseType: !470, size: 512)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !47, line: 134, size: 512, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !483, !484}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !47, line: 135, baseType: !45, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !47, line: 135, baseType: !54, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !47, line: 135, baseType: !54, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !47, line: 135, baseType: !61, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !47, line: 135, baseType: !54, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !470, file: !47, line: 135, baseType: !54, size: 8, offset: 104)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !470, file: !47, line: 136, baseType: !40, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !47, line: 137, baseType: !45, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !47, line: 138, baseType: !45, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !470, file: !47, line: 139, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !156, line: 129, baseType: !78)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !470, file: !47, line: 140, baseType: !93, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !470, file: !47, line: 141, baseType: !132, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !46, file: !47, line: 379, baseType: !486, size: 320)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !47, line: 185, size: 320, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !497}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !47, line: 186, baseType: !45, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !47, line: 186, baseType: !54, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !47, line: 186, baseType: !54, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !47, line: 186, baseType: !61, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !47, line: 186, baseType: !54, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !486, file: !47, line: 186, baseType: !494, size: 128, offset: 128)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 2)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !486, file: !47, line: 186, baseType: !45, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !46, file: !47, line: 380, baseType: !499, size: 384)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !47, line: 188, size: 384, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !499, file: !47, line: 189, baseType: !45, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !47, line: 189, baseType: !54, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !47, line: 189, baseType: !54, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !499, file: !47, line: 189, baseType: !61, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !47, line: 189, baseType: !54, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !499, file: !47, line: 190, baseType: !494, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !499, file: !47, line: 190, baseType: !45, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !499, file: !47, line: 190, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !42, line: 480, size: 576, elements: !511)
!511 = !{!512, !513, !514, !515, !523, !538, !570, !571, !572, !573, !574, !575}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !42, line: 481, baseType: !40, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !510, file: !42, line: 482, baseType: !509, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !42, line: 483, baseType: !509, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !510, file: !42, line: 484, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !42, line: 497, size: 256, elements: !518)
!518 = !{!519, !520, !521, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !517, file: !42, line: 498, baseType: !516, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !42, line: 499, baseType: !516, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !517, file: !42, line: 500, baseType: !509, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !517, file: !42, line: 501, baseType: !93, size: 32, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !510, file: !42, line: 485, baseType: !524, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !42, line: 466, size: 320, elements: !526)
!526 = !{!527, !532, !533, !534, !535, !536, !537}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !525, file: !42, line: 467, baseType: !528, size: 128)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !42, line: 459, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !528, file: !42, line: 460, baseType: !54, size: 8)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !42, line: 461, baseType: !78, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !525, file: !42, line: 468, baseType: !528, size: 128, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !525, file: !42, line: 469, baseType: !61, size: 16, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !525, file: !42, line: 470, baseType: !54, size: 8, offset: 272)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !525, file: !42, line: 471, baseType: !54, size: 8, offset: 280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !525, file: !42, line: 472, baseType: !54, size: 8, offset: 288)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !525, file: !42, line: 473, baseType: !54, size: 8, offset: 296)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !510, file: !42, line: 486, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !42, line: 448, size: 192, elements: !541)
!541 = !{!542, !565, !566, !567, !568, !569}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !540, file: !42, line: 449, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !42, line: 438, size: 64, elements: !544)
!544 = !{!545, !546, !559}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !543, file: !42, line: 439, baseType: !40, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !42, line: 440, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !42, line: 419, size: 256, elements: !549)
!549 = !{!550, !555, !556, !557, !558}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !548, file: !42, line: 420, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !156, line: 1058, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!93, !390, !93, !132}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !548, file: !42, line: 421, baseType: !132, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !548, file: !42, line: 422, baseType: !40, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !548, file: !42, line: 423, baseType: !54, size: 8, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !548, file: !42, line: 424, baseType: !54, size: 8, offset: 200)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !42, line: 441, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !42, line: 429, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !561, file: !42, line: 430, baseType: !40, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !42, line: 431, baseType: !560, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !540, file: !42, line: 450, baseType: !524, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !42, line: 451, baseType: !54, size: 8, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !540, file: !42, line: 452, baseType: !54, size: 8, offset: 136)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !540, file: !42, line: 453, baseType: !54, size: 8, offset: 144)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !540, file: !42, line: 454, baseType: !54, size: 8, offset: 152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !510, file: !42, line: 487, baseType: !78, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !510, file: !42, line: 488, baseType: !93, size: 32, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !510, file: !42, line: 489, baseType: !61, size: 16, offset: 480)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !510, file: !42, line: 490, baseType: !61, size: 16, offset: 496)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !510, file: !42, line: 491, baseType: !54, size: 8, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !510, file: !42, line: 492, baseType: !54, size: 8, offset: 520)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !46, file: !47, line: 381, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !47, line: 193, size: 384, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !47, line: 194, baseType: !45, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !47, line: 194, baseType: !54, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !47, line: 194, baseType: !54, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !47, line: 194, baseType: !61, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !47, line: 194, baseType: !54, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !47, line: 194, baseType: !494, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !47, line: 194, baseType: !45, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !577, file: !47, line: 194, baseType: !93, size: 32, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !577, file: !47, line: 195, baseType: !93, size: 32, offset: 352)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !46, file: !47, line: 382, baseType: !589, size: 384)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !47, line: 198, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !47, line: 199, baseType: !45, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !47, line: 199, baseType: !54, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !47, line: 199, baseType: !54, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !47, line: 199, baseType: !61, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !47, line: 199, baseType: !54, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !589, file: !47, line: 201, baseType: !54, size: 8, offset: 104)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !589, file: !47, line: 202, baseType: !54, size: 8, offset: 112)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !47, line: 203, baseType: !494, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !47, line: 203, baseType: !45, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !589, file: !47, line: 203, baseType: !601, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !156, line: 128, baseType: !78)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !46, file: !47, line: 383, baseType: !603, size: 320)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !47, line: 206, size: 320, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !47, line: 207, baseType: !45, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !47, line: 207, baseType: !54, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !47, line: 207, baseType: !54, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !47, line: 207, baseType: !61, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !47, line: 207, baseType: !54, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !603, file: !47, line: 207, baseType: !494, size: 128, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !603, file: !47, line: 207, baseType: !45, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !46, file: !47, line: 384, baseType: !613, size: 384)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !47, line: 234, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !47, line: 235, baseType: !45, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !47, line: 235, baseType: !54, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !47, line: 235, baseType: !54, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !47, line: 235, baseType: !61, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !47, line: 235, baseType: !54, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !613, file: !47, line: 235, baseType: !54, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !613, file: !47, line: 235, baseType: !54, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !613, file: !47, line: 235, baseType: !54, size: 8, offset: 120)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !47, line: 235, baseType: !40, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !613, file: !47, line: 235, baseType: !93, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !613, file: !47, line: 235, baseType: !93, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !47, line: 235, baseType: !93, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !613, file: !47, line: 235, baseType: !54, size: 8, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !613, file: !47, line: 235, baseType: !54, size: 8, offset: 296)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !613, file: !47, line: 235, baseType: !45, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !46, file: !47, line: 385, baseType: !631, size: 576)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !47, line: 238, size: 576, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !47, line: 239, baseType: !45, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !47, line: 239, baseType: !54, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !47, line: 239, baseType: !54, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !47, line: 239, baseType: !61, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !47, line: 239, baseType: !54, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !631, file: !47, line: 239, baseType: !54, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !631, file: !47, line: 239, baseType: !54, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !631, file: !47, line: 239, baseType: !54, size: 8, offset: 120)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !47, line: 239, baseType: !40, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !631, file: !47, line: 239, baseType: !93, size: 32, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !631, file: !47, line: 239, baseType: !93, size: 32, offset: 224)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !631, file: !47, line: 239, baseType: !93, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !631, file: !47, line: 239, baseType: !54, size: 8, offset: 288)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !631, file: !47, line: 239, baseType: !54, size: 8, offset: 296)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !631, file: !47, line: 239, baseType: !61, size: 16, offset: 304)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !631, file: !47, line: 240, baseType: !45, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !631, file: !47, line: 241, baseType: !104, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !631, file: !47, line: 242, baseType: !61, size: 16, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !631, file: !47, line: 243, baseType: !104, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !46, file: !47, line: 386, baseType: !653, size: 384)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !47, line: 263, size: 384, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !653, file: !47, line: 264, baseType: !45, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 72)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !653, file: !47, line: 264, baseType: !61, size: 16, offset: 80)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 104)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 112)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 120)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !653, file: !47, line: 264, baseType: !40, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !653, file: !47, line: 264, baseType: !93, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !653, file: !47, line: 264, baseType: !93, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !653, file: !47, line: 264, baseType: !93, size: 32, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 288)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 296)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !653, file: !47, line: 264, baseType: !54, size: 8, offset: 304)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !653, file: !47, line: 265, baseType: !45, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !46, file: !47, line: 387, baseType: !672, size: 448)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !47, line: 246, size: 448, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !47, line: 247, baseType: !45, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !47, line: 247, baseType: !54, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !47, line: 247, baseType: !54, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !47, line: 247, baseType: !61, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !47, line: 247, baseType: !54, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !672, file: !47, line: 247, baseType: !54, size: 8, offset: 104)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !672, file: !47, line: 247, baseType: !54, size: 8, offset: 112)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !672, file: !47, line: 247, baseType: !54, size: 8, offset: 120)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !47, line: 247, baseType: !40, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !672, file: !47, line: 247, baseType: !93, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !672, file: !47, line: 247, baseType: !93, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !47, line: 247, baseType: !93, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !672, file: !47, line: 247, baseType: !54, size: 8, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !672, file: !47, line: 247, baseType: !54, size: 8, offset: 296)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !672, file: !47, line: 247, baseType: !45, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !672, file: !47, line: 248, baseType: !45, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !46, file: !47, line: 388, baseType: !691, size: 448)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !47, line: 251, size: 448, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !691, file: !47, line: 252, baseType: !45, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !691, file: !47, line: 252, baseType: !54, size: 8, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !47, line: 252, baseType: !54, size: 8, offset: 72)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !691, file: !47, line: 252, baseType: !61, size: 16, offset: 80)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !47, line: 252, baseType: !54, size: 8, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !691, file: !47, line: 252, baseType: !54, size: 8, offset: 104)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !691, file: !47, line: 252, baseType: !54, size: 8, offset: 112)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !691, file: !47, line: 252, baseType: !54, size: 8, offset: 120)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !691, file: !47, line: 252, baseType: !40, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !691, file: !47, line: 252, baseType: !93, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !691, file: !47, line: 252, baseType: !93, size: 32, offset: 224)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !691, file: !47, line: 252, baseType: !93, size: 32, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !691, file: !47, line: 252, baseType: !54, size: 8, offset: 288)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !691, file: !47, line: 252, baseType: !54, size: 8, offset: 296)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !691, file: !47, line: 257, baseType: !45, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !691, file: !47, line: 258, baseType: !45, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !46, file: !47, line: 389, baseType: !710, size: 512)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !47, line: 274, size: 512, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !710, file: !47, line: 275, baseType: !45, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !710, file: !47, line: 275, baseType: !54, size: 8, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !47, line: 275, baseType: !54, size: 8, offset: 72)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !710, file: !47, line: 275, baseType: !61, size: 16, offset: 80)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !47, line: 275, baseType: !54, size: 8, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !47, line: 275, baseType: !40, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !710, file: !47, line: 276, baseType: !93, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !710, file: !47, line: 277, baseType: !386, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !710, file: !47, line: 278, baseType: !132, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !47, line: 279, baseType: !494, size: 128, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !46, file: !47, line: 390, baseType: !723, size: 576)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !47, line: 282, size: 576, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !738, !739, !740, !741, !747, !748}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !723, file: !47, line: 283, baseType: !45, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !47, line: 283, baseType: !54, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !47, line: 283, baseType: !54, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !723, file: !47, line: 283, baseType: !61, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !47, line: 283, baseType: !54, size: 8, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !723, file: !47, line: 283, baseType: !54, size: 8, offset: 104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !723, file: !47, line: 284, baseType: !54, size: 8, offset: 112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !723, file: !47, line: 285, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !156, line: 1093, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!155, !93, !482, !93, !737, !132, !132}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !47, line: 286, baseType: !40, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !723, file: !47, line: 287, baseType: !132, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !723, file: !47, line: 288, baseType: !132, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !723, file: !47, line: 289, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !156, line: 1126, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!155, !390, !93, !132, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !723, file: !47, line: 290, baseType: !45, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !47, line: 291, baseType: !45, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !46, file: !47, line: 391, baseType: !750, size: 512)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !47, line: 309, size: 512, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !47, line: 310, baseType: !45, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !47, line: 310, baseType: !54, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !47, line: 310, baseType: !54, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !47, line: 310, baseType: !61, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !47, line: 310, baseType: !54, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !750, file: !47, line: 310, baseType: !54, size: 8, offset: 104)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !750, file: !47, line: 311, baseType: !54, size: 8, offset: 112)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !750, file: !47, line: 312, baseType: !54, size: 8, offset: 120)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !750, file: !47, line: 313, baseType: !132, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !750, file: !47, line: 314, baseType: !40, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !750, file: !47, line: 315, baseType: !119, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !750, file: !47, line: 316, baseType: !104, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !750, file: !47, line: 317, baseType: !104, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !750, file: !47, line: 318, baseType: !93, size: 32, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !46, file: !47, line: 392, baseType: !767, size: 448)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !47, line: 342, size: 448, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !47, line: 343, baseType: !45, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !47, line: 343, baseType: !54, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !47, line: 343, baseType: !54, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !47, line: 343, baseType: !61, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !47, line: 343, baseType: !54, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !767, file: !47, line: 343, baseType: !40, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !767, file: !47, line: 344, baseType: !40, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !767, file: !47, line: 345, baseType: !132, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !767, file: !47, line: 346, baseType: !104, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !767, file: !47, line: 347, baseType: !93, size: 32, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 393, baseType: !780, size: 256)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !47, line: 352, size: 256, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !792}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !780, file: !47, line: 353, baseType: !45, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !780, file: !47, line: 353, baseType: !54, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !47, line: 353, baseType: !54, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !780, file: !47, line: 353, baseType: !61, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !47, line: 353, baseType: !54, size: 8, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !780, file: !47, line: 353, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !156, line: 1064, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !390, !132}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !780, file: !47, line: 354, baseType: !132, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !46, file: !47, line: 394, baseType: !794, size: 192)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !47, line: 359, size: 192, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !794, file: !47, line: 360, baseType: !45, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !47, line: 360, baseType: !54, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !47, line: 360, baseType: !54, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !794, file: !47, line: 360, baseType: !61, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !47, line: 360, baseType: !54, size: 8, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !794, file: !47, line: 360, baseType: !45, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !47, line: 401, baseType: !41, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !42, line: 135, baseType: !54, size: 8, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !42, line: 136, baseType: !54, size: 8, offset: 72)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !42, line: 137, baseType: !61, size: 16, offset: 80)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !42, line: 138, baseType: !807, size: 32, offset: 96)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !808, line: 328, size: 32, elements: !809)
!808 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !807, file: !808, line: 329, baseType: !93, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !807, file: !808, line: 330, baseType: !251, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !42, line: 139, baseType: !40, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !41, file: !42, line: 140, baseType: !40, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !41, file: !42, line: 141, baseType: !40, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !41, file: !42, line: 142, baseType: !169, size: 16, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !817, line: 42, baseType: !818)
!817 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!818 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !156, line: 127, baseType: !78)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !817, line: 154, baseType: !7)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !824, line: 746, size: 58368, elements: !825)
!824 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!825 = !{!826, !834, !835, !836, !847, !848, !849, !850, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !936, !947, !1069, !1073, !1076, !1107, !1108, !1109, !1110, !1121, !1123, !1124, !1125, !1126, !1127, !1128, !1139, !1140, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1157, !1158, !1165, !1166, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1444, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1500, !1502, !1503, !1504, !1516, !1518, !1519, !1520, !1521, !1522, !1523, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1547, !1553, !1557, !1558, !1559, !1562, !1566, !1569, !1576, !1581, !1584, !1587, !1590, !1593, !1596, !1599, !1605, !1606, !1607, !1613, !1614, !1618, !1619, !1620, !1623, !1630, !1631, !1640, !1650, !1651, !1652, !1653, !1654, !1659, !1660, !1661, !1664, !1665, !1668, !1671, !1674, !1677, !1680, !1681, !1768, !1779, !1780, !1781, !1782, !1788, !1793, !1794, !1795, !1798, !1799, !1802, !1805, !1806, !1809, !1810, !1811, !1814, !1815, !1816, !1819, !1820, !1821, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1853, !1856, !1924, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1936, !2008, !2010, !2011, !2012, !2013, !2014, !2026, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2043, !2044, !2045}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !823, file: !824, line: 752, baseType: !827, size: 192)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !828, line: 56, size: 192, elements: !829)
!828 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!829 = !{!830, !831, !832, !833}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !828, line: 57, baseType: !818, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !827, file: !828, line: 58, baseType: !818, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !827, file: !828, line: 59, baseType: !93, size: 32, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !827, file: !828, line: 61, baseType: !93, size: 32, offset: 160)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !823, file: !824, line: 754, baseType: !7, size: 32, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !823, file: !824, line: 767, baseType: !132, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !823, file: !824, line: 768, baseType: !837, size: 32, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !838, line: 113, baseType: !839)
!838 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !838, line: 111, size: 32, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !839, file: !838, line: 112, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !817, line: 174, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !817, line: 172, size: 32, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !843, file: !817, line: 173, baseType: !846, size: 32)
!846 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !823, file: !824, line: 770, baseType: !7, size: 32, offset: 352)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !823, file: !824, line: 771, baseType: !7, size: 32, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !823, file: !824, line: 774, baseType: !846, size: 32, offset: 416)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !823, file: !824, line: 775, baseType: !851, size: 128, offset: 448)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !852, line: 58, size: 128, elements: !853)
!852 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!853 = !{!854, !860, !865, !866}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !851, file: !852, line: 59, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !856, line: 60, size: 64, elements: !857)
!856 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!857 = !{!858}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !855, file: !856, line: 61, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !852, line: 60, baseType: !861, size: 32, offset: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !851, file: !852, line: 60, size: 32, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !861, file: !852, line: 61, baseType: !7, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !861, file: !852, line: 62, baseType: !842, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !851, file: !852, line: 65, baseType: !61, size: 16, offset: 96)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !851, file: !852, line: 65, baseType: !61, size: 16, offset: 112)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !823, file: !824, line: 776, baseType: !7, size: 32, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !823, file: !824, line: 777, baseType: !818, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !823, file: !824, line: 778, baseType: !822, size: 64, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !823, file: !824, line: 787, baseType: !846, size: 32, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !823, file: !824, line: 788, baseType: !846, size: 32, offset: 800)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !823, file: !824, line: 790, baseType: !846, size: 32, offset: 832)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !823, file: !824, line: 792, baseType: !846, size: 32, offset: 864)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !823, file: !824, line: 793, baseType: !846, size: 32, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !823, file: !824, line: 794, baseType: !846, size: 32, offset: 928)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !823, file: !824, line: 795, baseType: !7, size: 32, offset: 960)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !823, file: !824, line: 797, baseType: !878, size: 2048, offset: 1024)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !824, line: 551, size: 2048, elements: !879)
!879 = !{!880, !885, !893, !894, !895, !901, !902, !903, !904, !905, !906, !910, !911, !912, !913, !915, !918, !919, !920}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !878, file: !824, line: 553, baseType: !881, size: 128)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !824, line: 411, size: 128, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !881, file: !824, line: 412, baseType: !818, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !881, file: !824, line: 413, baseType: !93, size: 32, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !878, file: !824, line: 554, baseType: !886, size: 192, align: 64, offset: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !887, line: 5, size: 192, align: 64, elements: !888)
!887 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!888 = !{!889, !890, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !886, file: !887, line: 6, baseType: !818, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !886, file: !887, line: 7, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !886, file: !887, line: 8, baseType: !891, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !878, file: !824, line: 555, baseType: !78, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !878, file: !824, line: 556, baseType: !78, size: 64, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !878, file: !824, line: 558, baseType: !896, size: 128, offset: 448)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !817, line: 190, size: 128, elements: !897)
!897 = !{!898, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !896, file: !817, line: 191, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !896, file: !817, line: 191, baseType: !899, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !878, file: !824, line: 559, baseType: !7, size: 32, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !878, file: !824, line: 561, baseType: !78, size: 64, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !878, file: !824, line: 562, baseType: !78, size: 64, offset: 704)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !878, file: !824, line: 563, baseType: !78, size: 64, offset: 768)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !878, file: !824, line: 564, baseType: !78, size: 64, offset: 832)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !878, file: !824, line: 565, baseType: !907, size: 64, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !55, line: 22, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !57, line: 30, baseType: !909)
!909 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !878, file: !824, line: 566, baseType: !78, size: 64, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !878, file: !824, line: 568, baseType: !78, size: 64, offset: 1024)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !878, file: !824, line: 571, baseType: !846, size: 32, offset: 1088)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !878, file: !824, line: 572, baseType: !914, size: 64, offset: 1152)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !878, file: !824, line: 574, baseType: !916, size: 64, offset: 1216)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !824, line: 49, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !878, file: !824, line: 576, baseType: !916, size: 64, offset: 1280)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !878, file: !824, line: 578, baseType: !818, size: 64, offset: 1344)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !878, file: !824, line: 588, baseType: !921, size: 512, align: 512, offset: 1536)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !824, line: 497, size: 512, align: 512, elements: !922)
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930, !931}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !921, file: !824, line: 498, baseType: !78, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !921, file: !824, line: 499, baseType: !78, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !921, file: !824, line: 500, baseType: !78, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !921, file: !824, line: 501, baseType: !93, size: 32, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !921, file: !824, line: 502, baseType: !93, size: 32, offset: 224)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !921, file: !824, line: 503, baseType: !818, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !921, file: !824, line: 504, baseType: !818, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !921, file: !824, line: 505, baseType: !818, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !921, file: !824, line: 506, baseType: !932, size: 64, align: 64, offset: 448)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !824, line: 445, size: 64, align: 64, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !932, file: !824, line: 446, baseType: !7, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !932, file: !824, line: 447, baseType: !7, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !823, file: !824, line: 798, baseType: !937, size: 384, offset: 3072)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !824, line: 592, size: 384, elements: !938)
!938 = !{!939, !940, !941, !942, !943, !944, !945}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !937, file: !824, line: 593, baseType: !896, size: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !937, file: !824, line: 594, baseType: !818, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !937, file: !824, line: 595, baseType: !818, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !937, file: !824, line: 596, baseType: !7, size: 32, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !937, file: !824, line: 597, baseType: !63, size: 16, offset: 288)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !937, file: !824, line: 598, baseType: !63, size: 16, offset: 304)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !937, file: !824, line: 600, baseType: !946, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !823, file: !824, line: 799, baseType: !948, size: 1792, offset: 3456)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !824, line: 610, size: 1792, elements: !949)
!949 = !{!950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !1066, !1067}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !948, file: !824, line: 611, baseType: !886, size: 192, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !948, file: !824, line: 618, baseType: !78, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !948, file: !824, line: 619, baseType: !78, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !948, file: !824, line: 620, baseType: !78, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !948, file: !824, line: 621, baseType: !78, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !948, file: !824, line: 622, baseType: !78, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !948, file: !824, line: 629, baseType: !907, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !948, file: !824, line: 630, baseType: !78, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !824, line: 631, baseType: !7, size: 32, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !948, file: !824, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !948, file: !824, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !948, file: !824, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !948, file: !824, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !948, file: !824, line: 662, baseType: !964, size: 512, offset: 704)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !965)
!965 = !{!966, !974, !975, !980, !1062, !1063, !1064, !1065}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !964, file: !22, line: 119, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !968, line: 9, size: 256, elements: !969)
!968 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !967, file: !968, line: 10, baseType: !886, size: 192, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !967, file: !968, line: 11, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !973, line: 29, baseType: !907)
!973 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !964, file: !22, line: 120, baseType: !972, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !964, file: !22, line: 121, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!21, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !964, file: !22, line: 122, baseType: !981, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !983)
!983 = !{!984, !1030, !1031, !1035, !1045, !1046, !1057, !1061}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !982, file: !22, line: 160, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !987)
!987 = !{!988, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !986, file: !22, line: 216, baseType: !989, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !990, line: 23, baseType: !991)
!990 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !990, line: 14, size: 32, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !991, file: !990, line: 15, baseType: !994, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !995, line: 44, baseType: !996)
!995 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !995, line: 14, size: 32, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !995, line: 15, baseType: !999, size: 32)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !995, line: 15, size: 32, elements: !1000)
!1000 = !{!1001, !1002, !1007}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !999, file: !995, line: 16, baseType: !842, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !995, line: 24, baseType: !1003, size: 16)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !995, line: 24, size: 16, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1003, file: !995, line: 25, baseType: !54, size: 8)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1003, file: !995, line: 26, baseType: !54, size: 8, offset: 8)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !995, line: 28, baseType: !1008, size: 32)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !995, line: 28, size: 32, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1008, file: !995, line: 29, baseType: !61, size: 16)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1008, file: !995, line: 30, baseType: !61, size: 16, offset: 16)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !986, file: !22, line: 217, baseType: !7, size: 32, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !986, file: !22, line: 218, baseType: !7, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !986, file: !22, line: 219, baseType: !7, size: 32, offset: 96)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !986, file: !22, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !986, file: !22, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !986, file: !22, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !986, file: !22, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !986, file: !22, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !986, file: !22, line: 226, baseType: !7, size: 32, offset: 160)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !986, file: !22, line: 227, baseType: !63, size: 16, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !986, file: !22, line: 228, baseType: !63, size: 16, offset: 208)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !986, file: !22, line: 229, baseType: !7, size: 32, offset: 224)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !986, file: !22, line: 235, baseType: !972, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !986, file: !22, line: 236, baseType: !979, size: 64, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !986, file: !22, line: 237, baseType: !972, size: 64, offset: 384)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !986, file: !22, line: 238, baseType: !979, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !986, file: !22, line: 239, baseType: !1029, size: 4096, align: 512, offset: 512)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 4096, align: 512, elements: !368)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !982, file: !22, line: 161, baseType: !7, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !982, file: !22, line: 162, baseType: !1032, size: 32, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !817, line: 32, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !1034, line: 96, baseType: !846)
!1034 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !982, file: !22, line: 163, baseType: !1036, size: 32, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1037, line: 274, baseType: !1038)
!1037 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1037, line: 274, size: 32, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1038, file: !1037, line: 274, baseType: !1041, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1037, line: 69, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1037, line: 64, size: 32, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1042, file: !1037, line: 65, baseType: !7, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !982, file: !22, line: 164, baseType: !979, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !982, file: !22, line: 165, baseType: !1047, size: 128, offset: 256)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !968, line: 14, size: 128, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1047, file: !968, line: 15, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !887, line: 26, size: 128, elements: !1051)
!1051 = !{!1052, !1056}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1050, file: !887, line: 27, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !887, line: 12, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1053, file: !887, line: 13, baseType: !891, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1050, file: !887, line: 28, baseType: !891, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !982, file: !22, line: 166, baseType: !1058, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!972}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !982, file: !22, line: 167, baseType: !972, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !964, file: !22, line: 123, baseType: !54, size: 8, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !964, file: !22, line: 124, baseType: !54, size: 8, offset: 456)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !964, file: !22, line: 125, baseType: !54, size: 8, offset: 464)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !964, file: !22, line: 126, baseType: !54, size: 8, offset: 472)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !948, file: !824, line: 671, baseType: !964, size: 512, offset: 1216)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !948, file: !824, line: 679, baseType: !1068, size: 64, offset: 1728)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !823, file: !824, line: 800, baseType: !1070, size: 64, offset: 5248)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !824, line: 800, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !823, file: !824, line: 809, baseType: !1074, size: 64, offset: 5312)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !824, line: 70, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !823, file: !824, line: 825, baseType: !1077, size: 2048, align: 512, offset: 5632)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !824, line: 509, size: 2048, align: 512, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1077, file: !824, line: 511, baseType: !78, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1077, file: !824, line: 512, baseType: !78, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1077, file: !824, line: 513, baseType: !78, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1077, file: !824, line: 514, baseType: !78, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1077, file: !824, line: 515, baseType: !78, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1077, file: !824, line: 516, baseType: !78, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1077, file: !824, line: 518, baseType: !78, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1077, file: !824, line: 519, baseType: !78, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1077, file: !824, line: 520, baseType: !907, size: 64, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1077, file: !824, line: 522, baseType: !78, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1077, file: !824, line: 523, baseType: !78, size: 64, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1077, file: !824, line: 524, baseType: !907, size: 64, offset: 704)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1077, file: !824, line: 526, baseType: !907, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1077, file: !824, line: 527, baseType: !78, size: 64, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1077, file: !824, line: 529, baseType: !78, size: 64, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1077, file: !824, line: 530, baseType: !78, size: 64, offset: 960)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1077, file: !824, line: 531, baseType: !78, size: 64, offset: 1024)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1077, file: !824, line: 532, baseType: !78, size: 64, offset: 1088)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1077, file: !824, line: 533, baseType: !78, size: 64, offset: 1152)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1077, file: !824, line: 535, baseType: !78, size: 64, offset: 1216)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1077, file: !824, line: 536, baseType: !78, size: 64, offset: 1280)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1077, file: !824, line: 537, baseType: !78, size: 64, offset: 1344)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1077, file: !824, line: 538, baseType: !78, size: 64, offset: 1408)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1077, file: !824, line: 539, baseType: !78, size: 64, offset: 1472)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1077, file: !824, line: 540, baseType: !78, size: 64, offset: 1536)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1077, file: !824, line: 541, baseType: !78, size: 64, offset: 1600)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1077, file: !824, line: 542, baseType: !78, size: 64, offset: 1664)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1077, file: !824, line: 543, baseType: !78, size: 64, offset: 1728)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !823, file: !824, line: 833, baseType: !7, size: 32, offset: 7680)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !823, file: !824, line: 836, baseType: !7, size: 32, offset: 7712)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !823, file: !824, line: 837, baseType: !846, size: 32, offset: 7744)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !823, file: !824, line: 838, baseType: !1111, size: 64, offset: 7808)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1114, line: 19, baseType: !1115)
!1114 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1114, line: 19, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1115, file: !1114, line: 19, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 64, elements: !1119)
!1119 = !{!1120}
!1120 = !DISubrange(count: 1)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !823, file: !824, line: 839, baseType: !1122, size: 64, offset: 7872)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !823, file: !824, line: 840, baseType: !1113, size: 64, offset: 7936)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !823, file: !824, line: 841, baseType: !132, size: 64, offset: 8000)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !823, file: !824, line: 843, baseType: !63, size: 16, offset: 8064)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !823, file: !824, line: 845, baseType: !63, size: 16, offset: 8080)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !823, file: !824, line: 848, baseType: !846, size: 32, offset: 8096)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !823, file: !824, line: 849, baseType: !1129, size: 32, offset: 8128)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !824, line: 718, size: 32, elements: !1130)
!1130 = !{!1131, !1138}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1129, file: !824, line: 724, baseType: !1132, size: 32)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !824, line: 719, size: 32, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1132, file: !824, line: 720, baseType: !54, size: 8)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1132, file: !824, line: 721, baseType: !54, size: 8, offset: 8)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1132, file: !824, line: 722, baseType: !54, size: 8, offset: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1132, file: !824, line: 723, baseType: !54, size: 8, offset: 24)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1129, file: !824, line: 725, baseType: !93, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !823, file: !824, line: 850, baseType: !896, size: 128, offset: 8192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !823, file: !824, line: 851, baseType: !1141, size: 64, offset: 8320)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !824, line: 60, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !823, file: !824, line: 855, baseType: !818, size: 64, offset: 8384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !823, file: !824, line: 856, baseType: !54, size: 8, offset: 8448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !823, file: !824, line: 857, baseType: !54, size: 8, offset: 8456)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !823, file: !824, line: 858, baseType: !846, size: 32, offset: 8480)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !823, file: !824, line: 859, baseType: !896, size: 128, offset: 8512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !823, file: !824, line: 860, baseType: !846, size: 32, offset: 8640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !823, file: !824, line: 861, baseType: !896, size: 128, offset: 8704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !823, file: !824, line: 873, baseType: !1151, size: 256, offset: 8832)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !824, line: 376, size: 256, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1151, file: !824, line: 381, baseType: !818, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1151, file: !824, line: 384, baseType: !80, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1151, file: !824, line: 389, baseType: !80, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1151, file: !824, line: 392, baseType: !80, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !823, file: !824, line: 875, baseType: !896, size: 128, offset: 9088)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !823, file: !824, line: 877, baseType: !1159, size: 320, offset: 9216)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1160, line: 86, size: 320, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1159, file: !1160, line: 87, baseType: !846, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1159, file: !1160, line: 88, baseType: !896, size: 128, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1159, file: !1160, line: 89, baseType: !896, size: 128, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !823, file: !824, line: 878, baseType: !886, size: 192, align: 64, offset: 9536)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !823, file: !824, line: 881, baseType: !1167, size: 64, offset: 9728)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1169, line: 733, size: 10240, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1170 = !{!1171, !1360}
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !1169, line: 734, baseType: !1172, size: 10240)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !1169, line: 734, size: 10240, elements: !1173)
!1173 = !{!1174, !1178, !1200, !1207, !1208, !1209, !1210, !1211, !1212, !1220, !1221, !1222, !1228, !1229, !1236, !1237, !1238, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1279, !1291, !1294, !1326, !1327, !1328, !1331, !1335, !1336, !1339, !1340, !1341, !1347, !1348}
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !1169, line: 739, baseType: !1175, size: 512, align: 512)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !1169, line: 739, size: 512, align: 512, elements: !1176)
!1176 = !{!1177}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1175, file: !1169, line: 747, baseType: !842, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1172, file: !1169, line: 750, baseType: !1179, size: 128, offset: 512)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1180, line: 218, size: 128, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1181 = !{!1182, !1198, !1199}
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !1180, line: 219, baseType: !1183, size: 32)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1180, line: 219, size: 32, elements: !1184)
!1184 = !{!1185, !1194}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1183, file: !1180, line: 220, baseType: !1186, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1187, line: 29, baseType: !1188)
!1187 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1187, line: 17, size: 32, elements: !1189)
!1189 = !{!1190}
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1187, line: 18, baseType: !1191, size: 32)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !1187, line: 18, size: 32, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1191, file: !1187, line: 19, baseType: !991, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1183, file: !1180, line: 221, baseType: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1180, line: 197, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 197, elements: !1197)
!1197 = !{}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1179, file: !1180, line: 223, baseType: !7, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1179, file: !1180, line: 224, baseType: !132, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1172, file: !1169, line: 752, baseType: !1201, size: 64, offset: 640)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!818, !1204, !818, !818, !818, !818}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1206, line: 537, flags: DIFlagFwdDecl)
!1206 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1172, file: !1169, line: 756, baseType: !818, size: 64, offset: 704)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1172, file: !1169, line: 757, baseType: !818, size: 64, offset: 768)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1172, file: !1169, line: 760, baseType: !818, size: 64, offset: 832)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1172, file: !1169, line: 761, baseType: !818, size: 64, offset: 896)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1172, file: !1169, line: 763, baseType: !818, size: 64, offset: 960)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1172, file: !1169, line: 764, baseType: !1213, size: 64, offset: 1024)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1206, line: 299, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1206, line: 299, size: 64, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1215, file: !1206, line: 299, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1219, line: 18, baseType: !818)
!1219 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1172, file: !1169, line: 773, baseType: !842, size: 32, offset: 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1172, file: !1169, line: 785, baseType: !842, size: 32, offset: 1120)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1172, file: !1169, line: 795, baseType: !1223, size: 64, offset: 1152)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1169, line: 726, size: 128, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1224, file: !1169, line: 727, baseType: !78, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1224, file: !1169, line: 728, baseType: !846, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1172, file: !1169, line: 801, baseType: !818, size: 64, offset: 1216)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1172, file: !1169, line: 804, baseType: !1230, size: 64, offset: 1280)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1231, line: 13, baseType: !1232)
!1231 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !817, line: 181, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !817, line: 179, size: 64, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1233, file: !817, line: 180, baseType: !907, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1172, file: !1169, line: 806, baseType: !846, size: 32, offset: 1344)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1172, file: !1169, line: 808, baseType: !1186, size: 32, offset: 1376)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1172, file: !1169, line: 823, baseType: !1239, size: 320, offset: 1408)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1240, line: 48, size: 320, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1241 = !{!1242, !1243, !1244, !1249, !1250}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1239, file: !1240, line: 49, baseType: !1230, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1239, file: !1240, line: 55, baseType: !1230, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1239, file: !1240, line: 57, baseType: !1245, size: 32, offset: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1246, line: 15, size: 32, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1245, file: !1246, line: 20, baseType: !842, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1239, file: !1240, line: 59, baseType: !989, size: 32, offset: 160)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1239, file: !1240, line: 60, baseType: !896, size: 128, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1172, file: !1169, line: 825, baseType: !896, size: 128, offset: 1728)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1172, file: !1169, line: 845, baseType: !846, size: 32, offset: 1856)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1172, file: !1169, line: 849, baseType: !818, size: 64, offset: 1920)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1172, file: !1169, line: 850, baseType: !818, size: 64, offset: 1984)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1172, file: !1169, line: 852, baseType: !818, size: 64, offset: 2048)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1172, file: !1169, line: 853, baseType: !818, size: 64, offset: 2112)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1172, file: !1169, line: 854, baseType: !1232, size: 64, offset: 2176)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1172, file: !1169, line: 855, baseType: !818, size: 64, offset: 2240)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1172, file: !1169, line: 856, baseType: !818, size: 64, offset: 2304)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1172, file: !1169, line: 857, baseType: !818, size: 64, offset: 2368)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1172, file: !1169, line: 858, baseType: !818, size: 64, offset: 2432)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1172, file: !1169, line: 865, baseType: !1041, size: 32, offset: 2496)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1172, file: !1169, line: 867, baseType: !1186, size: 32, offset: 2528)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1172, file: !1169, line: 869, baseType: !818, size: 64, offset: 2560)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1172, file: !1169, line: 869, baseType: !818, size: 64, offset: 2624)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1172, file: !1169, line: 869, baseType: !818, size: 64, offset: 2688)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1172, file: !1169, line: 869, baseType: !818, size: 64, offset: 2752)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1172, file: !1169, line: 870, baseType: !818, size: 64, offset: 2816)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1172, file: !1169, line: 870, baseType: !818, size: 64, offset: 2880)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1172, file: !1169, line: 870, baseType: !818, size: 64, offset: 2944)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1172, file: !1169, line: 871, baseType: !818, size: 64, offset: 3008)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1172, file: !1169, line: 871, baseType: !818, size: 64, offset: 3072)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1172, file: !1169, line: 871, baseType: !818, size: 64, offset: 3136)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1172, file: !1169, line: 871, baseType: !818, size: 64, offset: 3200)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1172, file: !1169, line: 873, baseType: !1276, size: 3328, offset: 3264)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 3328, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 52)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1172, file: !1169, line: 875, baseType: !1280, size: 1280, offset: 6592)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1281, size: 1280, elements: !252)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1282, line: 22, size: 320, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1283 = !{!1284, !1285, !1286, !1287}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1281, file: !1282, line: 23, baseType: !989, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1281, file: !1282, line: 24, baseType: !907, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1281, file: !1282, line: 26, baseType: !896, size: 128, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1281, file: !1282, line: 28, baseType: !1288, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !55, line: 20, baseType: !1290)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !57, line: 26, baseType: !846)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1172, file: !1169, line: 877, baseType: !1292, size: 64, offset: 7872)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1169, line: 877, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1172, file: !1169, line: 880, baseType: !1295, size: 1088, offset: 7936)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1296, line: 72, baseType: !1297)
!1296 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1296, line: 23, size: 1088, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1306, !1307, !1315, !1316, !1320, !1321, !1322}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1297, file: !1296, line: 28, baseType: !78, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1297, file: !1296, line: 38, baseType: !1232, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1297, file: !1296, line: 40, baseType: !818, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1297, file: !1296, line: 43, baseType: !1239, size: 320, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1297, file: !1296, line: 44, baseType: !1304, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1296, line: 44, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1297, file: !1296, line: 48, baseType: !818, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1297, file: !1296, line: 59, baseType: !1308, size: 256, offset: 640)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1309, line: 66, size: 256, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1310 = !{!1311, !1312, !1313, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1308, file: !1309, line: 67, baseType: !1230, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1308, file: !1309, line: 68, baseType: !989, size: 32, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1308, file: !1309, line: 70, baseType: !1245, size: 32, offset: 96)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1308, file: !1309, line: 72, baseType: !896, size: 128, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1297, file: !1296, line: 60, baseType: !132, size: 64, offset: 896)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1297, file: !1296, line: 61, baseType: !1317, size: 64, offset: 960)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1296, line: 61, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1297, file: !1296, line: 63, baseType: !842, size: 32, offset: 1024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1297, file: !1296, line: 69, baseType: !61, size: 16, offset: 1056)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1297, file: !1296, line: 70, baseType: !1323, size: 16, offset: 1072)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !55, line: 18, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !57, line: 23, baseType: !1325)
!1325 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1172, file: !1169, line: 882, baseType: !818, size: 64, offset: 9024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1172, file: !1169, line: 885, baseType: !1186, size: 32, offset: 9088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1172, file: !1169, line: 886, baseType: !1329, size: 64, offset: 9152)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1169, line: 732, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1172, file: !1169, line: 901, baseType: !1332, size: 64, offset: 9216)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1334, line: 18, flags: DIFlagFwdDecl)
!1334 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1172, file: !1169, line: 904, baseType: !1204, size: 64, offset: 9280)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1172, file: !1169, line: 906, baseType: !1337, size: 64, offset: 9344)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1169, line: 906, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1172, file: !1169, line: 930, baseType: !842, size: 32, offset: 9408)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1172, file: !1169, line: 933, baseType: !842, size: 32, offset: 9440)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1172, file: !1169, line: 935, baseType: !1342, size: 64, offset: 9472)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !33, line: 103, size: 64, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1342, file: !33, line: 104, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !33, line: 101, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1172, file: !1169, line: 940, baseType: !1230, size: 64, offset: 9536)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1172, file: !1169, line: 942, baseType: !1349, size: 256, offset: 9600)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1350, line: 98, size: 256, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1349, file: !1350, line: 99, baseType: !1230, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1349, file: !1350, line: 100, baseType: !896, size: 128, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1349, file: !1350, line: 101, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1350, line: 21, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1168, file: !1169, line: 986, baseType: !1361, offset: 10240)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, elements: !1362)
!1362 = !{!1363}
!1363 = !DISubrange(count: -1)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !823, file: !824, line: 882, baseType: !1167, size: 64, offset: 9792)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !823, file: !824, line: 884, baseType: !846, size: 32, offset: 9856)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !823, file: !824, line: 885, baseType: !846, size: 32, offset: 9888)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !823, file: !824, line: 886, baseType: !846, size: 32, offset: 9920)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !823, file: !824, line: 888, baseType: !846, size: 32, offset: 9952)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !823, file: !824, line: 890, baseType: !818, size: 64, offset: 9984)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !823, file: !824, line: 893, baseType: !7, size: 32, offset: 10048)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !823, file: !824, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !823, file: !824, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !823, file: !824, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !823, file: !824, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !823, file: !824, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !823, file: !824, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !823, file: !824, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !823, file: !824, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !823, file: !824, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !823, file: !824, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !823, file: !824, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !823, file: !824, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !823, file: !824, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !823, file: !824, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !823, file: !824, line: 969, baseType: !818, size: 64, offset: 10176)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !823, file: !824, line: 971, baseType: !1387, size: 448, offset: 10240)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !27, line: 25, size: 448, elements: !1388)
!1388 = !{!1389, !1390, !1396}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1387, file: !27, line: 26, baseType: !818, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1387, file: !27, line: 27, baseType: !1391, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !27, line: 28, baseType: !1397, size: 320, offset: 128)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1387, file: !27, line: 28, size: 320, elements: !1398)
!1398 = !{!1399, !1409, !1434}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1397, file: !27, line: 37, baseType: !1400, size: 320)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1397, file: !27, line: 30, size: 320, elements: !1401)
!1401 = !{!1402, !1404, !1405, !1406, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1400, file: !27, line: 31, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1400, file: !27, line: 32, baseType: !93, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1400, file: !27, line: 33, baseType: !93, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1400, file: !27, line: 34, baseType: !93, size: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1400, file: !27, line: 35, baseType: !78, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1400, file: !27, line: 36, baseType: !1403, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1397, file: !27, line: 47, baseType: !1410, size: 192)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1397, file: !27, line: 39, size: 192, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1433}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1410, file: !27, line: 40, baseType: !1032, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1410, file: !27, line: 41, baseType: !26, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !27, line: 42, baseType: !1415, size: 64, offset: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !27, line: 42, size: 64, elements: !1416)
!1416 = !{!1417, !1425}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1415, file: !27, line: 43, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1420, line: 7, size: 128, elements: !1421)
!1420 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1421 = !{!1422, !1424}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1419, file: !1420, line: 8, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !1034, line: 93, baseType: !909)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1419, file: !1420, line: 9, baseType: !909, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1415, file: !27, line: 44, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1428, line: 7, size: 64, elements: !1429)
!1428 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1429 = !{!1430, !1432}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1427, file: !1428, line: 8, baseType: !1431, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1428, line: 5, baseType: !1289)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1427, file: !1428, line: 9, baseType: !1289, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1410, file: !27, line: 46, baseType: !78, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1397, file: !27, line: 55, baseType: !1435, size: 256)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1397, file: !27, line: 49, size: 256, elements: !1436)
!1436 = !{!1437, !1440, !1441, !1442, !1443}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1435, file: !27, line: 50, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !27, line: 14, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1435, file: !27, line: 51, baseType: !846, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1435, file: !27, line: 52, baseType: !846, size: 32, offset: 96)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1435, file: !27, line: 53, baseType: !818, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1435, file: !27, line: 54, baseType: !818, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !823, file: !824, line: 973, baseType: !1445, size: 32, offset: 10688)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !817, line: 27, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !1034, line: 28, baseType: !846)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !823, file: !824, line: 974, baseType: !1445, size: 32, offset: 10720)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !823, file: !824, line: 978, baseType: !818, size: 64, offset: 10752)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !823, file: !824, line: 987, baseType: !822, size: 64, offset: 10816)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !823, file: !824, line: 990, baseType: !822, size: 64, offset: 10880)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !823, file: !824, line: 995, baseType: !896, size: 128, offset: 10944)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !823, file: !824, line: 996, baseType: !896, size: 128, offset: 11072)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !823, file: !824, line: 997, baseType: !822, size: 64, offset: 11200)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !823, file: !824, line: 1005, baseType: !896, size: 128, offset: 11264)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !823, file: !824, line: 1006, baseType: !896, size: 128, offset: 11392)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !823, file: !824, line: 1009, baseType: !1457, size: 64, offset: 11520)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1459, line: 59, size: 768, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1460 = !{!1461, !1462, !1463, !1464, !1475, !1476, !1483, !1492}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1458, file: !1459, line: 61, baseType: !837, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1458, file: !1459, line: 62, baseType: !7, size: 32, offset: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1458, file: !1459, line: 63, baseType: !1186, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1458, file: !1459, line: 65, baseType: !1465, size: 256, offset: 128)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 256, elements: !252)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !817, line: 194, size: 64, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1466, file: !817, line: 195, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !817, line: 198, size: 128, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1470, file: !817, line: 199, baseType: !1469, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1470, file: !817, line: 199, baseType: !1474, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1458, file: !1459, line: 66, baseType: !1466, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1458, file: !1459, line: 68, baseType: !1477, size: 192, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1478, line: 41, baseType: !1479)
!1478 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1478, line: 37, size: 192, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !1478, line: 38, baseType: !1186, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1479, file: !1478, line: 39, baseType: !896, size: 128, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1458, file: !1459, line: 69, baseType: !1484, size: 128, align: 64, offset: 640)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !817, line: 232, size: 128, align: 64, elements: !1485)
!1485 = !{!1486, !1488}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1484, file: !817, line: 233, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1484, file: !817, line: 234, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1487}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1458, file: !1459, line: 70, baseType: !1493, offset: 768)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1494, elements: !1362)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1459, line: 54, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1494, file: !1459, line: 55, baseType: !846, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1494, file: !1459, line: 56, baseType: !1498, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1459, line: 56, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !823, file: !824, line: 1010, baseType: !1501, size: 512, offset: 11584)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 512, elements: !252)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !823, file: !824, line: 1011, baseType: !896, size: 128, offset: 12096)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !823, file: !824, line: 1012, baseType: !896, size: 128, offset: 12224)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !823, file: !824, line: 1014, baseType: !1505, size: 64, offset: 12352)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1507, line: 26, size: 256, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1506, file: !1507, line: 27, baseType: !7, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1506, file: !1507, line: 28, baseType: !1511, size: 192, offset: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1512, line: 43, size: 192, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1511, file: !1512, line: 44, baseType: !989, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1511, file: !1512, line: 45, baseType: !896, size: 128, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !823, file: !824, line: 1017, baseType: !1517, size: 64, offset: 12416)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !823, file: !824, line: 1020, baseType: !1517, size: 64, offset: 12480)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !823, file: !824, line: 1023, baseType: !132, size: 64, offset: 12544)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !823, file: !824, line: 1025, baseType: !78, size: 64, offset: 12608)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !823, file: !824, line: 1026, baseType: !78, size: 64, offset: 12672)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !823, file: !824, line: 1031, baseType: !78, size: 64, offset: 12736)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !823, file: !824, line: 1032, baseType: !1524, size: 192, offset: 12800)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !824, line: 324, size: 192, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1524, file: !824, line: 326, baseType: !78, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1524, file: !824, line: 327, baseType: !78, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !824, line: 328, baseType: !989, size: 32, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !823, file: !824, line: 1041, baseType: !818, size: 64, offset: 12992)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !823, file: !824, line: 1042, baseType: !818, size: 64, offset: 13056)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !823, file: !824, line: 1045, baseType: !78, size: 64, offset: 13120)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !823, file: !824, line: 1048, baseType: !78, size: 64, offset: 13184)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !823, file: !824, line: 1051, baseType: !818, size: 64, offset: 13248)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !823, file: !824, line: 1052, baseType: !818, size: 64, offset: 13312)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !823, file: !824, line: 1055, baseType: !1536, size: 640, offset: 13376)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1537, line: 132, size: 640, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1538 = !{!1539, !1545, !1546}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1536, file: !1537, line: 133, baseType: !1540, size: 576)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1541, size: 576, elements: !75)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1537, line: 117, size: 192, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1541, file: !1537, line: 118, baseType: !78, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1541, file: !1537, line: 119, baseType: !1047, size: 128, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1536, file: !1537, line: 134, baseType: !7, size: 32, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1536, file: !1537, line: 135, baseType: !7, size: 32, offset: 608)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !823, file: !824, line: 1058, baseType: !1548, size: 448, offset: 14016)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1537, line: 144, size: 448, elements: !1549)
!1549 = !{!1550, !1551, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1548, file: !1537, line: 145, baseType: !1484, size: 128, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1548, file: !1537, line: 146, baseType: !1308, size: 256, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1548, file: !1537, line: 147, baseType: !7, size: 32, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !823, file: !824, line: 1064, baseType: !1554, size: 64, offset: 14464)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !824, line: 1064, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !823, file: !824, line: 1067, baseType: !1554, size: 64, offset: 14528)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !823, file: !824, line: 1070, baseType: !1554, size: 64, offset: 14592)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !823, file: !824, line: 1074, baseType: !1560, size: 64, offset: 14656)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !824, line: 1074, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !823, file: !824, line: 1084, baseType: !1563, size: 128, offset: 14720)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 16)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !823, file: !824, line: 1086, baseType: !1567, size: 64, offset: 14848)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !824, line: 55, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !823, file: !824, line: 1089, baseType: !1570, size: 64, offset: 14912)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1571, line: 12, size: 64, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1570, file: !1571, line: 13, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1571, line: 8, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !823, file: !824, line: 1090, baseType: !1577, size: 128, offset: 14976)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1578, line: 13, size: 128, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1577, file: !1578, line: 14, baseType: !896, size: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !823, file: !824, line: 1097, baseType: !1582, size: 64, offset: 15104)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !824, line: 50, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !823, file: !824, line: 1100, baseType: !1585, size: 64, offset: 15168)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !824, line: 1100, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !823, file: !824, line: 1103, baseType: !1588, size: 64, offset: 15232)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !824, line: 53, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !823, file: !824, line: 1107, baseType: !1591, size: 64, offset: 15296)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !824, line: 56, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !823, file: !824, line: 1110, baseType: !1594, size: 64, offset: 15360)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1537, line: 236, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !823, file: !824, line: 1111, baseType: !1597, size: 64, offset: 15424)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !824, line: 67, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !823, file: !824, line: 1112, baseType: !1600, size: 64, offset: 15488)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1601, line: 25, baseType: !1602)
!1601 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1601, line: 23, size: 64, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1602, file: !1601, line: 24, baseType: !1118, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !823, file: !824, line: 1113, baseType: !1600, size: 64, offset: 15552)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !823, file: !824, line: 1115, baseType: !1600, size: 64, offset: 15616)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !823, file: !824, line: 1116, baseType: !1608, size: 192, offset: 15680)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1609, line: 32, size: 192, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1608, file: !1609, line: 33, baseType: !896, size: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1608, file: !1609, line: 34, baseType: !1600, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !823, file: !824, line: 1117, baseType: !818, size: 64, offset: 15872)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !823, file: !824, line: 1118, baseType: !1615, size: 64, offset: 15936)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !817, line: 61, baseType: !1616)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1034, line: 72, baseType: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1034, line: 16, baseType: !818)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !823, file: !824, line: 1119, baseType: !7, size: 32, offset: 16000)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !823, file: !824, line: 1121, baseType: !1487, size: 64, offset: 16064)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !823, file: !824, line: 1125, baseType: !1621, size: 64, offset: 16128)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !824, line: 43, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !823, file: !824, line: 1127, baseType: !1624, size: 32, offset: 16192)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1334, line: 23, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1334, line: 21, size: 32, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1625, file: !1334, line: 22, baseType: !1628, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !817, line: 37, baseType: !1629)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !1034, line: 49, baseType: !7)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !823, file: !824, line: 1128, baseType: !7, size: 32, offset: 16224)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !823, file: !824, line: 1130, baseType: !1632, size: 128, offset: 16256)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1633, line: 37, size: 128, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1634 = !{!1635, !1636, !1637}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1632, file: !1633, line: 38, baseType: !846, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1632, file: !1633, line: 39, baseType: !842, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1632, file: !1633, line: 40, baseType: !1638, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1633, line: 24, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !823, file: !824, line: 1131, baseType: !1641, size: 256, offset: 16384)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1642, line: 12, size: 256, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1643 = !{!1644, !1645, !1646, !1647}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1641, file: !1642, line: 13, baseType: !90, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1641, file: !1642, line: 14, baseType: !818, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1641, file: !1642, line: 15, baseType: !818, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1641, file: !1642, line: 16, baseType: !1648, size: 8, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !817, line: 35, baseType: !1649)
!1649 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !823, file: !824, line: 1134, baseType: !78, size: 64, offset: 16640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !823, file: !824, line: 1135, baseType: !78, size: 64, offset: 16704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !823, file: !824, line: 1138, baseType: !1186, size: 32, offset: 16768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !823, file: !824, line: 1141, baseType: !989, size: 32, offset: 16800)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !823, file: !824, line: 1143, baseType: !1655, size: 64, offset: 16832)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !824, line: 735, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1655, file: !824, line: 736, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !823, file: !824, line: 1147, baseType: !1050, size: 128, offset: 16896)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !823, file: !824, line: 1149, baseType: !822, size: 64, offset: 17024)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !823, file: !824, line: 1151, baseType: !1662, size: 64, offset: 17088)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !824, line: 1151, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !823, file: !824, line: 1188, baseType: !132, size: 64, offset: 17152)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !823, file: !824, line: 1191, baseType: !1666, size: 64, offset: 17216)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !824, line: 44, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !823, file: !824, line: 1194, baseType: !1669, size: 64, offset: 17280)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !824, line: 45, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !823, file: !824, line: 1197, baseType: !1672, size: 64, offset: 17344)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !824, line: 61, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !823, file: !824, line: 1199, baseType: !1675, size: 64, offset: 17408)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !824, line: 52, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !823, file: !824, line: 1202, baseType: !1678, size: 64, offset: 17472)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !824, line: 48, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !823, file: !824, line: 1205, baseType: !818, size: 64, offset: 17536)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !823, file: !824, line: 1206, baseType: !1682, size: 64, offset: 17600)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1609, line: 14, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1609, line: 12, size: 384, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1609, line: 13, baseType: !1687, size: 384)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1684, file: !1609, line: 13, size: 384, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1687, file: !1609, line: 13, baseType: !846, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1687, file: !1609, line: 13, baseType: !846, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1687, file: !1609, line: 13, baseType: !846, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1687, file: !1609, line: 13, baseType: !1693, size: 256, offset: 128)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1694, line: 37, size: 256, elements: !1695)
!1694 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1695 = !{!1696, !1701, !1714, !1720, !1730, !1757, !1762}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1693, file: !1694, line: 42, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1694, line: 39, size: 64, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1697, file: !1694, line: 40, baseType: !1446, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1697, file: !1694, line: 41, baseType: !1629, size: 32, offset: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1693, file: !1694, line: 50, baseType: !1702, size: 192)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1694, line: 45, size: 192, elements: !1703)
!1703 = !{!1704, !1706, !1707, !1713}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1702, file: !1694, line: 46, baseType: !1705, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !1034, line: 95, baseType: !846)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1702, file: !1694, line: 47, baseType: !846, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1702, file: !1694, line: 48, baseType: !1708, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1694, line: 11, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1694, line: 8, size: 64, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1709, file: !1694, line: 9, baseType: !846, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1709, file: !1694, line: 10, baseType: !132, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1702, file: !1694, line: 49, baseType: !846, size: 32, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1693, file: !1694, line: 57, baseType: !1715, size: 128)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1694, line: 53, size: 128, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1715, file: !1694, line: 54, baseType: !1446, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1715, file: !1694, line: 55, baseType: !1629, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1715, file: !1694, line: 56, baseType: !1708, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1693, file: !1694, line: 66, baseType: !1721, size: 256)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1694, line: 60, size: 256, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726, !1729}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1721, file: !1694, line: 61, baseType: !1446, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1721, file: !1694, line: 62, baseType: !1629, size: 32, offset: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1721, file: !1694, line: 63, baseType: !846, size: 32, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1721, file: !1694, line: 64, baseType: !1727, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !1034, line: 94, baseType: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !1034, line: 15, baseType: !1394)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1721, file: !1694, line: 65, baseType: !1727, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1693, file: !1694, line: 105, baseType: !1731, size: 256)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1694, line: 69, size: 256, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1731, file: !1694, line: 70, baseType: !132, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1694, line: 79, baseType: !1735, size: 192, offset: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1694, line: 79, size: 192, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1746, !1751}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1735, file: !1694, line: 81, baseType: !846, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1735, file: !1694, line: 86, baseType: !1325, size: 16)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1735, file: !1694, line: 92, baseType: !1740, size: 192)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1735, file: !1694, line: 88, size: 192, elements: !1741)
!1741 = !{!1742, !1744, !1745}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1740, file: !1694, line: 89, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !368)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1740, file: !1694, line: 90, baseType: !132, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1740, file: !1694, line: 91, baseType: !132, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1735, file: !1694, line: 97, baseType: !1747, size: 96)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1735, file: !1694, line: 94, size: 96, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1747, file: !1694, line: 95, baseType: !1743, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1747, file: !1694, line: 96, baseType: !94, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1735, file: !1694, line: 103, baseType: !1752, size: 128)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1735, file: !1694, line: 99, size: 128, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1752, file: !1694, line: 100, baseType: !818, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1752, file: !1694, line: 101, baseType: !94, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1752, file: !1694, line: 102, baseType: !94, size: 32, offset: 96)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1693, file: !1694, line: 111, baseType: !1758, size: 128)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1694, line: 108, size: 128, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1758, file: !1694, line: 109, baseType: !1394, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1758, file: !1694, line: 110, baseType: !846, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1693, file: !1694, line: 118, baseType: !1763, size: 128)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1694, line: 114, size: 128, elements: !1764)
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1763, file: !1694, line: 115, baseType: !132, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1763, file: !1694, line: 116, baseType: !846, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1763, file: !1694, line: 117, baseType: !7, size: 32, offset: 96)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !823, file: !824, line: 1208, baseType: !1769, size: 448, offset: 17664)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1770, line: 12, size: 448, elements: !1771)
!1770 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1769, file: !1770, line: 15, baseType: !78, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1769, file: !1770, line: 17, baseType: !78, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1769, file: !1770, line: 19, baseType: !78, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1769, file: !1770, line: 21, baseType: !78, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1769, file: !1770, line: 29, baseType: !78, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1769, file: !1770, line: 35, baseType: !78, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1769, file: !1770, line: 44, baseType: !78, size: 64, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !823, file: !824, line: 1215, baseType: !78, size: 64, offset: 18112)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !823, file: !824, line: 1217, baseType: !78, size: 64, offset: 18176)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !823, file: !824, line: 1219, baseType: !78, size: 64, offset: 18240)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !823, file: !824, line: 1223, baseType: !1783, size: 64, offset: 18304)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1784, line: 99, baseType: !1785)
!1784 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1784, line: 99, size: 64, elements: !1786)
!1786 = !{!1787}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1785, file: !1784, line: 99, baseType: !1118, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !823, file: !824, line: 1225, baseType: !1789, size: 32, offset: 18368)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1037, line: 275, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1037, line: 275, size: 32, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1790, file: !1037, line: 275, baseType: !1041, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !823, file: !824, line: 1226, baseType: !846, size: 32, offset: 18400)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !823, file: !824, line: 1227, baseType: !846, size: 32, offset: 18432)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !823, file: !824, line: 1231, baseType: !1796, size: 64, offset: 18496)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !824, line: 1231, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !823, file: !824, line: 1233, baseType: !896, size: 128, offset: 18560)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !823, file: !824, line: 1240, baseType: !1800, size: 64, offset: 18688)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !824, line: 62, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !823, file: !824, line: 1242, baseType: !1803, size: 64, offset: 18752)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !824, line: 1242, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !823, file: !824, line: 1244, baseType: !896, size: 128, offset: 18816)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !823, file: !824, line: 1245, baseType: !1807, size: 64, offset: 18944)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !824, line: 51, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !823, file: !824, line: 1246, baseType: !1308, size: 256, offset: 19008)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !823, file: !824, line: 1247, baseType: !7, size: 32, offset: 19264)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !823, file: !824, line: 1250, baseType: !1812, size: 64, offset: 19328)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !824, line: 57, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !823, file: !824, line: 1251, baseType: !1308, size: 256, offset: 19392)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !823, file: !824, line: 1252, baseType: !896, size: 128, offset: 19648)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !823, file: !824, line: 1259, baseType: !1817, size: 64, offset: 19776)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !824, line: 54, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !823, file: !824, line: 1260, baseType: !1325, size: 16, offset: 19840)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !823, file: !824, line: 1261, baseType: !1325, size: 16, offset: 19856)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !823, file: !824, line: 1314, baseType: !1822, size: 64, offset: 19904)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1824, line: 62, size: 256, align: 256, elements: !1825)
!1824 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1823, file: !1824, line: 75, baseType: !94, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1823, file: !1824, line: 90, baseType: !94, size: 32, offset: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1823, file: !1824, line: 112, baseType: !79, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1823, file: !1824, line: 132, baseType: !94, size: 32, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1823, file: !1824, line: 140, baseType: !94, size: 32, offset: 160)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1823, file: !1824, line: 149, baseType: !94, size: 32, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1823, file: !1824, line: 154, baseType: !1833, offset: 224)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !1362)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !823, file: !824, line: 1315, baseType: !93, size: 32, offset: 19968)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !823, file: !824, line: 1316, baseType: !93, size: 32, offset: 20000)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !823, file: !824, line: 1321, baseType: !818, size: 64, offset: 20032)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !823, file: !824, line: 1325, baseType: !846, size: 32, offset: 20096)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !823, file: !824, line: 1326, baseType: !846, size: 32, offset: 20128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !823, file: !824, line: 1327, baseType: !846, size: 32, offset: 20160)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !823, file: !824, line: 1328, baseType: !846, size: 32, offset: 20192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !823, file: !824, line: 1329, baseType: !1484, size: 128, align: 64, offset: 20224)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !823, file: !824, line: 1332, baseType: !1843, size: 128, offset: 20352)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1844, line: 51, size: 128, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1845 = !{!1846, !1851, !1852}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1843, file: !1844, line: 60, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1848, line: 7, size: 64, elements: !1849)
!1848 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1847, file: !1848, line: 12, baseType: !1115, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1843, file: !1844, line: 63, baseType: !1648, size: 8, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1843, file: !1844, line: 70, baseType: !1648, size: 8, offset: 72)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !823, file: !824, line: 1335, baseType: !1854, size: 64, offset: 20480)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !824, line: 59, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !823, file: !824, line: 1337, baseType: !1857, size: 128, offset: 20544)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1844, line: 39, size: 128, elements: !1858)
!1858 = !{!1859, !1922, !1923}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1857, file: !1844, line: 40, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1169, line: 74, size: 512, align: 128, elements: !1862)
!1862 = !{!1863, !1864, !1916, !1921}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1861, file: !1169, line: 75, baseType: !818, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !1169, line: 83, baseType: !1865, size: 320, offset: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1861, file: !1169, line: 83, size: 320, elements: !1866)
!1866 = !{!1867, !1890, !1904, !1908, !1915}
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1169, line: 84, baseType: !1868, size: 320)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !1169, line: 84, size: 320, elements: !1869)
!1869 = !{!1870, !1881, !1884, !1889}
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1169, line: 90, baseType: !1871, size: 128)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !1169, line: 90, size: 128, elements: !1872)
!1872 = !{!1873, !1874, !1879, !1880}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1871, file: !1169, line: 91, baseType: !896, size: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1169, line: 94, baseType: !1875, size: 128)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1169, line: 94, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1875, file: !1169, line: 96, baseType: !132, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1875, file: !1169, line: 98, baseType: !7, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1871, file: !1169, line: 102, baseType: !896, size: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1871, file: !1169, line: 103, baseType: !896, size: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1868, file: !1169, line: 106, baseType: !1882, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !1169, line: 32, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1169, line: 107, baseType: !1885, size: 64, offset: 192)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !1169, line: 107, size: 64, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1885, file: !1169, line: 108, baseType: !818, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1885, file: !1169, line: 109, baseType: !818, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1868, file: !1169, line: 117, baseType: !818, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1169, line: 119, baseType: !1891, size: 320)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !1169, line: 119, size: 320, elements: !1892)
!1892 = !{!1893, !1894, !1897, !1898, !1899}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1891, file: !1169, line: 124, baseType: !818, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1891, file: !1169, line: 125, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1169, line: 125, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1891, file: !1169, line: 126, baseType: !818, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1891, file: !1169, line: 127, baseType: !818, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1169, line: 128, baseType: !1900, size: 64, offset: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1169, line: 128, size: 64, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1900, file: !1169, line: 133, baseType: !818, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1900, file: !1169, line: 138, baseType: !1230, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1169, line: 141, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !1169, line: 141, size: 64, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1905, file: !1169, line: 142, baseType: !818, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1169, line: 144, baseType: !1909, size: 128)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !1169, line: 144, size: 128, elements: !1910)
!1910 = !{!1911, !1914}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1909, file: !1169, line: 146, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1169, line: 146, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1909, file: !1169, line: 147, baseType: !132, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1865, file: !1169, line: 161, baseType: !1484, size: 128, align: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !1169, line: 164, baseType: !1917, size: 32, offset: 384)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1861, file: !1169, line: 164, size: 32, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1917, file: !1169, line: 169, baseType: !842, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1917, file: !1169, line: 177, baseType: !7, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1861, file: !1169, line: 181, baseType: !842, size: 32, offset: 416)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1857, file: !1844, line: 42, baseType: !94, size: 32, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1857, file: !1844, line: 43, baseType: !94, size: 32, offset: 96)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !823, file: !824, line: 1340, baseType: !1925, size: 64, offset: 20672)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !824, line: 69, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !823, file: !824, line: 1351, baseType: !846, size: 32, offset: 20736)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !823, file: !824, line: 1352, baseType: !846, size: 32, offset: 20768)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !823, file: !824, line: 1354, baseType: !818, size: 64, offset: 20800)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !823, file: !824, line: 1364, baseType: !78, size: 64, offset: 20864)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !823, file: !824, line: 1365, baseType: !78, size: 64, offset: 20928)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !823, file: !824, line: 1412, baseType: !818, size: 64, offset: 20992)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !823, file: !824, line: 1453, baseType: !1934, size: 64, offset: 21056)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !824, line: 1453, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !823, file: !824, line: 1457, baseType: !1937, size: 64, offset: 21120)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !33, line: 61, size: 576, elements: !1939)
!1939 = !{!1940, !1941, !1960, !1963, !1964, !1997, !2007}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1938, file: !33, line: 62, baseType: !32, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !33, line: 64, baseType: !1942, size: 192, offset: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !33, line: 64, size: 192, elements: !1943)
!1943 = !{!1944, !1955}
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !33, line: 65, baseType: !1945, size: 192)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1942, file: !33, line: 65, size: 192, elements: !1946)
!1946 = !{!1947, !1954}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1945, file: !33, line: 66, baseType: !1948, size: 128)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1949, line: 50, size: 128, elements: !1950)
!1949 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1948, file: !1949, line: 52, baseType: !818, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1948, file: !1949, line: 54, baseType: !7, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1948, file: !1949, line: 55, baseType: !7, size: 32, offset: 96)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1945, file: !33, line: 67, baseType: !818, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !33, line: 70, baseType: !1956, size: 192)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1942, file: !33, line: 70, size: 192, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1956, file: !33, line: 71, baseType: !1484, size: 128, align: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1956, file: !33, line: 72, baseType: !818, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1938, file: !33, line: 76, baseType: !1961, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !33, line: 76, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1938, file: !33, line: 77, baseType: !818, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1938, file: !33, line: 79, baseType: !1965, size: 64, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1949, line: 25, size: 256, elements: !1967)
!1967 = !{!1968, !1974, !1978}
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1966, file: !1949, line: 26, baseType: !1969, size: 128)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1966, file: !1949, line: 26, size: 128, elements: !1970)
!1970 = !{!1971, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1969, file: !1949, line: 27, baseType: !1972, size: 128)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !1564)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1969, file: !1949, line: 28, baseType: !1972, size: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1966, file: !1949, line: 31, baseType: !1975, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1949, line: 23, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1966, file: !1949, line: 33, baseType: !1979, size: 64, offset: 192)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1966, file: !1949, line: 33, size: 64, elements: !1980)
!1980 = !{!1981, !1987, !1992}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1979, file: !1949, line: 38, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1949, line: 34, size: 64, elements: !1983)
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1982, file: !1949, line: 35, baseType: !1289, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1982, file: !1949, line: 36, baseType: !54, size: 8, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1982, file: !1949, line: 37, baseType: !54, size: 8, offset: 40)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1979, file: !1949, line: 42, baseType: !1988, size: 16)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1949, line: 39, size: 16, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1988, file: !1949, line: 40, baseType: !54, size: 8)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1988, file: !1949, line: 41, baseType: !54, size: 8, offset: 8)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1979, file: !1949, line: 46, baseType: !1993, size: 16)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1949, line: 43, size: 16, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1993, file: !1949, line: 44, baseType: !54, size: 8)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1993, file: !1949, line: 45, baseType: !54, size: 8, offset: 8)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1938, file: !33, line: 81, baseType: !1998, size: 64, offset: 448)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !33, line: 85, size: 384, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2004, !2005, !2006}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1999, file: !33, line: 86, baseType: !1961, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1999, file: !33, line: 87, baseType: !818, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1999, file: !33, line: 88, baseType: !818, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1999, file: !33, line: 89, baseType: !818, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1999, file: !33, line: 90, baseType: !1648, size: 8, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1999, file: !33, line: 92, baseType: !1998, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1938, file: !33, line: 82, baseType: !7, size: 32, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !823, file: !824, line: 1463, baseType: !2009, offset: 21184)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !824, line: 739, elements: !1197)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !823, file: !824, line: 1470, baseType: !1484, size: 128, align: 64, offset: 21184)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !823, file: !824, line: 1471, baseType: !837, size: 32, offset: 21312)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !823, file: !824, line: 1472, baseType: !846, size: 32, offset: 21344)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !823, file: !824, line: 1474, baseType: !822, size: 64, offset: 21376)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !823, file: !824, line: 1475, baseType: !2015, size: 320, offset: 21440)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2016, line: 11, size: 320, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2017 = !{!2018, !2019, !2020, !2025}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2015, file: !2016, line: 16, baseType: !1470, size: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2015, file: !2016, line: 17, baseType: !818, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2015, file: !2016, line: 18, baseType: !2021, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2016, line: 19, baseType: !93, size: 32, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !823, file: !824, line: 1478, baseType: !2027, size: 64, offset: 21760)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !824, line: 1478, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !823, file: !824, line: 1482, baseType: !837, size: 32, offset: 21824)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !823, file: !824, line: 1489, baseType: !132, size: 64, offset: 21888)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !823, file: !824, line: 1504, baseType: !132, size: 64, offset: 21952)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !823, file: !824, line: 1505, baseType: !79, size: 64, offset: 22016)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !823, file: !824, line: 1506, baseType: !78, size: 64, offset: 22080)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !823, file: !824, line: 1507, baseType: !79, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !823, file: !824, line: 1508, baseType: !79, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !823, file: !824, line: 1509, baseType: !79, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !823, file: !824, line: 1510, baseType: !1484, size: 128, align: 64, offset: 22208)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !823, file: !824, line: 1511, baseType: !846, size: 32, offset: 22336)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !823, file: !824, line: 1515, baseType: !2040, size: 64, offset: 22400)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !856, line: 56, size: 64, elements: !2041)
!2041 = !{!2042}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2040, file: !856, line: 57, baseType: !859, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !823, file: !824, line: 1518, baseType: !2040, size: 64, offset: 22464)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !823, file: !824, line: 1528, baseType: !1484, size: 128, align: 64, offset: 22528)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !823, file: !824, line: 1552, baseType: !2046, size: 35328, offset: 23040)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2047, line: 430, size: 35328, elements: !2048)
!2047 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2048 = !{!2049, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2078, !2079, !2080, !2081, !2082, !2083, !2086, !2087, !2088, !2089}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2046, file: !2047, line: 432, baseType: !2050, size: 192)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2051, size: 192, elements: !75)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2052, line: 16, size: 64, elements: !2053)
!2052 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2051, file: !2052, line: 17, baseType: !61, size: 16)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2051, file: !2052, line: 18, baseType: !61, size: 16, offset: 16)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2051, file: !2052, line: 19, baseType: !61, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2051, file: !2052, line: 19, baseType: !61, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2051, file: !2052, line: 19, baseType: !61, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2051, file: !2052, line: 19, baseType: !61, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2051, file: !2052, line: 19, baseType: !61, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2051, file: !2052, line: 20, baseType: !61, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2051, file: !2052, line: 20, baseType: !61, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2051, file: !2052, line: 20, baseType: !61, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2051, file: !2052, line: 20, baseType: !61, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2051, file: !2052, line: 20, baseType: !61, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2051, file: !2052, line: 20, baseType: !61, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2046, file: !2047, line: 436, baseType: !818, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2046, file: !2047, line: 440, baseType: !63, size: 16, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2046, file: !2047, line: 441, baseType: !63, size: 16, offset: 272)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2046, file: !2047, line: 442, baseType: !63, size: 16, offset: 288)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2046, file: !2047, line: 443, baseType: !63, size: 16, offset: 304)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2046, file: !2047, line: 447, baseType: !818, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2046, file: !2047, line: 448, baseType: !818, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2046, file: !2047, line: 459, baseType: !2075, size: 256, offset: 448)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2076, size: 256, elements: !252)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2047, line: 428, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2046, file: !2047, line: 461, baseType: !818, size: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2046, file: !2047, line: 463, baseType: !818, size: 64, offset: 768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2046, file: !2047, line: 465, baseType: !818, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2046, file: !2047, line: 466, baseType: !818, size: 64, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2046, file: !2047, line: 467, baseType: !818, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2046, file: !2047, line: 473, baseType: !2084, size: 64, offset: 1024)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2047, line: 10, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2046, file: !2047, line: 480, baseType: !818, size: 64, offset: 1088)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2046, file: !2047, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2046, file: !2047, line: 491, baseType: !93, size: 32, offset: 1184)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2046, file: !2047, line: 501, baseType: !2090, size: 33792, offset: 1536)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2091, line: 448, size: 33792, elements: !2092)
!2091 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2092 = !{!2093, !2094, !2095, !2261, !2262, !2268, !2269}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2090, file: !2091, line: 461, baseType: !7, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2090, file: !2091, line: 468, baseType: !818, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2090, file: !2091, line: 476, baseType: !2096, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2091, line: 356, size: 33280, align: 512, elements: !2098)
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2097, file: !2091, line: 358, baseType: !7, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2097, file: !2091, line: 361, baseType: !7, size: 32, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2097, file: !2091, line: 364, baseType: !78, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2097, file: !2091, line: 367, baseType: !78, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2097, file: !2091, line: 370, baseType: !78, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2097, file: !2091, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2097, file: !2091, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2097, file: !2091, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2097, file: !2091, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2097, file: !2091, line: 397, baseType: !2109, size: 32768, offset: 512)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2091, line: 348, size: 32768, elements: !2110)
!2110 = !{!2111, !2124, !2165, !2242, !2257}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2109, file: !2091, line: 349, baseType: !2112, size: 896)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2091, line: 12, size: 896, elements: !2113)
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2123}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2112, file: !2091, line: 13, baseType: !93, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2112, file: !2091, line: 14, baseType: !93, size: 32, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2112, file: !2091, line: 15, baseType: !93, size: 32, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2112, file: !2091, line: 16, baseType: !93, size: 32, offset: 96)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2112, file: !2091, line: 17, baseType: !93, size: 32, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2112, file: !2091, line: 18, baseType: !93, size: 32, offset: 160)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2112, file: !2091, line: 19, baseType: !93, size: 32, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2112, file: !2091, line: 22, baseType: !2122, size: 640, offset: 224)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !273)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2112, file: !2091, line: 25, baseType: !93, size: 32, offset: 864)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2109, file: !2091, line: 350, baseType: !2125, size: 4096, align: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2091, line: 34, size: 4096, align: 128, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2146, !2147, !2148, !2152, !2156, !2160}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2125, file: !2091, line: 35, baseType: !61, size: 16)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2125, file: !2091, line: 36, baseType: !61, size: 16, offset: 16)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2125, file: !2091, line: 37, baseType: !61, size: 16, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2125, file: !2091, line: 38, baseType: !61, size: 16, offset: 48)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !2091, line: 39, baseType: !2132, size: 128, offset: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2125, file: !2091, line: 39, size: 128, elements: !2133)
!2133 = !{!2134, !2139}
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !2132, file: !2091, line: 40, baseType: !2135, size: 128)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2132, file: !2091, line: 40, size: 128, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2135, file: !2091, line: 41, baseType: !78, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2135, file: !2091, line: 42, baseType: !78, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2132, file: !2091, line: 44, baseType: !2140, size: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2132, file: !2091, line: 44, size: 128, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2140, file: !2091, line: 45, baseType: !93, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2140, file: !2091, line: 46, baseType: !93, size: 32, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2140, file: !2091, line: 47, baseType: !93, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2140, file: !2091, line: 48, baseType: !93, size: 32, offset: 96)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2125, file: !2091, line: 51, baseType: !93, size: 32, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2125, file: !2091, line: 52, baseType: !93, size: 32, offset: 224)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2125, file: !2091, line: 55, baseType: !2149, size: 1024, offset: 256)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1024, elements: !2150)
!2150 = !{!2151}
!2151 = !DISubrange(count: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2125, file: !2091, line: 58, baseType: !2153, size: 2048, offset: 1280)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2048, elements: !2154)
!2154 = !{!2155}
!2155 = !DISubrange(count: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2125, file: !2091, line: 60, baseType: !2157, size: 384, offset: 3328)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 384, elements: !2158)
!2158 = !{!2159}
!2159 = !DISubrange(count: 12)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !2091, line: 62, baseType: !2161, size: 384, offset: 3712)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2125, file: !2091, line: 62, size: 384, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2161, file: !2091, line: 63, baseType: !2157, size: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2161, file: !2091, line: 64, baseType: !2157, size: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2109, file: !2091, line: 351, baseType: !2166, size: 1088)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2091, line: 79, size: 1088, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2241}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2166, file: !2091, line: 80, baseType: !93, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2166, file: !2091, line: 81, baseType: !93, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2166, file: !2091, line: 82, baseType: !93, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2166, file: !2091, line: 83, baseType: !93, size: 32, offset: 96)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2166, file: !2091, line: 84, baseType: !93, size: 32, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2166, file: !2091, line: 85, baseType: !93, size: 32, offset: 160)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2166, file: !2091, line: 86, baseType: !93, size: 32, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2166, file: !2091, line: 88, baseType: !2122, size: 640, offset: 224)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2166, file: !2091, line: 89, baseType: !54, size: 8, offset: 864)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2166, file: !2091, line: 90, baseType: !54, size: 8, offset: 872)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2166, file: !2091, line: 91, baseType: !54, size: 8, offset: 880)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2166, file: !2091, line: 92, baseType: !54, size: 8, offset: 888)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2166, file: !2091, line: 93, baseType: !54, size: 8, offset: 896)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2166, file: !2091, line: 94, baseType: !54, size: 8, offset: 904)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2166, file: !2091, line: 95, baseType: !2183, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2185, line: 11, size: 128, elements: !2186)
!2185 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2184, file: !2185, line: 12, baseType: !1394, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2184, file: !2185, line: 13, baseType: !2189, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2191, line: 103, size: 1344, elements: !2192)
!2191 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2221, !2222, !2223}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2190, file: !2191, line: 109, baseType: !818, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2190, file: !2191, line: 110, baseType: !818, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2190, file: !2191, line: 111, baseType: !818, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2190, file: !2191, line: 112, baseType: !818, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2190, file: !2191, line: 113, baseType: !818, size: 64, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2190, file: !2191, line: 114, baseType: !818, size: 64, offset: 320)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2190, file: !2191, line: 117, baseType: !818, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2190, file: !2191, line: 118, baseType: !818, size: 64, offset: 448)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2190, file: !2191, line: 119, baseType: !818, size: 64, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2190, file: !2191, line: 120, baseType: !818, size: 64, offset: 576)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2190, file: !2191, line: 121, baseType: !818, size: 64, offset: 640)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2190, file: !2191, line: 122, baseType: !818, size: 64, offset: 704)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2190, file: !2191, line: 123, baseType: !818, size: 64, offset: 768)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2190, file: !2191, line: 124, baseType: !818, size: 64, offset: 832)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2190, file: !2191, line: 125, baseType: !818, size: 64, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2190, file: !2191, line: 139, baseType: !818, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2190, file: !2191, line: 142, baseType: !818, size: 64, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !2191, line: 144, baseType: !2211, size: 64, offset: 1088)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !2191, line: 144, size: 64, elements: !2212)
!2212 = !{!2213, !2214, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2211, file: !2191, line: 146, baseType: !61, size: 16)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2211, file: !2191, line: 148, baseType: !78, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2211, file: !2191, line: 150, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2191, line: 59, size: 64, elements: !2217)
!2217 = !{!2218, !2219, !2220}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2216, file: !2191, line: 61, baseType: !78, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2216, file: !2191, line: 63, baseType: !78, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2216, file: !2191, line: 65, baseType: !78, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !2191, line: 153, baseType: !818, size: 64, offset: 1152)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2190, file: !2191, line: 154, baseType: !818, size: 64, offset: 1216)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !2191, line: 156, baseType: !2224, size: 64, offset: 1280)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !2191, line: 156, size: 64, elements: !2225)
!2225 = !{!2226, !2227, !2228}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2224, file: !2191, line: 158, baseType: !61, size: 16)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2224, file: !2191, line: 160, baseType: !78, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2224, file: !2191, line: 162, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2191, line: 69, size: 64, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2229, file: !2191, line: 71, baseType: !78, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2229, file: !2191, line: 73, baseType: !78, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2229, file: !2191, line: 75, baseType: !78, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2229, file: !2191, line: 77, baseType: !78, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2229, file: !2191, line: 80, baseType: !78, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2229, file: !2191, line: 83, baseType: !78, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2229, file: !2191, line: 86, baseType: !78, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2229, file: !2191, line: 88, baseType: !78, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2229, file: !2191, line: 93, baseType: !78, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2229, file: !2191, line: 100, baseType: !78, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2166, file: !2091, line: 96, baseType: !93, size: 32, offset: 1024)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2109, file: !2091, line: 352, baseType: !2243, size: 4608, align: 512)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2091, line: 333, size: 4608, align: 512, elements: !2244)
!2244 = !{!2245, !2246, !2255}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2243, file: !2091, line: 334, baseType: !2125, size: 4096, align: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2243, file: !2091, line: 335, baseType: !2247, size: 512, offset: 4096)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2091, line: 312, size: 512, elements: !2248)
!2248 = !{!2249, !2250, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2247, file: !2091, line: 313, baseType: !78, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2247, file: !2091, line: 314, baseType: !78, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2247, file: !2091, line: 315, baseType: !2252, size: 384, offset: 128)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 384, elements: !2253)
!2253 = !{!2254}
!2254 = !DISubrange(count: 6)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2243, file: !2091, line: 336, baseType: !2256, offset: 4608)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, elements: !1362)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2109, file: !2091, line: 353, baseType: !2258, size: 32768)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32768, elements: !2259)
!2259 = !{!2260}
!2260 = !DISubrange(count: 4096)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2090, file: !2091, line: 484, baseType: !2096, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2090, file: !2091, line: 491, baseType: !2263, size: 128, offset: 256)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2091, line: 404, size: 128, elements: !2264)
!2264 = !{!2265, !2266, !2267}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2263, file: !2091, line: 424, baseType: !78, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2263, file: !2091, line: 432, baseType: !7, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2263, file: !2091, line: 440, baseType: !7, size: 32, offset: 96)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2090, file: !2091, line: 498, baseType: !2263, size: 128, offset: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2090, file: !2091, line: 508, baseType: !2097, size: 33280, align: 512, offset: 512)
!2270 = !{!2271, !2273, !2275, !2277, !2279, !2281, !2286, !2288, !2293, !2295, !2297, !2299, !2301, !2303, !0, !2305, !2310}
!2271 = !DIGlobalVariableExpression(var: !2272, expr: !DIExpression())
!2272 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_notify_handler174", scope: !2, file: !3, line: 192, type: !132, isLocal: true, isDefinition: true)
!2273 = !DIGlobalVariableExpression(var: !2274, expr: !DIExpression())
!2274 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_remove_notify_handler175", scope: !2, file: !3, line: 331, type: !132, isLocal: true, isDefinition: true)
!2275 = !DIGlobalVariableExpression(var: !2276, expr: !DIExpression())
!2276 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_sci_handler176", scope: !2, file: !3, line: 450, type: !132, isLocal: true, isDefinition: true)
!2277 = !DIGlobalVariableExpression(var: !2278, expr: !DIExpression())
!2278 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_remove_sci_handler177", scope: !2, file: !3, line: 516, type: !132, isLocal: true, isDefinition: true)
!2279 = !DIGlobalVariableExpression(var: !2280, expr: !DIExpression())
!2280 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_global_event_handler178", scope: !2, file: !3, line: 566, type: !132, isLocal: true, isDefinition: true)
!2281 = !DIGlobalVariableExpression(var: !2282, expr: !DIExpression())
!2282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 618, type: !2283, isLocal: true, isDefinition: true)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 312, elements: !2284)
!2284 = !{!2285}
!2285 = !DISubrange(count: 39)
!2286 = !DIGlobalVariableExpression(var: !2287, expr: !DIExpression())
!2287 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_fixed_event_handler179", scope: !2, file: !3, line: 638, type: !132, isLocal: true, isDefinition: true)
!2288 = !DIGlobalVariableExpression(var: !2289, expr: !DIExpression())
!2289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 680, type: !2290, isLocal: true, isDefinition: true)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 320, elements: !2291)
!2291 = !{!2292}
!2292 = !DISubrange(count: 40)
!2293 = !DIGlobalVariableExpression(var: !2294, expr: !DIExpression())
!2294 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_remove_fixed_event_handler180", scope: !2, file: !3, line: 693, type: !132, isLocal: true, isDefinition: true)
!2295 = !DIGlobalVariableExpression(var: !2296, expr: !DIExpression())
!2296 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_gpe_handler181", scope: !2, file: !3, line: 854, type: !132, isLocal: true, isDefinition: true)
!2297 = !DIGlobalVariableExpression(var: !2298, expr: !DIExpression())
!2298 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_gpe_raw_handler182", scope: !2, file: !3, line: 888, type: !132, isLocal: true, isDefinition: true)
!2299 = !DIGlobalVariableExpression(var: !2300, expr: !DIExpression())
!2300 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_remove_gpe_handler183", scope: !2, file: !3, line: 1005, type: !132, isLocal: true, isDefinition: true)
!2301 = !DIGlobalVariableExpression(var: !2302, expr: !DIExpression())
!2302 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_acquire_global_lock184", scope: !2, file: !3, line: 1053, type: !132, isLocal: true, isDefinition: true)
!2303 = !DIGlobalVariableExpression(var: !2304, expr: !DIExpression())
!2304 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_release_global_lock185", scope: !2, file: !3, line: 1078, type: !132, isLocal: true, isDefinition: true)
!2305 = !DIGlobalVariableExpression(var: !2306, expr: !DIExpression())
!2306 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !2307, isLocal: true, isDefinition: true)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 168, elements: !2308)
!2308 = !{!2309}
!2309 = !DISubrange(count: 21)
!2310 = !DIGlobalVariableExpression(var: !2311, expr: !DIExpression())
!2311 = distinct !DIGlobalVariable(scope: null, file: !3, line: 791, type: !2312, isLocal: true, isDefinition: true)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 248, elements: !2313)
!2313 = !{!2314}
!2314 = !DISubrange(count: 31)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2316, size: 64, elements: !368)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!2317 = !{i32 7, !"Dwarf Version", i32 5}
!2318 = !{i32 2, !"Debug Info Version", i32 3}
!2319 = !{i32 1, !"wchar_size", i32 2}
!2320 = !{i32 8, !"cf-protection-branch", i32 1}
!2321 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2322 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2323 = !{i32 1, !"Code Model", i32 2}
!2324 = !{i32 1, !"override-stack-alignment", i32 8}
!2325 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2326 = distinct !DISubprogram(name: "acpi_install_notify_handler", scope: !3, file: !3, line: 57, type: !2327, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!155, !390, !93, !386, !132}
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339}
!2330 = !DILocalVariable(name: "device", arg: 1, scope: !2326, file: !3, line: 57, type: !390)
!2331 = !DILocalVariable(name: "handler_type", arg: 2, scope: !2326, file: !3, line: 58, type: !93)
!2332 = !DILocalVariable(name: "handler", arg: 3, scope: !2326, file: !3, line: 59, type: !386)
!2333 = !DILocalVariable(name: "context", arg: 4, scope: !2326, file: !3, line: 59, type: !132)
!2334 = !DILocalVariable(name: "node", scope: !2326, file: !3, line: 61, type: !40)
!2335 = !DILocalVariable(name: "obj_desc", scope: !2326, file: !3, line: 63, type: !45)
!2336 = !DILocalVariable(name: "handler_obj", scope: !2326, file: !3, line: 64, type: !45)
!2337 = !DILocalVariable(name: "status", scope: !2326, file: !3, line: 65, type: !155)
!2338 = !DILocalVariable(name: "i", scope: !2326, file: !3, line: 66, type: !93)
!2339 = !DILabel(scope: !2326, name: "unlock_and_exit", file: !3, line: 187)
!2340 = !DILocation(line: 57, column: 41, scope: !2326)
!2341 = !DILocation(line: 58, column: 12, scope: !2326)
!2342 = !DILocation(line: 59, column: 28, scope: !2326)
!2343 = !DILocation(line: 59, column: 43, scope: !2326)
!2344 = !DILocation(line: 61, column: 2, scope: !2326)
!2345 = !DILocation(line: 61, column: 30, scope: !2326)
!2346 = !DILocation(line: 62, column: 6, scope: !2326)
!2347 = !DILocation(line: 63, column: 2, scope: !2326)
!2348 = !DILocation(line: 63, column: 29, scope: !2326)
!2349 = !DILocation(line: 64, column: 2, scope: !2326)
!2350 = !DILocation(line: 64, column: 29, scope: !2326)
!2351 = !DILocation(line: 65, column: 2, scope: !2326)
!2352 = !DILocation(line: 65, column: 14, scope: !2326)
!2353 = !DILocation(line: 66, column: 2, scope: !2326)
!2354 = !DILocation(line: 66, column: 6, scope: !2326)
!2355 = !DILocation(line: 72, column: 8, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 72, column: 6)
!2357 = !DILocation(line: 72, column: 16, scope: !2356)
!2358 = !DILocation(line: 72, column: 21, scope: !2356)
!2359 = !DILocation(line: 72, column: 30, scope: !2356)
!2360 = !DILocation(line: 72, column: 35, scope: !2356)
!2361 = !DILocation(line: 72, column: 49, scope: !2356)
!2362 = !DILocation(line: 73, column: 7, scope: !2356)
!2363 = !DILocation(line: 73, column: 20, scope: !2356)
!2364 = !DILocation(line: 72, column: 6, scope: !2326)
!2365 = !DILocation(line: 74, column: 3, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 73, column: 53)
!2367 = !DILocation(line: 77, column: 11, scope: !2326)
!2368 = !DILocation(line: 77, column: 9, scope: !2326)
!2369 = !DILocation(line: 78, column: 6, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 78, column: 6)
!2371 = !DILocation(line: 78, column: 6, scope: !2326)
!2372 = !DILocation(line: 79, column: 3, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 78, column: 28)
!2374 = !DILocation(line: 89, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 89, column: 6)
!2376 = !DILocation(line: 89, column: 13, scope: !2375)
!2377 = !DILocation(line: 89, column: 6, scope: !2326)
!2378 = !DILocation(line: 90, column: 10, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 90, column: 3)
!2380 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 89, column: 34)
!2381 = !DILocation(line: 90, column: 8, scope: !2379)
!2382 = !DILocation(line: 90, column: 15, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 90, column: 3)
!2384 = !DILocation(line: 90, column: 17, scope: !2383)
!2385 = !DILocation(line: 90, column: 3, scope: !2379)
!2386 = !DILocation(line: 91, column: 8, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 91, column: 8)
!2388 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 90, column: 47)
!2389 = !DILocation(line: 91, column: 24, scope: !2387)
!2390 = !DILocation(line: 91, column: 26, scope: !2387)
!2391 = !DILocation(line: 91, column: 21, scope: !2387)
!2392 = !DILocation(line: 91, column: 8, scope: !2388)
!2393 = !DILocation(line: 92, column: 32, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 92, column: 9)
!2395 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 91, column: 32)
!2396 = !DILocation(line: 92, column: 9, scope: !2394)
!2397 = !DILocation(line: 92, column: 35, scope: !2394)
!2398 = !DILocation(line: 92, column: 9, scope: !2395)
!2399 = !DILocation(line: 93, column: 13, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 92, column: 44)
!2401 = !DILocation(line: 94, column: 6, scope: !2400)
!2402 = !DILocation(line: 97, column: 41, scope: !2395)
!2403 = !DILocation(line: 97, column: 28, scope: !2395)
!2404 = !DILocation(line: 97, column: 5, scope: !2395)
!2405 = !DILocation(line: 97, column: 31, scope: !2395)
!2406 = !DILocation(line: 97, column: 39, scope: !2395)
!2407 = !DILocation(line: 98, column: 41, scope: !2395)
!2408 = !DILocation(line: 98, column: 28, scope: !2395)
!2409 = !DILocation(line: 98, column: 5, scope: !2395)
!2410 = !DILocation(line: 98, column: 31, scope: !2395)
!2411 = !DILocation(line: 98, column: 39, scope: !2395)
!2412 = !DILocation(line: 99, column: 4, scope: !2395)
!2413 = !DILocation(line: 100, column: 3, scope: !2388)
!2414 = !DILocation(line: 90, column: 43, scope: !2383)
!2415 = !DILocation(line: 90, column: 3, scope: !2383)
!2416 = distinct !{!2416, !2385, !2417, !2418, !2419}
!2417 = !DILocation(line: 100, column: 3, scope: !2379)
!2418 = !{!"llvm.loop.mustprogress"}
!2419 = !{!"llvm.loop.unroll.disable"}
!2420 = !DILocation(line: 102, column: 3, scope: !2380)
!2421 = !DILocation(line: 114, column: 32, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 114, column: 6)
!2423 = !DILocation(line: 114, column: 7, scope: !2422)
!2424 = !DILocation(line: 114, column: 6, scope: !2326)
!2425 = !DILocation(line: 115, column: 10, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 114, column: 39)
!2427 = !DILocation(line: 116, column: 3, scope: !2426)
!2428 = !DILocation(line: 121, column: 41, scope: !2326)
!2429 = !DILocation(line: 121, column: 13, scope: !2326)
!2430 = !DILocation(line: 121, column: 11, scope: !2326)
!2431 = !DILocation(line: 122, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 122, column: 6)
!2433 = !DILocation(line: 122, column: 6, scope: !2326)
!2434 = !DILocation(line: 126, column: 14, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 122, column: 17)
!2436 = !DILocation(line: 126, column: 12, scope: !2435)
!2437 = !DILocation(line: 127, column: 8, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 127, column: 7)
!2439 = !DILocation(line: 127, column: 7, scope: !2435)
!2440 = !DILocation(line: 128, column: 11, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 127, column: 18)
!2442 = !DILocation(line: 129, column: 4, scope: !2441)
!2443 = !DILocation(line: 134, column: 34, scope: !2435)
!2444 = !DILocation(line: 134, column: 42, scope: !2435)
!2445 = !DILocation(line: 134, column: 52, scope: !2435)
!2446 = !DILocation(line: 134, column: 58, scope: !2435)
!2447 = !DILocation(line: 134, column: 12, scope: !2435)
!2448 = !DILocation(line: 134, column: 10, scope: !2435)
!2449 = !DILocation(line: 135, column: 28, scope: !2435)
!2450 = !DILocation(line: 135, column: 3, scope: !2435)
!2451 = !DILocation(line: 136, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 136, column: 7)
!2453 = !DILocation(line: 136, column: 7, scope: !2435)
!2454 = !DILocation(line: 137, column: 4, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 136, column: 29)
!2456 = !DILocation(line: 139, column: 2, scope: !2435)
!2457 = !DILocation(line: 143, column: 9, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 143, column: 2)
!2459 = !DILocation(line: 143, column: 7, scope: !2458)
!2460 = !DILocation(line: 143, column: 14, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 143, column: 2)
!2462 = !DILocation(line: 143, column: 16, scope: !2461)
!2463 = !DILocation(line: 143, column: 2, scope: !2458)
!2464 = !DILocation(line: 144, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 144, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 143, column: 46)
!2467 = !DILocation(line: 144, column: 23, scope: !2465)
!2468 = !DILocation(line: 144, column: 25, scope: !2465)
!2469 = !DILocation(line: 144, column: 20, scope: !2465)
!2470 = !DILocation(line: 144, column: 7, scope: !2466)
!2471 = !DILocation(line: 145, column: 18, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 144, column: 31)
!2473 = !DILocation(line: 145, column: 42, scope: !2472)
!2474 = !DILocation(line: 145, column: 54, scope: !2472)
!2475 = !DILocation(line: 145, column: 16, scope: !2472)
!2476 = !DILocation(line: 146, column: 4, scope: !2472)
!2477 = !DILocation(line: 146, column: 11, scope: !2472)
!2478 = !DILocation(line: 147, column: 9, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 147, column: 9)
!2480 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 146, column: 24)
!2481 = !DILocation(line: 147, column: 29, scope: !2479)
!2482 = !DILocation(line: 147, column: 40, scope: !2479)
!2483 = !DILocation(line: 147, column: 37, scope: !2479)
!2484 = !DILocation(line: 147, column: 9, scope: !2480)
!2485 = !DILocation(line: 148, column: 13, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 147, column: 49)
!2487 = !DILocation(line: 149, column: 6, scope: !2486)
!2488 = !DILocation(line: 152, column: 19, scope: !2480)
!2489 = !DILocation(line: 152, column: 39, scope: !2480)
!2490 = !DILocation(line: 152, column: 44, scope: !2480)
!2491 = !DILocation(line: 152, column: 17, scope: !2480)
!2492 = distinct !{!2492, !2476, !2493, !2418, !2419}
!2493 = !DILocation(line: 153, column: 4, scope: !2472)
!2494 = !DILocation(line: 154, column: 3, scope: !2472)
!2495 = !DILocation(line: 155, column: 2, scope: !2466)
!2496 = !DILocation(line: 143, column: 42, scope: !2461)
!2497 = !DILocation(line: 143, column: 2, scope: !2461)
!2498 = distinct !{!2498, !2463, !2499, !2418, !2419}
!2499 = !DILocation(line: 155, column: 2, scope: !2458)
!2500 = !DILocation(line: 159, column: 16, scope: !2326)
!2501 = !DILocation(line: 159, column: 14, scope: !2326)
!2502 = !DILocation(line: 160, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 160, column: 6)
!2504 = !DILocation(line: 160, column: 6, scope: !2326)
!2505 = !DILocation(line: 161, column: 10, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 160, column: 20)
!2507 = !DILocation(line: 162, column: 3, scope: !2506)
!2508 = !DILocation(line: 165, column: 29, scope: !2326)
!2509 = !DILocation(line: 165, column: 2, scope: !2326)
!2510 = !DILocation(line: 165, column: 22, scope: !2326)
!2511 = !DILocation(line: 165, column: 27, scope: !2326)
!2512 = !DILocation(line: 166, column: 37, scope: !2326)
!2513 = !DILocation(line: 166, column: 2, scope: !2326)
!2514 = !DILocation(line: 166, column: 22, scope: !2326)
!2515 = !DILocation(line: 166, column: 35, scope: !2326)
!2516 = !DILocation(line: 167, column: 32, scope: !2326)
!2517 = !DILocation(line: 167, column: 2, scope: !2326)
!2518 = !DILocation(line: 167, column: 22, scope: !2326)
!2519 = !DILocation(line: 167, column: 30, scope: !2326)
!2520 = !DILocation(line: 168, column: 32, scope: !2326)
!2521 = !DILocation(line: 168, column: 2, scope: !2326)
!2522 = !DILocation(line: 168, column: 22, scope: !2326)
!2523 = !DILocation(line: 168, column: 30, scope: !2326)
!2524 = !DILocation(line: 172, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 172, column: 2)
!2526 = !DILocation(line: 172, column: 7, scope: !2525)
!2527 = !DILocation(line: 172, column: 14, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 172, column: 2)
!2529 = !DILocation(line: 172, column: 16, scope: !2528)
!2530 = !DILocation(line: 172, column: 2, scope: !2525)
!2531 = !DILocation(line: 173, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 173, column: 7)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 172, column: 46)
!2534 = !DILocation(line: 173, column: 23, scope: !2532)
!2535 = !DILocation(line: 173, column: 25, scope: !2532)
!2536 = !DILocation(line: 173, column: 20, scope: !2532)
!2537 = !DILocation(line: 173, column: 7, scope: !2533)
!2538 = !DILocation(line: 175, column: 8, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 173, column: 31)
!2540 = !DILocation(line: 175, column: 32, scope: !2539)
!2541 = !DILocation(line: 175, column: 44, scope: !2539)
!2542 = !DILocation(line: 174, column: 4, scope: !2539)
!2543 = !DILocation(line: 174, column: 24, scope: !2539)
!2544 = !DILocation(line: 174, column: 29, scope: !2539)
!2545 = !DILocation(line: 174, column: 32, scope: !2539)
!2546 = !DILocation(line: 177, column: 45, scope: !2539)
!2547 = !DILocation(line: 177, column: 4, scope: !2539)
!2548 = !DILocation(line: 177, column: 28, scope: !2539)
!2549 = !DILocation(line: 177, column: 40, scope: !2539)
!2550 = !DILocation(line: 177, column: 43, scope: !2539)
!2551 = !DILocation(line: 178, column: 3, scope: !2539)
!2552 = !DILocation(line: 179, column: 2, scope: !2533)
!2553 = !DILocation(line: 172, column: 42, scope: !2528)
!2554 = !DILocation(line: 172, column: 2, scope: !2528)
!2555 = distinct !{!2555, !2530, !2556, !2418, !2419}
!2556 = !DILocation(line: 179, column: 2, scope: !2525)
!2557 = !DILocation(line: 183, column: 6, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 183, column: 6)
!2559 = !DILocation(line: 183, column: 19, scope: !2558)
!2560 = !DILocation(line: 183, column: 6, scope: !2326)
!2561 = !DILocation(line: 184, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 183, column: 39)
!2563 = !DILocation(line: 184, column: 3, scope: !2562)
!2564 = !DILocation(line: 185, column: 2, scope: !2562)
!2565 = !DILocation(line: 183, column: 22, scope: !2558)
!2566 = !DILocation(line: 187, column: 1, scope: !2326)
!2567 = !DILocation(line: 188, column: 8, scope: !2326)
!2568 = !DILocation(line: 189, column: 2, scope: !2326)
!2569 = !DILocation(line: 190, column: 1, scope: !2326)
!2570 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !2571, file: !2571, line: 646, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2571 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!155, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !42, line: 17, baseType: !93)
!2575 = !DISubprogram(name: "acpi_ev_is_notify_object", scope: !2576, file: !2576, line: 39, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2576 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!54, !40}
!2579 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !2580, file: !2580, line: 298, type: !2581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2580 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!45, !40}
!2583 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !2571, file: !2571, line: 436, type: !2584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!45, !2586, !93, !93, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !156, line: 644, baseType: !93)
!2588 = !DISubprogram(name: "acpi_ns_attach_object", scope: !2580, file: !2580, line: 295, type: !2589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!155, !40, !45, !2587}
!2591 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !2571, file: !2571, line: 369, type: !2592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !45}
!2594 = !DISubprogram(name: "acpi_ut_add_reference", scope: !2571, file: !2571, line: 367, type: !2592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2595 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !2571, file: !2571, line: 648, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2596 = distinct !DISubprogram(name: "acpi_remove_notify_handler", scope: !3, file: !3, line: 211, type: !2597, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!155, !390, !93, !386}
!2599 = !{!2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609}
!2600 = !DILocalVariable(name: "device", arg: 1, scope: !2596, file: !3, line: 211, type: !390)
!2601 = !DILocalVariable(name: "handler_type", arg: 2, scope: !2596, file: !3, line: 212, type: !93)
!2602 = !DILocalVariable(name: "handler", arg: 3, scope: !2596, file: !3, line: 212, type: !386)
!2603 = !DILocalVariable(name: "node", scope: !2596, file: !3, line: 214, type: !40)
!2604 = !DILocalVariable(name: "obj_desc", scope: !2596, file: !3, line: 216, type: !45)
!2605 = !DILocalVariable(name: "handler_obj", scope: !2596, file: !3, line: 217, type: !45)
!2606 = !DILocalVariable(name: "previous_handler_obj", scope: !2596, file: !3, line: 218, type: !45)
!2607 = !DILocalVariable(name: "status", scope: !2596, file: !3, line: 219, type: !155)
!2608 = !DILocalVariable(name: "i", scope: !2596, file: !3, line: 220, type: !93)
!2609 = !DILabel(scope: !2596, name: "unlock_and_exit", file: !3, line: 326)
!2610 = !DILocation(line: 211, column: 40, scope: !2596)
!2611 = !DILocation(line: 212, column: 11, scope: !2596)
!2612 = !DILocation(line: 212, column: 45, scope: !2596)
!2613 = !DILocation(line: 214, column: 2, scope: !2596)
!2614 = !DILocation(line: 214, column: 30, scope: !2596)
!2615 = !DILocation(line: 215, column: 6, scope: !2596)
!2616 = !DILocation(line: 216, column: 2, scope: !2596)
!2617 = !DILocation(line: 216, column: 29, scope: !2596)
!2618 = !DILocation(line: 217, column: 2, scope: !2596)
!2619 = !DILocation(line: 217, column: 29, scope: !2596)
!2620 = !DILocation(line: 218, column: 2, scope: !2596)
!2621 = !DILocation(line: 218, column: 29, scope: !2596)
!2622 = !DILocation(line: 219, column: 2, scope: !2596)
!2623 = !DILocation(line: 219, column: 14, scope: !2596)
!2624 = !DILocation(line: 220, column: 2, scope: !2596)
!2625 = !DILocation(line: 220, column: 6, scope: !2596)
!2626 = !DILocation(line: 226, column: 8, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 226, column: 6)
!2628 = !DILocation(line: 226, column: 16, scope: !2627)
!2629 = !DILocation(line: 226, column: 21, scope: !2627)
!2630 = !DILocation(line: 226, column: 30, scope: !2627)
!2631 = !DILocation(line: 226, column: 35, scope: !2627)
!2632 = !DILocation(line: 226, column: 49, scope: !2627)
!2633 = !DILocation(line: 227, column: 7, scope: !2627)
!2634 = !DILocation(line: 227, column: 20, scope: !2627)
!2635 = !DILocation(line: 226, column: 6, scope: !2596)
!2636 = !DILocation(line: 228, column: 3, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 227, column: 53)
!2638 = !DILocation(line: 233, column: 6, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 233, column: 6)
!2640 = !DILocation(line: 233, column: 13, scope: !2639)
!2641 = !DILocation(line: 233, column: 6, scope: !2596)
!2642 = !DILocation(line: 234, column: 10, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 234, column: 3)
!2644 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 233, column: 34)
!2645 = !DILocation(line: 234, column: 8, scope: !2643)
!2646 = !DILocation(line: 234, column: 15, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 234, column: 3)
!2648 = !DILocation(line: 234, column: 17, scope: !2647)
!2649 = !DILocation(line: 234, column: 3, scope: !2643)
!2650 = !DILocation(line: 235, column: 8, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 235, column: 8)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 234, column: 47)
!2653 = !DILocation(line: 235, column: 24, scope: !2651)
!2654 = !DILocation(line: 235, column: 26, scope: !2651)
!2655 = !DILocation(line: 235, column: 21, scope: !2651)
!2656 = !DILocation(line: 235, column: 8, scope: !2652)
!2657 = !DILocation(line: 237, column: 9, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 235, column: 32)
!2659 = !DILocation(line: 236, column: 12, scope: !2658)
!2660 = !DILocation(line: 238, column: 9, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 238, column: 9)
!2662 = !DILocation(line: 238, column: 9, scope: !2658)
!2663 = !DILocation(line: 239, column: 6, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 238, column: 31)
!2665 = !DILocation(line: 242, column: 33, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 242, column: 9)
!2667 = !DILocation(line: 242, column: 10, scope: !2666)
!2668 = !DILocation(line: 242, column: 36, scope: !2666)
!2669 = !DILocation(line: 242, column: 44, scope: !2666)
!2670 = !DILocation(line: 243, column: 33, scope: !2666)
!2671 = !DILocation(line: 243, column: 10, scope: !2666)
!2672 = !DILocation(line: 243, column: 36, scope: !2666)
!2673 = !DILocation(line: 244, column: 10, scope: !2666)
!2674 = !DILocation(line: 243, column: 44, scope: !2666)
!2675 = !DILocation(line: 242, column: 9, scope: !2658)
!2676 = !DILocation(line: 245, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 244, column: 20)
!2678 = !DILocation(line: 246, column: 6, scope: !2677)
!2679 = !DILocation(line: 252, column: 28, scope: !2658)
!2680 = !DILocation(line: 252, column: 5, scope: !2658)
!2681 = !DILocation(line: 252, column: 31, scope: !2658)
!2682 = !DILocation(line: 252, column: 39, scope: !2658)
!2683 = !DILocation(line: 253, column: 28, scope: !2658)
!2684 = !DILocation(line: 253, column: 5, scope: !2658)
!2685 = !DILocation(line: 253, column: 31, scope: !2658)
!2686 = !DILocation(line: 253, column: 39, scope: !2658)
!2687 = !DILocation(line: 255, column: 11, scope: !2658)
!2688 = !DILocation(line: 259, column: 5, scope: !2658)
!2689 = !DILocation(line: 260, column: 4, scope: !2658)
!2690 = !DILocation(line: 261, column: 3, scope: !2652)
!2691 = !DILocation(line: 234, column: 43, scope: !2647)
!2692 = !DILocation(line: 234, column: 3, scope: !2647)
!2693 = distinct !{!2693, !2649, !2694, !2418, !2419}
!2694 = !DILocation(line: 261, column: 3, scope: !2643)
!2695 = !DILocation(line: 263, column: 3, scope: !2644)
!2696 = !DILocation(line: 268, column: 32, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 268, column: 6)
!2698 = !DILocation(line: 268, column: 7, scope: !2697)
!2699 = !DILocation(line: 268, column: 6, scope: !2596)
!2700 = !DILocation(line: 269, column: 3, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 268, column: 39)
!2702 = !DILocation(line: 274, column: 41, scope: !2596)
!2703 = !DILocation(line: 274, column: 13, scope: !2596)
!2704 = !DILocation(line: 274, column: 11, scope: !2596)
!2705 = !DILocation(line: 275, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 275, column: 6)
!2707 = !DILocation(line: 275, column: 6, scope: !2596)
!2708 = !DILocation(line: 276, column: 3, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 275, column: 17)
!2710 = !DILocation(line: 281, column: 9, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 281, column: 2)
!2712 = !DILocation(line: 281, column: 7, scope: !2711)
!2713 = !DILocation(line: 281, column: 14, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 281, column: 2)
!2715 = !DILocation(line: 281, column: 16, scope: !2714)
!2716 = !DILocation(line: 281, column: 2, scope: !2711)
!2717 = !DILocation(line: 282, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 282, column: 7)
!2719 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 281, column: 46)
!2720 = !DILocation(line: 282, column: 23, scope: !2718)
!2721 = !DILocation(line: 282, column: 25, scope: !2718)
!2722 = !DILocation(line: 282, column: 20, scope: !2718)
!2723 = !DILocation(line: 282, column: 7, scope: !2719)
!2724 = !DILocation(line: 283, column: 13, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 282, column: 31)
!2726 = !DILocation(line: 283, column: 11, scope: !2725)
!2727 = !DILocation(line: 284, column: 8, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 284, column: 8)
!2729 = !DILocation(line: 284, column: 8, scope: !2725)
!2730 = !DILocation(line: 285, column: 5, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 284, column: 30)
!2732 = !DILocation(line: 288, column: 18, scope: !2725)
!2733 = !DILocation(line: 288, column: 42, scope: !2725)
!2734 = !DILocation(line: 288, column: 54, scope: !2725)
!2735 = !DILocation(line: 288, column: 16, scope: !2725)
!2736 = !DILocation(line: 289, column: 25, scope: !2725)
!2737 = !DILocation(line: 293, column: 4, scope: !2725)
!2738 = !DILocation(line: 293, column: 11, scope: !2725)
!2739 = !DILocation(line: 293, column: 23, scope: !2725)
!2740 = !DILocation(line: 294, column: 12, scope: !2725)
!2741 = !DILocation(line: 294, column: 32, scope: !2725)
!2742 = !DILocation(line: 294, column: 43, scope: !2725)
!2743 = !DILocation(line: 294, column: 40, scope: !2725)
!2744 = !DILocation(line: 0, scope: !2725)
!2745 = !DILocation(line: 295, column: 28, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 294, column: 53)
!2747 = !DILocation(line: 295, column: 26, scope: !2746)
!2748 = !DILocation(line: 296, column: 19, scope: !2746)
!2749 = !DILocation(line: 296, column: 39, scope: !2746)
!2750 = !DILocation(line: 296, column: 44, scope: !2746)
!2751 = !DILocation(line: 296, column: 17, scope: !2746)
!2752 = distinct !{!2752, !2737, !2753, !2418, !2419}
!2753 = !DILocation(line: 297, column: 4, scope: !2725)
!2754 = !DILocation(line: 299, column: 9, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 299, column: 8)
!2756 = !DILocation(line: 299, column: 8, scope: !2725)
!2757 = !DILocation(line: 300, column: 12, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 299, column: 22)
!2759 = !DILocation(line: 301, column: 5, scope: !2758)
!2760 = !DILocation(line: 306, column: 8, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 306, column: 8)
!2762 = !DILocation(line: 306, column: 8, scope: !2725)
!2763 = !DILocation(line: 308, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 306, column: 30)
!2765 = !DILocation(line: 308, column: 29, scope: !2764)
!2766 = !DILocation(line: 308, column: 34, scope: !2764)
!2767 = !DILocation(line: 307, column: 5, scope: !2764)
!2768 = !DILocation(line: 307, column: 34, scope: !2764)
!2769 = !DILocation(line: 307, column: 39, scope: !2764)
!2770 = !DILocation(line: 307, column: 42, scope: !2764)
!2771 = !DILocation(line: 309, column: 4, scope: !2764)
!2772 = !DILocation(line: 312, column: 9, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 309, column: 11)
!2774 = !DILocation(line: 312, column: 29, scope: !2773)
!2775 = !DILocation(line: 312, column: 34, scope: !2773)
!2776 = !DILocation(line: 311, column: 5, scope: !2773)
!2777 = !DILocation(line: 311, column: 29, scope: !2773)
!2778 = !DILocation(line: 311, column: 41, scope: !2773)
!2779 = !DILocation(line: 311, column: 44, scope: !2773)
!2780 = !DILocation(line: 315, column: 10, scope: !2725)
!2781 = !DILocation(line: 319, column: 4, scope: !2725)
!2782 = !DILocation(line: 320, column: 29, scope: !2725)
!2783 = !DILocation(line: 320, column: 4, scope: !2725)
!2784 = !DILocation(line: 321, column: 3, scope: !2725)
!2785 = !DILocation(line: 322, column: 2, scope: !2719)
!2786 = !DILocation(line: 281, column: 42, scope: !2714)
!2787 = !DILocation(line: 281, column: 2, scope: !2714)
!2788 = distinct !{!2788, !2716, !2789, !2418, !2419}
!2789 = !DILocation(line: 322, column: 2, scope: !2711)
!2790 = !DILocation(line: 324, column: 2, scope: !2596)
!2791 = !DILocation(line: 326, column: 1, scope: !2596)
!2792 = !DILocation(line: 327, column: 8, scope: !2596)
!2793 = !DILocation(line: 328, column: 2, scope: !2596)
!2794 = !DILocation(line: 329, column: 1, scope: !2596)
!2795 = !DISubprogram(name: "acpi_os_wait_events_complete", scope: !2796, file: !2796, line: 252, type: !2797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2796 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null}
!2799 = distinct !DISubprogram(name: "acpi_install_sci_handler", scope: !3, file: !3, line: 389, type: !2800, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!155, !2802, !132}
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_sci_handler", file: !156, line: 1044, baseType: !2803)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!93, !132}
!2806 = !{!2807, !2808, !2809, !2816, !2817, !2818, !2819, !2820}
!2807 = !DILocalVariable(name: "address", arg: 1, scope: !2799, file: !3, line: 389, type: !2802)
!2808 = !DILocalVariable(name: "context", arg: 2, scope: !2799, file: !3, line: 389, type: !132)
!2809 = !DILocalVariable(name: "new_sci_handler", scope: !2799, file: !3, line: 391, type: !2810)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_sci_handler_info", file: !42, line: 411, size: 192, elements: !2812)
!2812 = !{!2813, !2814, !2815}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2811, file: !42, line: 412, baseType: !2810, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2811, file: !42, line: 413, baseType: !2802, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2811, file: !42, line: 414, baseType: !132, size: 64, offset: 128)
!2816 = !DILocalVariable(name: "sci_handler", scope: !2799, file: !3, line: 392, type: !2810)
!2817 = !DILocalVariable(name: "flags", scope: !2799, file: !3, line: 393, type: !818)
!2818 = !DILocalVariable(name: "status", scope: !2799, file: !3, line: 394, type: !155)
!2819 = !DILabel(scope: !2799, name: "unlock_and_exit", file: !3, line: 438)
!2820 = !DILabel(scope: !2799, name: "exit", file: !3, line: 443)
!2821 = !DILocation(line: 389, column: 55, scope: !2799)
!2822 = !DILocation(line: 389, column: 70, scope: !2799)
!2823 = !DILocation(line: 391, column: 2, scope: !2799)
!2824 = !DILocation(line: 391, column: 32, scope: !2799)
!2825 = !DILocation(line: 392, column: 2, scope: !2799)
!2826 = !DILocation(line: 392, column: 32, scope: !2799)
!2827 = !DILocation(line: 393, column: 2, scope: !2799)
!2828 = !DILocation(line: 393, column: 17, scope: !2799)
!2829 = !DILocation(line: 394, column: 2, scope: !2799)
!2830 = !DILocation(line: 394, column: 14, scope: !2799)
!2831 = !DILocation(line: 398, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 398, column: 6)
!2833 = !DILocation(line: 398, column: 6, scope: !2799)
!2834 = !DILocation(line: 399, column: 3, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 398, column: 16)
!2836 = !DILocation(line: 404, column: 20, scope: !2799)
!2837 = !DILocation(line: 404, column: 18, scope: !2799)
!2838 = !DILocation(line: 405, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 405, column: 6)
!2840 = !DILocation(line: 405, column: 6, scope: !2799)
!2841 = !DILocation(line: 406, column: 3, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 405, column: 24)
!2843 = !DILocation(line: 409, column: 29, scope: !2799)
!2844 = !DILocation(line: 409, column: 2, scope: !2799)
!2845 = !DILocation(line: 409, column: 19, scope: !2799)
!2846 = !DILocation(line: 409, column: 27, scope: !2799)
!2847 = !DILocation(line: 410, column: 29, scope: !2799)
!2848 = !DILocation(line: 410, column: 2, scope: !2799)
!2849 = !DILocation(line: 410, column: 19, scope: !2799)
!2850 = !DILocation(line: 410, column: 27, scope: !2799)
!2851 = !DILocation(line: 412, column: 11, scope: !2799)
!2852 = !DILocation(line: 412, column: 9, scope: !2799)
!2853 = !DILocation(line: 413, column: 6, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 413, column: 6)
!2855 = !DILocation(line: 413, column: 6, scope: !2799)
!2856 = !DILocation(line: 414, column: 3, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 413, column: 28)
!2858 = !DILocation(line: 419, column: 31, scope: !2799)
!2859 = !DILocation(line: 419, column: 10, scope: !2799)
!2860 = !DILocation(line: 419, column: 8, scope: !2799)
!2861 = !DILocation(line: 420, column: 16, scope: !2799)
!2862 = !DILocation(line: 420, column: 14, scope: !2799)
!2863 = !DILocation(line: 424, column: 2, scope: !2799)
!2864 = !DILocation(line: 424, column: 9, scope: !2799)
!2865 = !DILocation(line: 425, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 425, column: 7)
!2867 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 424, column: 22)
!2868 = !DILocation(line: 425, column: 18, scope: !2866)
!2869 = !DILocation(line: 425, column: 31, scope: !2866)
!2870 = !DILocation(line: 425, column: 15, scope: !2866)
!2871 = !DILocation(line: 425, column: 7, scope: !2867)
!2872 = !DILocation(line: 426, column: 11, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 425, column: 40)
!2874 = !DILocation(line: 427, column: 4, scope: !2873)
!2875 = !DILocation(line: 430, column: 17, scope: !2867)
!2876 = !DILocation(line: 430, column: 30, scope: !2867)
!2877 = !DILocation(line: 430, column: 15, scope: !2867)
!2878 = distinct !{!2878, !2863, !2879, !2418, !2419}
!2879 = !DILocation(line: 431, column: 2, scope: !2799)
!2880 = !DILocation(line: 435, column: 26, scope: !2799)
!2881 = !DILocation(line: 435, column: 2, scope: !2799)
!2882 = !DILocation(line: 435, column: 19, scope: !2799)
!2883 = !DILocation(line: 435, column: 24, scope: !2799)
!2884 = !DILocation(line: 436, column: 30, scope: !2799)
!2885 = !DILocation(line: 436, column: 28, scope: !2799)
!2886 = !DILocation(line: 436, column: 2, scope: !2799)
!2887 = !DILocation(line: 438, column: 1, scope: !2799)
!2888 = !DILocation(line: 440, column: 23, scope: !2799)
!2889 = !DILocation(line: 440, column: 42, scope: !2799)
!2890 = !DILocation(line: 440, column: 2, scope: !2799)
!2891 = !DILocation(line: 441, column: 8, scope: !2799)
!2892 = !DILocation(line: 441, column: 2, scope: !2799)
!2893 = !DILocation(line: 443, column: 1, scope: !2799)
!2894 = !DILocation(line: 444, column: 6, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 444, column: 6)
!2896 = !DILocation(line: 444, column: 6, scope: !2799)
!2897 = !DILocation(line: 445, column: 3, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 444, column: 28)
!2899 = !DILocation(line: 446, column: 2, scope: !2898)
!2900 = !DILocation(line: 447, column: 2, scope: !2799)
!2901 = !DILocation(line: 448, column: 1, scope: !2799)
!2902 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !2903, file: !2903, line: 50, type: !2904, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2906)
!2903 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!132, !819}
!2906 = !{!2907, !2908, !2910, !2913, !2914, !2917}
!2907 = !DILocalVariable(name: "size", arg: 1, scope: !2902, file: !2903, line: 50, type: !819)
!2908 = !DILocalVariable(name: "_flags", scope: !2909, file: !2903, line: 52, type: !818)
!2909 = distinct !DILexicalBlock(scope: !2902, file: !2903, line: 52, column: 23)
!2910 = !DILocalVariable(name: "__dummy", scope: !2911, file: !2903, line: 52, type: !818)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !2903, line: 52, column: 23)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !2903, line: 52, column: 23)
!2913 = !DILocalVariable(name: "__dummy2", scope: !2911, file: !2903, line: 52, type: !818)
!2914 = !DILocalVariable(name: "__dummy", scope: !2915, file: !2903, line: 52, type: !818)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !2903, line: 52, column: 23)
!2916 = distinct !DILexicalBlock(scope: !2909, file: !2903, line: 52, column: 23)
!2917 = !DILocalVariable(name: "__dummy2", scope: !2915, file: !2903, line: 52, type: !818)
!2918 = !DILocation(line: 50, column: 48, scope: !2902)
!2919 = !DILocation(line: 52, column: 17, scope: !2902)
!2920 = !DILocation(line: 52, column: 23, scope: !2909)
!2921 = !DILocation(line: 52, column: 23, scope: !2911)
!2922 = !DILocation(line: 52, column: 23, scope: !2912)
!2923 = !DILocation(line: 52, column: 23, scope: !2915)
!2924 = !DILocation(line: 52, column: 23, scope: !2916)
!2925 = !DILocation(line: 52, column: 23, scope: !2902)
!2926 = !DILocation(line: 52, column: 9, scope: !2902)
!2927 = !DILocation(line: 52, column: 2, scope: !2902)
!2928 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !2796, file: !2796, line: 93, type: !2929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!818, !2931}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!2932 = !DISubprogram(name: "acpi_os_release_lock", scope: !2796, file: !2796, line: 97, type: !2933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2931, !818}
!2935 = distinct !DISubprogram(name: "acpi_os_free", scope: !2903, file: !2903, line: 60, type: !2936, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !132}
!2938 = !{!2939}
!2939 = !DILocalVariable(name: "memory", arg: 1, scope: !2935, file: !2903, line: 60, type: !132)
!2940 = !DILocation(line: 60, column: 39, scope: !2935)
!2941 = !DILocation(line: 62, column: 8, scope: !2935)
!2942 = !DILocation(line: 62, column: 2, scope: !2935)
!2943 = !DILocation(line: 63, column: 1, scope: !2935)
!2944 = distinct !DISubprogram(name: "acpi_remove_sci_handler", scope: !3, file: !3, line: 463, type: !2945, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!155, !2802}
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953}
!2948 = !DILocalVariable(name: "address", arg: 1, scope: !2944, file: !3, line: 463, type: !2802)
!2949 = !DILocalVariable(name: "prev_sci_handler", scope: !2944, file: !3, line: 465, type: !2810)
!2950 = !DILocalVariable(name: "next_sci_handler", scope: !2944, file: !3, line: 466, type: !2810)
!2951 = !DILocalVariable(name: "flags", scope: !2944, file: !3, line: 467, type: !818)
!2952 = !DILocalVariable(name: "status", scope: !2944, file: !3, line: 468, type: !155)
!2953 = !DILabel(scope: !2944, name: "unlock_and_exit", file: !3, line: 511)
!2954 = !DILocation(line: 463, column: 54, scope: !2944)
!2955 = !DILocation(line: 465, column: 2, scope: !2944)
!2956 = !DILocation(line: 465, column: 32, scope: !2944)
!2957 = !DILocation(line: 466, column: 2, scope: !2944)
!2958 = !DILocation(line: 466, column: 32, scope: !2944)
!2959 = !DILocation(line: 467, column: 2, scope: !2944)
!2960 = !DILocation(line: 467, column: 17, scope: !2944)
!2961 = !DILocation(line: 468, column: 2, scope: !2944)
!2962 = !DILocation(line: 468, column: 14, scope: !2944)
!2963 = !DILocation(line: 472, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 472, column: 6)
!2965 = !DILocation(line: 472, column: 6, scope: !2944)
!2966 = !DILocation(line: 473, column: 3, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 472, column: 16)
!2968 = !DILocation(line: 476, column: 11, scope: !2944)
!2969 = !DILocation(line: 476, column: 9, scope: !2944)
!2970 = !DILocation(line: 477, column: 6, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 477, column: 6)
!2972 = !DILocation(line: 477, column: 6, scope: !2944)
!2973 = !DILocation(line: 478, column: 3, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 477, column: 28)
!2975 = !DILocation(line: 483, column: 31, scope: !2944)
!2976 = !DILocation(line: 483, column: 10, scope: !2944)
!2977 = !DILocation(line: 483, column: 8, scope: !2944)
!2978 = !DILocation(line: 485, column: 19, scope: !2944)
!2979 = !DILocation(line: 486, column: 21, scope: !2944)
!2980 = !DILocation(line: 486, column: 19, scope: !2944)
!2981 = !DILocation(line: 487, column: 2, scope: !2944)
!2982 = !DILocation(line: 487, column: 9, scope: !2944)
!2983 = !DILocation(line: 488, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 488, column: 7)
!2985 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 487, column: 27)
!2986 = !DILocation(line: 488, column: 25, scope: !2984)
!2987 = !DILocation(line: 488, column: 36, scope: !2984)
!2988 = !DILocation(line: 488, column: 33, scope: !2984)
!2989 = !DILocation(line: 488, column: 7, scope: !2985)
!2990 = !DILocation(line: 492, column: 8, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 492, column: 8)
!2992 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 488, column: 45)
!2993 = !DILocation(line: 492, column: 8, scope: !2992)
!2994 = !DILocation(line: 493, column: 30, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 492, column: 26)
!2996 = !DILocation(line: 493, column: 48, scope: !2995)
!2997 = !DILocation(line: 493, column: 5, scope: !2995)
!2998 = !DILocation(line: 493, column: 23, scope: !2995)
!2999 = !DILocation(line: 493, column: 28, scope: !2995)
!3000 = !DILocation(line: 494, column: 4, scope: !2995)
!3001 = !DILocation(line: 496, column: 9, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 494, column: 11)
!3003 = !DILocation(line: 496, column: 27, scope: !3002)
!3004 = !DILocation(line: 495, column: 31, scope: !3002)
!3005 = !DILocation(line: 499, column: 25, scope: !2992)
!3006 = !DILocation(line: 499, column: 44, scope: !2992)
!3007 = !DILocation(line: 499, column: 4, scope: !2992)
!3008 = !DILocation(line: 500, column: 4, scope: !2992)
!3009 = !DILocation(line: 501, column: 4, scope: !2992)
!3010 = !DILocation(line: 504, column: 22, scope: !2985)
!3011 = !DILocation(line: 504, column: 20, scope: !2985)
!3012 = !DILocation(line: 505, column: 22, scope: !2985)
!3013 = !DILocation(line: 505, column: 40, scope: !2985)
!3014 = !DILocation(line: 505, column: 20, scope: !2985)
!3015 = distinct !{!3015, !2981, !3016, !2418, !2419}
!3016 = !DILocation(line: 506, column: 2, scope: !2944)
!3017 = !DILocation(line: 508, column: 23, scope: !2944)
!3018 = !DILocation(line: 508, column: 42, scope: !2944)
!3019 = !DILocation(line: 508, column: 2, scope: !2944)
!3020 = !DILocation(line: 509, column: 9, scope: !2944)
!3021 = !DILocation(line: 509, column: 2, scope: !2944)
!3022 = !DILocation(line: 511, column: 1, scope: !2944)
!3023 = !DILocation(line: 512, column: 8, scope: !2944)
!3024 = !DILocation(line: 513, column: 2, scope: !2944)
!3025 = !DILocation(line: 514, column: 1, scope: !2944)
!3026 = distinct !DISubprogram(name: "acpi_install_global_event_handler", scope: !3, file: !3, line: 534, type: !3027, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!155, !3029, !132}
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gbl_event_handler", file: !156, line: 1047, baseType: !3030)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !93, !390, !93, !132}
!3033 = !{!3034, !3035, !3036, !3037}
!3034 = !DILocalVariable(name: "handler", arg: 1, scope: !3026, file: !3, line: 534, type: !3029)
!3035 = !DILocalVariable(name: "context", arg: 2, scope: !3026, file: !3, line: 534, type: !132)
!3036 = !DILocalVariable(name: "status", scope: !3026, file: !3, line: 536, type: !155)
!3037 = !DILabel(scope: !3026, name: "cleanup", file: !3, line: 561)
!3038 = !DILocation(line: 534, column: 58, scope: !3026)
!3039 = !DILocation(line: 534, column: 73, scope: !3026)
!3040 = !DILocation(line: 536, column: 2, scope: !3026)
!3041 = !DILocation(line: 536, column: 14, scope: !3026)
!3042 = !DILocation(line: 542, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 542, column: 6)
!3044 = !DILocation(line: 542, column: 6, scope: !3026)
!3045 = !DILocation(line: 543, column: 3, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 542, column: 16)
!3047 = !DILocation(line: 546, column: 11, scope: !3026)
!3048 = !DILocation(line: 546, column: 9, scope: !3026)
!3049 = !DILocation(line: 547, column: 6, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 547, column: 6)
!3051 = !DILocation(line: 547, column: 6, scope: !3026)
!3052 = !DILocation(line: 548, column: 3, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 547, column: 28)
!3054 = !DILocation(line: 553, column: 6, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 553, column: 6)
!3056 = !DILocation(line: 553, column: 6, scope: !3026)
!3057 = !DILocation(line: 554, column: 10, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 553, column: 37)
!3059 = !DILocation(line: 555, column: 3, scope: !3058)
!3060 = !DILocation(line: 558, column: 34, scope: !3026)
!3061 = !DILocation(line: 558, column: 32, scope: !3026)
!3062 = !DILocation(line: 559, column: 42, scope: !3026)
!3063 = !DILocation(line: 559, column: 40, scope: !3026)
!3064 = !DILocation(line: 559, column: 2, scope: !3026)
!3065 = !DILocation(line: 561, column: 1, scope: !3026)
!3066 = !DILocation(line: 562, column: 8, scope: !3026)
!3067 = !DILocation(line: 563, column: 2, scope: !3026)
!3068 = !DILocation(line: 564, column: 1, scope: !3026)
!3069 = distinct !DISubprogram(name: "acpi_install_fixed_event_handler", scope: !3, file: !3, line: 584, type: !3070, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!155, !93, !3072, !132}
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_handler", file: !156, line: 1055, baseType: !2803)
!3073 = !{!3074, !3075, !3076, !3077, !3078}
!3074 = !DILocalVariable(name: "event", arg: 1, scope: !3069, file: !3, line: 584, type: !93)
!3075 = !DILocalVariable(name: "handler", arg: 2, scope: !3069, file: !3, line: 585, type: !3072)
!3076 = !DILocalVariable(name: "context", arg: 3, scope: !3069, file: !3, line: 585, type: !132)
!3077 = !DILocalVariable(name: "status", scope: !3069, file: !3, line: 587, type: !155)
!3078 = !DILabel(scope: !3069, name: "cleanup", file: !3, line: 633)
!3079 = !DILocation(line: 584, column: 38, scope: !3069)
!3080 = !DILocation(line: 585, column: 25, scope: !3069)
!3081 = !DILocation(line: 585, column: 40, scope: !3069)
!3082 = !DILocation(line: 587, column: 2, scope: !3069)
!3083 = !DILocation(line: 587, column: 14, scope: !3069)
!3084 = !DILocation(line: 593, column: 6, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 593, column: 6)
!3086 = !DILocation(line: 593, column: 12, scope: !3085)
!3087 = !DILocation(line: 593, column: 6, scope: !3069)
!3088 = !DILocation(line: 594, column: 3, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 593, column: 30)
!3090 = !DILocation(line: 597, column: 11, scope: !3069)
!3091 = !DILocation(line: 597, column: 9, scope: !3069)
!3092 = !DILocation(line: 598, column: 6, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 598, column: 6)
!3094 = !DILocation(line: 598, column: 6, scope: !3069)
!3095 = !DILocation(line: 599, column: 3, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 598, column: 28)
!3097 = !DILocation(line: 604, column: 36, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 604, column: 6)
!3099 = !DILocation(line: 604, column: 6, scope: !3098)
!3100 = !DILocation(line: 604, column: 43, scope: !3098)
!3101 = !DILocation(line: 604, column: 6, scope: !3069)
!3102 = !DILocation(line: 605, column: 10, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 604, column: 52)
!3104 = !DILocation(line: 606, column: 3, scope: !3103)
!3105 = !DILocation(line: 611, column: 49, scope: !3069)
!3106 = !DILocation(line: 611, column: 32, scope: !3069)
!3107 = !DILocation(line: 611, column: 2, scope: !3069)
!3108 = !DILocation(line: 611, column: 39, scope: !3069)
!3109 = !DILocation(line: 611, column: 47, scope: !3069)
!3110 = !DILocation(line: 612, column: 49, scope: !3069)
!3111 = !DILocation(line: 612, column: 32, scope: !3069)
!3112 = !DILocation(line: 612, column: 2, scope: !3069)
!3113 = !DILocation(line: 612, column: 39, scope: !3069)
!3114 = !DILocation(line: 612, column: 47, scope: !3069)
!3115 = !DILocation(line: 614, column: 28, scope: !3069)
!3116 = !DILocation(line: 614, column: 11, scope: !3069)
!3117 = !DILocation(line: 614, column: 9, scope: !3069)
!3118 = !DILocation(line: 615, column: 6, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 615, column: 6)
!3120 = !DILocation(line: 615, column: 6, scope: !3069)
!3121 = !DILocation(line: 616, column: 30, scope: !3119)
!3122 = !DILocation(line: 616, column: 12, scope: !3119)
!3123 = !DILocation(line: 616, column: 10, scope: !3119)
!3124 = !DILocation(line: 616, column: 3, scope: !3119)
!3125 = !DILocation(line: 617, column: 6, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 617, column: 6)
!3127 = !DILocation(line: 617, column: 6, scope: !3069)
!3128 = !DILocation(line: 618, column: 3, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 617, column: 28)
!3130 = !DILocation(line: 624, column: 33, scope: !3129)
!3131 = !DILocation(line: 624, column: 3, scope: !3129)
!3132 = !DILocation(line: 624, column: 40, scope: !3129)
!3133 = !DILocation(line: 624, column: 48, scope: !3129)
!3134 = !DILocation(line: 625, column: 33, scope: !3129)
!3135 = !DILocation(line: 625, column: 3, scope: !3129)
!3136 = !DILocation(line: 625, column: 40, scope: !3129)
!3137 = !DILocation(line: 625, column: 48, scope: !3129)
!3138 = !DILocation(line: 626, column: 2, scope: !3129)
!3139 = !DILocation(line: 633, column: 1, scope: !3069)
!3140 = !DILocation(line: 634, column: 8, scope: !3069)
!3141 = !DILocation(line: 635, column: 2, scope: !3069)
!3142 = !DILocation(line: 636, column: 1, scope: !3069)
!3143 = !DISubprogram(name: "acpi_clear_event", scope: !3144, file: !3144, line: 710, type: !3145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3144 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!155, !93}
!3147 = !DISubprogram(name: "acpi_enable_event", scope: !3144, file: !3144, line: 705, type: !3148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!155, !93, !93}
!3150 = !DISubprogram(name: "acpi_warning", scope: !3144, file: !3144, line: 912, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !2586, !93, !2586, null}
!3153 = !DISubprogram(name: "acpi_ut_get_event_name", scope: !2571, file: !2571, line: 237, type: !3154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!2586, !93}
!3156 = distinct !DISubprogram(name: "acpi_remove_fixed_event_handler", scope: !3, file: !3, line: 653, type: !3157, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!155, !93, !3072}
!3159 = !{!3160, !3161, !3162}
!3160 = !DILocalVariable(name: "event", arg: 1, scope: !3156, file: !3, line: 653, type: !93)
!3161 = !DILocalVariable(name: "handler", arg: 2, scope: !3156, file: !3, line: 653, type: !3072)
!3162 = !DILocalVariable(name: "status", scope: !3156, file: !3, line: 655, type: !155)
!3163 = !DILocation(line: 653, column: 37, scope: !3156)
!3164 = !DILocation(line: 653, column: 63, scope: !3156)
!3165 = !DILocation(line: 655, column: 2, scope: !3156)
!3166 = !DILocation(line: 655, column: 14, scope: !3156)
!3167 = !DILocation(line: 661, column: 6, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 661, column: 6)
!3169 = !DILocation(line: 661, column: 12, scope: !3168)
!3170 = !DILocation(line: 661, column: 6, scope: !3156)
!3171 = !DILocation(line: 662, column: 3, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 661, column: 30)
!3173 = !DILocation(line: 665, column: 11, scope: !3156)
!3174 = !DILocation(line: 665, column: 9, scope: !3156)
!3175 = !DILocation(line: 666, column: 6, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 666, column: 6)
!3177 = !DILocation(line: 666, column: 6, scope: !3156)
!3178 = !DILocation(line: 667, column: 3, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 666, column: 28)
!3180 = !DILocation(line: 672, column: 30, scope: !3156)
!3181 = !DILocation(line: 672, column: 11, scope: !3156)
!3182 = !DILocation(line: 672, column: 9, scope: !3156)
!3183 = !DILocation(line: 676, column: 32, scope: !3156)
!3184 = !DILocation(line: 676, column: 2, scope: !3156)
!3185 = !DILocation(line: 676, column: 39, scope: !3156)
!3186 = !DILocation(line: 676, column: 47, scope: !3156)
!3187 = !DILocation(line: 677, column: 32, scope: !3156)
!3188 = !DILocation(line: 677, column: 2, scope: !3156)
!3189 = !DILocation(line: 677, column: 39, scope: !3156)
!3190 = !DILocation(line: 677, column: 47, scope: !3156)
!3191 = !DILocation(line: 679, column: 6, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 679, column: 6)
!3193 = !DILocation(line: 679, column: 6, scope: !3156)
!3194 = !DILocation(line: 680, column: 3, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 679, column: 28)
!3196 = !DILocation(line: 683, column: 2, scope: !3195)
!3197 = !DILocation(line: 689, column: 8, scope: !3156)
!3198 = !DILocation(line: 690, column: 2, scope: !3156)
!3199 = !DILocation(line: 691, column: 1, scope: !3156)
!3200 = !DISubprogram(name: "acpi_disable_event", scope: !3144, file: !3144, line: 708, type: !3148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3201 = distinct !DISubprogram(name: "acpi_install_gpe_handler", scope: !3, file: !3, line: 840, type: !3202, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!155, !390, !93, !93, !551, !132}
!3204 = !{!3205, !3206, !3207, !3208, !3209, !3210}
!3205 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !3201, file: !3, line: 840, type: !390)
!3206 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !3201, file: !3, line: 841, type: !93)
!3207 = !DILocalVariable(name: "type", arg: 3, scope: !3201, file: !3, line: 842, type: !93)
!3208 = !DILocalVariable(name: "address", arg: 4, scope: !3201, file: !3, line: 842, type: !551)
!3209 = !DILocalVariable(name: "context", arg: 5, scope: !3201, file: !3, line: 842, type: !132)
!3210 = !DILocalVariable(name: "status", scope: !3201, file: !3, line: 844, type: !155)
!3211 = !DILocation(line: 840, column: 38, scope: !3201)
!3212 = !DILocation(line: 841, column: 9, scope: !3201)
!3213 = !DILocation(line: 842, column: 9, scope: !3201)
!3214 = !DILocation(line: 842, column: 32, scope: !3201)
!3215 = !DILocation(line: 842, column: 47, scope: !3201)
!3216 = !DILocation(line: 844, column: 2, scope: !3201)
!3217 = !DILocation(line: 844, column: 14, scope: !3201)
!3218 = !DILocation(line: 848, column: 39, scope: !3201)
!3219 = !DILocation(line: 848, column: 51, scope: !3201)
!3220 = !DILocation(line: 848, column: 63, scope: !3201)
!3221 = !DILocation(line: 849, column: 18, scope: !3201)
!3222 = !DILocation(line: 849, column: 27, scope: !3201)
!3223 = !DILocation(line: 848, column: 11, scope: !3201)
!3224 = !DILocation(line: 848, column: 9, scope: !3201)
!3225 = !DILocation(line: 851, column: 2, scope: !3201)
!3226 = !DILocation(line: 852, column: 1, scope: !3201)
!3227 = distinct !DISubprogram(name: "acpi_ev_install_gpe_handler", scope: !3, file: !3, line: 716, type: !3228, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!155, !390, !93, !93, !54, !551, !132}
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3231 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !3227, file: !3, line: 716, type: !390)
!3232 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !3227, file: !3, line: 717, type: !93)
!3233 = !DILocalVariable(name: "type", arg: 3, scope: !3227, file: !3, line: 718, type: !93)
!3234 = !DILocalVariable(name: "is_raw_handler", arg: 4, scope: !3227, file: !3, line: 719, type: !54)
!3235 = !DILocalVariable(name: "address", arg: 5, scope: !3227, file: !3, line: 720, type: !551)
!3236 = !DILocalVariable(name: "context", arg: 6, scope: !3227, file: !3, line: 720, type: !132)
!3237 = !DILocalVariable(name: "gpe_event_info", scope: !3227, file: !3, line: 722, type: !539)
!3238 = !DILocalVariable(name: "handler", scope: !3227, file: !3, line: 723, type: !547)
!3239 = !DILocalVariable(name: "status", scope: !3227, file: !3, line: 724, type: !155)
!3240 = !DILocalVariable(name: "flags", scope: !3227, file: !3, line: 725, type: !818)
!3241 = !DILabel(scope: !3227, name: "unlock_and_exit", file: !3, line: 811)
!3242 = !DILabel(scope: !3227, name: "free_and_exit", file: !3, line: 815)
!3243 = !DILocation(line: 716, column: 41, scope: !3227)
!3244 = !DILocation(line: 717, column: 12, scope: !3227)
!3245 = !DILocation(line: 718, column: 12, scope: !3227)
!3246 = !DILocation(line: 719, column: 11, scope: !3227)
!3247 = !DILocation(line: 720, column: 25, scope: !3227)
!3248 = !DILocation(line: 720, column: 40, scope: !3227)
!3249 = !DILocation(line: 722, column: 2, scope: !3227)
!3250 = !DILocation(line: 722, column: 30, scope: !3227)
!3251 = !DILocation(line: 723, column: 2, scope: !3227)
!3252 = !DILocation(line: 723, column: 32, scope: !3227)
!3253 = !DILocation(line: 724, column: 2, scope: !3227)
!3254 = !DILocation(line: 724, column: 14, scope: !3227)
!3255 = !DILocation(line: 725, column: 2, scope: !3227)
!3256 = !DILocation(line: 725, column: 17, scope: !3227)
!3257 = !DILocation(line: 731, column: 8, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 731, column: 6)
!3259 = !DILocation(line: 731, column: 17, scope: !3258)
!3260 = !DILocation(line: 731, column: 21, scope: !3258)
!3261 = !DILocation(line: 731, column: 26, scope: !3258)
!3262 = !DILocation(line: 731, column: 6, scope: !3227)
!3263 = !DILocation(line: 732, column: 3, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 731, column: 56)
!3265 = !DILocation(line: 735, column: 11, scope: !3227)
!3266 = !DILocation(line: 735, column: 9, scope: !3227)
!3267 = !DILocation(line: 736, column: 6, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 736, column: 6)
!3269 = !DILocation(line: 736, column: 6, scope: !3227)
!3270 = !DILocation(line: 737, column: 3, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 736, column: 28)
!3272 = !DILocation(line: 742, column: 12, scope: !3227)
!3273 = !DILocation(line: 742, column: 10, scope: !3227)
!3274 = !DILocation(line: 743, column: 7, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 743, column: 6)
!3276 = !DILocation(line: 743, column: 6, scope: !3227)
!3277 = !DILocation(line: 744, column: 10, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 743, column: 16)
!3279 = !DILocation(line: 745, column: 3, scope: !3278)
!3280 = !DILocation(line: 748, column: 31, scope: !3227)
!3281 = !DILocation(line: 748, column: 10, scope: !3227)
!3282 = !DILocation(line: 748, column: 8, scope: !3227)
!3283 = !DILocation(line: 752, column: 46, scope: !3227)
!3284 = !DILocation(line: 752, column: 58, scope: !3227)
!3285 = !DILocation(line: 752, column: 19, scope: !3227)
!3286 = !DILocation(line: 752, column: 17, scope: !3227)
!3287 = !DILocation(line: 753, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 753, column: 6)
!3289 = !DILocation(line: 753, column: 6, scope: !3227)
!3290 = !DILocation(line: 754, column: 10, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 753, column: 23)
!3292 = !DILocation(line: 755, column: 3, scope: !3291)
!3293 = !DILocation(line: 760, column: 7, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 760, column: 6)
!3295 = !DILocation(line: 760, column: 53, scope: !3294)
!3296 = !DILocation(line: 761, column: 34, scope: !3294)
!3297 = !DILocation(line: 762, column: 7, scope: !3294)
!3298 = !DILocation(line: 762, column: 53, scope: !3294)
!3299 = !DILocation(line: 760, column: 6, scope: !3227)
!3300 = !DILocation(line: 764, column: 10, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 763, column: 39)
!3302 = !DILocation(line: 765, column: 3, scope: !3301)
!3303 = !DILocation(line: 768, column: 21, scope: !3227)
!3304 = !DILocation(line: 768, column: 2, scope: !3227)
!3305 = !DILocation(line: 768, column: 11, scope: !3227)
!3306 = !DILocation(line: 768, column: 19, scope: !3227)
!3307 = !DILocation(line: 769, column: 21, scope: !3227)
!3308 = !DILocation(line: 769, column: 2, scope: !3227)
!3309 = !DILocation(line: 769, column: 11, scope: !3227)
!3310 = !DILocation(line: 769, column: 19, scope: !3227)
!3311 = !DILocation(line: 770, column: 25, scope: !3227)
!3312 = !DILocation(line: 770, column: 41, scope: !3227)
!3313 = !DILocation(line: 770, column: 50, scope: !3227)
!3314 = !DILocation(line: 770, column: 2, scope: !3227)
!3315 = !DILocation(line: 770, column: 11, scope: !3227)
!3316 = !DILocation(line: 770, column: 23, scope: !3227)
!3317 = !DILocation(line: 771, column: 33, scope: !3227)
!3318 = !DILocation(line: 771, column: 49, scope: !3227)
!3319 = !DILocation(line: 771, column: 55, scope: !3227)
!3320 = !DILocation(line: 771, column: 28, scope: !3227)
!3321 = !DILocation(line: 771, column: 2, scope: !3227)
!3322 = !DILocation(line: 771, column: 11, scope: !3227)
!3323 = !DILocation(line: 771, column: 26, scope: !3227)
!3324 = !DILocation(line: 780, column: 8, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 780, column: 6)
!3326 = !DILocation(line: 780, column: 56, scope: !3325)
!3327 = !DILocation(line: 781, column: 34, scope: !3325)
!3328 = !DILocation(line: 782, column: 8, scope: !3325)
!3329 = !DILocation(line: 782, column: 56, scope: !3325)
!3330 = !DILocation(line: 783, column: 35, scope: !3325)
!3331 = !DILocation(line: 783, column: 38, scope: !3325)
!3332 = !DILocation(line: 783, column: 54, scope: !3325)
!3333 = !DILocation(line: 780, column: 6, scope: !3227)
!3334 = !DILocation(line: 784, column: 3, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 783, column: 69)
!3336 = !DILocation(line: 784, column: 12, scope: !3335)
!3337 = !DILocation(line: 784, column: 31, scope: !3335)
!3338 = !DILocation(line: 785, column: 38, scope: !3335)
!3339 = !DILocation(line: 785, column: 9, scope: !3335)
!3340 = !DILocation(line: 789, column: 7, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 789, column: 7)
!3342 = !DILocation(line: 790, column: 13, scope: !3341)
!3343 = !DILocation(line: 790, column: 29, scope: !3341)
!3344 = !DILocation(line: 790, column: 35, scope: !3341)
!3345 = !DILocation(line: 789, column: 12, scope: !3341)
!3346 = !DILocation(line: 789, column: 7, scope: !3335)
!3347 = !DILocation(line: 791, column: 4, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 790, column: 64)
!3349 = !DILocation(line: 793, column: 3, scope: !3348)
!3350 = !DILocation(line: 794, column: 2, scope: !3335)
!3351 = !DILocation(line: 798, column: 37, scope: !3227)
!3352 = !DILocation(line: 798, column: 2, scope: !3227)
!3353 = !DILocation(line: 798, column: 18, scope: !3227)
!3354 = !DILocation(line: 798, column: 35, scope: !3227)
!3355 = !DILocation(line: 802, column: 2, scope: !3227)
!3356 = !DILocation(line: 802, column: 18, scope: !3227)
!3357 = !DILocation(line: 802, column: 24, scope: !3227)
!3358 = !DILocation(line: 805, column: 11, scope: !3227)
!3359 = !DILocation(line: 806, column: 5, scope: !3227)
!3360 = !DILocation(line: 805, column: 16, scope: !3227)
!3361 = !DILocation(line: 805, column: 6, scope: !3227)
!3362 = !DILocation(line: 804, column: 2, scope: !3227)
!3363 = !DILocation(line: 804, column: 18, scope: !3227)
!3364 = !DILocation(line: 804, column: 24, scope: !3227)
!3365 = !DILocation(line: 809, column: 23, scope: !3227)
!3366 = !DILocation(line: 809, column: 42, scope: !3227)
!3367 = !DILocation(line: 809, column: 2, scope: !3227)
!3368 = !DILocation(line: 811, column: 1, scope: !3227)
!3369 = !DILocation(line: 812, column: 8, scope: !3227)
!3370 = !DILocation(line: 813, column: 2, scope: !3227)
!3371 = !DILocation(line: 815, column: 1, scope: !3227)
!3372 = !DILocation(line: 816, column: 23, scope: !3227)
!3373 = !DILocation(line: 816, column: 42, scope: !3227)
!3374 = !DILocation(line: 816, column: 2, scope: !3227)
!3375 = !DILocation(line: 817, column: 2, scope: !3227)
!3376 = !DILocation(line: 818, column: 2, scope: !3227)
!3377 = !DILocation(line: 819, column: 1, scope: !3227)
!3378 = distinct !DISubprogram(name: "acpi_install_gpe_raw_handler", scope: !3, file: !3, line: 874, type: !3202, scopeLine: 877, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3379)
!3379 = !{!3380, !3381, !3382, !3383, !3384, !3385}
!3380 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !3378, file: !3, line: 874, type: !390)
!3381 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !3378, file: !3, line: 875, type: !93)
!3382 = !DILocalVariable(name: "type", arg: 3, scope: !3378, file: !3, line: 876, type: !93)
!3383 = !DILocalVariable(name: "address", arg: 4, scope: !3378, file: !3, line: 876, type: !551)
!3384 = !DILocalVariable(name: "context", arg: 5, scope: !3378, file: !3, line: 876, type: !132)
!3385 = !DILocalVariable(name: "status", scope: !3378, file: !3, line: 878, type: !155)
!3386 = !DILocation(line: 874, column: 42, scope: !3378)
!3387 = !DILocation(line: 875, column: 13, scope: !3378)
!3388 = !DILocation(line: 876, column: 13, scope: !3378)
!3389 = !DILocation(line: 876, column: 36, scope: !3378)
!3390 = !DILocation(line: 876, column: 51, scope: !3378)
!3391 = !DILocation(line: 878, column: 2, scope: !3378)
!3392 = !DILocation(line: 878, column: 14, scope: !3378)
!3393 = !DILocation(line: 882, column: 39, scope: !3378)
!3394 = !DILocation(line: 882, column: 51, scope: !3378)
!3395 = !DILocation(line: 882, column: 63, scope: !3378)
!3396 = !DILocation(line: 883, column: 17, scope: !3378)
!3397 = !DILocation(line: 883, column: 26, scope: !3378)
!3398 = !DILocation(line: 882, column: 11, scope: !3378)
!3399 = !DILocation(line: 882, column: 9, scope: !3378)
!3400 = !DILocation(line: 885, column: 2, scope: !3378)
!3401 = !DILocation(line: 886, column: 1, scope: !3378)
!3402 = distinct !DISubprogram(name: "acpi_remove_gpe_handler", scope: !3, file: !3, line: 905, type: !3403, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3405)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!155, !390, !93, !551}
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413}
!3406 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !3402, file: !3, line: 905, type: !390)
!3407 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !3402, file: !3, line: 906, type: !93)
!3408 = !DILocalVariable(name: "address", arg: 3, scope: !3402, file: !3, line: 906, type: !551)
!3409 = !DILocalVariable(name: "gpe_event_info", scope: !3402, file: !3, line: 908, type: !539)
!3410 = !DILocalVariable(name: "handler", scope: !3402, file: !3, line: 909, type: !547)
!3411 = !DILocalVariable(name: "status", scope: !3402, file: !3, line: 910, type: !155)
!3412 = !DILocalVariable(name: "flags", scope: !3402, file: !3, line: 911, type: !818)
!3413 = !DILabel(scope: !3402, name: "unlock_and_exit", file: !3, line: 998)
!3414 = !DILocation(line: 905, column: 37, scope: !3402)
!3415 = !DILocation(line: 906, column: 8, scope: !3402)
!3416 = !DILocation(line: 906, column: 37, scope: !3402)
!3417 = !DILocation(line: 908, column: 2, scope: !3402)
!3418 = !DILocation(line: 908, column: 30, scope: !3402)
!3419 = !DILocation(line: 909, column: 2, scope: !3402)
!3420 = !DILocation(line: 909, column: 32, scope: !3402)
!3421 = !DILocation(line: 910, column: 2, scope: !3402)
!3422 = !DILocation(line: 910, column: 14, scope: !3402)
!3423 = !DILocation(line: 911, column: 2, scope: !3402)
!3424 = !DILocation(line: 911, column: 17, scope: !3402)
!3425 = !DILocation(line: 917, column: 7, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 917, column: 6)
!3427 = !DILocation(line: 917, column: 6, scope: !3402)
!3428 = !DILocation(line: 918, column: 3, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 917, column: 16)
!3430 = !DILocation(line: 921, column: 11, scope: !3402)
!3431 = !DILocation(line: 921, column: 9, scope: !3402)
!3432 = !DILocation(line: 922, column: 6, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 922, column: 6)
!3434 = !DILocation(line: 922, column: 6, scope: !3402)
!3435 = !DILocation(line: 923, column: 3, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 922, column: 28)
!3437 = !DILocation(line: 926, column: 31, scope: !3402)
!3438 = !DILocation(line: 926, column: 10, scope: !3402)
!3439 = !DILocation(line: 926, column: 8, scope: !3402)
!3440 = !DILocation(line: 930, column: 46, scope: !3402)
!3441 = !DILocation(line: 930, column: 58, scope: !3402)
!3442 = !DILocation(line: 930, column: 19, scope: !3402)
!3443 = !DILocation(line: 930, column: 17, scope: !3402)
!3444 = !DILocation(line: 931, column: 7, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 931, column: 6)
!3446 = !DILocation(line: 931, column: 6, scope: !3402)
!3447 = !DILocation(line: 932, column: 10, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 931, column: 23)
!3449 = !DILocation(line: 933, column: 3, scope: !3448)
!3450 = !DILocation(line: 938, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 938, column: 6)
!3452 = !DILocation(line: 938, column: 53, scope: !3451)
!3453 = !DILocation(line: 939, column: 34, scope: !3451)
!3454 = !DILocation(line: 940, column: 7, scope: !3451)
!3455 = !DILocation(line: 940, column: 53, scope: !3451)
!3456 = !DILocation(line: 938, column: 6, scope: !3402)
!3457 = !DILocation(line: 942, column: 10, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 941, column: 39)
!3459 = !DILocation(line: 943, column: 3, scope: !3458)
!3460 = !DILocation(line: 948, column: 6, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 948, column: 6)
!3462 = !DILocation(line: 948, column: 22, scope: !3461)
!3463 = !DILocation(line: 948, column: 31, scope: !3461)
!3464 = !DILocation(line: 948, column: 40, scope: !3461)
!3465 = !DILocation(line: 948, column: 51, scope: !3461)
!3466 = !DILocation(line: 948, column: 48, scope: !3461)
!3467 = !DILocation(line: 948, column: 6, scope: !3402)
!3468 = !DILocation(line: 949, column: 10, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 948, column: 60)
!3470 = !DILocation(line: 950, column: 3, scope: !3469)
!3471 = !DILocation(line: 955, column: 12, scope: !3402)
!3472 = !DILocation(line: 955, column: 28, scope: !3402)
!3473 = !DILocation(line: 955, column: 37, scope: !3402)
!3474 = !DILocation(line: 955, column: 10, scope: !3402)
!3475 = !DILocation(line: 956, column: 2, scope: !3402)
!3476 = !DILocation(line: 956, column: 18, scope: !3402)
!3477 = !DILocation(line: 956, column: 35, scope: !3402)
!3478 = !DILocation(line: 960, column: 41, scope: !3402)
!3479 = !DILocation(line: 960, column: 50, scope: !3402)
!3480 = !DILocation(line: 960, column: 2, scope: !3402)
!3481 = !DILocation(line: 960, column: 18, scope: !3402)
!3482 = !DILocation(line: 960, column: 39, scope: !3402)
!3483 = !DILocation(line: 961, column: 2, scope: !3402)
!3484 = !DILocation(line: 961, column: 18, scope: !3402)
!3485 = !DILocation(line: 961, column: 24, scope: !3402)
!3486 = !DILocation(line: 963, column: 27, scope: !3402)
!3487 = !DILocation(line: 963, column: 36, scope: !3402)
!3488 = !DILocation(line: 963, column: 2, scope: !3402)
!3489 = !DILocation(line: 963, column: 18, scope: !3402)
!3490 = !DILocation(line: 963, column: 24, scope: !3402)
!3491 = !DILocation(line: 970, column: 8, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 970, column: 6)
!3493 = !DILocation(line: 970, column: 56, scope: !3492)
!3494 = !DILocation(line: 971, column: 34, scope: !3492)
!3495 = !DILocation(line: 972, column: 8, scope: !3492)
!3496 = !DILocation(line: 972, column: 56, scope: !3492)
!3497 = !DILocation(line: 973, column: 35, scope: !3492)
!3498 = !DILocation(line: 973, column: 38, scope: !3492)
!3499 = !DILocation(line: 973, column: 47, scope: !3492)
!3500 = !DILocation(line: 970, column: 6, scope: !3402)
!3501 = !DILocation(line: 974, column: 35, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 973, column: 67)
!3503 = !DILocation(line: 974, column: 9, scope: !3502)
!3504 = !DILocation(line: 975, column: 7, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 975, column: 7)
!3506 = !DILocation(line: 975, column: 7, scope: !3502)
!3507 = !DILocation(line: 979, column: 25, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 975, column: 51)
!3509 = !DILocation(line: 979, column: 44, scope: !3508)
!3510 = !DILocation(line: 979, column: 4, scope: !3508)
!3511 = !DILocation(line: 980, column: 29, scope: !3508)
!3512 = !DILocation(line: 980, column: 41, scope: !3508)
!3513 = !DILocation(line: 981, column: 8, scope: !3508)
!3514 = !DILocation(line: 980, column: 10, scope: !3508)
!3515 = !DILocation(line: 982, column: 33, scope: !3508)
!3516 = !DILocation(line: 982, column: 12, scope: !3508)
!3517 = !DILocation(line: 982, column: 10, scope: !3508)
!3518 = !DILocation(line: 983, column: 3, scope: !3508)
!3519 = !DILocation(line: 984, column: 2, scope: !3502)
!3520 = !DILocation(line: 986, column: 23, scope: !3402)
!3521 = !DILocation(line: 986, column: 42, scope: !3402)
!3522 = !DILocation(line: 986, column: 2, scope: !3402)
!3523 = !DILocation(line: 987, column: 8, scope: !3402)
!3524 = !DILocation(line: 991, column: 2, scope: !3402)
!3525 = !DILocation(line: 995, column: 2, scope: !3402)
!3526 = !DILocation(line: 996, column: 2, scope: !3402)
!3527 = !DILocation(line: 998, column: 1, scope: !3402)
!3528 = !DILocation(line: 999, column: 23, scope: !3402)
!3529 = !DILocation(line: 999, column: 42, scope: !3402)
!3530 = !DILocation(line: 999, column: 2, scope: !3402)
!3531 = !DILocation(line: 1001, column: 8, scope: !3402)
!3532 = !DILocation(line: 1002, column: 2, scope: !3402)
!3533 = !DILocation(line: 1003, column: 1, scope: !3402)
!3534 = !DISubprogram(name: "acpi_ev_get_gpe_event_info", scope: !2576, file: !2576, line: 78, type: !3535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!539, !390, !93}
!3537 = !DISubprogram(name: "acpi_ev_add_gpe_reference", scope: !2576, file: !2576, line: 72, type: !3538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!155, !539, !54}
!3540 = !DISubprogram(name: "acpi_ev_detect_gpe", scope: !2576, file: !2576, line: 88, type: !3541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!93, !40, !539, !93}
!3543 = distinct !DISubprogram(name: "acpi_acquire_global_lock", scope: !3, file: !3, line: 1026, type: !3544, scopeLine: 1027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!155, !61, !1403}
!3546 = !{!3547, !3548, !3549}
!3547 = !DILocalVariable(name: "timeout", arg: 1, scope: !3543, file: !3, line: 1026, type: !61)
!3548 = !DILocalVariable(name: "handle", arg: 2, scope: !3543, file: !3, line: 1026, type: !1403)
!3549 = !DILocalVariable(name: "status", scope: !3543, file: !3, line: 1028, type: !155)
!3550 = !DILocation(line: 1026, column: 42, scope: !3543)
!3551 = !DILocation(line: 1026, column: 56, scope: !3543)
!3552 = !DILocation(line: 1028, column: 2, scope: !3543)
!3553 = !DILocation(line: 1028, column: 14, scope: !3543)
!3554 = !DILocation(line: 1030, column: 7, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 1030, column: 6)
!3556 = !DILocation(line: 1030, column: 6, scope: !3543)
!3557 = !DILocation(line: 1031, column: 3, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1030, column: 15)
!3559 = !DILocation(line: 1036, column: 2, scope: !3543)
!3560 = !DILocation(line: 1038, column: 40, scope: !3543)
!3561 = !DILocation(line: 1039, column: 12, scope: !3543)
!3562 = !DILocation(line: 1040, column: 12, scope: !3543)
!3563 = !DILocation(line: 1038, column: 11, scope: !3543)
!3564 = !DILocation(line: 1038, column: 9, scope: !3543)
!3565 = !DILocation(line: 1042, column: 6, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 1042, column: 6)
!3567 = !DILocation(line: 1042, column: 6, scope: !3543)
!3568 = !DILocation(line: 1046, column: 13, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 1042, column: 28)
!3570 = !DILocation(line: 1046, column: 4, scope: !3569)
!3571 = !DILocation(line: 1046, column: 11, scope: !3569)
!3572 = !DILocation(line: 1047, column: 2, scope: !3569)
!3573 = !DILocation(line: 1049, column: 2, scope: !3543)
!3574 = !DILocation(line: 1050, column: 10, scope: !3543)
!3575 = !DILocation(line: 1050, column: 2, scope: !3543)
!3576 = !DILocation(line: 1051, column: 1, scope: !3543)
!3577 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !3578, file: !3578, line: 464, type: !2797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3578 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!3579 = !DISubprogram(name: "acpi_ex_acquire_mutex_object", scope: !3578, file: !3578, line: 248, type: !3580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!155, !61, !45, !78}
!3582 = distinct !DISubprogram(name: "acpi_os_get_thread_id", scope: !2903, file: !2903, line: 71, type: !3583, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!78}
!3585 = !DILocation(line: 73, column: 41, scope: !3582)
!3586 = !DILocation(line: 73, column: 26, scope: !3582)
!3587 = !DILocation(line: 73, column: 2, scope: !3582)
!3588 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !3578, file: !3578, line: 466, type: !2797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3589 = distinct !DISubprogram(name: "acpi_release_global_lock", scope: !3, file: !3, line: 1066, type: !3145, scopeLine: 1067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3590)
!3590 = !{!3591, !3592}
!3591 = !DILocalVariable(name: "handle", arg: 1, scope: !3589, file: !3, line: 1066, type: !93)
!3592 = !DILocalVariable(name: "status", scope: !3589, file: !3, line: 1068, type: !155)
!3593 = !DILocation(line: 1066, column: 42, scope: !3589)
!3594 = !DILocation(line: 1068, column: 2, scope: !3589)
!3595 = !DILocation(line: 1068, column: 14, scope: !3589)
!3596 = !DILocation(line: 1070, column: 7, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 1070, column: 6)
!3598 = !DILocation(line: 1070, column: 14, scope: !3597)
!3599 = !DILocation(line: 1070, column: 18, scope: !3597)
!3600 = !DILocation(line: 1070, column: 28, scope: !3597)
!3601 = !DILocation(line: 1070, column: 25, scope: !3597)
!3602 = !DILocation(line: 1070, column: 6, scope: !3589)
!3603 = !DILocation(line: 1071, column: 3, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 1070, column: 58)
!3605 = !DILocation(line: 1074, column: 40, scope: !3589)
!3606 = !DILocation(line: 1074, column: 11, scope: !3589)
!3607 = !DILocation(line: 1074, column: 9, scope: !3589)
!3608 = !DILocation(line: 1075, column: 10, scope: !3589)
!3609 = !DILocation(line: 1075, column: 2, scope: !3589)
!3610 = !DILocation(line: 1076, column: 1, scope: !3589)
!3611 = !DISubprogram(name: "acpi_ex_release_mutex_object", scope: !3578, file: !3578, line: 256, type: !3612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!155, !45}
!3614 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !3615, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!132, !1615, !820}
!3617 = !{!3618, !3619, !3620}
!3618 = !DILocalVariable(name: "size", arg: 1, scope: !3614, file: !12, line: 591, type: !1615)
!3619 = !DILocalVariable(name: "flags", arg: 2, scope: !3614, file: !12, line: 591, type: !820)
!3620 = !DILocalVariable(name: "index", scope: !3621, file: !12, line: 594, type: !7)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !12, line: 593, column: 42)
!3622 = distinct !DILexicalBlock(scope: !3614, file: !12, line: 593, column: 6)
!3623 = !DILocation(line: 591, column: 61, scope: !3614)
!3624 = !DILocation(line: 591, column: 73, scope: !3614)
!3625 = !DILocation(line: 593, column: 27, scope: !3622)
!3626 = !DILocation(line: 593, column: 6, scope: !3622)
!3627 = !DILocation(line: 593, column: 33, scope: !3622)
!3628 = !DILocation(line: 593, column: 36, scope: !3622)
!3629 = !DILocation(line: 593, column: 6, scope: !3614)
!3630 = !DILocation(line: 594, column: 3, scope: !3621)
!3631 = !DILocation(line: 594, column: 16, scope: !3621)
!3632 = !DILocation(line: 596, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3621, file: !12, line: 596, column: 7)
!3634 = !DILocation(line: 596, column: 12, scope: !3633)
!3635 = !DILocation(line: 596, column: 7, scope: !3621)
!3636 = !DILocation(line: 597, column: 25, scope: !3633)
!3637 = !DILocation(line: 597, column: 31, scope: !3633)
!3638 = !DILocation(line: 597, column: 11, scope: !3633)
!3639 = !DILocation(line: 597, column: 4, scope: !3633)
!3640 = !DILocation(line: 599, column: 11, scope: !3621)
!3641 = !DILocation(line: 599, column: 9, scope: !3621)
!3642 = !DILocation(line: 601, column: 33, scope: !3621)
!3643 = !DILocation(line: 601, column: 40, scope: !3621)
!3644 = !DILocation(line: 601, column: 20, scope: !3621)
!3645 = !DILocation(line: 601, column: 5, scope: !3621)
!3646 = !DILocation(line: 601, column: 51, scope: !3621)
!3647 = !DILocation(line: 602, column: 5, scope: !3621)
!3648 = !DILocation(line: 602, column: 12, scope: !3621)
!3649 = !DILocation(line: 600, column: 10, scope: !3621)
!3650 = !DILocation(line: 600, column: 3, scope: !3621)
!3651 = !DILocation(line: 603, column: 2, scope: !3622)
!3652 = !DILocation(line: 604, column: 19, scope: !3614)
!3653 = !DILocation(line: 604, column: 25, scope: !3614)
!3654 = !DILocation(line: 604, column: 9, scope: !3614)
!3655 = !DILocation(line: 604, column: 2, scope: !3614)
!3656 = !DILocation(line: 605, column: 1, scope: !3614)
!3657 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3658, file: !3658, line: 65, type: !3659, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3658 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!818}
!3661 = !DILocation(line: 67, column: 9, scope: !3657)
!3662 = !DILocation(line: 67, column: 2, scope: !3657)
!3663 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !3658, file: !3658, line: 120, type: !3664, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!846, !818}
!3666 = !{!3667}
!3667 = !DILocalVariable(name: "flags", arg: 1, scope: !3663, file: !3658, line: 120, type: !818)
!3668 = !DILocation(line: 120, column: 67, scope: !3663)
!3669 = !DILocation(line: 122, column: 11, scope: !3663)
!3670 = !DILocation(line: 122, column: 17, scope: !3663)
!3671 = !DILocation(line: 122, column: 9, scope: !3663)
!3672 = !DILocation(line: 122, column: 2, scope: !3663)
!3673 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !3615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3674 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !3675, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!7, !1615, !1648}
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "size", arg: 1, scope: !3674, file: !12, line: 444, type: !1615)
!3679 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3674, file: !12, line: 445, type: !1648)
!3680 = !DILocation(line: 444, column: 60, scope: !3674)
!3681 = !DILocation(line: 445, column: 16, scope: !3674)
!3682 = !DILocation(line: 447, column: 7, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 447, column: 6)
!3684 = !DILocation(line: 447, column: 6, scope: !3674)
!3685 = !DILocation(line: 448, column: 3, scope: !3683)
!3686 = !DILocation(line: 450, column: 6, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 450, column: 6)
!3688 = !DILocation(line: 450, column: 11, scope: !3687)
!3689 = !DILocation(line: 450, column: 6, scope: !3674)
!3690 = !DILocation(line: 451, column: 3, scope: !3687)
!3691 = !DILocation(line: 453, column: 32, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 453, column: 6)
!3693 = !DILocation(line: 453, column: 37, scope: !3692)
!3694 = !DILocation(line: 453, column: 42, scope: !3692)
!3695 = !DILocation(line: 453, column: 45, scope: !3692)
!3696 = !DILocation(line: 453, column: 50, scope: !3692)
!3697 = !DILocation(line: 453, column: 6, scope: !3674)
!3698 = !DILocation(line: 454, column: 3, scope: !3692)
!3699 = !DILocation(line: 455, column: 32, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 455, column: 6)
!3701 = !DILocation(line: 455, column: 37, scope: !3700)
!3702 = !DILocation(line: 455, column: 43, scope: !3700)
!3703 = !DILocation(line: 455, column: 46, scope: !3700)
!3704 = !DILocation(line: 455, column: 51, scope: !3700)
!3705 = !DILocation(line: 455, column: 6, scope: !3674)
!3706 = !DILocation(line: 456, column: 3, scope: !3700)
!3707 = !DILocation(line: 457, column: 6, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 457, column: 6)
!3709 = !DILocation(line: 457, column: 11, scope: !3708)
!3710 = !DILocation(line: 457, column: 6, scope: !3674)
!3711 = !DILocation(line: 457, column: 26, scope: !3708)
!3712 = !DILocation(line: 458, column: 6, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 458, column: 6)
!3714 = !DILocation(line: 458, column: 11, scope: !3713)
!3715 = !DILocation(line: 458, column: 6, scope: !3674)
!3716 = !DILocation(line: 458, column: 26, scope: !3713)
!3717 = !DILocation(line: 459, column: 6, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 459, column: 6)
!3719 = !DILocation(line: 459, column: 11, scope: !3718)
!3720 = !DILocation(line: 459, column: 6, scope: !3674)
!3721 = !DILocation(line: 459, column: 26, scope: !3718)
!3722 = !DILocation(line: 460, column: 6, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 460, column: 6)
!3724 = !DILocation(line: 460, column: 11, scope: !3723)
!3725 = !DILocation(line: 460, column: 6, scope: !3674)
!3726 = !DILocation(line: 460, column: 26, scope: !3723)
!3727 = !DILocation(line: 461, column: 6, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 461, column: 6)
!3729 = !DILocation(line: 461, column: 11, scope: !3728)
!3730 = !DILocation(line: 461, column: 6, scope: !3674)
!3731 = !DILocation(line: 461, column: 26, scope: !3728)
!3732 = !DILocation(line: 462, column: 6, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 462, column: 6)
!3734 = !DILocation(line: 462, column: 11, scope: !3733)
!3735 = !DILocation(line: 462, column: 6, scope: !3674)
!3736 = !DILocation(line: 462, column: 26, scope: !3733)
!3737 = !DILocation(line: 463, column: 6, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 463, column: 6)
!3739 = !DILocation(line: 463, column: 11, scope: !3738)
!3740 = !DILocation(line: 463, column: 6, scope: !3674)
!3741 = !DILocation(line: 463, column: 26, scope: !3738)
!3742 = !DILocation(line: 464, column: 6, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 464, column: 6)
!3744 = !DILocation(line: 464, column: 11, scope: !3743)
!3745 = !DILocation(line: 464, column: 6, scope: !3674)
!3746 = !DILocation(line: 464, column: 26, scope: !3743)
!3747 = !DILocation(line: 465, column: 6, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 465, column: 6)
!3749 = !DILocation(line: 465, column: 11, scope: !3748)
!3750 = !DILocation(line: 465, column: 6, scope: !3674)
!3751 = !DILocation(line: 465, column: 26, scope: !3748)
!3752 = !DILocation(line: 466, column: 6, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 466, column: 6)
!3754 = !DILocation(line: 466, column: 11, scope: !3753)
!3755 = !DILocation(line: 466, column: 6, scope: !3674)
!3756 = !DILocation(line: 466, column: 26, scope: !3753)
!3757 = !DILocation(line: 467, column: 6, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 467, column: 6)
!3759 = !DILocation(line: 467, column: 11, scope: !3758)
!3760 = !DILocation(line: 467, column: 6, scope: !3674)
!3761 = !DILocation(line: 467, column: 26, scope: !3758)
!3762 = !DILocation(line: 468, column: 6, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 468, column: 6)
!3764 = !DILocation(line: 468, column: 11, scope: !3763)
!3765 = !DILocation(line: 468, column: 6, scope: !3674)
!3766 = !DILocation(line: 468, column: 26, scope: !3763)
!3767 = !DILocation(line: 469, column: 6, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 469, column: 6)
!3769 = !DILocation(line: 469, column: 11, scope: !3768)
!3770 = !DILocation(line: 469, column: 6, scope: !3674)
!3771 = !DILocation(line: 469, column: 26, scope: !3768)
!3772 = !DILocation(line: 470, column: 6, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 470, column: 6)
!3774 = !DILocation(line: 470, column: 11, scope: !3773)
!3775 = !DILocation(line: 470, column: 6, scope: !3674)
!3776 = !DILocation(line: 470, column: 26, scope: !3773)
!3777 = !DILocation(line: 471, column: 6, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 471, column: 6)
!3779 = !DILocation(line: 471, column: 11, scope: !3778)
!3780 = !DILocation(line: 471, column: 6, scope: !3674)
!3781 = !DILocation(line: 471, column: 26, scope: !3778)
!3782 = !DILocation(line: 472, column: 6, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 472, column: 6)
!3784 = !DILocation(line: 472, column: 11, scope: !3783)
!3785 = !DILocation(line: 472, column: 6, scope: !3674)
!3786 = !DILocation(line: 472, column: 26, scope: !3783)
!3787 = !DILocation(line: 473, column: 6, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 473, column: 6)
!3789 = !DILocation(line: 473, column: 11, scope: !3788)
!3790 = !DILocation(line: 473, column: 6, scope: !3674)
!3791 = !DILocation(line: 473, column: 26, scope: !3788)
!3792 = !DILocation(line: 474, column: 6, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 474, column: 6)
!3794 = !DILocation(line: 474, column: 11, scope: !3793)
!3795 = !DILocation(line: 474, column: 6, scope: !3674)
!3796 = !DILocation(line: 474, column: 27, scope: !3793)
!3797 = !DILocation(line: 475, column: 6, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 475, column: 6)
!3799 = !DILocation(line: 475, column: 11, scope: !3798)
!3800 = !DILocation(line: 475, column: 6, scope: !3674)
!3801 = !DILocation(line: 475, column: 32, scope: !3798)
!3802 = !DILocation(line: 477, column: 50, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3674, file: !12, line: 477, column: 6)
!3804 = !{i8 0, i8 2}
!3805 = !DILocation(line: 477, column: 6, scope: !3674)
!3806 = !DILocation(line: 478, column: 3, scope: !3803)
!3807 = !DILocation(line: 478, column: 3, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !12, line: 478, column: 3)
!3809 = distinct !DILexicalBlock(scope: !3803, file: !12, line: 478, column: 3)
!3810 = !{i32 -2143019054}
!3811 = !DILocation(line: 478, column: 3, scope: !3809)
!3812 = !DILocation(line: 480, column: 3, scope: !3803)
!3813 = !DILocation(line: 480, column: 3, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3803, file: !12, line: 480, column: 3)
!3815 = !DILocation(line: 480, column: 3, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3814, file: !12, line: 480, column: 3)
!3817 = !DILocation(line: 480, column: 3, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !12, line: 480, column: 3)
!3819 = !{i64 2151948445, i64 2151948474, i64 2151948520, i64 2151948578, i64 2151948632, i64 2151948686, i64 2151948741, i64 2151948772}
!3820 = !DILocation(line: 483, column: 2, scope: !3674)
!3821 = !DILocation(line: 484, column: 1, scope: !3674)
!3822 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !3823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!132, !3825, !820, !1615}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3827, line: 11, flags: DIFlagFwdDecl)
!3827 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3828 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !3829, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!11, !820, !818}
!3831 = !{!3832, !3833}
!3832 = !DILocalVariable(name: "flags", arg: 1, scope: !3828, file: !12, line: 401, type: !820)
!3833 = !DILocalVariable(name: "caller", arg: 2, scope: !3828, file: !12, line: 401, type: !818)
!3834 = !DILocation(line: 401, column: 67, scope: !3828)
!3835 = !DILocation(line: 401, column: 88, scope: !3828)
!3836 = !DILocation(line: 407, column: 6, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3828, file: !12, line: 407, column: 6)
!3838 = !DILocation(line: 407, column: 6, scope: !3828)
!3839 = !DILocation(line: 413, column: 3, scope: !3837)
!3840 = !DILocation(line: 423, column: 38, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3828, file: !12, line: 423, column: 6)
!3842 = !DILocation(line: 423, column: 44, scope: !3841)
!3843 = !DILocation(line: 423, column: 6, scope: !3828)
!3844 = !DILocation(line: 424, column: 3, scope: !3841)
!3845 = !DILocation(line: 426, column: 3, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3828, file: !12, line: 425, column: 6)
!3847 = !DILocation(line: 429, column: 1, scope: !3828)
!3848 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !3615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3849 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !2797, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3850 = distinct !DISubprogram(name: "native_save_fl", scope: !3658, file: !3658, line: 17, type: !3659, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3851)
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "flags", scope: !3850, file: !3658, line: 19, type: !818)
!3853 = !DILocation(line: 19, column: 2, scope: !3850)
!3854 = !DILocation(line: 19, column: 16, scope: !3850)
!3855 = !DILocation(line: 26, column: 2, scope: !3850)
!3856 = !{i64 1538364, i64 1538385}
!3857 = !DILocation(line: 32, column: 9, scope: !3850)
!3858 = !DILocation(line: 33, column: 1, scope: !3850)
!3859 = !DILocation(line: 32, column: 2, scope: !3850)
!3860 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !3861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{null, !3863}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3865 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !2903, file: !2903, line: 55, type: !2904, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3866)
!3866 = !{!3867, !3868, !3870, !3873, !3874, !3877}
!3867 = !DILocalVariable(name: "size", arg: 1, scope: !3865, file: !2903, line: 55, type: !819)
!3868 = !DILocalVariable(name: "_flags", scope: !3869, file: !2903, line: 57, type: !818)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !2903, line: 57, column: 23)
!3870 = !DILocalVariable(name: "__dummy", scope: !3871, file: !2903, line: 57, type: !818)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !2903, line: 57, column: 23)
!3872 = distinct !DILexicalBlock(scope: !3869, file: !2903, line: 57, column: 23)
!3873 = !DILocalVariable(name: "__dummy2", scope: !3871, file: !2903, line: 57, type: !818)
!3874 = !DILocalVariable(name: "__dummy", scope: !3875, file: !2903, line: 57, type: !818)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !2903, line: 57, column: 23)
!3876 = distinct !DILexicalBlock(scope: !3869, file: !2903, line: 57, column: 23)
!3877 = !DILocalVariable(name: "__dummy2", scope: !3875, file: !2903, line: 57, type: !818)
!3878 = !DILocation(line: 55, column: 55, scope: !3865)
!3879 = !DILocation(line: 57, column: 17, scope: !3865)
!3880 = !DILocation(line: 57, column: 23, scope: !3869)
!3881 = !DILocation(line: 57, column: 23, scope: !3871)
!3882 = !DILocation(line: 57, column: 23, scope: !3872)
!3883 = !DILocation(line: 57, column: 23, scope: !3875)
!3884 = !DILocation(line: 57, column: 23, scope: !3876)
!3885 = !DILocation(line: 57, column: 23, scope: !3865)
!3886 = !DILocation(line: 57, column: 9, scope: !3865)
!3887 = !DILocation(line: 57, column: 2, scope: !3865)
!3888 = !DISubprogram(name: "acpi_ev_remove_gpe_reference", scope: !2576, file: !2576, line: 76, type: !3889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!155, !539}
!3891 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !3615, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3892)
!3892 = !{!3893, !3894}
!3893 = !DILocalVariable(name: "size", arg: 1, scope: !3891, file: !12, line: 719, type: !1615)
!3894 = !DILocalVariable(name: "flags", arg: 2, scope: !3891, file: !12, line: 719, type: !820)
!3895 = !DILocation(line: 719, column: 52, scope: !3891)
!3896 = !DILocation(line: 719, column: 64, scope: !3891)
!3897 = !DILocation(line: 721, column: 17, scope: !3891)
!3898 = !DILocation(line: 721, column: 23, scope: !3891)
!3899 = !DILocation(line: 721, column: 29, scope: !3891)
!3900 = !DILocation(line: 721, column: 9, scope: !3891)
!3901 = !DILocation(line: 721, column: 2, scope: !3891)
!3902 = distinct !DISubprogram(name: "get_current", scope: !3903, file: !3903, line: 39, type: !3904, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3903 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!822}
!3906 = !{!3907, !3909, !3911}
!3907 = !DILocalVariable(name: "pscr_ret__", scope: !3908, file: !3903, line: 41, type: !822)
!3908 = distinct !DILexicalBlock(scope: !3902, file: !3903, line: 41, column: 9)
!3909 = !DILocalVariable(name: "__vpp_verify", scope: !3910, file: !3903, line: 41, type: !3863)
!3910 = distinct !DILexicalBlock(scope: !3908, file: !3903, line: 41, column: 9)
!3911 = !DILocalVariable(name: "pfo_val__", scope: !3912, file: !3903, line: 41, type: !78)
!3912 = distinct !DILexicalBlock(scope: !3908, file: !3903, line: 41, column: 9)
!3913 = !DILocation(line: 41, column: 9, scope: !3908)
!3914 = !DILocation(line: 41, column: 9, scope: !3910)
!3915 = !DILocation(line: 41, column: 9, scope: !3912)
!3916 = !{i64 2148306809}
!3917 = !DILocation(line: 41, column: 9, scope: !3902)
!3918 = !DILocation(line: 41, column: 2, scope: !3902)
