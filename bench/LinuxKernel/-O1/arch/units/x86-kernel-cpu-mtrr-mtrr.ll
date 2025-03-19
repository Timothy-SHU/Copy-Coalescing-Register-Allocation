; ModuleID = 'arch/x86/kernel/cpu/mtrr/mtrr.c'
source_filename = "arch/x86/kernel/cpu/mtrr/mtrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_phys_wc_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_phys_wc_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_phys_wc_del: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_phys_wc_del ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_phys_wc_index: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_phys_wc_index ; .previous"
module asm ".section\09\22.initcall4.init..kmod_mtrr__295_640_mtrr_init_finalize\22, \22a\22\09\09"
module asm "__initcall__kmod_mtrr__295_640_mtrr_init_finalize4:\09\09\09"
module asm ".long\09__initstub__kmod_mtrr__295_640_mtrr_init_finalize4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.1, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.3, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { i64, [88 x i8] }
%struct.mtrr_state_type = type { [256 x %struct.mtrr_var_range], [88 x i8], i8, i8, i8 }
%struct.mtrr_var_range = type { i32, i32, i32, i32 }
%struct.mtrr_ops = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.16, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.16 = type { ptr }
%struct.set_mtrr_data = type { i64, i64, i32, i8 }

@mtrr_mutex = hidden global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mtrr_mutex, i64 16), ptr getelementptr (i8, ptr @mtrr_mutex, i64 16) } }, align 8, !dbg !0
@mtrr_if = hidden global ptr null, align 8, !dbg !263
@.str = private unnamed_addr constant [20 x i8] c"\014type: %u invalid\0A\00", align 1, !dbg !166
@.str.1 = private unnamed_addr constant [50 x i8] c"\014your processor doesn't support write-combining\0A\00", align 1, !dbg !171
@.str.2 = private unnamed_addr constant [22 x i8] c"\014zero sized request\0A\00", align 1, !dbg !176
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"\014base or size exceeds the MTRR width\0A\00", align 1, !dbg !181
@num_var_ranges = hidden global i32 0, align 4, !dbg !256
@.str.4 = private unnamed_addr constant [57 x i8] c"\0140x%lx000,0x%lx000 overlaps existing 0x%lx000,0x%lx000\0A\00", align 1, !dbg !186
@.str.5 = private unnamed_addr constant [51 x i8] c"\014type mismatch for %lx000,%lx000 old: %s new: %s\0A\00", align 1, !dbg !191
@mtrr_usage_table = hidden global [256 x i32] zeroinitializer, align 16, !dbg !258
@.str.6 = private unnamed_addr constant [27 x i8] c"\016no more MTRRs available\0A\00", align 1, !dbg !196
@mtrr_debug = external dso_local global i8, align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\016no MTRR for %lx000,%lx000 found\0A\00", align 1, !dbg !201
@.str.8 = private unnamed_addr constant [24 x i8] c"\014register: %d too big\0A\00", align 1, !dbg !206
@.str.9 = private unnamed_addr constant [20 x i8] c"\014MTRR %d not used\0A\00", align 1, !dbg !211
@.str.10 = private unnamed_addr constant [23 x i8] c"\014reg: %d has count=0\0A\00", align 1, !dbg !213
@.str.11 = private unnamed_addr constant [61 x i8] c"\014Failed to add WC MTRR for [%p-%p]; performance may suffer.\00", align 1, !dbg !218
@__UNIQUE_ID___addressable_arch_phys_wc_add292 = internal global ptr @arch_phys_wc_add, section ".discard.addressable", align 8, !dbg !223
@.str.12 = private unnamed_addr constant [32 x i8] c"arch/x86/kernel/cpu/mtrr/mtrr.c\00", align 1, !dbg !225
@__UNIQUE_ID___addressable_arch_phys_wc_del293 = internal global ptr @arch_phys_wc_del, section ".discard.addressable", align 8, !dbg !230
@__UNIQUE_ID___addressable_arch_phys_wc_index294 = internal global ptr @arch_phys_wc_index, section ".discard.addressable", align 8, !dbg !232
@.str.13 = private unnamed_addr constant [16 x i8] c"(not available)\00", align 1, !dbg !234
@phys_hi_rsvd = external dso_local global i32, align 4
@mtrr_state = external dso_local global %struct.mtrr_state_type, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"\016MTRRs set to read-only\0A\00", align 1, !dbg !239
@generic_mtrr_ops = external dso_local constant %struct.mtrr_ops, align 8
@memory_caching_control = external dso_local global i32, align 4
@changed_by_mtrr_cleanup = hidden global i32 0, section ".init.data", align 4, !dbg !297
@.str.15 = private unnamed_addr constant [8 x i8] c"by BIOS\00", align 1, !dbg !244
@.str.16 = private unnamed_addr constant [21 x i8] c"\016MTRRs disabled %s\0A\00", align 1, !dbg !249
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable___initstub__kmod_mtrr__295_640_mtrr_init_finalize4296 = internal global ptr @__initstub__kmod_mtrr__295_640_mtrr_init_finalize4, section ".discard.addressable", align 8, !dbg !254
@.str.17 = private unnamed_addr constant [62 x i8] c"\016Serverworks LE rev < 6 detected. Write-combining disabled.\0A\00", align 1, !dbg !299
@.str.18 = private unnamed_addr constant [55 x i8] c"\016Intel 450NX MMC detected. Write-combining disabled.\0A\00", align 1, !dbg !304
@.str.19 = private unnamed_addr constant [44 x i8] c"\014size and base must be multiples of 4 kiB\0A\00", align 1, !dbg !309
@.str.20 = private unnamed_addr constant [28 x i8] c"\016size: 0x%lx  base: 0x%lx\0A\00", align 1, !dbg !314
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_arch_phys_wc_add292, ptr @__UNIQUE_ID___addressable_arch_phys_wc_del293, ptr @__UNIQUE_ID___addressable_arch_phys_wc_index294, ptr @__UNIQUE_ID___addressable___initstub__kmod_mtrr__295_640_mtrr_init_finalize4296], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mtrr_add_page(i64 noundef %base, i64 noundef %size, i32 noundef %type, i1 noundef zeroext %increment) #0 align 16 !dbg !385 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %increment.addr = alloca i8, align 1
  %lbase = alloca i64, align 8
  %lsize = alloca i64, align 8
  %i = alloca i32, align 4
  %replace = alloca i32, align 4
  %error = alloca i32, align 4
  %ltype = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp84 = alloca i32, align 4
  %tmp99 = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !391, metadata !DIExpression()), !dbg !402
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !392, metadata !DIExpression()), !dbg !403
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !393, metadata !DIExpression()), !dbg !404
  %frombool = zext i1 %increment to i8
  store i8 %frombool, ptr %increment.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %increment.addr, metadata !394, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.start.p0(i64 8, ptr %lbase) #10, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %lbase, metadata !395, metadata !DIExpression()), !dbg !407
  call void @llvm.lifetime.start.p0(i64 8, ptr %lsize) #10, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %lsize, metadata !396, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %i, metadata !397, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 4, ptr %replace) #10, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %replace, metadata !398, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %error, metadata !399, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 1, ptr %ltype) #10, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %ltype, metadata !400, metadata !DIExpression()), !dbg !414
  %call = call zeroext i1 @mtrr_enabled() #11, !dbg !415
  br i1 %call, label %if.end, label %if.then, !dbg !417

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !418

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @mtrr_if, align 8, !dbg !419
  %validate_add_page = getelementptr inbounds %struct.mtrr_ops, ptr %0, i32 0, i32 4, !dbg !420
  %1 = load ptr, ptr %validate_add_page, align 8, !dbg !420
  %2 = load i64, ptr %base.addr, align 8, !dbg !421
  %3 = load i64, ptr %size.addr, align 8, !dbg !422
  %4 = load i32, ptr %type.addr, align 4, !dbg !423
  %call1 = call i32 %1(i64 noundef %2, i64 noundef %3, i32 noundef %4) #11, !dbg !419
  store i32 %call1, ptr %error, align 4, !dbg !424
  %5 = load i32, ptr %error, align 4, !dbg !425
  %tobool = icmp ne i32 %5, 0, !dbg !425
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !427

if.then2:                                         ; preds = %if.end
  %6 = load i32, ptr %error, align 4, !dbg !428
  store i32 %6, ptr %retval, align 4, !dbg !429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !429

if.end3:                                          ; preds = %if.end
  %7 = load i32, ptr %type.addr, align 4, !dbg !430
  %cmp = icmp uge i32 %7, 7, !dbg !432
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !433

if.then4:                                         ; preds = %if.end3
  br label %do.body, !dbg !434

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !437

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !437

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %type.addr, align 4, !dbg !434
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %8) #12, !dbg !434
  store i32 %call5, ptr %tmp, align 4, !dbg !437
  %9 = load i32, ptr %tmp, align 4, !dbg !434
  store i32 -22, ptr %retval, align 4, !dbg !439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !439

if.end6:                                          ; preds = %if.end3
  %10 = load i32, ptr %type.addr, align 4, !dbg !440
  %cmp7 = icmp eq i32 %10, 1, !dbg !442
  br i1 %cmp7, label %land.lhs.true, label %if.end16, !dbg !443

land.lhs.true:                                    ; preds = %if.end6
  %call8 = call i32 @have_wrcomb() #11, !dbg !444
  %tobool9 = icmp ne i32 %call8, 0, !dbg !444
  br i1 %tobool9, label %if.end16, label %if.then10, !dbg !445

if.then10:                                        ; preds = %land.lhs.true
  br label %do.body11, !dbg !446

do.body11:                                        ; preds = %if.then10
  br label %do.cond12, !dbg !449

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !449

do.end13:                                         ; preds = %do.cond12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #12, !dbg !446
  store i32 %call15, ptr %tmp14, align 4, !dbg !449
  %11 = load i32, ptr %tmp14, align 4, !dbg !446
  store i32 -38, ptr %retval, align 4, !dbg !451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !451

if.end16:                                         ; preds = %land.lhs.true, %if.end6
  %12 = load i64, ptr %size.addr, align 8, !dbg !452
  %tobool17 = icmp ne i64 %12, 0, !dbg !452
  br i1 %tobool17, label %if.end24, label %if.then18, !dbg !454

if.then18:                                        ; preds = %if.end16
  br label %do.body19, !dbg !455

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !458

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !458

do.end21:                                         ; preds = %do.cond20
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #12, !dbg !455
  store i32 %call23, ptr %tmp22, align 4, !dbg !458
  %13 = load i32, ptr %tmp22, align 4, !dbg !455
  store i32 -22, ptr %retval, align 4, !dbg !460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !460

if.end24:                                         ; preds = %if.end16
  %14 = load i64, ptr %base.addr, align 8, !dbg !461
  %15 = load i64, ptr %base.addr, align 8, !dbg !463
  %16 = load i64, ptr %size.addr, align 8, !dbg !464
  %add = add i64 %15, %16, !dbg !465
  %sub = sub i64 %add, 1, !dbg !466
  %or = or i64 %14, %sub, !dbg !467
  %17 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 5), align 1, !dbg !468
  %conv = zext i8 %17 to i32, !dbg !469
  %sub25 = sub i32 %conv, 12, !dbg !470
  %sh_prom = zext i32 %sub25 to i64, !dbg !471
  %shr = lshr i64 %or, %sh_prom, !dbg !471
  %tobool26 = icmp ne i64 %shr, 0, !dbg !471
  br i1 %tobool26, label %if.then27, label %if.end33, !dbg !472

if.then27:                                        ; preds = %if.end24
  br label %do.body28, !dbg !473

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !476

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !476

do.end30:                                         ; preds = %do.cond29
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #12, !dbg !473
  store i32 %call32, ptr %tmp31, align 4, !dbg !476
  %18 = load i32, ptr %tmp31, align 4, !dbg !473
  store i32 -22, ptr %retval, align 4, !dbg !478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !478

if.end33:                                         ; preds = %if.end24
  store i32 -22, ptr %error, align 4, !dbg !479
  store i32 -1, ptr %replace, align 4, !dbg !480
  call void @cpus_read_lock() #11, !dbg !481
  call void @mutex_lock(ptr noundef @mtrr_mutex) #11, !dbg !482
  store i32 0, ptr %i, align 4, !dbg !483
  br label %for.cond, !dbg !485

for.cond:                                         ; preds = %for.inc, %if.end33
  %19 = load i32, ptr %i, align 4, !dbg !486
  %20 = load i32, ptr @num_var_ranges, align 4, !dbg !488
  %cmp34 = icmp ult i32 %19, %20, !dbg !489
  br i1 %cmp34, label %for.body, label %for.end, !dbg !490

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr @mtrr_if, align 8, !dbg !491
  %get = getelementptr inbounds %struct.mtrr_ops, ptr %21, i32 0, i32 2, !dbg !493
  %22 = load ptr, ptr %get, align 8, !dbg !493
  %23 = load i32, ptr %i, align 4, !dbg !494
  call void %22(i32 noundef %23, ptr noundef %lbase, ptr noundef %lsize, ptr noundef %ltype) #11, !dbg !491
  %24 = load i64, ptr %lsize, align 8, !dbg !495
  %tobool36 = icmp ne i64 %24, 0, !dbg !495
  br i1 %tobool36, label %lor.lhs.false, label %if.then46, !dbg !497

lor.lhs.false:                                    ; preds = %for.body
  %25 = load i64, ptr %base.addr, align 8, !dbg !498
  %26 = load i64, ptr %lbase, align 8, !dbg !499
  %27 = load i64, ptr %lsize, align 8, !dbg !500
  %add37 = add i64 %26, %27, !dbg !501
  %sub38 = sub i64 %add37, 1, !dbg !502
  %cmp39 = icmp ugt i64 %25, %sub38, !dbg !503
  br i1 %cmp39, label %if.then46, label %lor.lhs.false41, !dbg !504

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %28 = load i64, ptr %base.addr, align 8, !dbg !505
  %29 = load i64, ptr %size.addr, align 8, !dbg !506
  %add42 = add i64 %28, %29, !dbg !507
  %sub43 = sub i64 %add42, 1, !dbg !508
  %30 = load i64, ptr %lbase, align 8, !dbg !509
  %cmp44 = icmp ult i64 %sub43, %30, !dbg !510
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !511

if.then46:                                        ; preds = %lor.lhs.false41, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !512

if.end47:                                         ; preds = %lor.lhs.false41
  %31 = load i64, ptr %base.addr, align 8, !dbg !513
  %32 = load i64, ptr %lbase, align 8, !dbg !515
  %cmp48 = icmp ult i64 %31, %32, !dbg !516
  br i1 %cmp48, label %if.then57, label %lor.lhs.false50, !dbg !517

lor.lhs.false50:                                  ; preds = %if.end47
  %33 = load i64, ptr %base.addr, align 8, !dbg !518
  %34 = load i64, ptr %size.addr, align 8, !dbg !519
  %add51 = add i64 %33, %34, !dbg !520
  %sub52 = sub i64 %add51, 1, !dbg !521
  %35 = load i64, ptr %lbase, align 8, !dbg !522
  %36 = load i64, ptr %lsize, align 8, !dbg !523
  %add53 = add i64 %35, %36, !dbg !524
  %sub54 = sub i64 %add53, 1, !dbg !525
  %cmp55 = icmp ugt i64 %sub52, %sub54, !dbg !526
  br i1 %cmp55, label %if.then57, label %if.end86, !dbg !527

if.then57:                                        ; preds = %lor.lhs.false50, %if.end47
  %37 = load i64, ptr %base.addr, align 8, !dbg !528
  %38 = load i64, ptr %lbase, align 8, !dbg !531
  %cmp58 = icmp ule i64 %37, %38, !dbg !532
  br i1 %cmp58, label %land.lhs.true60, label %if.end80, !dbg !533

land.lhs.true60:                                  ; preds = %if.then57
  %39 = load i64, ptr %base.addr, align 8, !dbg !534
  %40 = load i64, ptr %size.addr, align 8, !dbg !535
  %add61 = add i64 %39, %40, !dbg !536
  %sub62 = sub i64 %add61, 1, !dbg !537
  %41 = load i64, ptr %lbase, align 8, !dbg !538
  %42 = load i64, ptr %lsize, align 8, !dbg !539
  %add63 = add i64 %41, %42, !dbg !540
  %sub64 = sub i64 %add63, 1, !dbg !541
  %cmp65 = icmp uge i64 %sub62, %sub64, !dbg !542
  br i1 %cmp65, label %if.then67, label %if.end80, !dbg !543

if.then67:                                        ; preds = %land.lhs.true60
  %43 = load i32, ptr %type.addr, align 4, !dbg !544
  %44 = load i8, ptr %ltype, align 1, !dbg !547
  %conv68 = zext i8 %44 to i32, !dbg !547
  %cmp69 = icmp eq i32 %43, %conv68, !dbg !548
  br i1 %cmp69, label %if.then71, label %if.else, !dbg !549

if.then71:                                        ; preds = %if.then67
  %45 = load i32, ptr %replace, align 4, !dbg !550
  %cmp72 = icmp eq i32 %45, -1, !dbg !552
  br i1 %cmp72, label %cond.true, label %cond.false, !dbg !550

cond.true:                                        ; preds = %if.then71
  %46 = load i32, ptr %i, align 4, !dbg !553
  br label %cond.end, !dbg !550

cond.false:                                       ; preds = %if.then71
  br label %cond.end, !dbg !550

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ -2, %cond.false ], !dbg !550
  store i32 %cond, ptr %replace, align 4, !dbg !554
  br label %for.inc, !dbg !555

if.else:                                          ; preds = %if.then67
  %47 = load i32, ptr %type.addr, align 4, !dbg !556
  %conv74 = trunc i32 %47 to i8, !dbg !556
  %48 = load i8, ptr %ltype, align 1, !dbg !558
  %call75 = call i32 @types_compatible(i8 noundef zeroext %conv74, i8 noundef zeroext %48) #11, !dbg !559
  %tobool76 = icmp ne i32 %call75, 0, !dbg !559
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !560

if.then77:                                        ; preds = %if.else
  br label %for.inc, !dbg !561

if.end78:                                         ; preds = %if.else
  br label %if.end79

if.end79:                                         ; preds = %if.end78
  br label %if.end80, !dbg !562

if.end80:                                         ; preds = %if.end79, %land.lhs.true60, %if.then57
  br label %do.body81, !dbg !563

do.body81:                                        ; preds = %if.end80
  br label %do.cond82, !dbg !565

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !565

do.end83:                                         ; preds = %do.cond82
  %49 = load i64, ptr %base.addr, align 8, !dbg !563
  %50 = load i64, ptr %size.addr, align 8, !dbg !563
  %51 = load i64, ptr %lbase, align 8, !dbg !563
  %52 = load i64, ptr %lsize, align 8, !dbg !563
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %49, i64 noundef %50, i64 noundef %51, i64 noundef %52) #12, !dbg !563
  store i32 %call85, ptr %tmp84, align 4, !dbg !565
  %53 = load i32, ptr %tmp84, align 4, !dbg !563
  br label %out, !dbg !567

if.end86:                                         ; preds = %lor.lhs.false50
  %54 = load i8, ptr %ltype, align 1, !dbg !568
  %conv87 = zext i8 %54 to i32, !dbg !568
  %55 = load i32, ptr %type.addr, align 4, !dbg !570
  %cmp88 = icmp ne i32 %conv87, %55, !dbg !571
  br i1 %cmp88, label %if.then90, label %if.end104, !dbg !572

if.then90:                                        ; preds = %if.end86
  %56 = load i32, ptr %type.addr, align 4, !dbg !573
  %conv91 = trunc i32 %56 to i8, !dbg !573
  %57 = load i8, ptr %ltype, align 1, !dbg !576
  %call92 = call i32 @types_compatible(i8 noundef zeroext %conv91, i8 noundef zeroext %57) #11, !dbg !577
  %tobool93 = icmp ne i32 %call92, 0, !dbg !577
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !578

if.then94:                                        ; preds = %if.then90
  br label %for.inc, !dbg !579

if.end95:                                         ; preds = %if.then90
  br label %do.body96, !dbg !580

do.body96:                                        ; preds = %if.end95
  br label %do.cond97, !dbg !582

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !582

do.end98:                                         ; preds = %do.cond97
  %58 = load i64, ptr %base.addr, align 8, !dbg !580
  %59 = load i64, ptr %size.addr, align 8, !dbg !580
  %60 = load i8, ptr %ltype, align 1, !dbg !580
  %conv100 = zext i8 %60 to i32, !dbg !580
  %call101 = call ptr @mtrr_attrib_to_str(i32 noundef %conv100) #11, !dbg !580
  %61 = load i32, ptr %type.addr, align 4, !dbg !580
  %call102 = call ptr @mtrr_attrib_to_str(i32 noundef %61) #11, !dbg !580
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %58, i64 noundef %59, ptr noundef %call101, ptr noundef %call102) #12, !dbg !580
  store i32 %call103, ptr %tmp99, align 4, !dbg !582
  %62 = load i32, ptr %tmp99, align 4, !dbg !580
  br label %out, !dbg !584

if.end104:                                        ; preds = %if.end86
  %63 = load i8, ptr %increment.addr, align 1, !dbg !585, !range !587, !noundef !588
  %tobool105 = trunc i8 %63 to i1, !dbg !585
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !589

if.then106:                                       ; preds = %if.end104
  %64 = load i32, ptr %i, align 4, !dbg !590
  %idxprom = sext i32 %64 to i64, !dbg !591
  %arrayidx = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom, !dbg !591
  %65 = load i32, ptr %arrayidx, align 4, !dbg !592
  %inc = add i32 %65, 1, !dbg !592
  store i32 %inc, ptr %arrayidx, align 4, !dbg !592
  br label %if.end107, !dbg !592

if.end107:                                        ; preds = %if.then106, %if.end104
  %66 = load i32, ptr %i, align 4, !dbg !593
  store i32 %66, ptr %error, align 4, !dbg !594
  br label %out, !dbg !595

for.inc:                                          ; preds = %if.then94, %if.then77, %cond.end, %if.then46
  %67 = load i32, ptr %i, align 4, !dbg !596
  %inc108 = add i32 %67, 1, !dbg !596
  store i32 %inc108, ptr %i, align 4, !dbg !596
  br label %for.cond, !dbg !597, !llvm.loop !598

for.end:                                          ; preds = %for.cond
  %68 = load ptr, ptr @mtrr_if, align 8, !dbg !602
  %get_free_region = getelementptr inbounds %struct.mtrr_ops, ptr %68, i32 0, i32 3, !dbg !603
  %69 = load ptr, ptr %get_free_region, align 8, !dbg !603
  %70 = load i64, ptr %base.addr, align 8, !dbg !604
  %71 = load i64, ptr %size.addr, align 8, !dbg !605
  %72 = load i32, ptr %replace, align 4, !dbg !606
  %call109 = call i32 %69(i64 noundef %70, i64 noundef %71, i32 noundef %72) #11, !dbg !602
  store i32 %call109, ptr %i, align 4, !dbg !607
  %73 = load i32, ptr %i, align 4, !dbg !608
  %cmp110 = icmp sge i32 %73, 0, !dbg !610
  br i1 %cmp110, label %if.then112, label %if.else147, !dbg !611

if.then112:                                       ; preds = %for.end
  %74 = load i32, ptr %i, align 4, !dbg !612
  %75 = load i64, ptr %base.addr, align 8, !dbg !614
  %76 = load i64, ptr %size.addr, align 8, !dbg !615
  %77 = load i32, ptr %type.addr, align 4, !dbg !616
  %conv113 = trunc i32 %77 to i8, !dbg !616
  call void @set_mtrr(i32 noundef %74, i64 noundef %75, i64 noundef %76, i8 noundef zeroext %conv113) #11, !dbg !617
  %78 = load i32, ptr %replace, align 4, !dbg !618
  %cmp114 = icmp slt i32 %78, 0, !dbg !618
  %lnot = xor i1 %cmp114, true, !dbg !618
  %lnot116 = xor i1 %lnot, true, !dbg !618
  %lnot.ext = zext i1 %lnot116 to i32, !dbg !618
  %conv117 = sext i32 %lnot.ext to i64, !dbg !618
  %expval = call i64 @llvm.expect.i64(i64 %conv117, i64 1), !dbg !618
  %tobool118 = icmp ne i64 %expval, 0, !dbg !618
  br i1 %tobool118, label %if.then119, label %if.else122, !dbg !620

if.then119:                                       ; preds = %if.then112
  %79 = load i32, ptr %i, align 4, !dbg !621
  %idxprom120 = sext i32 %79 to i64, !dbg !623
  %arrayidx121 = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom120, !dbg !623
  store i32 1, ptr %arrayidx121, align 4, !dbg !624
  br label %if.end146, !dbg !625

if.else122:                                       ; preds = %if.then112
  %80 = load i32, ptr %replace, align 4, !dbg !626
  %idxprom123 = sext i32 %80 to i64, !dbg !628
  %arrayidx124 = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom123, !dbg !628
  %81 = load i32, ptr %arrayidx124, align 4, !dbg !628
  %82 = load i32, ptr %i, align 4, !dbg !629
  %idxprom125 = sext i32 %82 to i64, !dbg !630
  %arrayidx126 = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom125, !dbg !630
  store i32 %81, ptr %arrayidx126, align 4, !dbg !631
  %83 = load i8, ptr %increment.addr, align 1, !dbg !632, !range !587, !noundef !588
  %tobool127 = trunc i8 %83 to i1, !dbg !632
  br i1 %tobool127, label %if.then128, label %if.end132, !dbg !634

if.then128:                                       ; preds = %if.else122
  %84 = load i32, ptr %i, align 4, !dbg !635
  %idxprom129 = sext i32 %84 to i64, !dbg !636
  %arrayidx130 = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom129, !dbg !636
  %85 = load i32, ptr %arrayidx130, align 4, !dbg !637
  %inc131 = add i32 %85, 1, !dbg !637
  store i32 %inc131, ptr %arrayidx130, align 4, !dbg !637
  br label %if.end132, !dbg !636

if.end132:                                        ; preds = %if.then128, %if.else122
  %86 = load i32, ptr %replace, align 4, !dbg !638
  %87 = load i32, ptr %i, align 4, !dbg !638
  %cmp133 = icmp ne i32 %86, %87, !dbg !638
  %lnot135 = xor i1 %cmp133, true, !dbg !638
  %lnot137 = xor i1 %lnot135, true, !dbg !638
  %lnot.ext138 = zext i1 %lnot137 to i32, !dbg !638
  %conv139 = sext i32 %lnot.ext138 to i64, !dbg !638
  %expval140 = call i64 @llvm.expect.i64(i64 %conv139, i64 0), !dbg !638
  %tobool141 = icmp ne i64 %expval140, 0, !dbg !638
  br i1 %tobool141, label %if.then142, label %if.end145, !dbg !640

if.then142:                                       ; preds = %if.end132
  %88 = load i32, ptr %replace, align 4, !dbg !641
  call void @set_mtrr(i32 noundef %88, i64 noundef 0, i64 noundef 0, i8 noundef zeroext 0) #11, !dbg !643
  %89 = load i32, ptr %replace, align 4, !dbg !644
  %idxprom143 = sext i32 %89 to i64, !dbg !645
  %arrayidx144 = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom143, !dbg !645
  store i32 0, ptr %arrayidx144, align 4, !dbg !646
  br label %if.end145, !dbg !647

if.end145:                                        ; preds = %if.then142, %if.end132
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.then119
  br label %if.end153, !dbg !648

if.else147:                                       ; preds = %for.end
  br label %do.body148, !dbg !649

do.body148:                                       ; preds = %if.else147
  br label %do.cond149, !dbg !652

do.cond149:                                       ; preds = %do.body148
  br label %do.end150, !dbg !652

do.end150:                                        ; preds = %do.cond149
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #12, !dbg !649
  store i32 %call152, ptr %tmp151, align 4, !dbg !652
  %90 = load i32, ptr %tmp151, align 4, !dbg !649
  br label %if.end153

if.end153:                                        ; preds = %do.end150, %if.end146
  %91 = load i32, ptr %i, align 4, !dbg !654
  store i32 %91, ptr %error, align 4, !dbg !655
  br label %out, !dbg !656

out:                                              ; preds = %if.end153, %if.end107, %do.end98, %do.end83
  call void @llvm.dbg.label(metadata !401), !dbg !657
  call void @mutex_unlock(ptr noundef @mtrr_mutex) #11, !dbg !658
  call void @cpus_read_unlock() #11, !dbg !659
  %92 = load i32, ptr %error, align 4, !dbg !660
  store i32 %92, ptr %retval, align 4, !dbg !661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !661

cleanup:                                          ; preds = %out, %do.end30, %do.end21, %do.end13, %do.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ltype) #10, !dbg !662
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !662
  call void @llvm.lifetime.end.p0(i64 4, ptr %replace) #10, !dbg !662
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr %lsize) #10, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr %lbase) #10, !dbg !662
  %93 = load i32, ptr %retval, align 4, !dbg !662
  ret i32 %93, !dbg !662
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mtrr_enabled() #3 align 16 !dbg !663 {
entry:
  %0 = load ptr, ptr @mtrr_if, align 8, !dbg !666
  %tobool = icmp ne ptr %0, null, !dbg !667
  %lnot = xor i1 %tobool, true, !dbg !667
  %lnot1 = xor i1 %lnot, true, !dbg !668
  ret i1 %lnot1, !dbg !669
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !670 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @have_wrcomb() #0 align 16 !dbg !674 {
entry:
  %retval = alloca i32, align 4
  %dev = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5357
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !676, metadata !DIExpression()), !dbg !5358
  %call = call ptr @pci_get_class(i32 noundef 393216, ptr noundef null) #11, !dbg !5359
  store ptr %call, ptr %dev, align 8, !dbg !5360
  %0 = load ptr, ptr %dev, align 8, !dbg !5361
  %cmp = icmp ne ptr %0, null, !dbg !5363
  br i1 %cmp, label %if.then, label %if.end28, !dbg !5364

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev, align 8, !dbg !5365
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7, !dbg !5368
  %2 = load i16, ptr %vendor, align 4, !dbg !5368
  %conv = zext i16 %2 to i32, !dbg !5365
  %cmp1 = icmp eq i32 %conv, 4454, !dbg !5369
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !5370

land.lhs.true:                                    ; preds = %if.then
  %3 = load ptr, ptr %dev, align 8, !dbg !5371
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8, !dbg !5372
  %4 = load i16, ptr %device, align 2, !dbg !5372
  %conv3 = zext i16 %4 to i32, !dbg !5371
  %cmp4 = icmp eq i32 %conv3, 9, !dbg !5373
  br i1 %cmp4, label %land.lhs.true6, label %if.end, !dbg !5374

land.lhs.true6:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev, align 8, !dbg !5375
  %revision = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 12, !dbg !5376
  %6 = load i8, ptr %revision, align 8, !dbg !5376
  %conv7 = zext i8 %6 to i32, !dbg !5375
  %cmp8 = icmp sle i32 %conv7, 5, !dbg !5377
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !5378

if.then10:                                        ; preds = %land.lhs.true6
  br label %do.body, !dbg !5379

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !5382

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5382

do.end:                                           ; preds = %do.cond
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #12, !dbg !5379
  store i32 %call11, ptr %tmp, align 4, !dbg !5382
  %7 = load i32, ptr %tmp, align 4, !dbg !5379
  %8 = load ptr, ptr %dev, align 8, !dbg !5384
  call void @pci_dev_put(ptr noundef %8) #11, !dbg !5385
  store i32 0, ptr %retval, align 4, !dbg !5386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5386

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %if.then
  %9 = load ptr, ptr %dev, align 8, !dbg !5387
  %vendor12 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 7, !dbg !5389
  %10 = load i16, ptr %vendor12, align 4, !dbg !5389
  %conv13 = zext i16 %10 to i32, !dbg !5387
  %cmp14 = icmp eq i32 %conv13, 32902, !dbg !5390
  br i1 %cmp14, label %land.lhs.true16, label %if.end27, !dbg !5391

land.lhs.true16:                                  ; preds = %if.end
  %11 = load ptr, ptr %dev, align 8, !dbg !5392
  %device17 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8, !dbg !5393
  %12 = load i16, ptr %device17, align 2, !dbg !5393
  %conv18 = zext i16 %12 to i32, !dbg !5392
  %cmp19 = icmp eq i32 %conv18, 33994, !dbg !5394
  br i1 %cmp19, label %if.then21, label %if.end27, !dbg !5395

if.then21:                                        ; preds = %land.lhs.true16
  br label %do.body22, !dbg !5396

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !5399

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5399

do.end24:                                         ; preds = %do.cond23
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #12, !dbg !5396
  store i32 %call26, ptr %tmp25, align 4, !dbg !5399
  %13 = load i32, ptr %tmp25, align 4, !dbg !5396
  %14 = load ptr, ptr %dev, align 8, !dbg !5401
  call void @pci_dev_put(ptr noundef %14) #11, !dbg !5402
  store i32 0, ptr %retval, align 4, !dbg !5403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5403

if.end27:                                         ; preds = %land.lhs.true16, %if.end
  %15 = load ptr, ptr %dev, align 8, !dbg !5404
  call void @pci_dev_put(ptr noundef %15) #11, !dbg !5405
  br label %if.end28, !dbg !5406

if.end28:                                         ; preds = %if.end27, %entry
  %16 = load ptr, ptr @mtrr_if, align 8, !dbg !5407
  %have_wrcomb = getelementptr inbounds %struct.mtrr_ops, ptr %16, i32 0, i32 5, !dbg !5408
  %17 = load ptr, ptr %have_wrcomb, align 8, !dbg !5408
  %tobool = icmp ne ptr %17, null, !dbg !5407
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5407

cond.true:                                        ; preds = %if.end28
  %18 = load ptr, ptr @mtrr_if, align 8, !dbg !5409
  %have_wrcomb29 = getelementptr inbounds %struct.mtrr_ops, ptr %18, i32 0, i32 5, !dbg !5410
  %19 = load ptr, ptr %have_wrcomb29, align 8, !dbg !5410
  %call30 = call i32 %19() #11, !dbg !5409
  br label %cond.end, !dbg !5407

cond.false:                                       ; preds = %if.end28
  br label %cond.end, !dbg !5407

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call30, %cond.true ], [ 0, %cond.false ], !dbg !5407
  store i32 %cond, ptr %retval, align 4, !dbg !5411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5411

cleanup:                                          ; preds = %cond.end, %do.end24, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5412
  %20 = load i32, ptr %retval, align 4, !dbg !5412
  ret i32 %20, !dbg !5412
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5413 dso_local void @cpus_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5415 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @types_compatible(i8 noundef zeroext %type1, i8 noundef zeroext %type2) #3 align 16 !dbg !5419 {
entry:
  %type1.addr = alloca i8, align 1
  %type2.addr = alloca i8, align 1
  store i8 %type1, ptr %type1.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type1.addr, metadata !5423, metadata !DIExpression()), !dbg !5425
  store i8 %type2, ptr %type2.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type2.addr, metadata !5424, metadata !DIExpression()), !dbg !5426
  %0 = load i8, ptr %type1.addr, align 1, !dbg !5427
  %conv = zext i8 %0 to i32, !dbg !5427
  %cmp = icmp eq i32 %conv, 0, !dbg !5428
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5429

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr %type2.addr, align 1, !dbg !5430
  %conv2 = zext i8 %1 to i32, !dbg !5430
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !5431
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5, !dbg !5432

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, ptr %type1.addr, align 1, !dbg !5433
  %conv6 = zext i8 %2 to i32, !dbg !5433
  %cmp7 = icmp eq i32 %conv6, 4, !dbg !5434
  br i1 %cmp7, label %land.lhs.true, label %lor.rhs, !dbg !5435

land.lhs.true:                                    ; preds = %lor.lhs.false5
  %3 = load i8, ptr %type2.addr, align 1, !dbg !5436
  %conv9 = zext i8 %3 to i32, !dbg !5436
  %cmp10 = icmp eq i32 %conv9, 6, !dbg !5437
  br i1 %cmp10, label %lor.end, label %lor.rhs, !dbg !5438

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false5
  %4 = load i8, ptr %type1.addr, align 1, !dbg !5439
  %conv12 = zext i8 %4 to i32, !dbg !5439
  %cmp13 = icmp eq i32 %conv12, 6, !dbg !5440
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !5441

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i8, ptr %type2.addr, align 1, !dbg !5442
  %conv15 = zext i8 %5 to i32, !dbg !5442
  %cmp16 = icmp eq i32 %conv15, 4, !dbg !5443
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp16, %land.rhs ], !dbg !5444
  br label %lor.end, !dbg !5438

lor.end:                                          ; preds = %land.end, %land.lhs.true, %lor.lhs.false, %entry
  %7 = phi i1 [ true, %land.lhs.true ], [ true, %lor.lhs.false ], [ true, %entry ], [ %6, %land.end ]
  %lor.ext = zext i1 %7 to i32, !dbg !5438
  ret i32 %lor.ext, !dbg !5445
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5446 dso_local ptr @mtrr_attrib_to_str(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_mtrr(i32 noundef %reg, i64 noundef %base, i64 noundef %size, i8 noundef zeroext %type) #0 align 16 !dbg !5449 {
entry:
  %reg.addr = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i8, align 1
  %data = alloca %struct.set_mtrr_data, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5451, metadata !DIExpression()), !dbg !5462
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5452, metadata !DIExpression()), !dbg !5463
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5453, metadata !DIExpression()), !dbg !5464
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5454, metadata !DIExpression()), !dbg !5465
  call void @llvm.lifetime.start.p0(i64 24, ptr %data) #10, !dbg !5466
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5455, metadata !DIExpression()), !dbg !5467
  %smp_base = getelementptr inbounds %struct.set_mtrr_data, ptr %data, i32 0, i32 0, !dbg !5468
  %0 = load i64, ptr %base.addr, align 8, !dbg !5469
  store i64 %0, ptr %smp_base, align 8, !dbg !5468
  %smp_size = getelementptr inbounds %struct.set_mtrr_data, ptr %data, i32 0, i32 1, !dbg !5468
  %1 = load i64, ptr %size.addr, align 8, !dbg !5470
  store i64 %1, ptr %smp_size, align 8, !dbg !5468
  %smp_reg = getelementptr inbounds %struct.set_mtrr_data, ptr %data, i32 0, i32 2, !dbg !5468
  %2 = load i32, ptr %reg.addr, align 4, !dbg !5471
  store i32 %2, ptr %smp_reg, align 8, !dbg !5468
  %smp_type = getelementptr inbounds %struct.set_mtrr_data, ptr %data, i32 0, i32 3, !dbg !5468
  %3 = load i8, ptr %type.addr, align 1, !dbg !5472
  store i8 %3, ptr %smp_type, align 4, !dbg !5468
  %call = call i32 @stop_machine_cpuslocked(ptr noundef @mtrr_rendezvous_handler, ptr noundef %data, ptr noundef @__cpu_online_mask) #11, !dbg !5473
  call void @generic_rebuild_map() #11, !dbg !5474
  call void @llvm.lifetime.end.p0(i64 24, ptr %data) #10, !dbg !5475
  ret void, !dbg !5475
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5476 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5477 dso_local void @cpus_read_unlock() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mtrr_add(i64 noundef %base, i64 noundef %size, i32 noundef %type, i1 noundef zeroext %increment) #0 align 16 !dbg !5478 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %increment.addr = alloca i8, align 1
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5480, metadata !DIExpression()), !dbg !5484
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5481, metadata !DIExpression()), !dbg !5485
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5482, metadata !DIExpression()), !dbg !5486
  %frombool = zext i1 %increment to i8
  store i8 %frombool, ptr %increment.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %increment.addr, metadata !5483, metadata !DIExpression()), !dbg !5487
  %call = call zeroext i1 @mtrr_enabled() #11, !dbg !5488
  br i1 %call, label %if.end, label %if.then, !dbg !5490

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %base.addr, align 8, !dbg !5492
  %1 = load i64, ptr %size.addr, align 8, !dbg !5494
  %call1 = call i32 @mtrr_check(i64 noundef %0, i64 noundef %1) #11, !dbg !5495
  %tobool = icmp ne i32 %call1, 0, !dbg !5495
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5496

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5497
  br label %return, !dbg !5497

if.end3:                                          ; preds = %if.end
  %2 = load i64, ptr %base.addr, align 8, !dbg !5498
  %shr = lshr i64 %2, 12, !dbg !5499
  %3 = load i64, ptr %size.addr, align 8, !dbg !5500
  %shr4 = lshr i64 %3, 12, !dbg !5501
  %4 = load i32, ptr %type.addr, align 4, !dbg !5502
  %5 = load i8, ptr %increment.addr, align 1, !dbg !5503, !range !587, !noundef !588
  %tobool5 = trunc i8 %5 to i1, !dbg !5503
  %call6 = call i32 @mtrr_add_page(i64 noundef %shr, i64 noundef %shr4, i32 noundef %4, i1 noundef zeroext %tobool5) #11, !dbg !5504
  store i32 %call6, ptr %retval, align 4, !dbg !5505
  br label %return, !dbg !5505

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !5506
  ret i32 %6, !dbg !5506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mtrr_check(i64 noundef %base, i64 noundef %size) #0 align 16 !dbg !5507 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5511, metadata !DIExpression()), !dbg !5513
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5512, metadata !DIExpression()), !dbg !5514
  %0 = load i64, ptr %base.addr, align 8, !dbg !5515
  %and = and i64 %0, 4095, !dbg !5517
  %tobool = icmp ne i64 %and, 0, !dbg !5517
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5518

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5519
  %and1 = and i64 %1, 4095, !dbg !5520
  %tobool2 = icmp ne i64 %and1, 0, !dbg !5520
  br i1 %tobool2, label %if.then, label %if.end11, !dbg !5521

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !5522

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5525

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.19) #12, !dbg !5522
  store i32 %call, ptr %tmp, align 4, !dbg !5525
  %2 = load i32, ptr %tmp, align 4, !dbg !5522
  br label %do.body3, !dbg !5527

do.body3:                                         ; preds = %do.end
  %3 = load i8, ptr @mtrr_debug, align 1, !dbg !5528, !range !587, !noundef !588
  %tobool4 = trunc i8 %3 to i1, !dbg !5528
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5531

if.then5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !5532

do.body6:                                         ; preds = %if.then5
  br label %do.end7, !dbg !5534

do.end7:                                          ; preds = %do.body6
  %4 = load i64, ptr %size.addr, align 8, !dbg !5532
  %5 = load i64, ptr %base.addr, align 8, !dbg !5532
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20, i64 noundef %4, i64 noundef %5) #12, !dbg !5532
  store i32 %call9, ptr %tmp8, align 4, !dbg !5534
  %6 = load i32, ptr %tmp8, align 4, !dbg !5532
  br label %if.end, !dbg !5528

if.end:                                           ; preds = %do.end7, %do.body3
  br label %do.end10, !dbg !5531

do.end10:                                         ; preds = %if.end
  call void @dump_stack() #12, !dbg !5536
  store i32 -1, ptr %retval, align 4, !dbg !5537
  br label %return, !dbg !5537

if.end11:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

return:                                           ; preds = %if.end11, %do.end10
  %7 = load i32, ptr %retval, align 4, !dbg !5539
  ret i32 %7, !dbg !5539
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mtrr_del_page(i32 noundef %reg, i64 noundef %base, i64 noundef %size) #0 align 16 !dbg !5540 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %ltype = alloca i8, align 1
  %lbase = alloca i64, align 8
  %lsize = alloca i64, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5544, metadata !DIExpression()), !dbg !5554
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5545, metadata !DIExpression()), !dbg !5555
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5546, metadata !DIExpression()), !dbg !5556
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5557
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5547, metadata !DIExpression()), !dbg !5558
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #10, !dbg !5557
  call void @llvm.dbg.declare(metadata ptr %max, metadata !5548, metadata !DIExpression()), !dbg !5559
  call void @llvm.lifetime.start.p0(i64 1, ptr %ltype) #10, !dbg !5560
  call void @llvm.dbg.declare(metadata ptr %ltype, metadata !5549, metadata !DIExpression()), !dbg !5561
  call void @llvm.lifetime.start.p0(i64 8, ptr %lbase) #10, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %lbase, metadata !5550, metadata !DIExpression()), !dbg !5563
  call void @llvm.lifetime.start.p0(i64 8, ptr %lsize) #10, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %lsize, metadata !5551, metadata !DIExpression()), !dbg !5564
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !5565
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5552, metadata !DIExpression()), !dbg !5566
  store i32 -22, ptr %error, align 4, !dbg !5566
  %call = call zeroext i1 @mtrr_enabled() #11, !dbg !5567
  br i1 %call, label %if.end, label %if.then, !dbg !5569

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5570

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @num_var_ranges, align 4, !dbg !5571
  store i32 %0, ptr %max, align 4, !dbg !5572
  call void @cpus_read_lock() #11, !dbg !5573
  call void @mutex_lock(ptr noundef @mtrr_mutex) #11, !dbg !5574
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5575
  %cmp = icmp slt i32 %1, 0, !dbg !5577
  br i1 %cmp, label %if.then1, label %if.end16, !dbg !5578

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5579
  br label %for.cond, !dbg !5582

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, ptr %i, align 4, !dbg !5583
  %3 = load i32, ptr %max, align 4, !dbg !5585
  %cmp2 = icmp slt i32 %2, %3, !dbg !5586
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5587

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr @mtrr_if, align 8, !dbg !5588
  %get = getelementptr inbounds %struct.mtrr_ops, ptr %4, i32 0, i32 2, !dbg !5590
  %5 = load ptr, ptr %get, align 8, !dbg !5590
  %6 = load i32, ptr %i, align 4, !dbg !5591
  call void %5(i32 noundef %6, ptr noundef %lbase, ptr noundef %lsize, ptr noundef %ltype) #11, !dbg !5588
  %7 = load i64, ptr %lbase, align 8, !dbg !5592
  %8 = load i64, ptr %base.addr, align 8, !dbg !5594
  %cmp3 = icmp eq i64 %7, %8, !dbg !5595
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5596

land.lhs.true:                                    ; preds = %for.body
  %9 = load i64, ptr %lsize, align 8, !dbg !5597
  %10 = load i64, ptr %size.addr, align 8, !dbg !5598
  %cmp4 = icmp eq i64 %9, %10, !dbg !5599
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5600

if.then5:                                         ; preds = %land.lhs.true
  %11 = load i32, ptr %i, align 4, !dbg !5601
  store i32 %11, ptr %reg.addr, align 4, !dbg !5603
  br label %for.end, !dbg !5604

if.end6:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5605

for.inc:                                          ; preds = %if.end6
  %12 = load i32, ptr %i, align 4, !dbg !5606
  %inc = add i32 %12, 1, !dbg !5606
  store i32 %inc, ptr %i, align 4, !dbg !5606
  br label %for.cond, !dbg !5607, !llvm.loop !5608

for.end:                                          ; preds = %if.then5, %for.cond
  %13 = load i32, ptr %reg.addr, align 4, !dbg !5610
  %cmp7 = icmp slt i32 %13, 0, !dbg !5612
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !5613

if.then8:                                         ; preds = %for.end
  br label %do.body, !dbg !5614

do.body:                                          ; preds = %if.then8
  %14 = load i8, ptr @mtrr_debug, align 1, !dbg !5616, !range !587, !noundef !588
  %tobool = trunc i8 %14 to i1, !dbg !5616
  br i1 %tobool, label %if.then9, label %if.end12, !dbg !5619

if.then9:                                         ; preds = %do.body
  br label %do.body10, !dbg !5620

do.body10:                                        ; preds = %if.then9
  br label %do.cond, !dbg !5622

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5622

do.end:                                           ; preds = %do.cond
  %15 = load i64, ptr %base.addr, align 8, !dbg !5620
  %16 = load i64, ptr %size.addr, align 8, !dbg !5620
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i64 noundef %15, i64 noundef %16) #12, !dbg !5620
  store i32 %call11, ptr %tmp, align 4, !dbg !5622
  %17 = load i32, ptr %tmp, align 4, !dbg !5620
  br label %if.end12, !dbg !5616

if.end12:                                         ; preds = %do.end, %do.body
  br label %do.cond13, !dbg !5619

do.cond13:                                        ; preds = %if.end12
  br label %do.end14, !dbg !5619

do.end14:                                         ; preds = %do.cond13
  br label %out, !dbg !5624

if.end15:                                         ; preds = %for.end
  br label %if.end16, !dbg !5625

if.end16:                                         ; preds = %if.end15, %if.end
  %18 = load i32, ptr %reg.addr, align 4, !dbg !5626
  %19 = load i32, ptr %max, align 4, !dbg !5628
  %cmp17 = icmp sge i32 %18, %19, !dbg !5629
  br i1 %cmp17, label %if.then18, label %if.end24, !dbg !5630

if.then18:                                        ; preds = %if.end16
  br label %do.body19, !dbg !5631

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !5634

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5634

do.end21:                                         ; preds = %do.cond20
  %20 = load i32, ptr %reg.addr, align 4, !dbg !5631
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %20) #12, !dbg !5631
  store i32 %call23, ptr %tmp22, align 4, !dbg !5634
  %21 = load i32, ptr %tmp22, align 4, !dbg !5631
  br label %out, !dbg !5636

if.end24:                                         ; preds = %if.end16
  %22 = load ptr, ptr @mtrr_if, align 8, !dbg !5637
  %get25 = getelementptr inbounds %struct.mtrr_ops, ptr %22, i32 0, i32 2, !dbg !5638
  %23 = load ptr, ptr %get25, align 8, !dbg !5638
  %24 = load i32, ptr %reg.addr, align 4, !dbg !5639
  call void %23(i32 noundef %24, ptr noundef %lbase, ptr noundef %lsize, ptr noundef %ltype) #11, !dbg !5637
  %25 = load i64, ptr %lsize, align 8, !dbg !5640
  %cmp26 = icmp ult i64 %25, 1, !dbg !5642
  br i1 %cmp26, label %if.then27, label %if.end33, !dbg !5643

if.then27:                                        ; preds = %if.end24
  br label %do.body28, !dbg !5644

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !5647

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5647

do.end30:                                         ; preds = %do.cond29
  %26 = load i32, ptr %reg.addr, align 4, !dbg !5644
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i32 noundef %26) #12, !dbg !5644
  store i32 %call32, ptr %tmp31, align 4, !dbg !5647
  %27 = load i32, ptr %tmp31, align 4, !dbg !5644
  br label %out, !dbg !5649

if.end33:                                         ; preds = %if.end24
  %28 = load i32, ptr %reg.addr, align 4, !dbg !5650
  %idxprom = sext i32 %28 to i64, !dbg !5652
  %arrayidx = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom, !dbg !5652
  %29 = load i32, ptr %arrayidx, align 4, !dbg !5652
  %cmp34 = icmp ult i32 %29, 1, !dbg !5653
  br i1 %cmp34, label %if.then35, label %if.end41, !dbg !5654

if.then35:                                        ; preds = %if.end33
  br label %do.body36, !dbg !5655

do.body36:                                        ; preds = %if.then35
  br label %do.cond37, !dbg !5658

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !5658

do.end38:                                         ; preds = %do.cond37
  %30 = load i32, ptr %reg.addr, align 4, !dbg !5655
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i32 noundef %30) #12, !dbg !5655
  store i32 %call40, ptr %tmp39, align 4, !dbg !5658
  %31 = load i32, ptr %tmp39, align 4, !dbg !5655
  br label %out, !dbg !5660

if.end41:                                         ; preds = %if.end33
  %32 = load i32, ptr %reg.addr, align 4, !dbg !5661
  %idxprom42 = sext i32 %32 to i64, !dbg !5663
  %arrayidx43 = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom42, !dbg !5663
  %33 = load i32, ptr %arrayidx43, align 4, !dbg !5664
  %dec = add i32 %33, -1, !dbg !5664
  store i32 %dec, ptr %arrayidx43, align 4, !dbg !5664
  %cmp44 = icmp ult i32 %dec, 1, !dbg !5665
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !5666

if.then45:                                        ; preds = %if.end41
  %34 = load i32, ptr %reg.addr, align 4, !dbg !5667
  call void @set_mtrr(i32 noundef %34, i64 noundef 0, i64 noundef 0, i8 noundef zeroext 0) #11, !dbg !5668
  br label %if.end46, !dbg !5668

if.end46:                                         ; preds = %if.then45, %if.end41
  %35 = load i32, ptr %reg.addr, align 4, !dbg !5669
  store i32 %35, ptr %error, align 4, !dbg !5670
  br label %out, !dbg !5671

out:                                              ; preds = %if.end46, %do.end38, %do.end30, %do.end21, %do.end14
  call void @llvm.dbg.label(metadata !5553), !dbg !5672
  call void @mutex_unlock(ptr noundef @mtrr_mutex) #11, !dbg !5673
  call void @cpus_read_unlock() #11, !dbg !5674
  %36 = load i32, ptr %error, align 4, !dbg !5675
  store i32 %36, ptr %retval, align 4, !dbg !5676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5676

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !5677
  call void @llvm.lifetime.end.p0(i64 8, ptr %lsize) #10, !dbg !5677
  call void @llvm.lifetime.end.p0(i64 8, ptr %lbase) #10, !dbg !5677
  call void @llvm.lifetime.end.p0(i64 1, ptr %ltype) #10, !dbg !5677
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #10, !dbg !5677
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5677
  %37 = load i32, ptr %retval, align 4, !dbg !5677
  ret i32 %37, !dbg !5677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mtrr_del(i32 noundef %reg, i64 noundef %base, i64 noundef %size) #0 align 16 !dbg !5678 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5680, metadata !DIExpression()), !dbg !5683
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5681, metadata !DIExpression()), !dbg !5684
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5682, metadata !DIExpression()), !dbg !5685
  %call = call zeroext i1 @mtrr_enabled() #11, !dbg !5686
  br i1 %call, label %if.end, label %if.then, !dbg !5688

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5689
  br label %return, !dbg !5689

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %base.addr, align 8, !dbg !5690
  %1 = load i64, ptr %size.addr, align 8, !dbg !5692
  %call1 = call i32 @mtrr_check(i64 noundef %0, i64 noundef %1) #11, !dbg !5693
  %tobool = icmp ne i32 %call1, 0, !dbg !5693
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5694

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5695
  br label %return, !dbg !5695

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %reg.addr, align 4, !dbg !5696
  %3 = load i64, ptr %base.addr, align 8, !dbg !5697
  %shr = lshr i64 %3, 12, !dbg !5698
  %4 = load i64, ptr %size.addr, align 8, !dbg !5699
  %shr4 = lshr i64 %4, 12, !dbg !5700
  %call5 = call i32 @mtrr_del_page(i32 noundef %2, i64 noundef %shr, i64 noundef %shr4) #11, !dbg !5701
  store i32 %call5, ptr %retval, align 4, !dbg !5702
  br label %return, !dbg !5702

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5703
  ret i32 %5, !dbg !5703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_phys_wc_add(i64 noundef %base, i64 noundef %size) #0 align 16 !dbg !5704 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5706, metadata !DIExpression()), !dbg !5709
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5707, metadata !DIExpression()), !dbg !5710
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5708, metadata !DIExpression()), !dbg !5712
  %call = call zeroext i1 @pat_enabled() #11, !dbg !5713
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !5715

lor.lhs.false:                                    ; preds = %entry
  %call1 = call zeroext i1 @mtrr_enabled() #11, !dbg !5716
  br i1 %call1, label %if.end, label %if.then, !dbg !5717

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5718

if.end:                                           ; preds = %lor.lhs.false
  %0 = load i64, ptr %base.addr, align 8, !dbg !5719
  %1 = load i64, ptr %size.addr, align 8, !dbg !5720
  %call2 = call i32 @mtrr_add(i64 noundef %0, i64 noundef %1, i32 noundef 1, i1 noundef zeroext true) #11, !dbg !5721
  store i32 %call2, ptr %ret, align 4, !dbg !5722
  %2 = load i32, ptr %ret, align 4, !dbg !5723
  %cmp = icmp slt i32 %2, 0, !dbg !5725
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !5726

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !5727

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !5730

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5730

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %base.addr, align 8, !dbg !5727
  %4 = inttoptr i64 %3 to ptr, !dbg !5727
  %5 = load i64, ptr %base.addr, align 8, !dbg !5727
  %6 = load i64, ptr %size.addr, align 8, !dbg !5727
  %add = add i64 %5, %6, !dbg !5727
  %sub = sub i64 %add, 1, !dbg !5727
  %7 = inttoptr i64 %sub to ptr, !dbg !5727
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, ptr noundef %4, ptr noundef %7) #12, !dbg !5727
  store i32 %call4, ptr %tmp, align 4, !dbg !5730
  %8 = load i32, ptr %tmp, align 4, !dbg !5727
  %9 = load i32, ptr %ret, align 4, !dbg !5732
  store i32 %9, ptr %retval, align 4, !dbg !5733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5733

if.end5:                                          ; preds = %if.end
  %10 = load i32, ptr %ret, align 4, !dbg !5734
  %add6 = add i32 %10, 1000, !dbg !5735
  store i32 %add6, ptr %retval, align 4, !dbg !5736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5736

cleanup:                                          ; preds = %if.end5, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5737
  %11 = load i32, ptr %retval, align 4, !dbg !5737
  ret i32 %11, !dbg !5737
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5738 dso_local zeroext i1 @pat_enabled() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_phys_wc_del(i32 noundef %handle) #0 align 16 !dbg !5740 {
entry:
  %handle.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %handle, ptr %handle.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5742, metadata !DIExpression()), !dbg !5750
  %0 = load i32, ptr %handle.addr, align 4, !dbg !5751
  %cmp = icmp sge i32 %0, 1, !dbg !5752
  br i1 %cmp, label %if.then, label %if.end25, !dbg !5753

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5743, metadata !DIExpression()), !dbg !5754
  %1 = load i32, ptr %handle.addr, align 4, !dbg !5754
  %cmp1 = icmp slt i32 %1, 1000, !dbg !5754
  %lnot = xor i1 %cmp1, true, !dbg !5754
  %lnot2 = xor i1 %lnot, true, !dbg !5754
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5754
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5754
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5755
  %tobool = icmp ne i32 %2, 0, !dbg !5755
  %lnot3 = xor i1 %tobool, true, !dbg !5755
  %lnot5 = xor i1 %lnot3, true, !dbg !5755
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5755
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5755
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5755
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5755
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !5754

if.then8:                                         ; preds = %if.then
  br label %do.body, !dbg !5755

do.body:                                          ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5747, metadata !DIExpression()), !dbg !5756
  store i32 2305, ptr %__flags, align 4, !dbg !5756
  br label %do.body9, !dbg !5756

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5757

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5757

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5756

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5759
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.12, i32 519, i32 %3, i64 12) #10, !dbg !5759, !srcloc !5761
  br label %do.cond11, !dbg !5759

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5759

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5756

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5762

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5762

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5755
  br label %do.cond16, !dbg !5756

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5756

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5756

if.end:                                           ; preds = %do.end17, %if.then
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5754
  %tobool18 = icmp ne i32 %4, 0, !dbg !5754
  %lnot19 = xor i1 %tobool18, true, !dbg !5754
  %lnot21 = xor i1 %lnot19, true, !dbg !5754
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5754
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5754
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5754
  store i64 %expval24, ptr %tmp, align 8, !dbg !5755
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5764
  %5 = load i64, ptr %tmp, align 8, !dbg !5754
  %6 = load i32, ptr %handle.addr, align 4, !dbg !5765
  %sub = sub i32 %6, 1000, !dbg !5766
  %call = call i32 @mtrr_del(i32 noundef %sub, i64 noundef 0, i64 noundef 0) #11, !dbg !5767
  br label %if.end25, !dbg !5768

if.end25:                                         ; preds = %if.end, %entry
  ret void, !dbg !5769
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_phys_wc_index(i32 noundef %handle) #0 align 16 !dbg !5770 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i32, align 4
  store i32 %handle, ptr %handle.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = load i32, ptr %handle.addr, align 4, !dbg !5774
  %cmp = icmp slt i32 %0, 1000, !dbg !5776
  br i1 %cmp, label %if.then, label %if.else, !dbg !5777

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5778
  br label %return, !dbg !5778

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %handle.addr, align 4, !dbg !5779
  %sub = sub i32 %1, 1000, !dbg !5780
  store i32 %sub, ptr %retval, align 4, !dbg !5781
  br label %return, !dbg !5781

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5782
  ret i32 %2, !dbg !5782
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @mtrr_bp_init() #7 section ".init.text" align 16 !dbg !5783 {
entry:
  %generic_mtrrs = alloca i8, align 1
  %why = alloca ptr, align 8
  %config = alloca i64, align 8
  %dummy = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp42 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %generic_mtrrs) #10, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %generic_mtrrs, metadata !5785, metadata !DIExpression()), !dbg !5795
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 12) #11, !dbg !5796
  %frombool = zext i1 %call to i8, !dbg !5795
  store i8 %frombool, ptr %generic_mtrrs, align 1, !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %why) #10, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %why, metadata !5786, metadata !DIExpression()), !dbg !5798
  store ptr @.str.13, ptr %why, align 8, !dbg !5798
  call void @llvm.lifetime.start.p0(i64 8, ptr %config) #10, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %config, metadata !5787, metadata !DIExpression()), !dbg !5800
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy) #10, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !5788, metadata !DIExpression()), !dbg !5801
  %0 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 5), align 1, !dbg !5802
  %conv = zext i8 %0 to i32, !dbg !5802
  %sub = sub i32 %conv, 32, !dbg !5802
  %sh_prom = zext i32 %sub to i64, !dbg !5802
  %shl = shl i64 1, %sh_prom, !dbg !5802
  %sub1 = sub i64 -1, %shl, !dbg !5802
  %add = add i64 %sub1, 1, !dbg !5802
  %and = and i64 %add, 4294967295, !dbg !5802
  %add2 = add i64 0, %and, !dbg !5802
  %conv3 = trunc i64 %add2 to i32, !dbg !5802
  store i32 %conv3, ptr @phys_hi_rsvd, align 4, !dbg !5803
  %1 = load i8, ptr %generic_mtrrs, align 1, !dbg !5804, !range !587, !noundef !588
  %tobool = trunc i8 %1 to i1, !dbg !5804
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5806

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !5807
  %conv4 = zext i8 %2 to i32, !dbg !5808
  %tobool5 = icmp ne i32 %conv4, 0, !dbg !5808
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5809

if.then:                                          ; preds = %land.lhs.true
  call void @init_table() #12, !dbg !5810
  call void @mtrr_build_map() #11, !dbg !5812
  br label %do.body, !dbg !5813

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5815

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5815

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #12, !dbg !5813
  store i32 %call6, ptr %tmp, align 4, !dbg !5815
  %3 = load i32, ptr %tmp, align 4, !dbg !5813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5817

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8, ptr %generic_mtrrs, align 1, !dbg !5818, !range !587, !noundef !588
  %tobool7 = trunc i8 %4 to i1, !dbg !5818
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !5820

if.then8:                                         ; preds = %if.end
  store ptr @generic_mtrr_ops, ptr @mtrr_if, align 8, !dbg !5821
  br label %if.end9, !dbg !5822

if.else:                                          ; preds = %if.end
  call void @mtrr_set_if() #11, !dbg !5823
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %call10 = call zeroext i1 @mtrr_enabled() #11, !dbg !5824
  br i1 %call10, label %if.then11, label %if.end36, !dbg !5825

if.then11:                                        ; preds = %if.end9
  %5 = load ptr, ptr @mtrr_if, align 8, !dbg !5826
  %cmp = icmp eq ptr %5, @generic_mtrr_ops, !dbg !5827
  br i1 %cmp, label %if.then13, label %if.else22, !dbg !5828

if.then13:                                        ; preds = %if.then11
  br label %do.body14, !dbg !5829

do.body14:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #10, !dbg !5830
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !5789, metadata !DIExpression()), !dbg !5830
  %call15 = call i64 @native_read_msr(i32 noundef 254) #11, !dbg !5830
  store i64 %call15, ptr %__val, align 8, !dbg !5830
  %6 = load i64, ptr %__val, align 8, !dbg !5830
  %conv16 = trunc i64 %6 to i32, !dbg !5830
  %conv17 = zext i32 %conv16 to i64, !dbg !5830
  store i64 %conv17, ptr %config, align 8, !dbg !5830
  %7 = load i64, ptr %__val, align 8, !dbg !5830
  %shr = lshr i64 %7, 32, !dbg !5830
  %conv18 = trunc i64 %shr to i32, !dbg !5830
  %conv19 = zext i32 %conv18 to i64, !dbg !5830
  store i64 %conv19, ptr %dummy, align 8, !dbg !5830
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #10, !dbg !5829
  br label %do.cond20, !dbg !5830

do.cond20:                                        ; preds = %do.body14
  br label %do.end21, !dbg !5830

do.end21:                                         ; preds = %do.cond20
  br label %if.end24, !dbg !5830

if.else22:                                        ; preds = %if.then11
  %8 = load ptr, ptr @mtrr_if, align 8, !dbg !5831
  %var_regs = getelementptr inbounds %struct.mtrr_ops, ptr %8, i32 0, i32 0, !dbg !5832
  %9 = load i32, ptr %var_regs, align 8, !dbg !5832
  %conv23 = zext i32 %9 to i64, !dbg !5831
  store i64 %conv23, ptr %config, align 8, !dbg !5833
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %do.end21
  %10 = load i64, ptr %config, align 8, !dbg !5834
  %and25 = and i64 %10, 255, !dbg !5835
  %conv26 = trunc i64 %and25 to i32, !dbg !5834
  store i32 %conv26, ptr @num_var_ranges, align 4, !dbg !5836
  call void @init_table() #12, !dbg !5837
  %11 = load ptr, ptr @mtrr_if, align 8, !dbg !5838
  %cmp27 = icmp eq ptr %11, @generic_mtrr_ops, !dbg !5840
  br i1 %cmp27, label %if.then29, label %if.end35, !dbg !5841

if.then29:                                        ; preds = %if.end24
  %call30 = call zeroext i1 @get_mtrr_state() #11, !dbg !5842
  br i1 %call30, label %if.then31, label %if.else33, !dbg !5845

if.then31:                                        ; preds = %if.then29
  %12 = load i32, ptr @memory_caching_control, align 4, !dbg !5846
  %or = or i32 %12, 1, !dbg !5846
  store i32 %or, ptr @memory_caching_control, align 4, !dbg !5846
  %call32 = call i32 @mtrr_cleanup() #11, !dbg !5848
  store i32 %call32, ptr @changed_by_mtrr_cleanup, align 4, !dbg !5849
  call void @mtrr_build_map() #11, !dbg !5850
  br label %if.end34, !dbg !5851

if.else33:                                        ; preds = %if.then29
  store ptr null, ptr @mtrr_if, align 8, !dbg !5852
  store ptr @.str.15, ptr %why, align 8, !dbg !5854
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then31
  br label %if.end35, !dbg !5855

if.end35:                                         ; preds = %if.end34, %if.end24
  br label %if.end36, !dbg !5856

if.end36:                                         ; preds = %if.end35, %if.end9
  %call37 = call zeroext i1 @mtrr_enabled() #11, !dbg !5857
  br i1 %call37, label %if.end44, label %if.then38, !dbg !5859

if.then38:                                        ; preds = %if.end36
  br label %do.body39, !dbg !5860

do.body39:                                        ; preds = %if.then38
  br label %do.cond40, !dbg !5862

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !5862

do.end41:                                         ; preds = %do.cond40
  %13 = load ptr, ptr %why, align 8, !dbg !5860
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16, ptr noundef %13) #12, !dbg !5860
  store i32 %call43, ptr %tmp42, align 4, !dbg !5862
  %14 = load i32, ptr %tmp42, align 4, !dbg !5860
  br label %if.end44, !dbg !5864

if.end44:                                         ; preds = %do.end41, %if.end36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5865
  br label %cleanup, !dbg !5865

cleanup:                                          ; preds = %if.end44, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy) #10, !dbg !5865
  call void @llvm.lifetime.end.p0(i64 8, ptr %config) #10, !dbg !5865
  call void @llvm.lifetime.end.p0(i64 8, ptr %why) #10, !dbg !5865
  call void @llvm.lifetime.end.p0(i64 1, ptr %generic_mtrrs) #10, !dbg !5865
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5865

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #8 align 16 !dbg !5866 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !5871, metadata !DIExpression()), !dbg !5874
  %0 = load i16, ptr %bit.addr, align 2, !dbg !5875
  %1 = load i16, ptr %bit.addr, align 2, !dbg !5876
  %conv = zext i16 %1 to i32, !dbg !5876
  %and = and i32 %conv, 7, !dbg !5877
  %shl = shl i32 1, %and, !dbg !5878
  %2 = load i16, ptr %bit.addr, align 2, !dbg !5879
  %conv1 = zext i16 %2 to i32, !dbg !5879
  %shr = ashr i32 %conv1, 3, !dbg !5880
  %idxprom = sext i32 %shr to i64, !dbg !5881
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !5881
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #10
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !5882, !srcloc !5883

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !5882

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !5872), !dbg !5884
  store i1 true, ptr %retval, align 1, !dbg !5885
  br label %return, !dbg !5885

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !5873), !dbg !5886
  store i1 false, ptr %retval, align 1, !dbg !5887
  br label %return, !dbg !5887

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !5888
  ret i1 %3, !dbg !5888
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_table() #7 section ".init.text" align 16 !dbg !5889 {
entry:
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5891, metadata !DIExpression()), !dbg !5894
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #10, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %max, metadata !5892, metadata !DIExpression()), !dbg !5895
  %0 = load i32, ptr @num_var_ranges, align 4, !dbg !5896
  store i32 %0, ptr %max, align 4, !dbg !5897
  store i32 0, ptr %i, align 4, !dbg !5898
  br label %for.cond, !dbg !5900

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5901
  %2 = load i32, ptr %max, align 4, !dbg !5903
  %cmp = icmp slt i32 %1, %2, !dbg !5904
  br i1 %cmp, label %for.body, label %for.end, !dbg !5905

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !5906
  %idxprom = sext i32 %3 to i64, !dbg !5907
  %arrayidx = getelementptr [256 x i32], ptr @mtrr_usage_table, i64 0, i64 %idxprom, !dbg !5907
  store i32 1, ptr %arrayidx, align 4, !dbg !5908
  br label %for.inc, !dbg !5907

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !5909
  %inc = add i32 %4, 1, !dbg !5909
  store i32 %inc, ptr %i, align 4, !dbg !5909
  br label %for.cond, !dbg !5910, !llvm.loop !5911

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #10, !dbg !5913
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5913
  ret void, !dbg !5913
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5914 dso_local void @mtrr_build_map() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mtrr_set_if() #3 align 16 !dbg !5915 {
entry:
  ret void, !dbg !5916
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #3 align 16 !dbg !5917 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5922, metadata !DIExpression()), !dbg !5924
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !5925
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5923, metadata !DIExpression()), !dbg !5926
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5927
  %call = call i64 @__rdmsr(i32 noundef %0) #11, !dbg !5928
  store i64 %call, ptr %val, align 8, !dbg !5929
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #11, !dbg !5930
  br i1 %call1, label %if.then, label %if.end, !dbg !5932

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !5933
  %2 = load i64, ptr %val, align 8, !dbg !5934
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #11, !dbg !5935
  br label %if.end, !dbg !5935

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !5936
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !5937
  ret i64 %3, !dbg !5938
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5939 dso_local zeroext i1 @get_mtrr_state() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5940 dso_local i32 @mtrr_cleanup() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mtrr_save_state() #0 align 16 !dbg !5941 {
entry:
  %first_cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_cpu) #10, !dbg !5944
  call void @llvm.dbg.declare(metadata ptr %first_cpu, metadata !5943, metadata !DIExpression()), !dbg !5945
  %call = call zeroext i1 @mtrr_enabled() #11, !dbg !5946
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !5948

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 3), align 1, !dbg !5949, !range !587, !noundef !588
  %tobool = trunc i8 %0 to i1, !dbg !5949
  br i1 %tobool, label %if.end, label %if.then, !dbg !5950

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5951

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @cpumask_first(ptr noundef @__cpu_online_mask) #11, !dbg !5952
  store i32 %call1, ptr %first_cpu, align 4, !dbg !5953
  %1 = load i32, ptr %first_cpu, align 4, !dbg !5954
  %call2 = call i32 @smp_call_function_single(i32 noundef %1, ptr noundef @mtrr_save_fixed_ranges, ptr noundef null, i32 noundef 1) #11, !dbg !5955
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5956
  br label %cleanup, !dbg !5956

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_cpu) #10, !dbg !5956
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5956

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first(ptr noundef %srcp) #3 align 16 !dbg !5957 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !5963
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5963
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5963
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #11, !dbg !5964
  %conv = trunc i64 %call to i32, !dbg !5964
  ret i32 %conv, !dbg !5965
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5966 dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mtrr_save_fixed_ranges(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_mtrr__295_640_mtrr_init_finalize4() #7 section ".init.text" align 16 !dbg !5971 {
entry:
  %call = call i32 @mtrr_init_finalize() #12, !dbg !5972
  ret i32 %call, !dbg !5972
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mtrr_init_finalize() #7 section ".init.text" align 16 !dbg !5973 {
entry:
  %retval = alloca i32, align 4
  call void @mtrr_copy_map() #11, !dbg !5974
  %call = call zeroext i1 @mtrr_enabled() #11, !dbg !5975
  br i1 %call, label %if.end, label %if.then, !dbg !5977

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5978
  br label %return, !dbg !5978

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @memory_caching_control, align 4, !dbg !5979
  %and = and i32 %0, 1, !dbg !5981
  %tobool = icmp ne i32 %and, 0, !dbg !5981
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !5982

if.then1:                                         ; preds = %if.end
  %1 = load i32, ptr @changed_by_mtrr_cleanup, align 4, !dbg !5983
  %tobool2 = icmp ne i32 %1, 0, !dbg !5983
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5986

if.then3:                                         ; preds = %if.then1
  call void @mtrr_state_warn() #11, !dbg !5987
  br label %if.end4, !dbg !5987

if.end4:                                          ; preds = %if.then3, %if.then1
  store i32 0, ptr %retval, align 4, !dbg !5988
  br label %return, !dbg !5988

if.end5:                                          ; preds = %if.end
  call void @mtrr_register_syscore() #11, !dbg !5989
  store i32 0, ptr %retval, align 4, !dbg !5990
  br label %return, !dbg !5990

return:                                           ; preds = %if.end5, %if.end4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5991
  ret i32 %2, !dbg !5991
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5992 dso_local ptr @pci_get_class(i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5995 dso_local void @pci_dev_put(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5996 dso_local i32 @stop_machine_cpuslocked(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mtrr_rendezvous_handler(ptr noundef %info) #0 align 16 !dbg !6004 {
entry:
  %info.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6006, metadata !DIExpression()), !dbg !6009
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !6010
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6007, metadata !DIExpression()), !dbg !6011
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6012
  store ptr %0, ptr %data, align 8, !dbg !6011
  %1 = load ptr, ptr @mtrr_if, align 8, !dbg !6013
  %set = getelementptr inbounds %struct.mtrr_ops, ptr %1, i32 0, i32 1, !dbg !6014
  %2 = load ptr, ptr %set, align 8, !dbg !6014
  %3 = load ptr, ptr %data, align 8, !dbg !6015
  %smp_reg = getelementptr inbounds %struct.set_mtrr_data, ptr %3, i32 0, i32 2, !dbg !6016
  %4 = load i32, ptr %smp_reg, align 8, !dbg !6016
  %5 = load ptr, ptr %data, align 8, !dbg !6017
  %smp_base = getelementptr inbounds %struct.set_mtrr_data, ptr %5, i32 0, i32 0, !dbg !6018
  %6 = load i64, ptr %smp_base, align 8, !dbg !6018
  %7 = load ptr, ptr %data, align 8, !dbg !6019
  %smp_size = getelementptr inbounds %struct.set_mtrr_data, ptr %7, i32 0, i32 1, !dbg !6020
  %8 = load i64, ptr %smp_size, align 8, !dbg !6020
  %9 = load ptr, ptr %data, align 8, !dbg !6021
  %smp_type = getelementptr inbounds %struct.set_mtrr_data, ptr %9, i32 0, i32 3, !dbg !6022
  %10 = load i8, ptr %smp_type, align 4, !dbg !6022
  call void %2(i32 noundef %4, i64 noundef %6, i64 noundef %8, i8 noundef zeroext %10) #11, !dbg !6013
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !6023
  ret i32 0, !dbg !6024
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6025 dso_local void @generic_rebuild_map() #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6026 dso_local void @dump_stack() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #8 align 16 !dbg !6027 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6029, metadata !DIExpression()), !dbg !6032
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #10, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6030, metadata !DIExpression()), !dbg !6033
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #10, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6031, metadata !DIExpression()), !dbg !6033
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6034
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #10, !dbg !6035, !srcloc !6036
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !6035
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !6035
  store i64 %asmresult, ptr %low, align 8, !dbg !6035
  store i64 %asmresult1, ptr %high, align 8, !dbg !6035
  %2 = load i64, ptr %low, align 8, !dbg !6037
  %3 = load i64, ptr %high, align 8, !dbg !6037
  %shl = shl i64 %3, 32, !dbg !6037
  %or = or i64 %2, %shl, !dbg !6037
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #10, !dbg !6038
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #10, !dbg !6038
  ret i64 %or, !dbg !6039
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #8 align 16 !dbg !6040 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6058
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #11, !dbg !6059
  ret i1 %call, !dbg !6060
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6061 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #8 align 16 !dbg !6064 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6069, metadata !DIExpression()), !dbg !6072
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6070, metadata !DIExpression()), !dbg !6073
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6074
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6075, !range !587, !noundef !588
  %tobool = trunc i8 %1 to i1, !dbg !6075
  %conv = zext i1 %tobool to i32, !dbg !6075
  %or = or i32 2, %conv, !dbg !6076
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #10
          to label %asm.fallthrough [label %l_yes], !dbg !6077, !srcloc !6078

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6079
  br label %return, !dbg !6079

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6071), !dbg !6080
  store i1 true, ptr %retval, align 1, !dbg !6081
  br label %return, !dbg !6081

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6082
  ret i1 %2, !dbg !6082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !6083 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6089, metadata !DIExpression()), !dbg !6094
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6090, metadata !DIExpression()), !dbg !6095
  %0 = load i64, ptr %size.addr, align 8, !dbg !6096
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6096
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !6096

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6096
  %cmp = icmp ule i64 %2, 64, !dbg !6096
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !6096

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6096
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6096
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6097

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6091, metadata !DIExpression()), !dbg !6099
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !6100
  %5 = load i64, ptr %4, align 8, !dbg !6101
  %6 = load i64, ptr %size.addr, align 8, !dbg !6102
  %sub = sub i64 %6, 1, !dbg !6102
  %sub3 = sub i64 63, %sub, !dbg !6102
  %shr = lshr i64 -1, %sub3, !dbg !6102
  %and = and i64 -1, %shr, !dbg !6102
  %add = add i64 0, %and, !dbg !6102
  %and4 = and i64 %5, %add, !dbg !6103
  store i64 %and4, ptr %val, align 8, !dbg !6099
  %7 = load i64, ptr %val, align 8, !dbg !6104
  %tobool = icmp ne i64 %7, 0, !dbg !6104
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !6104

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !6105
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6105
  br i1 %9, label %cond.true5, label %cond.false, !dbg !6105

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !6105
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !6105
  %cast = trunc i64 %11 to i32, !dbg !6105
  %conv = sext i32 %cast to i64, !dbg !6105
  br label %cond.end, !dbg !6105

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !6105
  %call = call i64 @variable__ffs(i64 noundef %12) #11, !dbg !6105
  br label %cond.end, !dbg !6105

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !6105
  br label %cond.end7, !dbg !6104

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !6106
  br label %cond.end7, !dbg !6104

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !6104
  store i64 %cond8, ptr %retval, align 8, !dbg !6107
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !6108
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !6109
  %15 = load i64, ptr %size.addr, align 8, !dbg !6110
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #11, !dbg !6111
  store i64 %call9, ptr %retval, align 8, !dbg !6112
  br label %return, !dbg !6112

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !6113
  ret i64 %16, !dbg !6113
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #8 align 16 !dbg !6114 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6119, metadata !DIExpression()), !dbg !6120
  %0 = load i64, ptr %word.addr, align 8, !dbg !6121
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !6122, !srcloc !6123
  store i64 %1, ptr %word.addr, align 8, !dbg !6122
  %2 = load i64, ptr %word.addr, align 8, !dbg !6124
  ret i64 %2, !dbg !6125
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6126 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6127 dso_local void @mtrr_copy_map() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6128 dso_local void @mtrr_state_warn() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mtrr_register_syscore() #3 align 16 !dbg !6129 {
entry:
  ret void, !dbg !6130
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!376, !377, !378, !379, !380, !381, !382, !383}
!llvm.ident = !{!384}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mtrr_mutex", scope: !2, file: !3, line: 64, type: !319, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/mtrr/.mtrr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/mtrr/mtrr\22 -D KBUILD_BASENAME=\22mtrr\22 -D KBUILD_MODNAME=\22mtrr\22 -D __KBUILD_MODNAME=kmod_mtrr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/mtrr/mtrr.ll arch/x86/kernel/cpu/mtrr/mtrr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !165, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/mtrr/mtrr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f442c5bd5b272a4e0ac8837cae758bd7")
!4 = !{!5, !11, !18, !23, !29, !34, !42, !58, !66, !72, !79, !86, !92, !98, !105, !113, !121, !130, !135, !140}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !24, line: 54, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "USRQUOTA", value: 0)
!27 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!28 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !30, line: 65, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!33 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !35, line: 9, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!38 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!39 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!40 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!41 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !43, line: 1325, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!45 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!46 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!47 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!48 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!49 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!50 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!51 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!52 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!53 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!54 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!55 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!56 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!57 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !59, line: 68, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !67, line: 16, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "TT_NONE", value: 0)
!70 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!71 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !73, line: 51, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!76 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!77 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!78 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !80, line: 15, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!83 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!84 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!85 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !87, line: 26, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !93, line: 45, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!96 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!97 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !99, line: 487, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!102 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!103 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!104 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !106, line: 620, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!109 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!110 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!111 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!112 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !106, line: 597, baseType: !114, size: 32, elements: !115)
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !{!116, !117, !118, !119, !120}
!116 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!117 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!118 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!119 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!120 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !99, line: 547, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129}
!123 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!124 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!125 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!126 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!127 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!128 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!129 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !99, line: 564, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !99, line: 577, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !99, line: 503, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!144 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!145 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!146 = !{!147, !114, !148, !152, !162, !7, !159}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !149, line: 21, baseType: !150)
!149 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !151, line: 27, baseType: !7)
!151 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !155, line: 19, size: 64, elements: !156)
!155 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !154, file: !155, line: 19, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !160)
!159 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!160 = !{!161}
!161 = !DISubrange(count: 1)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !{!0, !166, !171, !176, !181, !186, !191, !196, !201, !206, !211, !213, !218, !223, !225, !230, !232, !234, !239, !244, !249, !254, !256, !258, !263, !297, !299, !304, !309, !314}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 160, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 20)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 400, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 50)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 176, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 22)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 312, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 39)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 456, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 57)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 408, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 51)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 216, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 27)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 280, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 35)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 192, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 24)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !168, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 184, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 23)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 499, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 488, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 61)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_phys_wc_add292", scope: !2, file: !3, line: 505, type: !147, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 519, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 32)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_phys_wc_del293", scope: !2, file: !3, line: 523, type: !147, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_phys_wc_index294", scope: !2, file: !3, line: 543, type: !147, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 556, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 16)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 568, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 208, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 26)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 595, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 8)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !3, line: 601, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 168, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 21)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_mtrr__295_640_mtrr_init_finalize4296", scope: !2, file: !3, line: 640, type: !147, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "num_var_ranges", scope: !2, file: !3, line: 61, type: !148, isLocal: false, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "mtrr_usage_table", scope: !2, file: !3, line: 63, type: !260, isLocal: false, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 256)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "mtrr_if", scope: !2, file: !3, line: 66, type: !265, isLocal: false, isDefinition: true)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtrr_ops", file: !268, line: 18, size: 384, elements: !269)
!268 = !DIFile(filename: "arch/x86/kernel/cpu/mtrr/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19252bbc0e8adbaf9fc5f7388a27e064")
!269 = !{!270, !271, !279, !285, !289, !293}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "var_regs", scope: !267, file: !268, line: 19, baseType: !148, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !267, file: !268, line: 20, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !7, !159, !159, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtrr_type", file: !276, line: 79, baseType: !277)
!276 = !DIFile(filename: "./arch/x86/include/uapi/asm/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec45d3f08a98ea4c76b6e3b4c69c8d40")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !151, line: 21, baseType: !278)
!278 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !267, file: !268, line: 22, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !7, !283, !283, !284}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "get_free_region", scope: !267, file: !268, line: 24, baseType: !286, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!114, !159, !159, !114}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "validate_add_page", scope: !267, file: !268, line: 26, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!114, !159, !159, !7}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "have_wrcomb", scope: !267, file: !268, line: 28, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!114}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "changed_by_mtrr_cleanup", scope: !2, file: !3, line: 545, type: !114, isLocal: false, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 496, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 62)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 440, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 55)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 352, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 44)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 224, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 28)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !320, line: 66, size: 256, elements: !321)
!320 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!321 = !{!322, !333, !365, !370}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !319, file: !320, line: 67, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !324, line: 13, baseType: !325)
!324 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !326, line: 181, baseType: !327)
!326 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 179, size: 64, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !327, file: !326, line: 180, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !149, line: 22, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !151, line: 30, baseType: !332)
!332 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !319, file: !320, line: 68, baseType: !334, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !335, line: 23, baseType: !336)
!335 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !335, line: 14, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !336, file: !335, line: 15, baseType: !339, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !340, line: 44, baseType: !341)
!340 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !340, line: 14, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !340, line: 15, baseType: !344, size: 32)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !340, line: 15, size: 32, elements: !345)
!345 = !{!346, !351, !357}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !344, file: !340, line: 16, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !326, line: 174, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 172, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !348, file: !326, line: 173, baseType: !114, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !340, line: 24, baseType: !352, size: 16)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !340, line: 24, size: 16, elements: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !352, file: !340, line: 25, baseType: !355, size: 8)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !149, line: 17, baseType: !277)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !352, file: !340, line: 26, baseType: !355, size: 8, offset: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !340, line: 28, baseType: !358, size: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !340, line: 28, size: 32, elements: !359)
!359 = !{!360, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !358, file: !340, line: 29, baseType: !361, size: 16)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !149, line: 19, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !151, line: 24, baseType: !363)
!363 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !358, file: !340, line: 30, baseType: !361, size: 16, offset: 16)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !319, file: !320, line: 70, baseType: !366, size: 32, offset: 96)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !367, line: 15, size: 32, elements: !368)
!367 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !366, file: !367, line: 20, baseType: !347, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !319, file: !320, line: 72, baseType: !371, size: 128, offset: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !326, line: 190, size: 128, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !326, line: 191, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !371, file: !326, line: 191, baseType: !374, size: 64, offset: 64)
!376 = !{i32 7, !"Dwarf Version", i32 5}
!377 = !{i32 2, !"Debug Info Version", i32 3}
!378 = !{i32 1, !"wchar_size", i32 2}
!379 = !{i32 8, !"cf-protection-branch", i32 1}
!380 = !{i32 4, !"function_return_thunk_extern", i32 1}
!381 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!382 = !{i32 1, !"Code Model", i32 2}
!383 = !{i32 1, !"override-stack-alignment", i32 8}
!384 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!385 = distinct !DISubprogram(name: "mtrr_add_page", scope: !3, file: !3, line: 225, type: !386, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!386 = !DISubroutineType(types: !387)
!387 = !{!114, !159, !159, !7, !388}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !326, line: 35, baseType: !389)
!389 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!391 = !DILocalVariable(name: "base", arg: 1, scope: !385, file: !3, line: 225, type: !159)
!392 = !DILocalVariable(name: "size", arg: 2, scope: !385, file: !3, line: 225, type: !159)
!393 = !DILocalVariable(name: "type", arg: 3, scope: !385, file: !3, line: 226, type: !7)
!394 = !DILocalVariable(name: "increment", arg: 4, scope: !385, file: !3, line: 226, type: !388)
!395 = !DILocalVariable(name: "lbase", scope: !385, file: !3, line: 228, type: !159)
!396 = !DILocalVariable(name: "lsize", scope: !385, file: !3, line: 228, type: !159)
!397 = !DILocalVariable(name: "i", scope: !385, file: !3, line: 229, type: !114)
!398 = !DILocalVariable(name: "replace", scope: !385, file: !3, line: 229, type: !114)
!399 = !DILocalVariable(name: "error", scope: !385, file: !3, line: 229, type: !114)
!400 = !DILocalVariable(name: "ltype", scope: !385, file: !3, line: 230, type: !275)
!401 = !DILabel(scope: !385, name: "out", file: !3, line: 325)
!402 = !DILocation(line: 225, column: 33, scope: !385)
!403 = !DILocation(line: 225, column: 53, scope: !385)
!404 = !DILocation(line: 226, column: 18, scope: !385)
!405 = !DILocation(line: 226, column: 29, scope: !385)
!406 = !DILocation(line: 228, column: 2, scope: !385)
!407 = !DILocation(line: 228, column: 16, scope: !385)
!408 = !DILocation(line: 228, column: 23, scope: !385)
!409 = !DILocation(line: 229, column: 2, scope: !385)
!410 = !DILocation(line: 229, column: 6, scope: !385)
!411 = !DILocation(line: 229, column: 9, scope: !385)
!412 = !DILocation(line: 229, column: 18, scope: !385)
!413 = !DILocation(line: 230, column: 2, scope: !385)
!414 = !DILocation(line: 230, column: 12, scope: !385)
!415 = !DILocation(line: 232, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !385, file: !3, line: 232, column: 6)
!417 = !DILocation(line: 232, column: 6, scope: !385)
!418 = !DILocation(line: 233, column: 3, scope: !416)
!419 = !DILocation(line: 235, column: 10, scope: !385)
!420 = !DILocation(line: 235, column: 19, scope: !385)
!421 = !DILocation(line: 235, column: 37, scope: !385)
!422 = !DILocation(line: 235, column: 43, scope: !385)
!423 = !DILocation(line: 235, column: 49, scope: !385)
!424 = !DILocation(line: 235, column: 8, scope: !385)
!425 = !DILocation(line: 236, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !385, file: !3, line: 236, column: 6)
!427 = !DILocation(line: 236, column: 6, scope: !385)
!428 = !DILocation(line: 237, column: 10, scope: !426)
!429 = !DILocation(line: 237, column: 3, scope: !426)
!430 = !DILocation(line: 239, column: 6, scope: !431)
!431 = distinct !DILexicalBlock(scope: !385, file: !3, line: 239, column: 6)
!432 = !DILocation(line: 239, column: 11, scope: !431)
!433 = !DILocation(line: 239, column: 6, scope: !385)
!434 = !DILocation(line: 240, column: 3, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 240, column: 3)
!436 = distinct !DILexicalBlock(scope: !431, file: !3, line: 239, column: 30)
!437 = !DILocation(line: 240, column: 3, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !3, line: 240, column: 3)
!439 = !DILocation(line: 241, column: 3, scope: !436)
!440 = !DILocation(line: 245, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !385, file: !3, line: 245, column: 6)
!442 = !DILocation(line: 245, column: 12, scope: !441)
!443 = !DILocation(line: 245, column: 33, scope: !441)
!444 = !DILocation(line: 245, column: 37, scope: !441)
!445 = !DILocation(line: 245, column: 6, scope: !385)
!446 = !DILocation(line: 246, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 246, column: 3)
!448 = distinct !DILexicalBlock(scope: !441, file: !3, line: 245, column: 52)
!449 = !DILocation(line: 246, column: 3, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !3, line: 246, column: 3)
!451 = !DILocation(line: 247, column: 3, scope: !448)
!452 = !DILocation(line: 250, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !385, file: !3, line: 250, column: 6)
!454 = !DILocation(line: 250, column: 6, scope: !385)
!455 = !DILocation(line: 251, column: 3, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !3, line: 251, column: 3)
!457 = distinct !DILexicalBlock(scope: !453, file: !3, line: 250, column: 13)
!458 = !DILocation(line: 251, column: 3, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !3, line: 251, column: 3)
!460 = !DILocation(line: 252, column: 3, scope: !457)
!461 = !DILocation(line: 255, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !385, file: !3, line: 255, column: 6)
!463 = !DILocation(line: 255, column: 15, scope: !462)
!464 = !DILocation(line: 255, column: 22, scope: !462)
!465 = !DILocation(line: 255, column: 20, scope: !462)
!466 = !DILocation(line: 255, column: 27, scope: !462)
!467 = !DILocation(line: 255, column: 12, scope: !462)
!468 = !DILocation(line: 256, column: 21, scope: !462)
!469 = !DILocation(line: 256, column: 7, scope: !462)
!470 = !DILocation(line: 256, column: 35, scope: !462)
!471 = !DILocation(line: 255, column: 33, scope: !462)
!472 = !DILocation(line: 255, column: 6, scope: !385)
!473 = !DILocation(line: 257, column: 3, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !3, line: 257, column: 3)
!475 = distinct !DILexicalBlock(scope: !462, file: !3, line: 256, column: 50)
!476 = !DILocation(line: 257, column: 3, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 257, column: 3)
!478 = !DILocation(line: 258, column: 3, scope: !475)
!479 = !DILocation(line: 261, column: 8, scope: !385)
!480 = !DILocation(line: 262, column: 10, scope: !385)
!481 = !DILocation(line: 265, column: 2, scope: !385)
!482 = !DILocation(line: 268, column: 2, scope: !385)
!483 = !DILocation(line: 269, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !385, file: !3, line: 269, column: 2)
!485 = !DILocation(line: 269, column: 7, scope: !484)
!486 = !DILocation(line: 269, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 269, column: 2)
!488 = !DILocation(line: 269, column: 18, scope: !487)
!489 = !DILocation(line: 269, column: 16, scope: !487)
!490 = !DILocation(line: 269, column: 2, scope: !484)
!491 = !DILocation(line: 270, column: 3, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !3, line: 269, column: 39)
!493 = !DILocation(line: 270, column: 12, scope: !492)
!494 = !DILocation(line: 270, column: 16, scope: !492)
!495 = !DILocation(line: 271, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !3, line: 271, column: 7)
!497 = !DILocation(line: 271, column: 14, scope: !496)
!498 = !DILocation(line: 271, column: 17, scope: !496)
!499 = !DILocation(line: 271, column: 24, scope: !496)
!500 = !DILocation(line: 271, column: 32, scope: !496)
!501 = !DILocation(line: 271, column: 30, scope: !496)
!502 = !DILocation(line: 271, column: 38, scope: !496)
!503 = !DILocation(line: 271, column: 22, scope: !496)
!504 = !DILocation(line: 271, column: 42, scope: !496)
!505 = !DILocation(line: 272, column: 7, scope: !496)
!506 = !DILocation(line: 272, column: 14, scope: !496)
!507 = !DILocation(line: 272, column: 12, scope: !496)
!508 = !DILocation(line: 272, column: 19, scope: !496)
!509 = !DILocation(line: 272, column: 25, scope: !496)
!510 = !DILocation(line: 272, column: 23, scope: !496)
!511 = !DILocation(line: 271, column: 7, scope: !492)
!512 = !DILocation(line: 273, column: 4, scope: !496)
!513 = !DILocation(line: 278, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !492, file: !3, line: 278, column: 7)
!515 = !DILocation(line: 278, column: 14, scope: !514)
!516 = !DILocation(line: 278, column: 12, scope: !514)
!517 = !DILocation(line: 278, column: 20, scope: !514)
!518 = !DILocation(line: 278, column: 23, scope: !514)
!519 = !DILocation(line: 278, column: 30, scope: !514)
!520 = !DILocation(line: 278, column: 28, scope: !514)
!521 = !DILocation(line: 278, column: 35, scope: !514)
!522 = !DILocation(line: 278, column: 41, scope: !514)
!523 = !DILocation(line: 278, column: 49, scope: !514)
!524 = !DILocation(line: 278, column: 47, scope: !514)
!525 = !DILocation(line: 278, column: 55, scope: !514)
!526 = !DILocation(line: 278, column: 39, scope: !514)
!527 = !DILocation(line: 278, column: 7, scope: !492)
!528 = !DILocation(line: 279, column: 8, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 279, column: 8)
!530 = distinct !DILexicalBlock(scope: !514, file: !3, line: 278, column: 60)
!531 = !DILocation(line: 279, column: 16, scope: !529)
!532 = !DILocation(line: 279, column: 13, scope: !529)
!533 = !DILocation(line: 279, column: 22, scope: !529)
!534 = !DILocation(line: 280, column: 8, scope: !529)
!535 = !DILocation(line: 280, column: 15, scope: !529)
!536 = !DILocation(line: 280, column: 13, scope: !529)
!537 = !DILocation(line: 280, column: 20, scope: !529)
!538 = !DILocation(line: 280, column: 27, scope: !529)
!539 = !DILocation(line: 280, column: 35, scope: !529)
!540 = !DILocation(line: 280, column: 33, scope: !529)
!541 = !DILocation(line: 280, column: 41, scope: !529)
!542 = !DILocation(line: 280, column: 24, scope: !529)
!543 = !DILocation(line: 279, column: 8, scope: !530)
!544 = !DILocation(line: 282, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 282, column: 9)
!546 = distinct !DILexicalBlock(scope: !529, file: !3, line: 280, column: 46)
!547 = !DILocation(line: 282, column: 17, scope: !545)
!548 = !DILocation(line: 282, column: 14, scope: !545)
!549 = !DILocation(line: 282, column: 9, scope: !546)
!550 = !DILocation(line: 283, column: 16, scope: !551)
!551 = distinct !DILexicalBlock(scope: !545, file: !3, line: 282, column: 24)
!552 = !DILocation(line: 283, column: 24, scope: !551)
!553 = !DILocation(line: 283, column: 32, scope: !551)
!554 = !DILocation(line: 283, column: 14, scope: !551)
!555 = !DILocation(line: 284, column: 6, scope: !551)
!556 = !DILocation(line: 285, column: 33, scope: !557)
!557 = distinct !DILexicalBlock(scope: !545, file: !3, line: 285, column: 16)
!558 = !DILocation(line: 285, column: 39, scope: !557)
!559 = !DILocation(line: 285, column: 16, scope: !557)
!560 = !DILocation(line: 285, column: 16, scope: !545)
!561 = !DILocation(line: 286, column: 6, scope: !557)
!562 = !DILocation(line: 287, column: 4, scope: !546)
!563 = !DILocation(line: 288, column: 4, scope: !564)
!564 = distinct !DILexicalBlock(scope: !530, file: !3, line: 288, column: 4)
!565 = !DILocation(line: 288, column: 4, scope: !566)
!566 = distinct !DILexicalBlock(scope: !564, file: !3, line: 288, column: 4)
!567 = !DILocation(line: 290, column: 4, scope: !530)
!568 = !DILocation(line: 293, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !492, file: !3, line: 293, column: 7)
!570 = !DILocation(line: 293, column: 16, scope: !569)
!571 = !DILocation(line: 293, column: 13, scope: !569)
!572 = !DILocation(line: 293, column: 7, scope: !492)
!573 = !DILocation(line: 294, column: 25, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 294, column: 8)
!575 = distinct !DILexicalBlock(scope: !569, file: !3, line: 293, column: 22)
!576 = !DILocation(line: 294, column: 31, scope: !574)
!577 = !DILocation(line: 294, column: 8, scope: !574)
!578 = !DILocation(line: 294, column: 8, scope: !575)
!579 = !DILocation(line: 295, column: 5, scope: !574)
!580 = !DILocation(line: 296, column: 4, scope: !581)
!581 = distinct !DILexicalBlock(scope: !575, file: !3, line: 296, column: 4)
!582 = !DILocation(line: 296, column: 4, scope: !583)
!583 = distinct !DILexicalBlock(scope: !581, file: !3, line: 296, column: 4)
!584 = !DILocation(line: 299, column: 4, scope: !575)
!585 = !DILocation(line: 301, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !492, file: !3, line: 301, column: 7)
!587 = !{i8 0, i8 2}
!588 = !{}
!589 = !DILocation(line: 301, column: 7, scope: !492)
!590 = !DILocation(line: 302, column: 23, scope: !586)
!591 = !DILocation(line: 302, column: 6, scope: !586)
!592 = !DILocation(line: 302, column: 4, scope: !586)
!593 = !DILocation(line: 303, column: 11, scope: !492)
!594 = !DILocation(line: 303, column: 9, scope: !492)
!595 = !DILocation(line: 304, column: 3, scope: !492)
!596 = !DILocation(line: 269, column: 34, scope: !487)
!597 = !DILocation(line: 269, column: 2, scope: !487)
!598 = distinct !{!598, !490, !599, !600, !601}
!599 = !DILocation(line: 305, column: 2, scope: !484)
!600 = !{!"llvm.loop.mustprogress"}
!601 = !{!"llvm.loop.unroll.disable"}
!602 = !DILocation(line: 307, column: 6, scope: !385)
!603 = !DILocation(line: 307, column: 15, scope: !385)
!604 = !DILocation(line: 307, column: 31, scope: !385)
!605 = !DILocation(line: 307, column: 37, scope: !385)
!606 = !DILocation(line: 307, column: 43, scope: !385)
!607 = !DILocation(line: 307, column: 4, scope: !385)
!608 = !DILocation(line: 308, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !385, file: !3, line: 308, column: 6)
!610 = !DILocation(line: 308, column: 8, scope: !609)
!611 = !DILocation(line: 308, column: 6, scope: !385)
!612 = !DILocation(line: 309, column: 12, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !3, line: 308, column: 14)
!614 = !DILocation(line: 309, column: 15, scope: !613)
!615 = !DILocation(line: 309, column: 21, scope: !613)
!616 = !DILocation(line: 309, column: 27, scope: !613)
!617 = !DILocation(line: 309, column: 3, scope: !613)
!618 = !DILocation(line: 310, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !613, file: !3, line: 310, column: 7)
!620 = !DILocation(line: 310, column: 7, scope: !613)
!621 = !DILocation(line: 311, column: 21, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !3, line: 310, column: 28)
!623 = !DILocation(line: 311, column: 4, scope: !622)
!624 = !DILocation(line: 311, column: 24, scope: !622)
!625 = !DILocation(line: 312, column: 3, scope: !622)
!626 = !DILocation(line: 313, column: 43, scope: !627)
!627 = distinct !DILexicalBlock(scope: !619, file: !3, line: 312, column: 10)
!628 = !DILocation(line: 313, column: 26, scope: !627)
!629 = !DILocation(line: 313, column: 21, scope: !627)
!630 = !DILocation(line: 313, column: 4, scope: !627)
!631 = !DILocation(line: 313, column: 24, scope: !627)
!632 = !DILocation(line: 314, column: 8, scope: !633)
!633 = distinct !DILexicalBlock(scope: !627, file: !3, line: 314, column: 8)
!634 = !DILocation(line: 314, column: 8, scope: !627)
!635 = !DILocation(line: 315, column: 22, scope: !633)
!636 = !DILocation(line: 315, column: 5, scope: !633)
!637 = !DILocation(line: 315, column: 24, scope: !633)
!638 = !DILocation(line: 316, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !627, file: !3, line: 316, column: 8)
!640 = !DILocation(line: 316, column: 8, scope: !627)
!641 = !DILocation(line: 317, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !3, line: 316, column: 32)
!643 = !DILocation(line: 317, column: 5, scope: !642)
!644 = !DILocation(line: 318, column: 22, scope: !642)
!645 = !DILocation(line: 318, column: 5, scope: !642)
!646 = !DILocation(line: 318, column: 31, scope: !642)
!647 = !DILocation(line: 319, column: 4, scope: !642)
!648 = !DILocation(line: 321, column: 2, scope: !613)
!649 = !DILocation(line: 322, column: 3, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 322, column: 3)
!651 = distinct !DILexicalBlock(scope: !609, file: !3, line: 321, column: 9)
!652 = !DILocation(line: 322, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !3, line: 322, column: 3)
!654 = !DILocation(line: 324, column: 10, scope: !385)
!655 = !DILocation(line: 324, column: 8, scope: !385)
!656 = !DILocation(line: 324, column: 2, scope: !385)
!657 = !DILocation(line: 325, column: 2, scope: !385)
!658 = !DILocation(line: 326, column: 2, scope: !385)
!659 = !DILocation(line: 327, column: 2, scope: !385)
!660 = !DILocation(line: 328, column: 9, scope: !385)
!661 = !DILocation(line: 328, column: 2, scope: !385)
!662 = !DILocation(line: 329, column: 1, scope: !385)
!663 = distinct !DISubprogram(name: "mtrr_enabled", scope: !268, file: !268, line: 90, type: !664, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!664 = !DISubroutineType(types: !665)
!665 = !{!388}
!666 = !DILocation(line: 92, column: 11, scope: !663)
!667 = !DILocation(line: 92, column: 10, scope: !663)
!668 = !DILocation(line: 92, column: 9, scope: !663)
!669 = !DILocation(line: 92, column: 2, scope: !663)
!670 = !DISubprogram(name: "_printk", scope: !671, file: !671, line: 153, type: !672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!672 = !DISubroutineType(types: !673)
!673 = !{!114, !162, null}
!674 = distinct !DISubprogram(name: "have_wrcomb", scope: !3, file: !3, line: 69, type: !295, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!675 = !{!676}
!676 = !DILocalVariable(name: "dev", scope: !674, file: !3, line: 71, type: !677)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !679, line: 322, size: 16640, elements: !680)
!679 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!680 = !{!681, !682, !5132, !5133, !5134, !5135, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5241, !5242, !5243, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5320, !5321, !5322, !5324, !5325, !5327, !5328, !5329, !5330, !5336, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !678, file: !679, line: 323, baseType: !371, size: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !678, file: !679, line: 324, baseType: !683, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !679, line: 647, size: 8256, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !713, !714, !715, !740, !741, !745, !746, !747, !748, !749, !753, !754, !756, !5127, !5128, !5129, !5130, !5131}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !684, file: !679, line: 648, baseType: !371, size: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !684, file: !679, line: 649, baseType: !683, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !684, file: !679, line: 650, baseType: !371, size: 128, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !684, file: !679, line: 651, baseType: !371, size: 128, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !684, file: !679, line: 652, baseType: !677, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !684, file: !679, line: 653, baseType: !371, size: 128, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !684, file: !679, line: 655, baseType: !693, size: 256, offset: 640)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 256, elements: !711)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !696, line: 21, size: 512, elements: !697)
!696 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!697 = !{!698, !704, !705, !706, !707, !708, !709, !710}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !695, file: !696, line: 22, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !326, line: 164, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !326, line: 159, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !149, line: 23, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !151, line: 31, baseType: !703)
!703 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !695, file: !696, line: 23, baseType: !699, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !695, file: !696, line: 24, baseType: !162, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !696, line: 25, baseType: !159, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !695, file: !696, line: 26, baseType: !159, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !695, file: !696, line: 27, baseType: !694, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !695, file: !696, line: 27, baseType: !694, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !695, file: !696, line: 27, baseType: !694, size: 64, offset: 448)
!711 = !{!712}
!712 = !DISubrange(count: 4)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !684, file: !679, line: 656, baseType: !371, size: 128, offset: 896)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !684, file: !679, line: 657, baseType: !695, size: 512, offset: 1024)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !684, file: !679, line: 659, baseType: !716, size: 64, offset: 1536)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !679, line: 773, size: 320, elements: !718)
!718 = !{!719, !723, !727, !731, !736}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !717, file: !679, line: 774, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!114, !683}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !717, file: !679, line: 775, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !683}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !717, file: !679, line: 776, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!147, !683, !7, !114}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !717, file: !679, line: 777, baseType: !732, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!114, !683, !7, !114, !114, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !717, file: !679, line: 778, baseType: !737, size: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!114, !683, !7, !114, !114, !148}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !684, file: !679, line: 660, baseType: !147, size: 64, offset: 1600)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !684, file: !679, line: 661, baseType: !742, size: 64, offset: 1664)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !744, line: 131, flags: DIFlagFwdDecl)
!744 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!745 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !684, file: !679, line: 663, baseType: !278, size: 8, offset: 1728)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !684, file: !679, line: 664, baseType: !278, size: 8, offset: 1736)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !684, file: !679, line: 665, baseType: !278, size: 8, offset: 1744)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !684, file: !679, line: 666, baseType: !278, size: 8, offset: 1752)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !684, file: !679, line: 671, baseType: !750, size: 384, offset: 1760)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 384, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 48)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !684, file: !679, line: 673, baseType: !363, size: 16, offset: 2144)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !684, file: !679, line: 674, baseType: !755, size: 16, offset: 2160)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !679, line: 255, baseType: !363)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !684, file: !679, line: 675, baseType: !757, size: 64, offset: 2176)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !99, line: 705, size: 5824, elements: !759)
!759 = !{!760, !4666, !4667, !4670, !4671, !4724, !4809, !4810, !4811, !4812, !4813, !4820, !4912, !4925, !4935, !4939, !4941, !4942, !4943, !4947, !4954, !4955, !4958, !4961, !4965, !5069, !5070, !5071, !5072, !5073, !5074, !5104, !5105, !5106, !5109, !5112, !5121, !5122, !5123, !5124, !5125, !5126}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !758, file: !99, line: 706, baseType: !761, size: 512)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !762, line: 64, size: 512, elements: !763)
!762 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!763 = !{!764, !765, !766, !768, !823, !4553, !4656, !4661, !4662, !4663, !4664, !4665}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !761, file: !762, line: 65, baseType: !162, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !761, file: !762, line: 66, baseType: !371, size: 128, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !761, file: !762, line: 67, baseType: !767, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !761, file: !762, line: 68, baseType: !769, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !762, line: 168, size: 768, elements: !771)
!771 = !{!772, !773, !782, !783}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !770, file: !762, line: 169, baseType: !371, size: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !770, file: !762, line: 170, baseType: !774, size: 32, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !775, line: 29, baseType: !776)
!775 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !775, line: 17, size: 32, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !775, line: 18, baseType: !779, size: 32)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !775, line: 18, size: 32, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !779, file: !775, line: 19, baseType: !336, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !770, file: !762, line: 171, baseType: !761, size: 512, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !770, file: !762, line: 172, baseType: !784, size: 64, offset: 704)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !762, line: 133, size: 192, elements: !787)
!787 = !{!788, !795, !800}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !786, file: !762, line: 134, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!114, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !786, file: !762, line: 135, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!162, !793}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !786, file: !762, line: 136, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!114, !793, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !762, line: 125, size: 20736, elements: !807)
!807 = !{!808, !813, !817, !818, !822}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !806, file: !762, line: 126, baseType: !809, size: 192)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 192, elements: !811)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!811 = !{!812}
!812 = !DISubrange(count: 3)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !806, file: !762, line: 127, baseType: !814, size: 4096, offset: 192)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 4096, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !806, file: !762, line: 128, baseType: !114, size: 32, offset: 4288)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !806, file: !762, line: 129, baseType: !819, size: 16384, offset: 4320)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 16384, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 2048)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !806, file: !762, line: 130, baseType: !114, size: 32, offset: 20704)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !761, file: !762, line: 69, baseType: !824, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !762, line: 116, size: 384, elements: !827)
!827 = !{!828, !832, !860, !4517, !4543, !4547}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !826, file: !762, line: 117, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !767}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !826, file: !762, line: 118, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !836, line: 254, size: 128, elements: !837)
!836 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!837 = !{!838, !853}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !835, file: !836, line: 255, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!842, !767, !847, !810}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !326, line: 66, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !844, line: 73, baseType: !845)
!844 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !844, line: 15, baseType: !846)
!846 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !836, line: 30, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !848, file: !836, line: 31, baseType: !162, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !848, file: !836, line: 32, baseType: !852, size: 16, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !326, line: 24, baseType: !363)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !835, file: !836, line: 256, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!842, !767, !847, !162, !857}
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !326, line: 61, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !844, line: 72, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !844, line: 16, baseType: !159)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !826, file: !762, line: 119, baseType: !861, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !836, line: 84, size: 320, elements: !865)
!865 = !{!866, !867, !871, !4513, !4515}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !864, file: !836, line: 85, baseType: !162, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !864, file: !836, line: 86, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!852, !767, !847, !114}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !864, file: !836, line: 88, baseType: !872, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!852, !767, !875, !114}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !836, line: 175, size: 512, elements: !877)
!877 = !{!878, !879, !880, !881, !4504, !4508, !4509}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !876, file: !836, line: 176, baseType: !848, size: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !876, file: !836, line: 177, baseType: !857, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !876, file: !836, line: 178, baseType: !147, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !876, file: !836, line: 179, baseType: !882, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !887)
!887 = !{!888, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4498, !4499, !4500, !4501, !4502, !4503}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !886, file: !19, line: 473, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !891)
!891 = !{!892, !893, !894, !902, !903, !910, !911, !914, !915, !4277, !4278, !4279, !4280, !4281, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4321, !4324, !4325, !4326, !4335, !4336, !4337, !4338}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !890, file: !19, line: 642, baseType: !852, size: 16)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !890, file: !19, line: 643, baseType: !363, size: 16, offset: 16)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !890, file: !19, line: 644, baseType: !895, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !896, line: 23, baseType: !897)
!896 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !896, line: 21, size: 32, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !897, file: !896, line: 22, baseType: !900, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !326, line: 37, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !844, line: 49, baseType: !7)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !890, file: !19, line: 645, baseType: !371, size: 128, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !890, file: !19, line: 646, baseType: !904, size: 32, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !896, line: 28, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !896, line: 26, size: 32, elements: !906)
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !905, file: !896, line: 27, baseType: !908, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !326, line: 38, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !844, line: 50, baseType: !7)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !890, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !890, file: !19, line: 650, baseType: !912, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !890, file: !19, line: 651, baseType: !912, size: 64, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !890, file: !19, line: 654, baseType: !916, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !919)
!919 = !{!920, !4111, !4121, !4125, !4129, !4133, !4137, !4141, !4145, !4149, !4153, !4154, !4158, !4162, !4199, !4228, !4232, !4238, !4242, !4246, !4250, !4254, !4258, !4264, !4268}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !918, file: !19, line: 1967, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!924, !889, !924, !7}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !926, line: 82, size: 1536, elements: !927)
!926 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!927 = !{!928, !929, !939, !947, !948, !963, !964, !966, !979, !4094, !4095, !4096, !4097, !4103, !4104, !4105}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !925, file: !926, line: 84, baseType: !7, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !925, file: !926, line: 85, baseType: !930, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !931, line: 275, baseType: !932)
!931 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !931, line: 275, size: 32, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !932, file: !931, line: 275, baseType: !935, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !931, line: 69, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !931, line: 64, size: 32, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !936, file: !931, line: 65, baseType: !7, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !925, file: !926, line: 86, baseType: !940, size: 128, offset: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !941, line: 38, size: 128, elements: !942)
!941 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!942 = !{!943, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !940, file: !941, line: 39, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !940, file: !941, line: 39, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !925, file: !926, line: 87, baseType: !924, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !925, file: !926, line: 88, baseType: !949, size: 128, offset: 256)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !926, line: 49, size: 128, elements: !950)
!950 = !{!951, !960}
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !926, line: 50, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !926, line: 50, size: 64, elements: !953)
!953 = !{!954, !959}
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !926, line: 51, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !926, line: 51, size: 64, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !955, file: !926, line: 52, baseType: !148, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !955, file: !926, line: 52, baseType: !148, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !952, file: !926, line: 54, baseType: !701, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !949, file: !926, line: 56, baseType: !961, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !925, file: !926, line: 89, baseType: !889, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !925, file: !926, line: 91, baseType: !965, size: 256, offset: 448)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !228)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !925, file: !926, line: 94, baseType: !967, size: 64, offset: 704)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !968, line: 25, size: 64, elements: !969)
!968 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 26, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 26, size: 64, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !971, file: !968, line: 28, baseType: !702, size: 64, align: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !968, line: 30, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !968, line: 30, size: 64, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !975, file: !968, line: 31, baseType: !774, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !975, file: !968, line: 32, baseType: !114, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !925, file: !926, line: 95, baseType: !980, size: 64, offset: 768)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !926, line: 128, size: 1024, align: 512, elements: !983)
!983 = !{!984, !988, !989, !996, !1002, !1006, !1010, !1014, !1015, !1019, !1023, !4084, !4088}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !982, file: !926, line: 129, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!114, !924, !7}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !982, file: !926, line: 130, baseType: !985, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !982, file: !926, line: 131, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!114, !993, !995}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !982, file: !926, line: 132, baseType: !997, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!114, !993, !7, !162, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !982, file: !926, line: 134, baseType: !1003, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!114, !993}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !982, file: !926, line: 135, baseType: !1007, size: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!114, !924}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !982, file: !926, line: 136, baseType: !1011, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !924}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !982, file: !926, line: 137, baseType: !1011, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !982, file: !926, line: 138, baseType: !1016, size: 64, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !924, !889}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !982, file: !926, line: 139, baseType: !1020, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!810, !924, !810, !114}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !982, file: !926, line: 140, baseType: !1024, size: 64, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1027, !4083}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1029, line: 70, size: 256, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1030 = !{!1031, !1032, !4079, !4080}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1028, file: !1029, line: 71, baseType: !924, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1028, file: !1029, line: 72, baseType: !1033, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !1035)
!1035 = !{!1036, !1037, !1040, !1041, !1042, !1045, !1496, !1636, !1676, !1766, !1770, !1771, !1772, !1773, !1774, !1783, !1784, !1785, !1786, !1791, !1795, !1796, !1799, !1802, !1805, !1808, !1809, !1810, !1851, !4013, !4014, !4015, !4016, !4017, !4018, !4021, !4022, !4029, !4030, !4031, !4032, !4033, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1034, file: !19, line: 1191, baseType: !371, size: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1034, file: !19, line: 1192, baseType: !1038, size: 32, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !326, line: 21, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !326, line: 18, baseType: !148)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1034, file: !19, line: 1193, baseType: !278, size: 8, offset: 160)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1034, file: !19, line: 1194, baseType: !159, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1034, file: !19, line: 1195, baseType: !1043, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !326, line: 52, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !844, line: 88, baseType: !332)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1034, file: !19, line: 1196, baseType: !1046, size: 64, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1058, !1062, !1066, !1070, !1481, !1482, !1486, !1488, !1489, !1490, !1492, !1493, !1494, !1495}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !19, line: 2367, baseType: !162, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1047, file: !19, line: 2368, baseType: !114, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1047, file: !19, line: 2376, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!114, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1057, line: 32, flags: DIFlagFwdDecl)
!1057 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1047, file: !19, line: 2377, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1047, file: !19, line: 2378, baseType: !1063, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!924, !1046, !114, !162, !147}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1047, file: !19, line: 2380, baseType: !1067, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !1033}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1047, file: !19, line: 2381, baseType: !1071, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1080, !1101, !1127, !1128, !1129, !1130, !1134, !1139, !1140, !1141, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1212, !1213, !1240, !1261, !1262, !1263, !1264, !1273, !1296, !1297, !1300, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1314, !1315, !1440, !1448, !1449, !1450, !1452, !1456, !1457, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1474, !1475, !1476, !1480}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1072, file: !12, line: 403, baseType: !11, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1072, file: !12, line: 406, baseType: !371, size: 128, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1072, file: !12, line: 409, baseType: !1077, size: 448, offset: 192)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 448, elements: !1078)
!1078 = !{!1079}
!1079 = !DISubrange(count: 56)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1072, file: !12, line: 417, baseType: !1081, size: 768, offset: 640)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1089}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1081, file: !12, line: 46, baseType: !761, size: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1081, file: !12, line: 47, baseType: !1071, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1081, file: !12, line: 48, baseType: !767, size: 64, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1081, file: !12, line: 49, baseType: !1087, size: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1081, file: !12, line: 50, baseType: !1090, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1092, line: 26, size: 256, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1091, file: !1092, line: 27, baseType: !7, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1091, file: !1092, line: 28, baseType: !1096, size: 192, offset: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1097, line: 43, size: 192, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1096, file: !1097, line: 44, baseType: !334, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1096, file: !1097, line: 45, baseType: !371, size: 128, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1072, file: !12, line: 418, baseType: !1102, size: 64, offset: 1408)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !1104)
!1104 = !{!1105, !1106, !1111, !1115, !1119, !1123}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1103, file: !12, line: 54, baseType: !848, size: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1103, file: !12, line: 55, baseType: !1107, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!842, !1102, !1110, !810}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1103, file: !12, line: 57, baseType: !1112, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!842, !1102, !1110, !162, !857}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1103, file: !12, line: 59, baseType: !1116, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1071, !162}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1103, file: !12, line: 60, baseType: !1120, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!114, !1071}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1103, file: !12, line: 61, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !1071}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1072, file: !12, line: 419, baseType: !162, size: 64, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1072, file: !12, line: 420, baseType: !162, size: 64, offset: 1536)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1072, file: !12, line: 421, baseType: !767, size: 64, offset: 1600)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1072, file: !12, line: 424, baseType: !1131, size: 64, offset: 1664)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1072, file: !12, line: 425, baseType: !1135, size: 64, offset: 1728)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !149, line: 20, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !151, line: 26, baseType: !114)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1072, file: !12, line: 426, baseType: !7, size: 32, offset: 1792)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1072, file: !12, line: 435, baseType: !319, size: 256, offset: 1856)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1072, file: !12, line: 437, baseType: !1142, size: 64, offset: 2112)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1144, line: 69, size: 320, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1145 = !{!1146, !1147, !1148, !1168, !1170, !1174, !1175}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1143, file: !1144, line: 70, baseType: !162, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1143, file: !1144, line: 71, baseType: !1071, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1143, file: !1144, line: 72, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1144, line: 47, size: 256, elements: !1152)
!1152 = !{!1153, !1154, !1160, !1164}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1151, file: !1144, line: 49, baseType: !7, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1151, file: !1144, line: 51, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!114, !162, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1151, file: !1144, line: 53, baseType: !1161, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!114, !810, !1158}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1151, file: !1144, line: 55, baseType: !1165, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !147}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1143, file: !1144, line: 73, baseType: !1169, size: 16, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1143, file: !1144, line: 74, baseType: !1171, size: 8, offset: 208)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !149, line: 16, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !151, line: 20, baseType: !1173)
!1173 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1144, line: 75, baseType: !355, size: 8, offset: 216)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !1144, line: 76, baseType: !1176, size: 64, offset: 256)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !1144, line: 76, size: 64, elements: !1177)
!1177 = !{!1178, !1179, !1186}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1176, file: !1144, line: 77, baseType: !147, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1176, file: !1144, line: 78, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1144, line: 86, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1182, file: !1144, line: 87, baseType: !7, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1182, file: !1144, line: 88, baseType: !810, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1176, file: !1144, line: 79, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1144, line: 92, size: 256, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1195, !1196}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1189, file: !1144, line: 94, baseType: !7, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1189, file: !1144, line: 95, baseType: !7, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1189, file: !1144, line: 96, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1189, file: !1144, line: 97, baseType: !1149, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1189, file: !1144, line: 98, baseType: !147, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1072, file: !12, line: 438, baseType: !7, size: 32, offset: 2176)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1072, file: !12, line: 441, baseType: !7, size: 32, offset: 2208)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1072, file: !12, line: 442, baseType: !1131, size: 64, offset: 2240)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1072, file: !12, line: 443, baseType: !1135, size: 64, offset: 2304)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1072, file: !12, line: 444, baseType: !388, size: 8, offset: 2368)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1072, file: !12, line: 451, baseType: !388, size: 8, offset: 2376)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1072, file: !12, line: 454, baseType: !7, size: 32, offset: 2400)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1072, file: !12, line: 455, baseType: !1205, size: 64, offset: 2432)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1207, line: 23, size: 96, elements: !1208)
!1207 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1206, file: !1207, line: 24, baseType: !114, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1206, file: !1207, line: 24, baseType: !114, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1206, file: !1207, line: 24, baseType: !114, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1072, file: !12, line: 458, baseType: !294, size: 64, offset: 2496)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1072, file: !12, line: 460, baseType: !1214, size: 4032, align: 512, offset: 2560)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 4032, elements: !1238)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1215, file: !12, line: 363, baseType: !147, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1215, file: !12, line: 364, baseType: !7, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1215, file: !12, line: 367, baseType: !1220, size: 448, offset: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1220, file: !12, line: 320, baseType: !1071, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1220, file: !12, line: 321, baseType: !1224, size: 384, offset: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1225, line: 40, size: 384, elements: !1226)
!1225 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1224, file: !1225, line: 41, baseType: !1228, size: 384, align: 64)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, size: 384, align: 64, elements: !1236)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1230, line: 5, size: 192, align: 64, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1231 = !{!1232, !1233, !1235}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1229, file: !1230, line: 6, baseType: !159, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1229, file: !1230, line: 7, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1229, file: !1230, line: 8, baseType: !1234, size: 64, offset: 128)
!1236 = !{!1237}
!1237 = !DISubrange(count: 2)
!1238 = !{!1239}
!1239 = !DISubrange(count: 7)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1072, file: !12, line: 463, baseType: !1241, size: 192, offset: 6592)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1242, line: 8, size: 192, elements: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1243 = !{!1244, !1245, !1247}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1241, file: !1242, line: 10, baseType: !7, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1241, file: !1242, line: 11, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1241, file: !1242, line: 12, baseType: !1248, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1250, line: 59, size: 48, elements: !1251)
!1250 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1251 = !{!1252, !1256, !1257, !1258, !1259, !1260}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1249, file: !1250, line: 60, baseType: !1253, size: 16)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !149, line: 18, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !151, line: 23, baseType: !1255)
!1255 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1249, file: !1250, line: 61, baseType: !1253, size: 16, offset: 16)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1249, file: !1250, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1249, file: !1250, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1249, file: !1250, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1249, file: !1250, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1072, file: !12, line: 465, baseType: !159, size: 64, offset: 6784)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1072, file: !12, line: 469, baseType: !7, size: 32, offset: 6848)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1072, file: !12, line: 470, baseType: !371, size: 128, offset: 6912)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1072, file: !12, line: 471, baseType: !1265, size: 64, offset: 7040)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1267, line: 33, size: 96, elements: !1268)
!1267 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1268 = !{!1269, !1270, !1271, !1272}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1266, file: !1267, line: 37, baseType: !114, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1266, file: !1267, line: 43, baseType: !114, size: 32, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1266, file: !1267, line: 45, baseType: !363, size: 16, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1266, file: !1267, line: 47, baseType: !363, size: 16, offset: 80)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1072, file: !12, line: 476, baseType: !1274, size: 64, offset: 7104)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !1276)
!1276 = !{!1277, !1293, !1294, !1295}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1275, file: !12, line: 379, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1280, line: 204, baseType: !1281)
!1280 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1280, line: 197, size: 192, elements: !1282)
!1282 = !{!1283, !1285, !1286, !1287, !1289, !1291}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1281, file: !1280, line: 198, baseType: !1284, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1280, line: 21, baseType: !150)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1281, file: !1280, line: 199, baseType: !278, size: 8, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1281, file: !1280, line: 200, baseType: !278, size: 8, offset: 40)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1281, file: !1280, line: 201, baseType: !1288, size: 16, offset: 48)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1280, line: 17, baseType: !362)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1281, file: !1280, line: 202, baseType: !1290, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1280, line: 16, baseType: !702)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1281, file: !1280, line: 203, baseType: !1292, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1280, line: 22, baseType: !702)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1275, file: !12, line: 380, baseType: !7, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1275, file: !12, line: 381, baseType: !810, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1275, file: !12, line: 382, baseType: !810, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1072, file: !12, line: 477, baseType: !1275, size: 256, offset: 7168)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1072, file: !12, line: 480, baseType: !1298, size: 64, offset: 7424)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1072, file: !12, line: 483, baseType: !1301, size: 64, offset: 7488)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1072, file: !12, line: 488, baseType: !810, size: 64, offset: 7552)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1072, file: !12, line: 492, baseType: !147, size: 64, offset: 7616)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1072, file: !12, line: 493, baseType: !7, size: 32, offset: 7680)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1072, file: !12, line: 495, baseType: !147, size: 64, offset: 7744)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1072, file: !12, line: 496, baseType: !7, size: 32, offset: 7808)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1072, file: !12, line: 499, baseType: !7, size: 32, offset: 7840)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1072, file: !12, line: 500, baseType: !1310, size: 64, offset: 7872)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1312, line: 45, baseType: !1313)
!1312 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1072, file: !12, line: 503, baseType: !7, size: 32, offset: 7936)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1072, file: !12, line: 504, baseType: !1316, size: 64, offset: 8000)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1319, line: 96, size: 192, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1320 = !{!1321, !1322, !1401, !1404}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1318, file: !1319, line: 97, baseType: !7, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1318, file: !1319, line: 98, baseType: !1323, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1319, line: 24, size: 3072, elements: !1325)
!1325 = !{!1326, !1328, !1329, !1330, !1331, !1353, !1354, !1355, !1356, !1374, !1386, !1387, !1398, !1399, !1400}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1324, file: !1319, line: 26, baseType: !1327, size: 128)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !1236)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1324, file: !1319, line: 27, baseType: !1327, size: 128, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1324, file: !1319, line: 28, baseType: !114, size: 32, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1324, file: !1319, line: 31, baseType: !774, size: 32, align: 512, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1324, file: !1319, line: 32, baseType: !1332, size: 960, offset: 576)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1333, line: 206, size: 960, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1334 = !{!1335, !1344, !1347, !1349, !1350, !1352}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1332, file: !1333, line: 207, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !326, line: 232, size: 128, align: 64, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1337, file: !326, line: 233, baseType: !1336, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1337, file: !326, line: 234, baseType: !1341, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !1336}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1332, file: !1333, line: 208, baseType: !1345, size: 256, offset: 64)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 256, elements: !711)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1332, file: !1333, line: 209, baseType: !1348, size: 256, offset: 320)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !711)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1332, file: !1333, line: 213, baseType: !846, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1332, file: !1333, line: 215, baseType: !1351, size: 256, offset: 640)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 256, elements: !711)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1332, file: !1333, line: 216, baseType: !355, size: 8, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1324, file: !1319, line: 33, baseType: !159, size: 64, offset: 1536)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1324, file: !1319, line: 34, baseType: !159, size: 64, offset: 1600)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1324, file: !1319, line: 35, baseType: !388, size: 8, offset: 1664)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1324, file: !1319, line: 36, baseType: !1357, size: 320, offset: 1728)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1358, line: 11, size: 320, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1359 = !{!1360, !1367, !1368, !1373}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1357, file: !1358, line: 16, baseType: !1361, size: 128)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !326, line: 198, size: 128, elements: !1362)
!1362 = !{!1363, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1361, file: !326, line: 199, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1361, file: !326, line: 199, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1357, file: !1358, line: 17, baseType: !159, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1357, file: !1358, line: 18, baseType: !1369, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1358, line: 19, baseType: !148, size: 32, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1324, file: !1319, line: 37, baseType: !1375, size: 256, offset: 2048)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1376, line: 98, size: 256, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1377 = !{!1378, !1379, !1380}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1375, file: !1376, line: 99, baseType: !323, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1375, file: !1376, line: 100, baseType: !371, size: 128, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1375, file: !1376, line: 101, baseType: !1381, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1376, line: 21, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1324, file: !1319, line: 38, baseType: !1337, size: 128, align: 64, offset: 2304)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1324, file: !1319, line: 39, baseType: !1388, size: 64, offset: 2432)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1319, line: 49, size: 768, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1389, file: !1319, line: 50, baseType: !774, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1389, file: !1319, line: 51, baseType: !1348, size: 256, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1389, file: !1319, line: 53, baseType: !1348, size: 256, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1389, file: !1319, line: 54, baseType: !159, size: 64, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1389, file: !1319, line: 55, baseType: !1388, size: 64, offset: 640)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1389, file: !1319, line: 56, baseType: !114, size: 32, offset: 704)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1389, file: !1319, line: 57, baseType: !114, size: 32, offset: 736)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1324, file: !1319, line: 40, baseType: !159, size: 64, offset: 2496)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1324, file: !1319, line: 42, baseType: !114, size: 32, offset: 2560)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1324, file: !1319, line: 43, baseType: !1317, size: 64, offset: 2624)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1318, file: !1319, line: 99, baseType: !1402, offset: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1403, line: 211, elements: !588)
!1403 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1318, file: !1319, line: 100, baseType: !1405, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1319, line: 63, size: 3008, elements: !1407)
!1407 = !{!1408, !1409, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1439}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1406, file: !1319, line: 64, baseType: !1388, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1406, file: !1319, line: 65, baseType: !1410, size: 192, offset: 64)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1388, size: 192, elements: !811)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1406, file: !1319, line: 67, baseType: !114, size: 32, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1406, file: !1319, line: 68, baseType: !319, size: 256, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1406, file: !1319, line: 69, baseType: !774, size: 32, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1406, file: !1319, line: 70, baseType: !319, size: 256, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1406, file: !1319, line: 71, baseType: !159, size: 64, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1406, file: !1319, line: 72, baseType: !159, size: 64, offset: 960)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1406, file: !1319, line: 73, baseType: !159, size: 64, offset: 1024)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1406, file: !1319, line: 74, baseType: !159, size: 64, offset: 1088)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1406, file: !1319, line: 75, baseType: !159, size: 64, offset: 1152)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1406, file: !1319, line: 76, baseType: !159, size: 64, offset: 1216)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1406, file: !1319, line: 77, baseType: !159, size: 64, offset: 1280)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1406, file: !1319, line: 78, baseType: !159, size: 64, offset: 1344)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1406, file: !1319, line: 79, baseType: !388, size: 8, offset: 1408)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1406, file: !1319, line: 80, baseType: !159, size: 64, offset: 1472)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1406, file: !1319, line: 81, baseType: !319, size: 256, offset: 1536)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1406, file: !1319, line: 82, baseType: !1091, size: 256, offset: 1792)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1406, file: !1319, line: 84, baseType: !347, size: 32, offset: 2048)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1406, file: !1319, line: 87, baseType: !159, size: 64, offset: 2112)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1406, file: !1319, line: 88, baseType: !159, size: 64, offset: 2176)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1406, file: !1319, line: 89, baseType: !1431, size: 704, offset: 2240)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1376, line: 111, size: 704, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1438}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1431, file: !1376, line: 112, baseType: !1375, size: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1431, file: !1376, line: 113, baseType: !1357, size: 320, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1431, file: !1376, line: 116, baseType: !1436, size: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1376, line: 18, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1431, file: !1376, line: 117, baseType: !114, size: 32, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1406, file: !1319, line: 90, baseType: !1317, size: 64, offset: 2944)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1072, file: !12, line: 515, baseType: !1441, size: 64, offset: 8064)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1443, line: 117, size: 128, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1444 = !{!1445, !1446, !1447}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1442, file: !1443, line: 118, baseType: !1137, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1442, file: !1443, line: 119, baseType: !1137, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1442, file: !1443, line: 120, baseType: !846, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1072, file: !12, line: 516, baseType: !7, size: 32, offset: 8128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1072, file: !12, line: 519, baseType: !7, size: 32, offset: 8160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1072, file: !12, line: 520, baseType: !1451, size: 64, offset: 8192)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1072, file: !12, line: 523, baseType: !1453, size: 64, offset: 8256)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1072, file: !12, line: 524, baseType: !7, size: 32, offset: 8320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1072, file: !12, line: 525, baseType: !1458, size: 64, offset: 8384)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1072, file: !12, line: 526, baseType: !7, size: 32, offset: 8448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1072, file: !12, line: 533, baseType: !147, size: 64, offset: 8512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1072, file: !12, line: 534, baseType: !7, size: 32, offset: 8576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1072, file: !12, line: 535, baseType: !283, size: 64, offset: 8640)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1072, file: !12, line: 536, baseType: !7, size: 32, offset: 8704)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1072, file: !12, line: 539, baseType: !114, size: 32, offset: 8736)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1072, file: !12, line: 540, baseType: !1468, size: 64, offset: 8768)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1470, line: 32, size: 64, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1469, file: !1470, line: 33, baseType: !1137, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1469, file: !1470, line: 34, baseType: !1137, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1072, file: !12, line: 563, baseType: !371, size: 128, offset: 8832)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1072, file: !12, line: 565, baseType: !371, size: 128, offset: 8960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1072, file: !12, line: 568, baseType: !1477, size: 64, offset: 9088)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1072, file: !12, line: 570, baseType: !347, size: 32, offset: 9152)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !19, line: 2382, baseType: !1046, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1047, file: !19, line: 2383, baseType: !1483, size: 64, offset: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !326, line: 194, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1483, file: !326, line: 195, baseType: !1364, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1047, file: !19, line: 2385, baseType: !1487, offset: 576)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1403, line: 206, elements: !588)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1047, file: !19, line: 2386, baseType: !1487, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1047, file: !19, line: 2387, baseType: !1487, offset: 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1047, file: !19, line: 2388, baseType: !1491, offset: 576)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1487, elements: !811)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1047, file: !19, line: 2390, baseType: !1487, offset: 576)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1047, file: !19, line: 2391, baseType: !1487, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1047, file: !19, line: 2392, baseType: !1487, offset: 576)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1047, file: !19, line: 2393, baseType: !1487, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1034, file: !19, line: 1197, baseType: !1497, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !1500)
!1500 = !{!1501, !1505, !1509, !1510, !1514, !1520, !1524, !1525, !1526, !1530, !1534, !1538, !1539, !1540, !1546, !1550, !1551, !1558, !1559, !1560, !1561, !1565, !1569, !1618, !1634, !1635}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1499, file: !19, line: 2058, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!889, !1033}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1499, file: !19, line: 2059, baseType: !1506, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !889}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1499, file: !19, line: 2060, baseType: !1506, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1499, file: !19, line: 2062, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !889, !114}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1499, file: !19, line: 2063, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!114, !889, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !19, line: 309, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1499, file: !19, line: 2064, baseType: !1521, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!114, !889}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1499, file: !19, line: 2065, baseType: !1506, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1499, file: !19, line: 2066, baseType: !1067, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1499, file: !19, line: 2067, baseType: !1527, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!114, !1033, !114}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1499, file: !19, line: 2068, baseType: !1531, size: 64, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!114, !1033, !18}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1499, file: !19, line: 2069, baseType: !1535, size: 64, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!114, !1033}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1499, file: !19, line: 2070, baseType: !1531, size: 64, offset: 704)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1499, file: !19, line: 2071, baseType: !1535, size: 64, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1499, file: !19, line: 2072, baseType: !1541, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!114, !924, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1499, file: !19, line: 2073, baseType: !1547, size: 64, offset: 896)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!114, !1033, !1246, !810}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1499, file: !19, line: 2074, baseType: !1067, size: 64, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1499, file: !19, line: 2076, baseType: !1552, size: 64, offset: 1024)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!114, !1555, !924}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1557, line: 66, flags: DIFlagFwdDecl)
!1557 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1499, file: !19, line: 2077, baseType: !1552, size: 64, offset: 1088)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1499, file: !19, line: 2078, baseType: !1552, size: 64, offset: 1152)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1499, file: !19, line: 2079, baseType: !1552, size: 64, offset: 1216)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1499, file: !19, line: 2081, baseType: !1562, size: 64, offset: 1280)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!842, !1033, !114, !810, !857, !1043}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1499, file: !19, line: 2082, baseType: !1566, size: 64, offset: 1344)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!842, !1033, !114, !162, !857, !1043}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1499, file: !19, line: 2083, baseType: !1570, size: 64, offset: 1408)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1573, !889}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !24, line: 296, size: 1664, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1601, !1602, !1603}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1575, file: !24, line: 297, baseType: !1361, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1575, file: !24, line: 298, baseType: !371, size: 128, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1575, file: !24, line: 299, baseType: !371, size: 128, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1575, file: !24, line: 300, baseType: !371, size: 128, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1575, file: !24, line: 301, baseType: !319, size: 256, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1575, file: !24, line: 302, baseType: !774, size: 32, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1575, file: !24, line: 303, baseType: !347, size: 32, offset: 800)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1575, file: !24, line: 304, baseType: !1033, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1575, file: !24, line: 305, baseType: !1586, size: 64, offset: 896)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !24, line: 68, size: 64, elements: !1587)
!1587 = !{!1588, !1600}
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !24, line: 69, baseType: !1589, size: 32)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1586, file: !24, line: 69, size: 32, elements: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1589, file: !24, line: 70, baseType: !895, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1589, file: !24, line: 71, baseType: !904, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1589, file: !24, line: 72, baseType: !1594, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1595, line: 24, baseType: !1596)
!1595 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1595, line: 22, size: 32, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1596, file: !1595, line: 23, baseType: !1599, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1595, line: 20, baseType: !901)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1586, file: !24, line: 74, baseType: !23, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1575, file: !24, line: 306, baseType: !1043, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1575, file: !24, line: 307, baseType: !159, size: 64, offset: 1024)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1575, file: !24, line: 308, baseType: !1604, size: 576, offset: 1088)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !24, line: 205, size: 576, elements: !1605)
!1605 = !{!1606, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1617}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1604, file: !24, line: 206, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !24, line: 66, baseType: !332)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1604, file: !24, line: 207, baseType: !1607, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1604, file: !24, line: 208, baseType: !1607, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1604, file: !24, line: 209, baseType: !1607, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1604, file: !24, line: 210, baseType: !1607, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1604, file: !24, line: 211, baseType: !1607, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1604, file: !24, line: 212, baseType: !1607, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1604, file: !24, line: 213, baseType: !1615, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1616, line: 8, baseType: !331)
!1616 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1604, file: !24, line: 214, baseType: !1615, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1499, file: !19, line: 2085, baseType: !1619, size: 64, offset: 1472)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!846, !1033, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1624, line: 15, size: 256, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1625 = !{!1626, !1628, !1629, !1630, !1631}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1623, file: !1624, line: 16, baseType: !1627, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !326, line: 154, baseType: !7)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1623, file: !1624, line: 19, baseType: !114, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1623, file: !1624, line: 26, baseType: !159, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1623, file: !1624, line: 33, baseType: !159, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1623, file: !1624, line: 36, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !43, line: 33, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1499, file: !19, line: 2087, baseType: !1619, size: 64, offset: 1536)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1499, file: !19, line: 2089, baseType: !1067, size: 64, offset: 1600)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1034, file: !19, line: 1198, baseType: !1637, size: 64, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !24, line: 324, size: 704, elements: !1640)
!1640 = !{!1641, !1645, !1649, !1653, !1654, !1655, !1656, !1657, !1662, !1667, !1671}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1639, file: !24, line: 325, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!114, !1574}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1639, file: !24, line: 326, baseType: !1646, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!1574, !1033, !114}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1639, file: !24, line: 327, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1574}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1639, file: !24, line: 328, baseType: !1642, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1639, file: !24, line: 329, baseType: !1642, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1639, file: !24, line: 330, baseType: !1642, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1639, file: !24, line: 331, baseType: !1527, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1639, file: !24, line: 334, baseType: !1658, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!1661, !889}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1639, file: !24, line: 335, baseType: !1663, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!114, !889, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1639, file: !24, line: 337, baseType: !1668, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!114, !889, !1661}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1639, file: !24, line: 339, baseType: !1672, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!114, !1033, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1034, file: !19, line: 1199, baseType: !1677, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !24, line: 430, size: 704, elements: !1680)
!1680 = !{!1681, !1692, !1693, !1697, !1698, !1699, !1714, !1737, !1741, !1742, !1765}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1679, file: !24, line: 431, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!114, !1033, !114, !114, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1688, line: 8, size: 128, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1687, file: !1688, line: 9, baseType: !1027, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1687, file: !1688, line: 10, baseType: !924, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1679, file: !24, line: 432, baseType: !1527, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1679, file: !24, line: 433, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!114, !1033, !7}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1679, file: !24, line: 434, baseType: !1694, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1679, file: !24, line: 435, baseType: !1527, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1679, file: !24, line: 436, baseType: !1700, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!114, !1033, !114, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !24, line: 417, size: 256, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1704, file: !24, line: 418, baseType: !114, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1704, file: !24, line: 419, baseType: !7, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1704, file: !24, line: 420, baseType: !7, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1704, file: !24, line: 422, baseType: !7, size: 32, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1704, file: !24, line: 423, baseType: !7, size: 32, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1704, file: !24, line: 424, baseType: !7, size: 32, offset: 160)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1704, file: !24, line: 425, baseType: !7, size: 32, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1704, file: !24, line: 426, baseType: !7, size: 32, offset: 224)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1679, file: !24, line: 437, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!114, !1033, !1586, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !24, line: 345, size: 960, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1719, file: !24, line: 346, baseType: !114, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1719, file: !24, line: 347, baseType: !701, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1719, file: !24, line: 348, baseType: !701, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1719, file: !24, line: 349, baseType: !701, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1719, file: !24, line: 350, baseType: !701, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1719, file: !24, line: 351, baseType: !701, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1719, file: !24, line: 352, baseType: !701, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1719, file: !24, line: 353, baseType: !330, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1719, file: !24, line: 355, baseType: !330, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1719, file: !24, line: 356, baseType: !114, size: 32, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1719, file: !24, line: 357, baseType: !114, size: 32, offset: 608)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1719, file: !24, line: 358, baseType: !701, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1719, file: !24, line: 359, baseType: !701, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1719, file: !24, line: 360, baseType: !701, size: 64, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1719, file: !24, line: 361, baseType: !330, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1719, file: !24, line: 362, baseType: !114, size: 32, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1679, file: !24, line: 438, baseType: !1738, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!114, !1033, !1675, !1718}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1679, file: !24, line: 440, baseType: !1715, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1679, file: !24, line: 441, baseType: !1743, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!114, !1033, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !24, line: 411, size: 1408, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1747, file: !24, line: 412, baseType: !7, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1747, file: !24, line: 413, baseType: !1751, size: 1344, offset: 64)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1752, size: 1344, elements: !811)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !24, line: 397, size: 448, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1764}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1752, file: !24, line: 398, baseType: !7, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1752, file: !24, line: 399, baseType: !7, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1752, file: !24, line: 401, baseType: !7, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1752, file: !24, line: 402, baseType: !7, size: 32, offset: 96)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1752, file: !24, line: 403, baseType: !7, size: 32, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1752, file: !24, line: 404, baseType: !7, size: 32, offset: 160)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1752, file: !24, line: 405, baseType: !7, size: 32, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1752, file: !24, line: 406, baseType: !703, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1752, file: !24, line: 407, baseType: !1763, size: 64, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !326, line: 132, baseType: !701)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1752, file: !24, line: 408, baseType: !1763, size: 64, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1679, file: !24, line: 442, baseType: !1694, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1034, file: !19, line: 1200, baseType: !1767, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1034, file: !19, line: 1201, baseType: !159, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1034, file: !19, line: 1202, baseType: !159, size: 64, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1034, file: !19, line: 1203, baseType: !159, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1034, file: !19, line: 1204, baseType: !924, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1034, file: !19, line: 1205, baseType: !1775, size: 320, offset: 896)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1776, line: 48, size: 320, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1777 = !{!1778, !1779, !1780, !1781, !1782}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1775, file: !1776, line: 49, baseType: !323, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1775, file: !1776, line: 55, baseType: !323, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1775, file: !1776, line: 57, baseType: !366, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1775, file: !1776, line: 59, baseType: !334, size: 32, offset: 160)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1775, file: !1776, line: 60, baseType: !371, size: 128, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1034, file: !19, line: 1206, baseType: !114, size: 32, offset: 1216)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1034, file: !19, line: 1207, baseType: !347, size: 32, offset: 1248)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1034, file: !19, line: 1209, baseType: !147, size: 64, offset: 1280)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1034, file: !19, line: 1211, baseType: !1787, size: 64, offset: 1344)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1034, file: !19, line: 1223, baseType: !1792, size: 64, offset: 1408)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !941, line: 34, size: 64, elements: !1793)
!1793 = !{!1794}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1792, file: !941, line: 35, baseType: !944, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1034, file: !19, line: 1224, baseType: !371, size: 128, offset: 1472)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1034, file: !19, line: 1225, baseType: !1797, size: 64, offset: 1600)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !19, line: 1225, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1034, file: !19, line: 1226, baseType: !1800, size: 64, offset: 1664)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1034, file: !19, line: 1227, baseType: !1803, size: 64, offset: 1728)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !19, line: 50, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1034, file: !19, line: 1228, baseType: !1806, size: 64, offset: 1792)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1034, file: !19, line: 1229, baseType: !1361, size: 128, offset: 1856)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1034, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1034, file: !19, line: 1231, baseType: !1811, size: 2496, offset: 2048)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !24, line: 521, size: 2496, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1817, !1849}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1811, file: !24, line: 522, baseType: !7, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1811, file: !24, line: 523, baseType: !1775, size: 320, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1811, file: !24, line: 524, baseType: !1816, size: 192, offset: 384)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 192, elements: !811)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1811, file: !24, line: 525, baseType: !1818, size: 1728, offset: 576)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1819, size: 1728, elements: !811)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !24, line: 222, size: 576, elements: !1820)
!1820 = !{!1821, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1819, file: !24, line: 223, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !24, line: 445, size: 256, elements: !1824)
!1824 = !{!1825, !1826, !1839, !1840}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1823, file: !24, line: 446, baseType: !114, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1823, file: !24, line: 447, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !24, line: 312, size: 512, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1829, file: !24, line: 313, baseType: !1527, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1829, file: !24, line: 314, baseType: !1527, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1829, file: !24, line: 315, baseType: !1527, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1829, file: !24, line: 316, baseType: !1527, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1829, file: !24, line: 317, baseType: !1642, size: 64, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1829, file: !24, line: 318, baseType: !1642, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1829, file: !24, line: 319, baseType: !1642, size: 64, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1829, file: !24, line: 320, baseType: !1672, size: 64, offset: 448)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1823, file: !24, line: 448, baseType: !1071, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1823, file: !24, line: 449, baseType: !1822, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1819, file: !24, line: 224, baseType: !114, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1819, file: !24, line: 226, baseType: !371, size: 128, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1819, file: !24, line: 227, baseType: !159, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1819, file: !24, line: 228, baseType: !7, size: 32, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1819, file: !24, line: 229, baseType: !7, size: 32, offset: 352)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1819, file: !24, line: 230, baseType: !1607, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1819, file: !24, line: 231, baseType: !1607, size: 64, offset: 448)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1819, file: !24, line: 232, baseType: !147, size: 64, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1811, file: !24, line: 526, baseType: !1850, size: 192, offset: 2304)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1827, size: 192, elements: !811)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1034, file: !19, line: 1233, baseType: !1852, size: 2368, offset: 4544)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !1853)
!1853 = !{!1854, !1855, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1852, file: !19, line: 1185, baseType: !363, size: 16)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1852, file: !19, line: 1186, baseType: !363, size: 16, offset: 16)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1852, file: !19, line: 1187, baseType: !1857, size: 2304, offset: 64)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, size: 2304, elements: !811)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1859, line: 12, size: 768, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1860 = !{!1861, !1875, !1876, !4011, !4012}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1858, file: !1859, line: 13, baseType: !1862, size: 384)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1863, line: 17, size: 384, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1864 = !{!1865, !1866, !1867, !1874}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1862, file: !1863, line: 18, baseType: !114, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1862, file: !1863, line: 19, baseType: !114, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1862, file: !1863, line: 20, baseType: !1868, size: 192, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1869, line: 41, baseType: !1870)
!1869 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1869, line: 37, size: 192, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1870, file: !1869, line: 38, baseType: !774, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1870, file: !1869, line: 39, baseType: !371, size: 128, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1862, file: !1863, line: 22, baseType: !1337, size: 128, align: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1858, file: !1859, line: 14, baseType: !1194, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1858, file: !1859, line: 15, baseType: !1877, size: 64, offset: 448)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1878, line: 16, size: 64, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1877, file: !1878, line: 17, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1557, line: 746, size: 58368, elements: !1883)
!1883 = !{!1884, !1892, !1893, !1894, !1900, !1901, !1902, !1903, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1974, !1985, !2078, !2082, !2085, !2116, !2117, !2118, !2119, !2123, !2125, !2126, !2127, !2128, !2129, !2130, !2141, !2142, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2159, !2160, !2167, !2168, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3181, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3229, !3235, !3236, !3237, !3238, !3239, !3240, !3243, !3250, !3255, !3258, !3261, !3264, !3267, !3405, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3443, !3444, !3445, !3454, !3462, !3463, !3464, !3465, !3466, !3471, !3472, !3473, !3476, !3477, !3480, !3483, !3486, !3494, !3497, !3498, !3583, !3584, !3585, !3586, !3587, !3593, !3594, !3595, !3596, !3599, !3600, !3603, !3617, !3618, !3621, !3622, !3623, !3626, !3627, !3628, !3629, !3630, !3631, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3663, !3664, !3670, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3682, !3754, !3756, !3757, !3758, !3759, !3760, !3761, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3790, !3791, !3792}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1882, file: !1557, line: 752, baseType: !1885, size: 192)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1886, line: 56, size: 192, elements: !1887)
!1886 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1885, file: !1886, line: 57, baseType: !159, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1885, file: !1886, line: 58, baseType: !159, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1885, file: !1886, line: 59, baseType: !148, size: 32, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1885, file: !1886, line: 61, baseType: !148, size: 32, offset: 160)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1882, file: !1557, line: 754, baseType: !7, size: 32, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1882, file: !1557, line: 767, baseType: !147, size: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1882, file: !1557, line: 768, baseType: !1895, size: 32, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1896, line: 113, baseType: !1897)
!1896 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1896, line: 111, size: 32, elements: !1898)
!1898 = !{!1899}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1897, file: !1896, line: 112, baseType: !347, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1882, file: !1557, line: 770, baseType: !7, size: 32, offset: 352)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1882, file: !1557, line: 771, baseType: !7, size: 32, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1882, file: !1557, line: 774, baseType: !114, size: 32, offset: 416)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1882, file: !1557, line: 775, baseType: !1904, size: 128, offset: 448)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1905, line: 58, size: 128, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1906 = !{!1907, !1913, !1918, !1919}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1904, file: !1905, line: 59, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1909, line: 60, size: 64, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1910 = !{!1911}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1908, file: !1909, line: 61, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !1905, line: 60, baseType: !1914, size: 32, offset: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1904, file: !1905, line: 60, size: 32, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1914, file: !1905, line: 61, baseType: !7, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1914, file: !1905, line: 62, baseType: !347, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1904, file: !1905, line: 65, baseType: !361, size: 16, offset: 96)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1904, file: !1905, line: 65, baseType: !361, size: 16, offset: 112)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1882, file: !1557, line: 776, baseType: !7, size: 32, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1882, file: !1557, line: 777, baseType: !159, size: 64, offset: 640)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1882, file: !1557, line: 778, baseType: !1881, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1882, file: !1557, line: 787, baseType: !114, size: 32, offset: 768)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1882, file: !1557, line: 788, baseType: !114, size: 32, offset: 800)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1882, file: !1557, line: 790, baseType: !114, size: 32, offset: 832)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1882, file: !1557, line: 792, baseType: !114, size: 32, offset: 864)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1882, file: !1557, line: 793, baseType: !114, size: 32, offset: 896)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1882, file: !1557, line: 794, baseType: !114, size: 32, offset: 928)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1882, file: !1557, line: 795, baseType: !7, size: 32, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1882, file: !1557, line: 797, baseType: !1931, size: 2048, offset: 1024)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1557, line: 551, size: 2048, elements: !1932)
!1932 = !{!1933, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1953, !1956, !1957, !1958}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1931, file: !1557, line: 553, baseType: !1934, size: 128)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1557, line: 411, size: 128, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1934, file: !1557, line: 412, baseType: !159, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1934, file: !1557, line: 413, baseType: !148, size: 32, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1931, file: !1557, line: 554, baseType: !1229, size: 192, align: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1931, file: !1557, line: 555, baseType: !701, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1931, file: !1557, line: 556, baseType: !701, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1931, file: !1557, line: 558, baseType: !371, size: 128, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1931, file: !1557, line: 559, baseType: !7, size: 32, offset: 576)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1931, file: !1557, line: 561, baseType: !701, size: 64, offset: 640)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1931, file: !1557, line: 562, baseType: !701, size: 64, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1931, file: !1557, line: 563, baseType: !701, size: 64, offset: 768)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1931, file: !1557, line: 564, baseType: !701, size: 64, offset: 832)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1931, file: !1557, line: 565, baseType: !330, size: 64, offset: 896)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1931, file: !1557, line: 566, baseType: !701, size: 64, offset: 960)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1931, file: !1557, line: 568, baseType: !701, size: 64, offset: 1024)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1931, file: !1557, line: 571, baseType: !114, size: 32, offset: 1088)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1931, file: !1557, line: 572, baseType: !1952, size: 64, offset: 1152)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1931, file: !1557, line: 574, baseType: !1954, size: 64, offset: 1216)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1557, line: 49, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1931, file: !1557, line: 576, baseType: !1954, size: 64, offset: 1280)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1931, file: !1557, line: 578, baseType: !159, size: 64, offset: 1344)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1931, file: !1557, line: 588, baseType: !1959, size: 512, align: 512, offset: 1536)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1557, line: 497, size: 512, align: 512, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1959, file: !1557, line: 498, baseType: !701, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1959, file: !1557, line: 499, baseType: !701, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1959, file: !1557, line: 500, baseType: !701, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1959, file: !1557, line: 501, baseType: !148, size: 32, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1959, file: !1557, line: 502, baseType: !148, size: 32, offset: 224)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1959, file: !1557, line: 503, baseType: !159, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1959, file: !1557, line: 504, baseType: !159, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1959, file: !1557, line: 505, baseType: !159, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1959, file: !1557, line: 506, baseType: !1970, size: 64, align: 64, offset: 448)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1557, line: 445, size: 64, align: 64, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1970, file: !1557, line: 446, baseType: !7, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1970, file: !1557, line: 447, baseType: !7, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1882, file: !1557, line: 798, baseType: !1975, size: 384, offset: 3072)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1557, line: 592, size: 384, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1975, file: !1557, line: 593, baseType: !371, size: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1975, file: !1557, line: 594, baseType: !159, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1975, file: !1557, line: 595, baseType: !159, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1975, file: !1557, line: 596, baseType: !7, size: 32, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1975, file: !1557, line: 597, baseType: !363, size: 16, offset: 288)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1975, file: !1557, line: 598, baseType: !363, size: 16, offset: 304)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1975, file: !1557, line: 600, baseType: !1984, size: 64, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1882, file: !1557, line: 799, baseType: !1986, size: 1792, offset: 3456)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1557, line: 610, size: 1792, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2075, !2076}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1986, file: !1557, line: 611, baseType: !1229, size: 192, align: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1986, file: !1557, line: 618, baseType: !701, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1986, file: !1557, line: 619, baseType: !701, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1986, file: !1557, line: 620, baseType: !701, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1986, file: !1557, line: 621, baseType: !701, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1986, file: !1557, line: 622, baseType: !701, size: 64, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1986, file: !1557, line: 629, baseType: !330, size: 64, offset: 512)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1986, file: !1557, line: 630, baseType: !701, size: 64, offset: 576)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1986, file: !1557, line: 631, baseType: !7, size: 32, offset: 640)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1986, file: !1557, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1986, file: !1557, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1986, file: !1557, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1986, file: !1557, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1986, file: !1557, line: 662, baseType: !2002, size: 512, offset: 704)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !30, line: 118, size: 512, elements: !2003)
!2003 = !{!2004, !2012, !2013, !2018, !2071, !2072, !2073, !2074}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2002, file: !30, line: 119, baseType: !2005, size: 256)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2006, line: 9, size: 256, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2005, file: !2006, line: 10, baseType: !1229, size: 192, align: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2005, file: !2006, line: 11, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2011, line: 29, baseType: !330)
!2011 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2002, file: !30, line: 120, baseType: !2010, size: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2002, file: !30, line: 121, baseType: !2014, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!29, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2002, file: !30, line: 122, baseType: !2019, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !30, line: 159, size: 512, align: 512, elements: !2021)
!2021 = !{!2022, !2045, !2046, !2049, !2054, !2055, !2066, !2070}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2020, file: !30, line: 160, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !30, line: 215, size: 4608, align: 512, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2024, file: !30, line: 216, baseType: !334, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2024, file: !30, line: 217, baseType: !7, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2024, file: !30, line: 218, baseType: !7, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2024, file: !30, line: 219, baseType: !7, size: 32, offset: 96)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2024, file: !30, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2024, file: !30, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2024, file: !30, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2024, file: !30, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2024, file: !30, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2024, file: !30, line: 226, baseType: !7, size: 32, offset: 160)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2024, file: !30, line: 227, baseType: !363, size: 16, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2024, file: !30, line: 228, baseType: !363, size: 16, offset: 208)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2024, file: !30, line: 229, baseType: !7, size: 32, offset: 224)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2024, file: !30, line: 235, baseType: !2010, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2024, file: !30, line: 236, baseType: !2017, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2024, file: !30, line: 237, baseType: !2010, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2024, file: !30, line: 238, baseType: !2017, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2024, file: !30, line: 239, baseType: !2044, size: 4096, align: 512, offset: 512)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2020, size: 4096, align: 512, elements: !247)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2020, file: !30, line: 161, baseType: !7, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2020, file: !30, line: 162, baseType: !2047, size: 32, offset: 96)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !326, line: 32, baseType: !2048)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !844, line: 96, baseType: !114)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2020, file: !30, line: 163, baseType: !2050, size: 32, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !931, line: 274, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !931, line: 274, size: 32, elements: !2052)
!2052 = !{!2053}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2051, file: !931, line: 274, baseType: !935, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2020, file: !30, line: 164, baseType: !2017, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2020, file: !30, line: 165, baseType: !2056, size: 128, offset: 256)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2006, line: 14, size: 128, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2056, file: !2006, line: 15, baseType: !2059, size: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1230, line: 26, size: 128, elements: !2060)
!2060 = !{!2061, !2065}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2059, file: !1230, line: 27, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1230, line: 12, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2062, file: !1230, line: 13, baseType: !1234, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2059, file: !1230, line: 28, baseType: !1234, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2020, file: !30, line: 166, baseType: !2067, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2010}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2020, file: !30, line: 167, baseType: !2010, size: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2002, file: !30, line: 123, baseType: !355, size: 8, offset: 448)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2002, file: !30, line: 124, baseType: !355, size: 8, offset: 456)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2002, file: !30, line: 125, baseType: !355, size: 8, offset: 464)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2002, file: !30, line: 126, baseType: !355, size: 8, offset: 472)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1986, file: !1557, line: 671, baseType: !2002, size: 512, offset: 1216)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1986, file: !1557, line: 679, baseType: !2077, size: 64, offset: 1728)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1882, file: !1557, line: 800, baseType: !2079, size: 64, offset: 5248)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1557, line: 800, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1882, file: !1557, line: 809, baseType: !2083, size: 64, offset: 5312)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1557, line: 70, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1882, file: !1557, line: 825, baseType: !2086, size: 2048, align: 512, offset: 5632)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1557, line: 509, size: 2048, align: 512, elements: !2087)
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2086, file: !1557, line: 511, baseType: !701, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2086, file: !1557, line: 512, baseType: !701, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2086, file: !1557, line: 513, baseType: !701, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2086, file: !1557, line: 514, baseType: !701, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2086, file: !1557, line: 515, baseType: !701, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2086, file: !1557, line: 516, baseType: !701, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2086, file: !1557, line: 518, baseType: !701, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2086, file: !1557, line: 519, baseType: !701, size: 64, offset: 448)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2086, file: !1557, line: 520, baseType: !330, size: 64, offset: 512)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2086, file: !1557, line: 522, baseType: !701, size: 64, offset: 576)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2086, file: !1557, line: 523, baseType: !701, size: 64, offset: 640)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2086, file: !1557, line: 524, baseType: !330, size: 64, offset: 704)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2086, file: !1557, line: 526, baseType: !330, size: 64, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2086, file: !1557, line: 527, baseType: !701, size: 64, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2086, file: !1557, line: 529, baseType: !701, size: 64, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2086, file: !1557, line: 530, baseType: !701, size: 64, offset: 960)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2086, file: !1557, line: 531, baseType: !701, size: 64, offset: 1024)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2086, file: !1557, line: 532, baseType: !701, size: 64, offset: 1088)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2086, file: !1557, line: 533, baseType: !701, size: 64, offset: 1152)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2086, file: !1557, line: 535, baseType: !701, size: 64, offset: 1216)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2086, file: !1557, line: 536, baseType: !701, size: 64, offset: 1280)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2086, file: !1557, line: 537, baseType: !701, size: 64, offset: 1344)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2086, file: !1557, line: 538, baseType: !701, size: 64, offset: 1408)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2086, file: !1557, line: 539, baseType: !701, size: 64, offset: 1472)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2086, file: !1557, line: 540, baseType: !701, size: 64, offset: 1536)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2086, file: !1557, line: 541, baseType: !701, size: 64, offset: 1600)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2086, file: !1557, line: 542, baseType: !701, size: 64, offset: 1664)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2086, file: !1557, line: 543, baseType: !701, size: 64, offset: 1728)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1882, file: !1557, line: 833, baseType: !7, size: 32, offset: 7680)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1882, file: !1557, line: 836, baseType: !7, size: 32, offset: 7712)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1882, file: !1557, line: 837, baseType: !114, size: 32, offset: 7744)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1882, file: !1557, line: 838, baseType: !2120, size: 64, offset: 7808)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !155, line: 19, baseType: !154)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1882, file: !1557, line: 839, baseType: !2124, size: 64, offset: 7872)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1882, file: !1557, line: 840, baseType: !2122, size: 64, offset: 7936)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1882, file: !1557, line: 841, baseType: !147, size: 64, offset: 8000)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1882, file: !1557, line: 843, baseType: !363, size: 16, offset: 8064)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1882, file: !1557, line: 845, baseType: !363, size: 16, offset: 8080)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1882, file: !1557, line: 848, baseType: !114, size: 32, offset: 8096)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1882, file: !1557, line: 849, baseType: !2131, size: 32, offset: 8128)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1557, line: 718, size: 32, elements: !2132)
!2132 = !{!2133, !2140}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2131, file: !1557, line: 724, baseType: !2134, size: 32)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !1557, line: 719, size: 32, elements: !2135)
!2135 = !{!2136, !2137, !2138, !2139}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2134, file: !1557, line: 720, baseType: !355, size: 8)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2134, file: !1557, line: 721, baseType: !355, size: 8, offset: 8)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2134, file: !1557, line: 722, baseType: !355, size: 8, offset: 16)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2134, file: !1557, line: 723, baseType: !355, size: 8, offset: 24)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2131, file: !1557, line: 725, baseType: !148, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1882, file: !1557, line: 850, baseType: !371, size: 128, offset: 8192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1882, file: !1557, line: 851, baseType: !2143, size: 64, offset: 8320)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1557, line: 60, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1882, file: !1557, line: 855, baseType: !159, size: 64, offset: 8384)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1882, file: !1557, line: 856, baseType: !355, size: 8, offset: 8448)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1882, file: !1557, line: 857, baseType: !355, size: 8, offset: 8456)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1882, file: !1557, line: 858, baseType: !114, size: 32, offset: 8480)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1882, file: !1557, line: 859, baseType: !371, size: 128, offset: 8512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1882, file: !1557, line: 860, baseType: !114, size: 32, offset: 8640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1882, file: !1557, line: 861, baseType: !371, size: 128, offset: 8704)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1882, file: !1557, line: 873, baseType: !2153, size: 256, offset: 8832)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1557, line: 376, size: 256, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2158}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2153, file: !1557, line: 381, baseType: !159, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2153, file: !1557, line: 384, baseType: !703, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2153, file: !1557, line: 389, baseType: !703, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2153, file: !1557, line: 392, baseType: !703, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1882, file: !1557, line: 875, baseType: !371, size: 128, offset: 9088)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1882, file: !1557, line: 877, baseType: !2161, size: 320, offset: 9216)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2162, line: 86, size: 320, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2161, file: !2162, line: 87, baseType: !114, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2161, file: !2162, line: 88, baseType: !371, size: 128, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2161, file: !2162, line: 89, baseType: !371, size: 128, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1882, file: !1557, line: 878, baseType: !1229, size: 192, align: 64, offset: 9536)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1882, file: !1557, line: 881, baseType: !2169, size: 64, offset: 9728)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !43, line: 733, size: 10240, elements: !2171)
!2171 = !{!2172, !3101}
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !43, line: 734, baseType: !2173, size: 10240)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2170, file: !43, line: 734, size: 10240, elements: !2174)
!2174 = !{!2175, !2179, !2192, !2978, !2979, !2980, !2981, !2982, !2983, !2990, !2991, !2992, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3031, !3033, !3036, !3081, !3082, !3083, !3086, !3087, !3088, !3091, !3092, !3093, !3099, !3100}
!2175 = !DIDerivedType(tag: DW_TAG_member, scope: !2173, file: !43, line: 739, baseType: !2176, size: 512, align: 512)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !43, line: 739, size: 512, align: 512, elements: !2177)
!2177 = !{!2178}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2176, file: !43, line: 747, baseType: !347, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2173, file: !43, line: 750, baseType: !2180, size: 128, offset: 512)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2181, line: 218, size: 128, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2182 = !{!2183, !2190, !2191}
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !2181, line: 219, baseType: !2184, size: 32)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2180, file: !2181, line: 219, size: 32, elements: !2185)
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2184, file: !2181, line: 220, baseType: !774, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2184, file: !2181, line: 221, baseType: !2188)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2181, line: 197, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2181, line: 197, elements: !588)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2180, file: !2181, line: 223, baseType: !7, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2180, file: !2181, line: 224, baseType: !147, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2173, file: !43, line: 752, baseType: !2193, size: 64, offset: 640)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!159, !2196, !159, !159, !159, !159}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !2198)
!2198 = !{!2199, !2205, !2206, !2208, !2209, !2210, !2211, !2212, !2262, !2452, !2461, !2462, !2463, !2968, !2969, !2970, !2971, !2973, !2974, !2977}
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2197, file: !19, line: 995, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2197, file: !19, line: 995, size: 128, elements: !2201)
!2201 = !{!2202, !2203, !2204}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !2200, file: !19, line: 996, baseType: !1908, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !2200, file: !19, line: 997, baseType: !1337, size: 128, align: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !2200, file: !19, line: 998, baseType: !7, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !2197, file: !19, line: 1005, baseType: !774, size: 32, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !2197, file: !19, line: 1006, baseType: !2207, size: 32, offset: 160)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !326, line: 156, baseType: !7)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !2197, file: !19, line: 1007, baseType: !323, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !2197, file: !19, line: 1008, baseType: !319, size: 256, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !2197, file: !19, line: 1009, baseType: !1043, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2197, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !2197, file: !19, line: 1011, baseType: !2213, size: 256, offset: 640)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !2214)
!2214 = !{!2215, !2236, !2258, !2259, !2260, !2261}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2213, file: !19, line: 949, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2217, line: 34, baseType: !2218)
!2217 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2217, line: 25, size: 64, elements: !2219)
!2219 = !{!2220}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2218, file: !2217, line: 26, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !2222, line: 27, baseType: !2223)
!2222 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !2222, line: 13, size: 64, elements: !2224)
!2224 = !{!2225, !2235}
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2223, file: !2222, line: 14, baseType: !2226, size: 32)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2223, file: !2222, line: 14, size: 32, elements: !2227)
!2227 = !{!2228, !2229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !2226, file: !2222, line: 15, baseType: !347, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2222, line: 16, baseType: !2230, size: 32)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2226, file: !2222, line: 16, size: 32, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !2230, file: !2222, line: 18, baseType: !355, size: 8)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !2230, file: !2222, line: 19, baseType: !2234, size: 24, offset: 8)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 24, elements: !811)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2223, file: !2222, line: 26, baseType: !339, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2213, file: !19, line: 950, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !35, line: 59, size: 768, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2245, !2246, !2247, !2248}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2238, file: !35, line: 61, baseType: !1895, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2238, file: !35, line: 62, baseType: !7, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2238, file: !35, line: 63, baseType: !774, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2238, file: !35, line: 65, baseType: !2244, size: 256, offset: 128)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1483, size: 256, elements: !711)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2238, file: !35, line: 66, baseType: !1483, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2238, file: !35, line: 68, baseType: !1868, size: 192, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2238, file: !35, line: 69, baseType: !1337, size: 128, align: 64, offset: 640)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2238, file: !35, line: 70, baseType: !2249, offset: 768)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2250, elements: !2256)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !35, line: 54, size: 128, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2250, file: !35, line: 55, baseType: !114, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2250, file: !35, line: 56, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !35, line: 56, flags: DIFlagFwdDecl)
!2256 = !{!2257}
!2257 = !DISubrange(count: -1)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2213, file: !19, line: 951, baseType: !34, size: 32, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2213, file: !19, line: 952, baseType: !895, size: 32, offset: 160)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2213, file: !19, line: 952, baseType: !895, size: 32, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2213, file: !19, line: 953, baseType: !114, size: 32, offset: 224)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !2197, file: !19, line: 1012, baseType: !2263, size: 64, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2266, line: 110, size: 1472, elements: !2267)
!2266 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2284, !2285, !2286, !2287, !2288, !2289, !2397, !2398, !2399, !2400, !2401, !2432, !2435, !2439, !2447}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2265, file: !2266, line: 111, baseType: !323, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2265, file: !2266, line: 112, baseType: !895, size: 32, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2265, file: !2266, line: 113, baseType: !904, size: 32, offset: 96)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2265, file: !2266, line: 114, baseType: !895, size: 32, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2265, file: !2266, line: 115, baseType: !904, size: 32, offset: 160)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2265, file: !2266, line: 116, baseType: !895, size: 32, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2265, file: !2266, line: 117, baseType: !904, size: 32, offset: 224)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2265, file: !2266, line: 118, baseType: !895, size: 32, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2265, file: !2266, line: 119, baseType: !904, size: 32, offset: 288)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2265, file: !2266, line: 120, baseType: !7, size: 32, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2265, file: !2266, line: 121, baseType: !2279, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2280, line: 24, baseType: !2281)
!2280 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2280, line: 24, size: 64, elements: !2282)
!2282 = !{!2283}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2281, file: !2280, line: 24, baseType: !701, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2265, file: !2266, line: 122, baseType: !2279, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2265, file: !2266, line: 123, baseType: !2279, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2265, file: !2266, line: 124, baseType: !2279, size: 64, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2265, file: !2266, line: 125, baseType: !2279, size: 64, offset: 640)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2265, file: !2266, line: 127, baseType: !278, size: 8, offset: 704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2265, file: !2266, line: 129, baseType: !2290, size: 64, offset: 768)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2292, line: 195, size: 1728, elements: !2293)
!2292 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2293 = !{!2294, !2295, !2298, !2303, !2304, !2307, !2308, !2313, !2314, !2315, !2316, !2319, !2320, !2321, !2322, !2323, !2361, !2382}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2291, file: !2292, line: 196, baseType: !1895, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2291, file: !2292, line: 197, baseType: !2296, size: 32, offset: 32)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2292, line: 28, baseType: !2297)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !326, line: 104, baseType: !1137)
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !2292, line: 198, baseType: !2299, size: 192, offset: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2291, file: !2292, line: 198, size: 192, elements: !2300)
!2300 = !{!2301, !2302}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2299, file: !2292, line: 199, baseType: !371, size: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2299, file: !2292, line: 200, baseType: !1229, size: 192, align: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2291, file: !2292, line: 205, baseType: !1775, size: 320, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2291, file: !2292, line: 206, baseType: !2305, size: 64, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2292, line: 206, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2291, file: !2292, line: 207, baseType: !147, size: 64, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !2292, line: 208, baseType: !2309, size: 64, offset: 704)
!2309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2291, file: !2292, line: 208, size: 64, elements: !2310)
!2310 = !{!2311, !2312}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2309, file: !2292, line: 209, baseType: !1615, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2309, file: !2292, line: 210, baseType: !1615, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2291, file: !2292, line: 212, baseType: !1615, size: 64, offset: 768)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2291, file: !2292, line: 213, baseType: !895, size: 32, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2291, file: !2292, line: 214, baseType: !904, size: 32, offset: 864)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2291, file: !2292, line: 215, baseType: !2317, size: 32, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2292, line: 31, baseType: !2318)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !326, line: 110, baseType: !148)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2291, file: !2292, line: 216, baseType: !363, size: 16, offset: 928)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2291, file: !2292, line: 217, baseType: !363, size: 16, offset: 944)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2291, file: !2292, line: 221, baseType: !1255, size: 16, offset: 960)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2291, file: !2292, line: 228, baseType: !159, size: 64, offset: 1024)
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !2292, line: 245, baseType: !2324, size: 320, offset: 1088)
!2324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2291, file: !2292, line: 245, size: 320, elements: !2325)
!2325 = !{!2326, !2353}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2324, file: !2292, line: 246, baseType: !2327, size: 320)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2292, line: 114, size: 320, elements: !2328)
!2328 = !{!2329, !2330, !2342, !2345, !2352}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2327, file: !2292, line: 116, baseType: !159, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !2327, file: !2292, line: 117, baseType: !2331, size: 64, offset: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2327, file: !2292, line: 117, size: 64, elements: !2332)
!2332 = !{!2333, !2341}
!2333 = !DIDerivedType(tag: DW_TAG_member, scope: !2331, file: !2292, line: 118, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2331, file: !2292, line: 118, size: 64, elements: !2335)
!2335 = !{!2336, !2337}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2334, file: !2292, line: 120, baseType: !361, size: 16)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2334, file: !2292, line: 121, baseType: !2338, size: 48, offset: 16)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !2339)
!2339 = !{!2340}
!2340 = !DISubrange(count: 6)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2331, file: !2292, line: 127, baseType: !159, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2327, file: !2292, line: 129, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2292, line: 102, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2327, file: !2292, line: 130, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2292, line: 108, size: 192, elements: !2348)
!2348 = !{!2349, !2350, !2351}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2347, file: !2292, line: 109, baseType: !1337, size: 128, align: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2347, file: !2292, line: 110, baseType: !1895, size: 32, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2347, file: !2292, line: 111, baseType: !388, size: 8, offset: 160)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2327, file: !2292, line: 131, baseType: !162, size: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, scope: !2324, file: !2292, line: 247, baseType: !2354, size: 320)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !2292, line: 247, size: 320, elements: !2355)
!2355 = !{!2356, !2357, !2358, !2359, !2360}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2354, file: !2292, line: 248, baseType: !159, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2354, file: !2292, line: 249, baseType: !159, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2354, file: !2292, line: 250, baseType: !2343, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2354, file: !2292, line: 251, baseType: !2346, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2354, file: !2292, line: 252, baseType: !810, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !2292, line: 260, baseType: !2362, size: 256, offset: 1408)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2291, file: !2292, line: 260, size: 256, elements: !2363)
!2363 = !{!2364, !2370}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2362, file: !2292, line: 261, baseType: !2365, size: 256)
!2365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2292, line: 134, size: 256, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2365, file: !2292, line: 135, baseType: !147, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2365, file: !2292, line: 136, baseType: !2369, size: 256)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !711)
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2362, file: !2292, line: 262, baseType: !2371, size: 256)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2362, file: !2292, line: 262, size: 256, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2371, file: !2292, line: 264, baseType: !371, size: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2371, file: !2292, line: 265, baseType: !2375, size: 128, offset: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2376, line: 22, size: 128, elements: !2377)
!2376 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2377 = !{!2378, !2381}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2375, file: !2376, line: 23, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2376, line: 23, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2375, file: !2376, line: 24, baseType: !159, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2291, file: !2292, line: 280, baseType: !2383, size: 64, offset: 1664)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2292, line: 176, size: 192, elements: !2385)
!2385 = !{!2386, !2395, !2396}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2384, file: !2292, line: 177, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2292, line: 171, baseType: !2388)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!114, !2290, !2391, !2393, !2290}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2344)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2384, file: !2292, line: 178, baseType: !2290, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2384, file: !2292, line: 179, baseType: !2343, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2265, file: !2266, line: 130, baseType: !2290, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2265, file: !2266, line: 131, baseType: !2290, size: 64, offset: 896)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2265, file: !2266, line: 132, baseType: !2290, size: 64, offset: 960)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2265, file: !2266, line: 135, baseType: !147, size: 64, offset: 1024)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2265, file: !2266, line: 137, baseType: !2402, size: 64, offset: 1088)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2404, line: 14, size: 1088, elements: !2405)
!2404 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2405 = !{!2406, !2407, !2416, !2417, !2418, !2419, !2420, !2421}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2403, file: !2404, line: 15, baseType: !1895, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2403, file: !2404, line: 17, baseType: !2408, size: 320, offset: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2409, line: 22, size: 320, elements: !2410)
!2409 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2408, file: !2409, line: 23, baseType: !334, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2408, file: !2409, line: 24, baseType: !330, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2408, file: !2409, line: 26, baseType: !371, size: 128, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2408, file: !2409, line: 28, baseType: !2415, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2403, file: !2404, line: 19, baseType: !159, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2403, file: !2404, line: 20, baseType: !323, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2403, file: !2404, line: 23, baseType: !1361, size: 128, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2403, file: !2404, line: 24, baseType: !895, size: 32, offset: 640)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2403, file: !2404, line: 29, baseType: !323, size: 64, offset: 704)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2403, file: !2404, line: 36, baseType: !2422, size: 320, offset: 768)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2423, line: 15, size: 320, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2422, file: !2423, line: 16, baseType: !334, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2422, file: !2423, line: 18, baseType: !114, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2422, file: !2423, line: 19, baseType: !114, size: 32, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2422, file: !2423, line: 20, baseType: !114, size: 32, offset: 96)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2422, file: !2423, line: 21, baseType: !114, size: 32, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2422, file: !2423, line: 22, baseType: !159, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2422, file: !2423, line: 23, baseType: !159, size: 64, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2265, file: !2266, line: 138, baseType: !2433, size: 64, offset: 1152)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !896, line: 18, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2265, file: !2266, line: 139, baseType: !2436, size: 64, offset: 1216)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2438, line: 16, flags: DIFlagFwdDecl)
!2438 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2265, file: !2266, line: 140, baseType: !2440, size: 64, offset: 1280)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2266, line: 25, size: 64, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2441, file: !2266, line: 26, baseType: !347, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2441, file: !2266, line: 27, baseType: !114, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2441, file: !2266, line: 28, baseType: !2446, offset: 64)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, elements: !2256)
!2447 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !2266, line: 142, baseType: !2448, size: 128, offset: 1344)
!2448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2265, file: !2266, line: 142, size: 128, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2448, file: !2266, line: 143, baseType: !114, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2448, file: !2266, line: 144, baseType: !1337, size: 128, align: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !2197, file: !19, line: 1013, baseType: !2453, size: 256, offset: 960)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2453, file: !19, line: 971, baseType: !159, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2453, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2453, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2453, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2453, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2453, file: !19, line: 976, baseType: !1043, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !2197, file: !19, line: 1014, baseType: !1687, size: 128, offset: 1216)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !2197, file: !19, line: 1015, baseType: !889, size: 64, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !2197, file: !19, line: 1016, baseType: !2464, size: 64, offset: 1408)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2466)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !2467)
!2467 = !{!2468, !2469, !2473, !2478, !2482, !2566, !2567, !2573, !2586, !2594, !2598, !2599, !2890, !2891, !2895, !2900, !2901, !2905, !2909, !2915, !2916, !2920, !2921, !2927, !2931, !2935, !2941, !2945, !2949, !2953, !2957, !2958, !2964}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2466, file: !19, line: 1915, baseType: !1071, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2466, file: !19, line: 1916, baseType: !2470, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!1043, !2196, !1043, !114}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2466, file: !19, line: 1917, baseType: !2474, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!842, !2196, !810, !857, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2466, file: !19, line: 1918, baseType: !2479, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!842, !2196, !162, !857, !2477}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2466, file: !19, line: 1919, baseType: !2483, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!842, !2486, !2508}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !2488)
!2488 = !{!2489, !2490, !2491, !2495, !2496, !2497, !2498}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2487, file: !19, line: 374, baseType: !2196, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2487, file: !19, line: 375, baseType: !1043, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2487, file: !19, line: 376, baseType: !2492, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !2486, !846}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2487, file: !19, line: 377, baseType: !147, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2487, file: !19, line: 378, baseType: !114, size: 32, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2487, file: !19, line: 379, baseType: !361, size: 16, offset: 288)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2487, file: !19, line: 380, baseType: !2499, size: 64, offset: 320)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2487, file: !19, line: 380, size: 64, elements: !2500)
!2500 = !{!2501, !2504}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2499, file: !19, line: 386, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !19, line: 386, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2499, file: !19, line: 395, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!842, !147}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2510, line: 41, size: 320, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2522, !2561}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2509, file: !2510, line: 42, baseType: !355, size: 8)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2509, file: !2510, line: 43, baseType: !388, size: 8, offset: 8)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2509, file: !2510, line: 44, baseType: !388, size: 8, offset: 16)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2509, file: !2510, line: 45, baseType: !388, size: 8, offset: 24)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2509, file: !2510, line: 46, baseType: !388, size: 8, offset: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, scope: !2509, file: !2510, line: 47, baseType: !2518, size: 64, offset: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2509, file: !2510, line: 47, size: 64, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2518, file: !2510, line: 48, baseType: !857, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2518, file: !2510, line: 49, baseType: !114, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, scope: !2509, file: !2510, line: 61, baseType: !2523, size: 128, offset: 128)
!2523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2509, file: !2510, line: 61, size: 128, elements: !2524)
!2524 = !{!2525, !2531}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2523, file: !2510, line: 67, baseType: !2526, size: 128)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2527, line: 17, size: 128, elements: !2528)
!2527 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2528 = !{!2529, !2530}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2526, file: !2527, line: 19, baseType: !147, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2526, file: !2527, line: 20, baseType: !858, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, scope: !2523, file: !2510, line: 68, baseType: !2532, size: 128)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2523, file: !2510, line: 68, size: 128, elements: !2533)
!2533 = !{!2534, !2560}
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2532, file: !2510, line: 69, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2532, file: !2510, line: 69, size: 64, elements: !2536)
!2536 = !{!2537, !2540, !2547, !2551, !2559}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2535, file: !2510, line: 71, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2526)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2535, file: !2510, line: 72, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2543)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2510, line: 17, size: 128, elements: !2544)
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2543, file: !2510, line: 18, baseType: !147, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2543, file: !2510, line: 19, baseType: !857, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2535, file: !2510, line: 73, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2550)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2510, line: 73, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2535, file: !2510, line: 74, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2554, line: 296, size: 128, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2555 = !{!2556, !2557, !2558}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2553, file: !2554, line: 297, baseType: !774, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2553, file: !2554, line: 299, baseType: !1627, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2553, file: !2554, line: 300, baseType: !147, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2535, file: !2510, line: 75, baseType: !147, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2532, file: !2510, line: 77, baseType: !857, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, scope: !2509, file: !2510, line: 80, baseType: !2562, size: 64, offset: 256)
!2562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2509, file: !2510, line: 80, size: 64, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2562, file: !2510, line: 81, baseType: !159, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2562, file: !2510, line: 82, baseType: !1043, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2466, file: !19, line: 1920, baseType: !2483, size: 64, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2466, file: !19, line: 1921, baseType: !2568, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!114, !2486, !2571, !7}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2466, file: !19, line: 1923, baseType: !2574, size: 64, offset: 448)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!114, !2196, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !2579)
!2579 = !{!2580, !2585}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2578, file: !19, line: 1859, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !2582)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!388, !2577, !162, !114, !1043, !701, !7}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2578, file: !19, line: 1860, baseType: !1043, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2466, file: !19, line: 1924, baseType: !2587, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!2590, !2196, !2592}
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2591, line: 59, baseType: !7)
!2591 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1057, line: 31, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2466, file: !19, line: 1925, baseType: !2595, size: 64, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!846, !2196, !7, !159}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2466, file: !19, line: 1926, baseType: !2595, size: 64, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2466, file: !19, line: 1927, baseType: !2600, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!114, !2196, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !43, line: 625, size: 1344, elements: !2605)
!2605 = !{!2606, !2615, !2616, !2624, !2631, !2632, !2637, !2638, !2643, !2644, !2647, !2883, !2884, !2885, !2886, !2887, !2888}
!2606 = !DIDerivedType(tag: DW_TAG_member, scope: !2604, file: !43, line: 628, baseType: !2607, size: 128)
!2607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2604, file: !43, line: 628, size: 128, elements: !2608)
!2608 = !{!2609, !2614}
!2609 = !DIDerivedType(tag: DW_TAG_member, scope: !2607, file: !43, line: 629, baseType: !2610, size: 128)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2607, file: !43, line: 629, size: 128, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2610, file: !43, line: 631, baseType: !159, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2610, file: !43, line: 632, baseType: !159, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2607, file: !43, line: 635, baseType: !1337, size: 128, align: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2604, file: !43, line: 639, baseType: !2169, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2604, file: !43, line: 640, baseType: !2617, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2618, line: 297, baseType: !2619)
!2618 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2618, line: 297, size: 64, elements: !2620)
!2620 = !{!2621}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2619, file: !2618, line: 297, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2623, line: 19, baseType: !159)
!2623 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2624 = !DIDerivedType(tag: DW_TAG_member, scope: !2604, file: !43, line: 646, baseType: !2625, size: 64, offset: 256)
!2625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2604, file: !43, line: 646, size: 64, elements: !2626)
!2626 = !{!2627, !2630}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2625, file: !43, line: 647, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2629)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !43, line: 542, baseType: !159)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2625, file: !43, line: 648, baseType: !2629, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2604, file: !43, line: 666, baseType: !114, size: 32, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2604, file: !43, line: 667, baseType: !2633, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !43, line: 579, size: 320, elements: !2635)
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2634, file: !43, line: 580, baseType: !1775, size: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2604, file: !43, line: 670, baseType: !388, size: 8, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2604, file: !43, line: 681, baseType: !2639, size: 256, offset: 512)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !43, line: 678, size: 256, elements: !2640)
!2640 = !{!2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2639, file: !43, line: 679, baseType: !1229, size: 192, align: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2639, file: !43, line: 680, baseType: !159, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2604, file: !43, line: 689, baseType: !371, size: 128, offset: 768)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2604, file: !43, line: 691, baseType: !2645, size: 64, offset: 896)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !43, line: 691, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2604, file: !43, line: 694, baseType: !2648, size: 64, offset: 960)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2650)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2651, line: 563, size: 1024, elements: !2652)
!2651 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2652 = !{!2653, !2657, !2658, !2662, !2666, !2670, !2847, !2851, !2855, !2859, !2860, !2861, !2865, !2869, !2875, !2879}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2650, file: !2651, line: 564, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !2603}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2650, file: !2651, line: 569, baseType: !2654, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2650, file: !2651, line: 571, baseType: !2659, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!114, !2603, !159}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2650, file: !2651, line: 572, baseType: !2663, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!114, !2603}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2650, file: !2651, line: 578, baseType: !2667, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!114, !2603, !159, !159, !159}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2650, file: !2651, line: 580, baseType: !2671, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !43, line: 1184, baseType: !7)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2651, line: 512, size: 896, elements: !2677)
!2677 = !{!2678, !2686, !2687, !2694, !2701, !2711, !2840, !2841, !2843, !2845}
!2678 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !2651, line: 513, baseType: !2679, size: 320)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2676, file: !2651, line: 513, size: 320, elements: !2680)
!2680 = !{!2681, !2682, !2683, !2684, !2685}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2679, file: !2651, line: 514, baseType: !2603, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2679, file: !2651, line: 515, baseType: !1627, size: 32, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2679, file: !2651, line: 516, baseType: !159, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2679, file: !2651, line: 517, baseType: !159, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2679, file: !2651, line: 518, baseType: !159, size: 64, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2676, file: !2651, line: 520, baseType: !42, size: 32, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2676, file: !2651, line: 522, baseType: !2688, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2623, line: 22, baseType: !2690)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2623, line: 22, size: 64, elements: !2691)
!2691 = !{!2692}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2690, file: !2623, line: 22, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2623, line: 15, baseType: !159)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2676, file: !2651, line: 524, baseType: !2695, size: 64, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2618, line: 372, baseType: !2697)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2618, line: 372, size: 64, elements: !2698)
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2697, file: !2618, line: 372, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2623, line: 16, baseType: !159)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !2676, file: !2651, line: 527, baseType: !2702, size: 64, offset: 512)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2676, file: !2651, line: 527, size: 64, elements: !2703)
!2703 = !{!2704, !2710}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2702, file: !2651, line: 528, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2623, line: 21, baseType: !2706)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2623, line: 21, size: 64, elements: !2707)
!2707 = !{!2708}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2706, file: !2623, line: 21, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2623, line: 14, baseType: !159)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2702, file: !2651, line: 529, baseType: !2689, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2676, file: !2651, line: 534, baseType: !2712, size: 64, offset: 576)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !43, line: 74, size: 512, align: 128, elements: !2714)
!2714 = !{!2715, !2716, !2834, !2839}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2713, file: !43, line: 75, baseType: !159, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, scope: !2713, file: !43, line: 83, baseType: !2717, size: 320, offset: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2713, file: !43, line: 83, size: 320, elements: !2718)
!2718 = !{!2719, !2740, !2754, !2758, !2833}
!2719 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !43, line: 84, baseType: !2720, size: 320)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !43, line: 84, size: 320, elements: !2721)
!2721 = !{!2722, !2733, !2734, !2739}
!2722 = !DIDerivedType(tag: DW_TAG_member, scope: !2720, file: !43, line: 90, baseType: !2723, size: 128)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2720, file: !43, line: 90, size: 128, elements: !2724)
!2724 = !{!2725, !2726, !2731, !2732}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2723, file: !43, line: 91, baseType: !371, size: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, scope: !2723, file: !43, line: 94, baseType: !2727, size: 128)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2723, file: !43, line: 94, size: 128, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2727, file: !43, line: 96, baseType: !147, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2727, file: !43, line: 98, baseType: !7, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2723, file: !43, line: 102, baseType: !371, size: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2723, file: !43, line: 103, baseType: !371, size: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2720, file: !43, line: 106, baseType: !885, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !2720, file: !43, line: 107, baseType: !2735, size: 64, offset: 192)
!2735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2720, file: !43, line: 107, size: 64, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2735, file: !43, line: 108, baseType: !159, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2735, file: !43, line: 109, baseType: !159, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2720, file: !43, line: 117, baseType: !159, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !43, line: 119, baseType: !2741, size: 320)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !43, line: 119, size: 320, elements: !2742)
!2742 = !{!2743, !2744, !2747, !2748, !2749}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2741, file: !43, line: 124, baseType: !159, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2741, file: !43, line: 125, baseType: !2745, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !43, line: 125, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2741, file: !43, line: 126, baseType: !159, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2741, file: !43, line: 127, baseType: !159, size: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2741, file: !43, line: 128, baseType: !2750, size: 64, offset: 256)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2741, file: !43, line: 128, size: 64, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2750, file: !43, line: 133, baseType: !159, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2750, file: !43, line: 138, baseType: !323, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !43, line: 141, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !43, line: 141, size: 64, elements: !2756)
!2756 = !{!2757}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2755, file: !43, line: 142, baseType: !159, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !43, line: 144, baseType: !2759, size: 128)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2717, file: !43, line: 144, size: 128, elements: !2760)
!2760 = !{!2761, !2832}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2759, file: !43, line: 146, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !59, line: 126, size: 1216, elements: !2764)
!2764 = !{!2765, !2775, !2796, !2797, !2798, !2799, !2800, !2814, !2815, !2816}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2763, file: !59, line: 127, baseType: !2766, size: 384)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !59, line: 21, size: 384, elements: !2767)
!2767 = !{!2768, !2769, !2771, !2772, !2773, !2774}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2766, file: !59, line: 22, baseType: !159, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2766, file: !59, line: 23, baseType: !2770, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2766, file: !59, line: 24, baseType: !2770, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2766, file: !59, line: 25, baseType: !159, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2766, file: !59, line: 26, baseType: !159, size: 64, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2766, file: !59, line: 27, baseType: !159, size: 64, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2763, file: !59, line: 128, baseType: !2776, size: 128, offset: 384)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2777, line: 105, size: 128, elements: !2778)
!2777 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2776, file: !2777, line: 110, baseType: !159, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2776, file: !2777, line: 118, baseType: !2781, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2777, line: 95, size: 448, elements: !2783)
!2783 = !{!2784, !2785, !2791, !2792, !2793, !2794, !2795}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2782, file: !2777, line: 96, baseType: !323, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2782, file: !2777, line: 97, baseType: !2786, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2777, line: 60, baseType: !2788)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2782, file: !2777, line: 98, baseType: !2786, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2782, file: !2777, line: 99, baseType: !388, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2782, file: !2777, line: 100, baseType: !388, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2782, file: !2777, line: 101, baseType: !1337, size: 128, align: 64, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2782, file: !2777, line: 102, baseType: !2790, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2763, file: !59, line: 129, baseType: !1091, size: 256, offset: 512)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2763, file: !59, line: 130, baseType: !58, size: 32, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2763, file: !59, line: 131, baseType: !7, size: 32, offset: 800)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2763, file: !59, line: 132, baseType: !159, size: 64, offset: 832)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2763, file: !59, line: 133, baseType: !2801, size: 64, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !59, line: 77, size: 192, elements: !2804)
!2804 = !{!2805, !2809, !2810}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2803, file: !59, line: 83, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !2712}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2803, file: !59, line: 89, baseType: !2671, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2803, file: !59, line: 100, baseType: !2811, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!114, !2762, !159, !159, !114}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2763, file: !59, line: 134, baseType: !147, size: 64, offset: 960)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2763, file: !59, line: 135, baseType: !114, size: 32, offset: 1024)
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !2763, file: !59, line: 136, baseType: !2817, size: 128, offset: 1088)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2763, file: !59, line: 136, size: 128, elements: !2818)
!2818 = !{!2819, !2825}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2817, file: !59, line: 137, baseType: !2820, size: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2821, line: 6, size: 128, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2820, file: !2821, line: 7, baseType: !701, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2820, file: !2821, line: 8, baseType: !701, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !2817, file: !59, line: 138, baseType: !2826)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !59, line: 138, elements: !2827)
!2827 = !{!2828, !2830}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2826, file: !59, line: 138, baseType: !2829)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2826, file: !59, line: 138, elements: !588)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2826, file: !59, line: 138, baseType: !2831)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2820, elements: !2256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2759, file: !43, line: 147, baseType: !147, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2717, file: !43, line: 161, baseType: !1337, size: 128, align: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !2713, file: !43, line: 164, baseType: !2835, size: 32, offset: 384)
!2835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2713, file: !43, line: 164, size: 32, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2835, file: !43, line: 169, baseType: !347, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2835, file: !43, line: 177, baseType: !7, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2713, file: !43, line: 181, baseType: !347, size: 32, offset: 416)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2676, file: !2651, line: 535, baseType: !2712, size: 64, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2676, file: !2651, line: 541, baseType: !2842, size: 64, offset: 704)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2676, file: !2651, line: 545, baseType: !2844, size: 64, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2676, file: !2651, line: 549, baseType: !2846, size: 64, offset: 832)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2618, line: 520, baseType: !2712)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2650, file: !2651, line: 581, baseType: !2848, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!2674, !2675, !7}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2650, file: !2651, line: 582, baseType: !2852, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!2674, !2675, !159, !159}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2650, file: !2651, line: 584, baseType: !2856, size: 64, offset: 512)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!159, !2603}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2650, file: !2651, line: 588, baseType: !2671, size: 64, offset: 576)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2650, file: !2651, line: 591, baseType: !2671, size: 64, offset: 640)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2650, file: !2651, line: 597, baseType: !2862, size: 64, offset: 704)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!114, !2603, !159, !147, !114, !114}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2650, file: !2651, line: 603, baseType: !2866, size: 64, offset: 768)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!162, !2603}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2650, file: !2651, line: 613, baseType: !2870, size: 64, offset: 832)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!114, !2603, !2873}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1557, line: 54, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2650, file: !2651, line: 625, baseType: !2876, size: 64, offset: 896)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!2873, !2603, !159}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2650, file: !2651, line: 633, baseType: !2880, size: 64, offset: 960)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!2712, !2603, !159}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2604, file: !43, line: 697, baseType: !159, size: 64, offset: 1024)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2604, file: !43, line: 699, baseType: !2196, size: 64, offset: 1088)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2604, file: !43, line: 700, baseType: !147, size: 64, offset: 1152)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2604, file: !43, line: 711, baseType: !323, size: 64, offset: 1216)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2604, file: !43, line: 717, baseType: !2873, size: 64, offset: 1280)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2604, file: !43, line: 722, baseType: !2889, offset: 1344)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !43, line: 570, elements: !588)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2466, file: !19, line: 1928, baseType: !159, size: 64, offset: 768)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2466, file: !19, line: 1929, baseType: !2892, size: 64, offset: 832)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!114, !889, !2196}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2466, file: !19, line: 1930, baseType: !2896, size: 64, offset: 896)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!114, !2196, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !147)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2466, file: !19, line: 1931, baseType: !2892, size: 64, offset: 960)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2466, file: !19, line: 1932, baseType: !2902, size: 64, offset: 1024)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!114, !2196, !1043, !1043, !114}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2466, file: !19, line: 1933, baseType: !2906, size: 64, offset: 1088)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!114, !114, !2196, !114}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2466, file: !19, line: 1934, baseType: !2910, size: 64, offset: 1152)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!114, !2196, !114, !2913}
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2466, file: !19, line: 1935, baseType: !2193, size: 64, offset: 1216)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2466, file: !19, line: 1936, baseType: !2917, size: 64, offset: 1280)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!114, !114}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2466, file: !19, line: 1937, baseType: !2910, size: 64, offset: 1344)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2466, file: !19, line: 1938, baseType: !2922, size: 64, offset: 1408)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!842, !2925, !2196, !2477, !857, !7}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1557, line: 59, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2466, file: !19, line: 1939, baseType: !2928, size: 64, offset: 1472)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!842, !2196, !2477, !2925, !857, !7}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2466, file: !19, line: 1940, baseType: !2932, size: 64, offset: 1536)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2196}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2466, file: !19, line: 1941, baseType: !2936, size: 64, offset: 1600)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!114, !2196, !114, !2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2466, file: !19, line: 1942, baseType: !2942, size: 64, offset: 1664)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!846, !2196, !114, !1043, !1043}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2466, file: !19, line: 1944, baseType: !2946, size: 64, offset: 1728)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !1555, !2196}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2466, file: !19, line: 1948, baseType: !2950, size: 64, offset: 1792)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!842, !2196, !1043, !2196, !1043, !857, !7}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2466, file: !19, line: 1950, baseType: !2954, size: 64, offset: 1856)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!1043, !2196, !1043, !2196, !1043, !1043, !7}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2466, file: !19, line: 1953, baseType: !2902, size: 64, offset: 1920)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2466, file: !19, line: 1954, baseType: !2959, size: 64, offset: 1984)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!114, !2962, !7}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2466, file: !19, line: 1955, baseType: !2965, size: 64, offset: 2048)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!114, !2962, !2571, !7}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !2197, file: !19, line: 1018, baseType: !701, size: 64, offset: 1472)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !2197, file: !19, line: 1020, baseType: !147, size: 64, offset: 1536)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2197, file: !19, line: 1023, baseType: !147, size: 64, offset: 1600)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !2197, file: !19, line: 1027, baseType: !2972, size: 64, offset: 1664)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2197, file: !19, line: 1029, baseType: !885, size: 64, offset: 1728)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !2197, file: !19, line: 1030, baseType: !2975, size: 32, offset: 1792)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2976, line: 8, baseType: !148)
!2976 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !2197, file: !19, line: 1031, baseType: !2975, size: 32, offset: 1824)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2173, file: !43, line: 756, baseType: !159, size: 64, offset: 704)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2173, file: !43, line: 757, baseType: !159, size: 64, offset: 768)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2173, file: !43, line: 760, baseType: !159, size: 64, offset: 832)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2173, file: !43, line: 761, baseType: !159, size: 64, offset: 896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2173, file: !43, line: 763, baseType: !159, size: 64, offset: 960)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2173, file: !43, line: 764, baseType: !2984, size: 64, offset: 1024)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2618, line: 299, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2618, line: 299, size: 64, elements: !2987)
!2987 = !{!2988}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2986, file: !2618, line: 299, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2623, line: 18, baseType: !159)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2173, file: !43, line: 773, baseType: !347, size: 32, offset: 1088)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2173, file: !43, line: 785, baseType: !347, size: 32, offset: 1120)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2173, file: !43, line: 795, baseType: !2993, size: 64, offset: 1152)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !43, line: 726, size: 128, elements: !2995)
!2995 = !{!2996, !2997}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2994, file: !43, line: 727, baseType: !701, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2994, file: !43, line: 728, baseType: !114, size: 32, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2173, file: !43, line: 801, baseType: !159, size: 64, offset: 1216)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2173, file: !43, line: 804, baseType: !323, size: 64, offset: 1280)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2173, file: !43, line: 806, baseType: !114, size: 32, offset: 1344)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2173, file: !43, line: 808, baseType: !774, size: 32, offset: 1376)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2173, file: !43, line: 823, baseType: !1775, size: 320, offset: 1408)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2173, file: !43, line: 825, baseType: !371, size: 128, offset: 1728)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2173, file: !43, line: 845, baseType: !114, size: 32, offset: 1856)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2173, file: !43, line: 849, baseType: !159, size: 64, offset: 1920)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2173, file: !43, line: 850, baseType: !159, size: 64, offset: 1984)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2173, file: !43, line: 852, baseType: !159, size: 64, offset: 2048)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2173, file: !43, line: 853, baseType: !159, size: 64, offset: 2112)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2173, file: !43, line: 854, baseType: !325, size: 64, offset: 2176)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2173, file: !43, line: 855, baseType: !159, size: 64, offset: 2240)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2173, file: !43, line: 856, baseType: !159, size: 64, offset: 2304)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2173, file: !43, line: 857, baseType: !159, size: 64, offset: 2368)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2173, file: !43, line: 858, baseType: !159, size: 64, offset: 2432)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2173, file: !43, line: 865, baseType: !935, size: 32, offset: 2496)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2173, file: !43, line: 867, baseType: !774, size: 32, offset: 2528)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2173, file: !43, line: 869, baseType: !159, size: 64, offset: 2560)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2173, file: !43, line: 869, baseType: !159, size: 64, offset: 2624)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2173, file: !43, line: 869, baseType: !159, size: 64, offset: 2688)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2173, file: !43, line: 869, baseType: !159, size: 64, offset: 2752)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2173, file: !43, line: 870, baseType: !159, size: 64, offset: 2816)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2173, file: !43, line: 870, baseType: !159, size: 64, offset: 2880)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2173, file: !43, line: 870, baseType: !159, size: 64, offset: 2944)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2173, file: !43, line: 871, baseType: !159, size: 64, offset: 3008)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2173, file: !43, line: 871, baseType: !159, size: 64, offset: 3072)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2173, file: !43, line: 871, baseType: !159, size: 64, offset: 3136)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2173, file: !43, line: 871, baseType: !159, size: 64, offset: 3200)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2173, file: !43, line: 873, baseType: !3028, size: 3328, offset: 3264)
!3028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 3328, elements: !3029)
!3029 = !{!3030}
!3030 = !DISubrange(count: 52)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2173, file: !43, line: 875, baseType: !3032, size: 1280, offset: 6592)
!3032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2408, size: 1280, elements: !711)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2173, file: !43, line: 877, baseType: !3034, size: 64, offset: 7872)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !43, line: 877, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2173, file: !43, line: 880, baseType: !3037, size: 1088, offset: 7936)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3038, line: 72, baseType: !3039)
!3038 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3038, line: 23, size: 1088, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3048, !3049, !3050, !3051, !3078, !3079, !3080}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3039, file: !3038, line: 28, baseType: !701, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3039, file: !3038, line: 38, baseType: !325, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3039, file: !3038, line: 40, baseType: !159, size: 64, offset: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3039, file: !3038, line: 43, baseType: !1775, size: 320, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3039, file: !3038, line: 44, baseType: !3046, size: 64, offset: 512)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3038, line: 44, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3039, file: !3038, line: 48, baseType: !159, size: 64, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3039, file: !3038, line: 59, baseType: !319, size: 256, offset: 640)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3039, file: !3038, line: 60, baseType: !147, size: 64, offset: 896)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3039, file: !3038, line: 61, baseType: !3052, size: 64, offset: 960)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3054)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3055, line: 13, size: 1216, elements: !3056)
!3055 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062, !3063, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3054, file: !3055, line: 14, baseType: !147, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3054, file: !3055, line: 15, baseType: !159, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3054, file: !3055, line: 17, baseType: !159, size: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3054, file: !3055, line: 17, baseType: !159, size: 64, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3054, file: !3055, line: 18, baseType: !159, size: 64, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3054, file: !3055, line: 18, baseType: !159, size: 64, offset: 320)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3054, file: !3055, line: 19, baseType: !3064, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3054, file: !3055, line: 21, baseType: !846, size: 64, offset: 448)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3054, file: !3055, line: 23, baseType: !846, size: 64, offset: 512)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3054, file: !3055, line: 24, baseType: !846, size: 64, offset: 576)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3054, file: !3055, line: 25, baseType: !846, size: 64, offset: 640)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3054, file: !3055, line: 26, baseType: !846, size: 64, offset: 704)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3054, file: !3055, line: 27, baseType: !846, size: 64, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3054, file: !3055, line: 28, baseType: !846, size: 64, offset: 832)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3054, file: !3055, line: 29, baseType: !846, size: 64, offset: 896)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3054, file: !3055, line: 30, baseType: !846, size: 64, offset: 960)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3054, file: !3055, line: 31, baseType: !846, size: 64, offset: 1024)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3054, file: !3055, line: 32, baseType: !846, size: 64, offset: 1088)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3054, file: !3055, line: 33, baseType: !846, size: 64, offset: 1152)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3039, file: !3038, line: 63, baseType: !347, size: 32, offset: 1024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3039, file: !3038, line: 69, baseType: !361, size: 16, offset: 1056)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3039, file: !3038, line: 70, baseType: !1253, size: 16, offset: 1072)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !43, line: 882, baseType: !159, size: 64, offset: 9024)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2173, file: !43, line: 885, baseType: !774, size: 32, offset: 9088)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2173, file: !43, line: 886, baseType: !3084, size: 64, offset: 9152)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !43, line: 732, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2173, file: !43, line: 901, baseType: !2433, size: 64, offset: 9216)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2173, file: !43, line: 904, baseType: !2196, size: 64, offset: 9280)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2173, file: !43, line: 906, baseType: !3089, size: 64, offset: 9344)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !43, line: 906, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2173, file: !43, line: 930, baseType: !347, size: 32, offset: 9408)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2173, file: !43, line: 933, baseType: !347, size: 32, offset: 9440)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2173, file: !43, line: 935, baseType: !3094, size: 64, offset: 9472)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !73, line: 103, size: 64, elements: !3095)
!3095 = !{!3096}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3094, file: !73, line: 104, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !73, line: 101, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2173, file: !43, line: 940, baseType: !323, size: 64, offset: 9536)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2173, file: !43, line: 942, baseType: !1375, size: 256, offset: 9600)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2170, file: !43, line: 986, baseType: !3102, offset: 10240)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !2256)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1882, file: !1557, line: 882, baseType: !2169, size: 64, offset: 9792)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1882, file: !1557, line: 884, baseType: !114, size: 32, offset: 9856)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1882, file: !1557, line: 885, baseType: !114, size: 32, offset: 9888)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1882, file: !1557, line: 886, baseType: !114, size: 32, offset: 9920)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1882, file: !1557, line: 888, baseType: !114, size: 32, offset: 9952)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1882, file: !1557, line: 890, baseType: !159, size: 64, offset: 9984)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1882, file: !1557, line: 893, baseType: !7, size: 32, offset: 10048)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1882, file: !1557, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1882, file: !1557, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1882, file: !1557, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1882, file: !1557, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1882, file: !1557, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1882, file: !1557, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1882, file: !1557, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1882, file: !1557, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1882, file: !1557, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1882, file: !1557, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1882, file: !1557, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1882, file: !1557, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1882, file: !1557, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1882, file: !1557, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1882, file: !1557, line: 969, baseType: !159, size: 64, offset: 10176)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1882, file: !1557, line: 971, baseType: !3126, size: 448, offset: 10240)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 448, elements: !3127)
!3127 = !{!3128, !3129, !3134}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3126, file: !67, line: 26, baseType: !159, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3126, file: !67, line: 27, baseType: !3130, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!846, !3133}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !67, line: 28, baseType: !3135, size: 320, offset: 128)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !67, line: 28, size: 320, elements: !3136)
!3136 = !{!3137, !3146, !3171}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3135, file: !67, line: 37, baseType: !3138, size: 320)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !67, line: 30, size: 320, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3138, file: !67, line: 31, baseType: !735, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3138, file: !67, line: 32, baseType: !148, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3138, file: !67, line: 33, baseType: !148, size: 32, offset: 96)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3138, file: !67, line: 34, baseType: !148, size: 32, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3138, file: !67, line: 35, baseType: !701, size: 64, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3138, file: !67, line: 36, baseType: !735, size: 64, offset: 256)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3135, file: !67, line: 47, baseType: !3147, size: 192)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !67, line: 39, size: 192, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3170}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3147, file: !67, line: 40, baseType: !2047, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3147, file: !67, line: 41, baseType: !66, size: 32, offset: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, scope: !3147, file: !67, line: 42, baseType: !3152, size: 64, offset: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3147, file: !67, line: 42, size: 64, elements: !3153)
!3153 = !{!3154, !3162}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3152, file: !67, line: 43, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3157, line: 7, size: 128, elements: !3158)
!3157 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3158 = !{!3159, !3161}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3156, file: !3157, line: 8, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !844, line: 93, baseType: !332)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3156, file: !3157, line: 9, baseType: !332, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3152, file: !67, line: 44, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3165, line: 7, size: 64, elements: !3166)
!3165 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3166 = !{!3167, !3169}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3164, file: !3165, line: 8, baseType: !3168, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3165, line: 5, baseType: !1137)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3164, file: !3165, line: 9, baseType: !1137, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3147, file: !67, line: 46, baseType: !701, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3135, file: !67, line: 55, baseType: !3172, size: 256)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !67, line: 49, size: 256, elements: !3173)
!3173 = !{!3174, !3177, !3178, !3179, !3180}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3172, file: !67, line: 50, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3172, file: !67, line: 51, baseType: !114, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3172, file: !67, line: 52, baseType: !114, size: 32, offset: 96)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3172, file: !67, line: 53, baseType: !159, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3172, file: !67, line: 54, baseType: !159, size: 64, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1882, file: !1557, line: 973, baseType: !3182, size: 32, offset: 10688)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !326, line: 27, baseType: !3183)
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !844, line: 28, baseType: !114)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1882, file: !1557, line: 974, baseType: !3182, size: 32, offset: 10720)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1882, file: !1557, line: 978, baseType: !159, size: 64, offset: 10752)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1882, file: !1557, line: 987, baseType: !1881, size: 64, offset: 10816)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1882, file: !1557, line: 990, baseType: !1881, size: 64, offset: 10880)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1882, file: !1557, line: 995, baseType: !371, size: 128, offset: 10944)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1882, file: !1557, line: 996, baseType: !371, size: 128, offset: 11072)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1882, file: !1557, line: 997, baseType: !1881, size: 64, offset: 11200)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1882, file: !1557, line: 1005, baseType: !371, size: 128, offset: 11264)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1882, file: !1557, line: 1006, baseType: !371, size: 128, offset: 11392)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1882, file: !1557, line: 1009, baseType: !2237, size: 64, offset: 11520)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1882, file: !1557, line: 1010, baseType: !3195, size: 512, offset: 11584)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 512, elements: !711)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1882, file: !1557, line: 1011, baseType: !371, size: 128, offset: 12096)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1882, file: !1557, line: 1012, baseType: !371, size: 128, offset: 12224)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1882, file: !1557, line: 1014, baseType: !1090, size: 64, offset: 12352)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1882, file: !1557, line: 1017, baseType: !1246, size: 64, offset: 12416)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1882, file: !1557, line: 1020, baseType: !1246, size: 64, offset: 12480)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1882, file: !1557, line: 1023, baseType: !147, size: 64, offset: 12544)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1882, file: !1557, line: 1025, baseType: !701, size: 64, offset: 12608)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1882, file: !1557, line: 1026, baseType: !701, size: 64, offset: 12672)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1882, file: !1557, line: 1031, baseType: !701, size: 64, offset: 12736)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1882, file: !1557, line: 1032, baseType: !3206, size: 192, offset: 12800)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1557, line: 324, size: 192, elements: !3207)
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3206, file: !1557, line: 326, baseType: !701, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3206, file: !1557, line: 327, baseType: !701, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3206, file: !1557, line: 328, baseType: !334, size: 32, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1882, file: !1557, line: 1041, baseType: !159, size: 64, offset: 12992)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1882, file: !1557, line: 1042, baseType: !159, size: 64, offset: 13056)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1882, file: !1557, line: 1045, baseType: !701, size: 64, offset: 13120)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1882, file: !1557, line: 1048, baseType: !701, size: 64, offset: 13184)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1882, file: !1557, line: 1051, baseType: !159, size: 64, offset: 13248)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1882, file: !1557, line: 1052, baseType: !159, size: 64, offset: 13312)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1882, file: !1557, line: 1055, baseType: !3218, size: 640, offset: 13376)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3219, line: 132, size: 640, elements: !3220)
!3219 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3220 = !{!3221, !3227, !3228}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3218, file: !3219, line: 133, baseType: !3222, size: 576)
!3222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3223, size: 576, elements: !811)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3219, line: 117, size: 192, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3223, file: !3219, line: 118, baseType: !701, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3223, file: !3219, line: 119, baseType: !2056, size: 128, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3218, file: !3219, line: 134, baseType: !7, size: 32, offset: 576)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3218, file: !3219, line: 135, baseType: !7, size: 32, offset: 608)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1882, file: !1557, line: 1058, baseType: !3230, size: 448, offset: 14016)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3219, line: 144, size: 448, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3230, file: !3219, line: 145, baseType: !1337, size: 128, align: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3230, file: !3219, line: 146, baseType: !319, size: 256, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3230, file: !3219, line: 147, baseType: !7, size: 32, offset: 384)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1882, file: !1557, line: 1064, baseType: !2263, size: 64, offset: 14464)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1882, file: !1557, line: 1067, baseType: !2263, size: 64, offset: 14528)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1882, file: !1557, line: 1070, baseType: !2263, size: 64, offset: 14592)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1882, file: !1557, line: 1074, baseType: !2290, size: 64, offset: 14656)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1882, file: !1557, line: 1084, baseType: !236, size: 128, offset: 14720)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1882, file: !1557, line: 1086, baseType: !3241, size: 64, offset: 14848)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1557, line: 55, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1882, file: !1557, line: 1089, baseType: !3244, size: 64, offset: 14912)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3245, line: 12, size: 64, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3246 = !{!3247}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3244, file: !3245, line: 13, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3245, line: 8, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1882, file: !1557, line: 1090, baseType: !3251, size: 128, offset: 14976)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3252, line: 13, size: 128, elements: !3253)
!3252 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3253 = !{!3254}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3251, file: !3252, line: 14, baseType: !371, size: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1882, file: !1557, line: 1097, baseType: !3256, size: 64, offset: 15104)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1557, line: 50, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1882, file: !1557, line: 1100, baseType: !3259, size: 64, offset: 15168)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1557, line: 1100, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1882, file: !1557, line: 1103, baseType: !3262, size: 64, offset: 15232)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1557, line: 53, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1882, file: !1557, line: 1107, baseType: !3265, size: 64, offset: 15296)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1557, line: 56, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1882, file: !1557, line: 1110, baseType: !3268, size: 64, offset: 15360)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3270, line: 93, size: 8768, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3319, !3328, !3329, !3331, !3332, !3333, !3336, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3374, !3375, !3382, !3392, !3395, !3396, !3399, !3400, !3401, !3402, !3403, !3404}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3269, file: !3270, line: 94, baseType: !1895, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3269, file: !3270, line: 95, baseType: !347, size: 32, offset: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3269, file: !3270, line: 96, baseType: !114, size: 32, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3269, file: !3270, line: 97, baseType: !114, size: 32, offset: 96)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3269, file: !3270, line: 98, baseType: !371, size: 128, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3269, file: !3270, line: 100, baseType: !1868, size: 192, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3269, file: !3270, line: 103, baseType: !1881, size: 64, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3269, file: !3270, line: 106, baseType: !3280, size: 192, offset: 512)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2438, line: 32, size: 192, elements: !3281)
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3280, file: !2438, line: 33, baseType: !371, size: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3280, file: !2438, line: 34, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3285, line: 25, baseType: !3286)
!3285 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3285, line: 23, size: 64, elements: !3287)
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3286, file: !3285, line: 24, baseType: !158, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3269, file: !3270, line: 109, baseType: !1483, size: 64, offset: 704)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3269, file: !3270, line: 112, baseType: !114, size: 32, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3269, file: !3270, line: 114, baseType: !114, size: 32, offset: 800)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3269, file: !3270, line: 115, baseType: !1881, size: 64, offset: 832)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3269, file: !3270, line: 118, baseType: !114, size: 32, offset: 896)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3269, file: !3270, line: 119, baseType: !7, size: 32, offset: 928)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3269, file: !3270, line: 121, baseType: !3296, size: 64, offset: 960)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3270, line: 80, size: 448, elements: !3298)
!3298 = !{!3299, !3300, !3306}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3297, file: !3270, line: 81, baseType: !347, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3297, file: !3270, line: 82, baseType: !3301, size: 128, offset: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3270, line: 75, size: 128, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3301, file: !3270, line: 76, baseType: !1881, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3301, file: !3270, line: 77, baseType: !3305, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3297, file: !3270, line: 83, baseType: !1091, size: 256, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3269, file: !3270, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3269, file: !3270, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3269, file: !3270, line: 138, baseType: !7, size: 32, offset: 1056)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3269, file: !3270, line: 139, baseType: !371, size: 128, offset: 1088)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3269, file: !3270, line: 142, baseType: !2002, size: 512, offset: 1216)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3269, file: !3270, line: 143, baseType: !2010, size: 64, offset: 1728)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3269, file: !3270, line: 150, baseType: !3314, size: 256, offset: 1792)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3315, size: 256, elements: !1236)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3270, line: 38, size: 128, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3315, file: !3270, line: 39, baseType: !701, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3315, file: !3270, line: 40, baseType: !701, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3269, file: !3270, line: 156, baseType: !3320, size: 192, offset: 2048)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3270, line: 66, size: 192, elements: !3321)
!3321 = !{!3322}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3320, file: !3270, line: 67, baseType: !3323, size: 192)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3270, line: 47, size: 192, elements: !3324)
!3324 = !{!3325, !3326, !3327}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3323, file: !3270, line: 48, baseType: !325, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3323, file: !3270, line: 49, baseType: !325, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3323, file: !3270, line: 50, baseType: !325, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3269, file: !3270, line: 160, baseType: !3218, size: 640, offset: 2240)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3269, file: !3270, line: 163, baseType: !3330, size: 256, offset: 2880)
!3330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2237, size: 256, elements: !711)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3269, file: !3270, line: 169, baseType: !2237, size: 64, offset: 3136)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3269, file: !3270, line: 172, baseType: !114, size: 32, offset: 3200)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3269, file: !3270, line: 174, baseType: !3334, size: 64, offset: 3264)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3270, line: 174, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3269, file: !3270, line: 185, baseType: !3337, size: 64, offset: 3328)
!3337 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !931, line: 860, baseType: !3338)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !931, line: 853, size: 64, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3338, file: !931, line: 858, baseType: !930, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3338, file: !931, line: 859, baseType: !774, size: 32, offset: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3269, file: !3270, line: 186, baseType: !701, size: 64, offset: 3392)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3269, file: !3270, line: 186, baseType: !701, size: 64, offset: 3456)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3269, file: !3270, line: 186, baseType: !701, size: 64, offset: 3520)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3269, file: !3270, line: 186, baseType: !701, size: 64, offset: 3584)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3269, file: !3270, line: 187, baseType: !701, size: 64, offset: 3648)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3269, file: !3270, line: 188, baseType: !701, size: 64, offset: 3712)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3269, file: !3270, line: 189, baseType: !3206, size: 192, offset: 3776)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3269, file: !3270, line: 190, baseType: !159, size: 64, offset: 3968)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3269, file: !3270, line: 190, baseType: !159, size: 64, offset: 4032)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3269, file: !3270, line: 190, baseType: !159, size: 64, offset: 4096)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3269, file: !3270, line: 190, baseType: !159, size: 64, offset: 4160)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3269, file: !3270, line: 191, baseType: !159, size: 64, offset: 4224)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3269, file: !3270, line: 191, baseType: !159, size: 64, offset: 4288)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3269, file: !3270, line: 191, baseType: !159, size: 64, offset: 4352)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3269, file: !3270, line: 191, baseType: !159, size: 64, offset: 4416)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3269, file: !3270, line: 192, baseType: !159, size: 64, offset: 4480)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3269, file: !3270, line: 192, baseType: !159, size: 64, offset: 4544)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3269, file: !3270, line: 192, baseType: !159, size: 64, offset: 4608)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3269, file: !3270, line: 192, baseType: !159, size: 64, offset: 4672)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3269, file: !3270, line: 193, baseType: !159, size: 64, offset: 4736)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3269, file: !3270, line: 193, baseType: !159, size: 64, offset: 4800)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3269, file: !3270, line: 194, baseType: !3364, size: 448, offset: 4864)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3365, line: 12, size: 448, elements: !3366)
!3365 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3364, file: !3365, line: 15, baseType: !701, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3364, file: !3365, line: 17, baseType: !701, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3364, file: !3365, line: 19, baseType: !701, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3364, file: !3365, line: 21, baseType: !701, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3364, file: !3365, line: 29, baseType: !701, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3364, file: !3365, line: 35, baseType: !701, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3364, file: !3365, line: 44, baseType: !701, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3269, file: !3270, line: 202, baseType: !703, size: 64, offset: 5312)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3269, file: !3270, line: 213, baseType: !3376, size: 2048, offset: 5376)
!3376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3377, size: 2048, elements: !237)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3378, line: 43, size: 128, elements: !3379)
!3378 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3379 = !{!3380, !3381}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3377, file: !3378, line: 44, baseType: !859, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3377, file: !3378, line: 45, baseType: !859, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3269, file: !3270, line: 216, baseType: !3383, size: 448, offset: 7424)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3270, line: 30, size: 448, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390, !3391}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3383, file: !3270, line: 31, baseType: !114, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3383, file: !3270, line: 32, baseType: !846, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3383, file: !3270, line: 33, baseType: !159, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3383, file: !3270, line: 34, baseType: !701, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3383, file: !3270, line: 34, baseType: !701, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3383, file: !3270, line: 35, baseType: !159, size: 64, offset: 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3383, file: !3270, line: 35, baseType: !159, size: 64, offset: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3269, file: !3270, line: 219, baseType: !3393, size: 64, offset: 7872)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3270, line: 219, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3269, file: !3270, line: 222, baseType: !7, size: 32, offset: 7936)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3269, file: !3270, line: 223, baseType: !3397, size: 64, offset: 8000)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3270, line: 223, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3269, file: !3270, line: 230, baseType: !388, size: 8, offset: 8064)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3269, file: !3270, line: 231, baseType: !1255, size: 16, offset: 8080)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3269, file: !3270, line: 232, baseType: !1255, size: 16, offset: 8096)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3269, file: !3270, line: 234, baseType: !2169, size: 64, offset: 8128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3269, file: !3270, line: 237, baseType: !319, size: 256, offset: 8192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3269, file: !3270, line: 243, baseType: !1775, size: 320, offset: 8448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1882, file: !1557, line: 1111, baseType: !3406, size: 64, offset: 15424)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3270, line: 20, size: 16640, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3407, file: !3270, line: 21, baseType: !774, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3407, file: !3270, line: 22, baseType: !1895, size: 32, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3407, file: !3270, line: 23, baseType: !1868, size: 192, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3407, file: !3270, line: 24, baseType: !3413, size: 16384, offset: 256)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3414, size: 16384, elements: !815)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2438, line: 51, size: 256, elements: !3415)
!3415 = !{!3416}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3414, file: !2438, line: 52, baseType: !3417, size: 256)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2438, line: 37, size: 256, elements: !3418)
!3418 = !{!3419, !3426, !3427, !3431}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3417, file: !2438, line: 39, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3421, line: 83, baseType: !3422)
!3421 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3421, line: 82, baseType: !3424)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !114}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3417, file: !2438, line: 40, baseType: !159, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3417, file: !2438, line: 46, baseType: !3428, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3421, line: 86, baseType: !3429)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3421, line: 85, baseType: !1478)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3417, file: !2438, line: 48, baseType: !3284, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1882, file: !1557, line: 1112, baseType: !3284, size: 64, offset: 15488)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1882, file: !1557, line: 1113, baseType: !3284, size: 64, offset: 15552)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1882, file: !1557, line: 1115, baseType: !3284, size: 64, offset: 15616)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1882, file: !1557, line: 1116, baseType: !3280, size: 192, offset: 15680)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1882, file: !1557, line: 1117, baseType: !159, size: 64, offset: 15872)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1882, file: !1557, line: 1118, baseType: !857, size: 64, offset: 15936)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1882, file: !1557, line: 1119, baseType: !7, size: 32, offset: 16000)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1882, file: !1557, line: 1121, baseType: !1336, size: 64, offset: 16064)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1882, file: !1557, line: 1125, baseType: !3441, size: 64, offset: 16128)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1557, line: 43, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1882, file: !1557, line: 1127, baseType: !895, size: 32, offset: 16192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1882, file: !1557, line: 1128, baseType: !7, size: 32, offset: 16224)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1882, file: !1557, line: 1130, baseType: !3446, size: 128, offset: 16256)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3447, line: 37, size: 128, elements: !3448)
!3447 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3446, file: !3447, line: 38, baseType: !114, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3446, file: !3447, line: 39, baseType: !347, size: 32, offset: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3446, file: !3447, line: 40, baseType: !3452, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3447, line: 24, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1882, file: !1557, line: 1131, baseType: !3455, size: 256, offset: 16384)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3456, line: 12, size: 256, elements: !3457)
!3456 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3455, file: !3456, line: 13, baseType: !810, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3455, file: !3456, line: 14, baseType: !159, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3455, file: !3456, line: 15, baseType: !159, size: 64, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3455, file: !3456, line: 16, baseType: !388, size: 8, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1882, file: !1557, line: 1134, baseType: !701, size: 64, offset: 16640)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1882, file: !1557, line: 1135, baseType: !701, size: 64, offset: 16704)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1882, file: !1557, line: 1138, baseType: !774, size: 32, offset: 16768)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1882, file: !1557, line: 1141, baseType: !334, size: 32, offset: 16800)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1882, file: !1557, line: 1143, baseType: !3467, size: 64, offset: 16832)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1557, line: 735, size: 64, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3467, file: !1557, line: 736, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1882, file: !1557, line: 1147, baseType: !2059, size: 128, offset: 16896)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1882, file: !1557, line: 1149, baseType: !1881, size: 64, offset: 17024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1882, file: !1557, line: 1151, baseType: !3474, size: 64, offset: 17088)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1557, line: 1151, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1882, file: !1557, line: 1188, baseType: !147, size: 64, offset: 17152)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1882, file: !1557, line: 1191, baseType: !3478, size: 64, offset: 17216)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1557, line: 44, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1882, file: !1557, line: 1194, baseType: !3481, size: 64, offset: 17280)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1557, line: 45, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1882, file: !1557, line: 1197, baseType: !3484, size: 64, offset: 17344)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1557, line: 61, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1882, file: !1557, line: 1199, baseType: !3487, size: 64, offset: 17408)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3489, line: 99, size: 128, elements: !3490)
!3489 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3490 = !{!3491, !3492, !3493}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3488, file: !3489, line: 100, baseType: !323, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3488, file: !3489, line: 101, baseType: !347, size: 32, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3488, file: !3489, line: 103, baseType: !363, size: 16, offset: 96)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1882, file: !1557, line: 1202, baseType: !3495, size: 64, offset: 17472)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1557, line: 48, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1882, file: !1557, line: 1205, baseType: !159, size: 64, offset: 17536)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1882, file: !1557, line: 1206, baseType: !3499, size: 64, offset: 17600)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2438, line: 14, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2438, line: 12, size: 384, elements: !3502)
!3502 = !{!3503}
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !2438, line: 13, baseType: !3504, size: 384)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3501, file: !2438, line: 13, size: 384, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3504, file: !2438, line: 13, baseType: !114, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3504, file: !2438, line: 13, baseType: !114, size: 32, offset: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3504, file: !2438, line: 13, baseType: !114, size: 32, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3504, file: !2438, line: 13, baseType: !3510, size: 256, offset: 128)
!3510 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3511, line: 37, size: 256, elements: !3512)
!3511 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3512 = !{!3513, !3518, !3531, !3537, !3546, !3572, !3577}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3510, file: !3511, line: 42, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3511, line: 39, size: 64, elements: !3515)
!3515 = !{!3516, !3517}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3514, file: !3511, line: 40, baseType: !3183, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3514, file: !3511, line: 41, baseType: !901, size: 32, offset: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3510, file: !3511, line: 50, baseType: !3519, size: 192)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3511, line: 45, size: 192, elements: !3520)
!3520 = !{!3521, !3523, !3524, !3530}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3519, file: !3511, line: 46, baseType: !3522, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !844, line: 95, baseType: !114)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3519, file: !3511, line: 47, baseType: !114, size: 32, offset: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3519, file: !3511, line: 48, baseType: !3525, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3511, line: 11, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3511, line: 8, size: 64, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3526, file: !3511, line: 9, baseType: !114, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3526, file: !3511, line: 10, baseType: !147, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3519, file: !3511, line: 49, baseType: !114, size: 32, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3510, file: !3511, line: 57, baseType: !3532, size: 128)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3511, line: 53, size: 128, elements: !3533)
!3533 = !{!3534, !3535, !3536}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3532, file: !3511, line: 54, baseType: !3183, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3532, file: !3511, line: 55, baseType: !901, size: 32, offset: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3532, file: !3511, line: 56, baseType: !3525, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3510, file: !3511, line: 66, baseType: !3538, size: 256)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3511, line: 60, size: 256, elements: !3539)
!3539 = !{!3540, !3541, !3542, !3543, !3545}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3538, file: !3511, line: 61, baseType: !3183, size: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3538, file: !3511, line: 62, baseType: !901, size: 32, offset: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3538, file: !3511, line: 63, baseType: !114, size: 32, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3538, file: !3511, line: 64, baseType: !3544, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !844, line: 94, baseType: !845)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3538, file: !3511, line: 65, baseType: !3544, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3510, file: !3511, line: 105, baseType: !3547, size: 256)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3511, line: 69, size: 256, elements: !3548)
!3548 = !{!3549, !3550}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3547, file: !3511, line: 70, baseType: !147, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3547, file: !3511, line: 79, baseType: !3551, size: 192, offset: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3547, file: !3511, line: 79, size: 192, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3561, !3566}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3551, file: !3511, line: 81, baseType: !114, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3551, file: !3511, line: 86, baseType: !1255, size: 16)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3551, file: !3511, line: 92, baseType: !3556, size: 192)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3551, file: !3511, line: 88, size: 192, elements: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3556, file: !3511, line: 89, baseType: !246, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3556, file: !3511, line: 90, baseType: !147, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3556, file: !3511, line: 91, baseType: !147, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3551, file: !3511, line: 97, baseType: !3562, size: 96)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3551, file: !3511, line: 94, size: 96, elements: !3563)
!3563 = !{!3564, !3565}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3562, file: !3511, line: 95, baseType: !246, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3562, file: !3511, line: 96, baseType: !150, size: 32, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3551, file: !3511, line: 103, baseType: !3567, size: 128)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3551, file: !3511, line: 99, size: 128, elements: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3567, file: !3511, line: 100, baseType: !159, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3567, file: !3511, line: 101, baseType: !150, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3567, file: !3511, line: 102, baseType: !150, size: 32, offset: 96)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3510, file: !3511, line: 111, baseType: !3573, size: 128)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3511, line: 108, size: 128, elements: !3574)
!3574 = !{!3575, !3576}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3573, file: !3511, line: 109, baseType: !846, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3573, file: !3511, line: 110, baseType: !114, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3510, file: !3511, line: 118, baseType: !3578, size: 128)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3511, line: 114, size: 128, elements: !3579)
!3579 = !{!3580, !3581, !3582}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3578, file: !3511, line: 115, baseType: !147, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3578, file: !3511, line: 116, baseType: !114, size: 32, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3578, file: !3511, line: 117, baseType: !7, size: 32, offset: 96)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1882, file: !1557, line: 1208, baseType: !3364, size: 448, offset: 17664)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1882, file: !1557, line: 1215, baseType: !701, size: 64, offset: 18112)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1882, file: !1557, line: 1217, baseType: !701, size: 64, offset: 18176)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1882, file: !1557, line: 1219, baseType: !701, size: 64, offset: 18240)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1882, file: !1557, line: 1223, baseType: !3588, size: 64, offset: 18304)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3589, line: 99, baseType: !3590)
!3589 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3589, line: 99, size: 64, elements: !3591)
!3591 = !{!3592}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3590, file: !3589, line: 99, baseType: !158, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1882, file: !1557, line: 1225, baseType: !930, size: 32, offset: 18368)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1882, file: !1557, line: 1226, baseType: !114, size: 32, offset: 18400)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1882, file: !1557, line: 1227, baseType: !114, size: 32, offset: 18432)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1882, file: !1557, line: 1231, baseType: !3597, size: 64, offset: 18496)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1557, line: 1231, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1882, file: !1557, line: 1233, baseType: !371, size: 128, offset: 18560)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1882, file: !1557, line: 1240, baseType: !3601, size: 64, offset: 18688)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1557, line: 62, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1882, file: !1557, line: 1242, baseType: !3604, size: 64, offset: 18752)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3606, line: 392, size: 96, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3607 = !{!3608, !3614, !3616}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3605, file: !3606, line: 393, baseType: !3609, size: 32)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3606, line: 388, size: 32, elements: !3610)
!3610 = !{!3611}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3609, file: !3606, line: 389, baseType: !3612, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3613, line: 46, baseType: !148)
!3613 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3605, file: !3606, line: 394, baseType: !3615, size: 32, offset: 32)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3613, line: 42, baseType: !1137)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3605, file: !3606, line: 395, baseType: !3612, size: 32, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1882, file: !1557, line: 1244, baseType: !371, size: 128, offset: 18816)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1882, file: !1557, line: 1245, baseType: !3619, size: 64, offset: 18944)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1557, line: 51, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1882, file: !1557, line: 1246, baseType: !319, size: 256, offset: 19008)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1882, file: !1557, line: 1247, baseType: !7, size: 32, offset: 19264)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1882, file: !1557, line: 1250, baseType: !3624, size: 64, offset: 19328)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1557, line: 57, flags: DIFlagFwdDecl)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1882, file: !1557, line: 1251, baseType: !319, size: 256, offset: 19392)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1882, file: !1557, line: 1252, baseType: !371, size: 128, offset: 19648)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1882, file: !1557, line: 1259, baseType: !2873, size: 64, offset: 19776)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1882, file: !1557, line: 1260, baseType: !1255, size: 16, offset: 19840)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1882, file: !1557, line: 1261, baseType: !1255, size: 16, offset: 19856)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1882, file: !1557, line: 1314, baseType: !3632, size: 64, offset: 19904)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3634, line: 62, size: 256, align: 256, elements: !3635)
!3634 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3633, file: !3634, line: 75, baseType: !150, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3633, file: !3634, line: 90, baseType: !150, size: 32, offset: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3633, file: !3634, line: 112, baseType: !702, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3633, file: !3634, line: 132, baseType: !150, size: 32, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3633, file: !3634, line: 140, baseType: !150, size: 32, offset: 160)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3633, file: !3634, line: 149, baseType: !150, size: 32, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3633, file: !3634, line: 154, baseType: !3643, offset: 224)
!3643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !2256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1882, file: !1557, line: 1315, baseType: !148, size: 32, offset: 19968)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1882, file: !1557, line: 1316, baseType: !148, size: 32, offset: 20000)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1882, file: !1557, line: 1321, baseType: !159, size: 64, offset: 20032)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1882, file: !1557, line: 1325, baseType: !114, size: 32, offset: 20096)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1882, file: !1557, line: 1326, baseType: !114, size: 32, offset: 20128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1882, file: !1557, line: 1327, baseType: !114, size: 32, offset: 20160)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1882, file: !1557, line: 1328, baseType: !114, size: 32, offset: 20192)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1882, file: !1557, line: 1329, baseType: !1337, size: 128, align: 64, offset: 20224)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1882, file: !1557, line: 1332, baseType: !3653, size: 128, offset: 20352)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3654, line: 51, size: 128, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3655 = !{!3656, !3661, !3662}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3653, file: !3654, line: 60, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3658, line: 7, size: 64, elements: !3659)
!3658 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3659 = !{!3660}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3657, file: !3658, line: 12, baseType: !154, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3653, file: !3654, line: 63, baseType: !388, size: 8, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3653, file: !3654, line: 70, baseType: !388, size: 8, offset: 72)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1882, file: !1557, line: 1335, baseType: !2925, size: 64, offset: 20480)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1882, file: !1557, line: 1337, baseType: !3665, size: 128, offset: 20544)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3654, line: 39, size: 128, elements: !3666)
!3666 = !{!3667, !3668, !3669}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3665, file: !3654, line: 40, baseType: !2712, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3665, file: !3654, line: 42, baseType: !150, size: 32, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3665, file: !3654, line: 43, baseType: !150, size: 32, offset: 96)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1882, file: !1557, line: 1340, baseType: !3671, size: 64, offset: 20672)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1557, line: 69, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1882, file: !1557, line: 1351, baseType: !114, size: 32, offset: 20736)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1882, file: !1557, line: 1352, baseType: !114, size: 32, offset: 20768)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1882, file: !1557, line: 1354, baseType: !159, size: 64, offset: 20800)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1882, file: !1557, line: 1364, baseType: !701, size: 64, offset: 20864)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1882, file: !1557, line: 1365, baseType: !701, size: 64, offset: 20928)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1882, file: !1557, line: 1412, baseType: !159, size: 64, offset: 20992)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1882, file: !1557, line: 1453, baseType: !3680, size: 64, offset: 21056)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1557, line: 1453, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1882, file: !1557, line: 1457, baseType: !3683, size: 64, offset: 21120)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !73, line: 61, size: 576, elements: !3685)
!3685 = !{!3686, !3687, !3706, !3709, !3710, !3743, !3753}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3684, file: !73, line: 62, baseType: !72, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3684, file: !73, line: 64, baseType: !3688, size: 192, offset: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3684, file: !73, line: 64, size: 192, elements: !3689)
!3689 = !{!3690, !3701}
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !3688, file: !73, line: 65, baseType: !3691, size: 192)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !73, line: 65, size: 192, elements: !3692)
!3692 = !{!3693, !3700}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3691, file: !73, line: 66, baseType: !3694, size: 128)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3695, line: 50, size: 128, elements: !3696)
!3695 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3696 = !{!3697, !3698, !3699}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3694, file: !3695, line: 52, baseType: !159, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3694, file: !3695, line: 54, baseType: !7, size: 32, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3694, file: !3695, line: 55, baseType: !7, size: 32, offset: 96)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3691, file: !73, line: 67, baseType: !159, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, scope: !3688, file: !73, line: 70, baseType: !3702, size: 192)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !73, line: 70, size: 192, elements: !3703)
!3703 = !{!3704, !3705}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3702, file: !73, line: 71, baseType: !1337, size: 128, align: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3702, file: !73, line: 72, baseType: !159, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3684, file: !73, line: 76, baseType: !3707, size: 64, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !73, line: 76, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3684, file: !73, line: 77, baseType: !159, size: 64, offset: 320)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3684, file: !73, line: 79, baseType: !3711, size: 64, offset: 384)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3695, line: 25, size: 256, elements: !3713)
!3713 = !{!3714, !3720, !3724}
!3714 = !DIDerivedType(tag: DW_TAG_member, scope: !3712, file: !3695, line: 26, baseType: !3715, size: 128)
!3715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3712, file: !3695, line: 26, size: 128, elements: !3716)
!3716 = !{!3717, !3719}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3715, file: !3695, line: 27, baseType: !3718, size: 128)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 128, elements: !237)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3715, file: !3695, line: 28, baseType: !3718, size: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3712, file: !3695, line: 31, baseType: !3721, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3723)
!3723 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3695, line: 23, flags: DIFlagFwdDecl)
!3724 = !DIDerivedType(tag: DW_TAG_member, scope: !3712, file: !3695, line: 33, baseType: !3725, size: 64, offset: 192)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3712, file: !3695, line: 33, size: 64, elements: !3726)
!3726 = !{!3727, !3733, !3738}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3725, file: !3695, line: 38, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3725, file: !3695, line: 34, size: 64, elements: !3729)
!3729 = !{!3730, !3731, !3732}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3728, file: !3695, line: 35, baseType: !1137, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3728, file: !3695, line: 36, baseType: !355, size: 8, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3728, file: !3695, line: 37, baseType: !355, size: 8, offset: 40)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3725, file: !3695, line: 42, baseType: !3734, size: 16)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3725, file: !3695, line: 39, size: 16, elements: !3735)
!3735 = !{!3736, !3737}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3734, file: !3695, line: 40, baseType: !355, size: 8)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3734, file: !3695, line: 41, baseType: !355, size: 8, offset: 8)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3725, file: !3695, line: 46, baseType: !3739, size: 16)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3725, file: !3695, line: 43, size: 16, elements: !3740)
!3740 = !{!3741, !3742}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3739, file: !3695, line: 44, baseType: !355, size: 8)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3739, file: !3695, line: 45, baseType: !355, size: 8, offset: 8)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3684, file: !73, line: 81, baseType: !3744, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !73, line: 85, size: 384, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3745, file: !73, line: 86, baseType: !3707, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3745, file: !73, line: 87, baseType: !159, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3745, file: !73, line: 88, baseType: !159, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3745, file: !73, line: 89, baseType: !159, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3745, file: !73, line: 90, baseType: !388, size: 8, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3745, file: !73, line: 92, baseType: !3744, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3684, file: !73, line: 82, baseType: !7, size: 32, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1882, file: !1557, line: 1463, baseType: !3755, offset: 21184)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1557, line: 739, elements: !588)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1882, file: !1557, line: 1470, baseType: !1337, size: 128, align: 64, offset: 21184)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1882, file: !1557, line: 1471, baseType: !1895, size: 32, offset: 21312)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1882, file: !1557, line: 1472, baseType: !114, size: 32, offset: 21344)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1882, file: !1557, line: 1474, baseType: !1881, size: 64, offset: 21376)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1882, file: !1557, line: 1475, baseType: !1357, size: 320, offset: 21440)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1882, file: !1557, line: 1478, baseType: !3762, size: 64, offset: 21760)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3764, line: 49, size: 512, elements: !3765)
!3764 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3772, !3773, !3774, !3775}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3763, file: !3764, line: 50, baseType: !3762, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3763, file: !3764, line: 51, baseType: !147, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3763, file: !3764, line: 52, baseType: !159, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3763, file: !3764, line: 53, baseType: !159, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3763, file: !3764, line: 54, baseType: !3771, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3763, file: !3764, line: 56, baseType: !7, size: 32, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3763, file: !3764, line: 58, baseType: !7, size: 32, offset: 352)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3763, file: !3764, line: 59, baseType: !700, size: 64, offset: 384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3763, file: !3764, line: 60, baseType: !3064, size: 64, offset: 448)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1882, file: !1557, line: 1482, baseType: !1895, size: 32, offset: 21824)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1882, file: !1557, line: 1489, baseType: !147, size: 64, offset: 21888)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1882, file: !1557, line: 1504, baseType: !147, size: 64, offset: 21952)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1882, file: !1557, line: 1505, baseType: !702, size: 64, offset: 22016)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1882, file: !1557, line: 1506, baseType: !701, size: 64, offset: 22080)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1882, file: !1557, line: 1507, baseType: !702, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1882, file: !1557, line: 1508, baseType: !702, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1882, file: !1557, line: 1509, baseType: !702, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1882, file: !1557, line: 1510, baseType: !1337, size: 128, align: 64, offset: 22208)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1882, file: !1557, line: 1511, baseType: !114, size: 32, offset: 22336)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1882, file: !1557, line: 1515, baseType: !3787, size: 64, offset: 22400)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1909, line: 56, size: 64, elements: !3788)
!3788 = !{!3789}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3787, file: !1909, line: 57, baseType: !1912, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1882, file: !1557, line: 1518, baseType: !3787, size: 64, offset: 22464)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1882, file: !1557, line: 1528, baseType: !1337, size: 128, align: 64, offset: 22528)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1882, file: !1557, line: 1552, baseType: !3793, size: 35328, offset: 23040)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3794, line: 430, size: 35328, elements: !3795)
!3794 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3795 = !{!3796, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3825, !3826, !3827, !3828, !3829, !3830, !3833, !3834, !3835, !3836}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3793, file: !3794, line: 432, baseType: !3797, size: 192)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3798, size: 192, elements: !811)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3799, line: 16, size: 64, elements: !3800)
!3799 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3800 = !{!3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3798, file: !3799, line: 17, baseType: !361, size: 16)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3798, file: !3799, line: 18, baseType: !361, size: 16, offset: 16)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3798, file: !3799, line: 19, baseType: !361, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3798, file: !3799, line: 19, baseType: !361, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3798, file: !3799, line: 19, baseType: !361, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3798, file: !3799, line: 19, baseType: !361, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3798, file: !3799, line: 19, baseType: !361, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3798, file: !3799, line: 20, baseType: !361, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3798, file: !3799, line: 20, baseType: !361, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3798, file: !3799, line: 20, baseType: !361, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3798, file: !3799, line: 20, baseType: !361, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3798, file: !3799, line: 20, baseType: !361, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3798, file: !3799, line: 20, baseType: !361, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3793, file: !3794, line: 436, baseType: !159, size: 64, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3793, file: !3794, line: 440, baseType: !363, size: 16, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3793, file: !3794, line: 441, baseType: !363, size: 16, offset: 272)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3793, file: !3794, line: 442, baseType: !363, size: 16, offset: 288)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3793, file: !3794, line: 443, baseType: !363, size: 16, offset: 304)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3793, file: !3794, line: 447, baseType: !159, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3793, file: !3794, line: 448, baseType: !159, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3793, file: !3794, line: 459, baseType: !3822, size: 256, offset: 448)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3823, size: 256, elements: !711)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3794, line: 428, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3793, file: !3794, line: 461, baseType: !159, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3793, file: !3794, line: 463, baseType: !159, size: 64, offset: 768)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3793, file: !3794, line: 465, baseType: !159, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3793, file: !3794, line: 466, baseType: !159, size: 64, offset: 896)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3793, file: !3794, line: 467, baseType: !159, size: 64, offset: 960)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3793, file: !3794, line: 473, baseType: !3831, size: 64, offset: 1024)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3794, line: 10, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3793, file: !3794, line: 480, baseType: !159, size: 64, offset: 1088)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3793, file: !3794, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3793, file: !3794, line: 491, baseType: !148, size: 32, offset: 1184)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3793, file: !3794, line: 501, baseType: !3837, size: 33792, offset: 1536)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3838, line: 448, size: 33792, elements: !3839)
!3838 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3839 = !{!3840, !3841, !3842, !4002, !4003, !4009, !4010}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3837, file: !3838, line: 461, baseType: !7, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3837, file: !3838, line: 468, baseType: !159, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3837, file: !3838, line: 476, baseType: !3843, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3838, line: 356, size: 33280, align: 512, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3844, file: !3838, line: 358, baseType: !7, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3844, file: !3838, line: 361, baseType: !7, size: 32, offset: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3844, file: !3838, line: 364, baseType: !701, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3844, file: !3838, line: 367, baseType: !701, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3844, file: !3838, line: 370, baseType: !701, size: 64, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3844, file: !3838, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3844, file: !3838, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3844, file: !3838, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3844, file: !3838, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3844, file: !3838, line: 397, baseType: !3856, size: 32768, offset: 512)
!3856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3838, line: 348, size: 32768, elements: !3857)
!3857 = !{!3858, !3871, !3908, !3985, !3998}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3856, file: !3838, line: 349, baseType: !3859, size: 896)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3838, line: 12, size: 896, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3870}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3859, file: !3838, line: 13, baseType: !148, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3859, file: !3838, line: 14, baseType: !148, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3859, file: !3838, line: 15, baseType: !148, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3859, file: !3838, line: 16, baseType: !148, size: 32, offset: 96)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3859, file: !3838, line: 17, baseType: !148, size: 32, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3859, file: !3838, line: 18, baseType: !148, size: 32, offset: 160)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3859, file: !3838, line: 19, baseType: !148, size: 32, offset: 192)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3859, file: !3838, line: 22, baseType: !3869, size: 640, offset: 224)
!3869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 640, elements: !169)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3859, file: !3838, line: 25, baseType: !148, size: 32, offset: 864)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3856, file: !3838, line: 350, baseType: !3872, size: 4096, align: 128)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3838, line: 34, size: 4096, align: 128, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3893, !3894, !3895, !3897, !3899, !3903}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3872, file: !3838, line: 35, baseType: !361, size: 16)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3872, file: !3838, line: 36, baseType: !361, size: 16, offset: 16)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3872, file: !3838, line: 37, baseType: !361, size: 16, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3872, file: !3838, line: 38, baseType: !361, size: 16, offset: 48)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !3838, line: 39, baseType: !3879, size: 128, offset: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3872, file: !3838, line: 39, size: 128, elements: !3880)
!3880 = !{!3881, !3886}
!3881 = !DIDerivedType(tag: DW_TAG_member, scope: !3879, file: !3838, line: 40, baseType: !3882, size: 128)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3879, file: !3838, line: 40, size: 128, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3882, file: !3838, line: 41, baseType: !701, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3882, file: !3838, line: 42, baseType: !701, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !3879, file: !3838, line: 44, baseType: !3887, size: 128)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3879, file: !3838, line: 44, size: 128, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3887, file: !3838, line: 45, baseType: !148, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3887, file: !3838, line: 46, baseType: !148, size: 32, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3887, file: !3838, line: 47, baseType: !148, size: 32, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3887, file: !3838, line: 48, baseType: !148, size: 32, offset: 96)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3872, file: !3838, line: 51, baseType: !148, size: 32, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3872, file: !3838, line: 52, baseType: !148, size: 32, offset: 224)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3872, file: !3838, line: 55, baseType: !3896, size: 1024, offset: 256)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1024, elements: !228)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3872, file: !3838, line: 58, baseType: !3898, size: 2048, offset: 1280)
!3898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 2048, elements: !815)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3872, file: !3838, line: 60, baseType: !3900, size: 384, offset: 3328)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 384, elements: !3901)
!3901 = !{!3902}
!3902 = !DISubrange(count: 12)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !3838, line: 62, baseType: !3904, size: 384, offset: 3712)
!3904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3872, file: !3838, line: 62, size: 384, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3904, file: !3838, line: 63, baseType: !3900, size: 384)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3904, file: !3838, line: 64, baseType: !3900, size: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3856, file: !3838, line: 351, baseType: !3909, size: 1088)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3838, line: 79, size: 1088, elements: !3910)
!3910 = !{!3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3984}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3909, file: !3838, line: 80, baseType: !148, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3909, file: !3838, line: 81, baseType: !148, size: 32, offset: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3909, file: !3838, line: 82, baseType: !148, size: 32, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3909, file: !3838, line: 83, baseType: !148, size: 32, offset: 96)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3909, file: !3838, line: 84, baseType: !148, size: 32, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3909, file: !3838, line: 85, baseType: !148, size: 32, offset: 160)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3909, file: !3838, line: 86, baseType: !148, size: 32, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3909, file: !3838, line: 88, baseType: !3869, size: 640, offset: 224)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3909, file: !3838, line: 89, baseType: !355, size: 8, offset: 864)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3909, file: !3838, line: 90, baseType: !355, size: 8, offset: 872)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3909, file: !3838, line: 91, baseType: !355, size: 8, offset: 880)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3909, file: !3838, line: 92, baseType: !355, size: 8, offset: 888)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3909, file: !3838, line: 93, baseType: !355, size: 8, offset: 896)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3909, file: !3838, line: 94, baseType: !355, size: 8, offset: 904)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3909, file: !3838, line: 95, baseType: !3926, size: 64, offset: 960)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3928, line: 11, size: 128, elements: !3929)
!3928 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3929 = !{!3930, !3931}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3927, file: !3928, line: 12, baseType: !846, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3927, file: !3928, line: 13, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3934, line: 103, size: 1344, elements: !3935)
!3934 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3964, !3965, !3966}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3933, file: !3934, line: 109, baseType: !159, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3933, file: !3934, line: 110, baseType: !159, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3933, file: !3934, line: 111, baseType: !159, size: 64, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3933, file: !3934, line: 112, baseType: !159, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3933, file: !3934, line: 113, baseType: !159, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3933, file: !3934, line: 114, baseType: !159, size: 64, offset: 320)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3933, file: !3934, line: 117, baseType: !159, size: 64, offset: 384)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3933, file: !3934, line: 118, baseType: !159, size: 64, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3933, file: !3934, line: 119, baseType: !159, size: 64, offset: 512)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3933, file: !3934, line: 120, baseType: !159, size: 64, offset: 576)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3933, file: !3934, line: 121, baseType: !159, size: 64, offset: 640)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3933, file: !3934, line: 122, baseType: !159, size: 64, offset: 704)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3933, file: !3934, line: 123, baseType: !159, size: 64, offset: 768)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3933, file: !3934, line: 124, baseType: !159, size: 64, offset: 832)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3933, file: !3934, line: 125, baseType: !159, size: 64, offset: 896)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3933, file: !3934, line: 139, baseType: !159, size: 64, offset: 960)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3933, file: !3934, line: 142, baseType: !159, size: 64, offset: 1024)
!3953 = !DIDerivedType(tag: DW_TAG_member, scope: !3933, file: !3934, line: 144, baseType: !3954, size: 64, offset: 1088)
!3954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3933, file: !3934, line: 144, size: 64, elements: !3955)
!3955 = !{!3956, !3957, !3958}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3954, file: !3934, line: 146, baseType: !361, size: 16)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3954, file: !3934, line: 148, baseType: !701, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3954, file: !3934, line: 150, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3934, line: 59, size: 64, elements: !3960)
!3960 = !{!3961, !3962, !3963}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3959, file: !3934, line: 61, baseType: !701, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3959, file: !3934, line: 63, baseType: !701, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3959, file: !3934, line: 65, baseType: !701, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3933, file: !3934, line: 153, baseType: !159, size: 64, offset: 1152)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3933, file: !3934, line: 154, baseType: !159, size: 64, offset: 1216)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !3933, file: !3934, line: 156, baseType: !3967, size: 64, offset: 1280)
!3967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3933, file: !3934, line: 156, size: 64, elements: !3968)
!3968 = !{!3969, !3970, !3971}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3967, file: !3934, line: 158, baseType: !361, size: 16)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3967, file: !3934, line: 160, baseType: !701, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3967, file: !3934, line: 162, baseType: !3972, size: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3934, line: 69, size: 64, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3972, file: !3934, line: 71, baseType: !701, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3972, file: !3934, line: 73, baseType: !701, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3972, file: !3934, line: 75, baseType: !701, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3972, file: !3934, line: 77, baseType: !701, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3972, file: !3934, line: 80, baseType: !701, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3972, file: !3934, line: 83, baseType: !701, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3972, file: !3934, line: 86, baseType: !701, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3972, file: !3934, line: 88, baseType: !701, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3972, file: !3934, line: 93, baseType: !701, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3972, file: !3934, line: 100, baseType: !701, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3909, file: !3838, line: 96, baseType: !148, size: 32, offset: 1024)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3856, file: !3838, line: 352, baseType: !3986, size: 4608, align: 512)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3838, line: 333, size: 4608, align: 512, elements: !3987)
!3987 = !{!3988, !3989, !3996}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3986, file: !3838, line: 334, baseType: !3872, size: 4096, align: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3986, file: !3838, line: 335, baseType: !3990, size: 512, offset: 4096)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3838, line: 312, size: 512, elements: !3991)
!3991 = !{!3992, !3993, !3994}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3990, file: !3838, line: 313, baseType: !701, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3990, file: !3838, line: 314, baseType: !701, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3990, file: !3838, line: 315, baseType: !3995, size: 384, offset: 128)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 384, elements: !2339)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3986, file: !3838, line: 336, baseType: !3997, offset: 4608)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, elements: !2256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3856, file: !3838, line: 353, baseType: !3999, size: 32768)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 32768, elements: !4000)
!4000 = !{!4001}
!4001 = !DISubrange(count: 4096)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3837, file: !3838, line: 484, baseType: !3843, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3837, file: !3838, line: 491, baseType: !4004, size: 128, offset: 256)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3838, line: 404, size: 128, elements: !4005)
!4005 = !{!4006, !4007, !4008}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4004, file: !3838, line: 424, baseType: !701, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4004, file: !3838, line: 432, baseType: !7, size: 32, offset: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4004, file: !3838, line: 440, baseType: !7, size: 32, offset: 96)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3837, file: !3838, line: 498, baseType: !4004, size: 128, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3837, file: !3838, line: 508, baseType: !3844, size: 33280, align: 512, offset: 512)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1858, file: !1859, line: 16, baseType: !1868, size: 192, offset: 512)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1858, file: !1859, line: 17, baseType: !347, size: 32, offset: 704)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1034, file: !19, line: 1240, baseType: !147, size: 64, offset: 6912)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1034, file: !19, line: 1243, baseType: !148, size: 32, offset: 6976)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1034, file: !19, line: 1245, baseType: !1615, size: 64, offset: 7040)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1034, file: !19, line: 1246, baseType: !1615, size: 64, offset: 7104)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1034, file: !19, line: 1248, baseType: !150, size: 32, offset: 7168)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1034, file: !19, line: 1249, baseType: !4019, size: 64, offset: 7232)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1034, file: !19, line: 1252, baseType: !227, size: 256, offset: 7296)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1034, file: !19, line: 1253, baseType: !4023, size: 128, offset: 7552)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4024, line: 21, baseType: !4025)
!4024 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4024, line: 19, size: 128, elements: !4026)
!4026 = !{!4027}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4025, file: !4024, line: 20, baseType: !4028, size: 128)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 128, elements: !237)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1034, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1034, file: !19, line: 1261, baseType: !319, size: 256, offset: 7744)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1034, file: !19, line: 1267, baseType: !162, size: 64, offset: 8000)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1034, file: !19, line: 1269, baseType: !980, size: 64, offset: 8064)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1034, file: !19, line: 1271, baseType: !4034, size: 448, offset: 8128)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1624, line: 63, size: 448, elements: !4035)
!4035 = !{!4036, !4041, !4042, !4043, !4044, !4045, !4046}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4034, file: !1624, line: 64, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!159, !4040, !1622}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4034, file: !1624, line: 66, baseType: !4037, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4034, file: !1624, line: 69, baseType: !846, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4034, file: !1624, line: 70, baseType: !114, size: 32, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4034, file: !1624, line: 71, baseType: !7, size: 32, offset: 224)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4034, file: !1624, line: 74, baseType: !371, size: 128, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4034, file: !1624, line: 85, baseType: !4047, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1034, file: !19, line: 1274, baseType: !323, size: 64, offset: 8576)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1034, file: !19, line: 1280, baseType: !323, size: 64, offset: 8640)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1034, file: !19, line: 1283, baseType: !114, size: 32, offset: 8704)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1034, file: !19, line: 1286, baseType: !2975, size: 32, offset: 8736)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1034, file: !19, line: 1289, baseType: !1436, size: 64, offset: 8768)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1034, file: !19, line: 1290, baseType: !1483, size: 64, offset: 8832)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1034, file: !19, line: 1297, baseType: !2433, size: 64, offset: 8896)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1034, file: !19, line: 1304, baseType: !4056, size: 64, offset: 8960)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4057, line: 49, size: 64, elements: !4058)
!4057 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4058 = !{!4059}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4056, file: !4057, line: 50, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4057, line: 41, size: 512, align: 512, elements: !4062)
!4062 = !{!4063, !4064, !4069}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4061, file: !4057, line: 43, baseType: !774, size: 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4061, file: !4057, line: 45, baseType: !4065, size: 192, offset: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4057, line: 29, size: 192, elements: !4066)
!4066 = !{!4067, !4068}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4065, file: !4057, line: 30, baseType: !371, size: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4065, file: !4057, line: 32, baseType: !846, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4061, file: !4057, line: 46, baseType: !846, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1034, file: !19, line: 1305, baseType: !4056, size: 64, offset: 9024)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1034, file: !19, line: 1306, baseType: !1337, size: 128, align: 64, offset: 9088)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1034, file: !19, line: 1307, baseType: !1375, size: 256, offset: 9216)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1034, file: !19, line: 1309, baseType: !319, size: 256, offset: 9472)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1034, file: !19, line: 1314, baseType: !114, size: 32, offset: 9728)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1034, file: !19, line: 1317, baseType: !774, size: 32, align: 512, offset: 10240)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1034, file: !19, line: 1318, baseType: !371, size: 128, offset: 10304)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1034, file: !19, line: 1320, baseType: !774, size: 32, offset: 10432)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1034, file: !19, line: 1321, baseType: !371, size: 128, offset: 10496)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1028, file: !1029, line: 73, baseType: !114, size: 32, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1028, file: !1029, line: 74, baseType: !4081, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2280, line: 42, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !982, file: !926, line: 141, baseType: !4085, size: 64, offset: 704)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!114, !1685, !388}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !982, file: !926, line: 142, baseType: !4089, size: 64, offset: 768)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!924, !924, !4092}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !925, file: !926, line: 96, baseType: !1033, size: 64, offset: 832)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !925, file: !926, line: 97, baseType: !159, size: 64, offset: 896)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !925, file: !926, line: 98, baseType: !147, size: 64, offset: 960)
!4097 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !926, line: 100, baseType: !4098, size: 128, offset: 1024)
!4098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !926, line: 100, size: 128, elements: !4099)
!4099 = !{!4100, !4101}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4098, file: !926, line: 101, baseType: !371, size: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4098, file: !926, line: 102, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !925, file: !926, line: 104, baseType: !371, size: 128, offset: 1152)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !925, file: !926, line: 105, baseType: !371, size: 128, offset: 1280)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !925, file: !926, line: 113, baseType: !4106, size: 128, offset: 1408)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !926, line: 109, size: 128, elements: !4107)
!4107 = !{!4108, !4109, !4110}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4106, file: !926, line: 110, baseType: !1361, size: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4106, file: !926, line: 111, baseType: !940, size: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4106, file: !926, line: 112, baseType: !1337, size: 128, align: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !918, file: !19, line: 1968, baseType: !4112, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!162, !924, !889, !4115}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4117, line: 10, size: 128, elements: !4118)
!4117 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4118 = !{!4119, !4120}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4116, file: !4117, line: 11, baseType: !1165, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4116, file: !4117, line: 12, baseType: !147, size: 64, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !918, file: !19, line: 1969, baseType: !4122, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!114, !4081, !889, !114}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !918, file: !19, line: 1970, baseType: !4126, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!912, !889, !114, !388}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !918, file: !19, line: 1972, baseType: !4130, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!114, !924, !810, !114}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !918, file: !19, line: 1974, baseType: !4134, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!114, !4081, !889, !924, !852, !388}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !918, file: !19, line: 1976, baseType: !4138, size: 64, offset: 384)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!114, !924, !889, !924}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !918, file: !19, line: 1977, baseType: !4142, size: 64, offset: 448)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!114, !889, !924}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !918, file: !19, line: 1978, baseType: !4146, size: 64, offset: 512)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!114, !4081, !889, !924, !162}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !918, file: !19, line: 1980, baseType: !4150, size: 64, offset: 576)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!114, !4081, !889, !924, !852}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !918, file: !19, line: 1982, baseType: !4142, size: 64, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !918, file: !19, line: 1983, baseType: !4155, size: 64, offset: 704)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!114, !4081, !889, !924, !852, !1038}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !918, file: !19, line: 1985, baseType: !4159, size: 64, offset: 768)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!114, !4081, !889, !924, !889, !924, !7}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !918, file: !19, line: 1987, baseType: !4163, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!114, !4081, !924, !4166}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !4168)
!4168 = !{!4169, !4170, !4171, !4181, !4190, !4191, !4196, !4197, !4198}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4167, file: !19, line: 227, baseType: !7, size: 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4167, file: !19, line: 228, baseType: !852, size: 16, offset: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, scope: !4167, file: !19, line: 241, baseType: !4172, size: 32, offset: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4167, file: !19, line: 241, size: 32, elements: !4173)
!4173 = !{!4174, !4175}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4172, file: !19, line: 242, baseType: !895, size: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4172, file: !19, line: 243, baseType: !4176, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4177, line: 16, baseType: !4178)
!4177 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4177, line: 14, size: 32, elements: !4179)
!4179 = !{!4180}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4178, file: !4177, line: 15, baseType: !900, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, scope: !4167, file: !19, line: 245, baseType: !4182, size: 32, offset: 96)
!4182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4167, file: !19, line: 245, size: 32, elements: !4183)
!4183 = !{!4184, !4185}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4182, file: !19, line: 246, baseType: !904, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4182, file: !19, line: 247, baseType: !4186, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4177, line: 20, baseType: !4187)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4177, line: 18, size: 32, elements: !4188)
!4188 = !{!4189}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4187, file: !4177, line: 19, baseType: !908, size: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4167, file: !19, line: 249, baseType: !1043, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4167, file: !19, line: 250, baseType: !4192, size: 128, offset: 192)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1616, line: 13, size: 128, elements: !4193)
!4193 = !{!4194, !4195}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4192, file: !1616, line: 14, baseType: !1615, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4192, file: !1616, line: 15, baseType: !846, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4167, file: !19, line: 251, baseType: !4192, size: 128, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4167, file: !19, line: 252, baseType: !4192, size: 128, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4167, file: !19, line: 259, baseType: !2196, size: 64, offset: 576)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !918, file: !19, line: 1988, baseType: !4200, size: 64, offset: 896)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!114, !4081, !1685, !4203, !148, !7}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4205, line: 22, size: 1280, elements: !4206)
!4205 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4204, file: !4205, line: 23, baseType: !148, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4204, file: !4205, line: 24, baseType: !852, size: 16, offset: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4204, file: !4205, line: 25, baseType: !7, size: 32, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4204, file: !4205, line: 26, baseType: !2318, size: 32, offset: 96)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4204, file: !4205, line: 27, baseType: !701, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4204, file: !4205, line: 28, baseType: !701, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4204, file: !4205, line: 41, baseType: !701, size: 64, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4204, file: !4205, line: 42, baseType: !1038, size: 32, offset: 320)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4204, file: !4205, line: 43, baseType: !1038, size: 32, offset: 352)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4204, file: !4205, line: 44, baseType: !895, size: 32, offset: 384)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4204, file: !4205, line: 45, baseType: !904, size: 32, offset: 416)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4204, file: !4205, line: 46, baseType: !1043, size: 64, offset: 448)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4204, file: !4205, line: 47, baseType: !4192, size: 128, offset: 512)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4204, file: !4205, line: 48, baseType: !4192, size: 128, offset: 640)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4204, file: !4205, line: 49, baseType: !4192, size: 128, offset: 768)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4204, file: !4205, line: 50, baseType: !4192, size: 128, offset: 896)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4204, file: !4205, line: 51, baseType: !701, size: 64, offset: 1024)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4204, file: !4205, line: 52, baseType: !701, size: 64, offset: 1088)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4204, file: !4205, line: 53, baseType: !148, size: 32, offset: 1152)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4204, file: !4205, line: 54, baseType: !148, size: 32, offset: 1184)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4204, file: !4205, line: 55, baseType: !701, size: 64, offset: 1216)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !918, file: !19, line: 1990, baseType: !4229, size: 64, offset: 960)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!842, !924, !810, !857}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !918, file: !19, line: 1991, baseType: !4233, size: 64, offset: 1024)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!114, !889, !4236, !701, !701}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !918, file: !19, line: 1993, baseType: !4239, size: 64, offset: 1088)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!114, !889, !114}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !918, file: !19, line: 1994, baseType: !4243, size: 64, offset: 1152)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!114, !889, !924, !2196, !7, !852}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !918, file: !19, line: 1997, baseType: !4247, size: 64, offset: 1216)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!114, !4081, !889, !2196, !852}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !918, file: !19, line: 1999, baseType: !4251, size: 64, offset: 1280)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!912, !4081, !924, !114}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !918, file: !19, line: 2001, baseType: !4255, size: 64, offset: 1344)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!114, !4081, !924, !912, !114}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !918, file: !19, line: 2003, baseType: !4259, size: 64, offset: 1408)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!114, !4081, !924, !4262}
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !918, file: !19, line: 2005, baseType: !4265, size: 64, offset: 1472)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!114, !924, !4262}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !918, file: !19, line: 2006, baseType: !4269, size: 64, offset: 1536)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!4272, !889}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !4274)
!4274 = !{!4275, !4276}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4273, file: !19, line: 3193, baseType: !2553, size: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4273, file: !19, line: 3194, baseType: !148, size: 32, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !890, file: !19, line: 655, baseType: !1033, size: 64, offset: 448)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !890, file: !19, line: 656, baseType: !885, size: 64, offset: 512)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !890, file: !19, line: 659, baseType: !147, size: 64, offset: 576)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !890, file: !19, line: 663, baseType: !159, size: 64, offset: 640)
!4281 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !19, line: 671, baseType: !4282, size: 32, offset: 704)
!4282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !19, line: 671, size: 32, elements: !4283)
!4283 = !{!4284, !4286}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4282, file: !19, line: 672, baseType: !4285, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4282, file: !19, line: 673, baseType: !7, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !890, file: !19, line: 675, baseType: !1038, size: 32, offset: 736)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !890, file: !19, line: 676, baseType: !1043, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !890, file: !19, line: 677, baseType: !4192, size: 128, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !890, file: !19, line: 678, baseType: !4192, size: 128, offset: 960)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !890, file: !19, line: 679, baseType: !4192, size: 128, offset: 1088)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !890, file: !19, line: 680, baseType: !774, size: 32, offset: 1216)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !890, file: !19, line: 681, baseType: !363, size: 16, offset: 1248)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !890, file: !19, line: 682, baseType: !355, size: 8, offset: 1264)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !890, file: !19, line: 683, baseType: !355, size: 8, offset: 1272)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !890, file: !19, line: 684, baseType: !1763, size: 64, offset: 1280)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !890, file: !19, line: 691, baseType: !159, size: 64, offset: 1344)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !890, file: !19, line: 692, baseType: !1775, size: 320, offset: 1408)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !890, file: !19, line: 694, baseType: !159, size: 64, offset: 1728)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !890, file: !19, line: 695, baseType: !159, size: 64, offset: 1792)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !890, file: !19, line: 697, baseType: !1361, size: 128, offset: 1856)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !890, file: !19, line: 698, baseType: !371, size: 128, offset: 1984)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !890, file: !19, line: 707, baseType: !371, size: 128, offset: 2112)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !890, file: !19, line: 708, baseType: !371, size: 128, offset: 2240)
!4305 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !19, line: 709, baseType: !4306, size: 128, offset: 2368)
!4306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !19, line: 709, size: 128, elements: !4307)
!4307 = !{!4308, !4309}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4306, file: !19, line: 710, baseType: !1483, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4306, file: !19, line: 711, baseType: !1337, size: 128, align: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !890, file: !19, line: 713, baseType: !325, size: 64, offset: 2496)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !890, file: !19, line: 714, baseType: !325, size: 64, offset: 2560)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !890, file: !19, line: 715, baseType: !347, size: 32, offset: 2624)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !890, file: !19, line: 716, baseType: !347, size: 32, offset: 2656)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !890, file: !19, line: 717, baseType: !347, size: 32, offset: 2688)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !890, file: !19, line: 719, baseType: !347, size: 32, offset: 2720)
!4316 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !19, line: 721, baseType: !4317, size: 64, offset: 2752)
!4317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !19, line: 721, size: 64, elements: !4318)
!4318 = !{!4319, !4320}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4317, file: !19, line: 722, baseType: !2464, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4317, file: !19, line: 723, baseType: !1506, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !890, file: !19, line: 725, baseType: !4322, size: 64, offset: 2816)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !890, file: !19, line: 726, baseType: !886, size: 1536, align: 64, offset: 2880)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !890, file: !19, line: 727, baseType: !371, size: 128, offset: 4416)
!4326 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !19, line: 728, baseType: !4327, size: 64, offset: 4544)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !19, line: 728, size: 64, elements: !4328)
!4328 = !{!4329, !4330, !4333, !4334}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4327, file: !19, line: 729, baseType: !2925, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4327, file: !19, line: 730, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4327, file: !19, line: 731, baseType: !810, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4327, file: !19, line: 732, baseType: !7, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !890, file: !19, line: 735, baseType: !150, size: 32, offset: 4608)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !890, file: !19, line: 738, baseType: !150, size: 32, offset: 4640)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !890, file: !19, line: 739, baseType: !4019, size: 64, offset: 4672)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !890, file: !19, line: 750, baseType: !147, size: 64, offset: 4736)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !886, file: !19, line: 474, baseType: !2553, size: 128, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !886, file: !19, line: 475, baseType: !1775, size: 320, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !886, file: !19, line: 476, baseType: !1627, size: 32, offset: 512)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !886, file: !19, line: 477, baseType: !347, size: 32, offset: 544)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !886, file: !19, line: 482, baseType: !2059, size: 128, offset: 576)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !886, file: !19, line: 483, baseType: !159, size: 64, offset: 704)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !886, file: !19, line: 484, baseType: !159, size: 64, offset: 768)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !886, file: !19, line: 485, baseType: !4347, size: 64, offset: 832)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4349)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !4350)
!4350 = !{!4351, !4355, !4425, !4429, !4433, !4439, !4443, !4447, !4452, !4456, !4460, !4464, !4465, !4469, !4473, !4477, !4482, !4486, !4493, !4494}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4349, file: !19, line: 405, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!114, !2712, !1518}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4349, file: !19, line: 406, baseType: !4356, size: 64, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!114, !2196, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !43, line: 293, size: 1536, elements: !4361)
!4361 = !{!4362, !4392, !4406}
!4362 = !DIDerivedType(tag: DW_TAG_member, scope: !4360, file: !43, line: 295, baseType: !4363, size: 512)
!4363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4360, file: !43, line: 295, size: 512, elements: !4364)
!4364 = !{!4365, !4391}
!4365 = !DIDerivedType(tag: DW_TAG_member, scope: !4363, file: !43, line: 296, baseType: !4366, size: 448)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4363, file: !43, line: 296, size: 448, elements: !4367)
!4367 = !{!4368, !4369, !4378, !4379, !4380, !4389, !4390}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4366, file: !43, line: 298, baseType: !159, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, scope: !4366, file: !43, line: 299, baseType: !4370, size: 128, offset: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4366, file: !43, line: 299, size: 128, elements: !4371)
!4371 = !{!4372, !4373}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4370, file: !43, line: 300, baseType: !371, size: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, scope: !4370, file: !43, line: 302, baseType: !4374, size: 128)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4370, file: !43, line: 302, size: 128, elements: !4375)
!4375 = !{!4376, !4377}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4374, file: !43, line: 303, baseType: !147, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4374, file: !43, line: 305, baseType: !7, size: 32, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4366, file: !43, line: 310, baseType: !885, size: 64, offset: 192)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4366, file: !43, line: 311, baseType: !159, size: 64, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, scope: !4366, file: !43, line: 312, baseType: !4381, size: 64, offset: 320)
!4381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4366, file: !43, line: 312, size: 64, elements: !4382)
!4382 = !{!4383, !4384}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4381, file: !43, line: 313, baseType: !147, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4381, file: !43, line: 314, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !43, line: 257, baseType: !4386)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 255, size: 64, elements: !4387)
!4387 = !{!4388}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4386, file: !43, line: 256, baseType: !159, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4366, file: !43, line: 316, baseType: !347, size: 32, offset: 384)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4366, file: !43, line: 317, baseType: !347, size: 32, offset: 416)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4363, file: !43, line: 323, baseType: !2713, size: 512, align: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, scope: !4360, file: !43, line: 325, baseType: !4393, size: 512, offset: 512)
!4393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4360, file: !43, line: 325, size: 512, elements: !4394)
!4394 = !{!4395, !4405}
!4395 = !DIDerivedType(tag: DW_TAG_member, scope: !4393, file: !43, line: 326, baseType: !4396, size: 320)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4393, file: !43, line: 326, size: 320, elements: !4397)
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4403, !4404}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4396, file: !43, line: 327, baseType: !159, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4396, file: !43, line: 328, baseType: !159, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4396, file: !43, line: 329, baseType: !159, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4396, file: !43, line: 331, baseType: !347, size: 32, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4396, file: !43, line: 332, baseType: !347, size: 32, offset: 224)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4396, file: !43, line: 333, baseType: !347, size: 32, offset: 256)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4396, file: !43, line: 335, baseType: !7, size: 32, offset: 288)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4393, file: !43, line: 339, baseType: !2713, size: 512, align: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, scope: !4360, file: !43, line: 341, baseType: !4407, size: 512, offset: 1024)
!4407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4360, file: !43, line: 341, size: 512, elements: !4408)
!4408 = !{!4409, !4418, !4424}
!4409 = !DIDerivedType(tag: DW_TAG_member, scope: !4407, file: !43, line: 342, baseType: !4410, size: 384)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4407, file: !43, line: 342, size: 384, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415, !4416, !4417}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4410, file: !43, line: 343, baseType: !159, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4410, file: !43, line: 344, baseType: !159, size: 64, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4410, file: !43, line: 346, baseType: !147, size: 64, offset: 128)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4410, file: !43, line: 347, baseType: !147, size: 64, offset: 192)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4410, file: !43, line: 348, baseType: !147, size: 64, offset: 256)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4410, file: !43, line: 349, baseType: !147, size: 64, offset: 320)
!4418 = !DIDerivedType(tag: DW_TAG_member, scope: !4407, file: !43, line: 352, baseType: !4419, size: 256)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4407, file: !43, line: 352, size: 256, elements: !4420)
!4420 = !{!4421, !4422, !4423}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4419, file: !43, line: 353, baseType: !159, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4419, file: !43, line: 354, baseType: !159, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4419, file: !43, line: 356, baseType: !371, size: 128, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4407, file: !43, line: 359, baseType: !2713, size: 512, align: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4349, file: !19, line: 409, baseType: !4426, size: 64, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!114, !885, !1518}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4349, file: !19, line: 412, baseType: !4430, size: 64, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!388, !885, !4359}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4349, file: !19, line: 414, baseType: !4434, size: 64, offset: 256)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !4437}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !19, line: 310, flags: DIFlagFwdDecl)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4349, file: !19, line: 416, baseType: !4440, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!114, !2196, !885, !1043, !7, !3771, !2940}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4349, file: !19, line: 419, baseType: !4444, size: 64, offset: 384)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!114, !2196, !885, !1043, !7, !7, !2712, !147}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4349, file: !19, line: 424, baseType: !4448, size: 64, offset: 448)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!4451, !885, !4451}
!4451 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !326, line: 131, baseType: !701)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4349, file: !19, line: 425, baseType: !4453, size: 64, offset: 512)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{null, !4359, !857, !857}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4349, file: !19, line: 426, baseType: !4457, size: 64, offset: 576)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!388, !4359, !1627}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4349, file: !19, line: 427, baseType: !4461, size: 64, offset: 640)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{null, !4359}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4349, file: !19, line: 428, baseType: !2483, size: 64, offset: 704)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4349, file: !19, line: 433, baseType: !4466, size: 64, offset: 768)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!114, !885, !4359, !4359, !79}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4349, file: !19, line: 435, baseType: !4470, size: 64, offset: 832)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!114, !4359}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4349, file: !19, line: 436, baseType: !4474, size: 64, offset: 896)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!388, !4359, !857, !857}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4349, file: !19, line: 438, baseType: !4478, size: 64, offset: 960)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !4359, !4481, !4481}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4349, file: !19, line: 439, baseType: !4483, size: 64, offset: 1024)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!114, !885, !2712}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4349, file: !19, line: 442, baseType: !4487, size: 64, offset: 1088)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!114, !4490, !2196, !4492}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !19, line: 66, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4349, file: !19, line: 444, baseType: !2932, size: 64, offset: 1152)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4349, file: !19, line: 445, baseType: !4495, size: 64, offset: 1216)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!114, !2486, !2508}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !886, file: !19, line: 486, baseType: !159, size: 64, offset: 896)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !886, file: !19, line: 487, baseType: !1775, size: 320, offset: 960)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !886, file: !19, line: 488, baseType: !2975, size: 32, offset: 1280)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !886, file: !19, line: 489, baseType: !774, size: 32, offset: 1312)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !886, file: !19, line: 490, baseType: !371, size: 128, offset: 1344)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !886, file: !19, line: 491, baseType: !147, size: 64, offset: 1472)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !876, file: !836, line: 180, baseType: !4505, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!842, !2196, !767, !875, !810, !1043, !857}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !876, file: !836, line: 182, baseType: !4505, size: 64, offset: 384)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !876, file: !836, line: 184, baseType: !4510, size: 64, offset: 448)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!114, !2196, !767, !875, !2603}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !864, file: !836, line: 90, baseType: !4514, size: 64, offset: 192)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !864, file: !836, line: 91, baseType: !4516, size: 64, offset: 256)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !826, file: !762, line: 120, baseType: !4518, size: 64, offset: 192)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!4521, !793}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4523)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !87, line: 39, size: 384, elements: !4524)
!4524 = !{!4525, !4526, !4528, !4532, !4538, !4542}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4523, file: !87, line: 40, baseType: !86, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4523, file: !87, line: 41, baseType: !4527, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4523, file: !87, line: 42, baseType: !4529, size: 64, offset: 128)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!147}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4523, file: !87, line: 43, baseType: !4533, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!3064, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !87, line: 19, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4523, file: !87, line: 44, baseType: !4539, size: 64, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!3064}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4523, file: !87, line: 45, baseType: !1165, size: 64, offset: 320)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !826, file: !762, line: 121, baseType: !4544, size: 64, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!3064, !793}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !826, file: !762, line: 122, baseType: !4548, size: 64, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{null, !793, !4551, !4552}
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !761, file: !762, line: 70, baseType: !4554, size: 64, offset: 384)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1057, line: 190, size: 1152, elements: !4556)
!4556 = !{!4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4648, !4649, !4650, !4651, !4652, !4655}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4555, file: !1057, line: 191, baseType: !347, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4555, file: !1057, line: 192, baseType: !347, size: 32, offset: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4555, file: !1057, line: 202, baseType: !4554, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4555, file: !1057, line: 203, baseType: !162, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4555, file: !1057, line: 205, baseType: !1229, size: 192, align: 64, offset: 192)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4555, file: !1057, line: 207, baseType: !3064, size: 64, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4555, file: !1057, line: 208, baseType: !7, size: 32, offset: 448)
!4564 = !DIDerivedType(tag: DW_TAG_member, scope: !4555, file: !1057, line: 209, baseType: !4565, size: 256, offset: 512)
!4565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4555, file: !1057, line: 209, size: 256, elements: !4566)
!4566 = !{!4567, !4576, !4580}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4565, file: !1057, line: 210, baseType: !4568, size: 256)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1057, line: 153, size: 256, elements: !4569)
!4569 = !{!4570, !4571, !4572, !4575}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4568, file: !1057, line: 154, baseType: !159, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4568, file: !1057, line: 156, baseType: !2062, size: 64, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4568, file: !1057, line: 162, baseType: !4573, size: 64, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1057, line: 162, flags: DIFlagFwdDecl)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4568, file: !1057, line: 167, baseType: !159, size: 64, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4565, file: !1057, line: 211, baseType: !4577, size: 64)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1057, line: 170, size: 64, elements: !4578)
!4578 = !{!4579}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4577, file: !1057, line: 171, baseType: !4554, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4565, file: !1057, line: 212, baseType: !4581, size: 256)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1057, line: 174, size: 256, elements: !4582)
!4582 = !{!4583, !4643, !4646, !4647}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4581, file: !1057, line: 175, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4586)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1057, line: 271, size: 768, elements: !4587)
!4587 = !{!4588, !4608, !4612, !4616, !4620, !4624, !4628, !4632, !4633, !4634, !4635, !4639}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4586, file: !1057, line: 276, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!114, !4592}
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1057, line: 251, size: 1216, elements: !4594)
!4594 = !{!4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4593, file: !1057, line: 253, baseType: !4554, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4593, file: !1057, line: 254, baseType: !2196, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4593, file: !1057, line: 255, baseType: !1555, size: 64, offset: 128)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4593, file: !1057, line: 256, baseType: !147, size: 64, offset: 192)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4593, file: !1057, line: 259, baseType: !319, size: 256, offset: 256)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4593, file: !1057, line: 260, baseType: !319, size: 256, offset: 512)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4593, file: !1057, line: 261, baseType: !114, size: 32, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4593, file: !1057, line: 262, baseType: !371, size: 128, offset: 832)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4593, file: !1057, line: 263, baseType: !810, size: 64, offset: 960)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4593, file: !1057, line: 265, baseType: !857, size: 64, offset: 1024)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4593, file: !1057, line: 266, baseType: !388, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4593, file: !1057, line: 267, baseType: !388, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4593, file: !1057, line: 268, baseType: !2648, size: 64, offset: 1152)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4586, file: !1057, line: 277, baseType: !4609, size: 64, offset: 64)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{null, !4592}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4586, file: !1057, line: 290, baseType: !4613, size: 64, offset: 128)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!114, !1555, !147}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4586, file: !1057, line: 292, baseType: !4617, size: 64, offset: 192)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!147, !1555, !2477}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4586, file: !1057, line: 293, baseType: !4621, size: 64, offset: 256)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!147, !1555, !147, !2477}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4586, file: !1057, line: 294, baseType: !4625, size: 64, offset: 320)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{null, !1555, !147}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4586, file: !1057, line: 296, baseType: !4629, size: 64, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!842, !4592, !810, !857, !1043}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4586, file: !1057, line: 306, baseType: !857, size: 64, offset: 448)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4586, file: !1057, line: 313, baseType: !388, size: 8, offset: 512)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4586, file: !1057, line: 314, baseType: !4629, size: 64, offset: 576)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4586, file: !1057, line: 317, baseType: !4636, size: 64, offset: 640)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!2590, !4592, !2592}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4586, file: !1057, line: 320, baseType: !4640, size: 64, offset: 704)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!114, !4592, !2603}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4581, file: !1057, line: 176, baseType: !4644, size: 64, offset: 64)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1057, line: 35, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4581, file: !1057, line: 177, baseType: !1043, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4581, file: !1057, line: 178, baseType: !4554, size: 64, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4555, file: !1057, line: 215, baseType: !147, size: 64, offset: 768)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4555, file: !1057, line: 221, baseType: !701, size: 64, offset: 832)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4555, file: !1057, line: 223, baseType: !363, size: 16, offset: 896)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4555, file: !1057, line: 224, baseType: !852, size: 16, offset: 912)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4555, file: !1057, line: 225, baseType: !4653, size: 64, offset: 960)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1057, line: 36, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4555, file: !1057, line: 227, baseType: !1337, size: 128, align: 64, offset: 1024)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !761, file: !762, line: 71, baseType: !4657, size: 32, offset: 448)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4658, line: 19, size: 32, elements: !4659)
!4658 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4659 = !{!4660}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4657, file: !4658, line: 20, baseType: !1895, size: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !761, file: !762, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !761, file: !762, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !761, file: !762, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !761, file: !762, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !761, file: !762, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !758, file: !99, line: 707, baseType: !757, size: 64, offset: 512)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !758, file: !99, line: 709, baseType: !4668, size: 64, offset: 576)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !99, line: 37, flags: DIFlagFwdDecl)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !758, file: !99, line: 711, baseType: !162, size: 64, offset: 640)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !99, line: 712, baseType: !4672, size: 64, offset: 704)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4674)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !99, line: 89, size: 384, elements: !4675)
!4675 = !{!4676, !4677, !4678, !4684, !4689, !4693}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4674, file: !99, line: 90, baseType: !162, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4674, file: !99, line: 91, baseType: !861, size: 64, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4674, file: !99, line: 92, baseType: !4679, size: 64, offset: 128)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!114, !4682, !805}
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4674, file: !99, line: 93, baseType: !4685, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!810, !4682, !4688, !4551, !4552}
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4674, file: !99, line: 95, baseType: !4690, size: 64, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{null, !757}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4674, file: !99, line: 97, baseType: !4694, size: 64, offset: 320)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4696)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !106, line: 286, size: 1472, elements: !4697)
!4697 = !{!4698, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4696, file: !106, line: 287, baseType: !4699, size: 64)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!114, !757}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4696, file: !106, line: 288, baseType: !4690, size: 64, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4696, file: !106, line: 289, baseType: !4699, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4696, file: !106, line: 290, baseType: !4699, size: 64, offset: 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4696, file: !106, line: 291, baseType: !4699, size: 64, offset: 256)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4696, file: !106, line: 292, baseType: !4699, size: 64, offset: 320)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4696, file: !106, line: 293, baseType: !4699, size: 64, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4696, file: !106, line: 294, baseType: !4699, size: 64, offset: 448)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4696, file: !106, line: 295, baseType: !4699, size: 64, offset: 512)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4696, file: !106, line: 296, baseType: !4699, size: 64, offset: 576)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4696, file: !106, line: 297, baseType: !4699, size: 64, offset: 640)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4696, file: !106, line: 298, baseType: !4699, size: 64, offset: 704)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4696, file: !106, line: 299, baseType: !4699, size: 64, offset: 768)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4696, file: !106, line: 300, baseType: !4699, size: 64, offset: 832)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4696, file: !106, line: 301, baseType: !4699, size: 64, offset: 896)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4696, file: !106, line: 302, baseType: !4699, size: 64, offset: 960)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4696, file: !106, line: 303, baseType: !4699, size: 64, offset: 1024)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4696, file: !106, line: 304, baseType: !4699, size: 64, offset: 1088)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4696, file: !106, line: 305, baseType: !4699, size: 64, offset: 1152)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4696, file: !106, line: 306, baseType: !4699, size: 64, offset: 1216)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4696, file: !106, line: 307, baseType: !4699, size: 64, offset: 1280)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4696, file: !106, line: 308, baseType: !4699, size: 64, offset: 1344)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4696, file: !106, line: 309, baseType: !4699, size: 64, offset: 1408)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !758, file: !99, line: 714, baseType: !4725, size: 64, offset: 768)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4727)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4728, line: 80, size: 1344, elements: !4729)
!4728 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4729 = !{!4730, !4731, !4732, !4733, !4734, !4735, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4808}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4727, file: !4728, line: 81, baseType: !162, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4727, file: !4728, line: 82, baseType: !162, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4727, file: !4728, line: 83, baseType: !861, size: 64, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4727, file: !4728, line: 84, baseType: !861, size: 64, offset: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4727, file: !4728, line: 85, baseType: !861, size: 64, offset: 256)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4727, file: !4728, line: 87, baseType: !4736, size: 64, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!114, !757, !4739}
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !93, line: 96, size: 1152, elements: !4741)
!4741 = !{!4742, !4743, !4744, !4745, !4746, !4747, !4748, !4761, !4771, !4772, !4773, !4774, !4775, !4783, !4784, !4785, !4786, !4787, !4788}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4740, file: !93, line: 97, baseType: !162, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4740, file: !93, line: 98, baseType: !4725, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4740, file: !93, line: 100, baseType: !1071, size: 64, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4740, file: !93, line: 101, baseType: !162, size: 64, offset: 192)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4740, file: !93, line: 103, baseType: !388, size: 8, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4740, file: !93, line: 104, baseType: !92, size: 32, offset: 288)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4740, file: !93, line: 106, baseType: !4749, size: 64, offset: 320)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4751)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4752, line: 282, size: 1600, elements: !4753)
!4752 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4753 = !{!4754, !4755, !4756, !4760}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4751, file: !4752, line: 283, baseType: !227, size: 256)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4751, file: !4752, line: 284, baseType: !227, size: 256, offset: 256)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4751, file: !4752, line: 285, baseType: !4757, size: 1024, offset: 512)
!4757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !4758)
!4758 = !{!4759}
!4759 = !DISubrange(count: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4751, file: !4752, line: 286, baseType: !3064, size: 64, offset: 1536)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4740, file: !93, line: 107, baseType: !4762, size: 64, offset: 384)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4764)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4752, line: 217, size: 256, elements: !4765)
!4765 = !{!4766, !4767, !4769, !4770}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4764, file: !4752, line: 218, baseType: !4028, size: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4764, file: !4752, line: 219, baseType: !4768, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4752, line: 15, baseType: !159)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4764, file: !4752, line: 220, baseType: !150, size: 32, offset: 192)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4764, file: !4752, line: 221, baseType: !150, size: 32, offset: 224)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4740, file: !93, line: 109, baseType: !4699, size: 64, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4740, file: !93, line: 110, baseType: !4690, size: 64, offset: 512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4740, file: !93, line: 111, baseType: !4699, size: 64, offset: 576)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4740, file: !93, line: 112, baseType: !4690, size: 64, offset: 640)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4740, file: !93, line: 113, baseType: !4776, size: 64, offset: 704)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!114, !757, !4779}
!4779 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !106, line: 60, baseType: !4780)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !106, line: 58, size: 32, elements: !4781)
!4781 = !{!4782}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4780, file: !106, line: 59, baseType: !114, size: 32)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4740, file: !93, line: 114, baseType: !4699, size: 64, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4740, file: !93, line: 115, baseType: !861, size: 64, offset: 832)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4740, file: !93, line: 116, baseType: !861, size: 64, offset: 896)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4740, file: !93, line: 118, baseType: !4694, size: 64, offset: 960)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4740, file: !93, line: 119, baseType: !4690, size: 64, offset: 1024)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4740, file: !93, line: 121, baseType: !4789, size: 64, offset: 1088)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !93, line: 121, flags: DIFlagFwdDecl)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4727, file: !4728, line: 88, baseType: !4679, size: 64, offset: 384)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4727, file: !4728, line: 89, baseType: !4699, size: 64, offset: 448)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4727, file: !4728, line: 90, baseType: !4690, size: 64, offset: 512)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4727, file: !4728, line: 91, baseType: !4690, size: 64, offset: 576)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4727, file: !4728, line: 92, baseType: !4690, size: 64, offset: 640)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4727, file: !4728, line: 94, baseType: !4699, size: 64, offset: 704)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4727, file: !4728, line: 95, baseType: !4699, size: 64, offset: 768)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4727, file: !4728, line: 97, baseType: !4776, size: 64, offset: 832)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4727, file: !4728, line: 98, baseType: !4699, size: 64, offset: 896)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4727, file: !4728, line: 100, baseType: !4699, size: 64, offset: 960)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4727, file: !4728, line: 102, baseType: !4699, size: 64, offset: 1024)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4727, file: !4728, line: 103, baseType: !4690, size: 64, offset: 1088)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4727, file: !4728, line: 105, baseType: !4694, size: 64, offset: 1152)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4727, file: !4728, line: 107, baseType: !4805, size: 64, offset: 1216)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4807)
!4807 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4728, line: 107, flags: DIFlagFwdDecl)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4727, file: !4728, line: 109, baseType: !388, size: 8, offset: 1280)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !758, file: !99, line: 715, baseType: !4739, size: 64, offset: 832)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !758, file: !99, line: 717, baseType: !147, size: 64, offset: 896)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !758, file: !99, line: 719, baseType: !147, size: 64, offset: 960)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !758, file: !99, line: 721, baseType: !319, size: 256, offset: 1024)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !758, file: !99, line: 725, baseType: !4814, size: 448, offset: 1280)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !99, line: 517, size: 448, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4819}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4814, file: !99, line: 518, baseType: !371, size: 128)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4814, file: !99, line: 519, baseType: !371, size: 128, offset: 128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4814, file: !99, line: 520, baseType: !371, size: 128, offset: 256)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4814, file: !99, line: 521, baseType: !98, size: 32, offset: 384)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !758, file: !99, line: 726, baseType: !4821, size: 2496, offset: 1728)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !106, line: 663, size: 2496, elements: !4822)
!4822 = !{!4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4905, !4909}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4821, file: !106, line: 664, baseType: !4779, size: 32)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4821, file: !106, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4821, file: !106, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4821, file: !106, line: 667, baseType: !388, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4821, file: !106, line: 668, baseType: !388, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4821, file: !106, line: 669, baseType: !388, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4821, file: !106, line: 670, baseType: !388, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4821, file: !106, line: 671, baseType: !388, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4821, file: !106, line: 672, baseType: !388, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4821, file: !106, line: 673, baseType: !388, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4821, file: !106, line: 674, baseType: !388, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4821, file: !106, line: 675, baseType: !148, size: 32, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4821, file: !106, line: 676, baseType: !774, size: 32, offset: 96)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4821, file: !106, line: 678, baseType: !371, size: 128, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4821, file: !106, line: 679, baseType: !1091, size: 256, offset: 256)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4821, file: !106, line: 680, baseType: !4839, size: 64, offset: 512)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4841, line: 43, size: 1536, elements: !4842)
!4841 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4842 = !{!4843, !4844, !4845, !4846, !4847, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4840, file: !4841, line: 44, baseType: !162, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4840, file: !4841, line: 45, baseType: !114, size: 32, offset: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4840, file: !4841, line: 46, baseType: !371, size: 128, offset: 128)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4840, file: !4841, line: 47, baseType: !774, size: 32, offset: 256)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4840, file: !4841, line: 48, baseType: !4848, size: 64, offset: 320)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !106, line: 629, flags: DIFlagFwdDecl)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4840, file: !4841, line: 49, baseType: !1357, size: 320, offset: 384)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4840, file: !4841, line: 50, baseType: !159, size: 64, offset: 704)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4840, file: !4841, line: 51, baseType: !2010, size: 64, offset: 768)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4840, file: !4841, line: 52, baseType: !2010, size: 64, offset: 832)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4840, file: !4841, line: 53, baseType: !2010, size: 64, offset: 896)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4840, file: !4841, line: 54, baseType: !2010, size: 64, offset: 960)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4840, file: !4841, line: 55, baseType: !2010, size: 64, offset: 1024)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4840, file: !4841, line: 56, baseType: !159, size: 64, offset: 1088)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4840, file: !4841, line: 57, baseType: !159, size: 64, offset: 1152)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4840, file: !4841, line: 58, baseType: !159, size: 64, offset: 1216)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4840, file: !4841, line: 59, baseType: !159, size: 64, offset: 1280)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4840, file: !4841, line: 60, baseType: !159, size: 64, offset: 1344)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4840, file: !4841, line: 61, baseType: !757, size: 64, offset: 1408)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4840, file: !4841, line: 62, baseType: !388, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4840, file: !4841, line: 63, baseType: !388, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4821, file: !106, line: 681, baseType: !388, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4821, file: !106, line: 682, baseType: !388, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4821, file: !106, line: 683, baseType: !388, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4821, file: !106, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4821, file: !106, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4821, file: !106, line: 690, baseType: !2002, size: 512, offset: 640)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4821, file: !106, line: 691, baseType: !701, size: 64, offset: 1152)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4821, file: !106, line: 692, baseType: !1375, size: 256, offset: 1216)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4821, file: !106, line: 693, baseType: !1868, size: 192, offset: 1472)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4821, file: !106, line: 694, baseType: !4848, size: 64, offset: 1664)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4821, file: !106, line: 695, baseType: !347, size: 32, offset: 1728)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4821, file: !106, line: 696, baseType: !347, size: 32, offset: 1760)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4821, file: !106, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4821, file: !106, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4821, file: !106, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4821, file: !106, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4821, file: !106, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4821, file: !106, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4821, file: !106, line: 703, baseType: !388, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4821, file: !106, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4821, file: !106, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4821, file: !106, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4821, file: !106, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4821, file: !106, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4821, file: !106, line: 709, baseType: !7, size: 32, offset: 1824)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4821, file: !106, line: 710, baseType: !105, size: 32, offset: 1856)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4821, file: !106, line: 711, baseType: !113, size: 32, offset: 1888)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4821, file: !106, line: 712, baseType: !113, size: 32, offset: 1920)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4821, file: !106, line: 713, baseType: !114, size: 32, offset: 1952)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4821, file: !106, line: 714, baseType: !114, size: 32, offset: 1984)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4821, file: !106, line: 715, baseType: !701, size: 64, offset: 2048)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4821, file: !106, line: 716, baseType: !701, size: 64, offset: 2112)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4821, file: !106, line: 717, baseType: !701, size: 64, offset: 2176)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4821, file: !106, line: 718, baseType: !701, size: 64, offset: 2240)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4821, file: !106, line: 720, baseType: !4900, size: 64, offset: 2304)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !106, line: 632, size: 64, elements: !4902)
!4902 = !{!4903, !4904}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4901, file: !106, line: 633, baseType: !774, size: 32)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4901, file: !106, line: 634, baseType: !7, size: 32, offset: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4821, file: !106, line: 721, baseType: !4906, size: 64, offset: 2368)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{null, !757, !1137}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4821, file: !106, line: 722, baseType: !4910, size: 64, offset: 2432)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !106, line: 722, flags: DIFlagFwdDecl)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !758, file: !99, line: 727, baseType: !4913, size: 64, offset: 4224)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !106, line: 742, size: 1792, elements: !4915)
!4915 = !{!4916, !4917, !4918, !4922, !4923, !4924}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4914, file: !106, line: 743, baseType: !4696, size: 1472)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4914, file: !106, line: 744, baseType: !4699, size: 64, offset: 1472)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4914, file: !106, line: 745, baseType: !4919, size: 64, offset: 1536)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{null, !757, !388}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4914, file: !106, line: 746, baseType: !4699, size: 64, offset: 1600)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4914, file: !106, line: 747, baseType: !4690, size: 64, offset: 1664)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4914, file: !106, line: 748, baseType: !4690, size: 64, offset: 1728)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !758, file: !99, line: 736, baseType: !4926, size: 128, offset: 4288)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !99, line: 529, size: 128, elements: !4927)
!4927 = !{!4928, !4932}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4926, file: !99, line: 531, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4931, line: 13, flags: DIFlagFwdDecl)
!4931 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4926, file: !99, line: 532, baseType: !4933, size: 64, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !99, line: 49, flags: DIFlagFwdDecl)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !758, file: !99, line: 738, baseType: !4936, size: 64, offset: 4416)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4938)
!4938 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !99, line: 738, flags: DIFlagFwdDecl)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !758, file: !99, line: 740, baseType: !4940, size: 64, offset: 4480)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !758, file: !99, line: 741, baseType: !701, size: 64, offset: 4544)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !758, file: !99, line: 746, baseType: !701, size: 64, offset: 4608)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !758, file: !99, line: 747, baseType: !4944, size: 64, offset: 4672)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4946)
!4946 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !99, line: 747, flags: DIFlagFwdDecl)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !758, file: !99, line: 749, baseType: !4948, size: 64, offset: 4736)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !99, line: 428, size: 128, elements: !4950)
!4950 = !{!4951, !4952, !4953}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4949, file: !99, line: 433, baseType: !7, size: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4949, file: !99, line: 434, baseType: !7, size: 32, offset: 32)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4949, file: !99, line: 435, baseType: !159, size: 64, offset: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !758, file: !99, line: 751, baseType: !371, size: 128, offset: 4800)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !758, file: !99, line: 762, baseType: !4956, size: 64, offset: 4928)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !99, line: 762, flags: DIFlagFwdDecl)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !758, file: !99, line: 770, baseType: !4959, offset: 4992)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4960, line: 5, elements: !588)
!4960 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !758, file: !99, line: 772, baseType: !4962, size: 64, offset: 4992)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4964, line: 18, flags: DIFlagFwdDecl)
!4964 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !758, file: !99, line: 773, baseType: !4966, size: 64, offset: 5056)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4968, line: 41, size: 512, elements: !4969)
!4968 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4969 = !{!4970, !4971, !5065, !5066, !5067, !5068}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4967, file: !4968, line: 42, baseType: !4966, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4967, file: !4968, line: 43, baseType: !4972, size: 64, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4974)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4968, line: 125, size: 1408, elements: !4975)
!4975 = !{!4976, !4980, !4984, !4990, !4994, !4995, !5000, !5004, !5008, !5012, !5016, !5017, !5021, !5025, !5029, !5040, !5041, !5042, !5043, !5053, !5057, !5061}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4974, file: !4968, line: 126, baseType: !4977, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!4966, !4966}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4974, file: !4968, line: 127, baseType: !4981, size: 64, offset: 64)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !4966}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4974, file: !4968, line: 128, baseType: !4985, size: 64, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!388, !4988}
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4967)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4974, file: !4968, line: 129, baseType: !4991, size: 64, offset: 192)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!3064, !4988, !4682}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4974, file: !4968, line: 131, baseType: !4985, size: 64, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4974, file: !4968, line: 133, baseType: !4996, size: 64, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!4999, !4988}
!4999 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4968, line: 132, flags: DIFlagFwdDecl)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4974, file: !4968, line: 134, baseType: !5001, size: 64, offset: 384)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!388, !4988, !162}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4974, file: !4968, line: 136, baseType: !5005, size: 64, offset: 448)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!114, !4988, !162, !7, !147, !857}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4974, file: !4968, line: 141, baseType: !5009, size: 64, offset: 512)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!114, !4988, !162, !1451, !857}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4974, file: !4968, line: 144, baseType: !5013, size: 64, offset: 576)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!162, !4988}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4974, file: !4968, line: 145, baseType: !5013, size: 64, offset: 640)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4974, file: !4968, line: 146, baseType: !5018, size: 64, offset: 704)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!4966, !4988}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4974, file: !4968, line: 148, baseType: !5022, size: 64, offset: 768)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!4966, !4988, !4966}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4974, file: !4968, line: 151, baseType: !5026, size: 64, offset: 832)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!4966, !4988, !162}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4974, file: !4968, line: 153, baseType: !5030, size: 64, offset: 896)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!114, !4988, !162, !162, !7, !7, !5033}
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4968, line: 94, size: 640, elements: !5035)
!5035 = !{!5036, !5037, !5038}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5034, file: !4968, line: 95, baseType: !4966, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5034, file: !4968, line: 96, baseType: !7, size: 32, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5034, file: !4968, line: 97, baseType: !5039, size: 512, offset: 128)
!5039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 512, elements: !247)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4974, file: !4968, line: 158, baseType: !5022, size: 64, offset: 960)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4974, file: !4968, line: 161, baseType: !5018, size: 64, offset: 1024)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4974, file: !4968, line: 163, baseType: !4977, size: 64, offset: 1088)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4974, file: !4968, line: 164, baseType: !5044, size: 64, offset: 1152)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!114, !4988, !5047}
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4968, line: 73, size: 128, elements: !5049)
!5049 = !{!5050, !5051, !5052}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5048, file: !4968, line: 74, baseType: !7, size: 32)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5048, file: !4968, line: 75, baseType: !7, size: 32, offset: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5048, file: !4968, line: 76, baseType: !4988, size: 64, offset: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4974, file: !4968, line: 166, baseType: !5054, size: 64, offset: 1216)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!147, !4966, !114}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4974, file: !4968, line: 167, baseType: !5058, size: 64, offset: 1280)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!114, !4988, !7}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4974, file: !4968, line: 168, baseType: !5062, size: 64, offset: 1344)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!114, !4966}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4967, file: !4968, line: 44, baseType: !757, size: 64, offset: 128)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4967, file: !4968, line: 45, baseType: !371, size: 128, offset: 192)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4967, file: !4968, line: 46, baseType: !371, size: 128, offset: 320)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4967, file: !4968, line: 47, baseType: !355, size: 8, offset: 448)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !758, file: !99, line: 776, baseType: !114, size: 32, offset: 5120)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !758, file: !99, line: 778, baseType: !1038, size: 32, offset: 5152)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !758, file: !99, line: 779, baseType: !148, size: 32, offset: 5184)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !758, file: !99, line: 781, baseType: !774, size: 32, offset: 5216)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !758, file: !99, line: 782, baseType: !371, size: 128, offset: 5248)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !758, file: !99, line: 784, baseType: !5075, size: 64, offset: 5376)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5077)
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5078, line: 52, size: 768, elements: !5079)
!5078 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5079 = !{!5080, !5081, !5082, !5083, !5084, !5088, !5092, !5093, !5094, !5095, !5099, !5103}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5077, file: !5078, line: 53, baseType: !162, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5077, file: !5078, line: 55, baseType: !861, size: 64, offset: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5077, file: !5078, line: 56, baseType: !861, size: 64, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5077, file: !5078, line: 58, baseType: !4679, size: 64, offset: 192)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5077, file: !5078, line: 59, baseType: !5085, size: 64, offset: 256)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!810, !4682, !4688}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5077, file: !5078, line: 61, baseType: !5089, size: 64, offset: 320)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !5075}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5077, file: !5078, line: 62, baseType: !4690, size: 64, offset: 384)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5077, file: !5078, line: 64, baseType: !4699, size: 64, offset: 448)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5077, file: !5078, line: 66, baseType: !4521, size: 64, offset: 512)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5077, file: !5078, line: 67, baseType: !5096, size: 64, offset: 576)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!3064, !4682}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5077, file: !5078, line: 69, baseType: !5100, size: 64, offset: 640)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{null, !4682, !4551, !4552}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5077, file: !5078, line: 71, baseType: !4694, size: 64, offset: 704)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !758, file: !99, line: 785, baseType: !861, size: 64, offset: 5440)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !758, file: !99, line: 787, baseType: !4690, size: 64, offset: 5504)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !758, file: !99, line: 788, baseType: !5107, size: 64, offset: 5568)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !99, line: 46, flags: DIFlagFwdDecl)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !758, file: !99, line: 789, baseType: !5110, size: 64, offset: 5632)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !99, line: 48, flags: DIFlagFwdDecl)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !758, file: !99, line: 791, baseType: !5113, size: 64, offset: 5696)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !99, line: 597, size: 128, elements: !5115)
!5115 = !{!5116, !5117, !5118, !5119, !5120}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5114, file: !99, line: 598, baseType: !121, size: 32)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5114, file: !99, line: 599, baseType: !130, size: 32, offset: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5114, file: !99, line: 600, baseType: !135, size: 32, offset: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5114, file: !99, line: 601, baseType: !388, size: 8, offset: 96)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5114, file: !99, line: 602, baseType: !388, size: 8, offset: 104)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !758, file: !99, line: 793, baseType: !140, size: 32, offset: 5760)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !758, file: !99, line: 795, baseType: !388, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !758, file: !99, line: 796, baseType: !388, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !758, file: !99, line: 797, baseType: !388, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !758, file: !99, line: 798, baseType: !388, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !758, file: !99, line: 799, baseType: !388, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !684, file: !679, line: 676, baseType: !758, size: 5824, offset: 2240)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !684, file: !679, line: 677, baseType: !875, size: 64, offset: 8064)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !684, file: !679, line: 678, baseType: !875, size: 64, offset: 8128)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !684, file: !679, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !684, file: !679, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !678, file: !679, line: 325, baseType: !683, size: 64, offset: 192)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !678, file: !679, line: 327, baseType: !147, size: 64, offset: 256)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !678, file: !679, line: 328, baseType: !742, size: 64, offset: 320)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !678, file: !679, line: 329, baseType: !5136, size: 64, offset: 384)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !679, line: 76, size: 832, elements: !5138)
!5138 = !{!5139, !5140, !5141, !5144, !5145}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5137, file: !679, line: 77, baseType: !683, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5137, file: !679, line: 78, baseType: !371, size: 128, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5137, file: !679, line: 79, baseType: !5142, size: 64, offset: 192)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !679, line: 79, flags: DIFlagFwdDecl)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5137, file: !679, line: 80, baseType: !278, size: 8, offset: 256)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5137, file: !679, line: 81, baseType: !761, size: 512, offset: 320)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !678, file: !679, line: 331, baseType: !7, size: 32, offset: 448)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !678, file: !679, line: 332, baseType: !363, size: 16, offset: 480)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !678, file: !679, line: 333, baseType: !363, size: 16, offset: 496)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !678, file: !679, line: 334, baseType: !363, size: 16, offset: 512)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !678, file: !679, line: 335, baseType: !363, size: 16, offset: 528)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !678, file: !679, line: 336, baseType: !7, size: 32, offset: 544)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !678, file: !679, line: 337, baseType: !355, size: 8, offset: 576)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !678, file: !679, line: 338, baseType: !355, size: 8, offset: 584)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !678, file: !679, line: 344, baseType: !5155, size: 64, offset: 640)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !679, line: 319, flags: DIFlagFwdDecl)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !678, file: !679, line: 345, baseType: !677, size: 64, offset: 704)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !678, file: !679, line: 347, baseType: !148, size: 32, offset: 768)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !678, file: !679, line: 348, baseType: !355, size: 8, offset: 800)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !678, file: !679, line: 349, baseType: !355, size: 8, offset: 808)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !678, file: !679, line: 350, baseType: !355, size: 8, offset: 816)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !678, file: !679, line: 351, baseType: !355, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !678, file: !679, line: 352, baseType: !355, size: 8, offset: 832)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !678, file: !679, line: 353, baseType: !355, size: 8, offset: 840)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !678, file: !679, line: 354, baseType: !361, size: 16, offset: 848)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !678, file: !679, line: 355, baseType: !283, size: 64, offset: 896)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !678, file: !679, line: 357, baseType: !5168, size: 64, offset: 960)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !679, line: 918, size: 2368, elements: !5170)
!5170 = !{!5171, !5172, !5173, !5186, !5190, !5194, !5198, !5202, !5203, !5207, !5208, !5212, !5232, !5233, !5234, !5235, !5240}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5169, file: !679, line: 919, baseType: !371, size: 128)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5169, file: !679, line: 920, baseType: !162, size: 64, offset: 128)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5169, file: !679, line: 921, baseType: !5174, size: 64, offset: 192)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5176)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4752, line: 44, size: 320, elements: !5177)
!5177 = !{!5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5176, file: !4752, line: 45, baseType: !150, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5176, file: !4752, line: 45, baseType: !150, size: 32, offset: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !5176, file: !4752, line: 46, baseType: !150, size: 32, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !5176, file: !4752, line: 46, baseType: !150, size: 32, offset: 96)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5176, file: !4752, line: 47, baseType: !150, size: 32, offset: 128)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !5176, file: !4752, line: 47, baseType: !150, size: 32, offset: 160)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5176, file: !4752, line: 48, baseType: !4768, size: 64, offset: 192)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !5176, file: !4752, line: 49, baseType: !150, size: 32, offset: 256)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5169, file: !679, line: 922, baseType: !5187, size: 64, offset: 256)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!114, !677, !5174}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5169, file: !679, line: 923, baseType: !5191, size: 64, offset: 320)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !677}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5169, file: !679, line: 924, baseType: !5195, size: 64, offset: 384)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!114, !677, !4779}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5169, file: !679, line: 925, baseType: !5199, size: 64, offset: 448)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!114, !677}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5169, file: !679, line: 926, baseType: !5191, size: 64, offset: 512)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !5169, file: !679, line: 927, baseType: !5204, size: 64, offset: 576)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!114, !677, !114}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !5169, file: !679, line: 928, baseType: !5204, size: 64, offset: 640)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !5169, file: !679, line: 929, baseType: !5209, size: 64, offset: 704)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!148, !677}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !5169, file: !679, line: 930, baseType: !5213, size: 64, offset: 768)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5215)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !679, line: 837, size: 448, elements: !5216)
!5216 = !{!5217, !5223, !5227, !5228, !5229, !5230, !5231}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !5215, file: !679, line: 839, baseType: !5218, size: 64)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!5221, !677, !5222}
!5221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !679, line: 814, baseType: !7)
!5222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !679, line: 196, baseType: !7)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !5215, file: !679, line: 843, baseType: !5224, size: 64, offset: 64)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!5221, !677}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !5215, file: !679, line: 846, baseType: !5224, size: 64, offset: 128)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !5215, file: !679, line: 849, baseType: !5191, size: 64, offset: 192)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !5215, file: !679, line: 850, baseType: !5191, size: 64, offset: 256)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5215, file: !679, line: 853, baseType: !5191, size: 64, offset: 320)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !5215, file: !679, line: 856, baseType: !5191, size: 64, offset: 384)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5169, file: !679, line: 931, baseType: !861, size: 64, offset: 832)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5169, file: !679, line: 932, baseType: !861, size: 64, offset: 896)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5169, file: !679, line: 933, baseType: !4740, size: 1152, offset: 960)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !5169, file: !679, line: 934, baseType: !5236, size: 192, offset: 2112)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !679, line: 801, size: 192, elements: !5237)
!5237 = !{!5238, !5239}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5236, file: !679, line: 802, baseType: !774, size: 32)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5236, file: !679, line: 803, baseType: !371, size: 128, offset: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !5169, file: !679, line: 935, baseType: !388, size: 8, offset: 2304)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !678, file: !679, line: 358, baseType: !701, size: 64, offset: 1024)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !678, file: !679, line: 364, baseType: !4949, size: 128, offset: 1088)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !678, file: !679, line: 366, baseType: !5244, size: 32, offset: 1216)
!5244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !679, line: 171, baseType: !114)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !678, file: !679, line: 369, baseType: !355, size: 8, offset: 1248)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !678, file: !679, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !678, file: !679, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !678, file: !679, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !678, file: !679, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !678, file: !679, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !678, file: !679, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !678, file: !679, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !678, file: !679, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !678, file: !679, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !678, file: !679, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !678, file: !679, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !678, file: !679, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !678, file: !679, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !678, file: !679, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !678, file: !679, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !678, file: !679, line: 390, baseType: !7, size: 32, offset: 1280)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !678, file: !679, line: 391, baseType: !7, size: 32, offset: 1312)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !678, file: !679, line: 394, baseType: !5264, size: 64, offset: 1344)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !679, line: 316, flags: DIFlagFwdDecl)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !678, file: !679, line: 395, baseType: !361, size: 16, offset: 1408)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !678, file: !679, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !678, file: !679, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !678, file: !679, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !678, file: !679, line: 402, baseType: !5222, size: 32, offset: 1440)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !678, file: !679, line: 403, baseType: !758, size: 5824, offset: 1472)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !678, file: !679, line: 405, baseType: !114, size: 32, offset: 7296)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !678, file: !679, line: 411, baseType: !7, size: 32, offset: 7328)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !678, file: !679, line: 412, baseType: !5275, size: 5632, offset: 7360)
!5275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 5632, elements: !5276)
!5276 = !{!5277}
!5277 = !DISubrange(count: 11)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !678, file: !679, line: 413, baseType: !695, size: 512, offset: 12992)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !678, file: !679, line: 415, baseType: !388, size: 8, offset: 13504)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !678, file: !679, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !678, file: !679, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !678, file: !679, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !678, file: !679, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !678, file: !679, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !678, file: !679, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !678, file: !679, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !678, file: !679, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !678, file: !679, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !678, file: !679, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !678, file: !679, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !678, file: !679, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !678, file: !679, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !678, file: !679, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !678, file: !679, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !678, file: !679, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !678, file: !679, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !678, file: !679, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !678, file: !679, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !678, file: !679, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !678, file: !679, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !678, file: !679, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !678, file: !679, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !678, file: !679, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !678, file: !679, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !678, file: !679, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !678, file: !679, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !678, file: !679, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !678, file: !679, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !678, file: !679, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !678, file: !679, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !678, file: !679, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !678, file: !679, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !678, file: !679, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !678, file: !679, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !678, file: !679, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !678, file: !679, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !678, file: !679, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !678, file: !679, line: 468, baseType: !5319, size: 16, offset: 13552)
!5319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !679, line: 222, baseType: !363)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !678, file: !679, line: 469, baseType: !347, size: 32, offset: 13568)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !678, file: !679, line: 471, baseType: !774, size: 32, offset: 13600)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !678, file: !679, line: 472, baseType: !5323, size: 512, offset: 13632)
!5323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 512, elements: !237)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !678, file: !679, line: 473, baseType: !1483, size: 64, offset: 14144)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !678, file: !679, line: 474, baseType: !5326, size: 704, offset: 14208)
!5326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 704, elements: !5276)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !678, file: !679, line: 475, baseType: !5326, size: 704, offset: 14912)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !678, file: !679, line: 487, baseType: !147, size: 64, offset: 15616)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !678, file: !679, line: 488, baseType: !334, size: 32, offset: 15680)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !678, file: !679, line: 490, baseType: !5331, size: 320, offset: 15744)
!5331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !679, line: 309, size: 320, elements: !5332)
!5332 = !{!5333, !5334, !5335}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5331, file: !679, line: 310, baseType: !319, size: 256)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5331, file: !679, line: 311, baseType: !7, size: 32, offset: 256)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5331, file: !679, line: 312, baseType: !355, size: 8, offset: 288)
!5336 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !679, line: 497, baseType: !5337, size: 64, offset: 16064)
!5337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !679, line: 497, size: 64, elements: !5338)
!5338 = !{!5339, !5342}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5337, file: !679, line: 498, baseType: !5340, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !679, line: 317, flags: DIFlagFwdDecl)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5337, file: !679, line: 499, baseType: !677, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !678, file: !679, line: 501, baseType: !361, size: 16, offset: 16128)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !678, file: !679, line: 502, baseType: !355, size: 8, offset: 16144)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !678, file: !679, line: 505, baseType: !361, size: 16, offset: 16160)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !678, file: !679, line: 506, baseType: !148, size: 32, offset: 16192)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !678, file: !679, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !678, file: !679, line: 510, baseType: !361, size: 16, offset: 16240)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !678, file: !679, line: 511, baseType: !361, size: 16, offset: 16256)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !678, file: !679, line: 519, baseType: !361, size: 16, offset: 16272)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !678, file: !679, line: 520, baseType: !700, size: 64, offset: 16320)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !678, file: !679, line: 521, baseType: !857, size: 64, offset: 16384)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !678, file: !679, line: 526, baseType: !162, size: 64, offset: 16448)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !678, file: !679, line: 528, baseType: !159, size: 64, offset: 16512)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !678, file: !679, line: 531, baseType: !5356, size: 56, offset: 16576)
!5356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 56, elements: !1238)
!5357 = !DILocation(line: 71, column: 2, scope: !674)
!5358 = !DILocation(line: 71, column: 18, scope: !674)
!5359 = !DILocation(line: 73, column: 8, scope: !674)
!5360 = !DILocation(line: 73, column: 6, scope: !674)
!5361 = !DILocation(line: 74, column: 6, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !674, file: !3, line: 74, column: 6)
!5363 = !DILocation(line: 74, column: 10, scope: !5362)
!5364 = !DILocation(line: 74, column: 6, scope: !674)
!5365 = !DILocation(line: 80, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 80, column: 7)
!5367 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 74, column: 19)
!5368 = !DILocation(line: 80, column: 12, scope: !5366)
!5369 = !DILocation(line: 80, column: 19, scope: !5366)
!5370 = !DILocation(line: 80, column: 48, scope: !5366)
!5371 = !DILocation(line: 81, column: 7, scope: !5366)
!5372 = !DILocation(line: 81, column: 12, scope: !5366)
!5373 = !DILocation(line: 81, column: 19, scope: !5366)
!5374 = !DILocation(line: 81, column: 51, scope: !5366)
!5375 = !DILocation(line: 82, column: 7, scope: !5366)
!5376 = !DILocation(line: 82, column: 12, scope: !5366)
!5377 = !DILocation(line: 82, column: 21, scope: !5366)
!5378 = !DILocation(line: 80, column: 7, scope: !5367)
!5379 = !DILocation(line: 83, column: 4, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 83, column: 4)
!5381 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 82, column: 27)
!5382 = !DILocation(line: 83, column: 4, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 83, column: 4)
!5384 = !DILocation(line: 84, column: 16, scope: !5381)
!5385 = !DILocation(line: 84, column: 4, scope: !5381)
!5386 = !DILocation(line: 85, column: 4, scope: !5381)
!5387 = !DILocation(line: 91, column: 7, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 91, column: 7)
!5389 = !DILocation(line: 91, column: 12, scope: !5388)
!5390 = !DILocation(line: 91, column: 19, scope: !5388)
!5391 = !DILocation(line: 91, column: 42, scope: !5388)
!5392 = !DILocation(line: 92, column: 7, scope: !5388)
!5393 = !DILocation(line: 92, column: 12, scope: !5388)
!5394 = !DILocation(line: 92, column: 19, scope: !5388)
!5395 = !DILocation(line: 91, column: 7, scope: !5367)
!5396 = !DILocation(line: 93, column: 4, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 93, column: 4)
!5398 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 92, column: 51)
!5399 = !DILocation(line: 93, column: 4, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 93, column: 4)
!5401 = !DILocation(line: 94, column: 16, scope: !5398)
!5402 = !DILocation(line: 94, column: 4, scope: !5398)
!5403 = !DILocation(line: 95, column: 4, scope: !5398)
!5404 = !DILocation(line: 97, column: 15, scope: !5367)
!5405 = !DILocation(line: 97, column: 3, scope: !5367)
!5406 = !DILocation(line: 98, column: 2, scope: !5367)
!5407 = !DILocation(line: 99, column: 9, scope: !674)
!5408 = !DILocation(line: 99, column: 18, scope: !674)
!5409 = !DILocation(line: 99, column: 32, scope: !674)
!5410 = !DILocation(line: 99, column: 41, scope: !674)
!5411 = !DILocation(line: 99, column: 2, scope: !674)
!5412 = !DILocation(line: 100, column: 1, scope: !674)
!5413 = !DISubprogram(name: "cpus_read_lock", scope: !5414, file: !5414, line: 135, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5414 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!5415 = !DISubprogram(name: "mutex_lock", scope: !320, file: !320, line: 227, type: !5416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{null, !5418}
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!5419 = distinct !DISubprogram(name: "types_compatible", scope: !3, file: !3, line: 134, type: !5420, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5422)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!114, !275, !275}
!5422 = !{!5423, !5424}
!5423 = !DILocalVariable(name: "type1", arg: 1, scope: !5419, file: !3, line: 134, type: !275)
!5424 = !DILocalVariable(name: "type2", arg: 2, scope: !5419, file: !3, line: 134, type: !275)
!5425 = !DILocation(line: 134, column: 46, scope: !5419)
!5426 = !DILocation(line: 134, column: 63, scope: !5419)
!5427 = !DILocation(line: 136, column: 9, scope: !5419)
!5428 = !DILocation(line: 136, column: 15, scope: !5419)
!5429 = !DILocation(line: 136, column: 39, scope: !5419)
!5430 = !DILocation(line: 137, column: 9, scope: !5419)
!5431 = !DILocation(line: 137, column: 15, scope: !5419)
!5432 = !DILocation(line: 137, column: 39, scope: !5419)
!5433 = !DILocation(line: 138, column: 10, scope: !5419)
!5434 = !DILocation(line: 138, column: 16, scope: !5419)
!5435 = !DILocation(line: 138, column: 39, scope: !5419)
!5436 = !DILocation(line: 138, column: 42, scope: !5419)
!5437 = !DILocation(line: 138, column: 48, scope: !5419)
!5438 = !DILocation(line: 138, column: 69, scope: !5419)
!5439 = !DILocation(line: 139, column: 10, scope: !5419)
!5440 = !DILocation(line: 139, column: 16, scope: !5419)
!5441 = !DILocation(line: 139, column: 36, scope: !5419)
!5442 = !DILocation(line: 139, column: 39, scope: !5419)
!5443 = !DILocation(line: 139, column: 45, scope: !5419)
!5444 = !DILocation(line: 0, scope: !5419)
!5445 = !DILocation(line: 136, column: 2, scope: !5419)
!5446 = !DISubprogram(name: "mtrr_attrib_to_str", scope: !268, file: !268, line: 66, type: !5447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!162, !114}
!5449 = distinct !DISubprogram(name: "set_mtrr", scope: !3, file: !3, line: 176, type: !273, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5450)
!5450 = !{!5451, !5452, !5453, !5454, !5455}
!5451 = !DILocalVariable(name: "reg", arg: 1, scope: !5449, file: !3, line: 176, type: !7)
!5452 = !DILocalVariable(name: "base", arg: 2, scope: !5449, file: !3, line: 176, type: !159)
!5453 = !DILocalVariable(name: "size", arg: 3, scope: !5449, file: !3, line: 176, type: !159)
!5454 = !DILocalVariable(name: "type", arg: 4, scope: !5449, file: !3, line: 177, type: !275)
!5455 = !DILocalVariable(name: "data", scope: !5449, file: !3, line: 179, type: !5456)
!5456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "set_mtrr_data", file: !3, line: 111, size: 192, elements: !5457)
!5457 = !{!5458, !5459, !5460, !5461}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "smp_base", scope: !5456, file: !3, line: 112, baseType: !159, size: 64)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "smp_size", scope: !5456, file: !3, line: 113, baseType: !159, size: 64, offset: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "smp_reg", scope: !5456, file: !3, line: 114, baseType: !7, size: 32, offset: 128)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "smp_type", scope: !5456, file: !3, line: 115, baseType: !275, size: 8, offset: 160)
!5462 = !DILocation(line: 176, column: 35, scope: !5449)
!5463 = !DILocation(line: 176, column: 54, scope: !5449)
!5464 = !DILocation(line: 176, column: 74, scope: !5449)
!5465 = !DILocation(line: 177, column: 18, scope: !5449)
!5466 = !DILocation(line: 179, column: 2, scope: !5449)
!5467 = !DILocation(line: 179, column: 23, scope: !5449)
!5468 = !DILocation(line: 179, column: 30, scope: !5449)
!5469 = !DILocation(line: 180, column: 23, scope: !5449)
!5470 = !DILocation(line: 181, column: 23, scope: !5449)
!5471 = !DILocation(line: 179, column: 43, scope: !5449)
!5472 = !DILocation(line: 182, column: 23, scope: !5449)
!5473 = !DILocation(line: 185, column: 2, scope: !5449)
!5474 = !DILocation(line: 187, column: 2, scope: !5449)
!5475 = !DILocation(line: 188, column: 1, scope: !5449)
!5476 = !DISubprogram(name: "mutex_unlock", scope: !320, file: !320, line: 246, type: !5416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5477 = !DISubprogram(name: "cpus_read_unlock", scope: !5414, file: !5414, line: 136, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5478 = distinct !DISubprogram(name: "mtrr_add", scope: !3, file: !3, line: 377, type: !386, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5479)
!5479 = !{!5480, !5481, !5482, !5483}
!5480 = !DILocalVariable(name: "base", arg: 1, scope: !5478, file: !3, line: 377, type: !159)
!5481 = !DILocalVariable(name: "size", arg: 2, scope: !5478, file: !3, line: 377, type: !159)
!5482 = !DILocalVariable(name: "type", arg: 3, scope: !5478, file: !3, line: 377, type: !7)
!5483 = !DILocalVariable(name: "increment", arg: 4, scope: !5478, file: !3, line: 378, type: !388)
!5484 = !DILocation(line: 377, column: 28, scope: !5478)
!5485 = !DILocation(line: 377, column: 48, scope: !5478)
!5486 = !DILocation(line: 377, column: 67, scope: !5478)
!5487 = !DILocation(line: 378, column: 12, scope: !5478)
!5488 = !DILocation(line: 380, column: 7, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 380, column: 6)
!5490 = !DILocation(line: 380, column: 6, scope: !5478)
!5491 = !DILocation(line: 381, column: 3, scope: !5489)
!5492 = !DILocation(line: 382, column: 17, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 382, column: 6)
!5494 = !DILocation(line: 382, column: 23, scope: !5493)
!5495 = !DILocation(line: 382, column: 6, scope: !5493)
!5496 = !DILocation(line: 382, column: 6, scope: !5478)
!5497 = !DILocation(line: 383, column: 3, scope: !5493)
!5498 = !DILocation(line: 384, column: 23, scope: !5478)
!5499 = !DILocation(line: 384, column: 28, scope: !5478)
!5500 = !DILocation(line: 384, column: 43, scope: !5478)
!5501 = !DILocation(line: 384, column: 48, scope: !5478)
!5502 = !DILocation(line: 384, column: 63, scope: !5478)
!5503 = !DILocation(line: 385, column: 9, scope: !5478)
!5504 = !DILocation(line: 384, column: 9, scope: !5478)
!5505 = !DILocation(line: 384, column: 2, scope: !5478)
!5506 = !DILocation(line: 386, column: 1, scope: !5478)
!5507 = distinct !DISubprogram(name: "mtrr_check", scope: !3, file: !3, line: 331, type: !5508, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5510)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!114, !159, !159}
!5510 = !{!5511, !5512}
!5511 = !DILocalVariable(name: "base", arg: 1, scope: !5507, file: !3, line: 331, type: !159)
!5512 = !DILocalVariable(name: "size", arg: 2, scope: !5507, file: !3, line: 331, type: !159)
!5513 = !DILocation(line: 331, column: 37, scope: !5507)
!5514 = !DILocation(line: 331, column: 57, scope: !5507)
!5515 = !DILocation(line: 333, column: 7, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 333, column: 6)
!5517 = !DILocation(line: 333, column: 12, scope: !5516)
!5518 = !DILocation(line: 333, column: 31, scope: !5516)
!5519 = !DILocation(line: 333, column: 35, scope: !5516)
!5520 = !DILocation(line: 333, column: 40, scope: !5516)
!5521 = !DILocation(line: 333, column: 6, scope: !5507)
!5522 = !DILocation(line: 334, column: 3, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 334, column: 3)
!5524 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 333, column: 60)
!5525 = !DILocation(line: 334, column: 3, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 334, column: 3)
!5527 = !DILocation(line: 335, column: 3, scope: !5524)
!5528 = !DILocation(line: 335, column: 3, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 335, column: 3)
!5530 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 335, column: 3)
!5531 = !DILocation(line: 335, column: 3, scope: !5530)
!5532 = !DILocation(line: 335, column: 3, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 335, column: 3)
!5534 = !DILocation(line: 335, column: 3, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 335, column: 3)
!5536 = !DILocation(line: 336, column: 3, scope: !5524)
!5537 = !DILocation(line: 337, column: 3, scope: !5524)
!5538 = !DILocation(line: 339, column: 2, scope: !5507)
!5539 = !DILocation(line: 340, column: 1, scope: !5507)
!5540 = distinct !DISubprogram(name: "mtrr_del_page", scope: !3, file: !3, line: 402, type: !5541, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5543)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!114, !114, !159, !159}
!5543 = !{!5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553}
!5544 = !DILocalVariable(name: "reg", arg: 1, scope: !5540, file: !3, line: 402, type: !114)
!5545 = !DILocalVariable(name: "base", arg: 2, scope: !5540, file: !3, line: 402, type: !159)
!5546 = !DILocalVariable(name: "size", arg: 3, scope: !5540, file: !3, line: 402, type: !159)
!5547 = !DILocalVariable(name: "i", scope: !5540, file: !3, line: 404, type: !114)
!5548 = !DILocalVariable(name: "max", scope: !5540, file: !3, line: 404, type: !114)
!5549 = !DILocalVariable(name: "ltype", scope: !5540, file: !3, line: 405, type: !275)
!5550 = !DILocalVariable(name: "lbase", scope: !5540, file: !3, line: 406, type: !159)
!5551 = !DILocalVariable(name: "lsize", scope: !5540, file: !3, line: 406, type: !159)
!5552 = !DILocalVariable(name: "error", scope: !5540, file: !3, line: 407, type: !114)
!5553 = !DILabel(scope: !5540, name: "out", file: !3, line: 446)
!5554 = !DILocation(line: 402, column: 23, scope: !5540)
!5555 = !DILocation(line: 402, column: 42, scope: !5540)
!5556 = !DILocation(line: 402, column: 62, scope: !5540)
!5557 = !DILocation(line: 404, column: 2, scope: !5540)
!5558 = !DILocation(line: 404, column: 6, scope: !5540)
!5559 = !DILocation(line: 404, column: 9, scope: !5540)
!5560 = !DILocation(line: 405, column: 2, scope: !5540)
!5561 = !DILocation(line: 405, column: 12, scope: !5540)
!5562 = !DILocation(line: 406, column: 2, scope: !5540)
!5563 = !DILocation(line: 406, column: 16, scope: !5540)
!5564 = !DILocation(line: 406, column: 23, scope: !5540)
!5565 = !DILocation(line: 407, column: 2, scope: !5540)
!5566 = !DILocation(line: 407, column: 6, scope: !5540)
!5567 = !DILocation(line: 409, column: 7, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 409, column: 6)
!5569 = !DILocation(line: 409, column: 6, scope: !5540)
!5570 = !DILocation(line: 410, column: 3, scope: !5568)
!5571 = !DILocation(line: 412, column: 8, scope: !5540)
!5572 = !DILocation(line: 412, column: 6, scope: !5540)
!5573 = !DILocation(line: 414, column: 2, scope: !5540)
!5574 = !DILocation(line: 415, column: 2, scope: !5540)
!5575 = !DILocation(line: 416, column: 6, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 416, column: 6)
!5577 = !DILocation(line: 416, column: 10, scope: !5576)
!5578 = !DILocation(line: 416, column: 6, scope: !5540)
!5579 = !DILocation(line: 418, column: 10, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 418, column: 3)
!5581 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 416, column: 15)
!5582 = !DILocation(line: 418, column: 8, scope: !5580)
!5583 = !DILocation(line: 418, column: 15, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 418, column: 3)
!5585 = !DILocation(line: 418, column: 19, scope: !5584)
!5586 = !DILocation(line: 418, column: 17, scope: !5584)
!5587 = !DILocation(line: 418, column: 3, scope: !5580)
!5588 = !DILocation(line: 419, column: 4, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 418, column: 29)
!5590 = !DILocation(line: 419, column: 13, scope: !5589)
!5591 = !DILocation(line: 419, column: 17, scope: !5589)
!5592 = !DILocation(line: 420, column: 8, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 420, column: 8)
!5594 = !DILocation(line: 420, column: 17, scope: !5593)
!5595 = !DILocation(line: 420, column: 14, scope: !5593)
!5596 = !DILocation(line: 420, column: 22, scope: !5593)
!5597 = !DILocation(line: 420, column: 25, scope: !5593)
!5598 = !DILocation(line: 420, column: 34, scope: !5593)
!5599 = !DILocation(line: 420, column: 31, scope: !5593)
!5600 = !DILocation(line: 420, column: 8, scope: !5589)
!5601 = !DILocation(line: 421, column: 11, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 420, column: 40)
!5603 = !DILocation(line: 421, column: 9, scope: !5602)
!5604 = !DILocation(line: 422, column: 5, scope: !5602)
!5605 = !DILocation(line: 424, column: 3, scope: !5589)
!5606 = !DILocation(line: 418, column: 24, scope: !5584)
!5607 = !DILocation(line: 418, column: 3, scope: !5584)
!5608 = distinct !{!5608, !5587, !5609, !600, !601}
!5609 = !DILocation(line: 424, column: 3, scope: !5580)
!5610 = !DILocation(line: 425, column: 7, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 425, column: 7)
!5612 = !DILocation(line: 425, column: 11, scope: !5611)
!5613 = !DILocation(line: 425, column: 7, scope: !5581)
!5614 = !DILocation(line: 426, column: 4, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 425, column: 16)
!5616 = !DILocation(line: 426, column: 4, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 426, column: 4)
!5618 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 426, column: 4)
!5619 = !DILocation(line: 426, column: 4, scope: !5618)
!5620 = !DILocation(line: 426, column: 4, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 426, column: 4)
!5622 = !DILocation(line: 426, column: 4, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 426, column: 4)
!5624 = !DILocation(line: 427, column: 4, scope: !5615)
!5625 = !DILocation(line: 429, column: 2, scope: !5581)
!5626 = !DILocation(line: 430, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 430, column: 6)
!5628 = !DILocation(line: 430, column: 13, scope: !5627)
!5629 = !DILocation(line: 430, column: 10, scope: !5627)
!5630 = !DILocation(line: 430, column: 6, scope: !5540)
!5631 = !DILocation(line: 431, column: 3, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 431, column: 3)
!5633 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 430, column: 18)
!5634 = !DILocation(line: 431, column: 3, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 431, column: 3)
!5636 = !DILocation(line: 432, column: 3, scope: !5633)
!5637 = !DILocation(line: 434, column: 2, scope: !5540)
!5638 = !DILocation(line: 434, column: 11, scope: !5540)
!5639 = !DILocation(line: 434, column: 15, scope: !5540)
!5640 = !DILocation(line: 435, column: 6, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 435, column: 6)
!5642 = !DILocation(line: 435, column: 12, scope: !5641)
!5643 = !DILocation(line: 435, column: 6, scope: !5540)
!5644 = !DILocation(line: 436, column: 3, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 436, column: 3)
!5646 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 435, column: 17)
!5647 = !DILocation(line: 436, column: 3, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 436, column: 3)
!5649 = !DILocation(line: 437, column: 3, scope: !5646)
!5650 = !DILocation(line: 439, column: 23, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 439, column: 6)
!5652 = !DILocation(line: 439, column: 6, scope: !5651)
!5653 = !DILocation(line: 439, column: 28, scope: !5651)
!5654 = !DILocation(line: 439, column: 6, scope: !5540)
!5655 = !DILocation(line: 440, column: 3, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 440, column: 3)
!5657 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 439, column: 33)
!5658 = !DILocation(line: 440, column: 3, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 440, column: 3)
!5660 = !DILocation(line: 441, column: 3, scope: !5657)
!5661 = !DILocation(line: 443, column: 25, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 443, column: 6)
!5663 = !DILocation(line: 443, column: 8, scope: !5662)
!5664 = !DILocation(line: 443, column: 6, scope: !5662)
!5665 = !DILocation(line: 443, column: 30, scope: !5662)
!5666 = !DILocation(line: 443, column: 6, scope: !5540)
!5667 = !DILocation(line: 444, column: 12, scope: !5662)
!5668 = !DILocation(line: 444, column: 3, scope: !5662)
!5669 = !DILocation(line: 445, column: 10, scope: !5540)
!5670 = !DILocation(line: 445, column: 8, scope: !5540)
!5671 = !DILocation(line: 445, column: 2, scope: !5540)
!5672 = !DILocation(line: 446, column: 2, scope: !5540)
!5673 = !DILocation(line: 447, column: 2, scope: !5540)
!5674 = !DILocation(line: 448, column: 2, scope: !5540)
!5675 = !DILocation(line: 449, column: 9, scope: !5540)
!5676 = !DILocation(line: 449, column: 2, scope: !5540)
!5677 = !DILocation(line: 450, column: 1, scope: !5540)
!5678 = distinct !DISubprogram(name: "mtrr_del", scope: !3, file: !3, line: 466, type: !5541, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5679)
!5679 = !{!5680, !5681, !5682}
!5680 = !DILocalVariable(name: "reg", arg: 1, scope: !5678, file: !3, line: 466, type: !114)
!5681 = !DILocalVariable(name: "base", arg: 2, scope: !5678, file: !3, line: 466, type: !159)
!5682 = !DILocalVariable(name: "size", arg: 3, scope: !5678, file: !3, line: 466, type: !159)
!5683 = !DILocation(line: 466, column: 18, scope: !5678)
!5684 = !DILocation(line: 466, column: 37, scope: !5678)
!5685 = !DILocation(line: 466, column: 57, scope: !5678)
!5686 = !DILocation(line: 468, column: 7, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 468, column: 6)
!5688 = !DILocation(line: 468, column: 6, scope: !5678)
!5689 = !DILocation(line: 469, column: 3, scope: !5687)
!5690 = !DILocation(line: 470, column: 17, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 470, column: 6)
!5692 = !DILocation(line: 470, column: 23, scope: !5691)
!5693 = !DILocation(line: 470, column: 6, scope: !5691)
!5694 = !DILocation(line: 470, column: 6, scope: !5678)
!5695 = !DILocation(line: 471, column: 3, scope: !5691)
!5696 = !DILocation(line: 472, column: 23, scope: !5678)
!5697 = !DILocation(line: 472, column: 28, scope: !5678)
!5698 = !DILocation(line: 472, column: 33, scope: !5678)
!5699 = !DILocation(line: 472, column: 48, scope: !5678)
!5700 = !DILocation(line: 472, column: 53, scope: !5678)
!5701 = !DILocation(line: 472, column: 9, scope: !5678)
!5702 = !DILocation(line: 472, column: 2, scope: !5678)
!5703 = !DILocation(line: 473, column: 1, scope: !5678)
!5704 = distinct !DISubprogram(name: "arch_phys_wc_add", scope: !3, file: !3, line: 490, type: !5508, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5705)
!5705 = !{!5706, !5707, !5708}
!5706 = !DILocalVariable(name: "base", arg: 1, scope: !5704, file: !3, line: 490, type: !159)
!5707 = !DILocalVariable(name: "size", arg: 2, scope: !5704, file: !3, line: 490, type: !159)
!5708 = !DILocalVariable(name: "ret", scope: !5704, file: !3, line: 492, type: !114)
!5709 = !DILocation(line: 490, column: 36, scope: !5704)
!5710 = !DILocation(line: 490, column: 56, scope: !5704)
!5711 = !DILocation(line: 492, column: 2, scope: !5704)
!5712 = !DILocation(line: 492, column: 6, scope: !5704)
!5713 = !DILocation(line: 494, column: 6, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 494, column: 6)
!5715 = !DILocation(line: 494, column: 20, scope: !5714)
!5716 = !DILocation(line: 494, column: 24, scope: !5714)
!5717 = !DILocation(line: 494, column: 6, scope: !5704)
!5718 = !DILocation(line: 495, column: 3, scope: !5714)
!5719 = !DILocation(line: 497, column: 17, scope: !5704)
!5720 = !DILocation(line: 497, column: 23, scope: !5704)
!5721 = !DILocation(line: 497, column: 8, scope: !5704)
!5722 = !DILocation(line: 497, column: 6, scope: !5704)
!5723 = !DILocation(line: 498, column: 6, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 498, column: 6)
!5725 = !DILocation(line: 498, column: 10, scope: !5724)
!5726 = !DILocation(line: 498, column: 6, scope: !5704)
!5727 = !DILocation(line: 499, column: 3, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 499, column: 3)
!5729 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 498, column: 15)
!5730 = !DILocation(line: 499, column: 3, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 499, column: 3)
!5732 = !DILocation(line: 501, column: 10, scope: !5729)
!5733 = !DILocation(line: 501, column: 3, scope: !5729)
!5734 = !DILocation(line: 503, column: 9, scope: !5704)
!5735 = !DILocation(line: 503, column: 13, scope: !5704)
!5736 = !DILocation(line: 503, column: 2, scope: !5704)
!5737 = !DILocation(line: 504, column: 1, scope: !5704)
!5738 = !DISubprogram(name: "pat_enabled", scope: !5739, file: !5739, line: 8, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5739 = !DIFile(filename: "./arch/x86/include/asm/memtype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83be40d1830a400be9fbb1fd435851b8")
!5740 = distinct !DISubprogram(name: "arch_phys_wc_del", scope: !3, file: !3, line: 516, type: !3424, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5741)
!5741 = !{!5742, !5743, !5747}
!5742 = !DILocalVariable(name: "handle", arg: 1, scope: !5740, file: !3, line: 516, type: !114)
!5743 = !DILocalVariable(name: "__ret_warn_on", scope: !5744, file: !3, line: 519, type: !114)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 519, column: 3)
!5745 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 518, column: 19)
!5746 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 518, column: 6)
!5747 = !DILocalVariable(name: "__flags", scope: !5748, file: !3, line: 519, type: !114)
!5748 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 519, column: 3)
!5749 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 519, column: 3)
!5750 = !DILocation(line: 516, column: 27, scope: !5740)
!5751 = !DILocation(line: 518, column: 6, scope: !5746)
!5752 = !DILocation(line: 518, column: 13, scope: !5746)
!5753 = !DILocation(line: 518, column: 6, scope: !5740)
!5754 = !DILocation(line: 519, column: 3, scope: !5744)
!5755 = !DILocation(line: 519, column: 3, scope: !5749)
!5756 = !DILocation(line: 519, column: 3, scope: !5748)
!5757 = !DILocation(line: 519, column: 3, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 519, column: 3)
!5759 = !DILocation(line: 519, column: 3, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 519, column: 3)
!5761 = !{i64 2155334547, i64 2155334576, i64 2155334622, i64 2155334680, i64 2155334734, i64 2155334788, i64 2155334843, i64 2155334874, i64 2155335182, i64 2155335188, i64 2155335235, i64 2155335258, i64 2155335284}
!5762 = !DILocation(line: 519, column: 3, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 519, column: 3)
!5764 = !DILocation(line: 519, column: 3, scope: !5745)
!5765 = !DILocation(line: 520, column: 12, scope: !5745)
!5766 = !DILocation(line: 520, column: 19, scope: !5745)
!5767 = !DILocation(line: 520, column: 3, scope: !5745)
!5768 = !DILocation(line: 521, column: 2, scope: !5745)
!5769 = !DILocation(line: 522, column: 1, scope: !5740)
!5770 = distinct !DISubprogram(name: "arch_phys_wc_index", scope: !3, file: !3, line: 536, type: !2918, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5771)
!5771 = !{!5772}
!5772 = !DILocalVariable(name: "handle", arg: 1, scope: !5770, file: !3, line: 536, type: !114)
!5773 = !DILocation(line: 536, column: 28, scope: !5770)
!5774 = !DILocation(line: 538, column: 6, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 538, column: 6)
!5776 = !DILocation(line: 538, column: 13, scope: !5775)
!5777 = !DILocation(line: 538, column: 6, scope: !5770)
!5778 = !DILocation(line: 539, column: 3, scope: !5775)
!5779 = !DILocation(line: 541, column: 10, scope: !5775)
!5780 = !DILocation(line: 541, column: 17, scope: !5775)
!5781 = !DILocation(line: 541, column: 3, scope: !5775)
!5782 = !DILocation(line: 542, column: 1, scope: !5770)
!5783 = distinct !DISubprogram(name: "mtrr_bp_init", scope: !3, file: !3, line: 553, type: !1478, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5784)
!5784 = !{!5785, !5786, !5787, !5788, !5789}
!5785 = !DILocalVariable(name: "generic_mtrrs", scope: !5783, file: !3, line: 555, type: !388)
!5786 = !DILocalVariable(name: "why", scope: !5783, file: !3, line: 556, type: !162)
!5787 = !DILocalVariable(name: "config", scope: !5783, file: !3, line: 557, type: !159)
!5788 = !DILocalVariable(name: "dummy", scope: !5783, file: !3, line: 557, type: !159)
!5789 = !DILocalVariable(name: "__val", scope: !5790, file: !3, line: 581, type: !701)
!5790 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 581, column: 4)
!5791 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 580, column: 7)
!5792 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 578, column: 22)
!5793 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 578, column: 6)
!5794 = !DILocation(line: 555, column: 2, scope: !5783)
!5795 = !DILocation(line: 555, column: 7, scope: !5783)
!5796 = !DILocation(line: 555, column: 23, scope: !5783)
!5797 = !DILocation(line: 556, column: 2, scope: !5783)
!5798 = !DILocation(line: 556, column: 14, scope: !5783)
!5799 = !DILocation(line: 557, column: 2, scope: !5783)
!5800 = !DILocation(line: 557, column: 16, scope: !5783)
!5801 = !DILocation(line: 557, column: 24, scope: !5783)
!5802 = !DILocation(line: 559, column: 17, scope: !5783)
!5803 = !DILocation(line: 559, column: 15, scope: !5783)
!5804 = !DILocation(line: 561, column: 7, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 561, column: 6)
!5806 = !DILocation(line: 561, column: 21, scope: !5805)
!5807 = !DILocation(line: 561, column: 35, scope: !5805)
!5808 = !DILocation(line: 561, column: 24, scope: !5805)
!5809 = !DILocation(line: 561, column: 6, scope: !5783)
!5810 = !DILocation(line: 566, column: 3, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 561, column: 44)
!5812 = !DILocation(line: 567, column: 3, scope: !5811)
!5813 = !DILocation(line: 568, column: 3, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 568, column: 3)
!5815 = !DILocation(line: 568, column: 3, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 568, column: 3)
!5817 = !DILocation(line: 570, column: 3, scope: !5811)
!5818 = !DILocation(line: 573, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 573, column: 6)
!5820 = !DILocation(line: 573, column: 6, scope: !5783)
!5821 = !DILocation(line: 574, column: 11, scope: !5819)
!5822 = !DILocation(line: 574, column: 3, scope: !5819)
!5823 = !DILocation(line: 576, column: 3, scope: !5819)
!5824 = !DILocation(line: 578, column: 6, scope: !5793)
!5825 = !DILocation(line: 578, column: 6, scope: !5783)
!5826 = !DILocation(line: 580, column: 7, scope: !5791)
!5827 = !DILocation(line: 580, column: 15, scope: !5791)
!5828 = !DILocation(line: 580, column: 7, scope: !5792)
!5829 = !DILocation(line: 581, column: 4, scope: !5791)
!5830 = !DILocation(line: 581, column: 4, scope: !5790)
!5831 = !DILocation(line: 583, column: 13, scope: !5791)
!5832 = !DILocation(line: 583, column: 22, scope: !5791)
!5833 = !DILocation(line: 583, column: 11, scope: !5791)
!5834 = !DILocation(line: 584, column: 20, scope: !5792)
!5835 = !DILocation(line: 584, column: 27, scope: !5792)
!5836 = !DILocation(line: 584, column: 18, scope: !5792)
!5837 = !DILocation(line: 586, column: 3, scope: !5792)
!5838 = !DILocation(line: 587, column: 7, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 587, column: 7)
!5840 = !DILocation(line: 587, column: 15, scope: !5839)
!5841 = !DILocation(line: 587, column: 7, scope: !5792)
!5842 = !DILocation(line: 589, column: 8, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 589, column: 8)
!5844 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 587, column: 37)
!5845 = !DILocation(line: 589, column: 8, scope: !5844)
!5846 = !DILocation(line: 590, column: 28, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 589, column: 26)
!5848 = !DILocation(line: 591, column: 31, scope: !5847)
!5849 = !DILocation(line: 591, column: 29, scope: !5847)
!5850 = !DILocation(line: 592, column: 5, scope: !5847)
!5851 = !DILocation(line: 593, column: 4, scope: !5847)
!5852 = !DILocation(line: 594, column: 13, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 593, column: 11)
!5854 = !DILocation(line: 595, column: 9, scope: !5853)
!5855 = !DILocation(line: 597, column: 3, scope: !5844)
!5856 = !DILocation(line: 598, column: 2, scope: !5792)
!5857 = !DILocation(line: 600, column: 7, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 600, column: 6)
!5859 = !DILocation(line: 600, column: 6, scope: !5783)
!5860 = !DILocation(line: 601, column: 3, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 601, column: 3)
!5862 = !DILocation(line: 601, column: 3, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 601, column: 3)
!5864 = !DILocation(line: 601, column: 3, scope: !5858)
!5865 = !DILocation(line: 602, column: 1, scope: !5783)
!5866 = distinct !DISubprogram(name: "_static_cpu_has", scope: !5867, file: !5867, line: 173, type: !5868, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5870)
!5867 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!5868 = !DISubroutineType(types: !5869)
!5869 = !{!388, !361}
!5870 = !{!5871, !5872, !5873}
!5871 = !DILocalVariable(name: "bit", arg: 1, scope: !5866, file: !5867, line: 173, type: !361)
!5872 = !DILabel(scope: !5866, name: "t_yes", file: !5867, line: 187)
!5873 = !DILabel(scope: !5866, name: "t_no", file: !5867, line: 189)
!5874 = !DILocation(line: 173, column: 49, scope: !5866)
!5875 = !DILocation(line: 183, column: 24, scope: !5866)
!5876 = !DILocation(line: 184, column: 30, scope: !5866)
!5877 = !DILocation(line: 184, column: 34, scope: !5866)
!5878 = !DILocation(line: 184, column: 26, scope: !5866)
!5879 = !DILocation(line: 185, column: 70, scope: !5866)
!5880 = !DILocation(line: 185, column: 74, scope: !5866)
!5881 = !DILocation(line: 185, column: 25, scope: !5866)
!5882 = !DILocation(line: 175, column: 2, scope: !5866)
!5883 = !{i64 2149653545, i64 2149653578, i64 2149653584, i64 2149653600, i64 2149653619, i64 2149653650, i64 2149654603, i64 2149653192, i64 2149654609, i64 2149654657, i64 2149654721, i64 2149654785, i64 2149654842, i64 2149655049, i64 2149655097, i64 2149655161, i64 2149655225, i64 2149655282, i64 2149653310, i64 2149653335, i64 2149655492, i64 2149655620, i64 2149655553, i64 2149655634, i64 2149655648, i64 2149655764, i64 2149655709, i64 2149655778, i64 2149653469, i64 1780290, i64 1780330, i64 1780339, i64 1780389, i64 1780410, i64 1780430}
!5884 = !DILocation(line: 187, column: 1, scope: !5866)
!5885 = !DILocation(line: 188, column: 2, scope: !5866)
!5886 = !DILocation(line: 189, column: 1, scope: !5866)
!5887 = !DILocation(line: 190, column: 2, scope: !5866)
!5888 = !DILocation(line: 191, column: 1, scope: !5866)
!5889 = distinct !DISubprogram(name: "init_table", scope: !3, file: !3, line: 102, type: !1478, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5890)
!5890 = !{!5891, !5892}
!5891 = !DILocalVariable(name: "i", scope: !5889, file: !3, line: 104, type: !114)
!5892 = !DILocalVariable(name: "max", scope: !5889, file: !3, line: 104, type: !114)
!5893 = !DILocation(line: 104, column: 2, scope: !5889)
!5894 = !DILocation(line: 104, column: 6, scope: !5889)
!5895 = !DILocation(line: 104, column: 9, scope: !5889)
!5896 = !DILocation(line: 106, column: 8, scope: !5889)
!5897 = !DILocation(line: 106, column: 6, scope: !5889)
!5898 = !DILocation(line: 107, column: 9, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 107, column: 2)
!5900 = !DILocation(line: 107, column: 7, scope: !5899)
!5901 = !DILocation(line: 107, column: 14, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5899, file: !3, line: 107, column: 2)
!5903 = !DILocation(line: 107, column: 18, scope: !5902)
!5904 = !DILocation(line: 107, column: 16, scope: !5902)
!5905 = !DILocation(line: 107, column: 2, scope: !5899)
!5906 = !DILocation(line: 108, column: 20, scope: !5902)
!5907 = !DILocation(line: 108, column: 3, scope: !5902)
!5908 = !DILocation(line: 108, column: 23, scope: !5902)
!5909 = !DILocation(line: 107, column: 24, scope: !5902)
!5910 = !DILocation(line: 107, column: 2, scope: !5902)
!5911 = distinct !{!5911, !5905, !5912, !600, !601}
!5912 = !DILocation(line: 108, column: 25, scope: !5899)
!5913 = !DILocation(line: 109, column: 1, scope: !5889)
!5914 = !DISubprogram(name: "mtrr_build_map", scope: !268, file: !268, line: 75, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5915 = distinct !DISubprogram(name: "mtrr_set_if", scope: !268, file: !268, line: 72, type: !1478, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5916 = !DILocation(line: 72, column: 40, scope: !5915)
!5917 = distinct !DISubprogram(name: "native_read_msr", scope: !5918, file: !5918, line: 114, type: !5919, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5921)
!5918 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!5919 = !DISubroutineType(types: !5920)
!5920 = !{!703, !7}
!5921 = !{!5922, !5923}
!5922 = !DILocalVariable(name: "msr", arg: 1, scope: !5917, file: !5918, line: 114, type: !7)
!5923 = !DILocalVariable(name: "val", scope: !5917, file: !5918, line: 116, type: !703)
!5924 = !DILocation(line: 114, column: 63, scope: !5917)
!5925 = !DILocation(line: 116, column: 2, scope: !5917)
!5926 = !DILocation(line: 116, column: 21, scope: !5917)
!5927 = !DILocation(line: 118, column: 16, scope: !5917)
!5928 = !DILocation(line: 118, column: 8, scope: !5917)
!5929 = !DILocation(line: 118, column: 6, scope: !5917)
!5930 = !DILocation(line: 120, column: 6, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5917, file: !5918, line: 120, column: 6)
!5932 = !DILocation(line: 120, column: 6, scope: !5917)
!5933 = !DILocation(line: 121, column: 21, scope: !5931)
!5934 = !DILocation(line: 121, column: 26, scope: !5931)
!5935 = !DILocation(line: 121, column: 3, scope: !5931)
!5936 = !DILocation(line: 123, column: 9, scope: !5917)
!5937 = !DILocation(line: 124, column: 1, scope: !5917)
!5938 = !DILocation(line: 123, column: 2, scope: !5917)
!5939 = !DISubprogram(name: "get_mtrr_state", scope: !268, file: !268, line: 55, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5940 = !DISubprogram(name: "mtrr_cleanup", scope: !268, file: !268, line: 84, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5941 = distinct !DISubprogram(name: "mtrr_save_state", scope: !3, file: !3, line: 608, type: !1478, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5942)
!5942 = !{!5943}
!5943 = !DILocalVariable(name: "first_cpu", scope: !5941, file: !3, line: 610, type: !114)
!5944 = !DILocation(line: 610, column: 2, scope: !5941)
!5945 = !DILocation(line: 610, column: 6, scope: !5941)
!5946 = !DILocation(line: 612, column: 7, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 612, column: 6)
!5948 = !DILocation(line: 612, column: 22, scope: !5947)
!5949 = !DILocation(line: 612, column: 37, scope: !5947)
!5950 = !DILocation(line: 612, column: 6, scope: !5941)
!5951 = !DILocation(line: 613, column: 3, scope: !5947)
!5952 = !DILocation(line: 615, column: 14, scope: !5941)
!5953 = !DILocation(line: 615, column: 12, scope: !5941)
!5954 = !DILocation(line: 616, column: 27, scope: !5941)
!5955 = !DILocation(line: 616, column: 2, scope: !5941)
!5956 = !DILocation(line: 617, column: 1, scope: !5941)
!5957 = distinct !DISubprogram(name: "cpumask_first", scope: !155, file: !155, line: 160, type: !5958, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5960)
!5958 = !DISubroutineType(types: !5959)
!5959 = !{!7, !152}
!5960 = !{!5961}
!5961 = !DILocalVariable(name: "srcp", arg: 1, scope: !5957, file: !155, line: 160, type: !152)
!5962 = !DILocation(line: 160, column: 64, scope: !5957)
!5963 = !DILocation(line: 162, column: 24, scope: !5957)
!5964 = !DILocation(line: 162, column: 9, scope: !5957)
!5965 = !DILocation(line: 162, column: 2, scope: !5957)
!5966 = !DISubprogram(name: "smp_call_function_single", scope: !5967, file: !5967, line: 50, type: !5968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5967 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!114, !114, !5970, !147, !114}
!5970 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !5967, line: 17, baseType: !1165)
!5971 = distinct !DISubprogram(name: "__initstub__kmod_mtrr__295_640_mtrr_init_finalize4", scope: !3, file: !3, line: 640, type: !295, scopeLine: 640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5972 = !DILocation(line: 640, column: 1, scope: !5971)
!5973 = distinct !DISubprogram(name: "mtrr_init_finalize", scope: !3, file: !3, line: 619, type: !295, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5974 = !DILocation(line: 625, column: 2, scope: !5973)
!5975 = !DILocation(line: 627, column: 7, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 627, column: 6)
!5977 = !DILocation(line: 627, column: 6, scope: !5973)
!5978 = !DILocation(line: 628, column: 3, scope: !5976)
!5979 = !DILocation(line: 630, column: 6, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 630, column: 6)
!5981 = !DILocation(line: 630, column: 29, scope: !5980)
!5982 = !DILocation(line: 630, column: 6, scope: !5973)
!5983 = !DILocation(line: 631, column: 8, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 631, column: 7)
!5985 = distinct !DILexicalBlock(scope: !5980, file: !3, line: 630, column: 43)
!5986 = !DILocation(line: 631, column: 7, scope: !5985)
!5987 = !DILocation(line: 632, column: 4, scope: !5984)
!5988 = !DILocation(line: 633, column: 3, scope: !5985)
!5989 = !DILocation(line: 636, column: 2, scope: !5973)
!5990 = !DILocation(line: 638, column: 2, scope: !5973)
!5991 = !DILocation(line: 639, column: 1, scope: !5973)
!5992 = !DISubprogram(name: "pci_get_class", scope: !679, file: !679, line: 1184, type: !5993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!677, !7, !677}
!5995 = !DISubprogram(name: "pci_dev_put", scope: !679, file: !679, line: 1148, type: !5192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5996 = !DISubprogram(name: "stop_machine_cpuslocked", scope: !5997, file: !5997, line: 125, type: !5998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5997 = !DIFile(filename: "./include/linux/stop_machine.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95637c7d444b53de6b24d77ecb3a5fe3")
!5998 = !DISubroutineType(types: !5999)
!5999 = !{!114, !6000, !147, !152}
!6000 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_stop_fn_t", file: !5997, line: 20, baseType: !6001)
!6001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6002, size: 64)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!114, !147}
!6004 = distinct !DISubprogram(name: "mtrr_rendezvous_handler", scope: !3, file: !3, line: 125, type: !6002, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6005)
!6005 = !{!6006, !6007}
!6006 = !DILocalVariable(name: "info", arg: 1, scope: !6004, file: !3, line: 125, type: !147)
!6007 = !DILocalVariable(name: "data", scope: !6004, file: !3, line: 127, type: !6008)
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!6009 = !DILocation(line: 125, column: 42, scope: !6004)
!6010 = !DILocation(line: 127, column: 2, scope: !6004)
!6011 = !DILocation(line: 127, column: 24, scope: !6004)
!6012 = !DILocation(line: 127, column: 31, scope: !6004)
!6013 = !DILocation(line: 129, column: 2, scope: !6004)
!6014 = !DILocation(line: 129, column: 11, scope: !6004)
!6015 = !DILocation(line: 129, column: 15, scope: !6004)
!6016 = !DILocation(line: 129, column: 21, scope: !6004)
!6017 = !DILocation(line: 129, column: 30, scope: !6004)
!6018 = !DILocation(line: 129, column: 36, scope: !6004)
!6019 = !DILocation(line: 130, column: 8, scope: !6004)
!6020 = !DILocation(line: 130, column: 14, scope: !6004)
!6021 = !DILocation(line: 130, column: 24, scope: !6004)
!6022 = !DILocation(line: 130, column: 30, scope: !6004)
!6023 = !DILocation(line: 132, column: 1, scope: !6004)
!6024 = !DILocation(line: 131, column: 2, scope: !6004)
!6025 = !DISubprogram(name: "generic_rebuild_map", scope: !268, file: !268, line: 94, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6026 = !DISubprogram(name: "dump_stack", scope: !671, file: !671, line: 193, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6027 = distinct !DISubprogram(name: "__rdmsr", scope: !5918, file: !5918, line: 80, type: !5919, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6028)
!6028 = !{!6029, !6030, !6031}
!6029 = !DILocalVariable(name: "msr", arg: 1, scope: !6027, file: !5918, line: 80, type: !7)
!6030 = !DILocalVariable(name: "low", scope: !6027, file: !5918, line: 82, type: !159)
!6031 = !DILocalVariable(name: "high", scope: !6027, file: !5918, line: 82, type: !159)
!6032 = !DILocation(line: 80, column: 64, scope: !6027)
!6033 = !DILocation(line: 82, column: 2, scope: !6027)
!6034 = !DILocation(line: 87, column: 45, scope: !6027)
!6035 = !DILocation(line: 84, column: 2, scope: !6027)
!6036 = !{i64 1902409, i64 1902430, i64 2149580032, i64 2149580076, i64 2149580099, i64 2149580132, i64 2149580163, i64 2149580202}
!6037 = !DILocation(line: 89, column: 9, scope: !6027)
!6038 = !DILocation(line: 90, column: 1, scope: !6027)
!6039 = !DILocation(line: 89, column: 2, scope: !6027)
!6040 = distinct !DISubprogram(name: "static_key_false", scope: !1443, file: !1443, line: 205, type: !6041, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6055)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!388, !6043}
!6043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6044, size: 64)
!6044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1443, line: 85, size: 128, elements: !6045)
!6045 = !{!6046, !6047}
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6044, file: !1443, line: 86, baseType: !347, size: 32)
!6047 = !DIDerivedType(tag: DW_TAG_member, scope: !6044, file: !1443, line: 101, baseType: !6048, size: 64, offset: 64)
!6048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6044, file: !1443, line: 101, size: 64, elements: !6049)
!6049 = !{!6050, !6051, !6052}
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6048, file: !1443, line: 102, baseType: !159, size: 64)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6048, file: !1443, line: 103, baseType: !1441, size: 64)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6048, file: !1443, line: 104, baseType: !6053, size: 64)
!6053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6054, size: 64)
!6054 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1443, line: 104, flags: DIFlagFwdDecl)
!6055 = !{!6056}
!6056 = !DILocalVariable(name: "key", arg: 1, scope: !6040, file: !1443, line: 205, type: !6043)
!6057 = !DILocation(line: 205, column: 65, scope: !6040)
!6058 = !DILocation(line: 207, column: 28, scope: !6040)
!6059 = !DILocation(line: 207, column: 9, scope: !6040)
!6060 = !DILocation(line: 207, column: 2, scope: !6040)
!6061 = !DISubprogram(name: "do_trace_read_msr", scope: !5918, file: !5918, line: 65, type: !6062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{null, !7, !701, !114}
!6064 = distinct !DISubprogram(name: "arch_static_branch", scope: !6065, file: !6065, line: 25, type: !6066, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6068)
!6065 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6066 = !DISubroutineType(types: !6067)
!6067 = !{!388, !6043, !388}
!6068 = !{!6069, !6070, !6071}
!6069 = !DILocalVariable(name: "key", arg: 1, scope: !6064, file: !6065, line: 25, type: !6043)
!6070 = !DILocalVariable(name: "branch", arg: 2, scope: !6064, file: !6065, line: 25, type: !388)
!6071 = !DILabel(scope: !6064, name: "l_yes", file: !6065, line: 33)
!6072 = !DILocation(line: 25, column: 67, scope: !6064)
!6073 = !DILocation(line: 25, column: 77, scope: !6064)
!6074 = !DILocation(line: 30, column: 13, scope: !6064)
!6075 = !DILocation(line: 30, column: 28, scope: !6064)
!6076 = !DILocation(line: 30, column: 26, scope: !6064)
!6077 = !DILocation(line: 27, column: 2, scope: !6064)
!6078 = !{i64 1566731, i64 1566775, i64 2149051458, i64 2149051479, i64 2149051505, i64 2149051538, i64 2149051572, i64 2149051596}
!6079 = !DILocation(line: 32, column: 2, scope: !6064)
!6080 = !DILocation(line: 33, column: 1, scope: !6064)
!6081 = !DILocation(line: 34, column: 2, scope: !6064)
!6082 = !DILocation(line: 35, column: 1, scope: !6064)
!6083 = distinct !DISubprogram(name: "find_first_bit", scope: !6084, file: !6084, line: 200, type: !6085, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6088)
!6084 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6085 = !DISubroutineType(types: !6086)
!6086 = !{!159, !6087, !159}
!6087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!6088 = !{!6089, !6090, !6091}
!6089 = !DILocalVariable(name: "addr", arg: 1, scope: !6083, file: !6084, line: 200, type: !6087)
!6090 = !DILocalVariable(name: "size", arg: 2, scope: !6083, file: !6084, line: 200, type: !159)
!6091 = !DILocalVariable(name: "val", scope: !6092, file: !6084, line: 203, type: !159)
!6092 = distinct !DILexicalBlock(scope: !6093, file: !6084, line: 202, column: 31)
!6093 = distinct !DILexicalBlock(scope: !6083, file: !6084, line: 202, column: 6)
!6094 = !DILocation(line: 200, column: 51, scope: !6083)
!6095 = !DILocation(line: 200, column: 71, scope: !6083)
!6096 = !DILocation(line: 202, column: 6, scope: !6093)
!6097 = !DILocation(line: 202, column: 6, scope: !6083)
!6098 = !DILocation(line: 203, column: 3, scope: !6092)
!6099 = !DILocation(line: 203, column: 17, scope: !6092)
!6100 = !DILocation(line: 203, column: 24, scope: !6092)
!6101 = !DILocation(line: 203, column: 23, scope: !6092)
!6102 = !DILocation(line: 203, column: 31, scope: !6092)
!6103 = !DILocation(line: 203, column: 29, scope: !6092)
!6104 = !DILocation(line: 205, column: 10, scope: !6092)
!6105 = !DILocation(line: 205, column: 16, scope: !6092)
!6106 = !DILocation(line: 205, column: 29, scope: !6092)
!6107 = !DILocation(line: 205, column: 3, scope: !6092)
!6108 = !DILocation(line: 206, column: 2, scope: !6093)
!6109 = !DILocation(line: 208, column: 25, scope: !6083)
!6110 = !DILocation(line: 208, column: 31, scope: !6083)
!6111 = !DILocation(line: 208, column: 9, scope: !6083)
!6112 = !DILocation(line: 208, column: 2, scope: !6083)
!6113 = !DILocation(line: 209, column: 1, scope: !6083)
!6114 = distinct !DISubprogram(name: "variable__ffs", scope: !6115, file: !6115, line: 250, type: !6116, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6118)
!6115 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6116 = !DISubroutineType(types: !6117)
!6117 = !{!159, !159}
!6118 = !{!6119}
!6119 = !DILocalVariable(name: "word", arg: 1, scope: !6114, file: !6115, line: 250, type: !159)
!6120 = !DILocation(line: 250, column: 66, scope: !6114)
!6121 = !DILocation(line: 254, column: 11, scope: !6114)
!6122 = !DILocation(line: 252, column: 2, scope: !6114)
!6123 = !{i64 523777}
!6124 = !DILocation(line: 255, column: 9, scope: !6114)
!6125 = !DILocation(line: 255, column: 2, scope: !6114)
!6126 = !DISubprogram(name: "_find_first_bit", scope: !6084, file: !6084, line: 21, type: !6085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6127 = !DISubprogram(name: "mtrr_copy_map", scope: !268, file: !268, line: 76, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6128 = !DISubprogram(name: "mtrr_state_warn", scope: !268, file: !268, line: 65, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6129 = distinct !DISubprogram(name: "mtrr_register_syscore", scope: !268, file: !268, line: 73, type: !1478, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6130 = !DILocation(line: 73, column: 50, scope: !6129)
