; ModuleID = 'drivers/base/platform-msi.c'
source_filename = "drivers/base/platform-msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_msi_create_irq_domain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad platform_msi_create_irq_domain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_msi_domain_alloc_irqs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad platform_msi_domain_alloc_irqs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_platform_msi_domain_free_irqs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad platform_msi_domain_free_irqs ; .previous"

%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.msi_domain_info = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.list_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, %struct.mutex, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, i32, %struct.xarray, [0 x ptr] }
%struct.msi_device_data = type { i64, ptr, %struct.mutex, [2 x %struct.msi_dev_domain], i64 }
%struct.msi_dev_domain = type { %struct.xarray, ptr }
%struct.platform_msi_priv_data = type { ptr, ptr, %struct.irq_alloc_info, ptr, i32 }
%struct.irq_alloc_info = type { i32, i32, i32, i64, ptr, ptr, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.uv_alloc_info }
%struct.uv_alloc_info = type { i32, i32, i64, ptr }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, ptr, i16, %union.anon.12 }
%struct.msi_msg = type { %union.anon.7, %union.anon.9, %union.anon.10 }
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.12 = type { %struct.pci_msi_desc }
%struct.pci_msi_desc = type { %union.anon.13, %struct.anon.5, %union.anon.14 }
%union.anon.13 = type { i32 }
%struct.anon.5 = type { i16, i32 }
%union.anon.14 = type { ptr }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.cpumask = type { [1 x i64] }

@__UNIQUE_ID___addressable_platform_msi_create_irq_domain205 = internal global ptr @platform_msi_create_irq_domain, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_platform_msi_domain_alloc_irqs206 = internal global ptr @platform_msi_domain_alloc_irqs, section ".discard.addressable", align 8, !dbg !180
@__UNIQUE_ID___addressable_platform_msi_domain_free_irqs207 = internal global ptr @platform_msi_domain_free_irqs, section ".discard.addressable", align 8, !dbg !182
@platform_device_msi_lock_class = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !184
@.str = private unnamed_addr constant [28 x i8] c"drivers/base/platform-msi.c\00", align 1, !dbg !189
@.str.1 = private unnamed_addr constant [36 x i8] c"Incompatible msi_domain, giving up\0A\00", align 1, !dbg !195
@platform_msi_devid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 67108869, ptr null } }, align 8, !dbg !205
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !200
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_platform_msi_create_irq_domain205, ptr @__UNIQUE_ID___addressable_platform_msi_domain_alloc_irqs206, ptr @__UNIQUE_ID___addressable_platform_msi_domain_free_irqs207], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @platform_msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) #0 align 16 !dbg !268 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %domain = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !2383, metadata !DIExpression()), !dbg !2387
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !2384, metadata !DIExpression()), !dbg !2388
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2385, metadata !DIExpression()), !dbg !2389
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain) #14, !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %domain, metadata !2386, metadata !DIExpression()), !dbg !2391
  %0 = load ptr, ptr %info.addr, align 8, !dbg !2392
  %flags = getelementptr inbounds %struct.msi_domain_info, ptr %0, i32 0, i32 0, !dbg !2394
  %1 = load i32, ptr %flags, align 8, !dbg !2394
  %and = and i32 %1, 1, !dbg !2395
  %tobool = icmp ne i32 %and, 0, !dbg !2395
  br i1 %tobool, label %if.then, label %if.end, !dbg !2396

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !2397
  call void @platform_msi_update_dom_ops(ptr noundef %2) #15, !dbg !2398
  br label %if.end, !dbg !2398

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %info.addr, align 8, !dbg !2399
  %flags1 = getelementptr inbounds %struct.msi_domain_info, ptr %3, i32 0, i32 0, !dbg !2401
  %4 = load i32, ptr %flags1, align 8, !dbg !2401
  %and2 = and i32 %4, 2, !dbg !2402
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2402
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2403

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %info.addr, align 8, !dbg !2404
  call void @platform_msi_update_chip_ops(ptr noundef %5) #15, !dbg !2405
  br label %if.end5, !dbg !2405

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load ptr, ptr %info.addr, align 8, !dbg !2406
  %flags6 = getelementptr inbounds %struct.msi_domain_info, ptr %6, i32 0, i32 0, !dbg !2407
  %7 = load i32, ptr %flags6, align 8, !dbg !2408
  %or = or i32 %7, 112, !dbg !2408
  store i32 %or, ptr %flags6, align 8, !dbg !2408
  %8 = load ptr, ptr %fwnode.addr, align 8, !dbg !2409
  %9 = load ptr, ptr %info.addr, align 8, !dbg !2410
  %10 = load ptr, ptr %parent.addr, align 8, !dbg !2411
  %call = call ptr @msi_create_irq_domain(ptr noundef %8, ptr noundef %9, ptr noundef %10) #15, !dbg !2412
  store ptr %call, ptr %domain, align 8, !dbg !2413
  %11 = load ptr, ptr %domain, align 8, !dbg !2414
  %tobool7 = icmp ne ptr %11, null, !dbg !2414
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2416

if.then8:                                         ; preds = %if.end5
  %12 = load ptr, ptr %domain, align 8, !dbg !2417
  call void @irq_domain_update_bus_token(ptr noundef %12, i32 noundef 4) #15, !dbg !2418
  br label %if.end9, !dbg !2418

if.end9:                                          ; preds = %if.then8, %if.end5
  %13 = load ptr, ptr %domain, align 8, !dbg !2419
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain) #14, !dbg !2420
  ret ptr %13, !dbg !2421
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @platform_msi_update_dom_ops(ptr noundef %info) #0 align 16 !dbg !2422 {
entry:
  %info.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #14, !dbg !2429
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !2427, metadata !DIExpression()), !dbg !2430
  %0 = load ptr, ptr %info.addr, align 8, !dbg !2431
  %ops1 = getelementptr inbounds %struct.msi_domain_info, ptr %0, i32 0, i32 3, !dbg !2432
  %1 = load ptr, ptr %ops1, align 8, !dbg !2432
  store ptr %1, ptr %ops, align 8, !dbg !2430
  br label %do.body, !dbg !2433

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %ops, align 8, !dbg !2434
  %tobool = icmp ne ptr %2, null, !dbg !2434
  %lnot = xor i1 %tobool, true, !dbg !2434
  %lnot2 = xor i1 %lnot, true, !dbg !2434
  %lnot3 = xor i1 %lnot2, true, !dbg !2434
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2434
  %conv = sext i32 %lnot.ext to i64, !dbg !2434
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2434
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2434
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2437

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !2434

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !2438

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !2440

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2440

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !2438

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 75, i32 0, i64 12) #14, !dbg !2442, !srcloc !2444
  br label %do.cond8, !dbg !2442

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2442

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !2438

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !2438

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !2438

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !2437

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !2437

do.end13:                                         ; preds = %do.cond12
  %3 = load ptr, ptr %ops, align 8, !dbg !2445
  %msi_init = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 1, !dbg !2447
  %4 = load ptr, ptr %msi_init, align 8, !dbg !2447
  %cmp = icmp eq ptr %4, null, !dbg !2448
  br i1 %cmp, label %if.then15, label %if.end17, !dbg !2449

if.then15:                                        ; preds = %do.end13
  %5 = load ptr, ptr %ops, align 8, !dbg !2450
  %msi_init16 = getelementptr inbounds %struct.msi_domain_ops, ptr %5, i32 0, i32 1, !dbg !2451
  store ptr null, ptr %msi_init16, align 8, !dbg !2452
  br label %if.end17, !dbg !2450

if.end17:                                         ; preds = %if.then15, %do.end13
  %6 = load ptr, ptr %ops, align 8, !dbg !2453
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, ptr %6, i32 0, i32 5, !dbg !2455
  %7 = load ptr, ptr %set_desc, align 8, !dbg !2455
  %cmp18 = icmp eq ptr %7, null, !dbg !2456
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !2457

if.then20:                                        ; preds = %if.end17
  %8 = load ptr, ptr %ops, align 8, !dbg !2458
  %set_desc21 = getelementptr inbounds %struct.msi_domain_ops, ptr %8, i32 0, i32 5, !dbg !2459
  store ptr null, ptr %set_desc21, align 8, !dbg !2460
  br label %if.end22, !dbg !2458

if.end22:                                         ; preds = %if.then20, %if.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #14, !dbg !2461
  ret void, !dbg !2461
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @platform_msi_update_chip_ops(ptr noundef %info) #0 align 16 !dbg !2462 {
entry:
  %info.addr = alloca ptr, align 8
  %chip = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !2464, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 8, ptr %chip) #14, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %chip, metadata !2465, metadata !DIExpression()), !dbg !2474
  %0 = load ptr, ptr %info.addr, align 8, !dbg !2475
  %chip1 = getelementptr inbounds %struct.msi_domain_info, ptr %0, i32 0, i32 4, !dbg !2476
  %1 = load ptr, ptr %chip1, align 8, !dbg !2476
  store ptr %1, ptr %chip, align 8, !dbg !2474
  br label %do.body, !dbg !2477

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %chip, align 8, !dbg !2478
  %tobool = icmp ne ptr %2, null, !dbg !2478
  %lnot = xor i1 %tobool, true, !dbg !2478
  %lnot2 = xor i1 %lnot, true, !dbg !2478
  %lnot3 = xor i1 %lnot2, true, !dbg !2478
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2478
  %conv = sext i32 %lnot.ext to i64, !dbg !2478
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2478
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2478
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2481

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !2478

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !2482

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !2484

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2484

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !2482

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 94, i32 0, i64 12) #14, !dbg !2486, !srcloc !2488
  br label %do.cond8, !dbg !2486

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2486

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !2482

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !2482

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !2482

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !2481

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !2481

do.end13:                                         ; preds = %do.cond12
  %3 = load ptr, ptr %chip, align 8, !dbg !2489
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6, !dbg !2491
  %4 = load ptr, ptr %irq_mask, align 8, !dbg !2491
  %tobool14 = icmp ne ptr %4, null, !dbg !2489
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !2492

if.then15:                                        ; preds = %do.end13
  %5 = load ptr, ptr %chip, align 8, !dbg !2493
  %irq_mask16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6, !dbg !2494
  store ptr @irq_chip_mask_parent, ptr %irq_mask16, align 8, !dbg !2495
  br label %if.end17, !dbg !2493

if.end17:                                         ; preds = %if.then15, %do.end13
  %6 = load ptr, ptr %chip, align 8, !dbg !2496
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8, !dbg !2498
  %7 = load ptr, ptr %irq_unmask, align 8, !dbg !2498
  %tobool18 = icmp ne ptr %7, null, !dbg !2496
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !2499

if.then19:                                        ; preds = %if.end17
  %8 = load ptr, ptr %chip, align 8, !dbg !2500
  %irq_unmask20 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 8, !dbg !2501
  store ptr @irq_chip_unmask_parent, ptr %irq_unmask20, align 8, !dbg !2502
  br label %if.end21, !dbg !2500

if.end21:                                         ; preds = %if.then19, %if.end17
  %9 = load ptr, ptr %chip, align 8, !dbg !2503
  %irq_eoi = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 9, !dbg !2505
  %10 = load ptr, ptr %irq_eoi, align 8, !dbg !2505
  %tobool22 = icmp ne ptr %10, null, !dbg !2503
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !2506

if.then23:                                        ; preds = %if.end21
  %11 = load ptr, ptr %chip, align 8, !dbg !2507
  %irq_eoi24 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 9, !dbg !2508
  store ptr @irq_chip_eoi_parent, ptr %irq_eoi24, align 8, !dbg !2509
  br label %if.end25, !dbg !2507

if.end25:                                         ; preds = %if.then23, %if.end21
  %12 = load ptr, ptr %chip, align 8, !dbg !2510
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, ptr %12, i32 0, i32 10, !dbg !2512
  %13 = load ptr, ptr %irq_set_affinity, align 8, !dbg !2512
  %tobool26 = icmp ne ptr %13, null, !dbg !2510
  br i1 %tobool26, label %if.end29, label %if.then27, !dbg !2513

if.then27:                                        ; preds = %if.end25
  %14 = load ptr, ptr %chip, align 8, !dbg !2514
  %irq_set_affinity28 = getelementptr inbounds %struct.irq_chip, ptr %14, i32 0, i32 10, !dbg !2515
  store ptr @msi_domain_set_affinity, ptr %irq_set_affinity28, align 8, !dbg !2516
  br label %if.end29, !dbg !2514

if.end29:                                         ; preds = %if.then27, %if.end25
  %15 = load ptr, ptr %chip, align 8, !dbg !2517
  %irq_write_msi_msg = getelementptr inbounds %struct.irq_chip, ptr %15, i32 0, i32 24, !dbg !2519
  %16 = load ptr, ptr %irq_write_msi_msg, align 8, !dbg !2519
  %tobool30 = icmp ne ptr %16, null, !dbg !2517
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !2520

if.then31:                                        ; preds = %if.end29
  %17 = load ptr, ptr %chip, align 8, !dbg !2521
  %irq_write_msi_msg32 = getelementptr inbounds %struct.irq_chip, ptr %17, i32 0, i32 24, !dbg !2522
  store ptr @platform_msi_write_msg, ptr %irq_write_msi_msg32, align 8, !dbg !2523
  br label %if.end33, !dbg !2521

if.end33:                                         ; preds = %if.then31, %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2524
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2466, metadata !DIExpression()), !dbg !2524
  %18 = load ptr, ptr %info.addr, align 8, !dbg !2524
  %flags = getelementptr inbounds %struct.msi_domain_info, ptr %18, i32 0, i32 0, !dbg !2524
  %19 = load i32, ptr %flags, align 8, !dbg !2524
  %and = and i32 %19, 262144, !dbg !2524
  %tobool34 = icmp ne i32 %and, 0, !dbg !2524
  br i1 %tobool34, label %land.rhs, label %land.end, !dbg !2524

land.rhs:                                         ; preds = %if.end33
  %20 = load ptr, ptr %chip, align 8, !dbg !2524
  %flags35 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 32, !dbg !2524
  %21 = load i64, ptr %flags35, align 8, !dbg !2524
  %and36 = and i64 %21, 128, !dbg !2524
  %tobool37 = icmp ne i64 %and36, 0, !dbg !2524
  %lnot38 = xor i1 %tobool37, true, !dbg !2524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end33
  %22 = phi i1 [ false, %if.end33 ], [ %lnot38, %land.rhs ], !dbg !2525
  %lnot40 = xor i1 %22, true, !dbg !2524
  %lnot42 = xor i1 %lnot40, true, !dbg !2524
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !2524
  store i32 %lnot.ext43, ptr %__ret_warn_on, align 4, !dbg !2524
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !2526
  %tobool44 = icmp ne i32 %23, 0, !dbg !2526
  %lnot45 = xor i1 %tobool44, true, !dbg !2526
  %lnot47 = xor i1 %lnot45, true, !dbg !2526
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !2526
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !2526
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !2526
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !2526
  br i1 %tobool51, label %if.then52, label %if.end65, !dbg !2524

if.then52:                                        ; preds = %land.end
  br label %do.body53, !dbg !2526

do.body53:                                        ; preds = %if.then52
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2527
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2469, metadata !DIExpression()), !dbg !2527
  store i32 2305, ptr %__flags, align 4, !dbg !2527
  br label %do.body54, !dbg !2527

do.body54:                                        ; preds = %do.body53
  br label %do.cond55, !dbg !2528

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !2528

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !2527

do.body57:                                        ; preds = %do.end56
  %24 = load i32, ptr %__flags, align 4, !dbg !2530
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 106, i32 %24, i64 12) #14, !dbg !2530, !srcloc !2532
  br label %do.cond58, !dbg !2530

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !2530

do.end59:                                         ; preds = %do.cond58
  br label %do.body60, !dbg !2527

do.body60:                                        ; preds = %do.end59
  br label %do.cond61, !dbg !2533

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2533

do.end62:                                         ; preds = %do.cond61
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2526
  br label %do.cond63, !dbg !2527

do.cond63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !2527

do.end64:                                         ; preds = %do.cond63
  br label %if.end65, !dbg !2527

if.end65:                                         ; preds = %do.end64, %land.end
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !2524
  %tobool66 = icmp ne i32 %25, 0, !dbg !2524
  %lnot67 = xor i1 %tobool66, true, !dbg !2524
  %lnot69 = xor i1 %lnot67, true, !dbg !2524
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !2524
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !2524
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !2524
  store i64 %expval72, ptr %tmp, align 8, !dbg !2526
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2535
  %26 = load i64, ptr %tmp, align 8, !dbg !2524
  %tobool73 = icmp ne i64 %26, 0, !dbg !2535
  br i1 %tobool73, label %if.then74, label %if.end77, !dbg !2536

if.then74:                                        ; preds = %if.end65
  %27 = load ptr, ptr %info.addr, align 8, !dbg !2537
  %flags75 = getelementptr inbounds %struct.msi_domain_info, ptr %27, i32 0, i32 0, !dbg !2538
  %28 = load i32, ptr %flags75, align 8, !dbg !2539
  %and76 = and i32 %28, -262145, !dbg !2539
  store i32 %and76, ptr %flags75, align 8, !dbg !2539
  br label %if.end77, !dbg !2537

if.end77:                                         ; preds = %if.then74, %if.end65
  call void @llvm.lifetime.end.p0(i64 8, ptr %chip) #14, !dbg !2540
  ret void, !dbg !2540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2541 dso_local ptr @msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2542 dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @platform_msi_domain_alloc_irqs(ptr noundef %dev, i32 noundef %nvec, ptr noundef %write_msi_msg) #0 align 16 !dbg !2545 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %nvec.addr = alloca i32, align 4
  %write_msi_msg.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2549, metadata !DIExpression()), !dbg !2553
  store i32 %nvec, ptr %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvec.addr, metadata !2550, metadata !DIExpression()), !dbg !2554
  store ptr %write_msi_msg, ptr %write_msi_msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %write_msi_msg.addr, metadata !2551, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2552, metadata !DIExpression()), !dbg !2557
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2558
  %1 = load i32, ptr %nvec.addr, align 4, !dbg !2559
  %2 = load ptr, ptr %write_msi_msg.addr, align 8, !dbg !2560
  %call = call i32 @platform_msi_alloc_priv_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15, !dbg !2561
  store i32 %call, ptr %err, align 4, !dbg !2562
  %3 = load i32, ptr %err, align 4, !dbg !2563
  %tobool = icmp ne i32 %3, 0, !dbg !2563
  br i1 %tobool, label %if.then, label %if.end, !dbg !2565

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !2566
  store i32 %4, ptr %retval, align 4, !dbg !2567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2567

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2568
  %6 = load i32, ptr %nvec.addr, align 4, !dbg !2569
  %sub = sub i32 %6, 1, !dbg !2570
  %call1 = call i32 @msi_domain_alloc_irqs_range(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %sub) #15, !dbg !2571
  store i32 %call1, ptr %err, align 4, !dbg !2572
  %7 = load i32, ptr %err, align 4, !dbg !2573
  %tobool2 = icmp ne i32 %7, 0, !dbg !2573
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2575

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2576
  call void @platform_msi_free_priv_data(ptr noundef %8) #15, !dbg !2577
  br label %if.end4, !dbg !2577

if.end4:                                          ; preds = %if.then3, %if.end
  %9 = load i32, ptr %err, align 4, !dbg !2578
  store i32 %9, ptr %retval, align 4, !dbg !2579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2579

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2580
  %10 = load i32, ptr %retval, align 4, !dbg !2580
  ret i32 %10, !dbg !2580
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @platform_msi_alloc_priv_data(ptr noundef %dev, i32 noundef %nvec, ptr noundef %write_msi_msg) #0 align 16 !dbg !2581 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %nvec.addr = alloca i32, align 4
  %write_msi_msg.addr = alloca ptr, align 8
  %datap = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2583, metadata !DIExpression()), !dbg !2588
  store i32 %nvec, ptr %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvec.addr, metadata !2584, metadata !DIExpression()), !dbg !2589
  store ptr %write_msi_msg, ptr %write_msi_msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %write_msi_msg.addr, metadata !2585, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 8, ptr %datap) #14, !dbg !2591
  call void @llvm.dbg.declare(metadata ptr %datap, metadata !2586, metadata !DIExpression()), !dbg !2592
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2593
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2587, metadata !DIExpression()), !dbg !2594
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2595
  %msi = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 13, !dbg !2597
  %domain = getelementptr inbounds %struct.dev_msi_info, ptr %msi, i32 0, i32 0, !dbg !2598
  %1 = load ptr, ptr %domain, align 8, !dbg !2598
  %tobool = icmp ne ptr %1, null, !dbg !2595
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2599

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %write_msi_msg.addr, align 8, !dbg !2600
  %tobool1 = icmp ne ptr %2, null, !dbg !2600
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2601

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %nvec.addr, align 4, !dbg !2602
  %tobool3 = icmp ne i32 %3, 0, !dbg !2602
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !2603

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, ptr %nvec.addr, align 4, !dbg !2604
  %cmp = icmp ugt i32 %4, 2048, !dbg !2605
  br i1 %cmp, label %if.then, label %if.end, !dbg !2606

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2607

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2608
  %msi5 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 13, !dbg !2610
  %domain6 = getelementptr inbounds %struct.dev_msi_info, ptr %msi5, i32 0, i32 0, !dbg !2611
  %6 = load ptr, ptr %domain6, align 8, !dbg !2611
  %bus_token = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 9, !dbg !2612
  %7 = load i32, ptr %bus_token, align 8, !dbg !2612
  %cmp7 = icmp ne i32 %7, 4, !dbg !2613
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2614

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !2615

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !2618

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2618

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2615
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef @.str.1) #16, !dbg !2615
  store i32 -22, ptr %retval, align 4, !dbg !2620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2620

if.end9:                                          ; preds = %if.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2621
  %call = call i32 @msi_setup_device_data(ptr noundef %9) #15, !dbg !2622
  store i32 %call, ptr %err, align 4, !dbg !2623
  %10 = load i32, ptr %err, align 4, !dbg !2624
  %tobool10 = icmp ne i32 %10, 0, !dbg !2624
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2626

if.then11:                                        ; preds = %if.end9
  %11 = load i32, ptr %err, align 4, !dbg !2627
  store i32 %11, ptr %retval, align 4, !dbg !2628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2628

if.end12:                                         ; preds = %if.end9
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2629
  %msi13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 13, !dbg !2631
  %data = getelementptr inbounds %struct.dev_msi_info, ptr %msi13, i32 0, i32 1, !dbg !2632
  %13 = load ptr, ptr %data, align 8, !dbg !2632
  %platform_data = getelementptr inbounds %struct.msi_device_data, ptr %13, i32 0, i32 1, !dbg !2633
  %14 = load ptr, ptr %platform_data, align 8, !dbg !2633
  %tobool14 = icmp ne ptr %14, null, !dbg !2629
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2634

if.then15:                                        ; preds = %if.end12
  store i32 -16, ptr %retval, align 4, !dbg !2635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2635

if.end16:                                         ; preds = %if.end12
  %call17 = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #17, !dbg !2636
  store ptr %call17, ptr %datap, align 8, !dbg !2637
  %15 = load ptr, ptr %datap, align 8, !dbg !2638
  %tobool18 = icmp ne ptr %15, null, !dbg !2638
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !2640

if.then19:                                        ; preds = %if.end16
  store i32 -12, ptr %retval, align 4, !dbg !2641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2641

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @ida_alloc_range(ptr noundef @platform_msi_devid_ida, i32 noundef 0, i32 noundef 2097151, i32 noundef 3264) #15, !dbg !2642
  %16 = load ptr, ptr %datap, align 8, !dbg !2643
  %devid = getelementptr inbounds %struct.platform_msi_priv_data, ptr %16, i32 0, i32 4, !dbg !2644
  store i32 %call21, ptr %devid, align 8, !dbg !2645
  %17 = load ptr, ptr %datap, align 8, !dbg !2646
  %devid22 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %17, i32 0, i32 4, !dbg !2648
  %18 = load i32, ptr %devid22, align 8, !dbg !2648
  %cmp23 = icmp slt i32 %18, 0, !dbg !2649
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !2650

if.then24:                                        ; preds = %if.end20
  %19 = load ptr, ptr %datap, align 8, !dbg !2651
  %devid25 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %19, i32 0, i32 4, !dbg !2653
  %20 = load i32, ptr %devid25, align 8, !dbg !2653
  store i32 %20, ptr %err, align 4, !dbg !2654
  %21 = load ptr, ptr %datap, align 8, !dbg !2655
  call void @kfree(ptr noundef %21) #15, !dbg !2656
  %22 = load i32, ptr %err, align 4, !dbg !2657
  store i32 %22, ptr %retval, align 4, !dbg !2658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2658

if.end26:                                         ; preds = %if.end20
  %23 = load ptr, ptr %write_msi_msg.addr, align 8, !dbg !2659
  %24 = load ptr, ptr %datap, align 8, !dbg !2660
  %write_msg = getelementptr inbounds %struct.platform_msi_priv_data, ptr %24, i32 0, i32 3, !dbg !2661
  store ptr %23, ptr %write_msg, align 8, !dbg !2662
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2663
  %26 = load ptr, ptr %datap, align 8, !dbg !2664
  %dev27 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %26, i32 0, i32 0, !dbg !2665
  store ptr %25, ptr %dev27, align 8, !dbg !2666
  %27 = load ptr, ptr %datap, align 8, !dbg !2667
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !2668
  %msi28 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 13, !dbg !2669
  %data29 = getelementptr inbounds %struct.dev_msi_info, ptr %msi28, i32 0, i32 1, !dbg !2670
  %29 = load ptr, ptr %data29, align 8, !dbg !2670
  %platform_data30 = getelementptr inbounds %struct.msi_device_data, ptr %29, i32 0, i32 1, !dbg !2671
  store ptr %27, ptr %platform_data30, align 8, !dbg !2672
  store i32 0, ptr %retval, align 4, !dbg !2673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2673

cleanup:                                          ; preds = %if.end26, %if.then24, %if.then19, %if.then15, %if.then11, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2674
  call void @llvm.lifetime.end.p0(i64 8, ptr %datap) #14, !dbg !2674
  %30 = load i32, ptr %retval, align 4, !dbg !2674
  ret i32 %30, !dbg !2674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2675 dso_local i32 @msi_domain_alloc_irqs_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @platform_msi_free_priv_data(ptr noundef %dev) #0 align 16 !dbg !2678 {
entry:
  %dev.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2680, metadata !DIExpression()), !dbg !2682
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !2683
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2681, metadata !DIExpression()), !dbg !2684
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2685
  %msi = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 13, !dbg !2686
  %data1 = getelementptr inbounds %struct.dev_msi_info, ptr %msi, i32 0, i32 1, !dbg !2687
  %1 = load ptr, ptr %data1, align 8, !dbg !2687
  %platform_data = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 1, !dbg !2688
  %2 = load ptr, ptr %platform_data, align 8, !dbg !2688
  store ptr %2, ptr %data, align 8, !dbg !2684
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2689
  %msi2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 13, !dbg !2690
  %data3 = getelementptr inbounds %struct.dev_msi_info, ptr %msi2, i32 0, i32 1, !dbg !2691
  %4 = load ptr, ptr %data3, align 8, !dbg !2691
  %platform_data4 = getelementptr inbounds %struct.msi_device_data, ptr %4, i32 0, i32 1, !dbg !2692
  store ptr null, ptr %platform_data4, align 8, !dbg !2693
  %5 = load ptr, ptr %data, align 8, !dbg !2694
  %devid = getelementptr inbounds %struct.platform_msi_priv_data, ptr %5, i32 0, i32 4, !dbg !2694
  %6 = load i32, ptr %devid, align 8, !dbg !2694
  call void @ida_free(ptr noundef @platform_msi_devid_ida, i32 noundef %6) #15, !dbg !2694
  %7 = load ptr, ptr %data, align 8, !dbg !2695
  call void @kfree(ptr noundef %7) #15, !dbg !2696
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !2697
  ret void, !dbg !2697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @platform_msi_domain_free_irqs(ptr noundef %dev) #0 align 16 !dbg !2698 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2700, metadata !DIExpression()), !dbg !2701
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2702
  call void @msi_domain_free_irqs_all(ptr noundef %0, i32 noundef 0) #15, !dbg !2703
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2704
  call void @platform_msi_free_priv_data(ptr noundef %1) #15, !dbg !2705
  ret void, !dbg !2706
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2707 dso_local void @msi_domain_free_irqs_all(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @platform_msi_get_host_data(ptr noundef %domain) #0 align 16 !dbg !2710 {
entry:
  %domain.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2715, metadata !DIExpression()), !dbg !2718
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !2719
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3, !dbg !2720
  %1 = load ptr, ptr %host_data, align 8, !dbg !2720
  store ptr %1, ptr %data, align 8, !dbg !2718
  %2 = load ptr, ptr %data, align 8, !dbg !2721
  %host_data1 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %2, i32 0, i32 1, !dbg !2722
  %3 = load ptr, ptr %host_data1, align 8, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !2723
  ret ptr %3, !dbg !2724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__platform_msi_create_device_domain(ptr noundef %dev, i32 noundef %nvec, i1 noundef zeroext %is_tree, ptr noundef %write_msi_msg, ptr noundef %ops, ptr noundef %host_data) #0 align 16 !dbg !2725 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %nvec.addr = alloca i32, align 4
  %is_tree.addr = alloca i8, align 1
  %write_msi_msg.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %host_data.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %domain = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2729, metadata !DIExpression()), !dbg !2740
  store i32 %nvec, ptr %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvec.addr, metadata !2730, metadata !DIExpression()), !dbg !2741
  %frombool = zext i1 %is_tree to i8
  store i8 %frombool, ptr %is_tree.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_tree.addr, metadata !2731, metadata !DIExpression()), !dbg !2742
  store ptr %write_msi_msg, ptr %write_msi_msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %write_msi_msg.addr, metadata !2732, metadata !DIExpression()), !dbg !2743
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !2733, metadata !DIExpression()), !dbg !2744
  store ptr %host_data, ptr %host_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %host_data.addr, metadata !2734, metadata !DIExpression()), !dbg !2745
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !2746
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2735, metadata !DIExpression()), !dbg !2747
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain) #14, !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %domain, metadata !2736, metadata !DIExpression()), !dbg !2749
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2750
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2737, metadata !DIExpression()), !dbg !2751
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2752
  %1 = load i32, ptr %nvec.addr, align 4, !dbg !2753
  %2 = load ptr, ptr %write_msi_msg.addr, align 8, !dbg !2754
  %call = call i32 @platform_msi_alloc_priv_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15, !dbg !2755
  store i32 %call, ptr %err, align 4, !dbg !2756
  %3 = load i32, ptr %err, align 4, !dbg !2757
  %tobool = icmp ne i32 %3, 0, !dbg !2757
  br i1 %tobool, label %if.then, label %if.end, !dbg !2759

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2760

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2761

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !2762

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2762

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2764
  %msi = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 13, !dbg !2765
  %data1 = getelementptr inbounds %struct.dev_msi_info, ptr %msi, i32 0, i32 1, !dbg !2766
  %5 = load ptr, ptr %data1, align 8, !dbg !2766
  %platform_data = getelementptr inbounds %struct.msi_device_data, ptr %5, i32 0, i32 1, !dbg !2767
  %6 = load ptr, ptr %platform_data, align 8, !dbg !2767
  store ptr %6, ptr %data, align 8, !dbg !2768
  %7 = load ptr, ptr %host_data.addr, align 8, !dbg !2769
  %8 = load ptr, ptr %data, align 8, !dbg !2770
  %host_data2 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %8, i32 0, i32 1, !dbg !2771
  store ptr %7, ptr %host_data2, align 8, !dbg !2772
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2773
  %msi3 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 13, !dbg !2774
  %domain4 = getelementptr inbounds %struct.dev_msi_info, ptr %msi3, i32 0, i32 0, !dbg !2775
  %10 = load ptr, ptr %domain4, align 8, !dbg !2775
  %11 = load i8, ptr %is_tree.addr, align 1, !dbg !2776, !range !2777, !noundef !188
  %tobool5 = trunc i8 %11 to i1, !dbg !2776
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !2776

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !2776

cond.false:                                       ; preds = %do.end
  %12 = load i32, ptr %nvec.addr, align 4, !dbg !2778
  br label %cond.end, !dbg !2776

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %12, %cond.false ], !dbg !2776
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !2779
  %fwnode = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 24, !dbg !2780
  %14 = load ptr, ptr %fwnode, align 8, !dbg !2780
  %15 = load ptr, ptr %ops.addr, align 8, !dbg !2781
  %16 = load ptr, ptr %data, align 8, !dbg !2782
  %call6 = call ptr @irq_domain_create_hierarchy(ptr noundef %10, i32 noundef 0, i32 noundef %cond, ptr noundef %14, ptr noundef %15, ptr noundef %16) #15, !dbg !2783
  store ptr %call6, ptr %domain, align 8, !dbg !2784
  %17 = load ptr, ptr %domain, align 8, !dbg !2785
  %tobool7 = icmp ne ptr %17, null, !dbg !2785
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2787

if.then8:                                         ; preds = %cond.end
  br label %free_priv, !dbg !2788

if.end9:                                          ; preds = %cond.end
  br label %do.body10, !dbg !2789

do.body10:                                        ; preds = %if.end9
  br label %do.cond11, !dbg !2790

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2790

do.end12:                                         ; preds = %do.cond11
  %18 = load ptr, ptr %domain, align 8, !dbg !2792
  %parent = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 13, !dbg !2793
  %19 = load ptr, ptr %parent, align 8, !dbg !2793
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !2794
  %21 = load i32, ptr %nvec.addr, align 4, !dbg !2795
  %22 = load ptr, ptr %data, align 8, !dbg !2796
  %arg = getelementptr inbounds %struct.platform_msi_priv_data, ptr %22, i32 0, i32 2, !dbg !2797
  %call13 = call i32 @msi_domain_prepare_irqs(ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %arg) #15, !dbg !2798
  store i32 %call13, ptr %err, align 4, !dbg !2799
  %23 = load i32, ptr %err, align 4, !dbg !2800
  %tobool14 = icmp ne i32 %23, 0, !dbg !2800
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2802

if.then15:                                        ; preds = %do.end12
  br label %free_domain, !dbg !2803

if.end16:                                         ; preds = %do.end12
  %24 = load ptr, ptr %domain, align 8, !dbg !2804
  store ptr %24, ptr %retval, align 8, !dbg !2805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2805

free_domain:                                      ; preds = %if.then15
  call void @llvm.dbg.label(metadata !2738), !dbg !2806
  %25 = load ptr, ptr %domain, align 8, !dbg !2807
  call void @irq_domain_remove(ptr noundef %25) #15, !dbg !2808
  br label %free_priv, !dbg !2808

free_priv:                                        ; preds = %free_domain, %if.then8
  call void @llvm.dbg.label(metadata !2739), !dbg !2809
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !2810
  call void @platform_msi_free_priv_data(ptr noundef %26) #15, !dbg !2811
  store ptr null, ptr %retval, align 8, !dbg !2812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2812

cleanup:                                          ; preds = %free_priv, %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2813
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain) #14, !dbg !2813
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !2813
  %27 = load ptr, ptr %retval, align 8, !dbg !2813
  ret ptr %27, !dbg !2813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2814 dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2817 dso_local i32 @msi_domain_prepare_irqs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2818 dso_local void @irq_domain_remove(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @platform_msi_device_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 16 !dbg !2821 {
entry:
  %domain.addr = alloca ptr, align 8
  %virq.addr = alloca i32, align 4
  %nr_irqs.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !2823, metadata !DIExpression()), !dbg !2827
  store i32 %virq, ptr %virq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %virq.addr, metadata !2824, metadata !DIExpression()), !dbg !2828
  store i32 %nr_irqs, ptr %nr_irqs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_irqs.addr, metadata !2825, metadata !DIExpression()), !dbg !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !2830
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2826, metadata !DIExpression()), !dbg !2831
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !2832
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3, !dbg !2833
  %1 = load ptr, ptr %host_data, align 8, !dbg !2833
  store ptr %1, ptr %data, align 8, !dbg !2831
  %2 = load ptr, ptr %data, align 8, !dbg !2834
  %dev = getelementptr inbounds %struct.platform_msi_priv_data, ptr %2, i32 0, i32 0, !dbg !2835
  %3 = load ptr, ptr %dev, align 8, !dbg !2835
  call void @msi_lock_descs(ptr noundef %3) #15, !dbg !2836
  %4 = load ptr, ptr %data, align 8, !dbg !2837
  %dev1 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %4, i32 0, i32 0, !dbg !2838
  %5 = load ptr, ptr %dev1, align 8, !dbg !2838
  %6 = load i32, ptr %virq.addr, align 4, !dbg !2839
  %7 = load i32, ptr %nr_irqs.addr, align 4, !dbg !2840
  call void @msi_domain_depopulate_descs(ptr noundef %5, i32 noundef %6, i32 noundef %7) #15, !dbg !2841
  %8 = load ptr, ptr %domain.addr, align 8, !dbg !2842
  %9 = load i32, ptr %virq.addr, align 4, !dbg !2843
  %10 = load i32, ptr %nr_irqs.addr, align 4, !dbg !2844
  call void @irq_domain_free_irqs_common(ptr noundef %8, i32 noundef %9, i32 noundef %10) #15, !dbg !2845
  %11 = load ptr, ptr %data, align 8, !dbg !2846
  %dev2 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %11, i32 0, i32 0, !dbg !2847
  %12 = load ptr, ptr %dev2, align 8, !dbg !2847
  %13 = load i32, ptr %virq.addr, align 4, !dbg !2848
  %14 = load i32, ptr %virq.addr, align 4, !dbg !2849
  %15 = load i32, ptr %nr_irqs.addr, align 4, !dbg !2850
  %add = add i32 %14, %15, !dbg !2851
  %sub = sub i32 %add, 1, !dbg !2852
  call void @msi_free_msi_descs_range(ptr noundef %12, i32 noundef %13, i32 noundef %sub) #15, !dbg !2853
  %16 = load ptr, ptr %data, align 8, !dbg !2854
  %dev3 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %16, i32 0, i32 0, !dbg !2855
  %17 = load ptr, ptr %dev3, align 8, !dbg !2855
  call void @msi_unlock_descs(ptr noundef %17) #15, !dbg !2856
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !2857
  ret void, !dbg !2857
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2858 dso_local void @msi_lock_descs(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2859 dso_local void @msi_domain_depopulate_descs(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2862 dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @msi_free_msi_descs_range(ptr noundef %dev, i32 noundef %first, i32 noundef %last) #4 align 16 !dbg !2863 {
entry:
  %dev.addr = alloca ptr, align 8
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2867, metadata !DIExpression()), !dbg !2870
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !2868, metadata !DIExpression()), !dbg !2871
  store i32 %last, ptr %last.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !2869, metadata !DIExpression()), !dbg !2872
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2873
  %1 = load i32, ptr %first.addr, align 4, !dbg !2874
  %2 = load i32, ptr %last.addr, align 4, !dbg !2875
  call void @msi_domain_free_msi_descs_range(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2) #15, !dbg !2876
  ret void, !dbg !2877
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2878 dso_local void @msi_unlock_descs(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @platform_msi_device_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 16 !dbg !2879 {
entry:
  %domain.addr = alloca ptr, align 8
  %virq.addr = alloca i32, align 4
  %nr_irqs.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !2883, metadata !DIExpression()), !dbg !2888
  store i32 %virq, ptr %virq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %virq.addr, metadata !2884, metadata !DIExpression()), !dbg !2889
  store i32 %nr_irqs, ptr %nr_irqs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_irqs.addr, metadata !2885, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2886, metadata !DIExpression()), !dbg !2892
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !2893
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3, !dbg !2894
  %1 = load ptr, ptr %host_data, align 8, !dbg !2894
  store ptr %1, ptr %data, align 8, !dbg !2892
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !2895
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2887, metadata !DIExpression()), !dbg !2896
  %2 = load ptr, ptr %data, align 8, !dbg !2897
  %dev1 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %2, i32 0, i32 0, !dbg !2898
  %3 = load ptr, ptr %dev1, align 8, !dbg !2898
  store ptr %3, ptr %dev, align 8, !dbg !2896
  %4 = load ptr, ptr %domain.addr, align 8, !dbg !2899
  %parent = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 13, !dbg !2900
  %5 = load ptr, ptr %parent, align 8, !dbg !2900
  %6 = load ptr, ptr %dev, align 8, !dbg !2901
  %7 = load i32, ptr %virq.addr, align 4, !dbg !2902
  %8 = load i32, ptr %nr_irqs.addr, align 4, !dbg !2903
  %9 = load ptr, ptr %data, align 8, !dbg !2904
  %arg = getelementptr inbounds %struct.platform_msi_priv_data, ptr %9, i32 0, i32 2, !dbg !2905
  %call = call i32 @msi_domain_populate_irqs(ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %arg) #15, !dbg !2906
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !2907
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !2907
  ret i32 %call, !dbg !2908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2909 dso_local i32 @msi_domain_populate_irqs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @msi_domain_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @platform_msi_write_msg(ptr noundef %data, ptr noundef %msg) #0 align 16 !dbg !2912 {
entry:
  %data.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2914, metadata !DIExpression()), !dbg !2917
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #14, !dbg !2919
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2916, metadata !DIExpression()), !dbg !2920
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2921
  %call = call ptr @irq_data_get_msi_desc(ptr noundef %0) #15, !dbg !2922
  store ptr %call, ptr %desc, align 8, !dbg !2920
  %1 = load ptr, ptr %desc, align 8, !dbg !2923
  %dev = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 2, !dbg !2924
  %2 = load ptr, ptr %dev, align 8, !dbg !2924
  %msi = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 13, !dbg !2925
  %data1 = getelementptr inbounds %struct.dev_msi_info, ptr %msi, i32 0, i32 1, !dbg !2926
  %3 = load ptr, ptr %data1, align 8, !dbg !2926
  %platform_data = getelementptr inbounds %struct.msi_device_data, ptr %3, i32 0, i32 1, !dbg !2927
  %4 = load ptr, ptr %platform_data, align 8, !dbg !2927
  %write_msg = getelementptr inbounds %struct.platform_msi_priv_data, ptr %4, i32 0, i32 3, !dbg !2928
  %5 = load ptr, ptr %write_msg, align 8, !dbg !2928
  %6 = load ptr, ptr %desc, align 8, !dbg !2929
  %7 = load ptr, ptr %msg.addr, align 8, !dbg !2930
  call void %5(ptr noundef %6, ptr noundef %7) #15, !dbg !2923
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #14, !dbg !2931
  ret void, !dbg !2931
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_data_get_msi_desc(ptr noundef %d) #4 align 16 !dbg !2932 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2936, metadata !DIExpression()), !dbg !2937
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2938
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2939
  %1 = load ptr, ptr %common, align 8, !dbg !2939
  %msi_desc = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 3, !dbg !2940
  %2 = load ptr, ptr %msi_desc, align 8, !dbg !2940
  ret ptr %2, !dbg !2941
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2942 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2946 dso_local i32 @msi_setup_device_data(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2947 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2951, metadata !DIExpression()), !dbg !2953
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2952, metadata !DIExpression()), !dbg !2954
  %0 = load i64, ptr %size.addr, align 8, !dbg !2955
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2956
  %or = or i32 %1, 256, !dbg !2957
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !2958
  ret ptr %call, !dbg !2959
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2960 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2964 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2967 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2969, metadata !DIExpression()), !dbg !2974
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2970, metadata !DIExpression()), !dbg !2975
  %0 = load i64, ptr %size.addr, align 8, !dbg !2976
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2977
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2978

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2979
  %tobool = icmp ne i64 %2, 0, !dbg !2979
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2980

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2981
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2971, metadata !DIExpression()), !dbg !2982
  %3 = load i64, ptr %size.addr, align 8, !dbg !2983
  %cmp = icmp ugt i64 %3, 8192, !dbg !2985
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2986

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2987
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2988
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !2989
  store ptr %call, ptr %retval, align 8, !dbg !2990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2990

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2991
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2991
  store i32 %call2, ptr %index, align 4, !dbg !2992
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2993
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2994
  %9 = ptrtoint ptr %8 to i64, !dbg !2994
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2995
  %idxprom = zext i32 %call3 to i64, !dbg !2996
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2996
  %10 = load i32, ptr %index, align 4, !dbg !2997
  %idxprom4 = zext i32 %10 to i64, !dbg !2996
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2996
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2996
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2998
  %13 = load i64, ptr %size.addr, align 8, !dbg !2999
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !3000
  store ptr %call6, ptr %retval, align 8, !dbg !3001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3001

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !3002
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3003
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3004
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !3005
  store ptr %call8, ptr %retval, align 8, !dbg !3006
  br label %return, !dbg !3006

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3007
  ret ptr %16, !dbg !3007
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3008 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !3009 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3013, metadata !DIExpression()), !dbg !3015
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3014, metadata !DIExpression()), !dbg !3016
  %0 = load i64, ptr %size.addr, align 8, !dbg !3017
  %tobool = icmp ne i64 %0, 0, !dbg !3017
  br i1 %tobool, label %if.end, label %if.then, !dbg !3019

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3020
  br label %return, !dbg !3020

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3021
  %cmp = icmp ule i64 %1, 8, !dbg !3023
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3024

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3025
  br label %return, !dbg !3025

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3026
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3028
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3029

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3030
  %cmp4 = icmp ule i64 %3, 96, !dbg !3031
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3032

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3033
  br label %return, !dbg !3033

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3034
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3036
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3037

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3038
  %cmp9 = icmp ule i64 %5, 192, !dbg !3039
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3040

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3041
  br label %return, !dbg !3041

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3042
  %cmp12 = icmp ule i64 %6, 8, !dbg !3044
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3045

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3046
  br label %return, !dbg !3046

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3047
  %cmp15 = icmp ule i64 %7, 16, !dbg !3049
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3050

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3051
  br label %return, !dbg !3051

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3052
  %cmp18 = icmp ule i64 %8, 32, !dbg !3054
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3055

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3056
  br label %return, !dbg !3056

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3057
  %cmp21 = icmp ule i64 %9, 64, !dbg !3059
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3060

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3061
  br label %return, !dbg !3061

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3062
  %cmp24 = icmp ule i64 %10, 128, !dbg !3064
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3065

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3066
  br label %return, !dbg !3066

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3067
  %cmp27 = icmp ule i64 %11, 256, !dbg !3069
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3070

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3071
  br label %return, !dbg !3071

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3072
  %cmp30 = icmp ule i64 %12, 512, !dbg !3074
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3075

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3076
  br label %return, !dbg !3076

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3077
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3079
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3080

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3081
  br label %return, !dbg !3081

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3082
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3084
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3085

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3086
  br label %return, !dbg !3086

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3087
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3089
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3090

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3091
  br label %return, !dbg !3091

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3092
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3094
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3095

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3096
  br label %return, !dbg !3096

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3097
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3099
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3100

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3101
  br label %return, !dbg !3101

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3102
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3104
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3105

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3106
  br label %return, !dbg !3106

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3107
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3109
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3110

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3111
  br label %return, !dbg !3111

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3112
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3114
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3115

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3116
  br label %return, !dbg !3116

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3117
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3119
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3120

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3121
  br label %return, !dbg !3121

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3122
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3124
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3125

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3126
  br label %return, !dbg !3126

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3127
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3129
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3130

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3131
  br label %return, !dbg !3131

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3132
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3134
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3135

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3136
  br label %return, !dbg !3136

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3137, !range !2777, !noundef !188
  %tobool69 = trunc i8 %25 to i1, !dbg !3137
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3139

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3140

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #19, !dbg !3141, !srcloc !3144
  unreachable, !dbg !3141

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3145

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3146

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3147

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3149

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3147

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !3151, !srcloc !3153
  br label %do.end75, !dbg !3151

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3147

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3154
  br label %return, !dbg !3154

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3155
  ret i32 %26, !dbg !3155
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3156 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !3162 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3166, metadata !DIExpression()), !dbg !3168
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3167, metadata !DIExpression()), !dbg !3169
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3170
  %and = and i32 %0, 17, !dbg !3170
  %cmp = icmp eq i32 %and, 0, !dbg !3170
  %lnot = xor i1 %cmp, true, !dbg !3170
  %lnot1 = xor i1 %lnot, true, !dbg !3170
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3170
  %conv = sext i32 %lnot.ext to i64, !dbg !3170
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3170
  %tobool = icmp ne i64 %expval, 0, !dbg !3170
  br i1 %tobool, label %if.then, label %if.end, !dbg !3172

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3173
  br label %return, !dbg !3173

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3174
  %and2 = and i32 %1, 1, !dbg !3176
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3176
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3177

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3178
  br label %return, !dbg !3178

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3179
  br label %return, !dbg !3179

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3181
  ret i32 %2, !dbg !3181
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3182 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3183 dso_local void @__compiletime_assert_204() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3184 dso_local void @ida_free(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3187 dso_local void @msi_domain_free_msi_descs_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_platform_msi_create_irq_domain205", scope: !2, file: !3, line: 141, type: !175, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.platform-msi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/platform-msi\22 -D KBUILD_BASENAME=\22platform_msi\22 -D KBUILD_MODNAME=\22platform_msi\22 -D __KBUILD_MODNAME=kmod_platform_msi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/platform-msi.ll drivers/base/platform-msi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !174, globals: !179, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/platform-msi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "147b643c3a2f44e304310b9641b7e377")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !63, !72, !77, !82, !88, !94, !113, !121, !139, !145, !159, !164}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_alloc_type", file: !54, line: 36, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./arch/x86/include/asm/hw_irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63f4463629042f334374af478f7e7db8")
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_IOAPIC", value: 1)
!57 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_HPET", value: 2)
!58 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSI", value: 3)
!59 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSIX", value: 4)
!60 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_DMAR", value: 5)
!61 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_AMDVI", value: 6)
!62 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_UV", value: 7)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !71}
!65 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!66 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!67 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!68 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!69 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!70 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!71 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!75 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!76 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!80 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!81 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !83)
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!85 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!86 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!87 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !89, line: 30, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!92 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!93 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !95, line: 12, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!97 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!98 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!99 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!100 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!101 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!102 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!103 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!104 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!105 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!106 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!107 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!108 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!109 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!110 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!111 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!112 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !114, line: 1094, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!115 = !{!116, !117, !118, !119, !120}
!116 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1)
!117 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2)
!118 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4)
!119 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8)
!120 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !122, line: 526, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4852ae4344fcd499a416b3c5d20e2abd")
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!124 = !DIEnumerator(name: "MSI_FLAG_USE_DEF_DOM_OPS", value: 1)
!125 = !DIEnumerator(name: "MSI_FLAG_USE_DEF_CHIP_OPS", value: 2)
!126 = !DIEnumerator(name: "MSI_FLAG_ACTIVATE_EARLY", value: 4)
!127 = !DIEnumerator(name: "MSI_FLAG_MUST_REACTIVATE", value: 8)
!128 = !DIEnumerator(name: "MSI_FLAG_DEV_SYSFS", value: 16)
!129 = !DIEnumerator(name: "MSI_FLAG_ALLOC_SIMPLE_MSI_DESCS", value: 32)
!130 = !DIEnumerator(name: "MSI_FLAG_FREE_MSI_DESCS", value: 64)
!131 = !DIEnumerator(name: "MSI_GENERIC_FLAGS_MASK", value: 65535)
!132 = !DIEnumerator(name: "MSI_DOMAIN_FLAGS_MASK", value: 4294901760, isUnsigned: true)
!133 = !DIEnumerator(name: "MSI_FLAG_MULTI_PCI_MSI", value: 65536)
!134 = !DIEnumerator(name: "MSI_FLAG_PCI_MSIX", value: 131072)
!135 = !DIEnumerator(name: "MSI_FLAG_LEVEL_CAPABLE", value: 262144)
!136 = !DIEnumerator(name: "MSI_FLAG_MSIX_CONTIGUOUS", value: 524288)
!137 = !DIEnumerator(name: "MSI_FLAG_PCI_MSIX_ALLOC_DYN", value: 1048576)
!138 = !DIEnumerator(name: "MSI_FLAG_PCI_IMS", value: 2097152)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "msi_domain_ids", file: !140, line: 16, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/msi_api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fcac0f5d9a7a05197477b5383eee228")
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "MSI_DEFAULT_DOMAIN", value: 0)
!143 = !DIEnumerator(name: "MSI_SECONDARY_DOMAIN", value: 1)
!144 = !DIEnumerator(name: "MSI_MAX_DEVICE_IRQDOMAINS", value: 2)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !114, line: 571, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!147 = !DIEnumerator(name: "IRQCHIP_SET_TYPE_MASKED", value: 1)
!148 = !DIEnumerator(name: "IRQCHIP_EOI_IF_HANDLED", value: 2)
!149 = !DIEnumerator(name: "IRQCHIP_MASK_ON_SUSPEND", value: 4)
!150 = !DIEnumerator(name: "IRQCHIP_ONOFFLINE_ENABLED", value: 8)
!151 = !DIEnumerator(name: "IRQCHIP_SKIP_SET_WAKE", value: 16)
!152 = !DIEnumerator(name: "IRQCHIP_ONESHOT_SAFE", value: 32)
!153 = !DIEnumerator(name: "IRQCHIP_EOI_THREADED", value: 64)
!154 = !DIEnumerator(name: "IRQCHIP_SUPPORTS_LEVEL_MSI", value: 128)
!155 = !DIEnumerator(name: "IRQCHIP_SUPPORTS_NMI", value: 256)
!156 = !DIEnumerator(name: "IRQCHIP_ENABLE_WAKEUP_ON_SUSPEND", value: 512)
!157 = !DIEnumerator(name: "IRQCHIP_AFFINITY_PRE_STARTUP", value: 1024)
!158 = !DIEnumerator(name: "IRQCHIP_IMMUTABLE", value: 2048)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 10, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!161 = !{!162, !163}
!162 = !DIEnumerator(name: "false", value: 0)
!163 = !DIEnumerator(name: "true", value: 1)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !165, line: 364, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!166 = !{!167, !168, !169, !170, !171, !172, !173}
!167 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!168 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!169 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!170 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!171 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!172 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!173 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!174 = !{!175, !176, !178}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !177, line: 154, baseType: !7)
!177 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!178 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!179 = !{!0, !180, !182, !184, !189, !195, !200, !205}
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_platform_msi_domain_alloc_irqs206", scope: !2, file: !3, line: 222, type: !175, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_platform_msi_domain_free_irqs207", scope: !2, file: !3, line: 233, type: !175, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "platform_device_msi_lock_class", scope: !2, file: !3, line: 250, type: !186, isLocal: true, isDefinition: true)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !187, line: 206, elements: !188)
!187 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!188 = !{}
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 224, elements: !193)
!192 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !{!194}
!194 = !DISubrange(count: 28)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 159, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 288, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 36)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !165, line: 480, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 168, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 21)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "platform_msi_devid_ida", scope: !2, file: !3, line: 32, type: !207, isLocal: true, isDefinition: true)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !208, line: 246, size: 128, elements: !209)
!208 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !207, file: !208, line: 247, baseType: !211, size: 128)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !212, line: 296, size: 128, elements: !213)
!212 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!213 = !{!214, !257, !258}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !211, file: !212, line: 297, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !216, line: 29, baseType: !217)
!216 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !216, line: 17, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !216, line: 18, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !216, line: 18, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !220, file: !216, line: 19, baseType: !223, size: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !224, line: 14, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !223, file: !224, line: 15, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !228, line: 44, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !228, line: 14, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 15, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 15, size: 32, elements: !233)
!233 = !{!234, !239, !249}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !232, file: !228, line: 16, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !177, line: 174, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 172, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !236, file: !177, line: 173, baseType: !46, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 24, baseType: !240, size: 16)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 24, size: 16, elements: !241)
!241 = !{!242, !248}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !240, file: !228, line: 25, baseType: !243, size: 8)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !244, line: 17, baseType: !245)
!244 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !246, line: 21, baseType: !247)
!246 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!247 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !240, file: !228, line: 26, baseType: !243, size: 8, offset: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 28, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 28, size: 32, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !250, file: !228, line: 29, baseType: !253, size: 16)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !244, line: 19, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !246, line: 24, baseType: !255)
!255 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !250, file: !228, line: 30, baseType: !253, size: 16, offset: 16)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !211, file: !212, line: 299, baseType: !176, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !211, file: !212, line: 300, baseType: !175, size: 64, offset: 64)
!259 = !{i32 7, !"Dwarf Version", i32 5}
!260 = !{i32 2, !"Debug Info Version", i32 3}
!261 = !{i32 1, !"wchar_size", i32 2}
!262 = !{i32 8, !"cf-protection-branch", i32 1}
!263 = !{i32 4, !"function_return_thunk_extern", i32 1}
!264 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!265 = !{i32 1, !"Code Model", i32 2}
!266 = !{i32 1, !"override-stack-alignment", i32 8}
!267 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!268 = distinct !DISubprogram(name: "platform_msi_create_irq_domain", scope: !3, file: !3, line: 122, type: !269, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2382)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !308, !2327, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !273, line: 150, size: 1408, elements: !274)
!273 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!274 = !{!275, !281, !284, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2313, !2314, !2315, !2316, !2377, !2378, !2379, !2380}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !272, file: !273, line: 151, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !177, line: 190, size: 128, elements: !277)
!277 = !{!278, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !177, line: 191, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !276, file: !177, line: 191, baseType: !279, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !273, line: 152, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !272, file: !273, line: 153, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !273, line: 88, size: 640, elements: !288)
!288 = !{!289, !2051, !2062, !2066, !2070, !2076, !2080, !2084, !2184, !2188}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !287, file: !273, line: 89, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!46, !271, !293, !94}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !295, line: 48, size: 1152, elements: !296)
!295 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!296 = !{!297, !298, !302, !303, !2037, !2045, !2046, !2047, !2048, !2049, !2050}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !295, line: 49, baseType: !282, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !294, file: !295, line: 50, baseType: !299, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !295, line: 25, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !244, line: 21, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !246, line: 27, baseType: !7)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !294, file: !295, line: 51, baseType: !282, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !294, file: !295, line: 52, baseType: !304, size: 512, offset: 192)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !305, line: 41, size: 512, elements: !306)
!305 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!306 = !{!307, !309, !2033, !2034, !2035, !2036}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !304, file: !305, line: 42, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !304, file: !305, line: 43, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !305, line: 125, size: 1408, elements: !313)
!313 = !{!314, !318, !322, !330, !1963, !1964, !1968, !1972, !1976, !1980, !1984, !1985, !1989, !1993, !1997, !2008, !2009, !2010, !2011, !2021, !2025, !2029}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !312, file: !305, line: 126, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!308, !308}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !312, file: !305, line: 127, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !308}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !312, file: !305, line: 128, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !328}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !177, line: 35, baseType: !327)
!327 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !312, file: !305, line: 129, baseType: !331, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !328, !336}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !339)
!339 = !{!340, !951, !953, !956, !957, !1008, !1478, !1479, !1480, !1481, !1482, !1489, !1659, !1672, !1875, !1879, !1881, !1882, !1883, !1887, !1894, !1895, !1898, !1901, !1902, !1903, !1904, !1907, !1908, !1909, !1910, !1940, !1941, !1942, !1945, !1948, !1957, !1958, !1959, !1960, !1961, !1962}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !338, file: !26, line: 706, baseType: !341, size: 512)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !342, line: 64, size: 512, elements: !343)
!342 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!343 = !{!344, !345, !346, !348, !395, !822, !936, !946, !947, !948, !949, !950}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !342, line: 65, baseType: !282, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !341, file: !342, line: 66, baseType: !276, size: 128, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !341, file: !342, line: 67, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !341, file: !342, line: 68, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !342, line: 168, size: 768, elements: !351)
!351 = !{!352, !353, !354, !355}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !350, file: !342, line: 169, baseType: !276, size: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !350, file: !342, line: 170, baseType: !215, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !350, file: !342, line: 171, baseType: !341, size: 512, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !350, file: !342, line: 172, baseType: !356, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !342, line: 133, size: 192, elements: !359)
!359 = !{!360, !367, !372}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !358, file: !342, line: 134, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!46, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !342, line: 135, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!282, !365}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !358, file: !342, line: 136, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!46, !365, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !342, line: 125, size: 20736, elements: !379)
!379 = !{!380, !385, !389, !390, !394}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !378, file: !342, line: 126, baseType: !381, size: 192)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 192, elements: !383)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!383 = !{!384}
!384 = !DISubrange(count: 3)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !378, file: !342, line: 127, baseType: !386, size: 4096, offset: 192)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 4096, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !378, file: !342, line: 128, baseType: !46, size: 32, offset: 4288)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !378, file: !342, line: 129, baseType: !391, size: 16384, offset: 4320)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 16384, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 2048)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !378, file: !342, line: 130, baseType: !46, size: 32, offset: 20704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !341, file: !342, line: 69, baseType: !396, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !342, line: 116, size: 384, elements: !399)
!399 = !{!400, !404, !432, !769, !800, !804}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !398, file: !342, line: 117, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !347}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !398, file: !342, line: 118, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !408, line: 254, size: 128, elements: !409)
!408 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!409 = !{!410, !425}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !407, file: !408, line: 255, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !347, !419, !382}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !177, line: 66, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !416, line: 73, baseType: !417)
!416 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !416, line: 15, baseType: !418)
!418 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !408, line: 30, size: 128, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !408, line: 31, baseType: !282, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !420, file: !408, line: 32, baseType: !424, size: 16, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !177, line: 24, baseType: !255)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !407, file: !408, line: 256, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!414, !347, !419, !282, !429}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !177, line: 61, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !416, line: 72, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !416, line: 16, baseType: !178)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !398, file: !342, line: 119, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !408, line: 84, size: 320, elements: !437)
!437 = !{!438, !439, !443, !765, !767}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !408, line: 85, baseType: !282, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !436, file: !408, line: 86, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!424, !347, !419, !46}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !436, file: !408, line: 88, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!424, !347, !447, !46}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !408, line: 175, size: 512, elements: !449)
!449 = !{!450, !451, !452, !453, !460, !470, !471}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !448, file: !408, line: 176, baseType: !420, size: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !448, file: !408, line: 177, baseType: !429, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !448, file: !408, line: 178, baseType: !175, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !448, file: !408, line: 179, baseType: !454, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !459, line: 32, flags: DIFlagFwdDecl)
!459 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!460 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !448, file: !408, line: 180, baseType: !461, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!414, !464, !347, !447, !382, !467, !429}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !466, line: 537, flags: DIFlagFwdDecl)
!466 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !177, line: 52, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !416, line: 88, baseType: !469)
!469 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !448, file: !408, line: 182, baseType: !461, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !448, file: !408, line: 184, baseType: !472, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!46, !464, !347, !447, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !459, line: 625, size: 1344, elements: !477)
!477 = !{!478, !495, !715, !721, !728, !729, !734, !735, !747, !748, !751, !755, !756, !757, !758, !759, !763}
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !459, line: 628, baseType: !479, size: 128)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !459, line: 628, size: 128, elements: !480)
!480 = !{!481, !486}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !459, line: 629, baseType: !482, size: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !459, line: 629, size: 128, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !482, file: !459, line: 631, baseType: !178, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !482, file: !459, line: 632, baseType: !178, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !479, file: !459, line: 635, baseType: !487, size: 128, align: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !177, line: 232, size: 128, align: 64, elements: !488)
!488 = !{!489, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !177, line: 233, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !487, file: !177, line: 234, baseType: !492, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !490}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !476, file: !459, line: 639, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !459, line: 733, size: 10240, elements: !498)
!498 = !{!499, !711}
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !459, line: 734, baseType: !500, size: 10240)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !497, file: !459, line: 734, size: 10240, elements: !501)
!501 = !{!502, !506, !519, !523, !524, !525, !526, !527, !528, !536, !537, !538, !547, !548, !557, !558, !559, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !606, !620, !623, !676, !677, !678, !681, !685, !686, !689, !690, !691, !698, !699}
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !459, line: 739, baseType: !503, size: 512, align: 512)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !500, file: !459, line: 739, size: 512, align: 512, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !503, file: !459, line: 747, baseType: !235, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !500, file: !459, line: 750, baseType: !507, size: 128, offset: 512)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !508, line: 218, size: 128, elements: !509)
!508 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!509 = !{!510, !517, !518}
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !508, line: 219, baseType: !511, size: 32)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !508, line: 219, size: 32, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !511, file: !508, line: 220, baseType: !215, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !511, file: !508, line: 221, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !508, line: 197, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 197, elements: !188)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !507, file: !508, line: 223, baseType: !7, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !507, file: !508, line: 224, baseType: !175, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !500, file: !459, line: 752, baseType: !520, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!178, !464, !178, !178, !178, !178}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !500, file: !459, line: 756, baseType: !178, size: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !500, file: !459, line: 757, baseType: !178, size: 64, offset: 768)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !500, file: !459, line: 760, baseType: !178, size: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !500, file: !459, line: 761, baseType: !178, size: 64, offset: 896)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !500, file: !459, line: 763, baseType: !178, size: 64, offset: 960)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !500, file: !459, line: 764, baseType: !529, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !466, line: 299, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 299, size: 64, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !531, file: !466, line: 299, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !535, line: 18, baseType: !178)
!535 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!536 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !500, file: !459, line: 773, baseType: !235, size: 32, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !500, file: !459, line: 785, baseType: !235, size: 32, offset: 1120)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !500, file: !459, line: 795, baseType: !539, size: 64, offset: 1152)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !459, line: 726, size: 128, elements: !541)
!541 = !{!542, !546}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !540, file: !459, line: 727, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !244, line: 23, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !246, line: 31, baseType: !545)
!545 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !540, file: !459, line: 728, baseType: !46, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !500, file: !459, line: 801, baseType: !178, size: 64, offset: 1216)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !500, file: !459, line: 804, baseType: !549, size: 64, offset: 1280)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !550, line: 13, baseType: !551)
!550 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !177, line: 181, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 179, size: 64, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !552, file: !177, line: 180, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !244, line: 22, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !246, line: 30, baseType: !469)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !500, file: !459, line: 806, baseType: !46, size: 32, offset: 1344)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !500, file: !459, line: 808, baseType: !215, size: 32, offset: 1376)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !500, file: !459, line: 823, baseType: !560, size: 320, offset: 1408)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !561, line: 48, size: 320, elements: !562)
!561 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!562 = !{!563, !564, !565, !570, !572}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !560, file: !561, line: 49, baseType: !549, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !560, file: !561, line: 55, baseType: !549, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !560, file: !561, line: 57, baseType: !566, size: 32, offset: 128)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !567, line: 15, size: 32, elements: !568)
!567 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !566, file: !567, line: 20, baseType: !235, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !560, file: !561, line: 59, baseType: !571, size: 32, offset: 160)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !224, line: 23, baseType: !223)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !560, file: !561, line: 60, baseType: !276, size: 128, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !500, file: !459, line: 825, baseType: !276, size: 128, offset: 1728)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !500, file: !459, line: 845, baseType: !46, size: 32, offset: 1856)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !500, file: !459, line: 849, baseType: !178, size: 64, offset: 1920)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !500, file: !459, line: 850, baseType: !178, size: 64, offset: 1984)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !500, file: !459, line: 852, baseType: !178, size: 64, offset: 2048)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !500, file: !459, line: 853, baseType: !178, size: 64, offset: 2112)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !500, file: !459, line: 854, baseType: !551, size: 64, offset: 2176)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !500, file: !459, line: 855, baseType: !178, size: 64, offset: 2240)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !500, file: !459, line: 856, baseType: !178, size: 64, offset: 2304)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !500, file: !459, line: 857, baseType: !178, size: 64, offset: 2368)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !500, file: !459, line: 858, baseType: !178, size: 64, offset: 2432)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !500, file: !459, line: 865, baseType: !585, size: 32, offset: 2496)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !586, line: 69, baseType: !587)
!586 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !586, line: 64, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !587, file: !586, line: 65, baseType: !7, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !500, file: !459, line: 867, baseType: !215, size: 32, offset: 2528)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !500, file: !459, line: 869, baseType: !178, size: 64, offset: 2560)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !500, file: !459, line: 869, baseType: !178, size: 64, offset: 2624)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !500, file: !459, line: 869, baseType: !178, size: 64, offset: 2688)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !500, file: !459, line: 869, baseType: !178, size: 64, offset: 2752)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !500, file: !459, line: 870, baseType: !178, size: 64, offset: 2816)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !500, file: !459, line: 870, baseType: !178, size: 64, offset: 2880)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !500, file: !459, line: 870, baseType: !178, size: 64, offset: 2944)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !500, file: !459, line: 871, baseType: !178, size: 64, offset: 3008)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !500, file: !459, line: 871, baseType: !178, size: 64, offset: 3072)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !500, file: !459, line: 871, baseType: !178, size: 64, offset: 3136)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !500, file: !459, line: 871, baseType: !178, size: 64, offset: 3200)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !500, file: !459, line: 873, baseType: !603, size: 3328, offset: 3264)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 3328, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 52)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !500, file: !459, line: 875, baseType: !607, size: 1280, offset: 6592)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 1280, elements: !618)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !609, line: 22, size: 320, elements: !610)
!609 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!610 = !{!611, !612, !613, !614}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !608, file: !609, line: 23, baseType: !571, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !608, file: !609, line: 24, baseType: !555, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !608, file: !609, line: 26, baseType: !276, size: 128, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !608, file: !609, line: 28, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !244, line: 20, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !246, line: 26, baseType: !46)
!618 = !{!619}
!619 = !DISubrange(count: 4)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !500, file: !459, line: 877, baseType: !621, size: 64, offset: 7872)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !459, line: 877, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !500, file: !459, line: 880, baseType: !624, size: 1088, offset: 7936)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !625, line: 72, baseType: !626)
!625 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 23, size: 1088, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !635, !636, !644, !645, !670, !671, !672}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !626, file: !625, line: 28, baseType: !543, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !626, file: !625, line: 38, baseType: !551, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !626, file: !625, line: 40, baseType: !178, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !626, file: !625, line: 43, baseType: !560, size: 320, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !626, file: !625, line: 44, baseType: !633, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !625, line: 44, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !625, line: 48, baseType: !178, size: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !626, file: !625, line: 59, baseType: !637, size: 256, offset: 640)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !638, line: 66, size: 256, elements: !639)
!638 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!639 = !{!640, !641, !642, !643}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !637, file: !638, line: 67, baseType: !549, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !637, file: !638, line: 68, baseType: !571, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !637, file: !638, line: 70, baseType: !566, size: 32, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !637, file: !638, line: 72, baseType: !276, size: 128, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !626, file: !625, line: 60, baseType: !175, size: 64, offset: 896)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !626, file: !625, line: 61, baseType: !646, size: 64, offset: 960)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !649, line: 13, size: 1216, elements: !650)
!649 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !648, file: !649, line: 14, baseType: !175, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !648, file: !649, line: 15, baseType: !178, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !648, file: !649, line: 17, baseType: !178, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !648, file: !649, line: 17, baseType: !178, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !648, file: !649, line: 18, baseType: !178, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !648, file: !649, line: 18, baseType: !178, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !648, file: !649, line: 19, baseType: !334, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !648, file: !649, line: 21, baseType: !418, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !648, file: !649, line: 23, baseType: !418, size: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !648, file: !649, line: 24, baseType: !418, size: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !648, file: !649, line: 25, baseType: !418, size: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !648, file: !649, line: 26, baseType: !418, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !648, file: !649, line: 27, baseType: !418, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !648, file: !649, line: 28, baseType: !418, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !648, file: !649, line: 29, baseType: !418, size: 64, offset: 896)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !648, file: !649, line: 30, baseType: !418, size: 64, offset: 960)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !648, file: !649, line: 31, baseType: !418, size: 64, offset: 1024)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !648, file: !649, line: 32, baseType: !418, size: 64, offset: 1088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !648, file: !649, line: 33, baseType: !418, size: 64, offset: 1152)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !626, file: !625, line: 63, baseType: !235, size: 32, offset: 1024)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !626, file: !625, line: 69, baseType: !253, size: 16, offset: 1056)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !626, file: !625, line: 70, baseType: !673, size: 16, offset: 1072)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !244, line: 18, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !246, line: 23, baseType: !675)
!675 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !459, line: 882, baseType: !178, size: 64, offset: 9024)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !500, file: !459, line: 885, baseType: !215, size: 32, offset: 9088)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !500, file: !459, line: 886, baseType: !679, size: 64, offset: 9152)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !459, line: 732, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !500, file: !459, line: 901, baseType: !682, size: 64, offset: 9216)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !684, line: 18, flags: DIFlagFwdDecl)
!684 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !500, file: !459, line: 904, baseType: !464, size: 64, offset: 9280)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !500, file: !459, line: 906, baseType: !687, size: 64, offset: 9344)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !459, line: 906, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !500, file: !459, line: 930, baseType: !235, size: 32, offset: 9408)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !500, file: !459, line: 933, baseType: !235, size: 32, offset: 9440)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !500, file: !459, line: 935, baseType: !692, size: 64, offset: 9472)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !693, line: 103, size: 64, elements: !694)
!693 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !692, file: !693, line: 104, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !693, line: 101, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !500, file: !459, line: 940, baseType: !549, size: 64, offset: 9536)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !500, file: !459, line: 942, baseType: !700, size: 256, offset: 9600)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !701, line: 98, size: 256, elements: !702)
!701 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !700, file: !701, line: 99, baseType: !549, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !700, file: !701, line: 100, baseType: !276, size: 128, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !700, file: !701, line: 101, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !701, line: 21, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !497, file: !459, line: 986, baseType: !712, offset: 10240)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: -1)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !476, file: !459, line: 640, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !466, line: 297, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !466, line: 297, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !717, file: !466, line: 297, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !535, line: 19, baseType: !178)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !459, line: 646, baseType: !722, size: 64, offset: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !459, line: 646, size: 64, elements: !723)
!723 = !{!724, !727}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !722, file: !459, line: 647, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !459, line: 542, baseType: !178)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !722, file: !459, line: 648, baseType: !726, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !476, file: !459, line: 666, baseType: !46, size: 32, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !476, file: !459, line: 667, baseType: !730, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !459, line: 579, size: 320, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !459, line: 580, baseType: !560, size: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !476, file: !459, line: 670, baseType: !326, size: 8, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !476, file: !459, line: 681, baseType: !736, size: 256, offset: 512)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !476, file: !459, line: 678, size: 256, elements: !737)
!737 = !{!738, !746}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !736, file: !459, line: 679, baseType: !739, size: 192, align: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !740, line: 5, size: 192, align: 64, elements: !741)
!740 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!741 = !{!742, !743, !745}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !739, file: !740, line: 6, baseType: !178, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !739, file: !740, line: 7, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !739, file: !740, line: 8, baseType: !744, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !736, file: !459, line: 680, baseType: !178, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !476, file: !459, line: 689, baseType: !276, size: 128, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !476, file: !459, line: 691, baseType: !749, size: 64, offset: 896)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !459, line: 691, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !476, file: !459, line: 694, baseType: !752, size: 64, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !459, line: 694, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !476, file: !459, line: 697, baseType: !178, size: 64, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !476, file: !459, line: 699, baseType: !464, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !476, file: !459, line: 700, baseType: !175, size: 64, offset: 1152)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !476, file: !459, line: 711, baseType: !549, size: 64, offset: 1216)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !476, file: !459, line: 717, baseType: !760, size: 64, offset: 1280)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !762, line: 54, flags: DIFlagFwdDecl)
!762 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !476, file: !459, line: 722, baseType: !764, offset: 1344)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !459, line: 570, elements: !188)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !436, file: !408, line: 90, baseType: !766, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !436, file: !408, line: 91, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !398, file: !342, line: 120, baseType: !770, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !365}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !776)
!776 = !{!777, !778, !782, !786, !792, !796}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !6, line: 40, baseType: !5, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !775, file: !6, line: 41, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!326}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !775, file: !6, line: 42, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!175}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !775, file: !6, line: 43, baseType: !787, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!334, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !775, file: !6, line: 44, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!334}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !775, file: !6, line: 45, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !175}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !398, file: !342, line: 121, baseType: !801, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!334, !365}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !398, file: !342, line: 122, baseType: !805, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !365, !808, !815}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !684, line: 23, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 21, size: 32, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !810, file: !684, line: 22, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !177, line: 37, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !416, line: 49, baseType: !7)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !684, line: 28, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 26, size: 32, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !817, file: !684, line: 27, baseType: !820, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !177, line: 38, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !416, line: 50, baseType: !7)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !341, file: !342, line: 70, baseType: !823, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !825, line: 190, size: 1152, elements: !826)
!825 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !928, !929, !930, !931, !932, !935}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !824, file: !825, line: 191, baseType: !235, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !824, file: !825, line: 192, baseType: !235, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !824, file: !825, line: 202, baseType: !823, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !824, file: !825, line: 203, baseType: !282, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !824, file: !825, line: 205, baseType: !739, size: 192, align: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !824, file: !825, line: 207, baseType: !334, size: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !824, file: !825, line: 208, baseType: !7, size: 32, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !825, line: 209, baseType: !835, size: 256, offset: 512)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !825, line: 209, size: 256, elements: !836)
!836 = !{!837, !849, !853}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !835, file: !825, line: 210, baseType: !838, size: 256)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !825, line: 153, size: 256, elements: !839)
!839 = !{!840, !841, !845, !848}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !838, file: !825, line: 154, baseType: !178, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !838, file: !825, line: 156, baseType: !842, size: 64, offset: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !740, line: 12, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !842, file: !740, line: 13, baseType: !744, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !838, file: !825, line: 162, baseType: !846, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !825, line: 162, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !838, file: !825, line: 167, baseType: !178, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !835, file: !825, line: 211, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !825, line: 170, size: 64, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !850, file: !825, line: 171, baseType: !823, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !835, file: !825, line: 212, baseType: !854, size: 256)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !825, line: 174, size: 256, elements: !855)
!855 = !{!856, !923, !926, !927}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !854, file: !825, line: 175, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !825, line: 271, size: 768, elements: !860)
!860 = !{!861, !883, !887, !891, !896, !900, !904, !908, !909, !910, !911, !919}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !859, file: !825, line: 276, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!46, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !825, line: 251, size: 1216, elements: !867)
!867 = !{!868, !869, !870, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !866, file: !825, line: 253, baseType: !823, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !866, file: !825, line: 254, baseType: !464, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !866, file: !825, line: 255, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !762, line: 66, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !866, file: !825, line: 256, baseType: !175, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !866, file: !825, line: 259, baseType: !637, size: 256, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !866, file: !825, line: 260, baseType: !637, size: 256, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !866, file: !825, line: 261, baseType: !46, size: 32, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !866, file: !825, line: 262, baseType: !276, size: 128, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !866, file: !825, line: 263, baseType: !382, size: 64, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !866, file: !825, line: 265, baseType: !429, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !866, file: !825, line: 266, baseType: !326, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !866, file: !825, line: 267, baseType: !326, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !866, file: !825, line: 268, baseType: !752, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !859, file: !825, line: 277, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !865}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !859, file: !825, line: 290, baseType: !888, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!46, !871, !175}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !859, file: !825, line: 292, baseType: !892, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!175, !871, !895}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !859, file: !825, line: 293, baseType: !897, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!175, !871, !175, !895}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !859, file: !825, line: 294, baseType: !901, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !871, !175}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !859, file: !825, line: 296, baseType: !905, size: 64, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!414, !865, !382, !429, !467}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !859, file: !825, line: 306, baseType: !429, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !859, file: !825, line: 313, baseType: !326, size: 8, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !859, file: !825, line: 314, baseType: !905, size: 64, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !859, file: !825, line: 317, baseType: !912, size: 64, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!915, !865, !917}
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !916, line: 59, baseType: !7)
!916 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !825, line: 31, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !859, file: !825, line: 320, baseType: !920, size: 64, offset: 704)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!46, !865, !475}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !854, file: !825, line: 176, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !825, line: 35, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !854, file: !825, line: 177, baseType: !467, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !854, file: !825, line: 178, baseType: !823, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !824, file: !825, line: 215, baseType: !175, size: 64, offset: 768)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !824, file: !825, line: 221, baseType: !543, size: 64, offset: 832)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !824, file: !825, line: 223, baseType: !255, size: 16, offset: 896)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !824, file: !825, line: 224, baseType: !424, size: 16, offset: 912)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !824, file: !825, line: 225, baseType: !933, size: 64, offset: 960)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !825, line: 36, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !824, file: !825, line: 227, baseType: !487, size: 128, align: 64, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !341, file: !342, line: 71, baseType: !937, size: 32, offset: 448)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !938, line: 19, size: 32, elements: !939)
!938 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!939 = !{!940}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !937, file: !938, line: 20, baseType: !941, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !942, line: 113, baseType: !943)
!942 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !942, line: 111, size: 32, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !943, file: !942, line: 112, baseType: !235, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !341, file: !342, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !341, file: !342, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !341, file: !342, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !341, file: !342, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !341, file: !342, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !338, file: !26, line: 707, baseType: !952, size: 64, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !338, file: !26, line: 709, baseType: !954, size: 64, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !338, file: !26, line: 711, baseType: !282, size: 64, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !338, file: !26, line: 712, baseType: !958, size: 64, offset: 704)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !961)
!961 = !{!962, !963, !964, !968, !973, !977}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !960, file: !26, line: 90, baseType: !282, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !960, file: !26, line: 91, baseType: !433, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !960, file: !26, line: 92, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!46, !336, !377}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !960, file: !26, line: 93, baseType: !969, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!382, !336, !972, !808, !815}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !960, file: !26, line: 95, baseType: !974, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !952}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !960, file: !26, line: 97, baseType: !978, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !981)
!981 = !{!982, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !980, file: !38, line: 287, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!46, !952}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !980, file: !38, line: 288, baseType: !974, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !980, file: !38, line: 289, baseType: !983, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !980, file: !38, line: 290, baseType: !983, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !980, file: !38, line: 291, baseType: !983, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !980, file: !38, line: 292, baseType: !983, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !980, file: !38, line: 293, baseType: !983, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !980, file: !38, line: 294, baseType: !983, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !980, file: !38, line: 295, baseType: !983, size: 64, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !980, file: !38, line: 296, baseType: !983, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !980, file: !38, line: 297, baseType: !983, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !980, file: !38, line: 298, baseType: !983, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !980, file: !38, line: 299, baseType: !983, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !980, file: !38, line: 300, baseType: !983, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !980, file: !38, line: 301, baseType: !983, size: 64, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !980, file: !38, line: 302, baseType: !983, size: 64, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !980, file: !38, line: 303, baseType: !983, size: 64, offset: 1024)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !980, file: !38, line: 304, baseType: !983, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !980, file: !38, line: 305, baseType: !983, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !980, file: !38, line: 306, baseType: !983, size: 64, offset: 1216)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !980, file: !38, line: 307, baseType: !983, size: 64, offset: 1280)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !980, file: !38, line: 308, baseType: !983, size: 64, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !980, file: !38, line: 309, baseType: !983, size: 64, offset: 1408)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !338, file: !26, line: 714, baseType: !1009, size: 64, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1012, line: 80, size: 1344, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1477}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1011, file: !1012, line: 81, baseType: !282, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1011, file: !1012, line: 82, baseType: !282, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1011, file: !1012, line: 83, baseType: !433, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1011, file: !1012, line: 84, baseType: !433, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1011, file: !1012, line: 85, baseType: !433, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1011, file: !1012, line: 87, baseType: !1020, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!46, !952, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1408, !1409, !1410, !1411, !1427, !1440, !1441, !1442, !1443, !1444, !1452, !1453, !1454, !1455, !1456, !1457}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1024, file: !20, line: 97, baseType: !282, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1024, file: !20, line: 98, baseType: !1009, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1024, file: !20, line: 100, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1038, !1059, !1085, !1086, !1087, !1088, !1092, !1095, !1096, !1097, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1165, !1169, !1189, !1207, !1208, !1209, !1210, !1219, !1242, !1243, !1246, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1260, !1261, !1366, !1374, !1375, !1376, !1378, !1382, !1383, !1387, !1388, !1389, !1390, !1392, !1393, !1394, !1401, !1402, !1403, !1407}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1030, file: !13, line: 403, baseType: !12, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1030, file: !13, line: 406, baseType: !276, size: 128, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1030, file: !13, line: 409, baseType: !1035, size: 448, offset: 192)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 448, elements: !1036)
!1036 = !{!1037}
!1037 = !DISubrange(count: 56)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1030, file: !13, line: 417, baseType: !1039, size: 768, offset: 640)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1047}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1039, file: !13, line: 46, baseType: !341, size: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1039, file: !13, line: 47, baseType: !1029, size: 64, offset: 512)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1039, file: !13, line: 48, baseType: !347, size: 64, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1039, file: !13, line: 49, baseType: !1045, size: 64, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1039, file: !13, line: 50, baseType: !1048, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1050, line: 26, size: 256, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1049, file: !1050, line: 27, baseType: !7, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1049, file: !1050, line: 28, baseType: !1054, size: 192, offset: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1055, line: 43, size: 192, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1054, file: !1055, line: 44, baseType: !571, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1054, file: !1055, line: 45, baseType: !276, size: 128, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1030, file: !13, line: 418, baseType: !1060, size: 64, offset: 1408)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !1062)
!1062 = !{!1063, !1064, !1069, !1073, !1077, !1081}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1061, file: !13, line: 54, baseType: !420, size: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1061, file: !13, line: 55, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!414, !1060, !1068, !382}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1061, file: !13, line: 57, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!414, !1060, !1068, !282, !429}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1061, file: !13, line: 59, baseType: !1074, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1029, !282}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1061, file: !13, line: 60, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!46, !1029}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1061, file: !13, line: 61, baseType: !1082, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1029}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1030, file: !13, line: 419, baseType: !282, size: 64, offset: 1472)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1030, file: !13, line: 420, baseType: !282, size: 64, offset: 1536)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1030, file: !13, line: 421, baseType: !347, size: 64, offset: 1600)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1030, file: !13, line: 424, baseType: !1089, size: 64, offset: 1664)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1091)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1030, file: !13, line: 425, baseType: !1093, size: 64, offset: 1728)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1030, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1030, file: !13, line: 435, baseType: !637, size: 256, offset: 1856)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1030, file: !13, line: 437, baseType: !1098, size: 64, offset: 2112)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1100, line: 69, size: 320, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1101 = !{!1102, !1103, !1104, !1121, !1123, !1127, !1128}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1099, file: !1100, line: 70, baseType: !282, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1099, file: !1100, line: 71, baseType: !1029, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1099, file: !1100, line: 72, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1100, line: 47, size: 256, elements: !1108)
!1108 = !{!1109, !1110, !1116, !1120}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1107, file: !1100, line: 49, baseType: !7, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1107, file: !1100, line: 51, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!46, !282, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1107, file: !1100, line: 53, baseType: !1117, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!46, !382, !1114}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1107, file: !1100, line: 55, baseType: !797, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1099, file: !1100, line: 73, baseType: !1122, size: 16, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1099, file: !1100, line: 74, baseType: !1124, size: 8, offset: 208)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !244, line: 16, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !246, line: 20, baseType: !1126)
!1126 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1099, file: !1100, line: 75, baseType: !243, size: 8, offset: 216)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !1100, line: 76, baseType: !1129, size: 64, offset: 256)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !1100, line: 76, size: 64, elements: !1130)
!1130 = !{!1131, !1132, !1139}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1129, file: !1100, line: 77, baseType: !175, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1129, file: !1100, line: 78, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1100, line: 86, size: 128, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1135, file: !1100, line: 87, baseType: !7, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1135, file: !1100, line: 88, baseType: !382, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1129, file: !1100, line: 79, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1100, line: 92, size: 256, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1148, !1149}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1142, file: !1100, line: 94, baseType: !7, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1142, file: !1100, line: 95, baseType: !7, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1142, file: !1100, line: 96, baseType: !1147, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1142, file: !1100, line: 97, baseType: !1105, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1142, file: !1100, line: 98, baseType: !175, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1030, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1030, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1030, file: !13, line: 442, baseType: !1089, size: 64, offset: 2240)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1030, file: !13, line: 443, baseType: !1093, size: 64, offset: 2304)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1030, file: !13, line: 444, baseType: !326, size: 8, offset: 2368)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1030, file: !13, line: 451, baseType: !326, size: 8, offset: 2376)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1030, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1030, file: !13, line: 455, baseType: !1158, size: 64, offset: 2432)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1160, line: 23, size: 96, elements: !1161)
!1160 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1159, file: !1160, line: 24, baseType: !46, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1159, file: !1160, line: 24, baseType: !46, size: 32, offset: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1159, file: !1160, line: 24, baseType: !46, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1030, file: !13, line: 458, baseType: !1166, size: 64, offset: 2496)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!46}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1030, file: !13, line: 460, baseType: !1170, size: 4032, align: 512, offset: 2560)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1171, size: 4032, elements: !1187)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1172)
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1171, file: !13, line: 363, baseType: !175, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1171, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1171, file: !13, line: 367, baseType: !1176, size: 448, offset: 128)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1176, file: !13, line: 320, baseType: !1029, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1176, file: !13, line: 321, baseType: !1180, size: 384, offset: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1181, line: 40, size: 384, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1180, file: !1181, line: 41, baseType: !1184, size: 384, align: 64)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 384, align: 64, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 2)
!1187 = !{!1188}
!1188 = !DISubrange(count: 7)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1030, file: !13, line: 463, baseType: !1190, size: 192, offset: 6592)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1191, line: 8, size: 192, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1192 = !{!1193, !1194, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1190, file: !1191, line: 10, baseType: !7, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1190, file: !1191, line: 11, baseType: !1195, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1190, file: !1191, line: 12, baseType: !1197, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1199, line: 59, size: 48, elements: !1200)
!1199 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1198, file: !1199, line: 60, baseType: !673, size: 16)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1198, file: !1199, line: 61, baseType: !673, size: 16, offset: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1198, file: !1199, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1198, file: !1199, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1198, file: !1199, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1198, file: !1199, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1030, file: !13, line: 465, baseType: !178, size: 64, offset: 6784)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1030, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1030, file: !13, line: 470, baseType: !276, size: 128, offset: 6912)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1030, file: !13, line: 471, baseType: !1211, size: 64, offset: 7040)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1213, line: 33, size: 96, elements: !1214)
!1213 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1212, file: !1213, line: 37, baseType: !46, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1212, file: !1213, line: 43, baseType: !46, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1212, file: !1213, line: 45, baseType: !255, size: 16, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1213, line: 47, baseType: !255, size: 16, offset: 80)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1030, file: !13, line: 476, baseType: !1220, size: 64, offset: 7104)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1222)
!1222 = !{!1223, !1239, !1240, !1241}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1221, file: !13, line: 379, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1226, line: 204, baseType: !1227)
!1226 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1226, line: 197, size: 192, elements: !1228)
!1228 = !{!1229, !1231, !1232, !1233, !1235, !1237}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1227, file: !1226, line: 198, baseType: !1230, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1226, line: 21, baseType: !301)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1227, file: !1226, line: 199, baseType: !247, size: 8, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1227, file: !1226, line: 200, baseType: !247, size: 8, offset: 40)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1227, file: !1226, line: 201, baseType: !1234, size: 16, offset: 48)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1226, line: 17, baseType: !254)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1227, file: !1226, line: 202, baseType: !1236, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1226, line: 16, baseType: !544)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1227, file: !1226, line: 203, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1226, line: 22, baseType: !544)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1221, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1221, file: !13, line: 381, baseType: !382, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1221, file: !13, line: 382, baseType: !382, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1030, file: !13, line: 477, baseType: !1221, size: 256, offset: 7168)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1030, file: !13, line: 480, baseType: !1244, size: 64, offset: 7424)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1030, file: !13, line: 483, baseType: !1247, size: 64, offset: 7488)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1030, file: !13, line: 488, baseType: !382, size: 64, offset: 7552)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1030, file: !13, line: 492, baseType: !175, size: 64, offset: 7616)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1030, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1030, file: !13, line: 495, baseType: !175, size: 64, offset: 7744)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1030, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1030, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1030, file: !13, line: 500, baseType: !1256, size: 64, offset: 7872)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1258, line: 45, baseType: !1259)
!1258 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1030, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1030, file: !13, line: 504, baseType: !1262, size: 64, offset: 8000)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1265, line: 96, size: 192, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1266 = !{!1267, !1268, !1328, !1330}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1264, file: !1265, line: 97, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1264, file: !1265, line: 98, baseType: !1269, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1265, line: 24, size: 3072, elements: !1271)
!1271 = !{!1272, !1274, !1275, !1276, !1277, !1291, !1292, !1293, !1294, !1312, !1313, !1314, !1325, !1326, !1327}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1270, file: !1265, line: 26, baseType: !1273, size: 128)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 128, elements: !1185)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1270, file: !1265, line: 27, baseType: !1273, size: 128, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1270, file: !1265, line: 28, baseType: !46, size: 32, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1270, file: !1265, line: 31, baseType: !215, size: 32, align: 512, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1270, file: !1265, line: 32, baseType: !1278, size: 960, offset: 576)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1279, line: 206, size: 960, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1280 = !{!1281, !1282, !1285, !1287, !1288, !1290}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1278, file: !1279, line: 207, baseType: !490, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1278, file: !1279, line: 208, baseType: !1283, size: 256, offset: 64)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 256, elements: !618)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1278, file: !1279, line: 209, baseType: !1286, size: 256, offset: 320)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !618)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1278, file: !1279, line: 213, baseType: !418, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1278, file: !1279, line: 215, baseType: !1289, size: 256, offset: 640)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 256, elements: !618)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !1279, line: 216, baseType: !243, size: 8, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1270, file: !1265, line: 33, baseType: !178, size: 64, offset: 1536)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1270, file: !1265, line: 34, baseType: !178, size: 64, offset: 1600)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1270, file: !1265, line: 35, baseType: !326, size: 8, offset: 1664)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1270, file: !1265, line: 36, baseType: !1295, size: 320, offset: 1728)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1296, line: 11, size: 320, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1297 = !{!1298, !1305, !1306, !1311}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1295, file: !1296, line: 16, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !177, line: 198, size: 128, elements: !1300)
!1300 = !{!1301, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1299, file: !177, line: 199, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1299, file: !177, line: 199, baseType: !1304, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1295, file: !1296, line: 17, baseType: !178, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1295, file: !1296, line: 18, baseType: !1307, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1295, file: !1296, line: 19, baseType: !300, size: 32, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1270, file: !1265, line: 37, baseType: !700, size: 256, offset: 2048)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1270, file: !1265, line: 38, baseType: !487, size: 128, align: 64, offset: 2304)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1270, file: !1265, line: 39, baseType: !1315, size: 64, offset: 2432)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1265, line: 49, size: 768, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !1265, line: 50, baseType: !215, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1316, file: !1265, line: 51, baseType: !1286, size: 256, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1316, file: !1265, line: 53, baseType: !1286, size: 256, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1316, file: !1265, line: 54, baseType: !178, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1316, file: !1265, line: 55, baseType: !1315, size: 64, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1316, file: !1265, line: 56, baseType: !46, size: 32, offset: 704)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1316, file: !1265, line: 57, baseType: !46, size: 32, offset: 736)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1270, file: !1265, line: 40, baseType: !178, size: 64, offset: 2496)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1270, file: !1265, line: 42, baseType: !46, size: 32, offset: 2560)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1270, file: !1265, line: 43, baseType: !1263, size: 64, offset: 2624)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1264, file: !1265, line: 99, baseType: !1329, offset: 128)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !187, line: 211, elements: !188)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1264, file: !1265, line: 100, baseType: !1331, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1265, line: 63, size: 3008, elements: !1333)
!1333 = !{!1334, !1335, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1365}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1332, file: !1265, line: 64, baseType: !1315, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1332, file: !1265, line: 65, baseType: !1336, size: 192, offset: 64)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 192, elements: !383)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1332, file: !1265, line: 67, baseType: !46, size: 32, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1332, file: !1265, line: 68, baseType: !637, size: 256, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1332, file: !1265, line: 69, baseType: !215, size: 32, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1332, file: !1265, line: 70, baseType: !637, size: 256, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1332, file: !1265, line: 71, baseType: !178, size: 64, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1332, file: !1265, line: 72, baseType: !178, size: 64, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1332, file: !1265, line: 73, baseType: !178, size: 64, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1332, file: !1265, line: 74, baseType: !178, size: 64, offset: 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1332, file: !1265, line: 75, baseType: !178, size: 64, offset: 1152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1332, file: !1265, line: 76, baseType: !178, size: 64, offset: 1216)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1332, file: !1265, line: 77, baseType: !178, size: 64, offset: 1280)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1332, file: !1265, line: 78, baseType: !178, size: 64, offset: 1344)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1332, file: !1265, line: 79, baseType: !326, size: 8, offset: 1408)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1332, file: !1265, line: 80, baseType: !178, size: 64, offset: 1472)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1332, file: !1265, line: 81, baseType: !637, size: 256, offset: 1536)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1332, file: !1265, line: 82, baseType: !1049, size: 256, offset: 1792)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1332, file: !1265, line: 84, baseType: !235, size: 32, offset: 2048)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1332, file: !1265, line: 87, baseType: !178, size: 64, offset: 2112)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1332, file: !1265, line: 88, baseType: !178, size: 64, offset: 2176)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1332, file: !1265, line: 89, baseType: !1357, size: 704, offset: 2240)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !701, line: 111, size: 704, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1364}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1357, file: !701, line: 112, baseType: !700, size: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1357, file: !701, line: 113, baseType: !1295, size: 320, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1357, file: !701, line: 116, baseType: !1362, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !701, line: 18, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1357, file: !701, line: 117, baseType: !46, size: 32, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1332, file: !1265, line: 90, baseType: !1263, size: 64, offset: 2944)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1030, file: !13, line: 515, baseType: !1367, size: 64, offset: 8064)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1369, line: 117, size: 128, elements: !1370)
!1369 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1370 = !{!1371, !1372, !1373}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1368, file: !1369, line: 118, baseType: !616, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1368, file: !1369, line: 119, baseType: !616, size: 32, offset: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1368, file: !1369, line: 120, baseType: !418, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1030, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1030, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1030, file: !13, line: 520, baseType: !1377, size: 64, offset: 8192)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1030, file: !13, line: 523, baseType: !1379, size: 64, offset: 8256)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1030, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1030, file: !13, line: 525, baseType: !1384, size: 64, offset: 8384)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1030, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1030, file: !13, line: 533, baseType: !175, size: 64, offset: 8512)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1030, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1030, file: !13, line: 535, baseType: !1391, size: 64, offset: 8640)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1030, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1030, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1030, file: !13, line: 540, baseType: !1395, size: 64, offset: 8768)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1397, line: 32, size: 64, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1396, file: !1397, line: 33, baseType: !616, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1396, file: !1397, line: 34, baseType: !616, size: 32, offset: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1030, file: !13, line: 563, baseType: !276, size: 128, offset: 8832)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1030, file: !13, line: 565, baseType: !276, size: 128, offset: 8960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1030, file: !13, line: 568, baseType: !1404, size: 64, offset: 9088)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1030, file: !13, line: 570, baseType: !235, size: 32, offset: 9152)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1024, file: !20, line: 101, baseType: !282, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1024, file: !20, line: 103, baseType: !326, size: 8, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1024, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1024, file: !20, line: 106, baseType: !1412, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1415, line: 282, size: 1600, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1416 = !{!1417, !1421, !1422, !1426}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1414, file: !1415, line: 283, baseType: !1418, size: 256)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !1419)
!1419 = !{!1420}
!1420 = !DISubrange(count: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1414, file: !1415, line: 284, baseType: !1418, size: 256, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1414, file: !1415, line: 285, baseType: !1423, size: 1024, offset: 512)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 1024, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1414, file: !1415, line: 286, baseType: !334, size: 64, offset: 1536)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1024, file: !20, line: 107, baseType: !1428, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1415, line: 217, size: 256, elements: !1431)
!1431 = !{!1432, !1436, !1438, !1439}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1430, file: !1415, line: 218, baseType: !1433, size: 128)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 16)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1430, file: !1415, line: 219, baseType: !1437, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1415, line: 15, baseType: !178)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1430, file: !1415, line: 220, baseType: !301, size: 32, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1430, file: !1415, line: 221, baseType: !301, size: 32, offset: 224)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1024, file: !20, line: 109, baseType: !983, size: 64, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1024, file: !20, line: 110, baseType: !974, size: 64, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1024, file: !20, line: 111, baseType: !983, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1024, file: !20, line: 112, baseType: !974, size: 64, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1024, file: !20, line: 113, baseType: !1445, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!46, !952, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1449, file: !38, line: 59, baseType: !46, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1024, file: !20, line: 114, baseType: !983, size: 64, offset: 768)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1024, file: !20, line: 115, baseType: !433, size: 64, offset: 832)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1024, file: !20, line: 116, baseType: !433, size: 64, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1024, file: !20, line: 118, baseType: !978, size: 64, offset: 960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1024, file: !20, line: 119, baseType: !974, size: 64, offset: 1024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1024, file: !20, line: 121, baseType: !1458, size: 64, offset: 1088)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1011, file: !1012, line: 88, baseType: !965, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1011, file: !1012, line: 89, baseType: !983, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1011, file: !1012, line: 90, baseType: !974, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1011, file: !1012, line: 91, baseType: !974, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1011, file: !1012, line: 92, baseType: !974, size: 64, offset: 640)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1011, file: !1012, line: 94, baseType: !983, size: 64, offset: 704)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1011, file: !1012, line: 95, baseType: !983, size: 64, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1011, file: !1012, line: 97, baseType: !1445, size: 64, offset: 832)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1011, file: !1012, line: 98, baseType: !983, size: 64, offset: 896)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1011, file: !1012, line: 100, baseType: !983, size: 64, offset: 960)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1011, file: !1012, line: 102, baseType: !983, size: 64, offset: 1024)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1011, file: !1012, line: 103, baseType: !974, size: 64, offset: 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1011, file: !1012, line: 105, baseType: !978, size: 64, offset: 1152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1011, file: !1012, line: 107, baseType: !1474, size: 64, offset: 1216)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1476)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1012, line: 107, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1011, file: !1012, line: 109, baseType: !326, size: 8, offset: 1280)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !338, file: !26, line: 715, baseType: !1023, size: 64, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !338, file: !26, line: 717, baseType: !175, size: 64, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !338, file: !26, line: 719, baseType: !175, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !338, file: !26, line: 721, baseType: !637, size: 256, offset: 1024)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !338, file: !26, line: 725, baseType: !1483, size: 448, offset: 1280)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1483, file: !26, line: 518, baseType: !276, size: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1483, file: !26, line: 519, baseType: !276, size: 128, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1483, file: !26, line: 520, baseType: !276, size: 128, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1483, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !338, file: !26, line: 726, baseType: !1490, size: 2496, offset: 1728)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1536, !1537, !1538, !1539, !1540, !1541, !1612, !1613, !1614, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1652, !1656}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1490, file: !38, line: 664, baseType: !1448, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1490, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1490, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1490, file: !38, line: 667, baseType: !326, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1490, file: !38, line: 668, baseType: !326, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1490, file: !38, line: 669, baseType: !326, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1490, file: !38, line: 670, baseType: !326, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1490, file: !38, line: 671, baseType: !326, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1490, file: !38, line: 672, baseType: !326, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1490, file: !38, line: 673, baseType: !326, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1490, file: !38, line: 674, baseType: !326, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1490, file: !38, line: 675, baseType: !300, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !38, line: 676, baseType: !215, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1490, file: !38, line: 678, baseType: !276, size: 128, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1490, file: !38, line: 679, baseType: !1049, size: 256, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1490, file: !38, line: 680, baseType: !1508, size: 64, offset: 512)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1510, line: 43, size: 1536, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1519, !1520, !1521, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1509, file: !1510, line: 44, baseType: !282, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1509, file: !1510, line: 45, baseType: !46, size: 32, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1509, file: !1510, line: 46, baseType: !276, size: 128, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1509, file: !1510, line: 47, baseType: !215, size: 32, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1509, file: !1510, line: 48, baseType: !1517, size: 64, offset: 320)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1509, file: !1510, line: 49, baseType: !1295, size: 320, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1509, file: !1510, line: 50, baseType: !178, size: 64, offset: 704)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1509, file: !1510, line: 51, baseType: !1522, size: 64, offset: 768)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1523, line: 29, baseType: !555)
!1523 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1509, file: !1510, line: 52, baseType: !1522, size: 64, offset: 832)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1509, file: !1510, line: 53, baseType: !1522, size: 64, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1509, file: !1510, line: 54, baseType: !1522, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1509, file: !1510, line: 55, baseType: !1522, size: 64, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1509, file: !1510, line: 56, baseType: !178, size: 64, offset: 1088)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1509, file: !1510, line: 57, baseType: !178, size: 64, offset: 1152)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1509, file: !1510, line: 58, baseType: !178, size: 64, offset: 1216)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1509, file: !1510, line: 59, baseType: !178, size: 64, offset: 1280)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1509, file: !1510, line: 60, baseType: !178, size: 64, offset: 1344)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1509, file: !1510, line: 61, baseType: !952, size: 64, offset: 1408)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1509, file: !1510, line: 62, baseType: !326, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1509, file: !1510, line: 63, baseType: !326, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1490, file: !38, line: 681, baseType: !326, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1490, file: !38, line: 682, baseType: !326, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1490, file: !38, line: 683, baseType: !326, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1490, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1490, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1490, file: !38, line: 690, baseType: !1542, size: 512, offset: 640)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1543)
!1543 = !{!1544, !1550, !1551, !1556, !1608, !1609, !1610, !1611}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1542, file: !33, line: 119, baseType: !1545, size: 256)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1546, line: 9, size: 256, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1545, file: !1546, line: 10, baseType: !739, size: 192, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1545, file: !1546, line: 11, baseType: !1522, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1542, file: !33, line: 120, baseType: !1522, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1542, file: !33, line: 121, baseType: !1552, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!32, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1542, file: !33, line: 122, baseType: !1557, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1559)
!1559 = !{!1560, !1585, !1586, !1589, !1594, !1595, !1603, !1607}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1558, file: !33, line: 160, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !33, line: 216, baseType: !571, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1562, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1562, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1562, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1562, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1562, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1562, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1562, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1562, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1562, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1562, file: !33, line: 227, baseType: !255, size: 16, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1562, file: !33, line: 228, baseType: !255, size: 16, offset: 208)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1562, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1562, file: !33, line: 235, baseType: !1522, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1562, file: !33, line: 236, baseType: !1555, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1562, file: !33, line: 237, baseType: !1522, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1562, file: !33, line: 238, baseType: !1555, size: 64, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1562, file: !33, line: 239, baseType: !1582, size: 4096, align: 512, offset: 512)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1558, size: 4096, align: 512, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: 8)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1558, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1558, file: !33, line: 162, baseType: !1587, size: 32, offset: 96)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !177, line: 32, baseType: !1588)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !416, line: 96, baseType: !46)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1558, file: !33, line: 163, baseType: !1590, size: 32, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !586, line: 274, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !586, line: 274, size: 32, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1591, file: !586, line: 274, baseType: !585, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1558, file: !33, line: 164, baseType: !1555, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1558, file: !33, line: 165, baseType: !1596, size: 128, offset: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1546, line: 14, size: 128, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1596, file: !1546, line: 15, baseType: !1599, size: 128)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !740, line: 26, size: 128, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1599, file: !740, line: 27, baseType: !842, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1599, file: !740, line: 28, baseType: !744, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1558, file: !33, line: 166, baseType: !1604, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!1522}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1558, file: !33, line: 167, baseType: !1522, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1542, file: !33, line: 123, baseType: !243, size: 8, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1542, file: !33, line: 124, baseType: !243, size: 8, offset: 456)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1542, file: !33, line: 125, baseType: !243, size: 8, offset: 464)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1542, file: !33, line: 126, baseType: !243, size: 8, offset: 472)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1490, file: !38, line: 691, baseType: !543, size: 64, offset: 1152)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1490, file: !38, line: 692, baseType: !700, size: 256, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1490, file: !38, line: 693, baseType: !1615, size: 192, offset: 1472)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1616, line: 41, baseType: !1617)
!1616 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1616, line: 37, size: 192, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1617, file: !1616, line: 38, baseType: !215, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1617, file: !1616, line: 39, baseType: !276, size: 128, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1490, file: !38, line: 694, baseType: !1517, size: 64, offset: 1664)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1490, file: !38, line: 695, baseType: !235, size: 32, offset: 1728)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1490, file: !38, line: 696, baseType: !235, size: 32, offset: 1760)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1490, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1490, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1490, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1490, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1490, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1490, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1490, file: !38, line: 703, baseType: !326, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1490, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1490, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1490, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1490, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1490, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1490, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1490, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1490, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1490, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1490, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1490, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1490, file: !38, line: 715, baseType: !543, size: 64, offset: 2048)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1490, file: !38, line: 716, baseType: !543, size: 64, offset: 2112)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1490, file: !38, line: 717, baseType: !543, size: 64, offset: 2176)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1490, file: !38, line: 718, baseType: !543, size: 64, offset: 2240)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1490, file: !38, line: 720, baseType: !1647, size: 64, offset: 2304)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1648, file: !38, line: 633, baseType: !215, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1648, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1490, file: !38, line: 721, baseType: !1653, size: 64, offset: 2368)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !952, !616}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1490, file: !38, line: 722, baseType: !1657, size: 64, offset: 2432)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !338, file: !26, line: 727, baseType: !1660, size: 64, offset: 4224)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1669, !1670, !1671}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1661, file: !38, line: 743, baseType: !980, size: 1472)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1661, file: !38, line: 744, baseType: !983, size: 64, offset: 1472)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1661, file: !38, line: 745, baseType: !1666, size: 64, offset: 1536)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !952, !326}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1661, file: !38, line: 746, baseType: !983, size: 64, offset: 1600)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1661, file: !38, line: 747, baseType: !974, size: 64, offset: 1664)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1661, file: !38, line: 748, baseType: !974, size: 64, offset: 1728)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !338, file: !26, line: 736, baseType: !1673, size: 128, offset: 4288)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1673, file: !26, line: 531, baseType: !271, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1673, file: !26, line: 532, baseType: !1677, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !122, line: 239, size: 832, elements: !1679)
!1679 = !{!1680, !1681, !1867, !1868, !1874}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1678, file: !122, line: 240, baseType: !178, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1678, file: !122, line: 241, baseType: !1682, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3, line: 23, size: 832, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1860, !1866}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1683, file: !3, line: 24, baseType: !952, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1683, file: !3, line: 25, baseType: !175, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1683, file: !3, line: 26, baseType: !1688, size: 576, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "msi_alloc_info_t", file: !1689, line: 7, baseType: !1690)
!1689 = !DIFile(filename: "./arch/x86/include/asm/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18fb5c3a6ec98b3248a11eb70711a164")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_alloc_info", file: !54, line: 75, size: 576, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1697, !1707, !1841, !1842}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1690, file: !54, line: 76, baseType: !53, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !54, line: 77, baseType: !300, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !1690, file: !54, line: 78, baseType: !300, size: 32, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !1690, file: !54, line: 79, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !177, line: 170, baseType: !178)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1690, file: !54, line: 80, baseType: !1698, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1701, line: 19, size: 64, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1700, file: !1701, line: 19, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 1)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1690, file: !54, line: 81, baseType: !1708, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !122, line: 184, size: 832, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1778, !1781, !1782, !1795, !1799, !1800, !1801}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1709, file: !122, line: 186, baseType: !7, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !1709, file: !122, line: 187, baseType: !7, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1709, file: !122, line: 188, baseType: !952, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !1709, file: !122, line: 189, baseType: !1715, size: 96, offset: 128)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !122, line: 65, size: 96, elements: !1716)
!1716 = !{!1717, !1747, !1757}
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !122, line: 66, baseType: !1718, size: 32)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !122, line: 66, size: 32, elements: !1719)
!1719 = !{!1720, !1721}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !1718, file: !122, line: 67, baseType: !300, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_lo", scope: !1718, file: !122, line: 68, baseType: !1722, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_lo_t", file: !1689, line: 49, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_lo", file: !1689, line: 29, size: 32, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !1689, line: 30, baseType: !1726, size: 32)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1723, file: !1689, line: 30, size: 32, elements: !1727)
!1727 = !{!1728, !1738}
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !1689, line: 31, baseType: !1729, size: 32)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1726, file: !1689, line: 31, size: 32, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0", scope: !1729, file: !1689, line: 32, baseType: !300, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !1729, file: !1689, line: 33, baseType: !300, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_hint", scope: !1729, file: !1689, line: 34, baseType: !300, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_1", scope: !1729, file: !1689, line: 35, baseType: !300, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "virt_destid_8_14", scope: !1729, file: !1689, line: 36, baseType: !300, size: 7, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "destid_0_7", scope: !1729, file: !1689, line: 37, baseType: !300, size: 8, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !1729, file: !1689, line: 38, baseType: !300, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !1689, line: 40, baseType: !1739, size: 32)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1726, file: !1689, line: 40, size: 32, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_reserved_0", scope: !1739, file: !1689, line: 41, baseType: !300, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_15", scope: !1739, file: !1689, line: 42, baseType: !300, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle_valid", scope: !1739, file: !1689, line: 43, baseType: !300, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_format", scope: !1739, file: !1689, line: 44, baseType: !300, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_0_14", scope: !1739, file: !1689, line: 45, baseType: !300, size: 15, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_base_address", scope: !1739, file: !1689, line: 46, baseType: !300, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !122, line: 70, baseType: !1748, size: 32, offset: 32)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !122, line: 70, size: 32, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !1748, file: !122, line: 71, baseType: !300, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_hi", scope: !1748, file: !122, line: 72, baseType: !1752, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_hi_t", file: !1689, line: 57, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_hi", file: !1689, line: 54, size: 32, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1753, file: !1689, line: 55, baseType: !300, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "destid_8_31", scope: !1753, file: !1689, line: 56, baseType: !300, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1715, file: !122, line: 74, baseType: !1758, size: 32, offset: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1715, file: !122, line: 74, size: 32, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1758, file: !122, line: 75, baseType: !300, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1758, file: !122, line: 76, baseType: !1762, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_data_t", file: !1689, line: 26, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_data", file: !1689, line: 14, size: 32, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1689, line: 15, baseType: !1766, size: 32)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1763, file: !1689, line: 15, size: 32, elements: !1767)
!1767 = !{!1768, !1777}
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1766, file: !1689, line: 16, baseType: !1769, size: 32)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !1689, line: 16, size: 32, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1769, file: !1689, line: 17, baseType: !300, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !1769, file: !1689, line: 18, baseType: !300, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !1769, file: !1689, line: 19, baseType: !300, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1769, file: !1689, line: 20, baseType: !300, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !1769, file: !1689, line: 21, baseType: !300, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !1769, file: !1689, line: 22, baseType: !300, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle", scope: !1766, file: !1689, line: 24, baseType: !300, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !1709, file: !122, line: 190, baseType: !1779, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !114, line: 30, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cookie", scope: !1709, file: !122, line: 192, baseType: !334, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_attrs", scope: !1709, file: !122, line: 195, baseType: !1783, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1785)
!1785 = !{!1786, !1787, !1791}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1784, file: !26, line: 107, baseType: !420, size: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1784, file: !26, line: 108, baseType: !1788, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!414, !952, !1783, !382}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1784, file: !26, line: 110, baseType: !1792, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!414, !952, !1783, !282, !429}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !1709, file: !122, line: 198, baseType: !1796, size: 64, offset: 448)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1708, !175}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !1709, file: !122, line: 199, baseType: !175, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !1709, file: !122, line: 201, baseType: !253, size: 16, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !122, line: 202, baseType: !1802, size: 192, offset: 640)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !122, line: 202, size: 192, elements: !1803)
!1803 = !{!1804, !1827}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !1802, file: !122, line: 203, baseType: !1805, size: 192)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_msi_desc", file: !122, line: 113, size: 192, elements: !1806)
!1806 = !{!1807, !1812, !1822}
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !122, line: 114, baseType: !1808, size: 32)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1805, file: !122, line: 114, size: 32, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "msi_mask", scope: !1808, file: !122, line: 115, baseType: !300, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "msix_ctrl", scope: !1808, file: !122, line: 116, baseType: !300, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !1805, file: !122, line: 126, baseType: !1813, size: 64, offset: 32)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !122, line: 118, size: 64, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !1813, file: !122, line: 119, baseType: !243, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !1813, file: !122, line: 120, baseType: !243, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !1813, file: !122, line: 121, baseType: !243, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "can_mask", scope: !1813, file: !122, line: 122, baseType: !243, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !1813, file: !122, line: 123, baseType: !243, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !1813, file: !122, line: 124, baseType: !243, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !1813, file: !122, line: 125, baseType: !7, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !122, line: 127, baseType: !1823, size: 64, offset: 128)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1805, file: !122, line: 127, size: 64, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !1823, file: !122, line: 128, baseType: !243, size: 8)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !1823, file: !122, line: 129, baseType: !175, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1802, file: !122, line: 204, baseType: !1828, size: 128)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc_data", file: !122, line: 160, size: 128, elements: !1829)
!1829 = !{!1830, !1836}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dcookie", scope: !1828, file: !122, line: 161, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_domain_cookie", file: !122, line: 143, size: 64, elements: !1832)
!1832 = !{!1833, !1834, !1835}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1831, file: !122, line: 144, baseType: !543, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1831, file: !122, line: 145, baseType: !175, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !1831, file: !122, line: 146, baseType: !175, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "icookie", scope: !1828, file: !122, line: 162, baseType: !1837, size: 64, offset: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_instance_cookie", file: !140, line: 34, size: 64, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1837, file: !140, line: 35, baseType: !543, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1837, file: !140, line: 36, baseType: !175, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1690, file: !54, line: 82, baseType: !175, size: 64, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !54, line: 84, baseType: !1843, size: 192, offset: 384)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !54, line: 84, size: 192, elements: !1844)
!1844 = !{!1845, !1853}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !1843, file: !54, line: 85, baseType: !1846, size: 96)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic_alloc_info", file: !54, line: 46, size: 96, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1852}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !1846, file: !54, line: 47, baseType: !46, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1846, file: !54, line: 48, baseType: !46, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !1846, file: !54, line: 49, baseType: !300, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !1846, file: !54, line: 50, baseType: !300, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1846, file: !54, line: 51, baseType: !300, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !1843, file: !54, line: 86, baseType: !1854, size: 192)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uv_alloc_info", file: !54, line: 54, size: 192, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1854, file: !54, line: 55, baseType: !46, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "blade", scope: !1854, file: !54, line: 56, baseType: !46, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1854, file: !54, line: 57, baseType: !178, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1854, file: !54, line: 58, baseType: !382, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "write_msg", scope: !1683, file: !3, line: 27, baseType: !1861, size: 64, offset: 704)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_write_msi_msg_t", file: !122, line: 96, baseType: !1862)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1708, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !1683, file: !3, line: 28, baseType: !46, size: 32, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1678, file: !122, line: 242, baseType: !637, size: 256, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__domains", scope: !1678, file: !122, line: 243, baseType: !1869, size: 384, offset: 384)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1870, size: 384, elements: !1185)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_dev_domain", file: !122, line: 226, size: 192, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1870, file: !122, line: 227, baseType: !211, size: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1870, file: !122, line: 228, baseType: !271, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__iter_idx", scope: !1678, file: !122, line: 244, baseType: !178, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !338, file: !26, line: 738, baseType: !1876, size: 64, offset: 4416)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !338, file: !26, line: 740, baseType: !1880, size: 64, offset: 4480)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !338, file: !26, line: 741, baseType: !543, size: 64, offset: 4544)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !338, file: !26, line: 746, baseType: !543, size: 64, offset: 4608)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !338, file: !26, line: 747, baseType: !1884, size: 64, offset: 4672)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !338, file: !26, line: 749, baseType: !1888, size: 64, offset: 4736)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1890)
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1889, file: !26, line: 433, baseType: !7, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1889, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1889, file: !26, line: 435, baseType: !178, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !338, file: !26, line: 751, baseType: !276, size: 128, offset: 4800)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !338, file: !26, line: 762, baseType: !1896, size: 64, offset: 4928)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !338, file: !26, line: 770, baseType: !1899, offset: 4992)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1900, line: 5, elements: !188)
!1900 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !338, file: !26, line: 772, baseType: !293, size: 64, offset: 4992)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !338, file: !26, line: 773, baseType: !308, size: 64, offset: 5056)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !338, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !338, file: !26, line: 778, baseType: !1905, size: 32, offset: 5152)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !177, line: 21, baseType: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !177, line: 18, baseType: !300)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !338, file: !26, line: 779, baseType: !300, size: 32, offset: 5184)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !338, file: !26, line: 781, baseType: !215, size: 32, offset: 5216)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !338, file: !26, line: 782, baseType: !276, size: 128, offset: 5248)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !338, file: !26, line: 784, baseType: !1911, size: 64, offset: 5376)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1914, line: 52, size: 768, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1924, !1928, !1929, !1930, !1931, !1935, !1939}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1913, file: !1914, line: 53, baseType: !282, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1913, file: !1914, line: 55, baseType: !433, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1913, file: !1914, line: 56, baseType: !433, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1913, file: !1914, line: 58, baseType: !965, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1913, file: !1914, line: 59, baseType: !1921, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!382, !336, !972}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1913, file: !1914, line: 61, baseType: !1925, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1911}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1913, file: !1914, line: 62, baseType: !974, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1913, file: !1914, line: 64, baseType: !983, size: 64, offset: 448)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1913, file: !1914, line: 66, baseType: !773, size: 64, offset: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1913, file: !1914, line: 67, baseType: !1932, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!334, !336}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1913, file: !1914, line: 69, baseType: !1936, size: 64, offset: 640)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !336, !808, !815}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1913, file: !1914, line: 71, baseType: !978, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !338, file: !26, line: 785, baseType: !433, size: 64, offset: 5440)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !338, file: !26, line: 787, baseType: !974, size: 64, offset: 5504)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !338, file: !26, line: 788, baseType: !1943, size: 64, offset: 5568)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !338, file: !26, line: 789, baseType: !1946, size: 64, offset: 5632)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !338, file: !26, line: 791, baseType: !1949, size: 64, offset: 5696)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955, !1956}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1950, file: !26, line: 598, baseType: !63, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1950, file: !26, line: 599, baseType: !72, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1950, file: !26, line: 600, baseType: !77, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1950, file: !26, line: 601, baseType: !326, size: 8, offset: 96)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1950, file: !26, line: 602, baseType: !326, size: 8, offset: 104)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !338, file: !26, line: 793, baseType: !82, size: 32, offset: 5760)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !338, file: !26, line: 795, baseType: !326, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !338, file: !26, line: 796, baseType: !326, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !338, file: !26, line: 797, baseType: !326, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !338, file: !26, line: 798, baseType: !326, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !338, file: !26, line: 799, baseType: !326, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !312, file: !305, line: 131, baseType: !323, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !312, file: !305, line: 133, baseType: !1965, size: 64, offset: 320)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!88, !328}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !312, file: !305, line: 134, baseType: !1969, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!326, !328, !282}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !312, file: !305, line: 136, baseType: !1973, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!46, !328, !282, !7, !175, !429}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !312, file: !305, line: 141, baseType: !1977, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!46, !328, !282, !1377, !429}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !312, file: !305, line: 144, baseType: !1981, size: 64, offset: 576)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!282, !328}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !312, file: !305, line: 145, baseType: !1981, size: 64, offset: 640)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !312, file: !305, line: 146, baseType: !1986, size: 64, offset: 704)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!308, !328}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !312, file: !305, line: 148, baseType: !1990, size: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!308, !328, !308}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !312, file: !305, line: 151, baseType: !1994, size: 64, offset: 832)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!308, !328, !282}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !312, file: !305, line: 153, baseType: !1998, size: 64, offset: 896)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!46, !328, !282, !282, !7, !7, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !305, line: 94, size: 640, elements: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2002, file: !305, line: 95, baseType: !308, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2002, file: !305, line: 96, baseType: !7, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2002, file: !305, line: 97, baseType: !2007, size: 512, offset: 128)
!2007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 512, elements: !1583)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !312, file: !305, line: 158, baseType: !1990, size: 64, offset: 960)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !312, file: !305, line: 161, baseType: !1986, size: 64, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !312, file: !305, line: 163, baseType: !315, size: 64, offset: 1088)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !312, file: !305, line: 164, baseType: !2012, size: 64, offset: 1152)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!46, !328, !2015}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !305, line: 73, size: 128, elements: !2017)
!2017 = !{!2018, !2019, !2020}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2016, file: !305, line: 74, baseType: !7, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2016, file: !305, line: 75, baseType: !7, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2016, file: !305, line: 76, baseType: !328, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !312, file: !305, line: 166, baseType: !2022, size: 64, offset: 1216)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!175, !308, !46}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !312, file: !305, line: 167, baseType: !2026, size: 64, offset: 1280)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!46, !328, !7}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !312, file: !305, line: 168, baseType: !2030, size: 64, offset: 1344)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!46, !308}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !304, file: !305, line: 44, baseType: !952, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !304, file: !305, line: 45, baseType: !276, size: 128, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !304, file: !305, line: 46, baseType: !276, size: 128, offset: 320)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 47, baseType: !243, size: 8, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !294, file: !295, line: 54, baseType: !2038, size: 64, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !295, line: 28, size: 256, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2039, file: !295, line: 29, baseType: !382, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2039, file: !295, line: 30, baseType: !46, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2039, file: !295, line: 31, baseType: !175, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2039, file: !295, line: 32, baseType: !2038, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !294, file: !295, line: 55, baseType: !2038, size: 64, offset: 768)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !294, file: !295, line: 56, baseType: !293, size: 64, offset: 832)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !294, file: !295, line: 57, baseType: !293, size: 64, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !294, file: !295, line: 58, baseType: !293, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !294, file: !295, line: 62, baseType: !178, size: 64, offset: 1024)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !294, file: !295, line: 63, baseType: !175, size: 64, offset: 1088)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !287, file: !273, line: 91, baseType: !2052, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!46, !271, !2055, !94}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !273, line: 63, size: 640, elements: !2057)
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2056, file: !273, line: 64, baseType: !308, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2056, file: !273, line: 65, baseType: !46, size: 32, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2056, file: !273, line: 66, baseType: !2061, size: 512, offset: 96)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 512, elements: !1434)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !287, file: !273, line: 93, baseType: !2063, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!46, !271, !7, !1696}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !287, file: !273, line: 94, baseType: !2067, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null, !271, !7}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !287, file: !273, line: 95, baseType: !2071, size: 64, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!46, !271, !293, !2074, !7, !1391, !1147}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !287, file: !273, line: 100, baseType: !2077, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!46, !271, !7, !7, !175}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !287, file: !273, line: 102, baseType: !2081, size: 64, offset: 384)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !271, !7, !7}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !287, file: !273, line: 104, baseType: !2085, size: 64, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!46, !271, !2088, !326}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !114, line: 179, size: 448, elements: !2090)
!2090 = !{!2091, !2092, !2093, !2094, !2106, !2181, !2182, !2183}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2089, file: !114, line: 180, baseType: !300, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2089, file: !114, line: 181, baseType: !7, size: 32, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2089, file: !114, line: 182, baseType: !178, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2089, file: !114, line: 183, baseType: !2095, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !114, line: 147, size: 320, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2105}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !2096, file: !114, line: 148, baseType: !7, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2096, file: !114, line: 150, baseType: !7, size: 32, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2096, file: !114, line: 152, baseType: !175, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !2096, file: !114, line: 153, baseType: !1708, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !2096, file: !114, line: 155, baseType: !2103, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1701, line: 913, baseType: !2104)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1700, size: 64, elements: !1705)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !2096, file: !114, line: 158, baseType: !2103, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2089, file: !114, line: 184, baseType: !2107, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !114, line: 501, size: 2112, elements: !2109)
!2109 = !{!2110, !2111, !2115, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2130, !2134, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2149, !2150, !2151, !2155, !2156, !2162, !2166, !2170, !2174, !2178, !2179, !2180}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2108, file: !114, line: 502, baseType: !282, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !2108, file: !114, line: 503, baseType: !2112, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!7, !2088}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !2108, file: !114, line: 504, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2088}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !2108, file: !114, line: 505, baseType: !2116, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !2108, file: !114, line: 506, baseType: !2116, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !2108, file: !114, line: 508, baseType: !2116, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !2108, file: !114, line: 509, baseType: !2116, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !2108, file: !114, line: 510, baseType: !2116, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !2108, file: !114, line: 511, baseType: !2116, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !2108, file: !114, line: 512, baseType: !2116, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !2108, file: !114, line: 514, baseType: !2127, size: 64, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!46, !2088, !1698, !326}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !2108, file: !114, line: 515, baseType: !2131, size: 64, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!46, !2088}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !2108, file: !114, line: 516, baseType: !2135, size: 64, offset: 768)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!46, !2088, !7}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !2108, file: !114, line: 517, baseType: !2135, size: 64, offset: 832)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !2108, file: !114, line: 519, baseType: !2116, size: 64, offset: 896)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !2108, file: !114, line: 520, baseType: !2116, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !2108, file: !114, line: 526, baseType: !2116, size: 64, offset: 1024)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !2108, file: !114, line: 527, baseType: !2116, size: 64, offset: 1088)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !2108, file: !114, line: 528, baseType: !2116, size: 64, offset: 1152)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !2108, file: !114, line: 530, baseType: !2116, size: 64, offset: 1216)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !2108, file: !114, line: 532, baseType: !2146, size: 64, offset: 1280)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2088, !871}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !2108, file: !114, line: 533, baseType: !2131, size: 64, offset: 1344)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !2108, file: !114, line: 534, baseType: !2116, size: 64, offset: 1408)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !2108, file: !114, line: 536, baseType: !2152, size: 64, offset: 1472)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2088, !1865}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !2108, file: !114, line: 537, baseType: !2152, size: 64, offset: 1536)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !2108, file: !114, line: 539, baseType: !2157, size: 64, offset: 1600)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!46, !2088, !2160, !2161}
!2160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !114, line: 31, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !2108, file: !114, line: 540, baseType: !2163, size: 64, offset: 1664)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!46, !2088, !2160, !326}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !2108, file: !114, line: 542, baseType: !2167, size: 64, offset: 1728)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!46, !2088, !175}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !2108, file: !114, line: 544, baseType: !2171, size: 64, offset: 1792)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !2088, !7}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !2108, file: !114, line: 545, baseType: !2175, size: 64, offset: 1856)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2088, !1698}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !2108, file: !114, line: 547, baseType: !2131, size: 64, offset: 1920)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !2108, file: !114, line: 548, baseType: !2116, size: 64, offset: 1984)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !114, line: 550, baseType: !178, size: 64, offset: 2048)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2089, file: !114, line: 185, baseType: !271, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !2089, file: !114, line: 187, baseType: !2088, size: 64, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2089, file: !114, line: 189, baseType: !175, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !287, file: !273, line: 105, baseType: !2185, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !271, !2088}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !287, file: !273, line: 106, baseType: !2189, size: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!46, !271, !2055, !1391, !1147}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !272, file: !273, line: 154, baseType: !175, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !273, line: 155, baseType: !7, size: 32, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !272, file: !273, line: 156, baseType: !7, size: 32, offset: 352)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !272, file: !273, line: 157, baseType: !637, size: 256, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !272, file: !273, line: 158, baseType: !271, size: 64, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !272, file: !273, line: 161, baseType: !308, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !272, file: !273, line: 162, baseType: !94, size: 32, offset: 768)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !272, file: !273, line: 163, baseType: !2200, size: 64, offset: 832)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !114, line: 1111, size: 192, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !2201, file: !114, line: 1112, baseType: !7, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !2201, file: !114, line: 1113, baseType: !7, size: 32, offset: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !2201, file: !114, line: 1114, baseType: !7, size: 32, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !2201, file: !114, line: 1115, baseType: !7, size: 32, offset: 96)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !2201, file: !114, line: 1116, baseType: !113, size: 32, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2201, file: !114, line: 1117, baseType: !2209, offset: 192)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2210, elements: !713)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !114, line: 1061, size: 1024, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2219, !2223, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2211, file: !114, line: 1062, baseType: !571, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !2211, file: !114, line: 1063, baseType: !175, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !2211, file: !114, line: 1064, baseType: !2216, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!300, !175}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !2211, file: !114, line: 1065, baseType: !2220, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !300, !175}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2211, file: !114, line: 1066, baseType: !2224, size: 64, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !2210}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2211, file: !114, line: 1067, baseType: !2224, size: 64, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !2211, file: !114, line: 1068, baseType: !7, size: 32, offset: 384)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !2211, file: !114, line: 1069, baseType: !7, size: 32, offset: 416)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2211, file: !114, line: 1070, baseType: !300, size: 32, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !2211, file: !114, line: 1071, baseType: !300, size: 32, offset: 480)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !2211, file: !114, line: 1072, baseType: !300, size: 32, offset: 512)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !2211, file: !114, line: 1073, baseType: !300, size: 32, offset: 544)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !2211, file: !114, line: 1074, baseType: !300, size: 32, offset: 576)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !2211, file: !114, line: 1075, baseType: !7, size: 32, offset: 608)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2211, file: !114, line: 1076, baseType: !175, size: 64, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !2211, file: !114, line: 1077, baseType: !178, size: 64, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2211, file: !114, line: 1078, baseType: !178, size: 64, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2211, file: !114, line: 1079, baseType: !271, size: 64, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2211, file: !114, line: 1080, baseType: !276, size: 128, offset: 896)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !2211, file: !114, line: 1081, baseType: !2242, offset: 1024)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2243, elements: !713)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !114, line: 1019, size: 2752, elements: !2244)
!2244 = !{!2245, !2246, !2256, !2309, !2310, !2311}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2243, file: !114, line: 1020, baseType: !2108, size: 2112)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2243, file: !114, line: 1021, baseType: !2247, size: 448, offset: 2112)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !114, line: 996, size: 448, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2255}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2247, file: !114, line: 997, baseType: !178, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2247, file: !114, line: 998, baseType: !178, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2247, file: !114, line: 999, baseType: !178, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !2247, file: !114, line: 1000, baseType: !178, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !2247, file: !114, line: 1001, baseType: !178, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2247, file: !114, line: 1002, baseType: !178, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2247, file: !114, line: 1003, baseType: !178, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2243, file: !114, line: 1022, baseType: !2257, size: 64, offset: 2560)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !2258, line: 12, baseType: !2259)
!2258 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !2262}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2264, line: 55, size: 3584, align: 512, elements: !2265)
!2264 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2286, !2287, !2288, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !2263, file: !2264, line: 56, baseType: !2096, size: 320)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !2263, file: !2264, line: 57, baseType: !2089, size: 448, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !2263, file: !2264, line: 58, baseType: !1147, size: 64, offset: 768)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !2263, file: !2264, line: 59, baseType: !2257, size: 64, offset: 832)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2263, file: !2264, line: 60, baseType: !2271, size: 64, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !2264, line: 60, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !2263, file: !2264, line: 61, baseType: !7, size: 32, offset: 960)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !2263, file: !2264, line: 62, baseType: !7, size: 32, offset: 992)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2263, file: !2264, line: 63, baseType: !7, size: 32, offset: 1024)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !2263, file: !2264, line: 64, baseType: !7, size: 32, offset: 1056)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !2263, file: !2264, line: 65, baseType: !7, size: 32, offset: 1088)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2263, file: !2264, line: 66, baseType: !7, size: 32, offset: 1120)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !2263, file: !2264, line: 67, baseType: !178, size: 64, offset: 1152)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !2263, file: !2264, line: 68, baseType: !7, size: 32, offset: 1216)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !2263, file: !2264, line: 69, baseType: !235, size: 32, offset: 1248)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !2263, file: !2264, line: 70, baseType: !46, size: 32, offset: 1280)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2263, file: !2264, line: 71, baseType: !571, size: 32, offset: 1312)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !2263, file: !2264, line: 72, baseType: !2285, size: 64, offset: 1344)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !2263, file: !2264, line: 73, baseType: !1698, size: 64, offset: 1408)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !2263, file: !2264, line: 75, baseType: !1698, size: 64, offset: 1472)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !2263, file: !2264, line: 76, baseType: !2289, size: 64, offset: 1536)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !2264, line: 13, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !2263, file: !2264, line: 78, baseType: !2103, size: 64, offset: 1600)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !2263, file: !2264, line: 81, baseType: !178, size: 64, offset: 1664)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !2263, file: !2264, line: 82, baseType: !235, size: 32, offset: 1728)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !2263, file: !2264, line: 83, baseType: !1615, size: 192, offset: 1792)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !2263, file: !2264, line: 85, baseType: !7, size: 32, offset: 1984)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !2263, file: !2264, line: 86, baseType: !7, size: 32, offset: 2016)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !2263, file: !2264, line: 87, baseType: !7, size: 32, offset: 2048)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !2263, file: !2264, line: 88, baseType: !7, size: 32, offset: 2080)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2263, file: !2264, line: 91, baseType: !2300, size: 64, offset: 2112)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2264, line: 14, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2263, file: !2264, line: 98, baseType: !487, size: 128, align: 64, offset: 2176)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2263, file: !2264, line: 99, baseType: !341, size: 512, offset: 2304)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !2263, file: !2264, line: 101, baseType: !637, size: 256, offset: 2816)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !2263, file: !2264, line: 102, baseType: !46, size: 32, offset: 3072)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2263, file: !2264, line: 103, baseType: !1029, size: 64, offset: 3136)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2263, file: !2264, line: 104, baseType: !282, size: 64, offset: 3200)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !2263, file: !2264, line: 106, baseType: !1299, size: 128, offset: 3264)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2243, file: !114, line: 1023, baseType: !300, size: 32, offset: 2624)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !2243, file: !114, line: 1024, baseType: !300, size: 32, offset: 2656)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2243, file: !114, line: 1025, baseType: !2312, size: 64, offset: 2688)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !272, file: !273, line: 164, baseType: !952, size: 64, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !272, file: !273, line: 165, baseType: !952, size: 64, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !272, file: !273, line: 167, baseType: !271, size: 64, offset: 1024)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !272, file: !273, line: 170, baseType: !2317, size: 64, offset: 1088)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !122, line: 580, size: 192, elements: !2320)
!2320 = !{!2321, !2322, !2323}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "supported_flags", scope: !2319, file: !122, line: 581, baseType: !300, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2319, file: !122, line: 582, baseType: !282, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "init_dev_msi_info", scope: !2319, file: !122, line: 583, baseType: !2324, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!326, !952, !271, !271, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_info", file: !122, line: 489, size: 576, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2371, !2372, !2373, !2374, !2375, !2376}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2328, file: !122, line: 490, baseType: !300, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2328, file: !122, line: 491, baseType: !94, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "hwsize", scope: !2328, file: !122, line: 492, baseType: !7, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2328, file: !122, line: 493, baseType: !2334, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_ops", file: !122, line: 448, size: 576, elements: !2336)
!2336 = !{!2337, !2342, !2346, !2350, !2354, !2358, !2362, !2366, !2370}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "get_hwirq", scope: !2335, file: !122, line: 449, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!1696, !2327, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "msi_init", scope: !2335, file: !122, line: 451, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!46, !271, !2327, !7, !1696, !2341}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "msi_free", scope: !2335, file: !122, line: 455, baseType: !2347, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !271, !2327, !7}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "msi_prepare", scope: !2335, file: !122, line: 458, baseType: !2351, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!46, !271, !952, !46, !2341}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_desc", scope: !2335, file: !122, line: 461, baseType: !2355, size: 64, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !271, !2341, !1708}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "set_desc", scope: !2335, file: !122, line: 463, baseType: !2359, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2341, !1708}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc_irqs", scope: !2335, file: !122, line: 465, baseType: !2363, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!46, !271, !952, !46}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "domain_free_irqs", scope: !2335, file: !122, line: 467, baseType: !2367, size: 64, offset: 448)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !271, !952}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "msi_post_free", scope: !2335, file: !122, line: 469, baseType: !2367, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2328, file: !122, line: 494, baseType: !2107, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2328, file: !122, line: 495, baseType: !175, size: 64, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2328, file: !122, line: 496, baseType: !2257, size: 64, offset: 320)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2328, file: !122, line: 497, baseType: !175, size: 64, offset: 384)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "handler_name", scope: !2328, file: !122, line: 498, baseType: !282, size: 64, offset: 448)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2328, file: !122, line: 499, baseType: !175, size: 64, offset: 512)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !272, file: !273, line: 174, baseType: !1696, size: 64, offset: 1152)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !272, file: !273, line: 175, baseType: !7, size: 32, offset: 1216)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !272, file: !273, line: 176, baseType: !211, size: 128, offset: 1280)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !272, file: !273, line: 177, baseType: !2381, offset: 1408)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2088, elements: !713)
!2382 = !{!2383, !2384, !2385, !2386}
!2383 = !DILocalVariable(name: "fwnode", arg: 1, scope: !268, file: !3, line: 122, type: !308)
!2384 = !DILocalVariable(name: "info", arg: 2, scope: !268, file: !3, line: 123, type: !2327)
!2385 = !DILocalVariable(name: "parent", arg: 3, scope: !268, file: !3, line: 124, type: !271)
!2386 = !DILocalVariable(name: "domain", scope: !268, file: !3, line: 126, type: !271)
!2387 = !DILocation(line: 122, column: 73, scope: !268)
!2388 = !DILocation(line: 123, column: 33, scope: !268)
!2389 = !DILocation(line: 124, column: 28, scope: !268)
!2390 = !DILocation(line: 126, column: 2, scope: !268)
!2391 = !DILocation(line: 126, column: 21, scope: !268)
!2392 = !DILocation(line: 128, column: 6, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !268, file: !3, line: 128, column: 6)
!2394 = !DILocation(line: 128, column: 12, scope: !2393)
!2395 = !DILocation(line: 128, column: 18, scope: !2393)
!2396 = !DILocation(line: 128, column: 6, scope: !268)
!2397 = !DILocation(line: 129, column: 31, scope: !2393)
!2398 = !DILocation(line: 129, column: 3, scope: !2393)
!2399 = !DILocation(line: 130, column: 6, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !268, file: !3, line: 130, column: 6)
!2401 = !DILocation(line: 130, column: 12, scope: !2400)
!2402 = !DILocation(line: 130, column: 18, scope: !2400)
!2403 = !DILocation(line: 130, column: 6, scope: !268)
!2404 = !DILocation(line: 131, column: 32, scope: !2400)
!2405 = !DILocation(line: 131, column: 3, scope: !2400)
!2406 = !DILocation(line: 132, column: 2, scope: !268)
!2407 = !DILocation(line: 132, column: 8, scope: !268)
!2408 = !DILocation(line: 132, column: 14, scope: !268)
!2409 = !DILocation(line: 135, column: 33, scope: !268)
!2410 = !DILocation(line: 135, column: 41, scope: !268)
!2411 = !DILocation(line: 135, column: 47, scope: !268)
!2412 = !DILocation(line: 135, column: 11, scope: !268)
!2413 = !DILocation(line: 135, column: 9, scope: !268)
!2414 = !DILocation(line: 136, column: 6, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !268, file: !3, line: 136, column: 6)
!2416 = !DILocation(line: 136, column: 6, scope: !268)
!2417 = !DILocation(line: 137, column: 31, scope: !2415)
!2418 = !DILocation(line: 137, column: 3, scope: !2415)
!2419 = !DILocation(line: 139, column: 9, scope: !268)
!2420 = !DILocation(line: 140, column: 1, scope: !268)
!2421 = !DILocation(line: 139, column: 2, scope: !268)
!2422 = distinct !DISubprogram(name: "platform_msi_update_dom_ops", scope: !3, file: !3, line: 71, type: !2423, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2327}
!2425 = !{!2426, !2427}
!2426 = !DILocalVariable(name: "info", arg: 1, scope: !2422, file: !3, line: 71, type: !2327)
!2427 = !DILocalVariable(name: "ops", scope: !2422, file: !3, line: 73, type: !2334)
!2428 = !DILocation(line: 71, column: 65, scope: !2422)
!2429 = !DILocation(line: 73, column: 2, scope: !2422)
!2430 = !DILocation(line: 73, column: 25, scope: !2422)
!2431 = !DILocation(line: 73, column: 31, scope: !2422)
!2432 = !DILocation(line: 73, column: 37, scope: !2422)
!2433 = !DILocation(line: 75, column: 2, scope: !2422)
!2434 = !DILocation(line: 75, column: 2, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 75, column: 2)
!2436 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 75, column: 2)
!2437 = !DILocation(line: 75, column: 2, scope: !2436)
!2438 = !DILocation(line: 75, column: 2, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 75, column: 2)
!2440 = !DILocation(line: 75, column: 2, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 75, column: 2)
!2442 = !DILocation(line: 75, column: 2, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 75, column: 2)
!2444 = !{i64 2153076474, i64 2153076503, i64 2153076549, i64 2153076607, i64 2153076661, i64 2153076715, i64 2153076770, i64 2153076801}
!2445 = !DILocation(line: 77, column: 6, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 77, column: 6)
!2447 = !DILocation(line: 77, column: 11, scope: !2446)
!2448 = !DILocation(line: 77, column: 20, scope: !2446)
!2449 = !DILocation(line: 77, column: 6, scope: !2422)
!2450 = !DILocation(line: 78, column: 3, scope: !2446)
!2451 = !DILocation(line: 78, column: 8, scope: !2446)
!2452 = !DILocation(line: 78, column: 17, scope: !2446)
!2453 = !DILocation(line: 79, column: 6, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 79, column: 6)
!2455 = !DILocation(line: 79, column: 11, scope: !2454)
!2456 = !DILocation(line: 79, column: 20, scope: !2454)
!2457 = !DILocation(line: 79, column: 6, scope: !2422)
!2458 = !DILocation(line: 80, column: 3, scope: !2454)
!2459 = !DILocation(line: 80, column: 8, scope: !2454)
!2460 = !DILocation(line: 80, column: 17, scope: !2454)
!2461 = !DILocation(line: 81, column: 1, scope: !2422)
!2462 = distinct !DISubprogram(name: "platform_msi_update_chip_ops", scope: !3, file: !3, line: 90, type: !2423, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2463)
!2463 = !{!2464, !2465, !2466, !2469}
!2464 = !DILocalVariable(name: "info", arg: 1, scope: !2462, file: !3, line: 90, type: !2327)
!2465 = !DILocalVariable(name: "chip", scope: !2462, file: !3, line: 92, type: !2107)
!2466 = !DILocalVariable(name: "__ret_warn_on", scope: !2467, file: !3, line: 105, type: !46)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 105, column: 6)
!2468 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 105, column: 6)
!2469 = !DILocalVariable(name: "__flags", scope: !2470, file: !3, line: 105, type: !46)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 105, column: 6)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 105, column: 6)
!2472 = !DILocation(line: 90, column: 66, scope: !2462)
!2473 = !DILocation(line: 92, column: 2, scope: !2462)
!2474 = !DILocation(line: 92, column: 19, scope: !2462)
!2475 = !DILocation(line: 92, column: 26, scope: !2462)
!2476 = !DILocation(line: 92, column: 32, scope: !2462)
!2477 = !DILocation(line: 94, column: 2, scope: !2462)
!2478 = !DILocation(line: 94, column: 2, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 94, column: 2)
!2480 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 94, column: 2)
!2481 = !DILocation(line: 94, column: 2, scope: !2480)
!2482 = !DILocation(line: 94, column: 2, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 94, column: 2)
!2484 = !DILocation(line: 94, column: 2, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 94, column: 2)
!2486 = !DILocation(line: 94, column: 2, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 94, column: 2)
!2488 = !{i64 2153077507, i64 2153077536, i64 2153077582, i64 2153077640, i64 2153077694, i64 2153077748, i64 2153077803, i64 2153077834}
!2489 = !DILocation(line: 95, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 95, column: 6)
!2491 = !DILocation(line: 95, column: 13, scope: !2490)
!2492 = !DILocation(line: 95, column: 6, scope: !2462)
!2493 = !DILocation(line: 96, column: 3, scope: !2490)
!2494 = !DILocation(line: 96, column: 9, scope: !2490)
!2495 = !DILocation(line: 96, column: 18, scope: !2490)
!2496 = !DILocation(line: 97, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 97, column: 6)
!2498 = !DILocation(line: 97, column: 13, scope: !2497)
!2499 = !DILocation(line: 97, column: 6, scope: !2462)
!2500 = !DILocation(line: 98, column: 3, scope: !2497)
!2501 = !DILocation(line: 98, column: 9, scope: !2497)
!2502 = !DILocation(line: 98, column: 20, scope: !2497)
!2503 = !DILocation(line: 99, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 99, column: 6)
!2505 = !DILocation(line: 99, column: 13, scope: !2504)
!2506 = !DILocation(line: 99, column: 6, scope: !2462)
!2507 = !DILocation(line: 100, column: 3, scope: !2504)
!2508 = !DILocation(line: 100, column: 9, scope: !2504)
!2509 = !DILocation(line: 100, column: 17, scope: !2504)
!2510 = !DILocation(line: 101, column: 7, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 101, column: 6)
!2512 = !DILocation(line: 101, column: 13, scope: !2511)
!2513 = !DILocation(line: 101, column: 6, scope: !2462)
!2514 = !DILocation(line: 102, column: 3, scope: !2511)
!2515 = !DILocation(line: 102, column: 9, scope: !2511)
!2516 = !DILocation(line: 102, column: 26, scope: !2511)
!2517 = !DILocation(line: 103, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 103, column: 6)
!2519 = !DILocation(line: 103, column: 13, scope: !2518)
!2520 = !DILocation(line: 103, column: 6, scope: !2462)
!2521 = !DILocation(line: 104, column: 3, scope: !2518)
!2522 = !DILocation(line: 104, column: 9, scope: !2518)
!2523 = !DILocation(line: 104, column: 27, scope: !2518)
!2524 = !DILocation(line: 105, column: 6, scope: !2467)
!2525 = !DILocation(line: 0, scope: !2467)
!2526 = !DILocation(line: 105, column: 6, scope: !2471)
!2527 = !DILocation(line: 105, column: 6, scope: !2470)
!2528 = !DILocation(line: 105, column: 6, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 105, column: 6)
!2530 = !DILocation(line: 105, column: 6, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 105, column: 6)
!2532 = !{i64 2153078814, i64 2153078843, i64 2153078889, i64 2153078947, i64 2153079001, i64 2153079055, i64 2153079110, i64 2153079141, i64 2153079449, i64 2153079455, i64 2153079502, i64 2153079525, i64 2153079551}
!2533 = !DILocation(line: 105, column: 6, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 105, column: 6)
!2535 = !DILocation(line: 105, column: 6, scope: !2468)
!2536 = !DILocation(line: 105, column: 6, scope: !2462)
!2537 = !DILocation(line: 107, column: 3, scope: !2468)
!2538 = !DILocation(line: 107, column: 9, scope: !2468)
!2539 = !DILocation(line: 107, column: 15, scope: !2468)
!2540 = !DILocation(line: 108, column: 1, scope: !2462)
!2541 = !DISubprogram(name: "msi_create_irq_domain", scope: !122, file: !122, line: 595, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2542 = !DISubprogram(name: "irq_domain_update_bus_token", scope: !273, file: !273, line: 301, type: !2543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !271, !94}
!2545 = distinct !DISubprogram(name: "platform_msi_domain_alloc_irqs", scope: !3, file: !3, line: 207, type: !2546, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!46, !952, !7, !1861}
!2548 = !{!2549, !2550, !2551, !2552}
!2549 = !DILocalVariable(name: "dev", arg: 1, scope: !2545, file: !3, line: 207, type: !952)
!2550 = !DILocalVariable(name: "nvec", arg: 2, scope: !2545, file: !3, line: 207, type: !7)
!2551 = !DILocalVariable(name: "write_msi_msg", arg: 3, scope: !2545, file: !3, line: 208, type: !1861)
!2552 = !DILocalVariable(name: "err", scope: !2545, file: !3, line: 210, type: !46)
!2553 = !DILocation(line: 207, column: 51, scope: !2545)
!2554 = !DILocation(line: 207, column: 69, scope: !2545)
!2555 = !DILocation(line: 208, column: 28, scope: !2545)
!2556 = !DILocation(line: 210, column: 2, scope: !2545)
!2557 = !DILocation(line: 210, column: 6, scope: !2545)
!2558 = !DILocation(line: 212, column: 37, scope: !2545)
!2559 = !DILocation(line: 212, column: 42, scope: !2545)
!2560 = !DILocation(line: 212, column: 48, scope: !2545)
!2561 = !DILocation(line: 212, column: 8, scope: !2545)
!2562 = !DILocation(line: 212, column: 6, scope: !2545)
!2563 = !DILocation(line: 213, column: 6, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 213, column: 6)
!2565 = !DILocation(line: 213, column: 6, scope: !2545)
!2566 = !DILocation(line: 214, column: 10, scope: !2564)
!2567 = !DILocation(line: 214, column: 3, scope: !2564)
!2568 = !DILocation(line: 216, column: 36, scope: !2545)
!2569 = !DILocation(line: 216, column: 64, scope: !2545)
!2570 = !DILocation(line: 216, column: 69, scope: !2545)
!2571 = !DILocation(line: 216, column: 8, scope: !2545)
!2572 = !DILocation(line: 216, column: 6, scope: !2545)
!2573 = !DILocation(line: 217, column: 6, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 217, column: 6)
!2575 = !DILocation(line: 217, column: 6, scope: !2545)
!2576 = !DILocation(line: 218, column: 31, scope: !2574)
!2577 = !DILocation(line: 218, column: 3, scope: !2574)
!2578 = !DILocation(line: 220, column: 9, scope: !2545)
!2579 = !DILocation(line: 220, column: 2, scope: !2545)
!2580 = !DILocation(line: 221, column: 1, scope: !2545)
!2581 = distinct !DISubprogram(name: "platform_msi_alloc_priv_data", scope: !3, file: !3, line: 143, type: !2546, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2582)
!2582 = !{!2583, !2584, !2585, !2586, !2587}
!2583 = !DILocalVariable(name: "dev", arg: 1, scope: !2581, file: !3, line: 143, type: !952)
!2584 = !DILocalVariable(name: "nvec", arg: 2, scope: !2581, file: !3, line: 143, type: !7)
!2585 = !DILocalVariable(name: "write_msi_msg", arg: 3, scope: !2581, file: !3, line: 144, type: !1861)
!2586 = !DILocalVariable(name: "datap", scope: !2581, file: !3, line: 146, type: !1682)
!2587 = !DILocalVariable(name: "err", scope: !2581, file: !3, line: 147, type: !46)
!2588 = !DILocation(line: 143, column: 56, scope: !2581)
!2589 = !DILocation(line: 143, column: 74, scope: !2581)
!2590 = !DILocation(line: 144, column: 26, scope: !2581)
!2591 = !DILocation(line: 146, column: 2, scope: !2581)
!2592 = !DILocation(line: 146, column: 33, scope: !2581)
!2593 = !DILocation(line: 147, column: 2, scope: !2581)
!2594 = !DILocation(line: 147, column: 6, scope: !2581)
!2595 = !DILocation(line: 155, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 155, column: 6)
!2597 = !DILocation(line: 155, column: 12, scope: !2596)
!2598 = !DILocation(line: 155, column: 16, scope: !2596)
!2599 = !DILocation(line: 155, column: 23, scope: !2596)
!2600 = !DILocation(line: 155, column: 27, scope: !2596)
!2601 = !DILocation(line: 155, column: 41, scope: !2596)
!2602 = !DILocation(line: 155, column: 45, scope: !2596)
!2603 = !DILocation(line: 155, column: 50, scope: !2596)
!2604 = !DILocation(line: 155, column: 53, scope: !2596)
!2605 = !DILocation(line: 155, column: 58, scope: !2596)
!2606 = !DILocation(line: 155, column: 6, scope: !2581)
!2607 = !DILocation(line: 156, column: 3, scope: !2596)
!2608 = !DILocation(line: 158, column: 6, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 158, column: 6)
!2610 = !DILocation(line: 158, column: 11, scope: !2609)
!2611 = !DILocation(line: 158, column: 15, scope: !2609)
!2612 = !DILocation(line: 158, column: 23, scope: !2609)
!2613 = !DILocation(line: 158, column: 33, scope: !2609)
!2614 = !DILocation(line: 158, column: 6, scope: !2581)
!2615 = !DILocation(line: 159, column: 3, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 159, column: 3)
!2617 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 158, column: 61)
!2618 = !DILocation(line: 159, column: 3, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 159, column: 3)
!2620 = !DILocation(line: 160, column: 3, scope: !2617)
!2621 = !DILocation(line: 163, column: 30, scope: !2581)
!2622 = !DILocation(line: 163, column: 8, scope: !2581)
!2623 = !DILocation(line: 163, column: 6, scope: !2581)
!2624 = !DILocation(line: 164, column: 6, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 164, column: 6)
!2626 = !DILocation(line: 164, column: 6, scope: !2581)
!2627 = !DILocation(line: 165, column: 10, scope: !2625)
!2628 = !DILocation(line: 165, column: 3, scope: !2625)
!2629 = !DILocation(line: 168, column: 6, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 168, column: 6)
!2631 = !DILocation(line: 168, column: 11, scope: !2630)
!2632 = !DILocation(line: 168, column: 15, scope: !2630)
!2633 = !DILocation(line: 168, column: 21, scope: !2630)
!2634 = !DILocation(line: 168, column: 6, scope: !2581)
!2635 = !DILocation(line: 169, column: 3, scope: !2630)
!2636 = !DILocation(line: 171, column: 10, scope: !2581)
!2637 = !DILocation(line: 171, column: 8, scope: !2581)
!2638 = !DILocation(line: 172, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 172, column: 6)
!2640 = !DILocation(line: 172, column: 6, scope: !2581)
!2641 = !DILocation(line: 173, column: 3, scope: !2639)
!2642 = !DILocation(line: 175, column: 17, scope: !2581)
!2643 = !DILocation(line: 175, column: 2, scope: !2581)
!2644 = !DILocation(line: 175, column: 9, scope: !2581)
!2645 = !DILocation(line: 175, column: 15, scope: !2581)
!2646 = !DILocation(line: 177, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 177, column: 6)
!2648 = !DILocation(line: 177, column: 13, scope: !2647)
!2649 = !DILocation(line: 177, column: 19, scope: !2647)
!2650 = !DILocation(line: 177, column: 6, scope: !2581)
!2651 = !DILocation(line: 178, column: 9, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 177, column: 24)
!2653 = !DILocation(line: 178, column: 16, scope: !2652)
!2654 = !DILocation(line: 178, column: 7, scope: !2652)
!2655 = !DILocation(line: 179, column: 9, scope: !2652)
!2656 = !DILocation(line: 179, column: 3, scope: !2652)
!2657 = !DILocation(line: 180, column: 10, scope: !2652)
!2658 = !DILocation(line: 180, column: 3, scope: !2652)
!2659 = !DILocation(line: 183, column: 21, scope: !2581)
!2660 = !DILocation(line: 183, column: 2, scope: !2581)
!2661 = !DILocation(line: 183, column: 9, scope: !2581)
!2662 = !DILocation(line: 183, column: 19, scope: !2581)
!2663 = !DILocation(line: 184, column: 15, scope: !2581)
!2664 = !DILocation(line: 184, column: 2, scope: !2581)
!2665 = !DILocation(line: 184, column: 9, scope: !2581)
!2666 = !DILocation(line: 184, column: 13, scope: !2581)
!2667 = !DILocation(line: 185, column: 33, scope: !2581)
!2668 = !DILocation(line: 185, column: 2, scope: !2581)
!2669 = !DILocation(line: 185, column: 7, scope: !2581)
!2670 = !DILocation(line: 185, column: 11, scope: !2581)
!2671 = !DILocation(line: 185, column: 17, scope: !2581)
!2672 = !DILocation(line: 185, column: 31, scope: !2581)
!2673 = !DILocation(line: 186, column: 2, scope: !2581)
!2674 = !DILocation(line: 187, column: 1, scope: !2581)
!2675 = !DISubprogram(name: "msi_domain_alloc_irqs_range", scope: !122, file: !122, line: 610, type: !2676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!46, !952, !7, !7, !7}
!2678 = distinct !DISubprogram(name: "platform_msi_free_priv_data", scope: !3, file: !3, line: 189, type: !975, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2679 = !{!2680, !2681}
!2680 = !DILocalVariable(name: "dev", arg: 1, scope: !2678, file: !3, line: 189, type: !952)
!2681 = !DILocalVariable(name: "data", scope: !2678, file: !3, line: 191, type: !1682)
!2682 = !DILocation(line: 189, column: 56, scope: !2678)
!2683 = !DILocation(line: 191, column: 2, scope: !2678)
!2684 = !DILocation(line: 191, column: 33, scope: !2678)
!2685 = !DILocation(line: 191, column: 40, scope: !2678)
!2686 = !DILocation(line: 191, column: 45, scope: !2678)
!2687 = !DILocation(line: 191, column: 49, scope: !2678)
!2688 = !DILocation(line: 191, column: 55, scope: !2678)
!2689 = !DILocation(line: 193, column: 2, scope: !2678)
!2690 = !DILocation(line: 193, column: 7, scope: !2678)
!2691 = !DILocation(line: 193, column: 11, scope: !2678)
!2692 = !DILocation(line: 193, column: 17, scope: !2678)
!2693 = !DILocation(line: 193, column: 31, scope: !2678)
!2694 = !DILocation(line: 194, column: 2, scope: !2678)
!2695 = !DILocation(line: 195, column: 8, scope: !2678)
!2696 = !DILocation(line: 195, column: 2, scope: !2678)
!2697 = !DILocation(line: 196, column: 1, scope: !2678)
!2698 = distinct !DISubprogram(name: "platform_msi_domain_free_irqs", scope: !3, file: !3, line: 228, type: !975, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2699 = !{!2700}
!2700 = !DILocalVariable(name: "dev", arg: 1, scope: !2698, file: !3, line: 228, type: !952)
!2701 = !DILocation(line: 228, column: 51, scope: !2698)
!2702 = !DILocation(line: 230, column: 27, scope: !2698)
!2703 = !DILocation(line: 230, column: 2, scope: !2698)
!2704 = !DILocation(line: 231, column: 30, scope: !2698)
!2705 = !DILocation(line: 231, column: 2, scope: !2698)
!2706 = !DILocation(line: 232, column: 1, scope: !2698)
!2707 = !DISubprogram(name: "msi_domain_free_irqs_all", scope: !122, file: !122, line: 623, type: !2708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !952, !7}
!2710 = distinct !DISubprogram(name: "platform_msi_get_host_data", scope: !3, file: !3, line: 243, type: !2711, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!175, !271}
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "domain", arg: 1, scope: !2710, file: !3, line: 243, type: !271)
!2715 = !DILocalVariable(name: "data", scope: !2710, file: !3, line: 245, type: !1682)
!2716 = !DILocation(line: 243, column: 53, scope: !2710)
!2717 = !DILocation(line: 245, column: 2, scope: !2710)
!2718 = !DILocation(line: 245, column: 33, scope: !2710)
!2719 = !DILocation(line: 245, column: 40, scope: !2710)
!2720 = !DILocation(line: 245, column: 48, scope: !2710)
!2721 = !DILocation(line: 247, column: 9, scope: !2710)
!2722 = !DILocation(line: 247, column: 15, scope: !2710)
!2723 = !DILocation(line: 248, column: 1, scope: !2710)
!2724 = !DILocation(line: 247, column: 2, scope: !2710)
!2725 = distinct !DISubprogram(name: "__platform_msi_create_device_domain", scope: !3, file: !3, line: 269, type: !2726, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!271, !952, !7, !326, !1861, !285, !175}
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739}
!2729 = !DILocalVariable(name: "dev", arg: 1, scope: !2725, file: !3, line: 269, type: !952)
!2730 = !DILocalVariable(name: "nvec", arg: 2, scope: !2725, file: !3, line: 270, type: !7)
!2731 = !DILocalVariable(name: "is_tree", arg: 3, scope: !2725, file: !3, line: 271, type: !326)
!2732 = !DILocalVariable(name: "write_msi_msg", arg: 4, scope: !2725, file: !3, line: 272, type: !1861)
!2733 = !DILocalVariable(name: "ops", arg: 5, scope: !2725, file: !3, line: 273, type: !285)
!2734 = !DILocalVariable(name: "host_data", arg: 6, scope: !2725, file: !3, line: 274, type: !175)
!2735 = !DILocalVariable(name: "data", scope: !2725, file: !3, line: 276, type: !1682)
!2736 = !DILocalVariable(name: "domain", scope: !2725, file: !3, line: 277, type: !271)
!2737 = !DILocalVariable(name: "err", scope: !2725, file: !3, line: 278, type: !46)
!2738 = !DILabel(scope: !2725, name: "free_domain", file: !3, line: 306)
!2739 = !DILabel(scope: !2725, name: "free_priv", file: !3, line: 308)
!2740 = !DILocation(line: 269, column: 52, scope: !2725)
!2741 = !DILocation(line: 270, column: 22, scope: !2725)
!2742 = !DILocation(line: 271, column: 14, scope: !2725)
!2743 = !DILocation(line: 272, column: 29, scope: !2725)
!2744 = !DILocation(line: 273, column: 38, scope: !2725)
!2745 = !DILocation(line: 274, column: 15, scope: !2725)
!2746 = !DILocation(line: 276, column: 2, scope: !2725)
!2747 = !DILocation(line: 276, column: 33, scope: !2725)
!2748 = !DILocation(line: 277, column: 2, scope: !2725)
!2749 = !DILocation(line: 277, column: 21, scope: !2725)
!2750 = !DILocation(line: 278, column: 2, scope: !2725)
!2751 = !DILocation(line: 278, column: 6, scope: !2725)
!2752 = !DILocation(line: 280, column: 37, scope: !2725)
!2753 = !DILocation(line: 280, column: 42, scope: !2725)
!2754 = !DILocation(line: 280, column: 48, scope: !2725)
!2755 = !DILocation(line: 280, column: 8, scope: !2725)
!2756 = !DILocation(line: 280, column: 6, scope: !2725)
!2757 = !DILocation(line: 281, column: 6, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 281, column: 6)
!2759 = !DILocation(line: 281, column: 6, scope: !2725)
!2760 = !DILocation(line: 282, column: 3, scope: !2758)
!2761 = !DILocation(line: 289, column: 2, scope: !2725)
!2762 = !DILocation(line: 289, column: 2, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 289, column: 2)
!2764 = !DILocation(line: 291, column: 9, scope: !2725)
!2765 = !DILocation(line: 291, column: 14, scope: !2725)
!2766 = !DILocation(line: 291, column: 18, scope: !2725)
!2767 = !DILocation(line: 291, column: 24, scope: !2725)
!2768 = !DILocation(line: 291, column: 7, scope: !2725)
!2769 = !DILocation(line: 292, column: 20, scope: !2725)
!2770 = !DILocation(line: 292, column: 2, scope: !2725)
!2771 = !DILocation(line: 292, column: 8, scope: !2725)
!2772 = !DILocation(line: 292, column: 18, scope: !2725)
!2773 = !DILocation(line: 293, column: 39, scope: !2725)
!2774 = !DILocation(line: 293, column: 44, scope: !2725)
!2775 = !DILocation(line: 293, column: 48, scope: !2725)
!2776 = !DILocation(line: 294, column: 11, scope: !2725)
!2777 = !{i8 0, i8 2}
!2778 = !DILocation(line: 294, column: 25, scope: !2725)
!2779 = !DILocation(line: 295, column: 11, scope: !2725)
!2780 = !DILocation(line: 295, column: 16, scope: !2725)
!2781 = !DILocation(line: 295, column: 24, scope: !2725)
!2782 = !DILocation(line: 295, column: 29, scope: !2725)
!2783 = !DILocation(line: 293, column: 11, scope: !2725)
!2784 = !DILocation(line: 293, column: 9, scope: !2725)
!2785 = !DILocation(line: 296, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 296, column: 6)
!2787 = !DILocation(line: 296, column: 6, scope: !2725)
!2788 = !DILocation(line: 297, column: 3, scope: !2786)
!2789 = !DILocation(line: 299, column: 2, scope: !2725)
!2790 = !DILocation(line: 299, column: 2, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 299, column: 2)
!2792 = !DILocation(line: 300, column: 32, scope: !2725)
!2793 = !DILocation(line: 300, column: 40, scope: !2725)
!2794 = !DILocation(line: 300, column: 48, scope: !2725)
!2795 = !DILocation(line: 300, column: 53, scope: !2725)
!2796 = !DILocation(line: 300, column: 60, scope: !2725)
!2797 = !DILocation(line: 300, column: 66, scope: !2725)
!2798 = !DILocation(line: 300, column: 8, scope: !2725)
!2799 = !DILocation(line: 300, column: 6, scope: !2725)
!2800 = !DILocation(line: 301, column: 6, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 301, column: 6)
!2802 = !DILocation(line: 301, column: 6, scope: !2725)
!2803 = !DILocation(line: 302, column: 3, scope: !2801)
!2804 = !DILocation(line: 304, column: 9, scope: !2725)
!2805 = !DILocation(line: 304, column: 2, scope: !2725)
!2806 = !DILocation(line: 306, column: 1, scope: !2725)
!2807 = !DILocation(line: 307, column: 20, scope: !2725)
!2808 = !DILocation(line: 307, column: 2, scope: !2725)
!2809 = !DILocation(line: 308, column: 1, scope: !2725)
!2810 = !DILocation(line: 309, column: 30, scope: !2725)
!2811 = !DILocation(line: 309, column: 2, scope: !2725)
!2812 = !DILocation(line: 310, column: 2, scope: !2725)
!2813 = !DILocation(line: 311, column: 1, scope: !2725)
!2814 = !DISubprogram(name: "irq_domain_create_hierarchy", scope: !273, file: !273, line: 479, type: !2815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!271, !271, !7, !7, !308, !285, !175}
!2817 = !DISubprogram(name: "msi_domain_prepare_irqs", scope: !122, file: !122, line: 635, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2818 = !DISubprogram(name: "irq_domain_remove", scope: !273, file: !273, line: 390, type: !2819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !271}
!2821 = distinct !DISubprogram(name: "platform_msi_device_domain_free", scope: !3, file: !3, line: 321, type: !2082, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2822)
!2822 = !{!2823, !2824, !2825, !2826}
!2823 = !DILocalVariable(name: "domain", arg: 1, scope: !2821, file: !3, line: 321, type: !271)
!2824 = !DILocalVariable(name: "virq", arg: 2, scope: !2821, file: !3, line: 321, type: !7)
!2825 = !DILocalVariable(name: "nr_irqs", arg: 3, scope: !2821, file: !3, line: 322, type: !7)
!2826 = !DILocalVariable(name: "data", scope: !2821, file: !3, line: 324, type: !1682)
!2827 = !DILocation(line: 321, column: 57, scope: !2821)
!2828 = !DILocation(line: 321, column: 78, scope: !2821)
!2829 = !DILocation(line: 322, column: 23, scope: !2821)
!2830 = !DILocation(line: 324, column: 2, scope: !2821)
!2831 = !DILocation(line: 324, column: 33, scope: !2821)
!2832 = !DILocation(line: 324, column: 40, scope: !2821)
!2833 = !DILocation(line: 324, column: 48, scope: !2821)
!2834 = !DILocation(line: 326, column: 17, scope: !2821)
!2835 = !DILocation(line: 326, column: 23, scope: !2821)
!2836 = !DILocation(line: 326, column: 2, scope: !2821)
!2837 = !DILocation(line: 327, column: 30, scope: !2821)
!2838 = !DILocation(line: 327, column: 36, scope: !2821)
!2839 = !DILocation(line: 327, column: 41, scope: !2821)
!2840 = !DILocation(line: 327, column: 47, scope: !2821)
!2841 = !DILocation(line: 327, column: 2, scope: !2821)
!2842 = !DILocation(line: 328, column: 30, scope: !2821)
!2843 = !DILocation(line: 328, column: 38, scope: !2821)
!2844 = !DILocation(line: 328, column: 44, scope: !2821)
!2845 = !DILocation(line: 328, column: 2, scope: !2821)
!2846 = !DILocation(line: 329, column: 27, scope: !2821)
!2847 = !DILocation(line: 329, column: 33, scope: !2821)
!2848 = !DILocation(line: 329, column: 38, scope: !2821)
!2849 = !DILocation(line: 329, column: 44, scope: !2821)
!2850 = !DILocation(line: 329, column: 51, scope: !2821)
!2851 = !DILocation(line: 329, column: 49, scope: !2821)
!2852 = !DILocation(line: 329, column: 59, scope: !2821)
!2853 = !DILocation(line: 329, column: 2, scope: !2821)
!2854 = !DILocation(line: 330, column: 19, scope: !2821)
!2855 = !DILocation(line: 330, column: 25, scope: !2821)
!2856 = !DILocation(line: 330, column: 2, scope: !2821)
!2857 = !DILocation(line: 331, column: 1, scope: !2821)
!2858 = !DISubprogram(name: "msi_lock_descs", scope: !122, file: !122, line: 249, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2859 = !DISubprogram(name: "msi_domain_depopulate_descs", scope: !122, file: !122, line: 639, type: !2860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !952, !46, !46}
!2862 = !DISubprogram(name: "irq_domain_free_irqs_common", scope: !273, file: !273, line: 519, type: !2082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2863 = distinct !DISubprogram(name: "msi_free_msi_descs_range", scope: !122, file: !122, line: 358, type: !2864, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{null, !952, !7, !7}
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "dev", arg: 1, scope: !2863, file: !122, line: 358, type: !952)
!2868 = !DILocalVariable(name: "first", arg: 2, scope: !2863, file: !122, line: 358, type: !7)
!2869 = !DILocalVariable(name: "last", arg: 3, scope: !2863, file: !122, line: 359, type: !7)
!2870 = !DILocation(line: 358, column: 60, scope: !2863)
!2871 = !DILocation(line: 358, column: 78, scope: !2863)
!2872 = !DILocation(line: 359, column: 23, scope: !2863)
!2873 = !DILocation(line: 361, column: 34, scope: !2863)
!2874 = !DILocation(line: 361, column: 59, scope: !2863)
!2875 = !DILocation(line: 361, column: 66, scope: !2863)
!2876 = !DILocation(line: 361, column: 2, scope: !2863)
!2877 = !DILocation(line: 362, column: 1, scope: !2863)
!2878 = !DISubprogram(name: "msi_unlock_descs", scope: !122, file: !122, line: 250, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2879 = distinct !DISubprogram(name: "platform_msi_device_domain_alloc", scope: !3, file: !3, line: 345, type: !2880, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!46, !271, !7, !7}
!2882 = !{!2883, !2884, !2885, !2886, !2887}
!2883 = !DILocalVariable(name: "domain", arg: 1, scope: !2879, file: !3, line: 345, type: !271)
!2884 = !DILocalVariable(name: "virq", arg: 2, scope: !2879, file: !3, line: 345, type: !7)
!2885 = !DILocalVariable(name: "nr_irqs", arg: 3, scope: !2879, file: !3, line: 346, type: !7)
!2886 = !DILocalVariable(name: "data", scope: !2879, file: !3, line: 348, type: !1682)
!2887 = !DILocalVariable(name: "dev", scope: !2879, file: !3, line: 349, type: !952)
!2888 = !DILocation(line: 345, column: 57, scope: !2879)
!2889 = !DILocation(line: 345, column: 78, scope: !2879)
!2890 = !DILocation(line: 346, column: 23, scope: !2879)
!2891 = !DILocation(line: 348, column: 2, scope: !2879)
!2892 = !DILocation(line: 348, column: 33, scope: !2879)
!2893 = !DILocation(line: 348, column: 40, scope: !2879)
!2894 = !DILocation(line: 348, column: 48, scope: !2879)
!2895 = !DILocation(line: 349, column: 2, scope: !2879)
!2896 = !DILocation(line: 349, column: 17, scope: !2879)
!2897 = !DILocation(line: 349, column: 23, scope: !2879)
!2898 = !DILocation(line: 349, column: 29, scope: !2879)
!2899 = !DILocation(line: 351, column: 34, scope: !2879)
!2900 = !DILocation(line: 351, column: 42, scope: !2879)
!2901 = !DILocation(line: 351, column: 50, scope: !2879)
!2902 = !DILocation(line: 351, column: 55, scope: !2879)
!2903 = !DILocation(line: 351, column: 61, scope: !2879)
!2904 = !DILocation(line: 351, column: 71, scope: !2879)
!2905 = !DILocation(line: 351, column: 77, scope: !2879)
!2906 = !DILocation(line: 351, column: 9, scope: !2879)
!2907 = !DILocation(line: 352, column: 1, scope: !2879)
!2908 = !DILocation(line: 351, column: 2, scope: !2879)
!2909 = !DISubprogram(name: "msi_domain_populate_irqs", scope: !122, file: !122, line: 637, type: !2910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!46, !271, !952, !46, !46, !2341}
!2912 = distinct !DISubprogram(name: "platform_msi_write_msg", scope: !3, file: !3, line: 83, type: !2153, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2913)
!2913 = !{!2914, !2915, !2916}
!2914 = !DILocalVariable(name: "data", arg: 1, scope: !2912, file: !3, line: 83, type: !2088)
!2915 = !DILocalVariable(name: "msg", arg: 2, scope: !2912, file: !3, line: 83, type: !1865)
!2916 = !DILocalVariable(name: "desc", scope: !2912, file: !3, line: 85, type: !1708)
!2917 = !DILocation(line: 83, column: 53, scope: !2912)
!2918 = !DILocation(line: 83, column: 75, scope: !2912)
!2919 = !DILocation(line: 85, column: 2, scope: !2912)
!2920 = !DILocation(line: 85, column: 19, scope: !2912)
!2921 = !DILocation(line: 85, column: 48, scope: !2912)
!2922 = !DILocation(line: 85, column: 26, scope: !2912)
!2923 = !DILocation(line: 87, column: 2, scope: !2912)
!2924 = !DILocation(line: 87, column: 8, scope: !2912)
!2925 = !DILocation(line: 87, column: 13, scope: !2912)
!2926 = !DILocation(line: 87, column: 17, scope: !2912)
!2927 = !DILocation(line: 87, column: 23, scope: !2912)
!2928 = !DILocation(line: 87, column: 38, scope: !2912)
!2929 = !DILocation(line: 87, column: 48, scope: !2912)
!2930 = !DILocation(line: 87, column: 54, scope: !2912)
!2931 = !DILocation(line: 88, column: 1, scope: !2912)
!2932 = distinct !DISubprogram(name: "irq_data_get_msi_desc", scope: !114, file: !114, line: 854, type: !2933, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!1708, !2088}
!2935 = !{!2936}
!2936 = !DILocalVariable(name: "d", arg: 1, scope: !2932, file: !114, line: 854, type: !2088)
!2937 = !DILocation(line: 854, column: 71, scope: !2932)
!2938 = !DILocation(line: 856, column: 9, scope: !2932)
!2939 = !DILocation(line: 856, column: 12, scope: !2932)
!2940 = !DILocation(line: 856, column: 20, scope: !2932)
!2941 = !DILocation(line: 856, column: 2, scope: !2932)
!2942 = !DISubprogram(name: "_dev_err", scope: !2943, file: !2943, line: 50, type: !2944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2943 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !336, !282, null}
!2946 = !DISubprogram(name: "msi_setup_device_data", scope: !122, file: !122, line: 247, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2947 = distinct !DISubprogram(name: "kzalloc", scope: !165, file: !165, line: 719, type: !2948, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!175, !429, !176}
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "size", arg: 1, scope: !2947, file: !165, line: 719, type: !429)
!2952 = !DILocalVariable(name: "flags", arg: 2, scope: !2947, file: !165, line: 719, type: !176)
!2953 = !DILocation(line: 719, column: 52, scope: !2947)
!2954 = !DILocation(line: 719, column: 64, scope: !2947)
!2955 = !DILocation(line: 721, column: 17, scope: !2947)
!2956 = !DILocation(line: 721, column: 23, scope: !2947)
!2957 = !DILocation(line: 721, column: 29, scope: !2947)
!2958 = !DILocation(line: 721, column: 9, scope: !2947)
!2959 = !DILocation(line: 721, column: 2, scope: !2947)
!2960 = !DISubprogram(name: "ida_alloc_range", scope: !208, file: !208, line: 257, type: !2961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!46, !2963, !7, !7, !176}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!2964 = !DISubprogram(name: "kfree", scope: !165, file: !165, line: 227, type: !2965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !334}
!2967 = distinct !DISubprogram(name: "kmalloc", scope: !165, file: !165, line: 591, type: !2948, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2968)
!2968 = !{!2969, !2970, !2971}
!2969 = !DILocalVariable(name: "size", arg: 1, scope: !2967, file: !165, line: 591, type: !429)
!2970 = !DILocalVariable(name: "flags", arg: 2, scope: !2967, file: !165, line: 591, type: !176)
!2971 = !DILocalVariable(name: "index", scope: !2972, file: !165, line: 594, type: !7)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !165, line: 593, column: 42)
!2973 = distinct !DILexicalBlock(scope: !2967, file: !165, line: 593, column: 6)
!2974 = !DILocation(line: 591, column: 61, scope: !2967)
!2975 = !DILocation(line: 591, column: 73, scope: !2967)
!2976 = !DILocation(line: 593, column: 27, scope: !2973)
!2977 = !DILocation(line: 593, column: 6, scope: !2973)
!2978 = !DILocation(line: 593, column: 33, scope: !2973)
!2979 = !DILocation(line: 593, column: 36, scope: !2973)
!2980 = !DILocation(line: 593, column: 6, scope: !2967)
!2981 = !DILocation(line: 594, column: 3, scope: !2972)
!2982 = !DILocation(line: 594, column: 16, scope: !2972)
!2983 = !DILocation(line: 596, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2972, file: !165, line: 596, column: 7)
!2985 = !DILocation(line: 596, column: 12, scope: !2984)
!2986 = !DILocation(line: 596, column: 7, scope: !2972)
!2987 = !DILocation(line: 597, column: 25, scope: !2984)
!2988 = !DILocation(line: 597, column: 31, scope: !2984)
!2989 = !DILocation(line: 597, column: 11, scope: !2984)
!2990 = !DILocation(line: 597, column: 4, scope: !2984)
!2991 = !DILocation(line: 599, column: 11, scope: !2972)
!2992 = !DILocation(line: 599, column: 9, scope: !2972)
!2993 = !DILocation(line: 601, column: 33, scope: !2972)
!2994 = !DILocation(line: 601, column: 40, scope: !2972)
!2995 = !DILocation(line: 601, column: 20, scope: !2972)
!2996 = !DILocation(line: 601, column: 5, scope: !2972)
!2997 = !DILocation(line: 601, column: 51, scope: !2972)
!2998 = !DILocation(line: 602, column: 5, scope: !2972)
!2999 = !DILocation(line: 602, column: 12, scope: !2972)
!3000 = !DILocation(line: 600, column: 10, scope: !2972)
!3001 = !DILocation(line: 600, column: 3, scope: !2972)
!3002 = !DILocation(line: 603, column: 2, scope: !2973)
!3003 = !DILocation(line: 604, column: 19, scope: !2967)
!3004 = !DILocation(line: 604, column: 25, scope: !2967)
!3005 = !DILocation(line: 604, column: 9, scope: !2967)
!3006 = !DILocation(line: 604, column: 2, scope: !2967)
!3007 = !DILocation(line: 605, column: 1, scope: !2967)
!3008 = !DISubprogram(name: "kmalloc_large", scope: !165, file: !165, line: 531, type: !2948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3009 = distinct !DISubprogram(name: "__kmalloc_index", scope: !165, file: !165, line: 444, type: !3010, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!7, !429, !326}
!3012 = !{!3013, !3014}
!3013 = !DILocalVariable(name: "size", arg: 1, scope: !3009, file: !165, line: 444, type: !429)
!3014 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3009, file: !165, line: 445, type: !326)
!3015 = !DILocation(line: 444, column: 60, scope: !3009)
!3016 = !DILocation(line: 445, column: 16, scope: !3009)
!3017 = !DILocation(line: 447, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 447, column: 6)
!3019 = !DILocation(line: 447, column: 6, scope: !3009)
!3020 = !DILocation(line: 448, column: 3, scope: !3018)
!3021 = !DILocation(line: 450, column: 6, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 450, column: 6)
!3023 = !DILocation(line: 450, column: 11, scope: !3022)
!3024 = !DILocation(line: 450, column: 6, scope: !3009)
!3025 = !DILocation(line: 451, column: 3, scope: !3022)
!3026 = !DILocation(line: 453, column: 32, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 453, column: 6)
!3028 = !DILocation(line: 453, column: 37, scope: !3027)
!3029 = !DILocation(line: 453, column: 42, scope: !3027)
!3030 = !DILocation(line: 453, column: 45, scope: !3027)
!3031 = !DILocation(line: 453, column: 50, scope: !3027)
!3032 = !DILocation(line: 453, column: 6, scope: !3009)
!3033 = !DILocation(line: 454, column: 3, scope: !3027)
!3034 = !DILocation(line: 455, column: 32, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 455, column: 6)
!3036 = !DILocation(line: 455, column: 37, scope: !3035)
!3037 = !DILocation(line: 455, column: 43, scope: !3035)
!3038 = !DILocation(line: 455, column: 46, scope: !3035)
!3039 = !DILocation(line: 455, column: 51, scope: !3035)
!3040 = !DILocation(line: 455, column: 6, scope: !3009)
!3041 = !DILocation(line: 456, column: 3, scope: !3035)
!3042 = !DILocation(line: 457, column: 6, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 457, column: 6)
!3044 = !DILocation(line: 457, column: 11, scope: !3043)
!3045 = !DILocation(line: 457, column: 6, scope: !3009)
!3046 = !DILocation(line: 457, column: 26, scope: !3043)
!3047 = !DILocation(line: 458, column: 6, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 458, column: 6)
!3049 = !DILocation(line: 458, column: 11, scope: !3048)
!3050 = !DILocation(line: 458, column: 6, scope: !3009)
!3051 = !DILocation(line: 458, column: 26, scope: !3048)
!3052 = !DILocation(line: 459, column: 6, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 459, column: 6)
!3054 = !DILocation(line: 459, column: 11, scope: !3053)
!3055 = !DILocation(line: 459, column: 6, scope: !3009)
!3056 = !DILocation(line: 459, column: 26, scope: !3053)
!3057 = !DILocation(line: 460, column: 6, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 460, column: 6)
!3059 = !DILocation(line: 460, column: 11, scope: !3058)
!3060 = !DILocation(line: 460, column: 6, scope: !3009)
!3061 = !DILocation(line: 460, column: 26, scope: !3058)
!3062 = !DILocation(line: 461, column: 6, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 461, column: 6)
!3064 = !DILocation(line: 461, column: 11, scope: !3063)
!3065 = !DILocation(line: 461, column: 6, scope: !3009)
!3066 = !DILocation(line: 461, column: 26, scope: !3063)
!3067 = !DILocation(line: 462, column: 6, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 462, column: 6)
!3069 = !DILocation(line: 462, column: 11, scope: !3068)
!3070 = !DILocation(line: 462, column: 6, scope: !3009)
!3071 = !DILocation(line: 462, column: 26, scope: !3068)
!3072 = !DILocation(line: 463, column: 6, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 463, column: 6)
!3074 = !DILocation(line: 463, column: 11, scope: !3073)
!3075 = !DILocation(line: 463, column: 6, scope: !3009)
!3076 = !DILocation(line: 463, column: 26, scope: !3073)
!3077 = !DILocation(line: 464, column: 6, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 464, column: 6)
!3079 = !DILocation(line: 464, column: 11, scope: !3078)
!3080 = !DILocation(line: 464, column: 6, scope: !3009)
!3081 = !DILocation(line: 464, column: 26, scope: !3078)
!3082 = !DILocation(line: 465, column: 6, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 465, column: 6)
!3084 = !DILocation(line: 465, column: 11, scope: !3083)
!3085 = !DILocation(line: 465, column: 6, scope: !3009)
!3086 = !DILocation(line: 465, column: 26, scope: !3083)
!3087 = !DILocation(line: 466, column: 6, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 466, column: 6)
!3089 = !DILocation(line: 466, column: 11, scope: !3088)
!3090 = !DILocation(line: 466, column: 6, scope: !3009)
!3091 = !DILocation(line: 466, column: 26, scope: !3088)
!3092 = !DILocation(line: 467, column: 6, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 467, column: 6)
!3094 = !DILocation(line: 467, column: 11, scope: !3093)
!3095 = !DILocation(line: 467, column: 6, scope: !3009)
!3096 = !DILocation(line: 467, column: 26, scope: !3093)
!3097 = !DILocation(line: 468, column: 6, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 468, column: 6)
!3099 = !DILocation(line: 468, column: 11, scope: !3098)
!3100 = !DILocation(line: 468, column: 6, scope: !3009)
!3101 = !DILocation(line: 468, column: 26, scope: !3098)
!3102 = !DILocation(line: 469, column: 6, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 469, column: 6)
!3104 = !DILocation(line: 469, column: 11, scope: !3103)
!3105 = !DILocation(line: 469, column: 6, scope: !3009)
!3106 = !DILocation(line: 469, column: 26, scope: !3103)
!3107 = !DILocation(line: 470, column: 6, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 470, column: 6)
!3109 = !DILocation(line: 470, column: 11, scope: !3108)
!3110 = !DILocation(line: 470, column: 6, scope: !3009)
!3111 = !DILocation(line: 470, column: 26, scope: !3108)
!3112 = !DILocation(line: 471, column: 6, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 471, column: 6)
!3114 = !DILocation(line: 471, column: 11, scope: !3113)
!3115 = !DILocation(line: 471, column: 6, scope: !3009)
!3116 = !DILocation(line: 471, column: 26, scope: !3113)
!3117 = !DILocation(line: 472, column: 6, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 472, column: 6)
!3119 = !DILocation(line: 472, column: 11, scope: !3118)
!3120 = !DILocation(line: 472, column: 6, scope: !3009)
!3121 = !DILocation(line: 472, column: 26, scope: !3118)
!3122 = !DILocation(line: 473, column: 6, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 473, column: 6)
!3124 = !DILocation(line: 473, column: 11, scope: !3123)
!3125 = !DILocation(line: 473, column: 6, scope: !3009)
!3126 = !DILocation(line: 473, column: 26, scope: !3123)
!3127 = !DILocation(line: 474, column: 6, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 474, column: 6)
!3129 = !DILocation(line: 474, column: 11, scope: !3128)
!3130 = !DILocation(line: 474, column: 6, scope: !3009)
!3131 = !DILocation(line: 474, column: 27, scope: !3128)
!3132 = !DILocation(line: 475, column: 6, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 475, column: 6)
!3134 = !DILocation(line: 475, column: 11, scope: !3133)
!3135 = !DILocation(line: 475, column: 6, scope: !3009)
!3136 = !DILocation(line: 475, column: 32, scope: !3133)
!3137 = !DILocation(line: 477, column: 50, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3009, file: !165, line: 477, column: 6)
!3139 = !DILocation(line: 477, column: 6, scope: !3009)
!3140 = !DILocation(line: 478, column: 3, scope: !3138)
!3141 = !DILocation(line: 478, column: 3, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !165, line: 478, column: 3)
!3143 = distinct !DILexicalBlock(scope: !3138, file: !165, line: 478, column: 3)
!3144 = !{i32 -2142159286}
!3145 = !DILocation(line: 478, column: 3, scope: !3143)
!3146 = !DILocation(line: 480, column: 3, scope: !3138)
!3147 = !DILocation(line: 480, column: 3, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3138, file: !165, line: 480, column: 3)
!3149 = !DILocation(line: 480, column: 3, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3148, file: !165, line: 480, column: 3)
!3151 = !DILocation(line: 480, column: 3, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !165, line: 480, column: 3)
!3153 = !{i64 2152808213, i64 2152808242, i64 2152808288, i64 2152808346, i64 2152808400, i64 2152808454, i64 2152808509, i64 2152808540}
!3154 = !DILocation(line: 483, column: 2, scope: !3009)
!3155 = !DILocation(line: 484, column: 1, scope: !3009)
!3156 = !DISubprogram(name: "kmalloc_trace", scope: !165, file: !165, line: 525, type: !3157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!175, !3159, !176, !429}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3161, line: 11, flags: DIFlagFwdDecl)
!3161 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3162 = distinct !DISubprogram(name: "kmalloc_type", scope: !165, file: !165, line: 401, type: !3163, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!164, !176, !178}
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "flags", arg: 1, scope: !3162, file: !165, line: 401, type: !176)
!3167 = !DILocalVariable(name: "caller", arg: 2, scope: !3162, file: !165, line: 401, type: !178)
!3168 = !DILocation(line: 401, column: 67, scope: !3162)
!3169 = !DILocation(line: 401, column: 88, scope: !3162)
!3170 = !DILocation(line: 407, column: 6, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3162, file: !165, line: 407, column: 6)
!3172 = !DILocation(line: 407, column: 6, scope: !3162)
!3173 = !DILocation(line: 413, column: 3, scope: !3171)
!3174 = !DILocation(line: 423, column: 38, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3162, file: !165, line: 423, column: 6)
!3176 = !DILocation(line: 423, column: 44, scope: !3175)
!3177 = !DILocation(line: 423, column: 6, scope: !3162)
!3178 = !DILocation(line: 424, column: 3, scope: !3175)
!3179 = !DILocation(line: 426, column: 3, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3162, file: !165, line: 425, column: 6)
!3181 = !DILocation(line: 429, column: 1, scope: !3162)
!3182 = !DISubprogram(name: "__kmalloc", scope: !165, file: !165, line: 488, type: !2948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3183 = !DISubprogram(name: "__compiletime_assert_204", scope: !165, file: !165, line: 478, type: !1405, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3184 = !DISubprogram(name: "ida_free", scope: !208, file: !208, line: 258, type: !3185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{null, !2963, !7}
!3187 = !DISubprogram(name: "msi_domain_free_msi_descs_range", scope: !122, file: !122, line: 347, type: !3188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !952, !7, !7, !7}
