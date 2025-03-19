; ModuleID = 'kernel/kexec.c'
source_filename = "kernel/kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atomic_t = type { i32 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.kimage = type { i64, ptr, ptr, i64, ptr, ptr, ptr, i64, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i64, i8, %struct.kimage_arch, i32, i32, i8, ptr, i64, i64 }
%struct.kexec_segment = type { %union.anon.21, i64, i64, i64 }
%union.anon.21 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kimage_arch = type { ptr, ptr, ptr, ptr, ptr }
%struct.compat_kexec_segment = type { i32, i32, i32, i32 }

@kexec_crash_image = external dso_local global ptr, align 8
@kexec_image = external dso_local global ptr, align 8
@__kexec_lock = external dso_local global %struct.atomic_t, align 4
@crashk_res = external dso_local global %struct.resource, align 8
@.str = private unnamed_addr constant [49 x i8] c"\013kexec: Could not allocate control_code_buffer\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [41 x i8] c"\013kexec: Could not allocate swap buffer\0A\00", align 1, !dbg !7
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !18

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_kexec_load(ptr noundef %regs) #0 align 16 !dbg !381 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !442
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !442
  %1 = load i64, ptr %di, align 8, !dbg !442
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !442
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !442
  %3 = load i64, ptr %si, align 8, !dbg !442
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !442
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !442
  %5 = load i64, ptr %dx, align 8, !dbg !442
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !442
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !442
  %7 = load i64, ptr %r10, align 8, !dbg !442
  %call = call i64 @__se_sys_kexec_load(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7) #18, !dbg !442
  ret i64 %call, !dbg !442
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_kexec_load(i64 noundef %entry1, i64 noundef %nr_segments, i64 noundef %segments, i64 noundef %flags) #0 align 16 !dbg !443 {
entry:
  %entry.addr = alloca i64, align 8
  %nr_segments.addr = alloca i64, align 8
  %segments.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !447, metadata !DIExpression()), !dbg !452
  store i64 %nr_segments, ptr %nr_segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_segments.addr, metadata !448, metadata !DIExpression()), !dbg !452
  store i64 %segments, ptr %segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %segments.addr, metadata !449, metadata !DIExpression()), !dbg !452
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !450, metadata !DIExpression()), !dbg !452
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load i64, ptr %entry.addr, align 8, !dbg !452
  %1 = load i64, ptr %nr_segments.addr, align 8, !dbg !452
  %2 = load i64, ptr %segments.addr, align 8, !dbg !452
  %3 = inttoptr i64 %2 to ptr, !dbg !452
  %4 = load i64, ptr %flags.addr, align 8, !dbg !452
  %call = call i64 @__do_sys_kexec_load(i64 noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef %4) #18, !dbg !452
  store i64 %call, ptr %ret, align 8, !dbg !452
  br label %do.body, !dbg !452

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !453

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !453

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %ret, align 8, !dbg !452
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !452
  ret i64 %5, !dbg !452
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_kexec_load(ptr noundef %regs) #0 align 16 !dbg !455 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !458
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !458
  %1 = load i64, ptr %bx, align 8, !dbg !458
  %conv = trunc i64 %1 to i32, !dbg !458
  %conv1 = zext i32 %conv to i64, !dbg !458
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !458
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !458
  %3 = load i64, ptr %cx, align 8, !dbg !458
  %conv2 = trunc i64 %3 to i32, !dbg !458
  %conv3 = zext i32 %conv2 to i64, !dbg !458
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !458
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !458
  %5 = load i64, ptr %dx, align 8, !dbg !458
  %conv4 = trunc i64 %5 to i32, !dbg !458
  %conv5 = zext i32 %conv4 to i64, !dbg !458
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !458
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !458
  %7 = load i64, ptr %si, align 8, !dbg !458
  %conv6 = trunc i64 %7 to i32, !dbg !458
  %conv7 = zext i32 %conv6 to i64, !dbg !458
  %call = call i64 @__se_sys_kexec_load(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7) #18, !dbg !458
  ret i64 %call, !dbg !458
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_kexec_load(ptr noundef %regs) #0 align 16 !dbg !459 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !462
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !462
  %1 = load i64, ptr %bx, align 8, !dbg !462
  %conv = trunc i64 %1 to i32, !dbg !462
  %conv1 = zext i32 %conv to i64, !dbg !462
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !462
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !462
  %3 = load i64, ptr %cx, align 8, !dbg !462
  %conv2 = trunc i64 %3 to i32, !dbg !462
  %conv3 = zext i32 %conv2 to i64, !dbg !462
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !462
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !462
  %5 = load i64, ptr %dx, align 8, !dbg !462
  %conv4 = trunc i64 %5 to i32, !dbg !462
  %conv5 = zext i32 %conv4 to i64, !dbg !462
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !462
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !462
  %7 = load i64, ptr %si, align 8, !dbg !462
  %conv6 = trunc i64 %7 to i32, !dbg !462
  %conv7 = zext i32 %conv6 to i64, !dbg !462
  %call = call i64 @__se_compat_sys_kexec_load(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7) #18, !dbg !462
  ret i64 %call, !dbg !462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_kexec_load(i64 noundef %entry1, i64 noundef %nr_segments, i64 noundef %segments, i64 noundef %flags) #0 align 16 !dbg !463 {
entry:
  %entry.addr = alloca i64, align 8
  %nr_segments.addr = alloca i64, align 8
  %segments.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store i64 %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !465, metadata !DIExpression()), !dbg !469
  store i64 %nr_segments, ptr %nr_segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_segments.addr, metadata !466, metadata !DIExpression()), !dbg !469
  store i64 %segments, ptr %segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %segments.addr, metadata !467, metadata !DIExpression()), !dbg !469
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load i64, ptr %entry.addr, align 8, !dbg !469
  %conv = trunc i64 %0 to i32, !dbg !469
  %1 = load i64, ptr %nr_segments.addr, align 8, !dbg !469
  %conv2 = trunc i64 %1 to i32, !dbg !469
  %2 = load i64, ptr %segments.addr, align 8, !dbg !469
  %3 = inttoptr i64 %2 to ptr, !dbg !469
  %4 = load i64, ptr %flags.addr, align 8, !dbg !469
  %conv3 = trunc i64 %4 to i32, !dbg !469
  %call = call i64 @__do_compat_sys_kexec_load(i32 noundef %conv, i32 noundef %conv2, ptr noundef %3, i32 noundef %conv3) #18, !dbg !469
  ret i64 %call, !dbg !469
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_kexec_load(i64 noundef %entry1, i64 noundef %nr_segments, ptr noundef %segments, i64 noundef %flags) #3 align 16 !dbg !470 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca i64, align 8
  %nr_segments.addr = alloca i64, align 8
  %segments.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %ksegments = alloca ptr, align 8
  %result = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !474, metadata !DIExpression()), !dbg !480
  store i64 %nr_segments, ptr %nr_segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_segments.addr, metadata !475, metadata !DIExpression()), !dbg !480
  store ptr %segments, ptr %segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %segments.addr, metadata !476, metadata !DIExpression()), !dbg !480
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !477, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %ksegments) #19, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %ksegments, metadata !478, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #19, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %result, metadata !479, metadata !DIExpression()), !dbg !484
  %0 = load i64, ptr %nr_segments.addr, align 8, !dbg !485
  %1 = load i64, ptr %flags.addr, align 8, !dbg !486
  %call = call i32 @kexec_load_check(i64 noundef %0, i64 noundef %1) #18, !dbg !487
  %conv = sext i32 %call to i64, !dbg !487
  store i64 %conv, ptr %result, align 8, !dbg !488
  %2 = load i64, ptr %result, align 8, !dbg !489
  %tobool = icmp ne i64 %2, 0, !dbg !489
  br i1 %tobool, label %if.then, label %if.end, !dbg !491

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %result, align 8, !dbg !492
  store i64 %3, ptr %retval, align 8, !dbg !493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !493

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %flags.addr, align 8, !dbg !494
  %and = and i64 %4, 4294901760, !dbg !496
  %cmp = icmp ne i64 %and, 4063232, !dbg !497
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !498

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, ptr %flags.addr, align 8, !dbg !499
  %and3 = and i64 %5, 4294901760, !dbg !500
  %cmp4 = icmp ne i64 %and3, 0, !dbg !501
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !502

if.then6:                                         ; preds = %land.lhs.true
  store i64 -22, ptr %retval, align 8, !dbg !503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !503

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %segments.addr, align 8, !dbg !504
  %7 = load i64, ptr %nr_segments.addr, align 8, !dbg !505
  %call8 = call ptr @memdup_array_user(ptr noundef %6, i64 noundef %7, i64 noundef 32) #18, !dbg !506
  store ptr %call8, ptr %ksegments, align 8, !dbg !507
  %8 = load ptr, ptr %ksegments, align 8, !dbg !508
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %8) #18, !dbg !510
  br i1 %call9, label %if.then10, label %if.end12, !dbg !511

if.then10:                                        ; preds = %if.end7
  %9 = load ptr, ptr %ksegments, align 8, !dbg !512
  %call11 = call i64 @PTR_ERR(ptr noundef %9) #18, !dbg !513
  store i64 %call11, ptr %retval, align 8, !dbg !514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !514

if.end12:                                         ; preds = %if.end7
  %10 = load i64, ptr %entry.addr, align 8, !dbg !515
  %11 = load i64, ptr %nr_segments.addr, align 8, !dbg !516
  %12 = load ptr, ptr %ksegments, align 8, !dbg !517
  %13 = load i64, ptr %flags.addr, align 8, !dbg !518
  %call13 = call i32 @do_kexec_load(i64 noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13) #18, !dbg !519
  %conv14 = sext i32 %call13 to i64, !dbg !519
  store i64 %conv14, ptr %result, align 8, !dbg !520
  %14 = load ptr, ptr %ksegments, align 8, !dbg !521
  call void @kfree(ptr noundef %14) #18, !dbg !522
  %15 = load i64, ptr %result, align 8, !dbg !523
  store i64 %15, ptr %retval, align 8, !dbg !524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !524

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #19, !dbg !525
  call void @llvm.lifetime.end.p0(i64 8, ptr %ksegments) #19, !dbg !525
  %16 = load i64, ptr %retval, align 8, !dbg !525
  ret i64 %16, !dbg !525
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kexec_load_check(i64 noundef %nr_segments, i64 noundef %flags) #3 align 16 !dbg !526 {
entry:
  %retval = alloca i32, align 4
  %nr_segments.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %image_type = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nr_segments, ptr %nr_segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_segments.addr, metadata !530, metadata !DIExpression()), !dbg !534
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !531, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 4, ptr %image_type) #19, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %image_type, metadata !532, metadata !DIExpression()), !dbg !537
  %0 = load i64, ptr %flags.addr, align 8, !dbg !538
  %and = and i64 %0, 1, !dbg !539
  %tobool = icmp ne i64 %and, 0, !dbg !540
  %1 = zext i1 %tobool to i64, !dbg !540
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !540
  store i32 %cond, ptr %image_type, align 4, !dbg !537
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #19, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %result, metadata !533, metadata !DIExpression()), !dbg !542
  %2 = load i32, ptr %image_type, align 4, !dbg !543
  %call = call zeroext i1 @kexec_load_permitted(i32 noundef %2) #18, !dbg !545
  br i1 %call, label %if.end, label %if.then, !dbg !546

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !547

if.end:                                           ; preds = %entry
  %call1 = call i32 @security_kernel_load_data(i32 noundef 3, i1 noundef zeroext false) #18, !dbg !548
  store i32 %call1, ptr %result, align 4, !dbg !549
  %3 = load i32, ptr %result, align 4, !dbg !550
  %cmp = icmp slt i32 %3, 0, !dbg !552
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !553

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %result, align 4, !dbg !554
  store i32 %4, ptr %retval, align 4, !dbg !555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !555

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @security_locked_down(i32 noundef 4) #18, !dbg !556
  store i32 %call4, ptr %result, align 4, !dbg !557
  %5 = load i32, ptr %result, align 4, !dbg !558
  %tobool5 = icmp ne i32 %5, 0, !dbg !558
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !560

if.then6:                                         ; preds = %if.end3
  %6 = load i32, ptr %result, align 4, !dbg !561
  store i32 %6, ptr %retval, align 4, !dbg !562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !562

if.end7:                                          ; preds = %if.end3
  %7 = load i64, ptr %flags.addr, align 8, !dbg !563
  %and8 = and i64 %7, 5, !dbg !565
  %8 = load i64, ptr %flags.addr, align 8, !dbg !566
  %and9 = and i64 %8, 65535, !dbg !567
  %cmp10 = icmp ne i64 %and8, %and9, !dbg !568
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !569

if.then11:                                        ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !570

if.end12:                                         ; preds = %if.end7
  %9 = load i64, ptr %nr_segments.addr, align 8, !dbg !571
  %cmp13 = icmp ugt i64 %9, 16, !dbg !573
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !574

if.then14:                                        ; preds = %if.end12
  store i32 -22, ptr %retval, align 4, !dbg !575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !575

if.end15:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !576

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then11, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #19, !dbg !577
  call void @llvm.lifetime.end.p0(i64 4, ptr %image_type) #19, !dbg !577
  %10 = load i32, ptr %retval, align 4, !dbg !577
  ret i32 %10, !dbg !577
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memdup_array_user(ptr noundef %src, i64 noundef %n, i64 noundef %size) #3 align 16 !dbg !578 {
entry:
  %retval = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !585, metadata !DIExpression()), !dbg !589
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !586, metadata !DIExpression()), !dbg !590
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !587, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbytes) #19, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %nbytes, metadata !588, metadata !DIExpression()), !dbg !593
  %0 = load i64, ptr %n.addr, align 8, !dbg !594
  %1 = load i64, ptr %size.addr, align 8, !dbg !594
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !594
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !594
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !594
  store i64 %4, ptr %nbytes, align 8, !dbg !594
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !594
  br i1 %call, label %if.then, label %if.end, !dbg !596

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -75) #18, !dbg !597
  store ptr %call1, ptr %retval, align 8, !dbg !598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !598

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %src.addr, align 8, !dbg !599
  %6 = load i64, ptr %nbytes, align 8, !dbg !600
  %call2 = call ptr @memdup_user(ptr noundef %5, i64 noundef %6) #18, !dbg !601
  store ptr %call2, ptr %retval, align 8, !dbg !602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !602

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbytes) #19, !dbg !603
  %7 = load ptr, ptr %retval, align 8, !dbg !603
  ret ptr %7, !dbg !603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !604 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !613
  %1 = ptrtoint ptr %0 to i64, !dbg !613
  %2 = inttoptr i64 %1 to ptr, !dbg !613
  %3 = ptrtoint ptr %2 to i64, !dbg !613
  %cmp = icmp uge i64 %3, -4095, !dbg !613
  %lnot = xor i1 %cmp, true, !dbg !613
  %lnot1 = xor i1 %lnot, true, !dbg !613
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !613
  %conv = sext i32 %lnot.ext to i64, !dbg !613
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !613
  %tobool = icmp ne i64 %expval, 0, !dbg !613
  ret i1 %tobool, !dbg !614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !615 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !621
  %1 = ptrtoint ptr %0 to i64, !dbg !622
  ret i64 %1, !dbg !623
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_kexec_load(i64 noundef %entry1, i64 noundef %nr_segments, ptr noundef %segments, i64 noundef %flags) #0 align 16 !dbg !624 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca i64, align 8
  %nr_segments.addr = alloca i64, align 8
  %segments.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %dest_image = alloca ptr, align 8
  %image = alloca ptr, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ai_ptr13 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__ret18 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %__ai_ptr53 = alloca ptr, align 8
  %tmp57 = alloca ptr, align 8
  %__ret58 = alloca ptr, align 8
  %tmp59 = alloca ptr, align 8
  store i64 %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !628, metadata !DIExpression()), !dbg !6324
  store i64 %nr_segments, ptr %nr_segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_segments.addr, metadata !629, metadata !DIExpression()), !dbg !6325
  store ptr %segments, ptr %segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %segments.addr, metadata !630, metadata !DIExpression()), !dbg !6326
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !631, metadata !DIExpression()), !dbg !6327
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest_image) #19, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %dest_image, metadata !632, metadata !DIExpression()), !dbg !6329
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #19, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %image, metadata !6303, metadata !DIExpression()), !dbg !6330
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #19, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6304, metadata !DIExpression()), !dbg !6332
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !6333
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6305, metadata !DIExpression()), !dbg !6334
  %call = call zeroext i1 @kexec_trylock() #18, !dbg !6335
  br i1 %call, label %if.end, label %if.then, !dbg !6337

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !6338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6338

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6339
  %and = and i64 %0, 1, !dbg !6341
  %tobool = icmp ne i64 %and, 0, !dbg !6341
  br i1 %tobool, label %if.then2, label %if.else, !dbg !6342

if.then2:                                         ; preds = %if.end
  store ptr @kexec_crash_image, ptr %dest_image, align 8, !dbg !6343
  %1 = load ptr, ptr @kexec_crash_image, align 8, !dbg !6345
  %tobool3 = icmp ne ptr %1, null, !dbg !6345
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6347

if.then4:                                         ; preds = %if.then2
  call void @arch_kexec_unprotect_crashkres() #18, !dbg !6348
  br label %if.end5, !dbg !6348

if.end5:                                          ; preds = %if.then4, %if.then2
  br label %if.end6, !dbg !6349

if.else:                                          ; preds = %if.end
  store ptr @kexec_image, ptr %dest_image, align 8, !dbg !6350
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end5
  %2 = load i64, ptr %nr_segments.addr, align 8, !dbg !6352
  %cmp = icmp eq i64 %2, 0, !dbg !6353
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !6354

if.then7:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #19, !dbg !6355
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !6306, metadata !DIExpression()), !dbg !6355
  %3 = load ptr, ptr %dest_image, align 8, !dbg !6355
  store ptr %3, ptr %__ai_ptr, align 8, !dbg !6355
  br label %do.body, !dbg !6355

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !6356

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6356

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !6355
  call void @instrument_atomic_read_write(ptr noundef %4, i64 noundef 8) #18, !dbg !6355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #19, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6310, metadata !DIExpression()), !dbg !6358
  store ptr null, ptr %__ret, align 8, !dbg !6358
  %5 = load ptr, ptr %__ret, align 8, !dbg !6358
  %6 = load ptr, ptr %__ai_ptr, align 8, !dbg !6358
  %7 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %6, ptr %5, ptr elementtype(ptr) %6) #19, !dbg !6358, !srcloc !6359
  store ptr %7, ptr %__ret, align 8, !dbg !6358
  %8 = load ptr, ptr %__ret, align 8, !dbg !6358
  store ptr %8, ptr %tmp8, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #19, !dbg !6355
  %9 = load ptr, ptr %tmp8, align 8, !dbg !6358
  store ptr %9, ptr %tmp, align 8, !dbg !6355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #19, !dbg !6360
  %10 = load ptr, ptr %tmp, align 8, !dbg !6355
  call void @kimage_free(ptr noundef %10) #18, !dbg !6361
  store i32 0, ptr %ret, align 4, !dbg !6362
  br label %out_unlock, !dbg !6363

if.end9:                                          ; preds = %if.end6
  %11 = load i64, ptr %flags.addr, align 8, !dbg !6364
  %and10 = and i64 %11, 1, !dbg !6365
  %tobool11 = icmp ne i64 %and10, 0, !dbg !6365
  br i1 %tobool11, label %if.then12, label %if.end20, !dbg !6366

if.then12:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr13) #19, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr13, metadata !6312, metadata !DIExpression()), !dbg !6367
  store ptr @kexec_crash_image, ptr %__ai_ptr13, align 8, !dbg !6367
  br label %do.body14, !dbg !6367

do.body14:                                        ; preds = %if.then12
  br label %do.cond15, !dbg !6368

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6368

do.end16:                                         ; preds = %do.cond15
  %12 = load ptr, ptr %__ai_ptr13, align 8, !dbg !6367
  call void @instrument_atomic_read_write(ptr noundef %12, i64 noundef 8) #18, !dbg !6367
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret18) #19, !dbg !6370
  call void @llvm.dbg.declare(metadata ptr %__ret18, metadata !6316, metadata !DIExpression()), !dbg !6370
  store ptr null, ptr %__ret18, align 8, !dbg !6370
  %13 = load ptr, ptr %__ret18, align 8, !dbg !6370
  %14 = load ptr, ptr %__ai_ptr13, align 8, !dbg !6370
  %15 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %14, ptr %13, ptr elementtype(ptr) %14) #19, !dbg !6370, !srcloc !6371
  store ptr %15, ptr %__ret18, align 8, !dbg !6370
  %16 = load ptr, ptr %__ret18, align 8, !dbg !6370
  store ptr %16, ptr %tmp19, align 8, !dbg !6370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret18) #19, !dbg !6367
  %17 = load ptr, ptr %tmp19, align 8, !dbg !6370
  store ptr %17, ptr %tmp17, align 8, !dbg !6367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr13) #19, !dbg !6372
  %18 = load ptr, ptr %tmp17, align 8, !dbg !6367
  call void @kimage_free(ptr noundef %18) #18, !dbg !6373
  br label %if.end20, !dbg !6374

if.end20:                                         ; preds = %do.end16, %if.end9
  %19 = load i64, ptr %entry.addr, align 8, !dbg !6375
  %20 = load i64, ptr %nr_segments.addr, align 8, !dbg !6376
  %21 = load ptr, ptr %segments.addr, align 8, !dbg !6377
  %22 = load i64, ptr %flags.addr, align 8, !dbg !6378
  %call21 = call i32 @kimage_alloc_init(ptr noundef %image, i64 noundef %19, i64 noundef %20, ptr noundef %21, i64 noundef %22) #18, !dbg !6379
  store i32 %call21, ptr %ret, align 4, !dbg !6380
  %23 = load i32, ptr %ret, align 4, !dbg !6381
  %tobool22 = icmp ne i32 %23, 0, !dbg !6381
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !6383

if.then23:                                        ; preds = %if.end20
  br label %out_unlock, !dbg !6384

if.end24:                                         ; preds = %if.end20
  %24 = load i64, ptr %flags.addr, align 8, !dbg !6385
  %and25 = and i64 %24, 2, !dbg !6387
  %tobool26 = icmp ne i64 %and25, 0, !dbg !6387
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !6388

if.then27:                                        ; preds = %if.end24
  %25 = load ptr, ptr %image, align 8, !dbg !6389
  %preserve_context = getelementptr inbounds %struct.kimage, ptr %25, i32 0, i32 13, !dbg !6390
  %bf.load = load i8, ptr %preserve_context, align 8, !dbg !6391
  %bf.clear = and i8 %bf.load, -3, !dbg !6391
  %bf.set = or i8 %bf.clear, 2, !dbg !6391
  store i8 %bf.set, ptr %preserve_context, align 8, !dbg !6391
  br label %if.end28, !dbg !6389

if.end28:                                         ; preds = %if.then27, %if.end24
  %26 = load i64, ptr %flags.addr, align 8, !dbg !6392
  %and29 = and i64 %26, 4, !dbg !6394
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6394
  br i1 %tobool30, label %if.then31, label %if.end35, !dbg !6395

if.then31:                                        ; preds = %if.end28
  %27 = load ptr, ptr %image, align 8, !dbg !6396
  %update_elfcorehdr = getelementptr inbounds %struct.kimage, ptr %27, i32 0, i32 13, !dbg !6397
  %bf.load32 = load i8, ptr %update_elfcorehdr, align 8, !dbg !6398
  %bf.clear33 = and i8 %bf.load32, -9, !dbg !6398
  %bf.set34 = or i8 %bf.clear33, 8, !dbg !6398
  store i8 %bf.set34, ptr %update_elfcorehdr, align 8, !dbg !6398
  br label %if.end35, !dbg !6396

if.end35:                                         ; preds = %if.then31, %if.end28
  %28 = load ptr, ptr %image, align 8, !dbg !6399
  %call36 = call i32 @machine_kexec_prepare(ptr noundef %28) #18, !dbg !6400
  store i32 %call36, ptr %ret, align 4, !dbg !6401
  %29 = load i32, ptr %ret, align 4, !dbg !6402
  %tobool37 = icmp ne i32 %29, 0, !dbg !6402
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !6404

if.then38:                                        ; preds = %if.end35
  br label %out, !dbg !6405

if.end39:                                         ; preds = %if.end35
  %30 = load ptr, ptr %image, align 8, !dbg !6406
  %call40 = call i32 @kimage_crash_copy_vmcoreinfo(ptr noundef %30) #18, !dbg !6407
  store i32 %call40, ptr %ret, align 4, !dbg !6408
  %31 = load i32, ptr %ret, align 4, !dbg !6409
  %tobool41 = icmp ne i32 %31, 0, !dbg !6409
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !6411

if.then42:                                        ; preds = %if.end39
  br label %out, !dbg !6412

if.end43:                                         ; preds = %if.end39
  store i64 0, ptr %i, align 8, !dbg !6413
  br label %for.cond, !dbg !6415

for.cond:                                         ; preds = %for.inc, %if.end43
  %32 = load i64, ptr %i, align 8, !dbg !6416
  %33 = load i64, ptr %nr_segments.addr, align 8, !dbg !6418
  %cmp44 = icmp ult i64 %32, %33, !dbg !6419
  br i1 %cmp44, label %for.body, label %for.end, !dbg !6420

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %image, align 8, !dbg !6421
  %35 = load ptr, ptr %image, align 8, !dbg !6423
  %segment = getelementptr inbounds %struct.kimage, ptr %35, i32 0, i32 8, !dbg !6424
  %36 = load i64, ptr %i, align 8, !dbg !6425
  %arrayidx = getelementptr [16 x %struct.kexec_segment], ptr %segment, i64 0, i64 %36, !dbg !6423
  %call45 = call i32 @kimage_load_segment(ptr noundef %34, ptr noundef %arrayidx) #18, !dbg !6426
  store i32 %call45, ptr %ret, align 4, !dbg !6427
  %37 = load i32, ptr %ret, align 4, !dbg !6428
  %tobool46 = icmp ne i32 %37, 0, !dbg !6428
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !6430

if.then47:                                        ; preds = %for.body
  br label %out, !dbg !6431

if.end48:                                         ; preds = %for.body
  br label %for.inc, !dbg !6432

for.inc:                                          ; preds = %if.end48
  %38 = load i64, ptr %i, align 8, !dbg !6433
  %inc = add i64 %38, 1, !dbg !6433
  store i64 %inc, ptr %i, align 8, !dbg !6433
  br label %for.cond, !dbg !6434, !llvm.loop !6435

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %image, align 8, !dbg !6439
  call void @kimage_terminate(ptr noundef %39) #18, !dbg !6440
  %40 = load ptr, ptr %image, align 8, !dbg !6441
  %call49 = call i32 @machine_kexec_post_load(ptr noundef %40) #18, !dbg !6442
  store i32 %call49, ptr %ret, align 4, !dbg !6443
  %41 = load i32, ptr %ret, align 4, !dbg !6444
  %tobool50 = icmp ne i32 %41, 0, !dbg !6444
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !6446

if.then51:                                        ; preds = %for.end
  br label %out, !dbg !6447

if.end52:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr53) #19, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr53, metadata !6318, metadata !DIExpression()), !dbg !6448
  %42 = load ptr, ptr %dest_image, align 8, !dbg !6448
  store ptr %42, ptr %__ai_ptr53, align 8, !dbg !6448
  br label %do.body54, !dbg !6448

do.body54:                                        ; preds = %if.end52
  br label %do.cond55, !dbg !6449

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !6449

do.end56:                                         ; preds = %do.cond55
  %43 = load ptr, ptr %__ai_ptr53, align 8, !dbg !6448
  call void @instrument_atomic_read_write(ptr noundef %43, i64 noundef 8) #18, !dbg !6448
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret58) #19, !dbg !6451
  call void @llvm.dbg.declare(metadata ptr %__ret58, metadata !6320, metadata !DIExpression()), !dbg !6451
  %44 = load ptr, ptr %image, align 8, !dbg !6451
  store ptr %44, ptr %__ret58, align 8, !dbg !6451
  %45 = load ptr, ptr %__ret58, align 8, !dbg !6451
  %46 = load ptr, ptr %__ai_ptr53, align 8, !dbg !6451
  %47 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %46, ptr %45, ptr elementtype(ptr) %46) #19, !dbg !6451, !srcloc !6452
  store ptr %47, ptr %__ret58, align 8, !dbg !6451
  %48 = load ptr, ptr %__ret58, align 8, !dbg !6451
  store ptr %48, ptr %tmp59, align 8, !dbg !6451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret58) #19, !dbg !6448
  %49 = load ptr, ptr %tmp59, align 8, !dbg !6451
  store ptr %49, ptr %tmp57, align 8, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr53) #19, !dbg !6453
  %50 = load ptr, ptr %tmp57, align 8, !dbg !6448
  store ptr %50, ptr %image, align 8, !dbg !6454
  br label %out, !dbg !6455

out:                                              ; preds = %do.end56, %if.then51, %if.then47, %if.then42, %if.then38
  call void @llvm.dbg.label(metadata !6322), !dbg !6456
  %51 = load i64, ptr %flags.addr, align 8, !dbg !6457
  %and60 = and i64 %51, 1, !dbg !6459
  %tobool61 = icmp ne i64 %and60, 0, !dbg !6459
  br i1 %tobool61, label %land.lhs.true, label %if.end64, !dbg !6460

land.lhs.true:                                    ; preds = %out
  %52 = load ptr, ptr @kexec_crash_image, align 8, !dbg !6461
  %tobool62 = icmp ne ptr %52, null, !dbg !6461
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !6462

if.then63:                                        ; preds = %land.lhs.true
  call void @arch_kexec_protect_crashkres() #18, !dbg !6463
  br label %if.end64, !dbg !6463

if.end64:                                         ; preds = %if.then63, %land.lhs.true, %out
  %53 = load ptr, ptr %image, align 8, !dbg !6464
  call void @kimage_free(ptr noundef %53) #18, !dbg !6465
  br label %out_unlock, !dbg !6465

out_unlock:                                       ; preds = %if.end64, %if.then23, %do.end
  call void @llvm.dbg.label(metadata !6323), !dbg !6466
  call void @kexec_unlock() #18, !dbg !6467
  %54 = load i32, ptr %ret, align 4, !dbg !6468
  store i32 %54, ptr %retval, align 4, !dbg !6469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6469

cleanup:                                          ; preds = %out_unlock, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #19, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #19, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest_image) #19, !dbg !6470
  %55 = load i32, ptr %retval, align 4, !dbg !6470
  ret i32 %55, !dbg !6470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6471 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6474 dso_local zeroext i1 @kexec_load_permitted(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6477 dso_local i32 @security_kernel_load_data(i32 noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6480 dso_local i32 @security_locked_down(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !6483 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6488, metadata !DIExpression()), !dbg !6489
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6490, !range !6491, !noundef !1421
  %tobool = trunc i8 %0 to i1, !dbg !6490
  %lnot = xor i1 %tobool, true, !dbg !6490
  %lnot1 = xor i1 %lnot, true, !dbg !6490
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6490
  %conv = sext i32 %lnot.ext to i64, !dbg !6490
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6490
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6490
  ret i1 %tobool2, !dbg !6492
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !6493 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6497, metadata !DIExpression()), !dbg !6498
  %0 = load i64, ptr %error.addr, align 8, !dbg !6499
  %1 = inttoptr i64 %0 to ptr, !dbg !6500
  ret ptr %1, !dbg !6501
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6502 dso_local ptr @memdup_user(ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kexec_trylock() #3 align 16 !dbg !6505 {
entry:
  %call = call i32 @atomic_cmpxchg_acquire(ptr noundef @__kexec_lock, i32 noundef 0, i32 noundef 1) #18, !dbg !6507
  %cmp = icmp eq i32 %call, 0, !dbg !6508
  ret i1 %cmp, !dbg !6509
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6510 dso_local void @arch_kexec_unprotect_crashkres() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6511 dso_local void @kimage_free(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6514 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6523, metadata !DIExpression()), !dbg !6525
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6526
  %1 = load i64, ptr %size.addr, align 8, !dbg !6527
  %conv = trunc i64 %1 to i32, !dbg !6527
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6528
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6529
  %3 = load i64, ptr %size.addr, align 8, !dbg !6529
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !6529
  ret void, !dbg !6530
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kimage_alloc_init(ptr noundef %rimage, i64 noundef %entry1, i64 noundef %nr_segments, ptr noundef %segments, i64 noundef %flags) #0 align 16 !dbg !6531 {
entry:
  %retval = alloca i32, align 4
  %rimage.addr = alloca ptr, align 8
  %entry.addr = alloca i64, align 8
  %nr_segments.addr = alloca i64, align 8
  %segments.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %image = alloca ptr, align 8
  %kexec_on_panic = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  store ptr %rimage, ptr %rimage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rimage.addr, metadata !6535, metadata !DIExpression()), !dbg !6545
  store i64 %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6536, metadata !DIExpression()), !dbg !6546
  store i64 %nr_segments, ptr %nr_segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_segments.addr, metadata !6537, metadata !DIExpression()), !dbg !6547
  store ptr %segments, ptr %segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %segments.addr, metadata !6538, metadata !DIExpression()), !dbg !6548
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6539, metadata !DIExpression()), !dbg !6549
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6540, metadata !DIExpression()), !dbg !6551
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #19, !dbg !6552
  call void @llvm.dbg.declare(metadata ptr %image, metadata !6541, metadata !DIExpression()), !dbg !6553
  call void @llvm.lifetime.start.p0(i64 1, ptr %kexec_on_panic) #19, !dbg !6554
  call void @llvm.dbg.declare(metadata ptr %kexec_on_panic, metadata !6542, metadata !DIExpression()), !dbg !6555
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6556
  %and = and i64 %0, 1, !dbg !6557
  %tobool = icmp ne i64 %and, 0, !dbg !6556
  %frombool = zext i1 %tobool to i8, !dbg !6555
  store i8 %frombool, ptr %kexec_on_panic, align 1, !dbg !6555
  %1 = load i8, ptr %kexec_on_panic, align 1, !dbg !6558, !range !6491, !noundef !1421
  %tobool2 = trunc i8 %1 to i1, !dbg !6558
  br i1 %tobool2, label %if.then, label %if.end6, !dbg !6560

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %entry.addr, align 8, !dbg !6561
  %3 = load i64, ptr @crashk_res, align 8, !dbg !6564
  %call = call i64 @phys_to_boot_phys(i64 noundef %3) #18, !dbg !6565
  %cmp = icmp ult i64 %2, %call, !dbg !6566
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !6567

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i64, ptr %entry.addr, align 8, !dbg !6568
  %5 = load i64, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 8, !dbg !6569
  %call3 = call i64 @phys_to_boot_phys(i64 noundef %5) #18, !dbg !6570
  %cmp4 = icmp ugt i64 %4, %call3, !dbg !6571
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !6572

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -99, ptr %retval, align 4, !dbg !6573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6573

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end6, !dbg !6574

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call ptr @do_kimage_alloc_init() #18, !dbg !6575
  store ptr %call7, ptr %image, align 8, !dbg !6576
  %6 = load ptr, ptr %image, align 8, !dbg !6577
  %tobool8 = icmp ne ptr %6, null, !dbg !6577
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6579

if.then9:                                         ; preds = %if.end6
  store i32 -12, ptr %retval, align 4, !dbg !6580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6580

if.end10:                                         ; preds = %if.end6
  %7 = load i64, ptr %entry.addr, align 8, !dbg !6581
  %8 = load ptr, ptr %image, align 8, !dbg !6582
  %start = getelementptr inbounds %struct.kimage, ptr %8, i32 0, i32 3, !dbg !6583
  store i64 %7, ptr %start, align 8, !dbg !6584
  %9 = load i64, ptr %nr_segments.addr, align 8, !dbg !6585
  %10 = load ptr, ptr %image, align 8, !dbg !6586
  %nr_segments11 = getelementptr inbounds %struct.kimage, ptr %10, i32 0, i32 7, !dbg !6587
  store i64 %9, ptr %nr_segments11, align 8, !dbg !6588
  %11 = load ptr, ptr %image, align 8, !dbg !6589
  %segment = getelementptr inbounds %struct.kimage, ptr %11, i32 0, i32 8, !dbg !6590
  %arraydecay = getelementptr inbounds [16 x %struct.kexec_segment], ptr %segment, i64 0, i64 0, !dbg !6591
  %12 = load ptr, ptr %segments.addr, align 8, !dbg !6592
  %13 = load i64, ptr %nr_segments.addr, align 8, !dbg !6593
  %mul = mul i64 %13, 32, !dbg !6594
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %12, i64 %mul, i1 false), !dbg !6591
  %14 = load i8, ptr %kexec_on_panic, align 1, !dbg !6595, !range !6491, !noundef !1421
  %tobool12 = trunc i8 %14 to i1, !dbg !6595
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6597

if.then13:                                        ; preds = %if.end10
  %15 = load i64, ptr @crashk_res, align 8, !dbg !6598
  %16 = load ptr, ptr %image, align 8, !dbg !6600
  %control_page = getelementptr inbounds %struct.kimage, ptr %16, i32 0, i32 12, !dbg !6601
  store i64 %15, ptr %control_page, align 8, !dbg !6602
  %17 = load ptr, ptr %image, align 8, !dbg !6603
  %type = getelementptr inbounds %struct.kimage, ptr %17, i32 0, i32 13, !dbg !6604
  %bf.load = load i8, ptr %type, align 8, !dbg !6605
  %bf.clear = and i8 %bf.load, -2, !dbg !6605
  %bf.set = or i8 %bf.clear, 1, !dbg !6605
  store i8 %bf.set, ptr %type, align 8, !dbg !6605
  br label %if.end14, !dbg !6606

if.end14:                                         ; preds = %if.then13, %if.end10
  %18 = load ptr, ptr %image, align 8, !dbg !6607
  %call15 = call i32 @sanity_check_segment_list(ptr noundef %18) #18, !dbg !6608
  store i32 %call15, ptr %ret, align 4, !dbg !6609
  %19 = load i32, ptr %ret, align 4, !dbg !6610
  %tobool16 = icmp ne i32 %19, 0, !dbg !6610
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6612

if.then17:                                        ; preds = %if.end14
  br label %out_free_image, !dbg !6613

if.end18:                                         ; preds = %if.end14
  store i32 -12, ptr %ret, align 4, !dbg !6614
  %20 = load ptr, ptr %image, align 8, !dbg !6615
  %call19 = call i32 @get_order(i64 noundef 4096) #20, !dbg !6616
  %call20 = call ptr @kimage_alloc_control_pages(ptr noundef %20, i32 noundef %call19) #18, !dbg !6617
  %21 = load ptr, ptr %image, align 8, !dbg !6618
  %control_code_page = getelementptr inbounds %struct.kimage, ptr %21, i32 0, i32 4, !dbg !6619
  store ptr %call20, ptr %control_code_page, align 8, !dbg !6620
  %22 = load ptr, ptr %image, align 8, !dbg !6621
  %control_code_page21 = getelementptr inbounds %struct.kimage, ptr %22, i32 0, i32 4, !dbg !6623
  %23 = load ptr, ptr %control_code_page21, align 8, !dbg !6623
  %tobool22 = icmp ne ptr %23, null, !dbg !6621
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !6624

if.then23:                                        ; preds = %if.end18
  br label %do.body, !dbg !6625

do.body:                                          ; preds = %if.then23
  br label %do.cond, !dbg !6628

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6628

do.end:                                           ; preds = %do.cond
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #21, !dbg !6625
  store i32 %call24, ptr %tmp, align 4, !dbg !6628
  %24 = load i32, ptr %tmp, align 4, !dbg !6625
  br label %out_free_image, !dbg !6630

if.end25:                                         ; preds = %if.end18
  %25 = load i8, ptr %kexec_on_panic, align 1, !dbg !6631, !range !6491, !noundef !1421
  %tobool26 = trunc i8 %25 to i1, !dbg !6631
  br i1 %tobool26, label %if.end38, label %if.then27, !dbg !6633

if.then27:                                        ; preds = %if.end25
  %26 = load ptr, ptr %image, align 8, !dbg !6634
  %call28 = call ptr @kimage_alloc_control_pages(ptr noundef %26, i32 noundef 0) #18, !dbg !6636
  %27 = load ptr, ptr %image, align 8, !dbg !6637
  %swap_page = getelementptr inbounds %struct.kimage, ptr %27, i32 0, i32 5, !dbg !6638
  store ptr %call28, ptr %swap_page, align 8, !dbg !6639
  %28 = load ptr, ptr %image, align 8, !dbg !6640
  %swap_page29 = getelementptr inbounds %struct.kimage, ptr %28, i32 0, i32 5, !dbg !6642
  %29 = load ptr, ptr %swap_page29, align 8, !dbg !6642
  %tobool30 = icmp ne ptr %29, null, !dbg !6640
  br i1 %tobool30, label %if.end37, label %if.then31, !dbg !6643

if.then31:                                        ; preds = %if.then27
  br label %do.body32, !dbg !6644

do.body32:                                        ; preds = %if.then31
  br label %do.cond33, !dbg !6647

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6647

do.end34:                                         ; preds = %do.cond33
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #21, !dbg !6644
  store i32 %call36, ptr %tmp35, align 4, !dbg !6647
  %30 = load i32, ptr %tmp35, align 4, !dbg !6644
  br label %out_free_control_pages, !dbg !6649

if.end37:                                         ; preds = %if.then27
  br label %if.end38, !dbg !6650

if.end38:                                         ; preds = %if.end37, %if.end25
  %31 = load ptr, ptr %image, align 8, !dbg !6651
  %32 = load ptr, ptr %rimage.addr, align 8, !dbg !6652
  store ptr %31, ptr %32, align 8, !dbg !6653
  store i32 0, ptr %retval, align 4, !dbg !6654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6654

out_free_control_pages:                           ; preds = %do.end34
  call void @llvm.dbg.label(metadata !6543), !dbg !6655
  %33 = load ptr, ptr %image, align 8, !dbg !6656
  %control_pages = getelementptr inbounds %struct.kimage, ptr %33, i32 0, i32 9, !dbg !6657
  call void @kimage_free_page_list(ptr noundef %control_pages) #18, !dbg !6658
  br label %out_free_image, !dbg !6658

out_free_image:                                   ; preds = %out_free_control_pages, %do.end, %if.then17
  call void @llvm.dbg.label(metadata !6544), !dbg !6659
  %34 = load ptr, ptr %image, align 8, !dbg !6660
  call void @kfree(ptr noundef %34) #18, !dbg !6661
  %35 = load i32, ptr %ret, align 4, !dbg !6662
  store i32 %35, ptr %retval, align 4, !dbg !6663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6663

cleanup:                                          ; preds = %out_free_image, %if.end38, %if.then9, %if.then5
  call void @llvm.lifetime.end.p0(i64 1, ptr %kexec_on_panic) #19, !dbg !6664
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #19, !dbg !6664
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !6664
  %36 = load i32, ptr %retval, align 4, !dbg !6664
  ret i32 %36, !dbg !6664
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6665 dso_local i32 @machine_kexec_prepare(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6668 dso_local i32 @kimage_crash_copy_vmcoreinfo(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6669 dso_local i32 @kimage_load_segment(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6672 dso_local void @kimage_terminate(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @machine_kexec_post_load(ptr noundef %image) #3 align 16 !dbg !6673 {
entry:
  %image.addr = alloca ptr, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !6675, metadata !DIExpression()), !dbg !6676
  ret i32 0, !dbg !6677
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6678 dso_local void @arch_kexec_protect_crashkres() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kexec_unlock() #3 align 16 !dbg !6679 {
entry:
  call void @atomic_set_release(ptr noundef @__kexec_lock, i32 noundef 0) #18, !dbg !6680
  ret void, !dbg !6681
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg_acquire(ptr noundef %v, i32 noundef %old, i32 noundef %new) #6 align 16 !dbg !6682 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6688, metadata !DIExpression()), !dbg !6691
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6689, metadata !DIExpression()), !dbg !6692
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6690, metadata !DIExpression()), !dbg !6693
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6694
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6695
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6696
  %2 = load i32, ptr %old.addr, align 4, !dbg !6697
  %3 = load i32, ptr %new.addr, align 4, !dbg !6698
  %call = call i32 @raw_atomic_cmpxchg_acquire(ptr noundef %1, i32 noundef %2, i32 noundef %3) #18, !dbg !6699
  ret i32 %call, !dbg !6700
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg_acquire(ptr noundef %v, i32 noundef %old, i32 noundef %new) #6 align 16 !dbg !6701 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6704, metadata !DIExpression()), !dbg !6707
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6705, metadata !DIExpression()), !dbg !6708
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6706, metadata !DIExpression()), !dbg !6709
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6710
  %1 = load i32, ptr %old.addr, align 4, !dbg !6711
  %2 = load i32, ptr %new.addr, align 4, !dbg !6712
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #18, !dbg !6713
  ret i32 %call, !dbg !6714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #6 align 16 !dbg !6715 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6718, metadata !DIExpression()), !dbg !6726
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6719, metadata !DIExpression()), !dbg !6727
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6720, metadata !DIExpression()), !dbg !6728
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #19, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6721, metadata !DIExpression()), !dbg !6729
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #19, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6723, metadata !DIExpression()), !dbg !6729
  %0 = load i32, ptr %old.addr, align 4, !dbg !6729
  store i32 %0, ptr %__old, align 4, !dbg !6729
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #19, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6724, metadata !DIExpression()), !dbg !6729
  %1 = load i32, ptr %new.addr, align 4, !dbg !6729
  store i32 %1, ptr %__new, align 4, !dbg !6729
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6725, metadata !DIExpression()), !dbg !6729
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6729
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6729
  store ptr %counter, ptr %__ptr, align 8, !dbg !6729
  %3 = load ptr, ptr %__ptr, align 8, !dbg !6729
  %4 = load i32, ptr %__new, align 4, !dbg !6729
  %5 = load i32, ptr %__old, align 4, !dbg !6729
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #19, !dbg !6729, !srcloc !6730
  store i32 %6, ptr %__ret, align 4, !dbg !6729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !6729
  %7 = load i32, ptr %__ret, align 4, !dbg !6729
  store i32 %7, ptr %tmp, align 4, !dbg !6729
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #19, !dbg !6731
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #19, !dbg !6731
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #19, !dbg !6731
  %8 = load i32, ptr %tmp, align 4, !dbg !6729
  ret i32 %8, !dbg !6732
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6733 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6738, metadata !DIExpression()), !dbg !6740
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6739, metadata !DIExpression()), !dbg !6741
  ret i1 true, !dbg !6742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6743 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6748, metadata !DIExpression()), !dbg !6751
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6749, metadata !DIExpression()), !dbg !6752
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6750, metadata !DIExpression()), !dbg !6753
  ret void, !dbg !6754
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @phys_to_boot_phys(i64 noundef %phys) #3 align 16 !dbg !6755 {
entry:
  %phys.addr = alloca i64, align 8
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !6759, metadata !DIExpression()), !dbg !6760
  %0 = load i64, ptr %phys.addr, align 8, !dbg !6761
  ret i64 %0, !dbg !6762
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6763 dso_local ptr @do_kimage_alloc_init() #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6766 dso_local i32 @sanity_check_segment_list(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6767 dso_local ptr @kimage_alloc_control_pages(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @get_order(i64 noundef %size) #8 align 16 !dbg !6770 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6775, metadata !DIExpression()), !dbg !6776
  %0 = load i64, ptr %size.addr, align 8, !dbg !6777
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6779
  br i1 %1, label %if.then, label %if.end14, !dbg !6780

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6781
  %tobool = icmp ne i64 %2, 0, !dbg !6781
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6784

if.then1:                                         ; preds = %if.then
  store i32 52, ptr %retval, align 4, !dbg !6785
  br label %return, !dbg !6785

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %size.addr, align 8, !dbg !6786
  %cmp = icmp ult i64 %3, 4096, !dbg !6788
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6789

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6790
  br label %return, !dbg !6790

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !6791
  %sub = sub i64 %4, 1, !dbg !6791
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6791
  br i1 %5, label %cond.true, label %cond.false9, !dbg !6791

cond.true:                                        ; preds = %if.end3
  %6 = load i64, ptr %size.addr, align 8, !dbg !6791
  %sub4 = sub i64 %6, 1, !dbg !6791
  %cmp5 = icmp ult i64 %sub4, 2, !dbg !6791
  br i1 %cmp5, label %cond.true6, label %cond.false, !dbg !6791

cond.true6:                                       ; preds = %cond.true
  br label %cond.end, !dbg !6791

cond.false:                                       ; preds = %cond.true
  %7 = load i64, ptr %size.addr, align 8, !dbg !6791
  %sub7 = sub i64 %7, 1, !dbg !6791
  %8 = call i64 @llvm.ctlz.i64(i64 %sub7, i1 true), !dbg !6791
  %cast = trunc i64 %8 to i32, !dbg !6791
  %sub8 = sub i32 63, %cast, !dbg !6791
  br label %cond.end, !dbg !6791

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ 0, %cond.true6 ], [ %sub8, %cond.false ], !dbg !6791
  br label %cond.end11, !dbg !6791

cond.false9:                                      ; preds = %if.end3
  %9 = load i64, ptr %size.addr, align 8, !dbg !6791
  %sub10 = sub i64 %9, 1, !dbg !6791
  %call = call i32 @__ilog2_u64(i64 noundef %sub10) #20, !dbg !6791
  br label %cond.end11, !dbg !6791

cond.end11:                                       ; preds = %cond.false9, %cond.end
  %cond12 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false9 ], !dbg !6791
  %sub13 = sub i32 %cond12, 12, !dbg !6792
  %add = add i32 %sub13, 1, !dbg !6793
  store i32 %add, ptr %retval, align 4, !dbg !6794
  br label %return, !dbg !6794

if.end14:                                         ; preds = %entry
  %10 = load i64, ptr %size.addr, align 8, !dbg !6795
  %dec = add i64 %10, -1, !dbg !6795
  store i64 %dec, ptr %size.addr, align 8, !dbg !6795
  %11 = load i64, ptr %size.addr, align 8, !dbg !6796
  %shr = lshr i64 %11, 12, !dbg !6796
  store i64 %shr, ptr %size.addr, align 8, !dbg !6796
  %12 = load i64, ptr %size.addr, align 8, !dbg !6797
  %call15 = call i32 @fls64(i64 noundef %12) #18, !dbg !6798
  store i32 %call15, ptr %retval, align 4, !dbg !6799
  br label %return, !dbg !6799

return:                                           ; preds = %if.end14, %cond.end11, %if.then2, %if.then1
  %13 = load i32, ptr %retval, align 4, !dbg !6800
  ret i32 %13, !dbg !6800
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6801 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6805 dso_local void @kimage_free_page_list(ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #8 align 16 !dbg !6808 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6813, metadata !DIExpression()), !dbg !6814
  %0 = load i64, ptr %n.addr, align 8, !dbg !6815
  %call = call i32 @fls64(i64 noundef %0) #18, !dbg !6816
  %sub = sub i32 %call, 1, !dbg !6817
  ret i32 %sub, !dbg !6818
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #6 align 16 !dbg !6819 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6824, metadata !DIExpression()), !dbg !6826
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #19, !dbg !6827
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !6825, metadata !DIExpression()), !dbg !6828
  store i32 -1, ptr %bitpos, align 4, !dbg !6828
  %0 = load i32, ptr %bitpos, align 4, !dbg !6829
  %1 = load i64, ptr %x.addr, align 8, !dbg !6830
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #22, !dbg !6829, !srcloc !6831
  store i32 %2, ptr %bitpos, align 4, !dbg !6829
  %3 = load i32, ptr %bitpos, align 4, !dbg !6832
  %add = add i32 %3, 1, !dbg !6833
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #19, !dbg !6834
  ret i32 %add, !dbg !6835
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set_release(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !6836 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6840, metadata !DIExpression()), !dbg !6842
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6841, metadata !DIExpression()), !dbg !6843
  br label %do.body, !dbg !6844

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6845

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6847
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6848
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6849
  %2 = load i32, ptr %i.addr, align 4, !dbg !6850
  call void @raw_atomic_set_release(ptr noundef %1, i32 noundef %2) #18, !dbg !6851
  ret void, !dbg !6852
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6853 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6855, metadata !DIExpression()), !dbg !6857
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6856, metadata !DIExpression()), !dbg !6858
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6859
  %1 = load i64, ptr %size.addr, align 8, !dbg !6860
  %conv = trunc i64 %1 to i32, !dbg !6860
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6861
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6862
  %3 = load i64, ptr %size.addr, align 8, !dbg !6862
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !6862
  ret void, !dbg !6863
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set_release(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !6864 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6866, metadata !DIExpression()), !dbg !6868
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6867, metadata !DIExpression()), !dbg !6869
  br label %do.body, !dbg !6870

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6873

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6875

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6873

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !6877

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6879

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !6877, !srcloc !6881
  br label %do.body5, !dbg !6877

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6882

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6884

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6882

do.body8:                                         ; preds = %do.end7
  %0 = load i32, ptr %i.addr, align 4, !dbg !6886
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6886
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6886
  store volatile i32 %0, ptr %counter, align 4, !dbg !6886
  br label %do.end9, !dbg !6886

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6882

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !6877

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !6873

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !6888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_kexec_load(i32 noundef %entry1, i32 noundef %nr_segments, ptr noundef %segments, i32 noundef %flags) #3 align 16 !dbg !6889 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca i32, align 4
  %nr_segments.addr = alloca i32, align 4
  %segments.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %in = alloca %struct.compat_kexec_segment, align 4
  %ksegments = alloca ptr, align 8
  %i = alloca i64, align 8
  %result = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %entry1, ptr %entry.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6893, metadata !DIExpression()), !dbg !6902
  store i32 %nr_segments, ptr %nr_segments.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_segments.addr, metadata !6894, metadata !DIExpression()), !dbg !6902
  store ptr %segments, ptr %segments.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %segments.addr, metadata !6895, metadata !DIExpression()), !dbg !6902
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6896, metadata !DIExpression()), !dbg !6902
  call void @llvm.lifetime.start.p0(i64 16, ptr %in) #19, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %in, metadata !6897, metadata !DIExpression()), !dbg !6904
  call void @llvm.lifetime.start.p0(i64 8, ptr %ksegments) #19, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %ksegments, metadata !6898, metadata !DIExpression()), !dbg !6906
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #19, !dbg !6907
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6899, metadata !DIExpression()), !dbg !6908
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #19, !dbg !6907
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6900, metadata !DIExpression()), !dbg !6909
  %0 = load i32, ptr %nr_segments.addr, align 4, !dbg !6910
  %conv = zext i32 %0 to i64, !dbg !6910
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6911
  %conv2 = zext i32 %1 to i64, !dbg !6911
  %call = call i32 @kexec_load_check(i64 noundef %conv, i64 noundef %conv2) #18, !dbg !6912
  %conv3 = sext i32 %call to i64, !dbg !6912
  store i64 %conv3, ptr %result, align 8, !dbg !6913
  %2 = load i64, ptr %result, align 8, !dbg !6914
  %tobool = icmp ne i64 %2, 0, !dbg !6914
  br i1 %tobool, label %if.then, label %if.end, !dbg !6916

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %result, align 8, !dbg !6917
  store i64 %3, ptr %retval, align 8, !dbg !6918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6918

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %flags.addr, align 4, !dbg !6919
  %and = and i32 %4, -65536, !dbg !6921
  %cmp = icmp eq i32 %and, 0, !dbg !6922
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !6923

if.then5:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6924

if.end6:                                          ; preds = %if.end
  %5 = load i32, ptr %nr_segments.addr, align 4, !dbg !6925
  %conv7 = zext i32 %5 to i64, !dbg !6925
  %call8 = call noalias ptr @kmalloc_array(i64 noundef %conv7, i64 noundef 32, i32 noundef 3264) #23, !dbg !6926
  store ptr %call8, ptr %ksegments, align 8, !dbg !6927
  %6 = load ptr, ptr %ksegments, align 8, !dbg !6928
  %tobool9 = icmp ne ptr %6, null, !dbg !6928
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6930

if.then10:                                        ; preds = %if.end6
  store i64 -12, ptr %retval, align 8, !dbg !6931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6931

if.end11:                                         ; preds = %if.end6
  store i64 0, ptr %i, align 8, !dbg !6932
  br label %for.cond, !dbg !6934

for.cond:                                         ; preds = %for.inc, %if.end11
  %7 = load i64, ptr %i, align 8, !dbg !6935
  %8 = load i32, ptr %nr_segments.addr, align 4, !dbg !6937
  %conv12 = zext i32 %8 to i64, !dbg !6937
  %cmp13 = icmp ult i64 %7, %conv12, !dbg !6938
  br i1 %cmp13, label %for.body, label %for.end, !dbg !6939

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %segments.addr, align 8, !dbg !6940
  %10 = load i64, ptr %i, align 8, !dbg !6942
  %arrayidx = getelementptr %struct.compat_kexec_segment, ptr %9, i64 %10, !dbg !6940
  %call15 = call i64 @copy_from_user(ptr noundef %in, ptr noundef %arrayidx, i64 noundef 16) #18, !dbg !6943
  store i64 %call15, ptr %result, align 8, !dbg !6944
  %11 = load i64, ptr %result, align 8, !dbg !6945
  %tobool16 = icmp ne i64 %11, 0, !dbg !6945
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6947

if.then17:                                        ; preds = %for.body
  br label %fail, !dbg !6948

if.end18:                                         ; preds = %for.body
  %buf = getelementptr inbounds %struct.compat_kexec_segment, ptr %in, i32 0, i32 0, !dbg !6949
  %12 = load i32, ptr %buf, align 4, !dbg !6949
  %call19 = call ptr @compat_ptr(i32 noundef %12) #18, !dbg !6950
  %13 = load ptr, ptr %ksegments, align 8, !dbg !6951
  %14 = load i64, ptr %i, align 8, !dbg !6952
  %arrayidx20 = getelementptr %struct.kexec_segment, ptr %13, i64 %14, !dbg !6951
  %15 = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx20, i32 0, i32 0, !dbg !6953
  store ptr %call19, ptr %15, align 8, !dbg !6954
  %bufsz = getelementptr inbounds %struct.compat_kexec_segment, ptr %in, i32 0, i32 1, !dbg !6955
  %16 = load i32, ptr %bufsz, align 4, !dbg !6955
  %conv21 = zext i32 %16 to i64, !dbg !6956
  %17 = load ptr, ptr %ksegments, align 8, !dbg !6957
  %18 = load i64, ptr %i, align 8, !dbg !6958
  %arrayidx22 = getelementptr %struct.kexec_segment, ptr %17, i64 %18, !dbg !6957
  %bufsz23 = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx22, i32 0, i32 1, !dbg !6959
  store i64 %conv21, ptr %bufsz23, align 8, !dbg !6960
  %mem = getelementptr inbounds %struct.compat_kexec_segment, ptr %in, i32 0, i32 2, !dbg !6961
  %19 = load i32, ptr %mem, align 4, !dbg !6961
  %conv24 = zext i32 %19 to i64, !dbg !6962
  %20 = load ptr, ptr %ksegments, align 8, !dbg !6963
  %21 = load i64, ptr %i, align 8, !dbg !6964
  %arrayidx25 = getelementptr %struct.kexec_segment, ptr %20, i64 %21, !dbg !6963
  %mem26 = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx25, i32 0, i32 2, !dbg !6965
  store i64 %conv24, ptr %mem26, align 8, !dbg !6966
  %memsz = getelementptr inbounds %struct.compat_kexec_segment, ptr %in, i32 0, i32 3, !dbg !6967
  %22 = load i32, ptr %memsz, align 4, !dbg !6967
  %conv27 = zext i32 %22 to i64, !dbg !6968
  %23 = load ptr, ptr %ksegments, align 8, !dbg !6969
  %24 = load i64, ptr %i, align 8, !dbg !6970
  %arrayidx28 = getelementptr %struct.kexec_segment, ptr %23, i64 %24, !dbg !6969
  %memsz29 = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx28, i32 0, i32 3, !dbg !6971
  store i64 %conv27, ptr %memsz29, align 8, !dbg !6972
  br label %for.inc, !dbg !6973

for.inc:                                          ; preds = %if.end18
  %25 = load i64, ptr %i, align 8, !dbg !6974
  %inc = add i64 %25, 1, !dbg !6974
  store i64 %inc, ptr %i, align 8, !dbg !6974
  br label %for.cond, !dbg !6975, !llvm.loop !6976

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %entry.addr, align 4, !dbg !6978
  %conv30 = zext i32 %26 to i64, !dbg !6978
  %27 = load i32, ptr %nr_segments.addr, align 4, !dbg !6979
  %conv31 = zext i32 %27 to i64, !dbg !6979
  %28 = load ptr, ptr %ksegments, align 8, !dbg !6980
  %29 = load i32, ptr %flags.addr, align 4, !dbg !6981
  %conv32 = zext i32 %29 to i64, !dbg !6981
  %call33 = call i32 @do_kexec_load(i64 noundef %conv30, i64 noundef %conv31, ptr noundef %28, i64 noundef %conv32) #18, !dbg !6982
  %conv34 = sext i32 %call33 to i64, !dbg !6982
  store i64 %conv34, ptr %result, align 8, !dbg !6983
  br label %fail, !dbg !6984

fail:                                             ; preds = %for.end, %if.then17
  call void @llvm.dbg.label(metadata !6901), !dbg !6985
  %30 = load ptr, ptr %ksegments, align 8, !dbg !6986
  call void @kfree(ptr noundef %30) #18, !dbg !6987
  %31 = load i64, ptr %result, align 8, !dbg !6988
  store i64 %31, ptr %retval, align 8, !dbg !6989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6989

cleanup:                                          ; preds = %fail, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #19, !dbg !6990
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #19, !dbg !6990
  call void @llvm.lifetime.end.p0(i64 8, ptr %ksegments) #19, !dbg !6990
  call void @llvm.lifetime.end.p0(i64 16, ptr %in) #19, !dbg !6990
  %32 = load i64, ptr %retval, align 8, !dbg !6990
  ret i64 %32, !dbg !6990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6991 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6995, metadata !DIExpression()), !dbg !6999
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6996, metadata !DIExpression()), !dbg !7000
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6997, metadata !DIExpression()), !dbg !7001
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #19, !dbg !7002
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6998, metadata !DIExpression()), !dbg !7003
  %0 = load i64, ptr %n.addr, align 8, !dbg !7004
  %1 = load i64, ptr %size.addr, align 8, !dbg !7004
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !7004
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !7004
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !7004
  store i64 %4, ptr %bytes, align 8, !dbg !7004
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !7004
  %lnot = xor i1 %call, true, !dbg !7004
  %lnot1 = xor i1 %lnot, true, !dbg !7004
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7004
  %conv = sext i32 %lnot.ext to i64, !dbg !7004
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7004
  %tobool = icmp ne i64 %expval, 0, !dbg !7004
  br i1 %tobool, label %if.then, label %if.end, !dbg !7006

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7007

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7008
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !7010
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !7011

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !7012
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !7013
  br i1 %8, label %if.then2, label %if.end4, !dbg !7014

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !7015
  %10 = load i32, ptr %flags.addr, align 4, !dbg !7016
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #24, !dbg !7017
  store ptr %call3, ptr %retval, align 8, !dbg !7018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7018

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !7019
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7020
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #24, !dbg !7021
  store ptr %call5, ptr %retval, align 8, !dbg !7022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7022

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #19, !dbg !7023
  %13 = load ptr, ptr %retval, align 8, !dbg !7023
  ret ptr %13, !dbg !7023
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !7024 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7029, metadata !DIExpression()), !dbg !7032
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7030, metadata !DIExpression()), !dbg !7033
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7031, metadata !DIExpression()), !dbg !7034
  %0 = load ptr, ptr %to.addr, align 8, !dbg !7035
  %1 = load i64, ptr %n.addr, align 8, !dbg !7037
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !7038
  br i1 %call, label %if.then, label %if.end, !dbg !7039

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7040
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7041
  %4 = load i64, ptr %n.addr, align 8, !dbg !7042
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !7043
  store i64 %call1, ptr %n.addr, align 8, !dbg !7044
  br label %if.end, !dbg !7045

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7046
  ret i64 %5, !dbg !7047
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #3 align 16 !dbg !7048 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !7052, metadata !DIExpression()), !dbg !7053
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !7054
  %conv = zext i32 %0 to i64, !dbg !7055
  %1 = inttoptr i64 %conv to ptr, !dbg !7056
  ret ptr %1, !dbg !7057
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !7058 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7062, metadata !DIExpression()), !dbg !7067
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7063, metadata !DIExpression()), !dbg !7068
  %0 = load i64, ptr %size.addr, align 8, !dbg !7069
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7070
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7071

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7072
  %tobool = icmp ne i64 %2, 0, !dbg !7072
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7073

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !7074
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7064, metadata !DIExpression()), !dbg !7075
  %3 = load i64, ptr %size.addr, align 8, !dbg !7076
  %cmp = icmp ugt i64 %3, 8192, !dbg !7078
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7079

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7080
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7081
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #24, !dbg !7082
  store ptr %call, ptr %retval, align 8, !dbg !7083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7083

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7084
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !7084
  store i32 %call2, ptr %index, align 4, !dbg !7085
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7086
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7087
  %9 = ptrtoint ptr %8 to i64, !dbg !7087
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !7088
  %idxprom = zext i32 %call3 to i64, !dbg !7089
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7089
  %10 = load i32, ptr %index, align 4, !dbg !7090
  %idxprom4 = zext i32 %10 to i64, !dbg !7089
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7089
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7089
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7091
  %13 = load i64, ptr %size.addr, align 8, !dbg !7092
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #25, !dbg !7093
  store ptr %call6, ptr %retval, align 8, !dbg !7094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7094

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !7095
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7096
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7097
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #24, !dbg !7098
  store ptr %call8, ptr %retval, align 8, !dbg !7099
  br label %return, !dbg !7099

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7100
  ret ptr %16, !dbg !7100
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7101 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7102 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !7103 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7107, metadata !DIExpression()), !dbg !7109
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7108, metadata !DIExpression()), !dbg !7110
  %0 = load i64, ptr %size.addr, align 8, !dbg !7111
  %tobool = icmp ne i64 %0, 0, !dbg !7111
  br i1 %tobool, label %if.end, label %if.then, !dbg !7113

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7114
  br label %return, !dbg !7114

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7115
  %cmp = icmp ule i64 %1, 8, !dbg !7117
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7118

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7119
  br label %return, !dbg !7119

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7120
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7122
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7123

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7124
  %cmp4 = icmp ule i64 %3, 96, !dbg !7125
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7126

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7127
  br label %return, !dbg !7127

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7128
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7130
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7131

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7132
  %cmp9 = icmp ule i64 %5, 192, !dbg !7133
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7134

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7135
  br label %return, !dbg !7135

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7136
  %cmp12 = icmp ule i64 %6, 8, !dbg !7138
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7139

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7140
  br label %return, !dbg !7140

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7141
  %cmp15 = icmp ule i64 %7, 16, !dbg !7143
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7144

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7145
  br label %return, !dbg !7145

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7146
  %cmp18 = icmp ule i64 %8, 32, !dbg !7148
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7149

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7150
  br label %return, !dbg !7150

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7151
  %cmp21 = icmp ule i64 %9, 64, !dbg !7153
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7154

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7155
  br label %return, !dbg !7155

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7156
  %cmp24 = icmp ule i64 %10, 128, !dbg !7158
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7159

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7160
  br label %return, !dbg !7160

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7161
  %cmp27 = icmp ule i64 %11, 256, !dbg !7163
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7164

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7165
  br label %return, !dbg !7165

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7166
  %cmp30 = icmp ule i64 %12, 512, !dbg !7168
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7169

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7170
  br label %return, !dbg !7170

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7171
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7173
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7174

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7175
  br label %return, !dbg !7175

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7176
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7178
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7179

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7180
  br label %return, !dbg !7180

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7181
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7183
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7184

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7185
  br label %return, !dbg !7185

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7186
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7188
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7189

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7190
  br label %return, !dbg !7190

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7191
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7193
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7194

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7195
  br label %return, !dbg !7195

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7196
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7198
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7199

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7200
  br label %return, !dbg !7200

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7201
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7203
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7204

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7205
  br label %return, !dbg !7205

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7206
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7208
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7209

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7210
  br label %return, !dbg !7210

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7211
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7213
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7214

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7215
  br label %return, !dbg !7215

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7216
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7218
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7219

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7220
  br label %return, !dbg !7220

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7221
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7223
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7224

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7225
  br label %return, !dbg !7225

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7226
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7228
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7229

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7230
  br label %return, !dbg !7230

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7231, !range !6491, !noundef !1421
  %tobool69 = trunc i8 %25 to i1, !dbg !7231
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7233

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7234

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #26, !dbg !7235, !srcloc !7238
  unreachable, !dbg !7235

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7239

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7240

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7241

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7243

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7241

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #19, !dbg !7245, !srcloc !7247
  br label %do.end75, !dbg !7245

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7241

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7248
  br label %return, !dbg !7248

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7249
  ret i32 %26, !dbg !7249
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7250 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !7253 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7257, metadata !DIExpression()), !dbg !7259
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7258, metadata !DIExpression()), !dbg !7260
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7261
  %and = and i32 %0, 17, !dbg !7261
  %cmp = icmp eq i32 %and, 0, !dbg !7261
  %lnot = xor i1 %cmp, true, !dbg !7261
  %lnot1 = xor i1 %lnot, true, !dbg !7261
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7261
  %conv = sext i32 %lnot.ext to i64, !dbg !7261
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7261
  %tobool = icmp ne i64 %expval, 0, !dbg !7261
  br i1 %tobool, label %if.then, label %if.end, !dbg !7263

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7264
  br label %return, !dbg !7264

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7265
  %and2 = and i32 %1, 1, !dbg !7267
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7267
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7268

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7269
  br label %return, !dbg !7269

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7270
  br label %return, !dbg !7270

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7272
  ret i32 %2, !dbg !7272
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7273 dso_local void @__compiletime_assert_206() #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !7274 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7278, metadata !DIExpression()), !dbg !7288
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7279, metadata !DIExpression()), !dbg !7289
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !7280, metadata !DIExpression()), !dbg !7290
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #19, !dbg !7291
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !7281, metadata !DIExpression()), !dbg !7292
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7293
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !7294
  %conv = trunc i64 %1 to i32, !dbg !7294
  store i32 %conv, ptr %sz, align 4, !dbg !7292
  %2 = load i32, ptr %sz, align 4, !dbg !7295
  %cmp = icmp sge i32 %2, 0, !dbg !7295
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7295

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !7295
  %conv2 = sext i32 %3 to i64, !dbg !7295
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !7295
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !7295
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !7297
  %lnot = xor i1 %5, true, !dbg !7295
  %lnot5 = xor i1 %lnot, true, !dbg !7295
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7295
  %conv6 = sext i32 %lnot.ext to i64, !dbg !7295
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !7295
  %tobool = icmp ne i64 %expval, 0, !dbg !7295
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7298

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !7299
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7302
  br i1 %7, label %if.else, label %if.then7, !dbg !7303

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !7304
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !7305
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !7306
  br label %if.end11, !dbg !7306

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !7307, !range !6491, !noundef !1421
  %tobool8 = trunc i8 %10 to i1, !dbg !7307
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !7309

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !7310, !srcloc !7311
  br label %if.end, !dbg !7310

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !7312, !srcloc !7313
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !7314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7314

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !7315
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7282, metadata !DIExpression()), !dbg !7315
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !7315
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !7315
  %lnot15 = xor i1 %cmp13, true, !dbg !7315
  %lnot17 = xor i1 %lnot15, true, !dbg !7315
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7315
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !7315
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !7316
  %tobool19 = icmp ne i32 %12, 0, !dbg !7316
  %lnot20 = xor i1 %tobool19, true, !dbg !7316
  %lnot22 = xor i1 %lnot20, true, !dbg !7316
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !7316
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !7316
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !7316
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !7316
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !7315

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !7316

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !7317
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7285, metadata !DIExpression()), !dbg !7317
  store i32 2307, ptr %__flags, align 4, !dbg !7317
  br label %do.body28, !dbg !7317

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !7318

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !7318

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !7317

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !7320
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 249, i32 %13, i64 12) #19, !dbg !7320, !srcloc !7322
  br label %do.cond30, !dbg !7320

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !7320

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !7317

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !7323

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7323

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !7316
  br label %do.cond35, !dbg !7317

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7317

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !7317

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !7315
  %tobool38 = icmp ne i32 %14, 0, !dbg !7315
  %lnot39 = xor i1 %tobool38, true, !dbg !7315
  %lnot41 = xor i1 %lnot39, true, !dbg !7315
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !7315
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !7315
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !7315
  store i64 %expval44, ptr %tmp, align 8, !dbg !7316
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !7325
  %15 = load i64, ptr %tmp, align 8, !dbg !7315
  %tobool45 = icmp ne i64 %15, 0, !dbg !7325
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7326

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !7327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7327

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !7328
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !7329
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !7330, !range !6491, !noundef !1421
  %tobool48 = trunc i8 %18 to i1, !dbg !7330
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !7331
  store i1 true, ptr %retval, align 1, !dbg !7332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7332

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #19, !dbg !7333
  %19 = load i1, ptr %retval, align 1, !dbg !7333
  ret i1 %19, !dbg !7333
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7334 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !7335 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7339, metadata !DIExpression()), !dbg !7341
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7340, metadata !DIExpression()), !dbg !7342
  %0 = load i32, ptr %size.addr, align 4, !dbg !7343
  %1 = load i64, ptr %count.addr, align 8, !dbg !7345
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !7346
  ret void, !dbg !7347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7348 dso_local void @__bad_copy_from() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7349 dso_local void @__bad_copy_to() #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !7350 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7354, metadata !DIExpression()), !dbg !7357
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7355, metadata !DIExpression()), !dbg !7358
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7356, metadata !DIExpression()), !dbg !7359
  ret void, !dbg !7360
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7361 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { noredzone nounwind willreturn memory(none) }
attributes #21 = { cold noredzone }
attributes #22 = { nounwind memory(read) }
attributes #23 = { noredzone allocsize(0,1) }
attributes #24 = { noredzone allocsize(0) }
attributes #25 = { noredzone allocsize(2) }
attributes #26 = { noredzone noreturn }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!372, !373, !374, !375, !376, !377, !378, !379}
!llvm.ident = !{!380}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/kexec.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9490a828824b8832c2d624e5fdfcfbea")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 49)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 41)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !14, line: 480, type: !15, isLocal: true, isDefinition: true)
!14 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 21)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !20, line: 249, type: !21, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 28)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.kexec.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/kexec\22 -D KBUILD_BASENAME=\22kexec\22 -D KBUILD_MODNAME=\22kexec\22 -D __KBUILD_MODNAME=kmod_kexec -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/kexec.ll kernel/kexec.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !339, globals: !371, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !38, !43, !75, !82, !87, !182, !188, !204, !211, !217, !224, !232, !239, !245, !254, !259, !264, !270, !279, !290, !296, !304, !309, !315, !322, !330}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_load_data_id", file: !27, line: 239, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37}
!30 = !DIEnumerator(name: "LOADING_UNKNOWN", value: 0)
!31 = !DIEnumerator(name: "LOADING_FIRMWARE", value: 1)
!32 = !DIEnumerator(name: "LOADING_MODULE", value: 2)
!33 = !DIEnumerator(name: "LOADING_KEXEC_IMAGE", value: 3)
!34 = !DIEnumerator(name: "LOADING_KEXEC_INITRAMFS", value: 4)
!35 = !DIEnumerator(name: "LOADING_POLICY", value: 5)
!36 = !DIEnumerator(name: "LOADING_X509_CERTIFICATE", value: 6)
!37 = !DIEnumerator(name: "LOADING_MAX_ID", value: 7)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 10, baseType: !28, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "false", value: 0)
!42 = !DIEnumerator(name: "true", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !27, line: 107, baseType: !28, size: 32, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!45 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!46 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!47 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!48 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!49 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!50 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!51 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!52 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!53 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!54 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!55 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!56 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!57 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!58 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!59 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!60 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!61 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!62 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!63 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!64 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!65 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!66 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!67 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!68 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!69 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!70 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!71 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!72 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!73 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!74 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !76, line: 312, baseType: !28, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!79 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!80 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!81 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !83, line: 65, baseType: !28, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!86 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !89, file: !88, line: 147, baseType: !28, size: 32, elements: !179)
!88 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !88, line: 135, size: 512, elements: !90)
!90 = !{!91, !94, !96, !98, !102, !103, !119, !177, !178}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !89, file: !88, line: 136, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !88, line: 137, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !89, file: !88, line: 138, baseType: !97, size: 32, offset: 128)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !89, file: !88, line: 139, baseType: !99, size: 16, offset: 160)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !100, line: 24, baseType: !101)
!100 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !88, line: 150, baseType: !87, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !89, file: !88, line: 151, baseType: !104, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !88, line: 64, baseType: !106)
!106 = !DISubroutineType(types: !107)
!107 = !{!97, !108, !97, !95, !109, !115}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 61, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !112, line: 72, baseType: !113)
!112 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !112, line: 16, baseType: !114)
!114 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !100, line: 52, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !112, line: 88, baseType: !118)
!118 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !89, file: !88, line: 152, baseType: !120, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !88, line: 117, size: 256, elements: !122)
!122 = !{!123, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !121, file: !88, line: 118, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !100, line: 174, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 172, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !125, file: !100, line: 173, baseType: !97, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !121, file: !88, line: 119, baseType: !129, size: 192, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !130, line: 41, baseType: !131)
!130 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !130, line: 37, size: 192, elements: !132)
!132 = !{!133, !171}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !131, file: !130, line: 38, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !135, line: 29, baseType: !136)
!135 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !135, line: 17, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !135, line: 18, baseType: !139, size: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !135, line: 18, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !139, file: !135, line: 19, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !143, line: 14, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !142, file: !143, line: 15, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !147, line: 44, baseType: !148)
!147 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !147, line: 14, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !147, line: 15, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !147, line: 15, size: 32, elements: !152)
!152 = !{!153, !154, !164}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !151, file: !147, line: 16, baseType: !124, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !147, line: 24, baseType: !155, size: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !147, line: 24, size: 16, elements: !156)
!156 = !{!157, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !155, file: !147, line: 25, baseType: !158, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !159, line: 17, baseType: !160)
!159 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !161, line: 21, baseType: !162)
!161 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!162 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !155, file: !147, line: 26, baseType: !158, size: 8, offset: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !147, line: 28, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !147, line: 28, size: 32, elements: !166)
!166 = !{!167, !170}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !165, file: !147, line: 29, baseType: !168, size: 16)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !159, line: 19, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !161, line: 24, baseType: !101)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !165, file: !147, line: 30, baseType: !168, size: 16, offset: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !131, file: !130, line: 39, baseType: !172, size: 128, offset: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !100, line: 190, size: 128, elements: !173)
!173 = !{!174, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !100, line: 191, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !100, line: 191, baseType: !175, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !89, file: !88, line: 153, baseType: !95, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !89, file: !88, line: 154, baseType: !95, size: 64, offset: 448)
!179 = !{!180, !181}
!180 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!181 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !183, line: 16, baseType: !28, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!184 = !{!185, !186, !187}
!185 = !DIEnumerator(name: "TT_NONE", value: 0)
!186 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!187 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !189, line: 1325, baseType: !28, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!191 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!192 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!193 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!194 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!195 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!196 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!197 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!198 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!199 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!200 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!201 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!202 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!203 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !205, line: 51, baseType: !28, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!206 = !{!207, !208, !209, !210}
!207 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!208 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!209 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!210 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !212, line: 45, baseType: !28, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!215 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!216 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !218, line: 487, baseType: !28, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!219 = !{!220, !221, !222, !223}
!220 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!221 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!222 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!223 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !225, line: 620, baseType: !28, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!226 = !{!227, !228, !229, !230, !231}
!227 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!228 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!229 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!230 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!231 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !225, line: 597, baseType: !97, size: 32, elements: !233)
!233 = !{!234, !235, !236, !237, !238}
!234 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!235 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!236 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!237 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!238 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !240, line: 26, baseType: !28, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!243 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!244 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !218, line: 547, baseType: !28, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253}
!247 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!248 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!249 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!250 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!251 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!252 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!253 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !218, line: 564, baseType: !28, size: 32, elements: !255)
!255 = !{!256, !257, !258}
!256 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!257 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!258 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !218, line: 577, baseType: !28, size: 32, elements: !260)
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!262 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!263 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !218, line: 503, baseType: !28, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!267 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!268 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!269 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !271, line: 593, baseType: !97, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!272 = !{!273, !274, !275, !276, !277, !278}
!273 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!274 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!275 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!276 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!277 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!278 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !280, line: 253, baseType: !28, size: 32, elements: !281)
!280 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289}
!282 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!283 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!284 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!285 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!286 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!287 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!288 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!289 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !280, line: 158, baseType: !28, size: 32, elements: !291)
!291 = !{!292, !293, !294, !295}
!292 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!293 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!294 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!295 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!296 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !297, line: 9, baseType: !28, size: 32, elements: !298)
!297 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!298 = !{!299, !300, !301, !302, !303}
!299 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!300 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!301 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!302 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!303 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !305, line: 2052, baseType: !28, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!306 = !{!307, !308}
!307 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!308 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!309 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !310, line: 54, baseType: !28, size: 32, elements: !311)
!310 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!311 = !{!312, !313, !314}
!312 = !DIEnumerator(name: "USRQUOTA", value: 0)
!313 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!314 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !316, line: 15, baseType: !28, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!317 = !{!318, !319, !320, !321}
!318 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!319 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!320 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!321 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!322 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !323, line: 68, baseType: !28, size: 32, elements: !324)
!323 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!324 = !{!325, !326, !327, !328, !329}
!325 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!326 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!327 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!328 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!329 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !14, line: 364, baseType: !28, size: 32, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338}
!332 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!333 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!334 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!335 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!336 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!337 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!338 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!339 = !{!28, !114, !340, !97, !95, !352, !353, !357, !359, !361, !370}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kexec_segment", file: !342, line: 82, size: 256, elements: !343)
!342 = !DIFile(filename: "./include/linux/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "46c4f8f14212f79d216b15c6b640c492")
!343 = !{!344, !349, !350, !351}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !342, line: 91, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !342, line: 91, size: 64, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !345, file: !342, line: 92, baseType: !95, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "kbuf", scope: !345, file: !342, line: 93, baseType: !95, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "bufsz", scope: !341, file: !342, line: 95, baseType: !110, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !341, file: !342, line: 96, baseType: !114, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", scope: !341, file: !342, line: 97, baseType: !110, size: 64, offset: 192)
!352 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !159, line: 21, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !161, line: 27, baseType: !28)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ulong_t", file: !360, line: 45, baseType: !355)
!360 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_kexec_segment", file: !342, line: 101, size: 128, elements: !363)
!363 = !{!364, !366, !368, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !362, file: !342, line: 102, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !360, line: 46, baseType: !355)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bufsz", scope: !362, file: !342, line: 103, baseType: !367, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_size_t", file: !360, line: 30, baseType: !355)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !362, file: !342, line: 104, baseType: !359, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", scope: !362, file: !342, line: 105, baseType: !367, size: 32, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !100, line: 154, baseType: !28)
!371 = !{!0, !7, !12, !18}
!372 = !{i32 7, !"Dwarf Version", i32 5}
!373 = !{i32 2, !"Debug Info Version", i32 3}
!374 = !{i32 1, !"wchar_size", i32 2}
!375 = !{i32 8, !"cf-protection-branch", i32 1}
!376 = !{i32 4, !"function_return_thunk_extern", i32 1}
!377 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!378 = !{i32 1, !"Code Model", i32 2}
!379 = !{i32 1, !"override-stack-alignment", i32 8}
!380 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!381 = distinct !DISubprogram(name: "__x64_sys_kexec_load", scope: !2, file: !2, line: 235, type: !382, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !440)
!382 = !DISubroutineType(types: !383)
!383 = !{!352, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !387, line: 103, size: 1344, elements: !388)
!387 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !420, !421, !422}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !386, file: !387, line: 109, baseType: !114, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !386, file: !387, line: 110, baseType: !114, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !386, file: !387, line: 111, baseType: !114, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !386, file: !387, line: 112, baseType: !114, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !386, file: !387, line: 113, baseType: !114, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !386, file: !387, line: 114, baseType: !114, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !386, file: !387, line: 117, baseType: !114, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !386, file: !387, line: 118, baseType: !114, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !386, file: !387, line: 119, baseType: !114, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !386, file: !387, line: 120, baseType: !114, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !386, file: !387, line: 121, baseType: !114, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !386, file: !387, line: 122, baseType: !114, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !386, file: !387, line: 123, baseType: !114, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !386, file: !387, line: 124, baseType: !114, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !386, file: !387, line: 125, baseType: !114, size: 64, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !386, file: !387, line: 139, baseType: !114, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !386, file: !387, line: 142, baseType: !114, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !387, line: 144, baseType: !407, size: 64, offset: 1088)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 144, size: 64, elements: !408)
!408 = !{!409, !410, !414}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !407, file: !387, line: 146, baseType: !168, size: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !407, file: !387, line: 148, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !159, line: 23, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !161, line: 31, baseType: !413)
!413 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !407, file: !387, line: 150, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !387, line: 59, size: 64, elements: !416)
!416 = !{!417, !418, !419}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !415, file: !387, line: 61, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !415, file: !387, line: 63, baseType: !411, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !415, file: !387, line: 65, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !387, line: 153, baseType: !114, size: 64, offset: 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !386, file: !387, line: 154, baseType: !114, size: 64, offset: 1216)
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !387, line: 156, baseType: !423, size: 64, offset: 1280)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 156, size: 64, elements: !424)
!424 = !{!425, !426, !427}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !423, file: !387, line: 158, baseType: !168, size: 16)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !423, file: !387, line: 160, baseType: !411, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !423, file: !387, line: 162, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !387, line: 69, size: 64, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !428, file: !387, line: 71, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !428, file: !387, line: 73, baseType: !411, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !428, file: !387, line: 75, baseType: !411, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !428, file: !387, line: 77, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !428, file: !387, line: 80, baseType: !411, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !387, line: 83, baseType: !411, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !428, file: !387, line: 86, baseType: !411, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !428, file: !387, line: 88, baseType: !411, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !428, file: !387, line: 93, baseType: !411, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !428, file: !387, line: 100, baseType: !411, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!440 = !{!441}
!441 = !DILocalVariable(name: "regs", arg: 1, scope: !381, file: !2, line: 235, type: !384)
!442 = !DILocation(line: 235, column: 1, scope: !381)
!443 = distinct !DISubprogram(name: "__se_sys_kexec_load", scope: !2, file: !2, line: 235, type: !444, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!352, !352, !352, !352, !352}
!446 = !{!447, !448, !449, !450, !451}
!447 = !DILocalVariable(name: "entry", arg: 1, scope: !443, file: !2, line: 235, type: !352)
!448 = !DILocalVariable(name: "nr_segments", arg: 2, scope: !443, file: !2, line: 235, type: !352)
!449 = !DILocalVariable(name: "segments", arg: 3, scope: !443, file: !2, line: 235, type: !352)
!450 = !DILocalVariable(name: "flags", arg: 4, scope: !443, file: !2, line: 235, type: !352)
!451 = !DILocalVariable(name: "ret", scope: !443, file: !2, line: 235, type: !352)
!452 = !DILocation(line: 235, column: 1, scope: !443)
!453 = !DILocation(line: 235, column: 1, scope: !454)
!454 = distinct !DILexicalBlock(scope: !443, file: !2, line: 235, column: 1)
!455 = distinct !DISubprogram(name: "__ia32_sys_kexec_load", scope: !2, file: !2, line: 235, type: !382, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !456)
!456 = !{!457}
!457 = !DILocalVariable(name: "regs", arg: 1, scope: !455, file: !2, line: 235, type: !384)
!458 = !DILocation(line: 235, column: 1, scope: !455)
!459 = distinct !DISubprogram(name: "__ia32_compat_sys_kexec_load", scope: !2, file: !2, line: 261, type: !382, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !460)
!460 = !{!461}
!461 = !DILocalVariable(name: "regs", arg: 1, scope: !459, file: !2, line: 261, type: !384)
!462 = !DILocation(line: 261, column: 1, scope: !459)
!463 = distinct !DISubprogram(name: "__se_compat_sys_kexec_load", scope: !2, file: !2, line: 261, type: !444, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !464)
!464 = !{!465, !466, !467, !468}
!465 = !DILocalVariable(name: "entry", arg: 1, scope: !463, file: !2, line: 261, type: !352)
!466 = !DILocalVariable(name: "nr_segments", arg: 2, scope: !463, file: !2, line: 261, type: !352)
!467 = !DILocalVariable(name: "segments", arg: 3, scope: !463, file: !2, line: 261, type: !352)
!468 = !DILocalVariable(name: "flags", arg: 4, scope: !463, file: !2, line: 261, type: !352)
!469 = !DILocation(line: 261, column: 1, scope: !463)
!470 = distinct !DISubprogram(name: "__do_sys_kexec_load", scope: !2, file: !2, line: 235, type: !471, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!352, !114, !114, !340, !114}
!473 = !{!474, !475, !476, !477, !478, !479}
!474 = !DILocalVariable(name: "entry", arg: 1, scope: !470, file: !2, line: 235, type: !114)
!475 = !DILocalVariable(name: "nr_segments", arg: 2, scope: !470, file: !2, line: 235, type: !114)
!476 = !DILocalVariable(name: "segments", arg: 3, scope: !470, file: !2, line: 235, type: !340)
!477 = !DILocalVariable(name: "flags", arg: 4, scope: !470, file: !2, line: 235, type: !114)
!478 = !DILocalVariable(name: "ksegments", scope: !470, file: !2, line: 238, type: !340)
!479 = !DILocalVariable(name: "result", scope: !470, file: !2, line: 239, type: !114)
!480 = !DILocation(line: 235, column: 1, scope: !470)
!481 = !DILocation(line: 238, column: 2, scope: !470)
!482 = !DILocation(line: 238, column: 24, scope: !470)
!483 = !DILocation(line: 239, column: 2, scope: !470)
!484 = !DILocation(line: 239, column: 16, scope: !470)
!485 = !DILocation(line: 241, column: 28, scope: !470)
!486 = !DILocation(line: 241, column: 41, scope: !470)
!487 = !DILocation(line: 241, column: 11, scope: !470)
!488 = !DILocation(line: 241, column: 9, scope: !470)
!489 = !DILocation(line: 242, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !470, file: !2, line: 242, column: 6)
!491 = !DILocation(line: 242, column: 6, scope: !470)
!492 = !DILocation(line: 243, column: 10, scope: !490)
!493 = !DILocation(line: 243, column: 3, scope: !490)
!494 = !DILocation(line: 246, column: 8, scope: !495)
!495 = distinct !DILexicalBlock(scope: !470, file: !2, line: 246, column: 6)
!496 = !DILocation(line: 246, column: 14, scope: !495)
!497 = !DILocation(line: 246, column: 33, scope: !495)
!498 = !DILocation(line: 246, column: 48, scope: !495)
!499 = !DILocation(line: 247, column: 5, scope: !495)
!500 = !DILocation(line: 247, column: 11, scope: !495)
!501 = !DILocation(line: 247, column: 30, scope: !495)
!502 = !DILocation(line: 246, column: 6, scope: !470)
!503 = !DILocation(line: 248, column: 3, scope: !495)
!504 = !DILocation(line: 250, column: 32, scope: !470)
!505 = !DILocation(line: 250, column: 42, scope: !470)
!506 = !DILocation(line: 250, column: 14, scope: !470)
!507 = !DILocation(line: 250, column: 12, scope: !470)
!508 = !DILocation(line: 251, column: 13, scope: !509)
!509 = distinct !DILexicalBlock(scope: !470, file: !2, line: 251, column: 6)
!510 = !DILocation(line: 251, column: 6, scope: !509)
!511 = !DILocation(line: 251, column: 6, scope: !470)
!512 = !DILocation(line: 252, column: 18, scope: !509)
!513 = !DILocation(line: 252, column: 10, scope: !509)
!514 = !DILocation(line: 252, column: 3, scope: !509)
!515 = !DILocation(line: 254, column: 25, scope: !470)
!516 = !DILocation(line: 254, column: 32, scope: !470)
!517 = !DILocation(line: 254, column: 45, scope: !470)
!518 = !DILocation(line: 254, column: 56, scope: !470)
!519 = !DILocation(line: 254, column: 11, scope: !470)
!520 = !DILocation(line: 254, column: 9, scope: !470)
!521 = !DILocation(line: 255, column: 8, scope: !470)
!522 = !DILocation(line: 255, column: 2, scope: !470)
!523 = !DILocation(line: 257, column: 9, scope: !470)
!524 = !DILocation(line: 257, column: 2, scope: !470)
!525 = !DILocation(line: 258, column: 1, scope: !470)
!526 = distinct !DISubprogram(name: "kexec_load_check", scope: !2, file: !2, line: 195, type: !527, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!97, !114, !114}
!529 = !{!530, !531, !532, !533}
!530 = !DILocalVariable(name: "nr_segments", arg: 1, scope: !526, file: !2, line: 195, type: !114)
!531 = !DILocalVariable(name: "flags", arg: 2, scope: !526, file: !2, line: 196, type: !114)
!532 = !DILocalVariable(name: "image_type", scope: !526, file: !2, line: 198, type: !97)
!533 = !DILocalVariable(name: "result", scope: !526, file: !2, line: 200, type: !97)
!534 = !DILocation(line: 195, column: 50, scope: !526)
!535 = !DILocation(line: 196, column: 22, scope: !526)
!536 = !DILocation(line: 198, column: 2, scope: !526)
!537 = !DILocation(line: 198, column: 6, scope: !526)
!538 = !DILocation(line: 198, column: 20, scope: !526)
!539 = !DILocation(line: 198, column: 26, scope: !526)
!540 = !DILocation(line: 198, column: 19, scope: !526)
!541 = !DILocation(line: 200, column: 2, scope: !526)
!542 = !DILocation(line: 200, column: 6, scope: !526)
!543 = !DILocation(line: 203, column: 28, scope: !544)
!544 = distinct !DILexicalBlock(scope: !526, file: !2, line: 203, column: 6)
!545 = !DILocation(line: 203, column: 7, scope: !544)
!546 = !DILocation(line: 203, column: 6, scope: !526)
!547 = !DILocation(line: 204, column: 3, scope: !544)
!548 = !DILocation(line: 207, column: 11, scope: !526)
!549 = !DILocation(line: 207, column: 9, scope: !526)
!550 = !DILocation(line: 208, column: 6, scope: !551)
!551 = distinct !DILexicalBlock(scope: !526, file: !2, line: 208, column: 6)
!552 = !DILocation(line: 208, column: 13, scope: !551)
!553 = !DILocation(line: 208, column: 6, scope: !526)
!554 = !DILocation(line: 209, column: 10, scope: !551)
!555 = !DILocation(line: 209, column: 3, scope: !551)
!556 = !DILocation(line: 215, column: 11, scope: !526)
!557 = !DILocation(line: 215, column: 9, scope: !526)
!558 = !DILocation(line: 216, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !526, file: !2, line: 216, column: 6)
!560 = !DILocation(line: 216, column: 6, scope: !526)
!561 = !DILocation(line: 217, column: 10, scope: !559)
!562 = !DILocation(line: 217, column: 3, scope: !559)
!563 = !DILocation(line: 223, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !526, file: !2, line: 223, column: 6)
!565 = !DILocation(line: 223, column: 13, scope: !564)
!566 = !DILocation(line: 223, column: 32, scope: !564)
!567 = !DILocation(line: 223, column: 38, scope: !564)
!568 = !DILocation(line: 223, column: 28, scope: !564)
!569 = !DILocation(line: 223, column: 6, scope: !526)
!570 = !DILocation(line: 224, column: 3, scope: !564)
!571 = !DILocation(line: 229, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !526, file: !2, line: 229, column: 6)
!573 = !DILocation(line: 229, column: 18, scope: !572)
!574 = !DILocation(line: 229, column: 6, scope: !526)
!575 = !DILocation(line: 230, column: 3, scope: !572)
!576 = !DILocation(line: 232, column: 2, scope: !526)
!577 = !DILocation(line: 233, column: 1, scope: !526)
!578 = distinct !DISubprogram(name: "memdup_array_user", scope: !579, file: !579, line: 28, type: !580, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !584)
!579 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!580 = !DISubroutineType(types: !581)
!581 = !{!95, !582, !110, !110}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!584 = !{!585, !586, !587, !588}
!585 = !DILocalVariable(name: "src", arg: 1, scope: !578, file: !579, line: 28, type: !582)
!586 = !DILocalVariable(name: "n", arg: 2, scope: !578, file: !579, line: 28, type: !110)
!587 = !DILocalVariable(name: "size", arg: 3, scope: !578, file: !579, line: 28, type: !110)
!588 = !DILocalVariable(name: "nbytes", scope: !578, file: !579, line: 30, type: !110)
!589 = !DILocation(line: 28, column: 58, scope: !578)
!590 = !DILocation(line: 28, column: 70, scope: !578)
!591 = !DILocation(line: 28, column: 80, scope: !578)
!592 = !DILocation(line: 30, column: 2, scope: !578)
!593 = !DILocation(line: 30, column: 9, scope: !578)
!594 = !DILocation(line: 32, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !578, file: !579, line: 32, column: 6)
!596 = !DILocation(line: 32, column: 6, scope: !578)
!597 = !DILocation(line: 33, column: 10, scope: !595)
!598 = !DILocation(line: 33, column: 3, scope: !595)
!599 = !DILocation(line: 35, column: 21, scope: !578)
!600 = !DILocation(line: 35, column: 26, scope: !578)
!601 = !DILocation(line: 35, column: 9, scope: !578)
!602 = !DILocation(line: 35, column: 2, scope: !578)
!603 = !DILocation(line: 36, column: 1, scope: !578)
!604 = distinct !DISubprogram(name: "IS_ERR", scope: !605, file: !605, line: 59, type: !606, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !610)
!605 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !582}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !100, line: 35, baseType: !609)
!609 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!610 = !{!611}
!611 = !DILocalVariable(name: "ptr", arg: 1, scope: !604, file: !605, line: 59, type: !582)
!612 = !DILocation(line: 59, column: 60, scope: !604)
!613 = !DILocation(line: 61, column: 9, scope: !604)
!614 = !DILocation(line: 61, column: 2, scope: !604)
!615 = distinct !DISubprogram(name: "PTR_ERR", scope: !605, file: !605, line: 49, type: !616, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!352, !582}
!618 = !{!619}
!619 = !DILocalVariable(name: "ptr", arg: 1, scope: !615, file: !605, line: 49, type: !582)
!620 = !DILocation(line: 49, column: 61, scope: !615)
!621 = !DILocation(line: 51, column: 16, scope: !615)
!622 = !DILocation(line: 51, column: 9, scope: !615)
!623 = !DILocation(line: 51, column: 2, scope: !615)
!624 = distinct !DISubprogram(name: "do_kexec_load", scope: !2, file: !2, line: 87, type: !625, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{!97, !114, !114, !340, !114}
!627 = !{!628, !629, !630, !631, !632, !6303, !6304, !6305, !6306, !6310, !6312, !6316, !6318, !6320, !6322, !6323}
!628 = !DILocalVariable(name: "entry", arg: 1, scope: !624, file: !2, line: 87, type: !114)
!629 = !DILocalVariable(name: "nr_segments", arg: 2, scope: !624, file: !2, line: 87, type: !114)
!630 = !DILocalVariable(name: "segments", arg: 3, scope: !624, file: !2, line: 88, type: !340)
!631 = !DILocalVariable(name: "flags", arg: 4, scope: !624, file: !2, line: 88, type: !114)
!632 = !DILocalVariable(name: "dest_image", scope: !624, file: !2, line: 90, type: !633)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kimage", file: !342, line: 296, size: 5760, elements: !636)
!636 = !{!637, !639, !641, !642, !643, !6269, !6270, !6271, !6272, !6274, !6275, !6276, !6277, !6278, !6279, !6280, !6281, !6282, !6297, !6298, !6299, !6300, !6301, !6302}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !635, file: !342, line: 297, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "kimage_entry_t", file: !342, line: 80, baseType: !114)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !635, file: !342, line: 298, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "last_entry", scope: !635, file: !342, line: 299, baseType: !640, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !635, file: !342, line: 301, baseType: !114, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "control_code_page", scope: !635, file: !342, line: 302, baseType: !644, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !189, line: 74, size: 512, align: 128, elements: !646)
!646 = !{!647, !648, !6263, !6268}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !189, line: 75, baseType: !114, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !189, line: 83, baseType: !649, size: 320, offset: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !189, line: 83, size: 320, elements: !650)
!650 = !{!651, !6189, !6203, !6207, !6262}
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !189, line: 84, baseType: !652, size: 320)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !189, line: 84, size: 320, elements: !653)
!653 = !{!654, !665, !6183, !6188}
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !189, line: 90, baseType: !655, size: 128)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !189, line: 90, size: 128, elements: !656)
!656 = !{!657, !658, !663, !664}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !655, file: !189, line: 91, baseType: !172, size: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !189, line: 94, baseType: !659, size: 128)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !189, line: 94, size: 128, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !659, file: !189, line: 96, baseType: !95, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !659, file: !189, line: 98, baseType: !28, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !655, file: !189, line: 102, baseType: !172, size: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !655, file: !189, line: 103, baseType: !172, size: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !652, file: !189, line: 106, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !305, line: 472, size: 1536, align: 64, elements: !668)
!668 = !{!669, !6018, !6019, !6020, !6021, !6022, !6023, !6024, !6025, !6177, !6178, !6179, !6180, !6181, !6182}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !667, file: !305, line: 473, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !305, line: 641, size: 4800, elements: !672)
!672 = !{!673, !674, !675, !683, !684, !691, !692, !695, !696, !5957, !5958, !5959, !5960, !5961, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973, !5974, !5975, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !5984, !5989, !5990, !5991, !5992, !5993, !5994, !5995, !6000, !6003, !6004, !6005, !6014, !6015, !6016, !6017}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !671, file: !305, line: 642, baseType: !99, size: 16)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !671, file: !305, line: 643, baseType: !101, size: 16, offset: 16)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !671, file: !305, line: 644, baseType: !676, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !677, line: 23, baseType: !678)
!677 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 21, size: 32, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !678, file: !677, line: 22, baseType: !681, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !100, line: 37, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !112, line: 49, baseType: !28)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !671, file: !305, line: 645, baseType: !172, size: 128, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !671, file: !305, line: 646, baseType: !685, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !677, line: 28, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 26, size: 32, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !686, file: !677, line: 27, baseType: !689, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !100, line: 38, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !112, line: 50, baseType: !28)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !671, file: !305, line: 647, baseType: !28, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !671, file: !305, line: 650, baseType: !693, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !305, line: 607, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !671, file: !305, line: 651, baseType: !693, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !671, file: !305, line: 654, baseType: !697, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !305, line: 1966, size: 2048, align: 512, elements: !700)
!700 = !{!701, !5791, !5801, !5805, !5809, !5813, !5817, !5821, !5825, !5829, !5833, !5834, !5838, !5842, !5879, !5908, !5912, !5918, !5922, !5926, !5930, !5934, !5938, !5944, !5948}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !699, file: !305, line: 1967, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!705, !670, !705, !28}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !707, line: 82, size: 1536, elements: !708)
!707 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!708 = !{!709, !710, !720, !728, !729, !744, !745, !749, !762, !5775, !5776, !5777, !5778, !5783, !5784, !5785}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !706, file: !707, line: 84, baseType: !28, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !706, file: !707, line: 85, baseType: !711, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !712, line: 275, baseType: !713)
!712 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !712, line: 275, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !713, file: !712, line: 275, baseType: !716, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !712, line: 69, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !712, line: 64, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !717, file: !712, line: 65, baseType: !28, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !706, file: !707, line: 86, baseType: !721, size: 128, offset: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !722, line: 38, size: 128, elements: !723)
!722 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!723 = !{!724, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !722, line: 39, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !721, file: !722, line: 39, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !706, file: !707, line: 87, baseType: !705, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !706, file: !707, line: 88, baseType: !730, size: 128, offset: 256)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !707, line: 49, size: 128, elements: !731)
!731 = !{!732, !741}
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !707, line: 50, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !730, file: !707, line: 50, size: 64, elements: !734)
!734 = !{!735, !740}
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !707, line: 51, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !733, file: !707, line: 51, size: 64, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !736, file: !707, line: 52, baseType: !355, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !736, file: !707, line: 52, baseType: !355, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !733, file: !707, line: 54, baseType: !411, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !730, file: !707, line: 56, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !706, file: !707, line: 89, baseType: !670, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !706, file: !707, line: 91, baseType: !746, size: 256, offset: 448)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !706, file: !707, line: 94, baseType: !750, size: 64, offset: 704)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !751, line: 25, size: 64, elements: !752)
!751 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !751, line: 26, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !751, line: 26, size: 64, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !754, file: !751, line: 28, baseType: !412, size: 64, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !751, line: 30, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !751, line: 30, size: 64, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !751, line: 31, baseType: !134, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !758, file: !751, line: 32, baseType: !97, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !706, file: !707, line: 95, baseType: !763, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !707, line: 128, size: 1024, align: 512, elements: !766)
!766 = !{!767, !771, !772, !779, !785, !789, !793, !797, !798, !802, !807, !5765, !5769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !765, file: !707, line: 129, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!97, !705, !28}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !765, file: !707, line: 130, baseType: !768, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !765, file: !707, line: 131, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!97, !776, !778}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !765, file: !707, line: 132, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!97, !776, !28, !92, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !765, file: !707, line: 134, baseType: !786, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!97, !776}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !765, file: !707, line: 135, baseType: !790, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!97, !705}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !765, file: !707, line: 136, baseType: !794, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !705}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !765, file: !707, line: 137, baseType: !794, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !765, file: !707, line: 138, baseType: !799, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !705, !670}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !765, file: !707, line: 139, baseType: !803, size: 64, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!806, !705, !806, !97}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !765, file: !707, line: 140, baseType: !808, size: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !5764}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !813, line: 70, size: 256, elements: !814)
!813 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!814 = !{!815, !816, !5760, !5761}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !812, file: !813, line: 71, baseType: !705, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !812, file: !813, line: 72, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !305, line: 1190, size: 10752, elements: !819)
!819 = !{!820, !821, !824, !825, !826, !827, !5336, !5470, !5510, !5595, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5612, !5616, !5617, !5620, !5623, !5626, !5629, !5630, !5631, !5672, !5694, !5695, !5696, !5697, !5698, !5699, !5702, !5703, !5710, !5711, !5712, !5713, !5714, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758, !5759}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !818, file: !305, line: 1191, baseType: !172, size: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !818, file: !305, line: 1192, baseType: !822, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !100, line: 21, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !100, line: 18, baseType: !355)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !818, file: !305, line: 1193, baseType: !162, size: 8, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !818, file: !305, line: 1194, baseType: !114, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !818, file: !305, line: 1195, baseType: !116, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !818, file: !305, line: 1196, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !305, line: 2366, size: 576, elements: !830)
!830 = !{!831, !832, !833, !839, !843, !847, !851, !5324, !5325, !5326, !5328, !5329, !5330, !5332, !5333, !5334, !5335}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !829, file: !305, line: 2367, baseType: !92, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !829, file: !305, line: 2368, baseType: !97, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !829, file: !305, line: 2376, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!97, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !813, line: 21, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !829, file: !305, line: 2377, baseType: !840, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !305, line: 75, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !829, file: !305, line: 2378, baseType: !844, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!705, !828, !97, !92, !95}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !829, file: !305, line: 2380, baseType: !848, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !817}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !829, file: !305, line: 2381, baseType: !852, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !76, line: 402, size: 9216, align: 512, elements: !854)
!854 = !{!855, !856, !857, !861, !5016, !5042, !5043, !5044, !5045, !5049, !5052, !5053, !5054, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5122, !5123, !5141, !5158, !5159, !5160, !5161, !5170, !5193, !5194, !5197, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5209, !5210, !5296, !5297, !5298, !5299, !5300, !5302, !5303, !5312, !5313, !5314, !5315, !5317, !5318, !5319, !5320, !5321, !5322, !5323}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !853, file: !76, line: 403, baseType: !75, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !853, file: !76, line: 406, baseType: !172, size: 128, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !76, line: 409, baseType: !858, size: 448, offset: 192)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 56)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !853, file: !76, line: 417, baseType: !862, size: 768, offset: 640)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !76, line: 45, size: 768, elements: !863)
!863 = !{!864, !5010, !5011, !5012, !5015}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !862, file: !76, line: 46, baseType: !865, size: 512)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !866, line: 64, size: 512, elements: !867)
!866 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!867 = !{!868, !869, !870, !872, !918, !4999, !5000, !5005, !5006, !5007, !5008, !5009}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !865, file: !866, line: 65, baseType: !92, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !865, file: !866, line: 66, baseType: !172, size: 128, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !865, file: !866, line: 67, baseType: !871, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !865, file: !866, line: 68, baseType: !873, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !866, line: 168, size: 768, elements: !875)
!875 = !{!876, !877, !878, !879}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !874, file: !866, line: 169, baseType: !172, size: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !874, file: !866, line: 170, baseType: !134, size: 32, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !874, file: !866, line: 171, baseType: !865, size: 512, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !874, file: !866, line: 172, baseType: !880, size: 64, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !866, line: 133, size: 192, elements: !883)
!883 = !{!884, !891, !896}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !882, file: !866, line: 134, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!97, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !882, file: !866, line: 135, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!92, !889}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !882, file: !866, line: 136, baseType: !897, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!97, !889, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !866, line: 125, size: 20736, elements: !903)
!903 = !{!904, !908, !912, !913, !917}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !902, file: !866, line: 126, baseType: !905, size: 192)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 192, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 3)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !902, file: !866, line: 127, baseType: !909, size: 4096, offset: 192)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 4096, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !902, file: !866, line: 128, baseType: !97, size: 32, offset: 4288)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !902, file: !866, line: 129, baseType: !914, size: 16384, offset: 4320)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 2048)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !902, file: !866, line: 130, baseType: !97, size: 32, offset: 20704)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !865, file: !866, line: 69, baseType: !919, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !866, line: 116, size: 384, elements: !922)
!922 = !{!923, !927, !949, !4987, !4991, !4995}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !921, file: !866, line: 117, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !871}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !921, file: !866, line: 118, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !931, line: 254, size: 128, elements: !932)
!931 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!932 = !{!933, !945}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !930, file: !931, line: 255, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!937, !871, !940, !806}
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !100, line: 66, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !112, line: 73, baseType: !939)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !112, line: 15, baseType: !352)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !931, line: 30, size: 128, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !941, file: !931, line: 31, baseType: !92, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !941, file: !931, line: 32, baseType: !99, size: 16, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !930, file: !931, line: 256, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!937, !871, !940, !92, !110}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !921, file: !866, line: 119, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !931, line: 84, size: 320, elements: !954)
!954 = !{!955, !956, !960, !4983, !4985}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !953, file: !931, line: 85, baseType: !92, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !953, file: !931, line: 86, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!99, !871, !940, !97}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !953, file: !931, line: 88, baseType: !961, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!99, !871, !964, !97}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !931, line: 175, size: 512, elements: !966)
!966 = !{!967, !968, !969, !970, !974, !4978, !4979}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !965, file: !931, line: 176, baseType: !941, size: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !965, file: !931, line: 177, baseType: !110, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !965, file: !931, line: 178, baseType: !95, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !965, file: !931, line: 179, baseType: !971, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!666}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !965, file: !931, line: 180, baseType: !975, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!937, !978, !871, !964, !806, !116, !110}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !305, line: 994, size: 1856, align: 64, elements: !980)
!980 = !{!981, !1000, !1001, !1003, !1012, !1025, !1026, !1027, !4748, !4749, !4758, !4764, !4765, !4969, !4970, !4971, !4972, !4973, !4974, !4977}
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !305, line: 995, baseType: !982, size: 128)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !305, line: 995, size: 128, elements: !983)
!983 = !{!984, !990, !999}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !982, file: !305, line: 996, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !986, line: 60, size: 64, elements: !987)
!986 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !985, file: !986, line: 61, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !982, file: !305, line: 997, baseType: !991, size: 128, align: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !100, line: 232, size: 128, align: 64, elements: !992)
!992 = !{!993, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !991, file: !100, line: 233, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !991, file: !100, line: 234, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !994}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !982, file: !305, line: 998, baseType: !28, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !979, file: !305, line: 1005, baseType: !134, size: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !979, file: !305, line: 1006, baseType: !1002, size: 32, offset: 160)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !100, line: 156, baseType: !28)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !979, file: !305, line: 1007, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1005, line: 13, baseType: !1006)
!1005 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !100, line: 181, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 179, size: 64, elements: !1008)
!1008 = !{!1009}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1007, file: !100, line: 180, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !159, line: 22, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !161, line: 30, baseType: !118)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !979, file: !305, line: 1008, baseType: !1013, size: 256, offset: 256)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1014, line: 66, size: 256, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1015 = !{!1016, !1017, !1019, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1013, file: !1014, line: 67, baseType: !1004, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1013, file: !1014, line: 68, baseType: !1018, size: 32, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !143, line: 23, baseType: !142)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1013, file: !1014, line: 70, baseType: !1020, size: 32, offset: 96)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1021, line: 15, size: 32, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1020, file: !1021, line: 20, baseType: !124, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1013, file: !1014, line: 72, baseType: !172, size: 128, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !979, file: !305, line: 1009, baseType: !116, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !979, file: !305, line: 1010, baseType: !28, size: 32, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !979, file: !305, line: 1011, baseType: !1028, size: 256, offset: 640)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !305, line: 948, size: 256, elements: !1029)
!1029 = !{!1030, !1051, !4744, !4745, !4746, !4747}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1028, file: !305, line: 949, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1032, line: 34, baseType: !1033)
!1032 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1032, line: 25, size: 64, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1033, file: !1032, line: 26, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1037, line: 27, baseType: !1038)
!1037 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1037, line: 13, size: 64, elements: !1039)
!1039 = !{!1040, !1050}
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !1037, line: 14, baseType: !1041, size: 32)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !1037, line: 14, size: 32, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1041, file: !1037, line: 15, baseType: !124, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !1037, line: 16, baseType: !1045, size: 32)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !1037, line: 16, size: 32, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1045, file: !1037, line: 18, baseType: !158, size: 8)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1045, file: !1037, line: 19, baseType: !1049, size: 24, offset: 8)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 24, elements: !906)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1038, file: !1037, line: 26, baseType: !146, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1028, file: !305, line: 950, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !297, line: 59, size: 768, elements: !1054)
!1054 = !{!1055, !1061, !1062, !1063, !1076, !1077, !1078, !1079}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1053, file: !297, line: 61, baseType: !1056, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1057, line: 113, baseType: !1058)
!1057 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1057, line: 111, size: 32, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1058, file: !1057, line: 112, baseType: !124, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1053, file: !297, line: 62, baseType: !28, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1053, file: !297, line: 63, baseType: !134, size: 32, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1053, file: !297, line: 65, baseType: !1064, size: 256, offset: 128)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 256, elements: !1074)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !100, line: 194, size: 64, elements: !1066)
!1066 = !{!1067}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1065, file: !100, line: 195, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !100, line: 198, size: 128, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1069, file: !100, line: 199, baseType: !1068, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1069, file: !100, line: 199, baseType: !1073, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1074 = !{!1075}
!1075 = !DISubrange(count: 4)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1053, file: !297, line: 66, baseType: !1065, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1053, file: !297, line: 68, baseType: !129, size: 192, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1053, file: !297, line: 69, baseType: !991, size: 128, align: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1053, file: !297, line: 70, baseType: !1080, offset: 768)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, elements: !1832)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !297, line: 54, size: 128, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1081, file: !297, line: 55, baseType: !97, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1081, file: !297, line: 56, baseType: !1085, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1087, line: 26, size: 1152, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1088 = !{!1089, !1102, !1103, !1104, !4733, !4734, !4735, !4736, !4739, !4740, !4741, !4742, !4743}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1086, file: !1087, line: 27, baseType: !1090, size: 192)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1091, line: 19, size: 192, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1092 = !{!1093, !1100, !1101}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1090, file: !1091, line: 20, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1095, line: 296, size: 128, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1094, file: !1095, line: 297, baseType: !134, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1094, file: !1095, line: 299, baseType: !370, size: 32, offset: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1094, file: !1095, line: 300, baseType: !95, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1090, file: !1091, line: 21, baseType: !28, size: 32, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1090, file: !1091, line: 22, baseType: !28, size: 32, offset: 160)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1086, file: !1087, line: 28, baseType: !991, size: 128, align: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1086, file: !1087, line: 29, baseType: !28, size: 32, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1086, file: !1087, line: 30, baseType: !1105, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1107, line: 746, size: 58368, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1108 = !{!1109, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1196, !1207, !1302, !1306, !1309, !1340, !1341, !1342, !1343, !1354, !1356, !1357, !1358, !1359, !1360, !1361, !1372, !1373, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1390, !1391, !1398, !1399, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1918, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1933, !1934, !1935, !1936, !1938, !1939, !1940, !1941, !1942, !1943, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1967, !1973, !2043, !2044, !2045, !2046, !2050, !2053, !2060, !2065, !2068, !2071, !2074, !2696, !2897, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2935, !2936, !2937, !2946, !2954, !2955, !2956, !2957, !2958, !2963, !2964, !2965, !2968, !2969, !2972, !2975, !2978, !2986, !2989, !2990, !3076, !3077, !3078, !3079, !3080, !3086, !3087, !3088, !3089, !3090, !3091, !3094, !3106, !3107, !3110, !3111, !3112, !3150, !3151, !3152, !3153, !3154, !3155, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3187, !3190, !3196, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3208, !3280, !3282, !3283, !3284, !3285, !3286, !3287, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3317, !3318, !3319}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1106, file: !1107, line: 752, baseType: !1110, size: 192)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1111, line: 56, size: 192, elements: !1112)
!1111 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1112 = !{!1113, !1114, !1115, !1116}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1110, file: !1111, line: 57, baseType: !114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1110, file: !1111, line: 58, baseType: !114, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1110, file: !1111, line: 59, baseType: !355, size: 32, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1110, file: !1111, line: 61, baseType: !355, size: 32, offset: 160)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1106, file: !1107, line: 754, baseType: !28, size: 32, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1106, file: !1107, line: 767, baseType: !95, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1106, file: !1107, line: 768, baseType: !1056, size: 32, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1106, file: !1107, line: 770, baseType: !28, size: 32, offset: 352)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1106, file: !1107, line: 771, baseType: !28, size: 32, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1106, file: !1107, line: 774, baseType: !97, size: 32, offset: 416)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1106, file: !1107, line: 775, baseType: !1124, size: 128, offset: 448)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1125, line: 58, size: 128, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1126 = !{!1127, !1128, !1133, !1134}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1124, file: !1125, line: 59, baseType: !985, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !1125, line: 60, baseType: !1129, size: 32, offset: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !1125, line: 60, size: 32, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1129, file: !1125, line: 61, baseType: !28, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1129, file: !1125, line: 62, baseType: !124, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1124, file: !1125, line: 65, baseType: !168, size: 16, offset: 96)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1124, file: !1125, line: 65, baseType: !168, size: 16, offset: 112)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1106, file: !1107, line: 776, baseType: !28, size: 32, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1106, file: !1107, line: 777, baseType: !114, size: 64, offset: 640)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1106, file: !1107, line: 778, baseType: !1105, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1106, file: !1107, line: 787, baseType: !97, size: 32, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1106, file: !1107, line: 788, baseType: !97, size: 32, offset: 800)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1106, file: !1107, line: 790, baseType: !97, size: 32, offset: 832)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1106, file: !1107, line: 792, baseType: !97, size: 32, offset: 864)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1106, file: !1107, line: 793, baseType: !97, size: 32, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1106, file: !1107, line: 794, baseType: !97, size: 32, offset: 928)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1106, file: !1107, line: 795, baseType: !28, size: 32, offset: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1106, file: !1107, line: 797, baseType: !1146, size: 2048, offset: 1024)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1107, line: 551, size: 2048, elements: !1147)
!1147 = !{!1148, !1153, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1175, !1178, !1179, !1180}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1146, file: !1107, line: 553, baseType: !1149, size: 128)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1107, line: 411, size: 128, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1149, file: !1107, line: 412, baseType: !114, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1149, file: !1107, line: 413, baseType: !355, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1146, file: !1107, line: 554, baseType: !1154, size: 192, align: 64, offset: 128)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1155, line: 5, size: 192, align: 64, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1156 = !{!1157, !1158, !1160}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1154, file: !1155, line: 6, baseType: !114, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1154, file: !1155, line: 7, baseType: !1159, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1154, file: !1155, line: 8, baseType: !1159, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1146, file: !1107, line: 555, baseType: !411, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1146, file: !1107, line: 556, baseType: !411, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1146, file: !1107, line: 558, baseType: !172, size: 128, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1146, file: !1107, line: 559, baseType: !28, size: 32, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1146, file: !1107, line: 561, baseType: !411, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1146, file: !1107, line: 562, baseType: !411, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1146, file: !1107, line: 563, baseType: !411, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1146, file: !1107, line: 564, baseType: !411, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1146, file: !1107, line: 565, baseType: !1010, size: 64, offset: 896)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1146, file: !1107, line: 566, baseType: !411, size: 64, offset: 960)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1146, file: !1107, line: 568, baseType: !411, size: 64, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1146, file: !1107, line: 571, baseType: !97, size: 32, offset: 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1146, file: !1107, line: 572, baseType: !1174, size: 64, offset: 1152)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1146, file: !1107, line: 574, baseType: !1176, size: 64, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1107, line: 49, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1146, file: !1107, line: 576, baseType: !1176, size: 64, offset: 1280)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1146, file: !1107, line: 578, baseType: !114, size: 64, offset: 1344)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1146, file: !1107, line: 588, baseType: !1181, size: 512, align: 512, offset: 1536)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1107, line: 497, size: 512, align: 512, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1181, file: !1107, line: 498, baseType: !411, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1181, file: !1107, line: 499, baseType: !411, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1181, file: !1107, line: 500, baseType: !411, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1181, file: !1107, line: 501, baseType: !355, size: 32, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1181, file: !1107, line: 502, baseType: !355, size: 32, offset: 224)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1181, file: !1107, line: 503, baseType: !114, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1181, file: !1107, line: 504, baseType: !114, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1181, file: !1107, line: 505, baseType: !114, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1181, file: !1107, line: 506, baseType: !1192, size: 64, align: 64, offset: 448)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1107, line: 445, size: 64, align: 64, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1192, file: !1107, line: 446, baseType: !28, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1192, file: !1107, line: 447, baseType: !28, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1106, file: !1107, line: 798, baseType: !1197, size: 384, offset: 3072)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1107, line: 592, size: 384, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1197, file: !1107, line: 593, baseType: !172, size: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1197, file: !1107, line: 594, baseType: !114, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1197, file: !1107, line: 595, baseType: !114, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1197, file: !1107, line: 596, baseType: !28, size: 32, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1197, file: !1107, line: 597, baseType: !101, size: 16, offset: 288)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1197, file: !1107, line: 598, baseType: !101, size: 16, offset: 304)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1197, file: !1107, line: 600, baseType: !1206, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1106, file: !1107, line: 799, baseType: !1208, size: 1792, offset: 3456)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1107, line: 610, size: 1792, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1299, !1300}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1208, file: !1107, line: 611, baseType: !1154, size: 192, align: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1208, file: !1107, line: 618, baseType: !411, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1208, file: !1107, line: 619, baseType: !411, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1208, file: !1107, line: 620, baseType: !411, size: 64, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1208, file: !1107, line: 621, baseType: !411, size: 64, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1208, file: !1107, line: 622, baseType: !411, size: 64, offset: 448)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1208, file: !1107, line: 629, baseType: !1010, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1208, file: !1107, line: 630, baseType: !411, size: 64, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1208, file: !1107, line: 631, baseType: !28, size: 32, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1208, file: !1107, line: 653, baseType: !28, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1208, file: !1107, line: 654, baseType: !28, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1208, file: !1107, line: 655, baseType: !28, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1208, file: !1107, line: 656, baseType: !28, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1208, file: !1107, line: 662, baseType: !1224, size: 512, offset: 704)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !83, line: 118, size: 512, elements: !1225)
!1225 = !{!1226, !1234, !1235, !1240, !1295, !1296, !1297, !1298}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1224, file: !83, line: 119, baseType: !1227, size: 256)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1228, line: 9, size: 256, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1227, file: !1228, line: 10, baseType: !1154, size: 192, align: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1227, file: !1228, line: 11, baseType: !1232, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1233, line: 29, baseType: !1010)
!1233 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1224, file: !83, line: 120, baseType: !1232, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1224, file: !83, line: 121, baseType: !1236, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!82, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1224, file: !83, line: 122, baseType: !1241, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !83, line: 159, size: 512, align: 512, elements: !1243)
!1243 = !{!1244, !1269, !1270, !1273, !1278, !1279, !1290, !1294}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1242, file: !83, line: 160, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !83, line: 215, size: 4608, align: 512, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1246, file: !83, line: 216, baseType: !1018, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1246, file: !83, line: 217, baseType: !28, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1246, file: !83, line: 218, baseType: !28, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1246, file: !83, line: 219, baseType: !28, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1246, file: !83, line: 220, baseType: !28, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1246, file: !83, line: 221, baseType: !28, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1246, file: !83, line: 222, baseType: !28, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1246, file: !83, line: 223, baseType: !28, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1246, file: !83, line: 224, baseType: !28, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1246, file: !83, line: 226, baseType: !28, size: 32, offset: 160)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1246, file: !83, line: 227, baseType: !101, size: 16, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1246, file: !83, line: 228, baseType: !101, size: 16, offset: 208)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1246, file: !83, line: 229, baseType: !28, size: 32, offset: 224)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1246, file: !83, line: 235, baseType: !1232, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1246, file: !83, line: 236, baseType: !1239, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1246, file: !83, line: 237, baseType: !1232, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1246, file: !83, line: 238, baseType: !1239, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1246, file: !83, line: 239, baseType: !1266, size: 4096, align: 512, offset: 512)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 4096, align: 512, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 8)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1242, file: !83, line: 161, baseType: !28, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1242, file: !83, line: 162, baseType: !1271, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !100, line: 32, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !112, line: 96, baseType: !97)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1242, file: !83, line: 163, baseType: !1274, size: 32, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !712, line: 274, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !712, line: 274, size: 32, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1275, file: !712, line: 274, baseType: !716, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1242, file: !83, line: 164, baseType: !1239, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1242, file: !83, line: 165, baseType: !1280, size: 128, offset: 256)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1228, line: 14, size: 128, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1280, file: !1228, line: 15, baseType: !1283, size: 128)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1155, line: 26, size: 128, elements: !1284)
!1284 = !{!1285, !1289}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1283, file: !1155, line: 27, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1155, line: 12, size: 64, elements: !1287)
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1286, file: !1155, line: 13, baseType: !1159, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1283, file: !1155, line: 28, baseType: !1159, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1242, file: !83, line: 166, baseType: !1291, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1232}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1242, file: !83, line: 167, baseType: !1232, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1224, file: !83, line: 123, baseType: !158, size: 8, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1224, file: !83, line: 124, baseType: !158, size: 8, offset: 456)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1224, file: !83, line: 125, baseType: !158, size: 8, offset: 464)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1224, file: !83, line: 126, baseType: !158, size: 8, offset: 472)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1208, file: !1107, line: 671, baseType: !1224, size: 512, offset: 1216)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1208, file: !1107, line: 679, baseType: !1301, size: 64, offset: 1728)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1106, file: !1107, line: 800, baseType: !1303, size: 64, offset: 5248)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1305)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1107, line: 800, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1106, file: !1107, line: 809, baseType: !1307, size: 64, offset: 5312)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1107, line: 70, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1106, file: !1107, line: 825, baseType: !1310, size: 2048, align: 512, offset: 5632)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1107, line: 509, size: 2048, align: 512, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1310, file: !1107, line: 511, baseType: !411, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1310, file: !1107, line: 512, baseType: !411, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1310, file: !1107, line: 513, baseType: !411, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1310, file: !1107, line: 514, baseType: !411, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1310, file: !1107, line: 515, baseType: !411, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1310, file: !1107, line: 516, baseType: !411, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1310, file: !1107, line: 518, baseType: !411, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1310, file: !1107, line: 519, baseType: !411, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1310, file: !1107, line: 520, baseType: !1010, size: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1310, file: !1107, line: 522, baseType: !411, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1310, file: !1107, line: 523, baseType: !411, size: 64, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1310, file: !1107, line: 524, baseType: !1010, size: 64, offset: 704)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1310, file: !1107, line: 526, baseType: !1010, size: 64, offset: 768)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1310, file: !1107, line: 527, baseType: !411, size: 64, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1310, file: !1107, line: 529, baseType: !411, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1310, file: !1107, line: 530, baseType: !411, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1310, file: !1107, line: 531, baseType: !411, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1310, file: !1107, line: 532, baseType: !411, size: 64, offset: 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1310, file: !1107, line: 533, baseType: !411, size: 64, offset: 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1310, file: !1107, line: 535, baseType: !411, size: 64, offset: 1216)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1310, file: !1107, line: 536, baseType: !411, size: 64, offset: 1280)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1310, file: !1107, line: 537, baseType: !411, size: 64, offset: 1344)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1310, file: !1107, line: 538, baseType: !411, size: 64, offset: 1408)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1310, file: !1107, line: 539, baseType: !411, size: 64, offset: 1472)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1310, file: !1107, line: 540, baseType: !411, size: 64, offset: 1536)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1310, file: !1107, line: 541, baseType: !411, size: 64, offset: 1600)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1310, file: !1107, line: 542, baseType: !411, size: 64, offset: 1664)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1310, file: !1107, line: 543, baseType: !411, size: 64, offset: 1728)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1106, file: !1107, line: 833, baseType: !28, size: 32, offset: 7680)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1106, file: !1107, line: 836, baseType: !28, size: 32, offset: 7712)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1106, file: !1107, line: 837, baseType: !97, size: 32, offset: 7744)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1106, file: !1107, line: 838, baseType: !1344, size: 64, offset: 7808)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1347, line: 19, baseType: !1348)
!1347 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1347, line: 19, size: 64, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1348, file: !1347, line: 19, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 1)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1106, file: !1107, line: 839, baseType: !1355, size: 64, offset: 7872)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1106, file: !1107, line: 840, baseType: !1346, size: 64, offset: 7936)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1106, file: !1107, line: 841, baseType: !95, size: 64, offset: 8000)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1106, file: !1107, line: 843, baseType: !101, size: 16, offset: 8064)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1106, file: !1107, line: 845, baseType: !101, size: 16, offset: 8080)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1106, file: !1107, line: 848, baseType: !97, size: 32, offset: 8096)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1106, file: !1107, line: 849, baseType: !1362, size: 32, offset: 8128)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1107, line: 718, size: 32, elements: !1363)
!1363 = !{!1364, !1371}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1362, file: !1107, line: 724, baseType: !1365, size: 32)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1362, file: !1107, line: 719, size: 32, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1365, file: !1107, line: 720, baseType: !158, size: 8)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1365, file: !1107, line: 721, baseType: !158, size: 8, offset: 8)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1365, file: !1107, line: 722, baseType: !158, size: 8, offset: 16)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1365, file: !1107, line: 723, baseType: !158, size: 8, offset: 24)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1362, file: !1107, line: 725, baseType: !355, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1106, file: !1107, line: 850, baseType: !172, size: 128, offset: 8192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1106, file: !1107, line: 851, baseType: !1374, size: 64, offset: 8320)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1107, line: 60, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1106, file: !1107, line: 855, baseType: !114, size: 64, offset: 8384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1106, file: !1107, line: 856, baseType: !158, size: 8, offset: 8448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1106, file: !1107, line: 857, baseType: !158, size: 8, offset: 8456)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1106, file: !1107, line: 858, baseType: !97, size: 32, offset: 8480)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1106, file: !1107, line: 859, baseType: !172, size: 128, offset: 8512)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1106, file: !1107, line: 860, baseType: !97, size: 32, offset: 8640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1106, file: !1107, line: 861, baseType: !172, size: 128, offset: 8704)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1106, file: !1107, line: 873, baseType: !1384, size: 256, offset: 8832)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1107, line: 376, size: 256, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1384, file: !1107, line: 381, baseType: !114, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1384, file: !1107, line: 384, baseType: !413, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1384, file: !1107, line: 389, baseType: !413, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1384, file: !1107, line: 392, baseType: !413, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1106, file: !1107, line: 875, baseType: !172, size: 128, offset: 9088)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1106, file: !1107, line: 877, baseType: !1392, size: 320, offset: 9216)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1393, line: 86, size: 320, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1394 = !{!1395, !1396, !1397}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1392, file: !1393, line: 87, baseType: !97, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1392, file: !1393, line: 88, baseType: !172, size: 128, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1392, file: !1393, line: 89, baseType: !172, size: 128, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1106, file: !1107, line: 878, baseType: !1154, size: 192, align: 64, offset: 9536)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1106, file: !1107, line: 881, baseType: !1400, size: 64, offset: 9728)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !189, line: 733, size: 10240, elements: !1402)
!1402 = !{!1403, !1830}
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !189, line: 734, baseType: !1404, size: 10240)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !189, line: 734, size: 10240, elements: !1405)
!1405 = !{!1406, !1410, !1424, !1428, !1429, !1430, !1431, !1432, !1433, !1442, !1443, !1444, !1450, !1451, !1452, !1453, !1454, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1491, !1503, !1506, !1552, !1553, !1554, !1557, !1816, !1817, !1820, !1821, !1822, !1828, !1829}
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !189, line: 739, baseType: !1407, size: 512, align: 512)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !189, line: 739, size: 512, align: 512, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1407, file: !189, line: 747, baseType: !124, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1404, file: !189, line: 750, baseType: !1411, size: 128, offset: 512)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1412, line: 218, size: 128, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1413 = !{!1414, !1422, !1423}
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 219, baseType: !1415, size: 32)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 219, size: 32, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1415, file: !1412, line: 220, baseType: !134, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1415, file: !1412, line: 221, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1412, line: 197, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1412, line: 197, elements: !1421)
!1421 = !{}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1411, file: !1412, line: 223, baseType: !28, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1411, file: !1412, line: 224, baseType: !95, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1404, file: !189, line: 752, baseType: !1425, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!114, !978, !114, !114, !114, !114}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1404, file: !189, line: 756, baseType: !114, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1404, file: !189, line: 757, baseType: !114, size: 64, offset: 768)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1404, file: !189, line: 760, baseType: !114, size: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1404, file: !189, line: 761, baseType: !114, size: 64, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1404, file: !189, line: 763, baseType: !114, size: 64, offset: 960)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1404, file: !189, line: 764, baseType: !1434, size: 64, offset: 1024)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1436, line: 299, baseType: !1437)
!1436 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1436, line: 299, size: 64, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1437, file: !1436, line: 299, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1441, line: 18, baseType: !114)
!1441 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1404, file: !189, line: 773, baseType: !124, size: 32, offset: 1088)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1404, file: !189, line: 785, baseType: !124, size: 32, offset: 1120)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1404, file: !189, line: 795, baseType: !1445, size: 64, offset: 1152)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !189, line: 726, size: 128, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1446, file: !189, line: 727, baseType: !411, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1446, file: !189, line: 728, baseType: !97, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1404, file: !189, line: 801, baseType: !114, size: 64, offset: 1216)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1404, file: !189, line: 804, baseType: !1004, size: 64, offset: 1280)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1404, file: !189, line: 806, baseType: !97, size: 32, offset: 1344)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1404, file: !189, line: 808, baseType: !134, size: 32, offset: 1376)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1404, file: !189, line: 823, baseType: !1455, size: 320, offset: 1408)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1456, line: 48, size: 320, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1457 = !{!1458, !1459, !1460, !1461, !1462}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1455, file: !1456, line: 49, baseType: !1004, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1455, file: !1456, line: 55, baseType: !1004, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1455, file: !1456, line: 57, baseType: !1020, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1455, file: !1456, line: 59, baseType: !1018, size: 32, offset: 160)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1455, file: !1456, line: 60, baseType: !172, size: 128, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1404, file: !189, line: 825, baseType: !172, size: 128, offset: 1728)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1404, file: !189, line: 845, baseType: !97, size: 32, offset: 1856)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1404, file: !189, line: 849, baseType: !114, size: 64, offset: 1920)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1404, file: !189, line: 850, baseType: !114, size: 64, offset: 1984)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1404, file: !189, line: 852, baseType: !114, size: 64, offset: 2048)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1404, file: !189, line: 853, baseType: !114, size: 64, offset: 2112)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1404, file: !189, line: 854, baseType: !1006, size: 64, offset: 2176)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1404, file: !189, line: 855, baseType: !114, size: 64, offset: 2240)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1404, file: !189, line: 856, baseType: !114, size: 64, offset: 2304)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1404, file: !189, line: 857, baseType: !114, size: 64, offset: 2368)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1404, file: !189, line: 858, baseType: !114, size: 64, offset: 2432)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1404, file: !189, line: 865, baseType: !716, size: 32, offset: 2496)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1404, file: !189, line: 867, baseType: !134, size: 32, offset: 2528)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1404, file: !189, line: 869, baseType: !114, size: 64, offset: 2560)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1404, file: !189, line: 869, baseType: !114, size: 64, offset: 2624)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1404, file: !189, line: 869, baseType: !114, size: 64, offset: 2688)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1404, file: !189, line: 869, baseType: !114, size: 64, offset: 2752)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1404, file: !189, line: 870, baseType: !114, size: 64, offset: 2816)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1404, file: !189, line: 870, baseType: !114, size: 64, offset: 2880)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1404, file: !189, line: 870, baseType: !114, size: 64, offset: 2944)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1404, file: !189, line: 871, baseType: !114, size: 64, offset: 3008)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1404, file: !189, line: 871, baseType: !114, size: 64, offset: 3072)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1404, file: !189, line: 871, baseType: !114, size: 64, offset: 3136)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1404, file: !189, line: 871, baseType: !114, size: 64, offset: 3200)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1404, file: !189, line: 873, baseType: !1488, size: 3328, offset: 3264)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 3328, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 52)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1404, file: !189, line: 875, baseType: !1492, size: 1280, offset: 6592)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1493, size: 1280, elements: !1074)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1494, line: 22, size: 320, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1495 = !{!1496, !1497, !1498, !1499}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1493, file: !1494, line: 23, baseType: !1018, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1493, file: !1494, line: 24, baseType: !1010, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1493, file: !1494, line: 26, baseType: !172, size: 128, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1493, file: !1494, line: 28, baseType: !1500, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !159, line: 20, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !161, line: 26, baseType: !97)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1404, file: !189, line: 877, baseType: !1504, size: 64, offset: 7872)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !189, line: 877, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1404, file: !189, line: 880, baseType: !1507, size: 1088, offset: 7936)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1508, line: 72, baseType: !1509)
!1508 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1508, line: 23, size: 1088, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1518, !1519, !1520, !1521, !1546, !1547, !1548}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1509, file: !1508, line: 28, baseType: !411, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1509, file: !1508, line: 38, baseType: !1006, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1509, file: !1508, line: 40, baseType: !114, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1509, file: !1508, line: 43, baseType: !1455, size: 320, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1509, file: !1508, line: 44, baseType: !1516, size: 64, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1508, line: 44, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1509, file: !1508, line: 48, baseType: !114, size: 64, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1509, file: !1508, line: 59, baseType: !1013, size: 256, offset: 640)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1509, file: !1508, line: 60, baseType: !95, size: 64, offset: 896)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1509, file: !1508, line: 61, baseType: !1522, size: 64, offset: 960)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1525, line: 13, size: 1216, elements: !1526)
!1525 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1524, file: !1525, line: 14, baseType: !95, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1524, file: !1525, line: 15, baseType: !114, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1524, file: !1525, line: 17, baseType: !114, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1524, file: !1525, line: 17, baseType: !114, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1524, file: !1525, line: 18, baseType: !114, size: 64, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1524, file: !1525, line: 18, baseType: !114, size: 64, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1524, file: !1525, line: 19, baseType: !582, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1524, file: !1525, line: 21, baseType: !352, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1524, file: !1525, line: 23, baseType: !352, size: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1524, file: !1525, line: 24, baseType: !352, size: 64, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1524, file: !1525, line: 25, baseType: !352, size: 64, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1524, file: !1525, line: 26, baseType: !352, size: 64, offset: 704)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1524, file: !1525, line: 27, baseType: !352, size: 64, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1524, file: !1525, line: 28, baseType: !352, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1524, file: !1525, line: 29, baseType: !352, size: 64, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1524, file: !1525, line: 30, baseType: !352, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1524, file: !1525, line: 31, baseType: !352, size: 64, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1524, file: !1525, line: 32, baseType: !352, size: 64, offset: 1088)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1524, file: !1525, line: 33, baseType: !352, size: 64, offset: 1152)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1509, file: !1508, line: 63, baseType: !124, size: 32, offset: 1024)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1509, file: !1508, line: 69, baseType: !168, size: 16, offset: 1056)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1509, file: !1508, line: 70, baseType: !1549, size: 16, offset: 1072)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !159, line: 18, baseType: !1550)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !161, line: 23, baseType: !1551)
!1551 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !189, line: 882, baseType: !114, size: 64, offset: 9024)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1404, file: !189, line: 885, baseType: !134, size: 32, offset: 9088)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1404, file: !189, line: 886, baseType: !1555, size: 64, offset: 9152)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !189, line: 732, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1404, file: !189, line: 901, baseType: !1558, size: 64, offset: 9216)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1560, line: 68, size: 4800, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1561 = !{!1562, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1601, !1602, !1603, !1604, !1714, !1715, !1727, !1797, !1798, !1812, !1814}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1559, file: !1560, line: 69, baseType: !1563, size: 576)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1560, line: 23, size: 576, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1563, file: !1560, line: 24, baseType: !355, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !1560, line: 25, baseType: !1567, size: 512, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1563, file: !1560, line: 25, size: 512, elements: !1568)
!1568 = !{!1569, !1578}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1567, file: !1560, line: 26, baseType: !1570, size: 480)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1571, size: 480, elements: !1576)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1560, line: 17, size: 96, elements: !1572)
!1572 = !{!1573, !1574, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1571, file: !1560, line: 18, baseType: !355, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1571, file: !1560, line: 19, baseType: !355, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1571, file: !1560, line: 20, baseType: !355, size: 32, offset: 64)
!1576 = !{!1577}
!1577 = !DISubrange(count: 5)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1560, line: 27, baseType: !1579, size: 128)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !1560, line: 27, size: 128, elements: !1580)
!1580 = !{!1581, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1579, file: !1560, line: 28, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1579, file: !1560, line: 29, baseType: !1582, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1559, file: !1560, line: 70, baseType: !1563, size: 576, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1559, file: !1560, line: 71, baseType: !1563, size: 576, offset: 1152)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1559, file: !1560, line: 72, baseType: !1558, size: 64, offset: 1728)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1559, file: !1560, line: 73, baseType: !97, size: 32, offset: 1792)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1559, file: !1560, line: 74, baseType: !676, size: 32, offset: 1824)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1559, file: !1560, line: 75, baseType: !685, size: 32, offset: 1856)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1559, file: !1560, line: 76, baseType: !1591, size: 192, offset: 1920)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1592, line: 9, size: 192, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1593 = !{!1594, !1595, !1599, !1600}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1591, file: !1592, line: 10, baseType: !1004, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1591, file: !1592, line: 11, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1592, line: 7, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1591, file: !1592, line: 12, baseType: !28, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1591, file: !1592, line: 13, baseType: !1056, size: 32, offset: 160)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1559, file: !1560, line: 77, baseType: !114, size: 64, offset: 2112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1559, file: !1560, line: 80, baseType: !608, size: 8, offset: 2176)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1559, file: !1560, line: 88, baseType: !172, size: 128, offset: 2240)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1559, file: !1560, line: 89, baseType: !1605, size: 64, offset: 2368)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1607, line: 195, size: 1728, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1608 = !{!1609, !1610, !1613, !1618, !1619, !1622, !1623, !1630, !1631, !1632, !1633, !1636, !1637, !1638, !1639, !1640, !1678, !1699}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1606, file: !1607, line: 196, baseType: !1056, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1606, file: !1607, line: 197, baseType: !1611, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1607, line: 28, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !100, line: 104, baseType: !1501)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 198, baseType: !1614, size: 192, offset: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 198, size: 192, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1614, file: !1607, line: 199, baseType: !172, size: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1614, file: !1607, line: 200, baseType: !1154, size: 192, align: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1606, file: !1607, line: 205, baseType: !1455, size: 320, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1606, file: !1607, line: 206, baseType: !1620, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1607, line: 206, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1606, file: !1607, line: 207, baseType: !95, size: 64, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 208, baseType: !1624, size: 64, offset: 704)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 208, size: 64, elements: !1625)
!1625 = !{!1626, !1629}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1624, file: !1607, line: 209, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1628, line: 8, baseType: !1011)
!1628 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1624, file: !1607, line: 210, baseType: !1627, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1606, file: !1607, line: 212, baseType: !1627, size: 64, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1606, file: !1607, line: 213, baseType: !676, size: 32, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1606, file: !1607, line: 214, baseType: !685, size: 32, offset: 864)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1606, file: !1607, line: 215, baseType: !1634, size: 32, offset: 896)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1607, line: 31, baseType: !1635)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100, line: 110, baseType: !355)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1606, file: !1607, line: 216, baseType: !101, size: 16, offset: 928)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1606, file: !1607, line: 217, baseType: !101, size: 16, offset: 944)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1606, file: !1607, line: 221, baseType: !1551, size: 16, offset: 960)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !1607, line: 228, baseType: !114, size: 64, offset: 1024)
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 245, baseType: !1641, size: 320, offset: 1088)
!1641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 245, size: 320, elements: !1642)
!1642 = !{!1643, !1670}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1641, file: !1607, line: 246, baseType: !1644, size: 320)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1607, line: 114, size: 320, elements: !1645)
!1645 = !{!1646, !1647, !1659, !1662, !1669}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1644, file: !1607, line: 116, baseType: !114, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1607, line: 117, baseType: !1648, size: 64, offset: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !1607, line: 117, size: 64, elements: !1649)
!1649 = !{!1650, !1658}
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1607, line: 118, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1607, line: 118, size: 64, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1651, file: !1607, line: 120, baseType: !168, size: 16)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1651, file: !1607, line: 121, baseType: !1655, size: 48, offset: 16)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1656)
!1656 = !{!1657}
!1657 = !DISubrange(count: 6)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1648, file: !1607, line: 127, baseType: !114, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1644, file: !1607, line: 129, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1607, line: 102, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1644, file: !1607, line: 130, baseType: !1663, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1607, line: 108, size: 192, elements: !1665)
!1665 = !{!1666, !1667, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1664, file: !1607, line: 109, baseType: !991, size: 128, align: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1664, file: !1607, line: 110, baseType: !1056, size: 32, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1664, file: !1607, line: 111, baseType: !608, size: 8, offset: 160)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1644, file: !1607, line: 131, baseType: !92, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1607, line: 247, baseType: !1671, size: 320)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1641, file: !1607, line: 247, size: 320, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1671, file: !1607, line: 248, baseType: !114, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1671, file: !1607, line: 249, baseType: !114, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1671, file: !1607, line: 250, baseType: !1660, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1671, file: !1607, line: 251, baseType: !1663, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1671, file: !1607, line: 252, baseType: !806, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 260, baseType: !1679, size: 256, offset: 1408)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 260, size: 256, elements: !1680)
!1680 = !{!1681, !1687}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1679, file: !1607, line: 261, baseType: !1682, size: 256)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1607, line: 134, size: 256, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1682, file: !1607, line: 135, baseType: !95, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1682, file: !1607, line: 136, baseType: !1686, size: 256)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !1074)
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1607, line: 262, baseType: !1688, size: 256)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1679, file: !1607, line: 262, size: 256, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1688, file: !1607, line: 264, baseType: !172, size: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1688, file: !1607, line: 265, baseType: !1692, size: 128, offset: 128)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1693, line: 22, size: 128, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1694 = !{!1695, !1698}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1692, file: !1693, line: 23, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1693, line: 23, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1692, file: !1693, line: 24, baseType: !114, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1606, file: !1607, line: 280, baseType: !1700, size: 64, offset: 1664)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1607, line: 176, size: 192, elements: !1702)
!1702 = !{!1703, !1712, !1713}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1701, file: !1607, line: 177, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1607, line: 171, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!97, !1605, !1708, !1710, !1605}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1661)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1701, file: !1607, line: 178, baseType: !1605, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1701, file: !1607, line: 179, baseType: !1660, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1559, file: !1560, line: 90, baseType: !1455, size: 320, offset: 2432)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1559, file: !1560, line: 97, baseType: !1716, size: 256, offset: 2752)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1717, line: 98, size: 256, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1716, file: !1717, line: 99, baseType: !1004, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1716, file: !1717, line: 100, baseType: !172, size: 128, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1716, file: !1717, line: 101, baseType: !1722, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1717, line: 21, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1726}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1559, file: !1560, line: 99, baseType: !1728, size: 768, offset: 3008)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !88, line: 199, size: 768, elements: !1729)
!1729 = !{!1730, !1735}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1728, file: !88, line: 200, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!97, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1728, file: !88, line: 201, baseType: !1736, size: 704, offset: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !88, line: 193, size: 704, elements: !1737)
!1737 = !{!1738, !1796}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1736, file: !88, line: 195, baseType: !1739, size: 640)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !88, line: 173, size: 640, elements: !1740)
!1740 = !{!1741, !1753, !1765, !1766, !1786, !1787, !1789, !1795}
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !88, line: 174, baseType: !1742, size: 192)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !88, line: 174, size: 192, elements: !1743)
!1743 = !{!1744, !1752}
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !88, line: 175, baseType: !1745, size: 192)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !88, line: 175, size: 192, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1750, !1751}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1745, file: !88, line: 176, baseType: !108, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1745, file: !88, line: 177, baseType: !97, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1745, file: !88, line: 178, baseType: !97, size: 32, offset: 96)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1745, file: !88, line: 179, baseType: !97, size: 32, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1745, file: !88, line: 180, baseType: !97, size: 32, offset: 160)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1742, file: !88, line: 182, baseType: !991, size: 128, align: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1739, file: !88, line: 184, baseType: !1754, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1756, line: 26, size: 256, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1755, file: !1756, line: 27, baseType: !28, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1755, file: !1756, line: 28, baseType: !1760, size: 192, offset: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1761, line: 43, size: 192, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1760, file: !1761, line: 44, baseType: !1018, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1760, file: !1761, line: 45, baseType: !172, size: 128, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1739, file: !88, line: 185, baseType: !108, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1739, file: !88, line: 186, baseType: !1767, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !88, line: 204, size: 960, elements: !1769)
!1769 = !{!1770, !1771, !1775, !1782}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1768, file: !88, line: 205, baseType: !1728, size: 768)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1768, file: !88, line: 206, baseType: !1772, size: 64, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1734, !1767}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1768, file: !88, line: 207, baseType: !1776, size: 64, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1779, !1780, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1768, file: !88, line: 209, baseType: !1783, size: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!97, !1779, !108}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1739, file: !88, line: 187, baseType: !1734, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1739, file: !88, line: 188, baseType: !1788, size: 64, offset: 448)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1739, file: !88, line: 189, baseType: !1790, size: 64, offset: 512)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !88, line: 157, size: 256, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1791, file: !88, line: 158, baseType: !1154, size: 192, align: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1791, file: !88, line: 159, baseType: !1779, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1739, file: !88, line: 190, baseType: !1065, size: 64, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1736, file: !88, line: 196, baseType: !1286, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1559, file: !1560, line: 100, baseType: !1779, size: 64, offset: 3776)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1559, file: !1560, line: 102, baseType: !1799, size: 64, offset: 3840)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1560, line: 107, size: 1152, elements: !1801)
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1810}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1800, file: !1560, line: 108, baseType: !1069, size: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1800, file: !1560, line: 109, baseType: !1558, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1800, file: !1560, line: 110, baseType: !676, size: 32, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1800, file: !1560, line: 111, baseType: !124, size: 32, offset: 224)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1800, file: !1560, line: 112, baseType: !1807, size: 640, offset: 256)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 640, elements: !1808)
!1808 = !{!1809}
!1809 = !DISubrange(count: 10)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1800, file: !1560, line: 113, baseType: !1811, size: 256, offset: 896)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 256, elements: !1074)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1559, file: !1560, line: 103, baseType: !1813, size: 640, offset: 3904)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 640, elements: !1808)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1559, file: !1560, line: 104, baseType: !1815, size: 256, offset: 4544)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 256, elements: !1074)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1404, file: !189, line: 904, baseType: !978, size: 64, offset: 9280)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1404, file: !189, line: 906, baseType: !1818, size: 64, offset: 9344)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !189, line: 906, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1404, file: !189, line: 930, baseType: !124, size: 32, offset: 9408)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1404, file: !189, line: 933, baseType: !124, size: 32, offset: 9440)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1404, file: !189, line: 935, baseType: !1823, size: 64, offset: 9472)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !205, line: 103, size: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1823, file: !205, line: 104, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !205, line: 101, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1404, file: !189, line: 940, baseType: !1004, size: 64, offset: 9536)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1404, file: !189, line: 942, baseType: !1716, size: 256, offset: 9600)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1401, file: !189, line: 986, baseType: !1831, offset: 10240)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: -1)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1106, file: !1107, line: 882, baseType: !1400, size: 64, offset: 9792)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1106, file: !1107, line: 884, baseType: !97, size: 32, offset: 9856)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1106, file: !1107, line: 885, baseType: !97, size: 32, offset: 9888)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1106, file: !1107, line: 886, baseType: !97, size: 32, offset: 9920)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1106, file: !1107, line: 888, baseType: !97, size: 32, offset: 9952)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1106, file: !1107, line: 890, baseType: !114, size: 64, offset: 9984)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1106, file: !1107, line: 893, baseType: !28, size: 32, offset: 10048)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1106, file: !1107, line: 896, baseType: !28, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1106, file: !1107, line: 897, baseType: !28, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1106, file: !1107, line: 898, baseType: !28, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1106, file: !1107, line: 899, baseType: !28, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1106, file: !1107, line: 919, baseType: !28, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1106, file: !1107, line: 922, baseType: !28, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1106, file: !1107, line: 923, baseType: !28, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1106, file: !1107, line: 925, baseType: !28, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1106, file: !1107, line: 939, baseType: !28, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1106, file: !1107, line: 941, baseType: !28, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1106, file: !1107, line: 944, baseType: !28, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1106, file: !1107, line: 956, baseType: !28, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1106, file: !1107, line: 962, baseType: !28, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1106, file: !1107, line: 966, baseType: !28, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1106, file: !1107, line: 969, baseType: !114, size: 64, offset: 10176)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1106, file: !1107, line: 971, baseType: !1857, size: 448, offset: 10240)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !183, line: 25, size: 448, elements: !1858)
!1858 = !{!1859, !1860, !1865}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1857, file: !183, line: 26, baseType: !114, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1857, file: !183, line: 27, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!352, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !183, line: 28, baseType: !1866, size: 320, offset: 128)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1857, file: !183, line: 28, size: 320, elements: !1867)
!1867 = !{!1868, !1878, !1903}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1866, file: !183, line: 37, baseType: !1869, size: 320)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !183, line: 30, size: 320, elements: !1870)
!1870 = !{!1871, !1873, !1874, !1875, !1876, !1877}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1869, file: !183, line: 31, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1869, file: !183, line: 32, baseType: !355, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1869, file: !183, line: 33, baseType: !355, size: 32, offset: 96)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1869, file: !183, line: 34, baseType: !355, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1869, file: !183, line: 35, baseType: !411, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1869, file: !183, line: 36, baseType: !1872, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1866, file: !183, line: 47, baseType: !1879, size: 192)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !183, line: 39, size: 192, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1902}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1879, file: !183, line: 40, baseType: !1271, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1879, file: !183, line: 41, baseType: !182, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !183, line: 42, baseType: !1884, size: 64, offset: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1879, file: !183, line: 42, size: 64, elements: !1885)
!1885 = !{!1886, !1894}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1884, file: !183, line: 43, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1889, line: 7, size: 128, elements: !1890)
!1889 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1890 = !{!1891, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1888, file: !1889, line: 8, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !112, line: 93, baseType: !118)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1888, file: !1889, line: 9, baseType: !118, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1884, file: !183, line: 44, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1897, line: 7, size: 64, elements: !1898)
!1897 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1898 = !{!1899, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1896, file: !1897, line: 8, baseType: !1900, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1897, line: 5, baseType: !1501)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1896, file: !1897, line: 9, baseType: !1501, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1879, file: !183, line: 46, baseType: !411, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1866, file: !183, line: 55, baseType: !1904, size: 256)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !183, line: 49, size: 256, elements: !1905)
!1905 = !{!1906, !1914, !1915, !1916, !1917}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1904, file: !183, line: 50, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1909, line: 36, size: 64, elements: !1910)
!1909 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1908, file: !1909, line: 37, baseType: !97, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1908, file: !1909, line: 38, baseType: !1551, size: 16, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1908, file: !1909, line: 39, baseType: !1551, size: 16, offset: 48)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1904, file: !183, line: 51, baseType: !97, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1904, file: !183, line: 52, baseType: !97, size: 32, offset: 96)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1904, file: !183, line: 53, baseType: !114, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1904, file: !183, line: 54, baseType: !114, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1106, file: !1107, line: 973, baseType: !1919, size: 32, offset: 10688)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !100, line: 27, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !112, line: 28, baseType: !97)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1106, file: !1107, line: 974, baseType: !1919, size: 32, offset: 10720)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1106, file: !1107, line: 978, baseType: !114, size: 64, offset: 10752)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1106, file: !1107, line: 987, baseType: !1105, size: 64, offset: 10816)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1106, file: !1107, line: 990, baseType: !1105, size: 64, offset: 10880)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1106, file: !1107, line: 995, baseType: !172, size: 128, offset: 10944)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1106, file: !1107, line: 996, baseType: !172, size: 128, offset: 11072)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1106, file: !1107, line: 997, baseType: !1105, size: 64, offset: 11200)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1106, file: !1107, line: 1005, baseType: !172, size: 128, offset: 11264)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1106, file: !1107, line: 1006, baseType: !172, size: 128, offset: 11392)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1106, file: !1107, line: 1009, baseType: !1052, size: 64, offset: 11520)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1106, file: !1107, line: 1010, baseType: !1932, size: 512, offset: 11584)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 512, elements: !1074)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1106, file: !1107, line: 1011, baseType: !172, size: 128, offset: 12096)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1106, file: !1107, line: 1012, baseType: !172, size: 128, offset: 12224)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1106, file: !1107, line: 1014, baseType: !1754, size: 64, offset: 12352)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1106, file: !1107, line: 1017, baseType: !1937, size: 64, offset: 12416)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1106, file: !1107, line: 1020, baseType: !1937, size: 64, offset: 12480)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1106, file: !1107, line: 1023, baseType: !95, size: 64, offset: 12544)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1106, file: !1107, line: 1025, baseType: !411, size: 64, offset: 12608)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1106, file: !1107, line: 1026, baseType: !411, size: 64, offset: 12672)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1106, file: !1107, line: 1031, baseType: !411, size: 64, offset: 12736)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1106, file: !1107, line: 1032, baseType: !1944, size: 192, offset: 12800)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1107, line: 324, size: 192, elements: !1945)
!1945 = !{!1946, !1947, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1944, file: !1107, line: 326, baseType: !411, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1944, file: !1107, line: 327, baseType: !411, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1944, file: !1107, line: 328, baseType: !1018, size: 32, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1106, file: !1107, line: 1041, baseType: !114, size: 64, offset: 12992)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1106, file: !1107, line: 1042, baseType: !114, size: 64, offset: 13056)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1106, file: !1107, line: 1045, baseType: !411, size: 64, offset: 13120)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1106, file: !1107, line: 1048, baseType: !411, size: 64, offset: 13184)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1106, file: !1107, line: 1051, baseType: !114, size: 64, offset: 13248)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1106, file: !1107, line: 1052, baseType: !114, size: 64, offset: 13312)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1106, file: !1107, line: 1055, baseType: !1956, size: 640, offset: 13376)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1957, line: 132, size: 640, elements: !1958)
!1957 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1958 = !{!1959, !1965, !1966}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1956, file: !1957, line: 133, baseType: !1960, size: 576)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1961, size: 576, elements: !906)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1957, line: 117, size: 192, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1961, file: !1957, line: 118, baseType: !411, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1961, file: !1957, line: 119, baseType: !1280, size: 128, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1956, file: !1957, line: 134, baseType: !28, size: 32, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1956, file: !1957, line: 135, baseType: !28, size: 32, offset: 608)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1106, file: !1107, line: 1058, baseType: !1968, size: 448, offset: 14016)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1957, line: 144, size: 448, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1968, file: !1957, line: 145, baseType: !991, size: 128, align: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1968, file: !1957, line: 146, baseType: !1013, size: 256, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1968, file: !1957, line: 147, baseType: !28, size: 32, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1106, file: !1107, line: 1064, baseType: !1974, size: 64, offset: 14464)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1977, line: 110, size: 1472, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2028, !2029, !2030, !2038}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1976, file: !1977, line: 111, baseType: !1004, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1976, file: !1977, line: 112, baseType: !676, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1976, file: !1977, line: 113, baseType: !685, size: 32, offset: 96)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1976, file: !1977, line: 114, baseType: !676, size: 32, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1976, file: !1977, line: 115, baseType: !685, size: 32, offset: 160)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1976, file: !1977, line: 116, baseType: !676, size: 32, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1976, file: !1977, line: 117, baseType: !685, size: 32, offset: 224)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1976, file: !1977, line: 118, baseType: !676, size: 32, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1976, file: !1977, line: 119, baseType: !685, size: 32, offset: 288)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1976, file: !1977, line: 120, baseType: !28, size: 32, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1976, file: !1977, line: 121, baseType: !1990, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1991, line: 24, baseType: !1992)
!1991 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1991, line: 24, size: 64, elements: !1993)
!1993 = !{!1994}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1992, file: !1991, line: 24, baseType: !411, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1976, file: !1977, line: 122, baseType: !1990, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1976, file: !1977, line: 123, baseType: !1990, size: 64, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1976, file: !1977, line: 124, baseType: !1990, size: 64, offset: 576)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1976, file: !1977, line: 125, baseType: !1990, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1976, file: !1977, line: 127, baseType: !162, size: 8, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1976, file: !1977, line: 129, baseType: !1605, size: 64, offset: 768)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1976, file: !1977, line: 130, baseType: !1605, size: 64, offset: 832)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1976, file: !1977, line: 131, baseType: !1605, size: 64, offset: 896)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1976, file: !1977, line: 132, baseType: !1605, size: 64, offset: 960)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1976, file: !1977, line: 135, baseType: !95, size: 64, offset: 1024)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1976, file: !1977, line: 137, baseType: !2006, size: 64, offset: 1088)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2008, line: 14, size: 1088, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2007, file: !2008, line: 15, baseType: !1056, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2007, file: !2008, line: 17, baseType: !1493, size: 320, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2007, file: !2008, line: 19, baseType: !114, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2007, file: !2008, line: 20, baseType: !1004, size: 64, offset: 448)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2007, file: !2008, line: 23, baseType: !1069, size: 128, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2007, file: !2008, line: 24, baseType: !676, size: 32, offset: 640)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2007, file: !2008, line: 29, baseType: !1004, size: 64, offset: 704)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2007, file: !2008, line: 36, baseType: !2018, size: 320, offset: 768)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2019, line: 15, size: 320, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2018, file: !2019, line: 16, baseType: !1018, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2018, file: !2019, line: 18, baseType: !97, size: 32, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2018, file: !2019, line: 19, baseType: !97, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2018, file: !2019, line: 20, baseType: !97, size: 32, offset: 96)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2018, file: !2019, line: 21, baseType: !97, size: 32, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2018, file: !2019, line: 22, baseType: !114, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !2019, line: 23, baseType: !114, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1976, file: !1977, line: 138, baseType: !1558, size: 64, offset: 1152)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1976, file: !1977, line: 139, baseType: !1799, size: 64, offset: 1216)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1976, file: !1977, line: 140, baseType: !2031, size: 64, offset: 1280)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1977, line: 25, size: 64, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2032, file: !1977, line: 26, baseType: !124, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2032, file: !1977, line: 27, baseType: !97, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2032, file: !1977, line: 28, baseType: !2037, offset: 64)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, elements: !1832)
!2038 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1977, line: 142, baseType: !2039, size: 128, offset: 1344)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1977, line: 142, size: 128, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2039, file: !1977, line: 143, baseType: !97, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2039, file: !1977, line: 144, baseType: !991, size: 128, align: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1106, file: !1107, line: 1067, baseType: !1974, size: 64, offset: 14528)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1106, file: !1107, line: 1070, baseType: !1974, size: 64, offset: 14592)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1106, file: !1107, line: 1074, baseType: !1605, size: 64, offset: 14656)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1106, file: !1107, line: 1084, baseType: !2047, size: 128, offset: 14720)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2048)
!2048 = !{!2049}
!2049 = !DISubrange(count: 16)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1106, file: !1107, line: 1086, baseType: !2051, size: 64, offset: 14848)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1107, line: 55, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1106, file: !1107, line: 1089, baseType: !2054, size: 64, offset: 14912)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2055, line: 12, size: 64, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2056 = !{!2057}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2054, file: !2055, line: 13, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2055, line: 8, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1106, file: !1107, line: 1090, baseType: !2061, size: 128, offset: 14976)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2062, line: 13, size: 128, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2061, file: !2062, line: 14, baseType: !172, size: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1106, file: !1107, line: 1097, baseType: !2066, size: 64, offset: 15104)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1107, line: 50, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1106, file: !1107, line: 1100, baseType: !2069, size: 64, offset: 15168)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1107, line: 1100, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1106, file: !1107, line: 1103, baseType: !2072, size: 64, offset: 15232)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1107, line: 53, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1106, file: !1107, line: 1107, baseType: !2075, size: 64, offset: 15296)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2077, line: 31, size: 576, elements: !2078)
!2077 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2078 = !{!2079, !2080, !2083, !2086, !2089, !2090, !2093, !2096, !2097}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2076, file: !2077, line: 32, baseType: !1056, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2076, file: !2077, line: 33, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2077, line: 9, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2076, file: !2077, line: 34, baseType: !2084, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2077, line: 10, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2076, file: !2077, line: 35, baseType: !2087, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2077, line: 8, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2076, file: !2077, line: 36, baseType: !1085, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2076, file: !2077, line: 37, baseType: !2091, size: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1607, line: 34, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2076, file: !2077, line: 38, baseType: !2094, size: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2077, line: 38, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2076, file: !2077, line: 39, baseType: !2094, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2076, file: !2077, line: 40, baseType: !2098, size: 64, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2100, line: 771, size: 384, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2101 = !{!2102, !2103, !2104, !2105}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2099, file: !2100, line: 772, baseType: !1591, size: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2099, file: !2100, line: 773, baseType: !1558, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2099, file: !2100, line: 774, baseType: !1799, size: 64, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2099, file: !2100, line: 775, baseType: !2106, size: 64, offset: 320)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2108, line: 209, size: 4736, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!2109 = !{!2110, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2107, file: !2108, line: 215, baseType: !2111, size: 896)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2112, size: 896, elements: !2480)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !2108, line: 152, size: 1600, elements: !2114)
!2114 = !{!2115, !2531, !2637, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2674}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2113, file: !2108, line: 154, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !2108, line: 389, size: 7872, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2431, !2448, !2449, !2453, !2454, !2455, !2456, !2457, !2458, !2477, !2478, !2482, !2483, !2484, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2518, !2521, !2522, !2529}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2117, file: !2108, line: 391, baseType: !2113, size: 1600)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2117, file: !2108, line: 393, baseType: !114, size: 64, offset: 1600)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2117, file: !2108, line: 401, baseType: !97, size: 32, offset: 1664)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !2117, file: !2108, line: 404, baseType: !97, size: 32, offset: 1696)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !2117, file: !2108, line: 417, baseType: !97, size: 32, offset: 1728)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !2117, file: !2108, line: 418, baseType: !97, size: 32, offset: 1760)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !2117, file: !2108, line: 419, baseType: !97, size: 32, offset: 1792)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !2117, file: !2108, line: 432, baseType: !97, size: 32, offset: 1824)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !2117, file: !2108, line: 433, baseType: !97, size: 32, offset: 1856)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !2117, file: !2108, line: 434, baseType: !97, size: 32, offset: 1888)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !2117, file: !2108, line: 436, baseType: !97, size: 32, offset: 1920)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !2117, file: !2108, line: 439, baseType: !28, size: 32, offset: 1952)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2117, file: !2108, line: 441, baseType: !2132, size: 64, offset: 1984)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2134, line: 190, size: 1152, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2423, !2424, !2425, !2426, !2427, !2430}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2133, file: !2134, line: 191, baseType: !124, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2133, file: !2134, line: 192, baseType: !124, size: 32, offset: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2133, file: !2134, line: 202, baseType: !2132, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2133, file: !2134, line: 203, baseType: !92, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2133, file: !2134, line: 205, baseType: !1154, size: 192, align: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2133, file: !2134, line: 207, baseType: !582, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2133, file: !2134, line: 208, baseType: !28, size: 32, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !2134, line: 209, baseType: !2144, size: 256, offset: 512)
!2144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !2134, line: 209, size: 256, elements: !2145)
!2145 = !{!2146, !2155, !2159}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2144, file: !2134, line: 210, baseType: !2147, size: 256)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2134, line: 153, size: 256, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2154}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2147, file: !2134, line: 154, baseType: !114, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2147, file: !2134, line: 156, baseType: !1286, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2147, file: !2134, line: 162, baseType: !2152, size: 64, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2134, line: 162, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2147, file: !2134, line: 167, baseType: !114, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2144, file: !2134, line: 211, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2134, line: 170, size: 64, elements: !2157)
!2157 = !{!2158}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2156, file: !2134, line: 171, baseType: !2132, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2144, file: !2134, line: 212, baseType: !2160, size: 256)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2134, line: 174, size: 256, elements: !2161)
!2161 = !{!2162, !2418, !2421, !2422}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2160, file: !2134, line: 175, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2134, line: 271, size: 768, elements: !2166)
!2166 = !{!2167, !2382, !2386, !2387, !2388, !2389, !2390, !2394, !2395, !2396, !2397, !2414}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2165, file: !2134, line: 276, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!97, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2134, line: 251, size: 1216, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2172, file: !2134, line: 253, baseType: !2132, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2172, file: !2134, line: 254, baseType: !978, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2172, file: !2134, line: 255, baseType: !2177, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2179, line: 17, size: 960, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2210, !2211, !2214}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2178, file: !2179, line: 18, baseType: !806, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2178, file: !2179, line: 19, baseType: !110, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2178, file: !2179, line: 20, baseType: !110, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2178, file: !2179, line: 21, baseType: !110, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2178, file: !2179, line: 22, baseType: !110, size: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2178, file: !2179, line: 23, baseType: !116, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2178, file: !2179, line: 24, baseType: !116, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2178, file: !2179, line: 25, baseType: !1013, size: 256, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2178, file: !2179, line: 26, baseType: !2190, size: 64, offset: 704)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2179, line: 32, size: 256, elements: !2193)
!2193 = !{!2194, !2198, !2202, !2206}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2192, file: !2179, line: 33, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!95, !2177, !115}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2192, file: !2179, line: 34, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2177, !95}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2192, file: !2179, line: 35, baseType: !2203, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!95, !2177, !95, !115}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2192, file: !2179, line: 36, baseType: !2207, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!97, !2177, !95}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2178, file: !2179, line: 27, baseType: !97, size: 32, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2178, file: !2179, line: 28, baseType: !2212, size: 64, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2178, file: !2179, line: 29, baseType: !95, size: 64, offset: 896)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2172, file: !2134, line: 256, baseType: !95, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2172, file: !2134, line: 259, baseType: !1013, size: 256, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2172, file: !2134, line: 260, baseType: !1013, size: 256, offset: 512)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2172, file: !2134, line: 261, baseType: !97, size: 32, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2172, file: !2134, line: 262, baseType: !172, size: 128, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2172, file: !2134, line: 263, baseType: !806, size: 64, offset: 960)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2172, file: !2134, line: 265, baseType: !110, size: 64, offset: 1024)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2172, file: !2134, line: 266, baseType: !608, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2172, file: !2134, line: 267, baseType: !608, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2172, file: !2134, line: 268, baseType: !2225, size: 64, offset: 1152)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2228, line: 563, size: 1024, elements: !2229)
!2228 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2229 = !{!2230, !2286, !2287, !2291, !2295, !2299, !2348, !2352, !2356, !2360, !2361, !2362, !2366, !2370, !2374, !2378}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2227, file: !2228, line: 564, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !189, line: 625, size: 1344, elements: !2236)
!2236 = !{!2237, !2246, !2247, !2253, !2260, !2261, !2266, !2267, !2272, !2273, !2276, !2277, !2278, !2279, !2280, !2281, !2284}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !189, line: 628, baseType: !2238, size: 128)
!2238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2235, file: !189, line: 628, size: 128, elements: !2239)
!2239 = !{!2240, !2245}
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !189, line: 629, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2238, file: !189, line: 629, size: 128, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2241, file: !189, line: 631, baseType: !114, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2241, file: !189, line: 632, baseType: !114, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2238, file: !189, line: 635, baseType: !991, size: 128, align: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2235, file: !189, line: 639, baseType: !1400, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2235, file: !189, line: 640, baseType: !2248, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1436, line: 297, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1436, line: 297, size: 64, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2249, file: !1436, line: 297, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1441, line: 19, baseType: !114)
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !189, line: 646, baseType: !2254, size: 64, offset: 256)
!2254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2235, file: !189, line: 646, size: 64, elements: !2255)
!2255 = !{!2256, !2259}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2254, file: !189, line: 647, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2258)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !189, line: 542, baseType: !114)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2254, file: !189, line: 648, baseType: !2258, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2235, file: !189, line: 666, baseType: !97, size: 32, offset: 320)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2235, file: !189, line: 667, baseType: !2262, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !189, line: 579, size: 320, elements: !2264)
!2264 = !{!2265}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2263, file: !189, line: 580, baseType: !1455, size: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2235, file: !189, line: 670, baseType: !608, size: 8, offset: 448)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2235, file: !189, line: 681, baseType: !2268, size: 256, offset: 512)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !189, line: 678, size: 256, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2268, file: !189, line: 679, baseType: !1154, size: 192, align: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2268, file: !189, line: 680, baseType: !114, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2235, file: !189, line: 689, baseType: !172, size: 128, offset: 768)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2235, file: !189, line: 691, baseType: !2274, size: 64, offset: 896)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !189, line: 691, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2235, file: !189, line: 694, baseType: !2225, size: 64, offset: 960)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2235, file: !189, line: 697, baseType: !114, size: 64, offset: 1024)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2235, file: !189, line: 699, baseType: !978, size: 64, offset: 1088)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2235, file: !189, line: 700, baseType: !95, size: 64, offset: 1152)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2235, file: !189, line: 711, baseType: !1004, size: 64, offset: 1216)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2235, file: !189, line: 717, baseType: !2282, size: 64, offset: 1280)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !189, line: 717, flags: DIFlagFwdDecl)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2235, file: !189, line: 722, baseType: !2285, offset: 1344)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !189, line: 570, elements: !1421)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2227, file: !2228, line: 569, baseType: !2231, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2227, file: !2228, line: 571, baseType: !2288, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!97, !2234, !114}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2227, file: !2228, line: 572, baseType: !2292, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!97, !2234}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2227, file: !2228, line: 578, baseType: !2296, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!97, !2234, !114, !114, !114}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2227, file: !2228, line: 580, baseType: !2300, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !189, line: 1184, baseType: !28)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2228, line: 512, size: 896, elements: !2306)
!2306 = !{!2307, !2315, !2316, !2323, !2330, !2340, !2341, !2342, !2344, !2346}
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !2228, line: 513, baseType: !2308, size: 320)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2228, line: 513, size: 320, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2314}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2308, file: !2228, line: 514, baseType: !2234, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2308, file: !2228, line: 515, baseType: !370, size: 32, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2308, file: !2228, line: 516, baseType: !114, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2308, file: !2228, line: 517, baseType: !114, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2308, file: !2228, line: 518, baseType: !114, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2305, file: !2228, line: 520, baseType: !188, size: 32, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2305, file: !2228, line: 522, baseType: !2317, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1441, line: 22, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1441, line: 22, size: 64, elements: !2320)
!2320 = !{!2321}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2319, file: !1441, line: 22, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1441, line: 15, baseType: !114)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2305, file: !2228, line: 524, baseType: !2324, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1436, line: 372, baseType: !2326)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1436, line: 372, size: 64, elements: !2327)
!2327 = !{!2328}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2326, file: !1436, line: 372, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1441, line: 16, baseType: !114)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !2228, line: 527, baseType: !2331, size: 64, offset: 512)
!2331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2305, file: !2228, line: 527, size: 64, elements: !2332)
!2332 = !{!2333, !2339}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2331, file: !2228, line: 528, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1441, line: 21, baseType: !2335)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1441, line: 21, size: 64, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2335, file: !1441, line: 21, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1441, line: 14, baseType: !114)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2331, file: !2228, line: 529, baseType: !2318, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2305, file: !2228, line: 534, baseType: !644, size: 64, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2305, file: !2228, line: 535, baseType: !644, size: 64, offset: 640)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2305, file: !2228, line: 541, baseType: !2343, size: 64, offset: 704)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2305, file: !2228, line: 545, baseType: !2345, size: 64, offset: 768)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2305, file: !2228, line: 549, baseType: !2347, size: 64, offset: 832)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1436, line: 520, baseType: !644)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2227, file: !2228, line: 581, baseType: !2349, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!2303, !2304, !28}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2227, file: !2228, line: 582, baseType: !2353, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2303, !2304, !114, !114}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2227, file: !2228, line: 584, baseType: !2357, size: 64, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!114, !2234}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2227, file: !2228, line: 588, baseType: !2300, size: 64, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2227, file: !2228, line: 591, baseType: !2300, size: 64, offset: 640)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2227, file: !2228, line: 597, baseType: !2363, size: 64, offset: 704)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!97, !2234, !114, !95, !97, !97}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2227, file: !2228, line: 603, baseType: !2367, size: 64, offset: 768)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!92, !2234}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2227, file: !2228, line: 613, baseType: !2371, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!97, !2234, !2282}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2227, file: !2228, line: 625, baseType: !2375, size: 64, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!2282, !2234, !114}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2227, file: !2228, line: 633, baseType: !2379, size: 64, offset: 960)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!644, !2234, !114}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2165, file: !2134, line: 277, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !2171}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2165, file: !2134, line: 290, baseType: !2207, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2165, file: !2134, line: 292, baseType: !2195, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2165, file: !2134, line: 293, baseType: !2203, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2165, file: !2134, line: 294, baseType: !2199, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2165, file: !2134, line: 296, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!937, !2171, !806, !110, !116}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2165, file: !2134, line: 306, baseType: !110, size: 64, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2165, file: !2134, line: 313, baseType: !608, size: 8, offset: 512)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2165, file: !2134, line: 314, baseType: !2391, size: 64, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2165, file: !2134, line: 317, baseType: !2398, size: 64, offset: 640)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2401, !2171, !2403}
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2402, line: 59, baseType: !28)
!2402 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2405, line: 37, size: 128, elements: !2406)
!2405 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2406 = !{!2407, !2413}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2404, file: !2405, line: 38, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2405, line: 31, baseType: !2409)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !978, !2412, !2403}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2404, file: !2405, line: 39, baseType: !2401, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2165, file: !2134, line: 320, baseType: !2415, size: 64, offset: 704)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!97, !2171, !2234}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2160, file: !2134, line: 176, baseType: !2419, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2134, line: 35, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2160, file: !2134, line: 177, baseType: !116, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2160, file: !2134, line: 178, baseType: !2132, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2133, file: !2134, line: 215, baseType: !95, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2133, file: !2134, line: 221, baseType: !411, size: 64, offset: 832)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2133, file: !2134, line: 223, baseType: !101, size: 16, offset: 896)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2133, file: !2134, line: 224, baseType: !99, size: 16, offset: 912)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2133, file: !2134, line: 225, baseType: !2428, size: 64, offset: 960)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2134, line: 36, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2133, file: !2134, line: 227, baseType: !991, size: 128, align: 64, offset: 1024)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !2117, file: !2108, line: 442, baseType: !2432, size: 448, offset: 2048)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !2108, line: 138, size: 448, elements: !2433)
!2433 = !{!2434, !2435, !2436}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2432, file: !2108, line: 140, baseType: !2132, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2432, file: !2108, line: 141, baseType: !114, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2432, file: !2108, line: 142, baseType: !2437, size: 320, offset: 128)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2438, line: 11, size: 320, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2439 = !{!2440, !2441, !2442, !2447}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2437, file: !2438, line: 16, baseType: !1069, size: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2437, file: !2438, line: 17, baseType: !114, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2437, file: !2438, line: 18, baseType: !2443, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2437, file: !2438, line: 19, baseType: !355, size: 32, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !2117, file: !2108, line: 443, baseType: !2432, size: 448, offset: 2496)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !2117, file: !2108, line: 446, baseType: !2450, offset: 2944)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2432, elements: !2451)
!2451 = !{!2452}
!2452 = !DISubrange(count: 0)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !2117, file: !2108, line: 455, baseType: !168, size: 16, offset: 2944)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !2117, file: !2108, line: 456, baseType: !168, size: 16, offset: 2960)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !2117, file: !2108, line: 457, baseType: !168, size: 16, offset: 2976)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !2117, file: !2108, line: 458, baseType: !168, size: 16, offset: 2992)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2117, file: !2108, line: 461, baseType: !2111, size: 896, offset: 3008)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2117, file: !2108, line: 463, baseType: !2459, size: 64, offset: 3904)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !2108, line: 537, size: 41664, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2475}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2460, file: !2108, line: 538, baseType: !2152, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2460, file: !2108, line: 541, baseType: !28, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2460, file: !2108, line: 544, baseType: !97, size: 32, offset: 96)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2460, file: !2108, line: 547, baseType: !172, size: 128, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2460, file: !2108, line: 548, baseType: !991, size: 128, align: 64, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2460, file: !2108, line: 555, baseType: !2117, size: 7872, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2460, file: !2108, line: 558, baseType: !2116, size: 64, offset: 8256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2460, file: !2108, line: 561, baseType: !124, size: 32, offset: 8320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2460, file: !2108, line: 564, baseType: !28, size: 32, offset: 8352)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2460, file: !2108, line: 567, baseType: !2472, size: 32768, offset: 8384)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2473)
!2473 = !{!2474}
!2474 = !DISubrange(count: 4096)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2460, file: !2108, line: 570, baseType: !2476, size: 512, offset: 41152)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !910)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !2117, file: !2108, line: 469, baseType: !172, size: 128, offset: 3968)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !2117, file: !2108, line: 478, baseType: !2479, size: 1792, offset: 4096)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1792, elements: !2480)
!2480 = !{!2481}
!2481 = !DISubrange(count: 14)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !2117, file: !2108, line: 487, baseType: !2116, size: 64, offset: 5888)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !2117, file: !2108, line: 488, baseType: !2116, size: 64, offset: 5952)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !2117, file: !2108, line: 491, baseType: !2485, size: 64, offset: 6016)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !2108, line: 327, size: 896, elements: !2487)
!2487 = !{!2488, !2491, !2501, !2502, !2503, !2504, !2505}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2486, file: !2108, line: 332, baseType: !2489)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2490, line: 64, elements: !1421)
!2490 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2486, file: !2108, line: 333, baseType: !2492, size: 192)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !2108, line: 299, size: 192, elements: !2493)
!2493 = !{!2494}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2492, file: !2108, line: 300, baseType: !2495, size: 192)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2496, line: 17, size: 192, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2497 = !{!2498, !2499, !2500}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2495, file: !2496, line: 18, baseType: !411, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2495, file: !2496, line: 19, baseType: !411, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2495, file: !2496, line: 20, baseType: !413, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2486, file: !2108, line: 339, baseType: !2492, size: 192, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2486, file: !2108, line: 347, baseType: !2492, size: 192, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2486, file: !2108, line: 353, baseType: !2492, size: 192, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2486, file: !2108, line: 366, baseType: !2116, size: 64, offset: 768)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2486, file: !2108, line: 367, baseType: !2116, size: 64, offset: 832)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !2117, file: !2108, line: 492, baseType: !172, size: 128, offset: 6080)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2117, file: !2108, line: 495, baseType: !2492, size: 192, offset: 6208)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2117, file: !2108, line: 496, baseType: !2492, size: 192, offset: 6400)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2117, file: !2108, line: 497, baseType: !1944, size: 192, offset: 6592)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !2117, file: !2108, line: 503, baseType: !172, size: 128, offset: 6784)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !2117, file: !2108, line: 504, baseType: !1013, size: 256, offset: 6912)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !2117, file: !2108, line: 507, baseType: !129, size: 192, offset: 7168)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !2117, file: !2108, line: 510, baseType: !1716, size: 256, offset: 7360)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !2117, file: !2108, line: 513, baseType: !2515, size: 64, offset: 7616)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2517, line: 214, elements: !1421)
!2517 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !2117, file: !2108, line: 516, baseType: !2519, offset: 7680)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2520, line: 76, elements: !1421)
!2520 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !2117, file: !2108, line: 519, baseType: !124, size: 32, offset: 7680)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !2117, file: !2108, line: 522, baseType: !2523, size: 128, offset: 7712)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !2108, line: 370, size: 128, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2523, file: !2108, line: 372, baseType: !608, size: 8)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2523, file: !2108, line: 375, baseType: !97, size: 32, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2523, file: !2108, line: 380, baseType: !97, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2523, file: !2108, line: 386, baseType: !97, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !2117, file: !2108, line: 529, baseType: !2530, offset: 7872)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2116, elements: !1832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2113, file: !2108, line: 157, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !2108, line: 669, size: 1984, elements: !2534)
!2534 = !{!2535, !2539, !2543, !2547, !2548, !2549, !2550, !2554, !2558, !2559, !2565, !2569, !2570, !2574, !2578, !2582, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2635, !2636}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2533, file: !2108, line: 670, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2112, !2112}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2533, file: !2108, line: 671, baseType: !2540, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!97, !2112}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2533, file: !2108, line: 672, baseType: !2544, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2112}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2533, file: !2108, line: 673, baseType: !2544, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2533, file: !2108, line: 674, baseType: !2544, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2533, file: !2108, line: 675, baseType: !2544, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2533, file: !2108, line: 676, baseType: !2551, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !2112, !97}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2533, file: !2108, line: 677, baseType: !2555, size: 64, offset: 448)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!97, !2177, !2112}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2533, file: !2108, line: 679, baseType: !2555, size: 64, offset: 512)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2533, file: !2108, line: 682, baseType: !2560, size: 64, offset: 576)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!97, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !2108, line: 30, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2533, file: !2108, line: 683, baseType: !2566, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !2563}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2533, file: !2108, line: 684, baseType: !2566, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2533, file: !2108, line: 685, baseType: !2571, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2533, file: !2108, line: 686, baseType: !2575, size: 64, offset: 832)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!97, !1105, !2106}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2533, file: !2108, line: 688, baseType: !2579, size: 64, offset: 896)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !1105, !2106}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2533, file: !2108, line: 689, baseType: !2583, size: 64, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !1105}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2533, file: !2108, line: 690, baseType: !2583, size: 64, offset: 1024)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2533, file: !2108, line: 691, baseType: !2583, size: 64, offset: 1088)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2533, file: !2108, line: 692, baseType: !2544, size: 64, offset: 1152)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2533, file: !2108, line: 694, baseType: !608, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2533, file: !2108, line: 707, baseType: !608, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2533, file: !2108, line: 719, baseType: !608, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2533, file: !2108, line: 722, baseType: !97, size: 32, offset: 1248)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2533, file: !2108, line: 723, baseType: !92, size: 64, offset: 1280)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2533, file: !2108, line: 726, baseType: !92, size: 64, offset: 1344)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2533, file: !2108, line: 729, baseType: !2459, size: 64, offset: 1408)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2533, file: !2108, line: 732, baseType: !1090, size: 192, offset: 1472)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2533, file: !2108, line: 738, baseType: !172, size: 128, offset: 1664)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2533, file: !2108, line: 744, baseType: !2599, size: 64, offset: 1792)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !2108, line: 580, size: 1728, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2611, !2612, !2613, !2617, !2621, !2622, !2623, !2624, !2625, !2629, !2633, !2634}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2600, file: !2108, line: 586, baseType: !2476, size: 512)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2600, file: !2108, line: 587, baseType: !114, size: 64, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2600, file: !2108, line: 593, baseType: !110, size: 64, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2600, file: !2108, line: 596, baseType: !28, size: 32, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2600, file: !2108, line: 604, baseType: !28, size: 32, offset: 672)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2600, file: !2108, line: 610, baseType: !2532, size: 64, offset: 704)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2600, file: !2108, line: 611, baseType: !172, size: 128, offset: 768)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2600, file: !2108, line: 612, baseType: !2610, size: 64, offset: 896)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2600, file: !2108, line: 614, baseType: !2168, size: 64, offset: 960)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2600, file: !2108, line: 615, baseType: !2383, size: 64, offset: 1024)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2600, file: !2108, line: 621, baseType: !2614, size: 64, offset: 1088)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!411, !2112, !2599}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2600, file: !2108, line: 625, baseType: !2618, size: 64, offset: 1152)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!1010, !2112, !2599}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2600, file: !2108, line: 628, baseType: !2207, size: 64, offset: 1216)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2600, file: !2108, line: 631, baseType: !2195, size: 64, offset: 1280)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2600, file: !2108, line: 632, baseType: !2203, size: 64, offset: 1344)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2600, file: !2108, line: 633, baseType: !2199, size: 64, offset: 1408)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2600, file: !2108, line: 640, baseType: !2626, size: 64, offset: 1472)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!97, !2112, !2599, !411}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2600, file: !2108, line: 645, baseType: !2630, size: 64, offset: 1536)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!97, !2112, !2599, !1010}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2600, file: !2108, line: 654, baseType: !2391, size: 64, offset: 1600)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2600, file: !2108, line: 657, baseType: !2398, size: 64, offset: 1664)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2533, file: !2108, line: 745, baseType: !2599, size: 64, offset: 1856)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2533, file: !2108, line: 754, baseType: !28, size: 32, offset: 1920)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2113, file: !2108, line: 160, baseType: !2638, size: 128, offset: 128)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2639, line: 105, size: 128, elements: !2640)
!2639 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2640 = !{!2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2638, file: !2639, line: 110, baseType: !114, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2638, file: !2639, line: 118, baseType: !2643, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2639, line: 95, size: 448, elements: !2645)
!2645 = !{!2646, !2647, !2653, !2654, !2655, !2656, !2657}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2644, file: !2639, line: 96, baseType: !1004, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2644, file: !2639, line: 97, baseType: !2648, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2639, line: 60, baseType: !2650)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2644, file: !2639, line: 98, baseType: !2648, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2644, file: !2639, line: 99, baseType: !608, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2644, file: !2639, line: 100, baseType: !608, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2644, file: !2639, line: 101, baseType: !991, size: 128, align: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2644, file: !2639, line: 102, baseType: !2652, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2113, file: !2108, line: 163, baseType: !172, size: 128, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2113, file: !2108, line: 164, baseType: !172, size: 128, offset: 384)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !2113, file: !2108, line: 167, baseType: !172, size: 128, offset: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2113, file: !2108, line: 173, baseType: !97, size: 32, offset: 640)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2108, line: 175, baseType: !28, size: 32, offset: 672)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !2113, file: !2108, line: 183, baseType: !411, size: 64, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !2113, file: !2108, line: 189, baseType: !124, size: 32, offset: 768)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2113, file: !2108, line: 192, baseType: !1716, size: 256, offset: 832)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !2113, file: !2108, line: 193, baseType: !2667, size: 448, offset: 1088)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1717, line: 120, size: 448, elements: !2668)
!2668 = !{!2669, !2670, !2671}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2667, file: !1717, line: 121, baseType: !1716, size: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2667, file: !1717, line: 122, baseType: !991, size: 128, align: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2667, file: !1717, line: 125, baseType: !2672, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1717, line: 18, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2113, file: !2108, line: 199, baseType: !2112, size: 64, offset: 1536)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2107, file: !2108, line: 218, baseType: !1056, size: 32, offset: 896)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2107, file: !2108, line: 226, baseType: !2106, size: 64, offset: 960)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2107, file: !2108, line: 229, baseType: !2116, size: 64, offset: 1024)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2107, file: !2108, line: 232, baseType: !97, size: 32, offset: 1088)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2107, file: !2108, line: 241, baseType: !172, size: 128, offset: 1152)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2107, file: !2108, line: 242, baseType: !172, size: 128, offset: 1280)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2107, file: !2108, line: 243, baseType: !172, size: 128, offset: 1408)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2107, file: !2108, line: 246, baseType: !172, size: 128, offset: 1536)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2107, file: !2108, line: 255, baseType: !2479, size: 1792, offset: 1664)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2107, file: !2108, line: 258, baseType: !172, size: 128, offset: 3456)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2107, file: !2108, line: 259, baseType: !172, size: 128, offset: 3584)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2107, file: !2108, line: 265, baseType: !1069, size: 128, offset: 3712)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2107, file: !2108, line: 271, baseType: !172, size: 128, offset: 3840)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2107, file: !2108, line: 277, baseType: !172, size: 128, offset: 3968)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2107, file: !2108, line: 278, baseType: !172, size: 128, offset: 4096)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2107, file: !2108, line: 279, baseType: !172, size: 128, offset: 4224)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2107, file: !2108, line: 288, baseType: !2116, size: 64, offset: 4352)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2107, file: !2108, line: 289, baseType: !2116, size: 64, offset: 4416)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2107, file: !2108, line: 290, baseType: !2106, size: 64, offset: 4480)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2107, file: !2108, line: 293, baseType: !608, size: 8, offset: 4544)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2107, file: !2108, line: 296, baseType: !991, size: 128, align: 64, offset: 4608)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1106, file: !1107, line: 1110, baseType: !2697, size: 64, offset: 15360)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2699, line: 93, size: 8768, elements: !2700)
!2699 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2700 = !{!2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2751, !2760, !2761, !2763, !2764, !2765, !2768, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2806, !2807, !2814, !2824, !2887, !2888, !2891, !2892, !2893, !2894, !2895, !2896}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2698, file: !2699, line: 94, baseType: !1056, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2698, file: !2699, line: 95, baseType: !124, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2698, file: !2699, line: 96, baseType: !97, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2698, file: !2699, line: 97, baseType: !97, size: 32, offset: 96)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2698, file: !2699, line: 98, baseType: !172, size: 128, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2698, file: !2699, line: 100, baseType: !129, size: 192, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2698, file: !2699, line: 103, baseType: !1105, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2698, file: !2699, line: 106, baseType: !2709, size: 192, offset: 512)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2710, line: 32, size: 192, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2711 = !{!2712, !2713}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2709, file: !2710, line: 33, baseType: !172, size: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2709, file: !2710, line: 34, baseType: !2714, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2715, line: 25, baseType: !2716)
!2715 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2715, line: 23, size: 64, elements: !2717)
!2717 = !{!2718}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2716, file: !2715, line: 24, baseType: !1351, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2698, file: !2699, line: 109, baseType: !1065, size: 64, offset: 704)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2698, file: !2699, line: 112, baseType: !97, size: 32, offset: 768)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2698, file: !2699, line: 114, baseType: !97, size: 32, offset: 800)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2698, file: !2699, line: 115, baseType: !1105, size: 64, offset: 832)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2698, file: !2699, line: 118, baseType: !97, size: 32, offset: 896)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2698, file: !2699, line: 119, baseType: !28, size: 32, offset: 928)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2698, file: !2699, line: 121, baseType: !2726, size: 64, offset: 960)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2699, line: 80, size: 448, elements: !2728)
!2728 = !{!2729, !2730, !2736}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2727, file: !2699, line: 81, baseType: !124, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2727, file: !2699, line: 82, baseType: !2731, size: 128, offset: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2699, line: 75, size: 128, elements: !2732)
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2731, file: !2699, line: 76, baseType: !1105, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2731, file: !2699, line: 77, baseType: !2735, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2727, file: !2699, line: 83, baseType: !1755, size: 256, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2698, file: !2699, line: 132, baseType: !28, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2698, file: !2699, line: 133, baseType: !28, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2698, file: !2699, line: 138, baseType: !28, size: 32, offset: 1056)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2698, file: !2699, line: 139, baseType: !172, size: 128, offset: 1088)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2698, file: !2699, line: 142, baseType: !1224, size: 512, offset: 1216)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2698, file: !2699, line: 143, baseType: !1232, size: 64, offset: 1728)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2698, file: !2699, line: 150, baseType: !2744, size: 256, offset: 1792)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2745, size: 256, elements: !2749)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2699, line: 38, size: 128, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2745, file: !2699, line: 39, baseType: !411, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2745, file: !2699, line: 40, baseType: !411, size: 64, offset: 64)
!2749 = !{!2750}
!2750 = !DISubrange(count: 2)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2698, file: !2699, line: 156, baseType: !2752, size: 192, offset: 2048)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2699, line: 66, size: 192, elements: !2753)
!2753 = !{!2754}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2752, file: !2699, line: 67, baseType: !2755, size: 192)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2699, line: 47, size: 192, elements: !2756)
!2756 = !{!2757, !2758, !2759}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2755, file: !2699, line: 48, baseType: !1006, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2755, file: !2699, line: 49, baseType: !1006, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2755, file: !2699, line: 50, baseType: !1006, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2698, file: !2699, line: 160, baseType: !1956, size: 640, offset: 2240)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2698, file: !2699, line: 163, baseType: !2762, size: 256, offset: 2880)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, size: 256, elements: !1074)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2698, file: !2699, line: 169, baseType: !1052, size: 64, offset: 3136)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2698, file: !2699, line: 172, baseType: !97, size: 32, offset: 3200)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2698, file: !2699, line: 174, baseType: !2766, size: 64, offset: 3264)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2699, line: 174, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2698, file: !2699, line: 185, baseType: !2769, size: 64, offset: 3328)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !712, line: 860, baseType: !2770)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 853, size: 64, elements: !2771)
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2770, file: !712, line: 858, baseType: !711, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2770, file: !712, line: 859, baseType: !134, size: 32, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2698, file: !2699, line: 186, baseType: !411, size: 64, offset: 3392)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2698, file: !2699, line: 186, baseType: !411, size: 64, offset: 3456)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2698, file: !2699, line: 186, baseType: !411, size: 64, offset: 3520)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2698, file: !2699, line: 186, baseType: !411, size: 64, offset: 3584)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2698, file: !2699, line: 187, baseType: !411, size: 64, offset: 3648)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2698, file: !2699, line: 188, baseType: !411, size: 64, offset: 3712)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2698, file: !2699, line: 189, baseType: !1944, size: 192, offset: 3776)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2698, file: !2699, line: 190, baseType: !114, size: 64, offset: 3968)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2698, file: !2699, line: 190, baseType: !114, size: 64, offset: 4032)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2698, file: !2699, line: 190, baseType: !114, size: 64, offset: 4096)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2698, file: !2699, line: 190, baseType: !114, size: 64, offset: 4160)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2698, file: !2699, line: 191, baseType: !114, size: 64, offset: 4224)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2698, file: !2699, line: 191, baseType: !114, size: 64, offset: 4288)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2698, file: !2699, line: 191, baseType: !114, size: 64, offset: 4352)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2698, file: !2699, line: 191, baseType: !114, size: 64, offset: 4416)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2698, file: !2699, line: 192, baseType: !114, size: 64, offset: 4480)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2698, file: !2699, line: 192, baseType: !114, size: 64, offset: 4544)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2698, file: !2699, line: 192, baseType: !114, size: 64, offset: 4608)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2698, file: !2699, line: 192, baseType: !114, size: 64, offset: 4672)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2698, file: !2699, line: 193, baseType: !114, size: 64, offset: 4736)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2698, file: !2699, line: 193, baseType: !114, size: 64, offset: 4800)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2698, file: !2699, line: 194, baseType: !2796, size: 448, offset: 4864)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2797, line: 12, size: 448, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804, !2805}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2796, file: !2797, line: 15, baseType: !411, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2796, file: !2797, line: 17, baseType: !411, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2796, file: !2797, line: 19, baseType: !411, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2796, file: !2797, line: 21, baseType: !411, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2796, file: !2797, line: 29, baseType: !411, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2796, file: !2797, line: 35, baseType: !411, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2796, file: !2797, line: 44, baseType: !411, size: 64, offset: 384)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2698, file: !2699, line: 202, baseType: !413, size: 64, offset: 5312)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2698, file: !2699, line: 213, baseType: !2808, size: 2048, offset: 5376)
!2808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2809, size: 2048, elements: !2048)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2810, line: 43, size: 128, elements: !2811)
!2810 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2811 = !{!2812, !2813}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2809, file: !2810, line: 44, baseType: !113, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2809, file: !2810, line: 45, baseType: !113, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2698, file: !2699, line: 216, baseType: !2815, size: 448, offset: 7424)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2699, line: 30, size: 448, elements: !2816)
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822, !2823}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2815, file: !2699, line: 31, baseType: !97, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2815, file: !2699, line: 32, baseType: !352, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2815, file: !2699, line: 33, baseType: !114, size: 64, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2815, file: !2699, line: 34, baseType: !411, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2815, file: !2699, line: 34, baseType: !411, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2815, file: !2699, line: 35, baseType: !114, size: 64, offset: 320)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2815, file: !2699, line: 35, baseType: !114, size: 64, offset: 384)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2698, file: !2699, line: 219, baseType: !2825, size: 64, offset: 7872)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2827, line: 41, size: 3456, elements: !2828)
!2827 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2843, !2844, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2826, file: !2827, line: 47, baseType: !169, size: 16)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2826, file: !2827, line: 48, baseType: !356, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2826, file: !2827, line: 54, baseType: !160, size: 8, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2826, file: !2827, line: 55, baseType: !160, size: 8, offset: 72)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2826, file: !2827, line: 73, baseType: !412, size: 64, align: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2826, file: !2827, line: 74, baseType: !412, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2826, file: !2827, line: 81, baseType: !412, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2826, file: !2827, line: 82, baseType: !412, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2826, file: !2827, line: 85, baseType: !412, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2826, file: !2827, line: 86, baseType: !412, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2826, file: !2827, line: 94, baseType: !412, size: 64, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2826, file: !2827, line: 102, baseType: !412, size: 64, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2826, file: !2827, line: 107, baseType: !2842, size: 256, offset: 640)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !747)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2826, file: !2827, line: 108, baseType: !160, size: 8, align: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2826, file: !2827, line: 110, baseType: !2845, size: 24, offset: 904)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 24, elements: !906)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2826, file: !2827, line: 111, baseType: !356, size: 32, align: 64, offset: 960)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2826, file: !2827, line: 113, baseType: !356, size: 32, offset: 992)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2826, file: !2827, line: 114, baseType: !356, size: 32, offset: 1024)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2826, file: !2827, line: 115, baseType: !356, size: 32, offset: 1056)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2826, file: !2827, line: 117, baseType: !356, size: 32, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2826, file: !2827, line: 118, baseType: !412, size: 64, align: 64, offset: 1152)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2826, file: !2827, line: 120, baseType: !412, size: 64, offset: 1216)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2826, file: !2827, line: 121, baseType: !412, size: 64, offset: 1280)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2826, file: !2827, line: 122, baseType: !412, size: 64, offset: 1344)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2826, file: !2827, line: 123, baseType: !412, size: 64, offset: 1408)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2826, file: !2827, line: 133, baseType: !412, size: 64, offset: 1472)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2826, file: !2827, line: 137, baseType: !412, size: 64, offset: 1536)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2826, file: !2827, line: 142, baseType: !412, size: 64, offset: 1600)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2826, file: !2827, line: 143, baseType: !412, size: 64, offset: 1664)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2826, file: !2827, line: 146, baseType: !412, size: 64, offset: 1728)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2826, file: !2827, line: 147, baseType: !412, size: 64, offset: 1792)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2826, file: !2827, line: 148, baseType: !412, size: 64, offset: 1856)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2826, file: !2827, line: 149, baseType: !412, size: 64, offset: 1920)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2826, file: !2827, line: 154, baseType: !412, size: 64, offset: 1984)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2826, file: !2827, line: 155, baseType: !412, size: 64, offset: 2048)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2826, file: !2827, line: 156, baseType: !412, size: 64, offset: 2112)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2826, file: !2827, line: 158, baseType: !412, size: 64, offset: 2176)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2826, file: !2827, line: 159, baseType: !412, size: 64, offset: 2240)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2826, file: !2827, line: 162, baseType: !412, size: 64, offset: 2304)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2826, file: !2827, line: 163, baseType: !412, size: 64, offset: 2368)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2826, file: !2827, line: 164, baseType: !412, size: 64, offset: 2432)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2826, file: !2827, line: 167, baseType: !412, size: 64, offset: 2496)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2826, file: !2827, line: 168, baseType: !412, size: 64, offset: 2560)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2826, file: !2827, line: 171, baseType: !412, size: 64, offset: 2624)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2826, file: !2827, line: 172, baseType: !412, size: 64, offset: 2688)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2826, file: !2827, line: 175, baseType: !412, size: 64, offset: 2752)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2826, file: !2827, line: 178, baseType: !412, size: 64, offset: 2816)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2826, file: !2827, line: 179, baseType: !412, size: 64, offset: 2880)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2826, file: !2827, line: 182, baseType: !356, size: 32, offset: 2944)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2826, file: !2827, line: 186, baseType: !412, size: 64, align: 64, offset: 3008)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2826, file: !2827, line: 194, baseType: !412, size: 64, offset: 3072)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2826, file: !2827, line: 195, baseType: !412, size: 64, offset: 3136)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2826, file: !2827, line: 199, baseType: !412, size: 64, offset: 3200)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2826, file: !2827, line: 200, baseType: !412, size: 64, offset: 3264)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2826, file: !2827, line: 203, baseType: !412, size: 64, offset: 3328)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2826, file: !2827, line: 204, baseType: !412, size: 64, offset: 3392)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2698, file: !2699, line: 222, baseType: !28, size: 32, offset: 7936)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2698, file: !2699, line: 223, baseType: !2889, size: 64, offset: 8000)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2699, line: 223, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2698, file: !2699, line: 230, baseType: !608, size: 8, offset: 8064)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2698, file: !2699, line: 231, baseType: !1551, size: 16, offset: 8080)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2698, file: !2699, line: 232, baseType: !1551, size: 16, offset: 8096)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2698, file: !2699, line: 234, baseType: !1400, size: 64, offset: 8128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2698, file: !2699, line: 237, baseType: !1013, size: 256, offset: 8192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2698, file: !2699, line: 243, baseType: !1455, size: 320, offset: 8448)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1106, file: !1107, line: 1111, baseType: !2898, size: 64, offset: 15424)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2699, line: 20, size: 16640, elements: !2900)
!2900 = !{!2901, !2902, !2903, !2904}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2899, file: !2699, line: 21, baseType: !134, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2899, file: !2699, line: 22, baseType: !1056, size: 32, offset: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2899, file: !2699, line: 23, baseType: !129, size: 192, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2899, file: !2699, line: 24, baseType: !2905, size: 16384, offset: 256)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2906, size: 16384, elements: !910)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2710, line: 51, size: 256, elements: !2907)
!2907 = !{!2908}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2906, file: !2710, line: 52, baseType: !2909, size: 256)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2710, line: 37, size: 256, elements: !2910)
!2910 = !{!2911, !2918, !2919, !2923}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2909, file: !2710, line: 39, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2913, line: 83, baseType: !2914)
!2913 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2913, line: 82, baseType: !2916)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{null, !97}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2909, file: !2710, line: 40, baseType: !114, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2909, file: !2710, line: 46, baseType: !2920, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2913, line: 86, baseType: !2921)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2913, line: 85, baseType: !2572)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2909, file: !2710, line: 48, baseType: !2714, size: 64, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1106, file: !1107, line: 1112, baseType: !2714, size: 64, offset: 15488)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1106, file: !1107, line: 1113, baseType: !2714, size: 64, offset: 15552)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1106, file: !1107, line: 1115, baseType: !2714, size: 64, offset: 15616)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1106, file: !1107, line: 1116, baseType: !2709, size: 192, offset: 15680)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1106, file: !1107, line: 1117, baseType: !114, size: 64, offset: 15872)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1106, file: !1107, line: 1118, baseType: !110, size: 64, offset: 15936)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1106, file: !1107, line: 1119, baseType: !28, size: 32, offset: 16000)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1106, file: !1107, line: 1121, baseType: !994, size: 64, offset: 16064)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1106, file: !1107, line: 1125, baseType: !2933, size: 64, offset: 16128)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1107, line: 43, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1106, file: !1107, line: 1127, baseType: !676, size: 32, offset: 16192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1106, file: !1107, line: 1128, baseType: !28, size: 32, offset: 16224)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1106, file: !1107, line: 1130, baseType: !2938, size: 128, offset: 16256)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2939, line: 37, size: 128, elements: !2940)
!2939 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2940 = !{!2941, !2942, !2943}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2938, file: !2939, line: 38, baseType: !97, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2938, file: !2939, line: 39, baseType: !124, size: 32, offset: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2938, file: !2939, line: 40, baseType: !2944, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2939, line: 24, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1106, file: !1107, line: 1131, baseType: !2947, size: 256, offset: 16384)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2948, line: 12, size: 256, elements: !2949)
!2948 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2949 = !{!2950, !2951, !2952, !2953}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2947, file: !2948, line: 13, baseType: !806, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2947, file: !2948, line: 14, baseType: !114, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2947, file: !2948, line: 15, baseType: !114, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2947, file: !2948, line: 16, baseType: !608, size: 8, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1106, file: !1107, line: 1134, baseType: !411, size: 64, offset: 16640)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1106, file: !1107, line: 1135, baseType: !411, size: 64, offset: 16704)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1106, file: !1107, line: 1138, baseType: !134, size: 32, offset: 16768)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1106, file: !1107, line: 1141, baseType: !1018, size: 32, offset: 16800)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1106, file: !1107, line: 1143, baseType: !2959, size: 64, offset: 16832)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1107, line: 735, size: 64, elements: !2960)
!2960 = !{!2961}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2959, file: !1107, line: 736, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1106, file: !1107, line: 1147, baseType: !1283, size: 128, offset: 16896)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1106, file: !1107, line: 1149, baseType: !1105, size: 64, offset: 17024)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1106, file: !1107, line: 1151, baseType: !2966, size: 64, offset: 17088)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1107, line: 1151, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1106, file: !1107, line: 1188, baseType: !95, size: 64, offset: 17152)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1106, file: !1107, line: 1191, baseType: !2970, size: 64, offset: 17216)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1107, line: 44, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1106, file: !1107, line: 1194, baseType: !2973, size: 64, offset: 17280)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1107, line: 45, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1106, file: !1107, line: 1197, baseType: !2976, size: 64, offset: 17344)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1107, line: 61, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1106, file: !1107, line: 1199, baseType: !2979, size: 64, offset: 17408)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2981, line: 99, size: 128, elements: !2982)
!2981 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2982 = !{!2983, !2984, !2985}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2980, file: !2981, line: 100, baseType: !1004, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2980, file: !2981, line: 101, baseType: !124, size: 32, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2980, file: !2981, line: 103, baseType: !101, size: 16, offset: 96)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1106, file: !1107, line: 1202, baseType: !2987, size: 64, offset: 17472)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1107, line: 48, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1106, file: !1107, line: 1205, baseType: !114, size: 64, offset: 17536)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1106, file: !1107, line: 1206, baseType: !2991, size: 64, offset: 17600)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2710, line: 14, baseType: !2993)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2710, line: 12, size: 384, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, scope: !2993, file: !2710, line: 13, baseType: !2996, size: 384)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2993, file: !2710, line: 13, size: 384, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3001}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2996, file: !2710, line: 13, baseType: !97, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2996, file: !2710, line: 13, baseType: !97, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2996, file: !2710, line: 13, baseType: !97, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2996, file: !2710, line: 13, baseType: !3002, size: 256, offset: 128)
!3002 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3003, line: 37, size: 256, elements: !3004)
!3003 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3004 = !{!3005, !3010, !3023, !3029, !3038, !3065, !3070}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3002, file: !3003, line: 42, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !3003, line: 39, size: 64, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3006, file: !3003, line: 40, baseType: !1920, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3006, file: !3003, line: 41, baseType: !682, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3002, file: !3003, line: 50, baseType: !3011, size: 192)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !3003, line: 45, size: 192, elements: !3012)
!3012 = !{!3013, !3015, !3016, !3022}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3011, file: !3003, line: 46, baseType: !3014, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !112, line: 95, baseType: !97)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3011, file: !3003, line: 47, baseType: !97, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3011, file: !3003, line: 48, baseType: !3017, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3003, line: 11, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3003, line: 8, size: 64, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3018, file: !3003, line: 9, baseType: !97, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3018, file: !3003, line: 10, baseType: !95, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3011, file: !3003, line: 49, baseType: !97, size: 32, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3002, file: !3003, line: 57, baseType: !3024, size: 128)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !3003, line: 53, size: 128, elements: !3025)
!3025 = !{!3026, !3027, !3028}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3024, file: !3003, line: 54, baseType: !1920, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3024, file: !3003, line: 55, baseType: !682, size: 32, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3024, file: !3003, line: 56, baseType: !3017, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3002, file: !3003, line: 66, baseType: !3030, size: 256)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !3003, line: 60, size: 256, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035, !3037}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3030, file: !3003, line: 61, baseType: !1920, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3030, file: !3003, line: 62, baseType: !682, size: 32, offset: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3030, file: !3003, line: 63, baseType: !97, size: 32, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3030, file: !3003, line: 64, baseType: !3036, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !112, line: 94, baseType: !939)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3030, file: !3003, line: 65, baseType: !3036, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3002, file: !3003, line: 105, baseType: !3039, size: 256)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !3003, line: 69, size: 256, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3039, file: !3003, line: 70, baseType: !95, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, scope: !3039, file: !3003, line: 79, baseType: !3043, size: 192, offset: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3039, file: !3003, line: 79, size: 192, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3054, !3059}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3043, file: !3003, line: 81, baseType: !97, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3043, file: !3003, line: 86, baseType: !1551, size: 16)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3043, file: !3003, line: 92, baseType: !3048, size: 192)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3043, file: !3003, line: 88, size: 192, elements: !3049)
!3049 = !{!3050, !3052, !3053}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3048, file: !3003, line: 89, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1267)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3048, file: !3003, line: 90, baseType: !95, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3048, file: !3003, line: 91, baseType: !95, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3043, file: !3003, line: 97, baseType: !3055, size: 96)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3043, file: !3003, line: 94, size: 96, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3055, file: !3003, line: 95, baseType: !3051, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3055, file: !3003, line: 96, baseType: !356, size: 32, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3043, file: !3003, line: 103, baseType: !3060, size: 128)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3043, file: !3003, line: 99, size: 128, elements: !3061)
!3061 = !{!3062, !3063, !3064}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3060, file: !3003, line: 100, baseType: !114, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3060, file: !3003, line: 101, baseType: !356, size: 32, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3060, file: !3003, line: 102, baseType: !356, size: 32, offset: 96)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3002, file: !3003, line: 111, baseType: !3066, size: 128)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !3003, line: 108, size: 128, elements: !3067)
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3066, file: !3003, line: 109, baseType: !352, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3066, file: !3003, line: 110, baseType: !97, size: 32, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3002, file: !3003, line: 118, baseType: !3071, size: 128)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !3003, line: 114, size: 128, elements: !3072)
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3071, file: !3003, line: 115, baseType: !95, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3071, file: !3003, line: 116, baseType: !97, size: 32, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3071, file: !3003, line: 117, baseType: !28, size: 32, offset: 96)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1106, file: !1107, line: 1208, baseType: !2796, size: 448, offset: 17664)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1106, file: !1107, line: 1215, baseType: !411, size: 64, offset: 18112)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1106, file: !1107, line: 1217, baseType: !411, size: 64, offset: 18176)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1106, file: !1107, line: 1219, baseType: !411, size: 64, offset: 18240)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1106, file: !1107, line: 1223, baseType: !3081, size: 64, offset: 18304)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3082, line: 99, baseType: !3083)
!3082 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3082, line: 99, size: 64, elements: !3084)
!3084 = !{!3085}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3083, file: !3082, line: 99, baseType: !1351, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1106, file: !1107, line: 1225, baseType: !711, size: 32, offset: 18368)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1106, file: !1107, line: 1226, baseType: !97, size: 32, offset: 18400)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1106, file: !1107, line: 1227, baseType: !97, size: 32, offset: 18432)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1106, file: !1107, line: 1231, baseType: !2106, size: 64, offset: 18496)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1106, file: !1107, line: 1233, baseType: !172, size: 128, offset: 18560)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1106, file: !1107, line: 1240, baseType: !3092, size: 64, offset: 18688)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1107, line: 62, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1106, file: !1107, line: 1242, baseType: !3095, size: 64, offset: 18752)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3097, line: 392, size: 96, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3098 = !{!3099, !3103, !3105}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3096, file: !3097, line: 393, baseType: !3100, size: 32)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3097, line: 388, size: 32, elements: !3101)
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3100, file: !3097, line: 389, baseType: !365, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3096, file: !3097, line: 394, baseType: !3104, size: 32, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !360, line: 42, baseType: !1501)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3096, file: !3097, line: 395, baseType: !365, size: 32, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1106, file: !1107, line: 1244, baseType: !172, size: 128, offset: 18816)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1106, file: !1107, line: 1245, baseType: !3108, size: 64, offset: 18944)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1107, line: 51, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1106, file: !1107, line: 1246, baseType: !1013, size: 256, offset: 19008)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1106, file: !1107, line: 1247, baseType: !28, size: 32, offset: 19264)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1106, file: !1107, line: 1250, baseType: !3113, size: 64, offset: 19328)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !271, line: 912, size: 1792, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3114, file: !271, line: 917, baseType: !1018, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3114, file: !271, line: 923, baseType: !1013, size: 256, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3114, file: !271, line: 925, baseType: !172, size: 128, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3114, file: !271, line: 926, baseType: !3120, size: 128, offset: 448)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !271, line: 901, size: 128, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3120, file: !271, line: 902, baseType: !1286, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3120, file: !271, line: 903, baseType: !411, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3114, file: !271, line: 927, baseType: !3120, size: 128, offset: 576)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3114, file: !271, line: 928, baseType: !172, size: 128, offset: 704)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3114, file: !271, line: 930, baseType: !97, size: 32, offset: 832)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3114, file: !271, line: 931, baseType: !97, size: 32, offset: 864)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3114, file: !271, line: 932, baseType: !97, size: 32, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3114, file: !271, line: 934, baseType: !97, size: 32, offset: 928)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3114, file: !271, line: 935, baseType: !97, size: 32, offset: 960)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3114, file: !271, line: 936, baseType: !97, size: 32, offset: 992)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3114, file: !271, line: 937, baseType: !97, size: 32, offset: 1024)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3114, file: !271, line: 939, baseType: !1056, size: 32, offset: 1056)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3114, file: !271, line: 940, baseType: !1105, size: 64, offset: 1088)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3114, file: !271, line: 945, baseType: !411, size: 64, offset: 1152)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3114, file: !271, line: 946, baseType: !411, size: 64, offset: 1216)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3114, file: !271, line: 947, baseType: !411, size: 64, offset: 1280)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3114, file: !271, line: 953, baseType: !3113, size: 64, offset: 1344)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3114, file: !271, line: 954, baseType: !411, size: 64, offset: 1408)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3114, file: !271, line: 955, baseType: !411, size: 64, offset: 1472)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3114, file: !271, line: 956, baseType: !97, size: 32, offset: 1536)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3114, file: !271, line: 958, baseType: !97, size: 32, offset: 1568)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3114, file: !271, line: 960, baseType: !991, size: 128, align: 64, offset: 1600)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3114, file: !271, line: 968, baseType: !3145, size: 64, offset: 1728)
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3146, line: 12, baseType: !3147)
!3146 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3146, line: 10, size: 64, elements: !3148)
!3148 = !{!3149}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3147, file: !3146, line: 11, baseType: !1004, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1106, file: !1107, line: 1251, baseType: !1013, size: 256, offset: 19392)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1106, file: !1107, line: 1252, baseType: !172, size: 128, offset: 19648)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1106, file: !1107, line: 1259, baseType: !2282, size: 64, offset: 19776)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1106, file: !1107, line: 1260, baseType: !1551, size: 16, offset: 19840)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1106, file: !1107, line: 1261, baseType: !1551, size: 16, offset: 19856)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1106, file: !1107, line: 1314, baseType: !3156, size: 64, offset: 19904)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3158, line: 62, size: 256, align: 256, elements: !3159)
!3158 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3157, file: !3158, line: 75, baseType: !356, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3157, file: !3158, line: 90, baseType: !356, size: 32, offset: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3157, file: !3158, line: 112, baseType: !412, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3157, file: !3158, line: 132, baseType: !356, size: 32, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3157, file: !3158, line: 140, baseType: !356, size: 32, offset: 160)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3157, file: !3158, line: 149, baseType: !356, size: 32, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3157, file: !3158, line: 154, baseType: !3167, offset: 224)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1832)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1106, file: !1107, line: 1315, baseType: !355, size: 32, offset: 19968)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1106, file: !1107, line: 1316, baseType: !355, size: 32, offset: 20000)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1106, file: !1107, line: 1321, baseType: !114, size: 64, offset: 20032)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1106, file: !1107, line: 1325, baseType: !97, size: 32, offset: 20096)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1106, file: !1107, line: 1326, baseType: !97, size: 32, offset: 20128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1106, file: !1107, line: 1327, baseType: !97, size: 32, offset: 20160)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1106, file: !1107, line: 1328, baseType: !97, size: 32, offset: 20192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1106, file: !1107, line: 1329, baseType: !991, size: 128, align: 64, offset: 20224)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1106, file: !1107, line: 1332, baseType: !3177, size: 128, offset: 20352)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3178, line: 51, size: 128, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3179 = !{!3180, !3185, !3186}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3177, file: !3178, line: 60, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3182, line: 7, size: 64, elements: !3183)
!3182 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3183 = !{!3184}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3181, file: !3182, line: 12, baseType: !1348, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3177, file: !3178, line: 63, baseType: !608, size: 8, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3177, file: !3178, line: 70, baseType: !608, size: 8, offset: 72)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1106, file: !1107, line: 1335, baseType: !3188, size: 64, offset: 20480)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1107, line: 59, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1106, file: !1107, line: 1337, baseType: !3191, size: 128, offset: 20544)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3178, line: 39, size: 128, elements: !3192)
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3191, file: !3178, line: 40, baseType: !644, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3191, file: !3178, line: 42, baseType: !356, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3191, file: !3178, line: 43, baseType: !356, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1106, file: !1107, line: 1340, baseType: !3197, size: 64, offset: 20672)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1107, line: 69, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1106, file: !1107, line: 1351, baseType: !97, size: 32, offset: 20736)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1106, file: !1107, line: 1352, baseType: !97, size: 32, offset: 20768)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1106, file: !1107, line: 1354, baseType: !114, size: 64, offset: 20800)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1106, file: !1107, line: 1364, baseType: !411, size: 64, offset: 20864)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1106, file: !1107, line: 1365, baseType: !411, size: 64, offset: 20928)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1106, file: !1107, line: 1412, baseType: !114, size: 64, offset: 20992)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1106, file: !1107, line: 1453, baseType: !3206, size: 64, offset: 21056)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1107, line: 1453, flags: DIFlagFwdDecl)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1106, file: !1107, line: 1457, baseType: !3209, size: 64, offset: 21120)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !205, line: 61, size: 576, elements: !3211)
!3211 = !{!3212, !3213, !3232, !3235, !3236, !3269, !3279}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3210, file: !205, line: 62, baseType: !204, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, scope: !3210, file: !205, line: 64, baseType: !3214, size: 192, offset: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3210, file: !205, line: 64, size: 192, elements: !3215)
!3215 = !{!3216, !3227}
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !205, line: 65, baseType: !3217, size: 192)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3214, file: !205, line: 65, size: 192, elements: !3218)
!3218 = !{!3219, !3226}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3217, file: !205, line: 66, baseType: !3220, size: 128)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3221, line: 50, size: 128, elements: !3222)
!3221 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3220, file: !3221, line: 52, baseType: !114, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3220, file: !3221, line: 54, baseType: !28, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3220, file: !3221, line: 55, baseType: !28, size: 32, offset: 96)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3217, file: !205, line: 67, baseType: !114, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !205, line: 70, baseType: !3228, size: 192)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3214, file: !205, line: 70, size: 192, elements: !3229)
!3229 = !{!3230, !3231}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3228, file: !205, line: 71, baseType: !991, size: 128, align: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3228, file: !205, line: 72, baseType: !114, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3210, file: !205, line: 76, baseType: !3233, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !205, line: 76, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3210, file: !205, line: 77, baseType: !114, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3210, file: !205, line: 79, baseType: !3237, size: 64, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3221, line: 25, size: 256, elements: !3239)
!3239 = !{!3240, !3246, !3250}
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3238, file: !3221, line: 26, baseType: !3241, size: 128)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3238, file: !3221, line: 26, size: 128, elements: !3242)
!3242 = !{!3243, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3241, file: !3221, line: 27, baseType: !3244, size: 128)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !2048)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3241, file: !3221, line: 28, baseType: !3244, size: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3238, file: !3221, line: 31, baseType: !3247, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3221, line: 23, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, scope: !3238, file: !3221, line: 33, baseType: !3251, size: 64, offset: 192)
!3251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3238, file: !3221, line: 33, size: 64, elements: !3252)
!3252 = !{!3253, !3259, !3264}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3251, file: !3221, line: 38, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !3221, line: 34, size: 64, elements: !3255)
!3255 = !{!3256, !3257, !3258}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3254, file: !3221, line: 35, baseType: !1501, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3254, file: !3221, line: 36, baseType: !158, size: 8, offset: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3254, file: !3221, line: 37, baseType: !158, size: 8, offset: 40)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3251, file: !3221, line: 42, baseType: !3260, size: 16)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !3221, line: 39, size: 16, elements: !3261)
!3261 = !{!3262, !3263}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3260, file: !3221, line: 40, baseType: !158, size: 8)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3260, file: !3221, line: 41, baseType: !158, size: 8, offset: 8)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3251, file: !3221, line: 46, baseType: !3265, size: 16)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !3221, line: 43, size: 16, elements: !3266)
!3266 = !{!3267, !3268}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3265, file: !3221, line: 44, baseType: !158, size: 8)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3265, file: !3221, line: 45, baseType: !158, size: 8, offset: 8)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3210, file: !205, line: 81, baseType: !3270, size: 64, offset: 448)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !205, line: 85, size: 384, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3271, file: !205, line: 86, baseType: !3233, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3271, file: !205, line: 87, baseType: !114, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3271, file: !205, line: 88, baseType: !114, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3271, file: !205, line: 89, baseType: !114, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3271, file: !205, line: 90, baseType: !608, size: 8, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3271, file: !205, line: 92, baseType: !3270, size: 64, offset: 320)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3210, file: !205, line: 82, baseType: !28, size: 32, offset: 512)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1106, file: !1107, line: 1463, baseType: !3281, offset: 21184)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1107, line: 739, elements: !1421)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1106, file: !1107, line: 1470, baseType: !991, size: 128, align: 64, offset: 21184)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1106, file: !1107, line: 1471, baseType: !1056, size: 32, offset: 21312)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1106, file: !1107, line: 1472, baseType: !97, size: 32, offset: 21344)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1106, file: !1107, line: 1474, baseType: !1105, size: 64, offset: 21376)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1106, file: !1107, line: 1475, baseType: !2437, size: 320, offset: 21440)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1106, file: !1107, line: 1478, baseType: !3288, size: 64, offset: 21760)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3290, line: 49, size: 512, elements: !3291)
!3290 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3291 = !{!3292, !3293, !3294, !3295, !3296, !3298, !3299, !3300, !3302}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3289, file: !3290, line: 50, baseType: !3288, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3289, file: !3290, line: 51, baseType: !95, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3289, file: !3290, line: 52, baseType: !114, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3289, file: !3290, line: 53, baseType: !114, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3289, file: !3290, line: 54, baseType: !3297, size: 64, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3289, file: !3290, line: 56, baseType: !28, size: 32, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3289, file: !3290, line: 58, baseType: !28, size: 32, offset: 352)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3289, file: !3290, line: 59, baseType: !3301, size: 64, offset: 384)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !100, line: 159, baseType: !411)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3289, file: !3290, line: 60, baseType: !582, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1106, file: !1107, line: 1482, baseType: !1056, size: 32, offset: 21824)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1106, file: !1107, line: 1489, baseType: !95, size: 64, offset: 21888)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1106, file: !1107, line: 1504, baseType: !95, size: 64, offset: 21952)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1106, file: !1107, line: 1505, baseType: !412, size: 64, offset: 22016)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1106, file: !1107, line: 1506, baseType: !411, size: 64, offset: 22080)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1106, file: !1107, line: 1507, baseType: !412, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1106, file: !1107, line: 1508, baseType: !412, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1106, file: !1107, line: 1509, baseType: !412, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1106, file: !1107, line: 1510, baseType: !991, size: 128, align: 64, offset: 22208)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1106, file: !1107, line: 1511, baseType: !97, size: 32, offset: 22336)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1106, file: !1107, line: 1515, baseType: !3314, size: 64, offset: 22400)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !986, line: 56, size: 64, elements: !3315)
!3315 = !{!3316}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3314, file: !986, line: 57, baseType: !989, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1106, file: !1107, line: 1518, baseType: !3314, size: 64, offset: 22464)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1106, file: !1107, line: 1528, baseType: !991, size: 128, align: 64, offset: 22528)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1106, file: !1107, line: 1552, baseType: !3320, size: 35328, offset: 23040)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3321, line: 430, size: 35328, elements: !3322)
!3321 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3322 = !{!3323, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !4599, !4600, !4601, !4602, !4603, !4604, !4607, !4608, !4609, !4610}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3320, file: !3321, line: 432, baseType: !3324, size: 192)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3325, size: 192, elements: !906)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3326, line: 16, size: 64, elements: !3327)
!3326 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3325, file: !3326, line: 17, baseType: !168, size: 16)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3325, file: !3326, line: 18, baseType: !168, size: 16, offset: 16)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3325, file: !3326, line: 19, baseType: !168, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3325, file: !3326, line: 19, baseType: !168, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3325, file: !3326, line: 19, baseType: !168, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3325, file: !3326, line: 19, baseType: !168, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3325, file: !3326, line: 19, baseType: !168, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3325, file: !3326, line: 20, baseType: !168, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3325, file: !3326, line: 20, baseType: !168, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3325, file: !3326, line: 20, baseType: !168, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3325, file: !3326, line: 20, baseType: !168, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3325, file: !3326, line: 20, baseType: !168, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3325, file: !3326, line: 20, baseType: !168, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3320, file: !3321, line: 436, baseType: !114, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3320, file: !3321, line: 440, baseType: !101, size: 16, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3320, file: !3321, line: 441, baseType: !101, size: 16, offset: 272)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3320, file: !3321, line: 442, baseType: !101, size: 16, offset: 288)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3320, file: !3321, line: 443, baseType: !101, size: 16, offset: 304)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3320, file: !3321, line: 447, baseType: !114, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3320, file: !3321, line: 448, baseType: !114, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3320, file: !3321, line: 459, baseType: !3349, size: 256, offset: 448)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3350, size: 256, elements: !1074)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !271, line: 671, size: 8512, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3981, !3982, !3983, !3984, !3990, !3991, !3992, !3993, !3994, !4078, !4079, !4080, !4081, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4201, !4202, !4203, !4204, !4205, !4206, !4221, !4222, !4223, !4224, !4225, !4231, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4248, !4368, !4369, !4582, !4583, !4596, !4597, !4598}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3351, file: !271, line: 678, baseType: !172, size: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3351, file: !271, line: 684, baseType: !172, size: 128, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3351, file: !271, line: 685, baseType: !172, size: 128, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3351, file: !271, line: 689, baseType: !1154, size: 192, align: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3351, file: !271, line: 690, baseType: !411, size: 64, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3351, file: !271, line: 696, baseType: !172, size: 128, offset: 640)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3351, file: !271, line: 698, baseType: !1069, size: 128, offset: 768)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3351, file: !271, line: 699, baseType: !172, size: 128, offset: 896)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3351, file: !271, line: 700, baseType: !97, size: 32, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3351, file: !271, line: 703, baseType: !97, size: 32, offset: 1056)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3351, file: !271, line: 705, baseType: !97, size: 32, offset: 1088)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3351, file: !271, line: 707, baseType: !28, size: 32, offset: 1120)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3351, file: !271, line: 708, baseType: !3350, size: 64, offset: 1152)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3351, file: !271, line: 714, baseType: !3367, size: 64, offset: 1216)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !271, line: 302, size: 2432, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3887, !3888, !3889, !3890, !3891, !3895, !3896, !3900, !3904, !3905, !3909, !3913, !3914, !3915, !3919, !3923, !3927, !3928, !3929, !3933, !3937, !3941, !3946, !3947, !3967, !3971, !3972, !3973, !3977}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3368, file: !271, line: 303, baseType: !172, size: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3368, file: !271, line: 305, baseType: !852, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3368, file: !271, line: 306, baseType: !3373, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !218, line: 705, size: 5824, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3381, !3382, !3435, !3505, !3506, !3507, !3508, !3509, !3516, !3608, !3621, !3631, !3635, !3637, !3638, !3639, !3643, !3650, !3651, !3654, !3657, !3661, !3766, !3767, !3768, !3769, !3770, !3771, !3828, !3829, !3830, !3833, !3836, !3845, !3846, !3847, !3848, !3849, !3850}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3374, file: !218, line: 706, baseType: !865, size: 512)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3374, file: !218, line: 707, baseType: !3373, size: 64, offset: 512)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3374, file: !218, line: 709, baseType: !3379, size: 64, offset: 576)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !218, line: 37, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3374, file: !218, line: 711, baseType: !92, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3374, file: !218, line: 712, baseType: !3383, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3385)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !218, line: 89, size: 384, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3395, !3400, !3404}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3385, file: !218, line: 90, baseType: !92, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3385, file: !218, line: 91, baseType: !950, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3385, file: !218, line: 92, baseType: !3390, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!97, !3393, !901}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3374)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3385, file: !218, line: 93, baseType: !3396, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!806, !3393, !3399, !1780, !1781}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3385, file: !218, line: 95, baseType: !3401, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !3373}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3385, file: !218, line: 97, baseType: !3405, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !225, line: 286, size: 1472, elements: !3408)
!3408 = !{!3409, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3407, file: !225, line: 287, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!97, !3373}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3407, file: !225, line: 288, baseType: !3401, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3407, file: !225, line: 289, baseType: !3410, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3407, file: !225, line: 290, baseType: !3410, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3407, file: !225, line: 291, baseType: !3410, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3407, file: !225, line: 292, baseType: !3410, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3407, file: !225, line: 293, baseType: !3410, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3407, file: !225, line: 294, baseType: !3410, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3407, file: !225, line: 295, baseType: !3410, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3407, file: !225, line: 296, baseType: !3410, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3407, file: !225, line: 297, baseType: !3410, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3407, file: !225, line: 298, baseType: !3410, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3407, file: !225, line: 299, baseType: !3410, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3407, file: !225, line: 300, baseType: !3410, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3407, file: !225, line: 301, baseType: !3410, size: 64, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3407, file: !225, line: 302, baseType: !3410, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3407, file: !225, line: 303, baseType: !3410, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3407, file: !225, line: 304, baseType: !3410, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3407, file: !225, line: 305, baseType: !3410, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3407, file: !225, line: 306, baseType: !3410, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3407, file: !225, line: 307, baseType: !3410, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3407, file: !225, line: 308, baseType: !3410, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3407, file: !225, line: 309, baseType: !3410, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3374, file: !218, line: 714, baseType: !3436, size: 64, offset: 768)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3439, line: 80, size: 1344, elements: !3440)
!3439 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3504}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3438, file: !3439, line: 81, baseType: !92, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3438, file: !3439, line: 82, baseType: !92, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3438, file: !3439, line: 83, baseType: !950, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3438, file: !3439, line: 84, baseType: !950, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3438, file: !3439, line: 85, baseType: !950, size: 64, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3438, file: !3439, line: 87, baseType: !3447, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!97, !3373, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !212, line: 96, size: 1152, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3463, !3467, !3468, !3469, !3470, !3471, !3479, !3480, !3481, !3482, !3483, !3484}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !212, line: 97, baseType: !92, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3451, file: !212, line: 98, baseType: !3436, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3451, file: !212, line: 100, baseType: !852, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3451, file: !212, line: 101, baseType: !92, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3451, file: !212, line: 103, baseType: !608, size: 8, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3451, file: !212, line: 104, baseType: !211, size: 32, offset: 288)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3451, file: !212, line: 106, baseType: !3460, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !212, line: 106, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3451, file: !212, line: 107, baseType: !3464, size: 64, offset: 384)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !212, line: 107, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3451, file: !212, line: 109, baseType: !3410, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3451, file: !212, line: 110, baseType: !3401, size: 64, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3451, file: !212, line: 111, baseType: !3410, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3451, file: !212, line: 112, baseType: !3401, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3451, file: !212, line: 113, baseType: !3472, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!97, !3373, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !225, line: 60, baseType: !3476)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !225, line: 58, size: 32, elements: !3477)
!3477 = !{!3478}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3476, file: !225, line: 59, baseType: !97, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3451, file: !212, line: 114, baseType: !3410, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3451, file: !212, line: 115, baseType: !950, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3451, file: !212, line: 116, baseType: !950, size: 64, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3451, file: !212, line: 118, baseType: !3405, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3451, file: !212, line: 119, baseType: !3401, size: 64, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3451, file: !212, line: 121, baseType: !3485, size: 64, offset: 1088)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !212, line: 121, flags: DIFlagFwdDecl)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3438, file: !3439, line: 88, baseType: !3390, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3438, file: !3439, line: 89, baseType: !3410, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3438, file: !3439, line: 90, baseType: !3401, size: 64, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3438, file: !3439, line: 91, baseType: !3401, size: 64, offset: 576)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3438, file: !3439, line: 92, baseType: !3401, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3438, file: !3439, line: 94, baseType: !3410, size: 64, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3438, file: !3439, line: 95, baseType: !3410, size: 64, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3438, file: !3439, line: 97, baseType: !3472, size: 64, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3438, file: !3439, line: 98, baseType: !3410, size: 64, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3438, file: !3439, line: 100, baseType: !3410, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3438, file: !3439, line: 102, baseType: !3410, size: 64, offset: 1024)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3438, file: !3439, line: 103, baseType: !3401, size: 64, offset: 1088)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3438, file: !3439, line: 105, baseType: !3405, size: 64, offset: 1152)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3438, file: !3439, line: 107, baseType: !3501, size: 64, offset: 1216)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3503)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3439, line: 107, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3438, file: !3439, line: 109, baseType: !608, size: 8, offset: 1280)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3374, file: !218, line: 715, baseType: !3450, size: 64, offset: 832)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3374, file: !218, line: 717, baseType: !95, size: 64, offset: 896)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3374, file: !218, line: 719, baseType: !95, size: 64, offset: 960)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3374, file: !218, line: 721, baseType: !1013, size: 256, offset: 1024)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3374, file: !218, line: 725, baseType: !3510, size: 448, offset: 1280)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !218, line: 517, size: 448, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3510, file: !218, line: 518, baseType: !172, size: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3510, file: !218, line: 519, baseType: !172, size: 128, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3510, file: !218, line: 520, baseType: !172, size: 128, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3510, file: !218, line: 521, baseType: !217, size: 32, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3374, file: !218, line: 726, baseType: !3517, size: 2496, offset: 1728)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !225, line: 663, size: 2496, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3601, !3605}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3517, file: !225, line: 664, baseType: !3475, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3517, file: !225, line: 665, baseType: !28, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3517, file: !225, line: 666, baseType: !28, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3517, file: !225, line: 667, baseType: !608, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3517, file: !225, line: 668, baseType: !608, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3517, file: !225, line: 669, baseType: !608, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3517, file: !225, line: 670, baseType: !608, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3517, file: !225, line: 671, baseType: !608, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3517, file: !225, line: 672, baseType: !608, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3517, file: !225, line: 673, baseType: !608, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3517, file: !225, line: 674, baseType: !608, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3517, file: !225, line: 675, baseType: !355, size: 32, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3517, file: !225, line: 676, baseType: !134, size: 32, offset: 96)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3517, file: !225, line: 678, baseType: !172, size: 128, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3517, file: !225, line: 679, baseType: !1755, size: 256, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3517, file: !225, line: 680, baseType: !3535, size: 64, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3537, line: 43, size: 1536, elements: !3538)
!3537 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3536, file: !3537, line: 44, baseType: !92, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3536, file: !3537, line: 45, baseType: !97, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3536, file: !3537, line: 46, baseType: !172, size: 128, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3536, file: !3537, line: 47, baseType: !134, size: 32, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3536, file: !3537, line: 48, baseType: !3544, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !225, line: 629, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3536, file: !3537, line: 49, baseType: !2437, size: 320, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3536, file: !3537, line: 50, baseType: !114, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3536, file: !3537, line: 51, baseType: !1232, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3536, file: !3537, line: 52, baseType: !1232, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3536, file: !3537, line: 53, baseType: !1232, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3536, file: !3537, line: 54, baseType: !1232, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3536, file: !3537, line: 55, baseType: !1232, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3536, file: !3537, line: 56, baseType: !114, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3536, file: !3537, line: 57, baseType: !114, size: 64, offset: 1152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3536, file: !3537, line: 58, baseType: !114, size: 64, offset: 1216)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3536, file: !3537, line: 59, baseType: !114, size: 64, offset: 1280)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3536, file: !3537, line: 60, baseType: !114, size: 64, offset: 1344)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3536, file: !3537, line: 61, baseType: !3373, size: 64, offset: 1408)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3536, file: !3537, line: 62, baseType: !608, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3536, file: !3537, line: 63, baseType: !608, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3517, file: !225, line: 681, baseType: !608, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3517, file: !225, line: 682, baseType: !608, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3517, file: !225, line: 683, baseType: !608, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3517, file: !225, line: 684, baseType: !28, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3517, file: !225, line: 685, baseType: !28, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3517, file: !225, line: 690, baseType: !1224, size: 512, offset: 640)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3517, file: !225, line: 691, baseType: !411, size: 64, offset: 1152)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3517, file: !225, line: 692, baseType: !1716, size: 256, offset: 1216)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3517, file: !225, line: 693, baseType: !129, size: 192, offset: 1472)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3517, file: !225, line: 694, baseType: !3544, size: 64, offset: 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3517, file: !225, line: 695, baseType: !124, size: 32, offset: 1728)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3517, file: !225, line: 696, baseType: !124, size: 32, offset: 1760)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3517, file: !225, line: 697, baseType: !28, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3517, file: !225, line: 698, baseType: !28, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3517, file: !225, line: 699, baseType: !28, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3517, file: !225, line: 700, baseType: !28, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3517, file: !225, line: 701, baseType: !28, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3517, file: !225, line: 702, baseType: !28, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3517, file: !225, line: 703, baseType: !608, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3517, file: !225, line: 704, baseType: !28, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3517, file: !225, line: 705, baseType: !28, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3517, file: !225, line: 706, baseType: !28, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3517, file: !225, line: 707, baseType: !28, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3517, file: !225, line: 708, baseType: !28, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3517, file: !225, line: 709, baseType: !28, size: 32, offset: 1824)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3517, file: !225, line: 710, baseType: !224, size: 32, offset: 1856)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3517, file: !225, line: 711, baseType: !232, size: 32, offset: 1888)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3517, file: !225, line: 712, baseType: !232, size: 32, offset: 1920)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3517, file: !225, line: 713, baseType: !97, size: 32, offset: 1952)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3517, file: !225, line: 714, baseType: !97, size: 32, offset: 1984)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3517, file: !225, line: 715, baseType: !411, size: 64, offset: 2048)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3517, file: !225, line: 716, baseType: !411, size: 64, offset: 2112)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3517, file: !225, line: 717, baseType: !411, size: 64, offset: 2176)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3517, file: !225, line: 718, baseType: !411, size: 64, offset: 2240)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3517, file: !225, line: 720, baseType: !3596, size: 64, offset: 2304)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !225, line: 632, size: 64, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3597, file: !225, line: 633, baseType: !134, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3597, file: !225, line: 634, baseType: !28, size: 32, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3517, file: !225, line: 721, baseType: !3602, size: 64, offset: 2368)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !3373, !1501}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3517, file: !225, line: 722, baseType: !3606, size: 64, offset: 2432)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !225, line: 722, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3374, file: !218, line: 727, baseType: !3609, size: 64, offset: 4224)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !225, line: 742, size: 1792, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3618, !3619, !3620}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3610, file: !225, line: 743, baseType: !3407, size: 1472)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3610, file: !225, line: 744, baseType: !3410, size: 64, offset: 1472)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3610, file: !225, line: 745, baseType: !3615, size: 64, offset: 1536)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3373, !608}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3610, file: !225, line: 746, baseType: !3410, size: 64, offset: 1600)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3610, file: !225, line: 747, baseType: !3401, size: 64, offset: 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3610, file: !225, line: 748, baseType: !3401, size: 64, offset: 1728)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3374, file: !218, line: 736, baseType: !3622, size: 128, offset: 4288)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !218, line: 529, size: 128, elements: !3623)
!3623 = !{!3624, !3628}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3622, file: !218, line: 531, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3627, line: 13, flags: DIFlagFwdDecl)
!3627 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3622, file: !218, line: 532, baseType: !3629, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !218, line: 49, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3374, file: !218, line: 738, baseType: !3632, size: 64, offset: 4416)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3634)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !218, line: 738, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3374, file: !218, line: 740, baseType: !3636, size: 64, offset: 4480)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3374, file: !218, line: 741, baseType: !411, size: 64, offset: 4544)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3374, file: !218, line: 746, baseType: !411, size: 64, offset: 4608)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3374, file: !218, line: 747, baseType: !3640, size: 64, offset: 4672)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !218, line: 747, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3374, file: !218, line: 749, baseType: !3644, size: 64, offset: 4736)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !218, line: 428, size: 128, elements: !3646)
!3646 = !{!3647, !3648, !3649}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3645, file: !218, line: 433, baseType: !28, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3645, file: !218, line: 434, baseType: !28, size: 32, offset: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3645, file: !218, line: 435, baseType: !114, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3374, file: !218, line: 751, baseType: !172, size: 128, offset: 4800)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3374, file: !218, line: 762, baseType: !3652, size: 64, offset: 4928)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !218, line: 762, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3374, file: !218, line: 770, baseType: !3655, offset: 4992)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3656, line: 5, elements: !1421)
!3656 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3374, file: !218, line: 772, baseType: !3658, size: 64, offset: 4992)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3660, line: 18, flags: DIFlagFwdDecl)
!3660 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3374, file: !218, line: 773, baseType: !3662, size: 64, offset: 5056)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3664, line: 41, size: 512, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3665 = !{!3666, !3667, !3762, !3763, !3764, !3765}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3663, file: !3664, line: 42, baseType: !3662, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3663, file: !3664, line: 43, baseType: !3668, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3664, line: 125, size: 1408, elements: !3671)
!3671 = !{!3672, !3676, !3680, !3686, !3690, !3691, !3696, !3700, !3704, !3709, !3713, !3714, !3718, !3722, !3726, !3737, !3738, !3739, !3740, !3750, !3754, !3758}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3670, file: !3664, line: 126, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!3662, !3662}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3670, file: !3664, line: 127, baseType: !3677, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !3662}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3670, file: !3664, line: 128, baseType: !3681, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!608, !3684}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3663)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3670, file: !3664, line: 129, baseType: !3687, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!582, !3684, !3393}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3670, file: !3664, line: 131, baseType: !3681, size: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3670, file: !3664, line: 133, baseType: !3692, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!3695, !3684}
!3695 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3664, line: 132, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3670, file: !3664, line: 134, baseType: !3697, size: 64, offset: 384)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!608, !3684, !92}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3670, file: !3664, line: 136, baseType: !3701, size: 64, offset: 448)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!97, !3684, !92, !28, !95, !110}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3670, file: !3664, line: 141, baseType: !3705, size: 64, offset: 512)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!97, !3684, !92, !3708, !110}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3670, file: !3664, line: 144, baseType: !3710, size: 64, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!92, !3684}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3670, file: !3664, line: 145, baseType: !3710, size: 64, offset: 640)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3670, file: !3664, line: 146, baseType: !3715, size: 64, offset: 704)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!3662, !3684}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3670, file: !3664, line: 148, baseType: !3719, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!3662, !3684, !3662}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3670, file: !3664, line: 151, baseType: !3723, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!3662, !3684, !92}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3670, file: !3664, line: 153, baseType: !3727, size: 64, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!97, !3684, !92, !92, !28, !28, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3664, line: 94, size: 640, elements: !3732)
!3732 = !{!3733, !3734, !3735}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3731, file: !3664, line: 95, baseType: !3662, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3731, file: !3664, line: 96, baseType: !28, size: 32, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3731, file: !3664, line: 97, baseType: !3736, size: 512, offset: 128)
!3736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, elements: !1267)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3670, file: !3664, line: 158, baseType: !3719, size: 64, offset: 960)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3670, file: !3664, line: 161, baseType: !3715, size: 64, offset: 1024)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3670, file: !3664, line: 163, baseType: !3673, size: 64, offset: 1088)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3670, file: !3664, line: 164, baseType: !3741, size: 64, offset: 1152)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!97, !3684, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3664, line: 73, size: 128, elements: !3746)
!3746 = !{!3747, !3748, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3745, file: !3664, line: 74, baseType: !28, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3745, file: !3664, line: 75, baseType: !28, size: 32, offset: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3745, file: !3664, line: 76, baseType: !3684, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3670, file: !3664, line: 166, baseType: !3751, size: 64, offset: 1216)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!95, !3662, !97}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3670, file: !3664, line: 167, baseType: !3755, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!97, !3684, !28}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3670, file: !3664, line: 168, baseType: !3759, size: 64, offset: 1344)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!97, !3662}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3663, file: !3664, line: 44, baseType: !3373, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3663, file: !3664, line: 45, baseType: !172, size: 128, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3663, file: !3664, line: 46, baseType: !172, size: 128, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !3664, line: 47, baseType: !158, size: 8, offset: 448)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3374, file: !218, line: 776, baseType: !97, size: 32, offset: 5120)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3374, file: !218, line: 778, baseType: !822, size: 32, offset: 5152)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3374, file: !218, line: 779, baseType: !355, size: 32, offset: 5184)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3374, file: !218, line: 781, baseType: !134, size: 32, offset: 5216)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3374, file: !218, line: 782, baseType: !172, size: 128, offset: 5248)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3374, file: !218, line: 784, baseType: !3772, size: 64, offset: 5376)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3774)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3775, line: 52, size: 768, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3785, !3789, !3790, !3791, !3819, !3823, !3827}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3774, file: !3775, line: 53, baseType: !92, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3774, file: !3775, line: 55, baseType: !950, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3774, file: !3775, line: 56, baseType: !950, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3774, file: !3775, line: 58, baseType: !3390, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3774, file: !3775, line: 59, baseType: !3782, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!806, !3393, !3399}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3774, file: !3775, line: 61, baseType: !3786, size: 64, offset: 320)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3772}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3774, file: !3775, line: 62, baseType: !3401, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3774, file: !3775, line: 64, baseType: !3410, size: 64, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3774, file: !3775, line: 66, baseType: !3792, size: 64, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3794)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !240, line: 39, size: 384, elements: !3795)
!3795 = !{!3796, !3797, !3801, !3805, !3811, !3815}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3794, file: !240, line: 40, baseType: !239, size: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3794, file: !240, line: 41, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!608}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3794, file: !240, line: 42, baseType: !3802, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!95}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3794, file: !240, line: 43, baseType: !3806, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!582, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !27, line: 177, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3794, file: !240, line: 44, baseType: !3812, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!582}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3794, file: !240, line: 45, baseType: !3816, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !95}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3774, file: !3775, line: 67, baseType: !3820, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!582, !3393}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3774, file: !3775, line: 69, baseType: !3824, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{null, !3393, !1780, !1781}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3774, file: !3775, line: 71, baseType: !3405, size: 64, offset: 704)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3374, file: !218, line: 785, baseType: !950, size: 64, offset: 5440)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3374, file: !218, line: 787, baseType: !3401, size: 64, offset: 5504)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3374, file: !218, line: 788, baseType: !3831, size: 64, offset: 5568)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !218, line: 46, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3374, file: !218, line: 789, baseType: !3834, size: 64, offset: 5632)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !218, line: 48, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3374, file: !218, line: 791, baseType: !3837, size: 64, offset: 5696)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !218, line: 597, size: 128, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3844}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3838, file: !218, line: 598, baseType: !245, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3838, file: !218, line: 599, baseType: !254, size: 32, offset: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3838, file: !218, line: 600, baseType: !259, size: 32, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3838, file: !218, line: 601, baseType: !608, size: 8, offset: 96)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3838, file: !218, line: 602, baseType: !608, size: 8, offset: 104)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3374, file: !218, line: 793, baseType: !264, size: 32, offset: 5760)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3374, file: !218, line: 795, baseType: !608, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3374, file: !218, line: 796, baseType: !608, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3374, file: !218, line: 797, baseType: !608, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3374, file: !218, line: 798, baseType: !608, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3374, file: !218, line: 799, baseType: !608, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3368, file: !271, line: 307, baseType: !3373, size: 64, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3368, file: !271, line: 308, baseType: !950, size: 64, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3368, file: !271, line: 309, baseType: !950, size: 64, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3368, file: !271, line: 310, baseType: !92, size: 64, offset: 448)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3368, file: !271, line: 311, baseType: !97, size: 32, offset: 512)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3368, file: !271, line: 316, baseType: !97, size: 32, offset: 544)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3368, file: !271, line: 318, baseType: !1937, size: 64, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3368, file: !271, line: 319, baseType: !3859, size: 64, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !271, line: 977, size: 1856, elements: !3861)
!3861 = !{!3862, !3877, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3860, file: !271, line: 978, baseType: !3863, size: 896)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !271, line: 873, size: 896, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3863, file: !271, line: 874, baseType: !3367, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3863, file: !271, line: 875, baseType: !3113, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3863, file: !271, line: 877, baseType: !172, size: 128, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3863, file: !271, line: 879, baseType: !172, size: 128, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3863, file: !271, line: 880, baseType: !172, size: 128, offset: 384)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3863, file: !271, line: 883, baseType: !28, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3863, file: !271, line: 885, baseType: !28, size: 32, offset: 544)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3863, file: !271, line: 886, baseType: !28, size: 32, offset: 576)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3863, file: !271, line: 888, baseType: !124, size: 32, offset: 608)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3863, file: !271, line: 889, baseType: !991, size: 128, align: 64, offset: 640)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3863, file: !271, line: 891, baseType: !95, size: 64, offset: 768)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3863, file: !271, line: 898, baseType: !97, size: 32, offset: 832)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3860, file: !271, line: 979, baseType: !3878, size: 64, offset: 896)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3860, file: !271, line: 981, baseType: !172, size: 128, offset: 960)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3860, file: !271, line: 982, baseType: !97, size: 32, offset: 1088)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3860, file: !271, line: 984, baseType: !97, size: 32, offset: 1120)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3860, file: !271, line: 985, baseType: !97, size: 32, offset: 1152)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3860, file: !271, line: 987, baseType: !1018, size: 32, offset: 1184)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3860, file: !271, line: 988, baseType: !1224, size: 512, offset: 1216)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3860, file: !271, line: 989, baseType: !1232, size: 64, offset: 1728)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3860, file: !271, line: 990, baseType: !28, size: 32, offset: 1792)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3368, file: !271, line: 320, baseType: !124, size: 32, offset: 704)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3368, file: !271, line: 321, baseType: !97, size: 32, offset: 736)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3368, file: !271, line: 322, baseType: !97, size: 32, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3368, file: !271, line: 325, baseType: !28, size: 32, offset: 800)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3368, file: !271, line: 331, baseType: !3892, size: 64, offset: 832)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3367}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3368, file: !271, line: 332, baseType: !3892, size: 64, offset: 896)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3368, file: !271, line: 350, baseType: !3897, size: 64, offset: 960)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!97, !3350}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3368, file: !271, line: 356, baseType: !3901, size: 64, offset: 1024)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !3350, !1400}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3368, file: !271, line: 357, baseType: !3901, size: 64, offset: 1088)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3368, file: !271, line: 385, baseType: !3906, size: 64, offset: 1152)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!97, !3350, !97}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3368, file: !271, line: 386, baseType: !3910, size: 64, offset: 1216)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{null, !3350, !97}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3368, file: !271, line: 406, baseType: !3910, size: 64, offset: 1280)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3368, file: !271, line: 407, baseType: !3910, size: 64, offset: 1344)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3368, file: !271, line: 415, baseType: !3916, size: 64, offset: 1408)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3350}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3368, file: !271, line: 427, baseType: !3920, size: 64, offset: 1472)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !3367, !28}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3368, file: !271, line: 436, baseType: !3924, size: 64, offset: 1536)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!97, !3367}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3368, file: !271, line: 443, baseType: !3892, size: 64, offset: 1600)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3368, file: !271, line: 450, baseType: !3897, size: 64, offset: 1664)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3368, file: !271, line: 455, baseType: !3930, size: 64, offset: 1728)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !3878, !608}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3368, file: !271, line: 461, baseType: !3934, size: 64, offset: 1792)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3936, line: 11, flags: DIFlagFwdDecl)
!3936 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3368, file: !271, line: 469, baseType: !3938, size: 64, offset: 1856)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3878, !3878}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3368, file: !271, line: 476, baseType: !3942, size: 64, offset: 1920)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!95, !3350, !3945, !97, !608}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3368, file: !271, line: 483, baseType: !3816, size: 64, offset: 1984)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3368, file: !271, line: 494, baseType: !3948, size: 64, offset: 2048)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!352, !3350, !3951, !114}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !271, line: 1014, size: 448, elements: !3953)
!3953 = !{!3954, !3955, !3958, !3959, !3960, !3961, !3966}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3952, file: !271, line: 1015, baseType: !3350, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3952, file: !271, line: 1016, baseType: !3956, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !271, line: 641, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3952, file: !271, line: 1017, baseType: !114, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3952, file: !271, line: 1018, baseType: !114, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3952, file: !271, line: 1019, baseType: !411, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3952, file: !271, line: 1020, baseType: !3962, size: 64, offset: 320)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3952, file: !271, line: 1020, size: 64, elements: !3963)
!3963 = !{!3964, !3965}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3962, file: !271, line: 1021, baseType: !95, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3962, file: !271, line: 1022, baseType: !114, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3952, file: !271, line: 1024, baseType: !97, size: 32, offset: 384)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3368, file: !271, line: 506, baseType: !3968, size: 64, offset: 2112)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!97, !175}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3368, file: !271, line: 520, baseType: !3916, size: 64, offset: 2176)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3368, file: !271, line: 530, baseType: !3897, size: 64, offset: 2240)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3368, file: !271, line: 537, baseType: !3974, size: 64, offset: 2304)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!608, !3367, !97}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3368, file: !271, line: 542, baseType: !3978, size: 64, offset: 2368)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!97, !3350, !411}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3351, file: !271, line: 715, baseType: !95, size: 64, offset: 1280)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3351, file: !271, line: 717, baseType: !270, size: 32, offset: 1344)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3351, file: !271, line: 718, baseType: !28, size: 32, offset: 1376)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3351, file: !271, line: 719, baseType: !3985, size: 64, offset: 1408)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3986, line: 26, baseType: !3987)
!3986 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3986, line: 24, size: 64, elements: !3988)
!3988 = !{!3989}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3987, file: !3986, line: 25, baseType: !3145, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3351, file: !271, line: 720, baseType: !1006, size: 64, offset: 1472)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3351, file: !271, line: 728, baseType: !411, size: 64, offset: 1536)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3351, file: !271, line: 729, baseType: !411, size: 64, offset: 1600)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3351, file: !271, line: 730, baseType: !411, size: 64, offset: 1664)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3351, file: !271, line: 732, baseType: !3995, size: 1088, offset: 1728)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3996, line: 385, size: 1088, elements: !3997)
!3996 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3997 = !{!3998, !3999, !4000, !4001, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4051, !4052, !4059, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3995, file: !3996, line: 390, baseType: !356, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3995, file: !3996, line: 395, baseType: !356, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3995, file: !3996, line: 400, baseType: !412, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, scope: !3995, file: !3996, line: 402, baseType: !4002, size: 64, offset: 128)
!4002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3995, file: !3996, line: 402, size: 64, elements: !4003)
!4003 = !{!4004, !4005}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4002, file: !3996, line: 403, baseType: !412, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !4002, file: !3996, line: 404, baseType: !412, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3995, file: !3996, line: 407, baseType: !412, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3995, file: !3996, line: 408, baseType: !412, size: 64, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3995, file: !3996, line: 410, baseType: !412, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3995, file: !3996, line: 411, baseType: !412, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3995, file: !3996, line: 412, baseType: !412, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3995, file: !3996, line: 413, baseType: !412, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3995, file: !3996, line: 414, baseType: !412, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3995, file: !3996, line: 415, baseType: !412, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3995, file: !3996, line: 416, baseType: !412, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3995, file: !3996, line: 417, baseType: !412, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3995, file: !3996, line: 418, baseType: !412, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3995, file: !3996, line: 419, baseType: !412, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3995, file: !3996, line: 420, baseType: !412, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3995, file: !3996, line: 421, baseType: !412, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3995, file: !3996, line: 422, baseType: !412, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3995, file: !3996, line: 423, baseType: !412, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3995, file: !3996, line: 424, baseType: !412, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3995, file: !3996, line: 435, baseType: !412, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3995, file: !3996, line: 436, baseType: !412, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3995, file: !3996, line: 437, baseType: !412, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3995, file: !3996, line: 439, baseType: !412, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3995, file: !3996, line: 440, baseType: !412, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3995, file: !3996, line: 442, baseType: !412, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3995, file: !3996, line: 443, baseType: !412, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3995, file: !3996, line: 444, baseType: !412, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3995, file: !3996, line: 445, baseType: !412, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3995, file: !3996, line: 446, baseType: !412, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3995, file: !3996, line: 447, baseType: !412, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3995, file: !3996, line: 448, baseType: !412, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3995, file: !3996, line: 449, baseType: !412, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3995, file: !3996, line: 450, baseType: !412, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3995, file: !3996, line: 451, baseType: !412, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3995, file: !3996, line: 452, baseType: !412, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3995, file: !3996, line: 453, baseType: !412, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3995, file: !3996, line: 454, baseType: !412, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3995, file: !3996, line: 455, baseType: !412, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3995, file: !3996, line: 456, baseType: !412, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3995, file: !3996, line: 457, baseType: !412, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3995, file: !3996, line: 458, baseType: !412, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3995, file: !3996, line: 459, baseType: !412, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !3995, file: !3996, line: 461, baseType: !4047, size: 32, offset: 384)
!4047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3995, file: !3996, line: 461, size: 32, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !4047, file: !3996, line: 462, baseType: !356, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !4047, file: !3996, line: 463, baseType: !356, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3995, file: !3996, line: 466, baseType: !356, size: 32, offset: 416)
!4052 = !DIDerivedType(tag: DW_TAG_member, scope: !3995, file: !3996, line: 467, baseType: !4053, size: 64, offset: 448)
!4053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3995, file: !3996, line: 467, size: 64, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4058}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !4053, file: !3996, line: 468, baseType: !412, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !4053, file: !3996, line: 469, baseType: !412, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !4053, file: !3996, line: 470, baseType: !412, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !4053, file: !3996, line: 471, baseType: !412, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, scope: !3995, file: !3996, line: 473, baseType: !4060, size: 64, offset: 512)
!4060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3995, file: !3996, line: 473, size: 64, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !4060, file: !3996, line: 474, baseType: !412, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !4060, file: !3996, line: 475, baseType: !412, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !4060, file: !3996, line: 476, baseType: !412, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !4060, file: !3996, line: 477, baseType: !412, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3995, file: !3996, line: 479, baseType: !412, size: 64, offset: 576)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3995, file: !3996, line: 485, baseType: !412, size: 64, offset: 640)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3995, file: !3996, line: 490, baseType: !356, size: 32, offset: 704)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3995, file: !3996, line: 492, baseType: !1502, size: 32, offset: 736)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3995, file: !3996, line: 501, baseType: !412, size: 64, offset: 768)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3995, file: !3996, line: 506, baseType: !356, size: 32, offset: 832)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3995, file: !3996, line: 507, baseType: !169, size: 16, offset: 864)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3995, file: !3996, line: 508, baseType: !169, size: 16, offset: 880)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3995, file: !3996, line: 509, baseType: !356, size: 32, offset: 896)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3995, file: !3996, line: 510, baseType: !356, size: 32, offset: 928)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3995, file: !3996, line: 518, baseType: !412, size: 64, offset: 960)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3995, file: !3996, line: 520, baseType: !412, size: 64, offset: 1024)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3351, file: !271, line: 733, baseType: !168, size: 16, offset: 2816)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3351, file: !271, line: 734, baseType: !168, size: 16, offset: 2832)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3351, file: !271, line: 735, baseType: !168, size: 16, offset: 2848)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3351, file: !271, line: 736, baseType: !4082, size: 1536, offset: 2880)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !271, line: 155, size: 1536, elements: !4083)
!4083 = !{!4084, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4168, !4169, !4170, !4171}
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !4082, file: !271, line: 157, baseType: !4085, size: 768)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4082, file: !271, line: 157, size: 768, elements: !4086)
!4086 = !{!4087, !4106, !4110, !4114, !4119, !4141}
!4087 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !271, line: 158, baseType: !4088, size: 768)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4085, file: !271, line: 158, size: 768, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4105}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4088, file: !271, line: 159, baseType: !411, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !4088, file: !271, line: 160, baseType: !411, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !4088, file: !271, line: 161, baseType: !114, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !4088, file: !271, line: 162, baseType: !114, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !4088, file: !271, line: 163, baseType: !97, size: 32, offset: 256)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4088, file: !271, line: 164, baseType: !97, size: 32, offset: 288)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4088, file: !271, line: 165, baseType: !97, size: 32, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4088, file: !271, line: 166, baseType: !97, size: 32, offset: 352)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !4088, file: !271, line: 168, baseType: !4099, size: 192, offset: 384)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !271, line: 134, size: 192, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4099, file: !271, line: 135, baseType: !411, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4099, file: !271, line: 136, baseType: !28, size: 32, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4099, file: !271, line: 137, baseType: !97, size: 32, offset: 96)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4099, file: !271, line: 138, baseType: !97, size: 32, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !4088, file: !271, line: 169, baseType: !4099, size: 192, offset: 576)
!4106 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !271, line: 171, baseType: !4107, size: 512)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4085, file: !271, line: 171, size: 512, elements: !4108)
!4108 = !{!4109}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4107, file: !271, line: 172, baseType: !1224, size: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !271, line: 174, baseType: !4111, size: 128)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4085, file: !271, line: 174, size: 128, elements: !4112)
!4112 = !{!4113}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !4111, file: !271, line: 176, baseType: !172, size: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !271, line: 178, baseType: !4115, size: 128)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4085, file: !271, line: 178, size: 128, elements: !4116)
!4116 = !{!4117, !4118}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !4115, file: !271, line: 179, baseType: !411, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !4115, file: !271, line: 180, baseType: !411, size: 64, offset: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !271, line: 183, baseType: !4120, size: 320)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4085, file: !271, line: 183, size: 320, elements: !4121)
!4121 = !{!4122, !4130}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4120, file: !271, line: 189, baseType: !4123, size: 192)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4124, line: 14, size: 192, elements: !4125)
!4124 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4125 = !{!4126, !4127, !4128, !4129}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4123, file: !4124, line: 15, baseType: !114, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4123, file: !4124, line: 16, baseType: !114, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4123, file: !4124, line: 17, baseType: !158, size: 8, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4123, file: !4124, line: 18, baseType: !158, size: 8, offset: 136)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !4120, file: !271, line: 190, baseType: !4131, size: 128, offset: 192)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4132, line: 21, size: 128, elements: !4133)
!4132 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4133 = !{!4134, !4139}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4131, file: !4132, line: 22, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4132, line: 17, size: 64, elements: !4136)
!4136 = !{!4137}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4135, file: !4132, line: 18, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4131, file: !4132, line: 23, baseType: !4140, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !271, line: 193, baseType: !4142, size: 192)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4085, file: !271, line: 193, size: 192, elements: !4143)
!4143 = !{!4144, !4145, !4146, !4147, !4148}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4142, file: !271, line: 194, baseType: !158, size: 8)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4142, file: !271, line: 195, baseType: !158, size: 8, offset: 8)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4142, file: !271, line: 196, baseType: !168, size: 16, offset: 16)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4142, file: !271, line: 197, baseType: !411, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4142, file: !271, line: 198, baseType: !411, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4082, file: !271, line: 205, baseType: !1105, size: 64, offset: 768)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4082, file: !271, line: 211, baseType: !95, size: 64, offset: 832)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4082, file: !271, line: 214, baseType: !114, size: 64, offset: 896)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4082, file: !271, line: 223, baseType: !97, size: 32, offset: 960)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !4082, file: !271, line: 229, baseType: !3985, size: 64, offset: 1024)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4082, file: !271, line: 234, baseType: !411, size: 64, offset: 1088)
!4155 = !DIDerivedType(tag: DW_TAG_member, scope: !4082, file: !271, line: 236, baseType: !4156, size: 128, offset: 1152)
!4156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4082, file: !271, line: 236, size: 128, elements: !4157)
!4157 = !{!4158, !4163}
!4158 = !DIDerivedType(tag: DW_TAG_member, scope: !4156, file: !271, line: 237, baseType: !4159, size: 128)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4156, file: !271, line: 237, size: 128, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4159, file: !271, line: 241, baseType: !411, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4159, file: !271, line: 249, baseType: !3985, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, scope: !4156, file: !271, line: 251, baseType: !4164, size: 128)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4156, file: !271, line: 251, size: 128, elements: !4165)
!4165 = !{!4166, !4167}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4164, file: !271, line: 252, baseType: !411, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4164, file: !271, line: 253, baseType: !411, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !4082, file: !271, line: 261, baseType: !411, size: 64, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !4082, file: !271, line: 262, baseType: !411, size: 64, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !4082, file: !271, line: 268, baseType: !411, size: 64, offset: 1408)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !4082, file: !271, line: 269, baseType: !411, size: 64, offset: 1472)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3351, file: !271, line: 738, baseType: !3113, size: 64, offset: 4416)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3351, file: !271, line: 744, baseType: !3878, size: 64, offset: 4480)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3351, file: !271, line: 745, baseType: !1004, size: 64, offset: 4544)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3351, file: !271, line: 751, baseType: !1006, size: 64, offset: 4608)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3351, file: !271, line: 752, baseType: !1006, size: 64, offset: 4672)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3351, file: !271, line: 757, baseType: !1013, size: 256, offset: 4736)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3351, file: !271, line: 758, baseType: !172, size: 128, offset: 4992)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3351, file: !271, line: 759, baseType: !3350, size: 64, offset: 5120)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3351, file: !271, line: 761, baseType: !97, size: 32, offset: 5184)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3351, file: !271, line: 762, baseType: !97, size: 32, offset: 5216)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3351, file: !271, line: 764, baseType: !172, size: 128, offset: 5248)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3351, file: !271, line: 765, baseType: !1105, size: 64, offset: 5376)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3351, file: !271, line: 768, baseType: !1013, size: 256, offset: 5440)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3351, file: !271, line: 769, baseType: !124, size: 32, offset: 5696)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3351, file: !271, line: 771, baseType: !3956, size: 64, offset: 5760)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3351, file: !271, line: 772, baseType: !172, size: 128, offset: 5824)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3351, file: !271, line: 773, baseType: !114, size: 64, offset: 5952)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3351, file: !271, line: 774, baseType: !97, size: 32, offset: 6016)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3351, file: !271, line: 777, baseType: !129, size: 192, offset: 6080)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3351, file: !271, line: 778, baseType: !4192, size: 64, offset: 6272)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !305, line: 1083, size: 384, elements: !4194)
!4194 = !{!4195, !4196, !4197, !4198, !4199, !4200}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4193, file: !305, line: 1084, baseType: !1031, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4193, file: !305, line: 1085, baseType: !97, size: 32, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4193, file: !305, line: 1086, baseType: !97, size: 32, offset: 96)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4193, file: !305, line: 1087, baseType: !4192, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4193, file: !305, line: 1088, baseType: !978, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4193, file: !305, line: 1089, baseType: !991, size: 128, align: 64, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3351, file: !271, line: 781, baseType: !28, size: 32, offset: 6336)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3351, file: !271, line: 782, baseType: !28, size: 32, offset: 6368)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3351, file: !271, line: 783, baseType: !28, size: 32, offset: 6400)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3351, file: !271, line: 784, baseType: !28, size: 32, offset: 6432)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3351, file: !271, line: 785, baseType: !114, size: 64, offset: 6464)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3351, file: !271, line: 786, baseType: !4207, size: 256, offset: 6528)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4208, line: 17, size: 256, elements: !4209)
!4208 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4209 = !{!4210, !4211, !4216}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4207, file: !4208, line: 18, baseType: !1124, size: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4207, file: !4208, line: 19, baseType: !4212, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{null, !4215}
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4207, file: !4208, line: 20, baseType: !4217, size: 64, offset: 192)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4218, line: 16, size: 64, elements: !4219)
!4218 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4219 = !{!4220}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4217, file: !4218, line: 17, baseType: !1105, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3351, file: !271, line: 787, baseType: !991, size: 128, align: 64, offset: 6784)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3351, file: !271, line: 788, baseType: !28, size: 32, offset: 6912)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3351, file: !271, line: 789, baseType: !4217, size: 64, offset: 6976)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3351, file: !271, line: 791, baseType: !124, size: 32, offset: 7040)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3351, file: !271, line: 794, baseType: !4226, size: 192, offset: 7104)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !271, line: 579, size: 192, elements: !4227)
!4227 = !{!4228, !4229, !4230}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4226, file: !271, line: 580, baseType: !172, size: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4226, file: !271, line: 581, baseType: !1018, size: 32, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4226, file: !271, line: 582, baseType: !28, size: 32, offset: 160)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3351, file: !271, line: 796, baseType: !4232, size: 64, offset: 7296)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !271, line: 585, size: 128, elements: !4234)
!4234 = !{!4235, !4236}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4233, file: !271, line: 586, baseType: !114, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4233, file: !271, line: 587, baseType: !114, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3351, file: !271, line: 797, baseType: !114, size: 64, offset: 7360)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3351, file: !271, line: 800, baseType: !3350, size: 64, offset: 7424)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3351, file: !271, line: 802, baseType: !3916, size: 64, offset: 7488)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3351, file: !271, line: 803, baseType: !991, size: 128, align: 64, offset: 7552)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3351, file: !271, line: 805, baseType: !1085, size: 64, offset: 7680)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3351, file: !271, line: 806, baseType: !411, size: 64, offset: 7744)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3351, file: !271, line: 808, baseType: !1006, size: 64, offset: 7808)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3351, file: !271, line: 810, baseType: !4245, size: 64, offset: 7872)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!411}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3351, file: !271, line: 811, baseType: !4249, size: 64, offset: 7936)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !271, line: 605, baseType: !4250)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !3350, !4253, !4358}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !271, line: 1148, size: 2048, align: 512, elements: !4255)
!4255 = !{!4256, !4257, !4258, !4259, !4260, !4265, !4266, !4267, !4272, !4273, !4280, !4301, !4323, !4333, !4351, !4352, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4254, file: !271, line: 1153, baseType: !411, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4254, file: !271, line: 1154, baseType: !411, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4254, file: !271, line: 1155, baseType: !411, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4254, file: !271, line: 1161, baseType: !411, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4254, file: !271, line: 1165, baseType: !4261, size: 64, offset: 256)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4254, file: !271, line: 1162, size: 64, elements: !4262)
!4262 = !{!4263, !4264}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4261, file: !271, line: 1163, baseType: !355, size: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4261, file: !271, line: 1164, baseType: !355, size: 32, offset: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4254, file: !271, line: 1166, baseType: !411, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4254, file: !271, line: 1167, baseType: !411, size: 64, offset: 384)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4254, file: !271, line: 1171, baseType: !4268, size: 64, offset: 448)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4254, file: !271, line: 1168, size: 64, elements: !4269)
!4269 = !{!4270, !4271}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4268, file: !271, line: 1169, baseType: !355, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4268, file: !271, line: 1170, baseType: !355, size: 32, offset: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4254, file: !271, line: 1177, baseType: !411, size: 64, offset: 512)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4254, file: !271, line: 1178, baseType: !4274, size: 64, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !271, line: 67, size: 64, elements: !4276)
!4276 = !{!4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4275, file: !271, line: 68, baseType: !412, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4275, file: !271, line: 69, baseType: !4279, offset: 64)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, elements: !1832)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4254, file: !271, line: 1179, baseType: !4281, size: 64, offset: 640)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !271, line: 93, size: 256, elements: !4283)
!4283 = !{!4284, !4300}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4282, file: !271, line: 94, baseType: !4285, size: 224)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !271, line: 83, size: 224, elements: !4286)
!4286 = !{!4287, !4293, !4298, !4299}
!4287 = !DIDerivedType(tag: DW_TAG_member, scope: !4285, file: !271, line: 84, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4285, file: !271, line: 84, size: 64, elements: !4289)
!4289 = !{!4290, !4292}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4288, file: !271, line: 85, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4288, file: !271, line: 86, baseType: !114, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4285, file: !271, line: 88, baseType: !4294, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !271, line: 80, baseType: !4295)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!114, !95, !582, !114, !114}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4285, file: !271, line: 89, baseType: !95, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4285, file: !271, line: 90, baseType: !355, size: 32, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4282, file: !271, line: 95, baseType: !355, size: 32, offset: 224)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4254, file: !271, line: 1180, baseType: !4302, size: 64, offset: 704)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !271, line: 123, size: 128, elements: !4304)
!4304 = !{!4305, !4306, !4307}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4303, file: !271, line: 124, baseType: !412, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4303, file: !271, line: 125, baseType: !412, size: 64, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4303, file: !271, line: 126, baseType: !4308, offset: 128)
!4308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4309, elements: !1832)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3996, line: 1415, size: 192, elements: !4310)
!4310 = !{!4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4309, file: !3996, line: 1416, baseType: !412, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4309, file: !3996, line: 1417, baseType: !412, size: 64, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4309, file: !3996, line: 1418, baseType: !412, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4309, file: !3996, line: 1419, baseType: !412, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4309, file: !3996, line: 1420, baseType: !412, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4309, file: !3996, line: 1421, baseType: !412, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4309, file: !3996, line: 1422, baseType: !412, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4309, file: !3996, line: 1423, baseType: !412, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4309, file: !3996, line: 1424, baseType: !412, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4309, file: !3996, line: 1425, baseType: !412, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4309, file: !3996, line: 1426, baseType: !412, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4309, file: !3996, line: 1427, baseType: !412, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4254, file: !271, line: 1181, baseType: !4324, size: 64, offset: 768)
!4324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3996, line: 1430, size: 64, elements: !4325)
!4325 = !{!4326, !4327}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4324, file: !3996, line: 1431, baseType: !412, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, scope: !4324, file: !3996, line: 1433, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4324, file: !3996, line: 1433, size: 64, elements: !4329)
!4329 = !{!4330, !4331, !4332}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4328, file: !3996, line: 1434, baseType: !356, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4328, file: !3996, line: 1435, baseType: !169, size: 16, offset: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4328, file: !3996, line: 1436, baseType: !169, size: 16, offset: 48)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4254, file: !271, line: 1182, baseType: !4334, size: 64, offset: 832)
!4334 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3996, line: 1267, size: 64, elements: !4335)
!4335 = !{!4336, !4337}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4334, file: !3996, line: 1268, baseType: !412, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, scope: !4334, file: !3996, line: 1269, baseType: !4338, size: 64)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4334, file: !3996, line: 1269, size: 64, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4338, file: !3996, line: 1270, baseType: !412, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4338, file: !3996, line: 1271, baseType: !412, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4338, file: !3996, line: 1272, baseType: !412, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4338, file: !3996, line: 1273, baseType: !412, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4338, file: !3996, line: 1274, baseType: !412, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4338, file: !3996, line: 1275, baseType: !412, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4338, file: !3996, line: 1276, baseType: !412, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4338, file: !3996, line: 1277, baseType: !412, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4338, file: !3996, line: 1278, baseType: !412, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4338, file: !3996, line: 1279, baseType: !412, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4338, file: !3996, line: 1280, baseType: !412, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4254, file: !271, line: 1183, baseType: !411, size: 64, offset: 896)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4254, file: !271, line: 1185, baseType: !4353, size: 128, offset: 960)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4354, line: 7, size: 128, elements: !4355)
!4354 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4355 = !{!4356, !4357}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4353, file: !4354, line: 8, baseType: !412, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4353, file: !4354, line: 9, baseType: !4358, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4254, file: !271, line: 1186, baseType: !4353, size: 128, offset: 1088)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4254, file: !271, line: 1187, baseType: !411, size: 64, offset: 1216)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4254, file: !271, line: 1189, baseType: !411, size: 64, offset: 1280)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4254, file: !271, line: 1190, baseType: !411, size: 64, offset: 1344)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4254, file: !271, line: 1191, baseType: !411, size: 64, offset: 1408)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4254, file: !271, line: 1192, baseType: !411, size: 64, offset: 1472)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4254, file: !271, line: 1193, baseType: !411, size: 64, offset: 1536)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4254, file: !271, line: 1194, baseType: !411, size: 64, offset: 1600)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4254, file: !271, line: 1195, baseType: !411, size: 64, offset: 1664)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3351, file: !271, line: 812, baseType: !95, size: 64, offset: 8000)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3351, file: !271, line: 820, baseType: !4370, size: 64, offset: 8064)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !280, line: 372, size: 1024, elements: !4372)
!4372 = !{!4373, !4374, !4415, !4483, !4561, !4562, !4565, !4570, !4571, !4572, !4573, !4575, !4578}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4371, file: !280, line: 373, baseType: !172, size: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4371, file: !280, line: 374, baseType: !4375, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !280, line: 291, size: 576, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4385, !4409, !4413, !4414}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4376, file: !280, line: 292, baseType: !92, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4376, file: !280, line: 293, baseType: !95, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !4376, file: !280, line: 295, baseType: !95, size: 64, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4376, file: !280, line: 297, baseType: !4382, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!97, !4370, !279, !95}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !4376, file: !280, line: 299, baseType: !4386, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !280, line: 275, size: 320, elements: !4388)
!4388 = !{!4389, !4390}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4387, file: !280, line: 276, baseType: !92, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, scope: !4387, file: !280, line: 277, baseType: !4391, size: 256, offset: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4387, file: !280, line: 277, size: 256, elements: !4392)
!4392 = !{!4393, !4405}
!4393 = !DIDerivedType(tag: DW_TAG_member, scope: !4391, file: !280, line: 278, baseType: !4394, size: 256)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4391, file: !280, line: 278, size: 256, elements: !4395)
!4395 = !{!4396, !4397, !4399, !4400, !4402, !4403, !4404}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4394, file: !280, line: 279, baseType: !92, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4394, file: !280, line: 280, baseType: !4398, size: 32, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4394, file: !280, line: 281, baseType: !4398, size: 32, offset: 96)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !4394, file: !280, line: 282, baseType: !4401, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !4394, file: !280, line: 283, baseType: !28, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !4394, file: !280, line: 284, baseType: !4398, size: 32, offset: 160)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4394, file: !280, line: 285, baseType: !4398, size: 32, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !4391, file: !280, line: 287, baseType: !4406, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!97, !4370}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !4376, file: !280, line: 300, baseType: !4410, size: 64, offset: 320)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!175, !4370}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4376, file: !280, line: 301, baseType: !172, size: 128, offset: 384)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !4376, file: !280, line: 302, baseType: !4406, size: 64, offset: 512)
!4415 = !DIDerivedType(tag: DW_TAG_member, scope: !4371, file: !280, line: 375, baseType: !4416, size: 64, offset: 192)
!4416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4371, file: !280, line: 375, size: 64, elements: !4417)
!4417 = !{!4418, !4419}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4416, file: !280, line: 376, baseType: !92, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !4416, file: !280, line: 378, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !4422, line: 32, size: 640, elements: !4423)
!4422 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4423 = !{!4424, !4425, !4444, !4468, !4469, !4470, !4471, !4475, !4476}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4421, file: !4422, line: 33, baseType: !92, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4421, file: !4422, line: 34, baseType: !4426, size: 128, offset: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4427, line: 85, size: 128, elements: !4428)
!4427 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4428 = !{!4429, !4430}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4426, file: !4427, line: 86, baseType: !124, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, scope: !4426, file: !4427, line: 101, baseType: !4431, size: 64, offset: 64)
!4431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4426, file: !4427, line: 101, size: 64, elements: !4432)
!4432 = !{!4433, !4434, !4441}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4431, file: !4427, line: 102, baseType: !114, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4431, file: !4427, line: 103, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4427, line: 117, size: 128, elements: !4437)
!4437 = !{!4438, !4439, !4440}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4436, file: !4427, line: 118, baseType: !1501, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4436, file: !4427, line: 119, baseType: !1501, size: 32, offset: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4436, file: !4427, line: 120, baseType: !352, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4431, file: !4427, line: 104, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4427, line: 104, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !4421, file: !4422, line: 35, baseType: !4445, size: 64, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !4447, line: 61, size: 128, elements: !4448)
!4447 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4448 = !{!4449, !4450}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4446, file: !4447, line: 62, baseType: !95, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, scope: !4446, file: !4447, line: 63, baseType: !4451, size: 64, offset: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4446, file: !4447, line: 63, size: 64, elements: !4452)
!4452 = !{!4453, !4454, !4467}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4451, file: !4447, line: 65, baseType: !114, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !4451, file: !4447, line: 66, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !4457, line: 169, size: 192, elements: !4458)
!4457 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!4458 = !{!4459, !4460, !4461}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4456, file: !4457, line: 170, baseType: !4455, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4456, file: !4457, line: 171, baseType: !852, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !4456, file: !4457, line: 172, baseType: !4462, size: 64, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4447, line: 32, size: 64, elements: !4464)
!4464 = !{!4465, !4466}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4463, file: !4447, line: 33, baseType: !1501, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4463, file: !4447, line: 34, baseType: !1501, size: 32, offset: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !4451, file: !4447, line: 67, baseType: !4462, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !4421, file: !4422, line: 36, baseType: !95, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !4421, file: !4422, line: 37, baseType: !95, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !4421, file: !4422, line: 38, baseType: !95, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !4421, file: !4422, line: 39, baseType: !4472, size: 64, offset: 448)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!97}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !4421, file: !4422, line: 40, baseType: !2571, size: 64, offset: 512)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4421, file: !4422, line: 41, baseType: !4477, size: 64, offset: 576)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !4422, line: 26, size: 192, elements: !4479)
!4479 = !{!4480, !4481, !4482}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4478, file: !4422, line: 27, baseType: !95, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4478, file: !4422, line: 28, baseType: !95, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4478, file: !4422, line: 29, baseType: !97, size: 32, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4371, file: !280, line: 380, baseType: !4484, size: 256, offset: 256)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !280, line: 148, size: 256, elements: !4485)
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4484, file: !280, line: 149, baseType: !1069, size: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4484, file: !280, line: 150, baseType: !97, size: 32, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4484, file: !280, line: 151, baseType: !4489, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !280, line: 141, size: 256, elements: !4491)
!4491 = !{!4492, !4558, !4559, !4560}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4490, file: !280, line: 142, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !280, line: 138, baseType: !4494)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!290, !4497, !97, !4557}
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !280, line: 93, size: 67776, elements: !4499)
!4499 = !{!4500, !4503, !4506, !4509, !4510, !4511, !4512, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4537, !4540, !4541, !4542, !4550, !4551, !4552, !4553, !4554, !4555, !4556}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4498, file: !280, line: 94, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !280, line: 13, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4498, file: !280, line: 95, baseType: !4504, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !280, line: 15, flags: DIFlagFwdDecl)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !4498, file: !280, line: 96, baseType: !4507, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !280, line: 14, flags: DIFlagFwdDecl)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4498, file: !280, line: 97, baseType: !95, size: 64, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !4498, file: !280, line: 98, baseType: !97, size: 32, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4498, file: !280, line: 99, baseType: !1013, size: 256, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !4498, file: !280, line: 100, baseType: !4513, size: 64, offset: 576)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !4516, line: 10, flags: DIFlagFwdDecl)
!4516 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !4498, file: !280, line: 101, baseType: !114, size: 64, offset: 640)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4498, file: !280, line: 102, baseType: !95, size: 64, offset: 704)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !4498, file: !280, line: 103, baseType: !28, size: 32, offset: 768)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4498, file: !280, line: 104, baseType: !806, size: 64, offset: 832)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !4498, file: !280, line: 105, baseType: !28, size: 32, offset: 896)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !4498, file: !280, line: 106, baseType: !352, size: 64, offset: 960)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !4498, file: !280, line: 109, baseType: !4524, size: 33088, offset: 1024)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !4525, line: 14, size: 33088, elements: !4526)
!4525 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!4526 = !{!4527, !4528, !4535, !4536}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4524, file: !4525, line: 15, baseType: !2472, size: 32768)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4524, file: !4525, line: 16, baseType: !4529, size: 192, offset: 32768)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !4530, line: 18, size: 192, elements: !4531)
!4530 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!4531 = !{!4532, !4533, !4534}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4529, file: !4530, line: 19, baseType: !806, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4529, file: !4530, line: 20, baseType: !110, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4529, file: !4530, line: 21, baseType: !110, size: 64, offset: 128)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !4524, file: !4525, line: 17, baseType: !110, size: 64, offset: 32960)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4524, file: !4525, line: 18, baseType: !97, size: 32, offset: 33024)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !4498, file: !280, line: 111, baseType: !4538, size: 64, offset: 34112)
!4538 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1347, line: 913, baseType: !4539)
!4539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 64, elements: !1352)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !4498, file: !280, line: 114, baseType: !608, size: 8, offset: 34176)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4498, file: !280, line: 117, baseType: !4524, size: 33088, offset: 34240)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !4498, file: !280, line: 118, baseType: !4543, size: 64, offset: 67328)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !280, line: 79, size: 64, elements: !4545)
!4545 = !{!4546, !4547, !4548, !4549}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4544, file: !280, line: 80, baseType: !101, size: 16)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4544, file: !280, line: 81, baseType: !162, size: 8, offset: 16)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !4544, file: !280, line: 82, baseType: !162, size: 8, offset: 24)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4544, file: !280, line: 83, baseType: !97, size: 32, offset: 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !4498, file: !280, line: 119, baseType: !114, size: 64, offset: 67392)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !4498, file: !280, line: 120, baseType: !97, size: 32, offset: 67456)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !4498, file: !280, line: 121, baseType: !97, size: 32, offset: 67488)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4498, file: !280, line: 122, baseType: !97, size: 32, offset: 67520)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !4498, file: !280, line: 123, baseType: !411, size: 64, offset: 67584)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4498, file: !280, line: 125, baseType: !116, size: 64, offset: 67648)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4498, file: !280, line: 126, baseType: !352, size: 64, offset: 67712)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4490, file: !280, line: 143, baseType: !4493, size: 64, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !4490, file: !280, line: 144, baseType: !4493, size: 64, offset: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !4490, file: !280, line: 145, baseType: !4493, size: 64, offset: 192)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !4371, file: !280, line: 381, baseType: !806, size: 64, offset: 512)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4371, file: !280, line: 382, baseType: !4563, size: 64, offset: 576)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !271, line: 821, flags: DIFlagFwdDecl)
!4565 = !DIDerivedType(tag: DW_TAG_member, scope: !4371, file: !280, line: 387, baseType: !4566, size: 64, offset: 640)
!4566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4371, file: !280, line: 387, size: 64, elements: !4567)
!4567 = !{!4568, !4569}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4566, file: !280, line: 388, baseType: !95, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4566, file: !280, line: 389, baseType: !124, size: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4371, file: !280, line: 391, baseType: !95, size: 64, offset: 704)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4371, file: !280, line: 394, baseType: !97, size: 32, offset: 768)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !4371, file: !280, line: 397, baseType: !97, size: 32, offset: 800)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !4371, file: !280, line: 398, baseType: !4574, size: 64, offset: 832)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !4371, file: !280, line: 399, baseType: !4576, size: 64, offset: 896)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !280, line: 399, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !4371, file: !280, line: 401, baseType: !4579, size: 64, offset: 960)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!97, !4370, !3350}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3351, file: !271, line: 821, baseType: !4563, size: 64, offset: 8128)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3351, file: !271, line: 828, baseType: !4584, size: 64, offset: 8192)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !271, line: 1046, size: 1664, elements: !4586)
!4586 = !{!4587, !4588}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4585, file: !271, line: 1047, baseType: !2113, size: 1600)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4585, file: !271, line: 1048, baseType: !4589, size: 64, offset: 1600)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !271, line: 1039, size: 256, elements: !4591)
!4591 = !{!4592, !4593, !4594, !4595}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4590, file: !271, line: 1040, baseType: !411, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4590, file: !271, line: 1041, baseType: !411, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4590, file: !271, line: 1042, baseType: !411, size: 64, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4590, file: !271, line: 1043, baseType: !97, size: 32, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3351, file: !271, line: 832, baseType: !95, size: 64, offset: 8256)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3351, file: !271, line: 834, baseType: !172, size: 128, offset: 8320)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3351, file: !271, line: 842, baseType: !356, size: 32, offset: 8448)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3320, file: !3321, line: 461, baseType: !114, size: 64, offset: 704)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3320, file: !3321, line: 463, baseType: !114, size: 64, offset: 768)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3320, file: !3321, line: 465, baseType: !114, size: 64, offset: 832)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3320, file: !3321, line: 466, baseType: !114, size: 64, offset: 896)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3320, file: !3321, line: 467, baseType: !114, size: 64, offset: 960)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3320, file: !3321, line: 473, baseType: !4605, size: 64, offset: 1024)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3321, line: 10, flags: DIFlagFwdDecl)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3320, file: !3321, line: 480, baseType: !114, size: 64, offset: 1088)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3320, file: !3321, line: 482, baseType: !28, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3320, file: !3321, line: 491, baseType: !355, size: 32, offset: 1184)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3320, file: !3321, line: 501, baseType: !4611, size: 33792, offset: 1536)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4612, line: 448, size: 33792, elements: !4613)
!4612 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4613 = !{!4614, !4615, !4616, !4724, !4725, !4731, !4732}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4611, file: !4612, line: 461, baseType: !28, size: 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4611, file: !4612, line: 468, baseType: !114, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4611, file: !4612, line: 476, baseType: !4617, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4612, line: 356, size: 33280, align: 512, elements: !4619)
!4619 = !{!4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4618, file: !4612, line: 358, baseType: !28, size: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4618, file: !4612, line: 361, baseType: !28, size: 32, offset: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4618, file: !4612, line: 364, baseType: !411, size: 64, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4618, file: !4612, line: 367, baseType: !411, size: 64, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4618, file: !4612, line: 370, baseType: !411, size: 64, offset: 192)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4618, file: !4612, line: 373, baseType: !28, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4618, file: !4612, line: 376, baseType: !28, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4618, file: !4612, line: 391, baseType: !28, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4618, file: !4612, line: 394, baseType: !28, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4618, file: !4612, line: 397, baseType: !4630, size: 32768, offset: 512)
!4630 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4612, line: 348, size: 32768, elements: !4631)
!4631 = !{!4632, !4647, !4684, !4709, !4722}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4630, file: !4612, line: 349, baseType: !4633, size: 896)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4612, line: 12, size: 896, elements: !4634)
!4634 = !{!4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4646}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4633, file: !4612, line: 13, baseType: !355, size: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4633, file: !4612, line: 14, baseType: !355, size: 32, offset: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4633, file: !4612, line: 15, baseType: !355, size: 32, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4633, file: !4612, line: 16, baseType: !355, size: 32, offset: 96)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4633, file: !4612, line: 17, baseType: !355, size: 32, offset: 128)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4633, file: !4612, line: 18, baseType: !355, size: 32, offset: 160)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4633, file: !4612, line: 19, baseType: !355, size: 32, offset: 192)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4633, file: !4612, line: 22, baseType: !4643, size: 640, offset: 224)
!4643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 640, elements: !4644)
!4644 = !{!4645}
!4645 = !DISubrange(count: 20)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4633, file: !4612, line: 25, baseType: !355, size: 32, offset: 864)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4630, file: !4612, line: 350, baseType: !4648, size: 4096, align: 128)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4612, line: 34, size: 4096, align: 128, elements: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654, !4669, !4670, !4671, !4673, !4675, !4679}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4648, file: !4612, line: 35, baseType: !168, size: 16)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4648, file: !4612, line: 36, baseType: !168, size: 16, offset: 16)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4648, file: !4612, line: 37, baseType: !168, size: 16, offset: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4648, file: !4612, line: 38, baseType: !168, size: 16, offset: 48)
!4654 = !DIDerivedType(tag: DW_TAG_member, scope: !4648, file: !4612, line: 39, baseType: !4655, size: 128, offset: 64)
!4655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4648, file: !4612, line: 39, size: 128, elements: !4656)
!4656 = !{!4657, !4662}
!4657 = !DIDerivedType(tag: DW_TAG_member, scope: !4655, file: !4612, line: 40, baseType: !4658, size: 128)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4655, file: !4612, line: 40, size: 128, elements: !4659)
!4659 = !{!4660, !4661}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4658, file: !4612, line: 41, baseType: !411, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4658, file: !4612, line: 42, baseType: !411, size: 64, offset: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, scope: !4655, file: !4612, line: 44, baseType: !4663, size: 128)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4655, file: !4612, line: 44, size: 128, elements: !4664)
!4664 = !{!4665, !4666, !4667, !4668}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4663, file: !4612, line: 45, baseType: !355, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4663, file: !4612, line: 46, baseType: !355, size: 32, offset: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4663, file: !4612, line: 47, baseType: !355, size: 32, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4663, file: !4612, line: 48, baseType: !355, size: 32, offset: 96)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4648, file: !4612, line: 51, baseType: !355, size: 32, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4648, file: !4612, line: 52, baseType: !355, size: 32, offset: 224)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4648, file: !4612, line: 55, baseType: !4672, size: 1024, offset: 256)
!4672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1024, elements: !747)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4648, file: !4612, line: 58, baseType: !4674, size: 2048, offset: 1280)
!4674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 2048, elements: !910)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4648, file: !4612, line: 60, baseType: !4676, size: 384, offset: 3328)
!4676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, elements: !4677)
!4677 = !{!4678}
!4678 = !DISubrange(count: 12)
!4679 = !DIDerivedType(tag: DW_TAG_member, scope: !4648, file: !4612, line: 62, baseType: !4680, size: 384, offset: 3712)
!4680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4648, file: !4612, line: 62, size: 384, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4680, file: !4612, line: 63, baseType: !4676, size: 384)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4680, file: !4612, line: 64, baseType: !4676, size: 384)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4630, file: !4612, line: 351, baseType: !4685, size: 1088)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4612, line: 79, size: 1088, elements: !4686)
!4686 = !{!4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4708}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4685, file: !4612, line: 80, baseType: !355, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4685, file: !4612, line: 81, baseType: !355, size: 32, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4685, file: !4612, line: 82, baseType: !355, size: 32, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4685, file: !4612, line: 83, baseType: !355, size: 32, offset: 96)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4685, file: !4612, line: 84, baseType: !355, size: 32, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4685, file: !4612, line: 85, baseType: !355, size: 32, offset: 160)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4685, file: !4612, line: 86, baseType: !355, size: 32, offset: 192)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4685, file: !4612, line: 88, baseType: !4643, size: 640, offset: 224)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4685, file: !4612, line: 89, baseType: !158, size: 8, offset: 864)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4685, file: !4612, line: 90, baseType: !158, size: 8, offset: 872)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4685, file: !4612, line: 91, baseType: !158, size: 8, offset: 880)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4685, file: !4612, line: 92, baseType: !158, size: 8, offset: 888)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4685, file: !4612, line: 93, baseType: !158, size: 8, offset: 896)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4685, file: !4612, line: 94, baseType: !158, size: 8, offset: 904)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4685, file: !4612, line: 95, baseType: !4702, size: 64, offset: 960)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4704, line: 11, size: 128, elements: !4705)
!4704 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4705 = !{!4706, !4707}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4703, file: !4704, line: 12, baseType: !352, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4703, file: !4704, line: 13, baseType: !4358, size: 64, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4685, file: !4612, line: 96, baseType: !355, size: 32, offset: 1024)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4630, file: !4612, line: 352, baseType: !4710, size: 4608, align: 512)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4612, line: 333, size: 4608, align: 512, elements: !4711)
!4711 = !{!4712, !4713, !4720}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4710, file: !4612, line: 334, baseType: !4648, size: 4096, align: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4710, file: !4612, line: 335, baseType: !4714, size: 512, offset: 4096)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4612, line: 312, size: 512, elements: !4715)
!4715 = !{!4716, !4717, !4718}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4714, file: !4612, line: 313, baseType: !411, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4714, file: !4612, line: 314, baseType: !411, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4714, file: !4612, line: 315, baseType: !4719, size: 384, offset: 128)
!4719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 384, elements: !1656)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4710, file: !4612, line: 336, baseType: !4721, offset: 4608)
!4721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, elements: !1832)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4630, file: !4612, line: 353, baseType: !4723, size: 32768)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 32768, elements: !2473)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4611, file: !4612, line: 484, baseType: !4617, size: 64, offset: 192)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4611, file: !4612, line: 491, baseType: !4726, size: 128, offset: 256)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4612, line: 404, size: 128, elements: !4727)
!4727 = !{!4728, !4729, !4730}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4726, file: !4612, line: 424, baseType: !411, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4726, file: !4612, line: 432, baseType: !28, size: 32, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4726, file: !4612, line: 440, baseType: !28, size: 32, offset: 96)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4611, file: !4612, line: 498, baseType: !4726, size: 128, offset: 384)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4611, file: !4612, line: 508, baseType: !4618, size: 33280, align: 512, offset: 512)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1086, file: !1087, line: 31, baseType: !3934, size: 64, offset: 448)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1086, file: !1087, line: 32, baseType: !28, size: 32, offset: 512)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1086, file: !1087, line: 33, baseType: !1085, size: 64, offset: 576)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1086, file: !1087, line: 35, baseType: !4737, size: 64, offset: 640)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1087, line: 17, flags: DIFlagFwdDecl)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1086, file: !1087, line: 37, baseType: !1558, size: 64, offset: 704)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1086, file: !1087, line: 38, baseType: !1799, size: 64, offset: 768)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1086, file: !1087, line: 39, baseType: !97, size: 32, offset: 832)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1086, file: !1087, line: 40, baseType: !1591, size: 192, offset: 896)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1086, file: !1087, line: 42, baseType: !97, size: 32, offset: 1088)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1028, file: !305, line: 951, baseType: !296, size: 32, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1028, file: !305, line: 952, baseType: !676, size: 32, offset: 160)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1028, file: !305, line: 952, baseType: !676, size: 32, offset: 192)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1028, file: !305, line: 953, baseType: !97, size: 32, offset: 224)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !979, file: !305, line: 1012, baseType: !1974, size: 64, offset: 896)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !979, file: !305, line: 1013, baseType: !4750, size: 256, offset: 960)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !305, line: 970, size: 256, elements: !4751)
!4751 = !{!4752, !4753, !4754, !4755, !4756, !4757}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4750, file: !305, line: 971, baseType: !114, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4750, file: !305, line: 972, baseType: !28, size: 32, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4750, file: !305, line: 973, baseType: !28, size: 32, offset: 96)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4750, file: !305, line: 974, baseType: !28, size: 32, offset: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4750, file: !305, line: 975, baseType: !28, size: 32, offset: 160)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4750, file: !305, line: 976, baseType: !116, size: 64, offset: 192)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !979, file: !305, line: 1014, baseType: !4759, size: 128, offset: 1216)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4760, line: 8, size: 128, elements: !4761)
!4760 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4761 = !{!4762, !4763}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4759, file: !4760, line: 9, baseType: !811, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4759, file: !4760, line: 10, baseType: !705, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !979, file: !305, line: 1015, baseType: !670, size: 64, offset: 1344)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !979, file: !305, line: 1016, baseType: !4766, size: 64, offset: 1408)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4768)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !305, line: 1914, size: 2112, elements: !4769)
!4769 = !{!4770, !4771, !4775, !4779, !4783, !4861, !4862, !4868, !4881, !4885, !4889, !4890, !4894, !4895, !4899, !4904, !4905, !4909, !4913, !4919, !4920, !4924, !4925, !4929, !4933, !4937, !4942, !4946, !4950, !4954, !4958, !4959, !4965}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4768, file: !305, line: 1915, baseType: !852, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4768, file: !305, line: 1916, baseType: !4772, size: 64, offset: 64)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!116, !978, !116, !97}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4768, file: !305, line: 1917, baseType: !4776, size: 64, offset: 128)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!937, !978, !806, !110, !115}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4768, file: !305, line: 1918, baseType: !4780, size: 64, offset: 192)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!937, !978, !92, !110, !115}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4768, file: !305, line: 1919, baseType: !4784, size: 64, offset: 256)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!937, !4787, !4809}
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !305, line: 373, size: 384, elements: !4789)
!4789 = !{!4790, !4791, !4792, !4796, !4797, !4798, !4799}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4788, file: !305, line: 374, baseType: !978, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4788, file: !305, line: 375, baseType: !116, size: 64, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4788, file: !305, line: 376, baseType: !4793, size: 64, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !4787, !352}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4788, file: !305, line: 377, baseType: !95, size: 64, offset: 192)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4788, file: !305, line: 378, baseType: !97, size: 32, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4788, file: !305, line: 379, baseType: !168, size: 16, offset: 288)
!4799 = !DIDerivedType(tag: DW_TAG_member, scope: !4788, file: !305, line: 380, baseType: !4800, size: 64, offset: 320)
!4800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4788, file: !305, line: 380, size: 64, elements: !4801)
!4801 = !{!4802, !4805}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4800, file: !305, line: 386, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !305, line: 386, flags: DIFlagFwdDecl)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4800, file: !305, line: 395, baseType: !4806, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!937, !95}
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !4811, line: 41, size: 320, elements: !4812)
!4811 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!4812 = !{!4813, !4814, !4815, !4816, !4817, !4818, !4823, !4856}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !4810, file: !4811, line: 42, baseType: !158, size: 8)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !4810, file: !4811, line: 43, baseType: !608, size: 8, offset: 8)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !4810, file: !4811, line: 44, baseType: !608, size: 8, offset: 16)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !4810, file: !4811, line: 45, baseType: !608, size: 8, offset: 24)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !4810, file: !4811, line: 46, baseType: !608, size: 8, offset: 32)
!4818 = !DIDerivedType(tag: DW_TAG_member, scope: !4810, file: !4811, line: 47, baseType: !4819, size: 64, offset: 64)
!4819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4810, file: !4811, line: 47, size: 64, elements: !4820)
!4820 = !{!4821, !4822}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !4819, file: !4811, line: 48, baseType: !110, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !4819, file: !4811, line: 49, baseType: !97, size: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, scope: !4810, file: !4811, line: 61, baseType: !4824, size: 128, offset: 128)
!4824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4810, file: !4811, line: 61, size: 128, elements: !4825)
!4825 = !{!4826, !4832}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !4824, file: !4811, line: 67, baseType: !4827, size: 128)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !4828, line: 17, size: 128, elements: !4829)
!4828 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!4829 = !{!4830, !4831}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !4827, file: !4828, line: 19, baseType: !95, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !4827, file: !4828, line: 20, baseType: !111, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, scope: !4824, file: !4811, line: 68, baseType: !4833, size: 128)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4824, file: !4811, line: 68, size: 128, elements: !4834)
!4834 = !{!4835, !4855}
!4835 = !DIDerivedType(tag: DW_TAG_member, scope: !4833, file: !4811, line: 69, baseType: !4836, size: 64)
!4836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4833, file: !4811, line: 69, size: 64, elements: !4837)
!4837 = !{!4838, !4841, !4848, !4852, !4854}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !4836, file: !4811, line: 71, baseType: !4839, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4827)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !4836, file: !4811, line: 72, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4844)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !4811, line: 17, size: 128, elements: !4845)
!4845 = !{!4846, !4847}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !4844, file: !4811, line: 18, baseType: !95, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !4844, file: !4811, line: 19, baseType: !110, size: 64, offset: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !4836, file: !4811, line: 73, baseType: !4849, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4851)
!4851 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !4811, line: 73, flags: DIFlagFwdDecl)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !4836, file: !4811, line: 74, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !4836, file: !4811, line: 75, baseType: !95, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4833, file: !4811, line: 77, baseType: !110, size: 64, offset: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, scope: !4810, file: !4811, line: 80, baseType: !4857, size: 64, offset: 256)
!4857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4810, file: !4811, line: 80, size: 64, elements: !4858)
!4858 = !{!4859, !4860}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !4857, file: !4811, line: 81, baseType: !114, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !4857, file: !4811, line: 82, baseType: !116, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4768, file: !305, line: 1920, baseType: !4784, size: 64, offset: 320)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4768, file: !305, line: 1921, baseType: !4863, size: 64, offset: 384)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!97, !4787, !4866, !28}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !305, line: 53, flags: DIFlagFwdDecl)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4768, file: !305, line: 1923, baseType: !4869, size: 64, offset: 448)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!97, !978, !4872}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !305, line: 1858, size: 128, elements: !4874)
!4874 = !{!4875, !4880}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4873, file: !305, line: 1859, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !305, line: 1855, baseType: !4877)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!608, !4872, !92, !97, !116, !411, !28}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4873, file: !305, line: 1860, baseType: !116, size: 64, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4768, file: !305, line: 1924, baseType: !4882, size: 64, offset: 512)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!2401, !978, !2403}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4768, file: !305, line: 1925, baseType: !4886, size: 64, offset: 576)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!352, !978, !28, !114}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4768, file: !305, line: 1926, baseType: !4886, size: 64, offset: 640)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4768, file: !305, line: 1927, baseType: !4891, size: 64, offset: 704)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!97, !978, !2234}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4768, file: !305, line: 1928, baseType: !114, size: 64, offset: 768)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4768, file: !305, line: 1929, baseType: !4896, size: 64, offset: 832)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!97, !670, !978}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4768, file: !305, line: 1930, baseType: !4900, size: 64, offset: 896)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!97, !978, !4903}
!4903 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !305, line: 1061, baseType: !95)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4768, file: !305, line: 1931, baseType: !4896, size: 64, offset: 960)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4768, file: !305, line: 1932, baseType: !4906, size: 64, offset: 1024)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!97, !978, !116, !116, !97}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4768, file: !305, line: 1933, baseType: !4910, size: 64, offset: 1088)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!97, !97, !978, !97}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4768, file: !305, line: 1934, baseType: !4914, size: 64, offset: 1152)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!97, !978, !97, !4917}
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !305, line: 1063, flags: DIFlagFwdDecl)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4768, file: !305, line: 1935, baseType: !1425, size: 64, offset: 1216)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4768, file: !305, line: 1936, baseType: !4921, size: 64, offset: 1280)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!97, !97}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4768, file: !305, line: 1937, baseType: !4914, size: 64, offset: 1344)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4768, file: !305, line: 1938, baseType: !4926, size: 64, offset: 1408)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!937, !3188, !978, !115, !110, !28}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4768, file: !305, line: 1939, baseType: !4930, size: 64, offset: 1472)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!937, !978, !115, !3188, !110, !28}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4768, file: !305, line: 1940, baseType: !4934, size: 64, offset: 1536)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{null, !978}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4768, file: !305, line: 1941, baseType: !4938, size: 64, offset: 1600)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!97, !978, !97, !4941, !3945}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4768, file: !305, line: 1942, baseType: !4943, size: 64, offset: 1664)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!352, !978, !97, !116, !116}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4768, file: !305, line: 1944, baseType: !4947, size: 64, offset: 1728)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{null, !2177, !978}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4768, file: !305, line: 1948, baseType: !4951, size: 64, offset: 1792)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!937, !978, !116, !978, !116, !110, !28}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4768, file: !305, line: 1950, baseType: !4955, size: 64, offset: 1856)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!116, !978, !116, !978, !116, !116, !28}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4768, file: !305, line: 1953, baseType: !4906, size: 64, offset: 1920)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4768, file: !305, line: 1954, baseType: !4960, size: 64, offset: 1984)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!97, !4963, !28}
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !305, line: 1911, flags: DIFlagFwdDecl)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4768, file: !305, line: 1955, baseType: !4966, size: 64, offset: 2048)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!97, !4963, !4866, !28}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !979, file: !305, line: 1018, baseType: !411, size: 64, offset: 1472)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !979, file: !305, line: 1020, baseType: !95, size: 64, offset: 1536)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !979, file: !305, line: 1023, baseType: !95, size: 64, offset: 1600)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !979, file: !305, line: 1027, baseType: !4574, size: 64, offset: 1664)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !979, file: !305, line: 1029, baseType: !666, size: 64, offset: 1728)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !979, file: !305, line: 1030, baseType: !4975, size: 32, offset: 1792)
!4975 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4976, line: 8, baseType: !355)
!4976 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !979, file: !305, line: 1031, baseType: !4975, size: 32, offset: 1824)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !965, file: !931, line: 182, baseType: !975, size: 64, offset: 384)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !965, file: !931, line: 184, baseType: !4980, size: 64, offset: 448)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!97, !978, !871, !964, !2234}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !953, file: !931, line: 90, baseType: !4984, size: 64, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !953, file: !931, line: 91, baseType: !4986, size: 64, offset: 256)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !921, file: !866, line: 120, baseType: !4988, size: 64, offset: 192)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!3792, !889}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !921, file: !866, line: 121, baseType: !4992, size: 64, offset: 256)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!582, !889}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !921, file: !866, line: 122, baseType: !4996, size: 64, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{null, !889, !1780, !1781}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !865, file: !866, line: 70, baseType: !2132, size: 64, offset: 384)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !865, file: !866, line: 71, baseType: !5001, size: 32, offset: 448)
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5002, line: 19, size: 32, elements: !5003)
!5002 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5003 = !{!5004}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5001, file: !5002, line: 20, baseType: !1056, size: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !865, file: !866, line: 73, baseType: !28, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !865, file: !866, line: 74, baseType: !28, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !865, file: !866, line: 75, baseType: !28, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !865, file: !866, line: 76, baseType: !28, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !865, file: !866, line: 77, baseType: !28, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !862, file: !76, line: 47, baseType: !852, size: 64, offset: 512)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !862, file: !76, line: 48, baseType: !871, size: 64, offset: 576)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !862, file: !76, line: 49, baseType: !5013, size: 64, offset: 640)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !76, line: 49, flags: DIFlagFwdDecl)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !862, file: !76, line: 50, baseType: !1754, size: 64, offset: 704)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !853, file: !76, line: 418, baseType: !5017, size: 64, offset: 1408)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !76, line: 53, size: 448, elements: !5019)
!5019 = !{!5020, !5021, !5026, !5030, !5034, !5038}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5018, file: !76, line: 54, baseType: !941, size: 128)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5018, file: !76, line: 55, baseType: !5022, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!937, !5017, !5025, !806}
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5018, file: !76, line: 57, baseType: !5027, size: 64, offset: 192)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!937, !5017, !5025, !92, !110}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5018, file: !76, line: 59, baseType: !5031, size: 64, offset: 256)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{null, !852, !92}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5018, file: !76, line: 60, baseType: !5035, size: 64, offset: 320)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!97, !852}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5018, file: !76, line: 61, baseType: !5039, size: 64, offset: 384)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !852}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !853, file: !76, line: 419, baseType: !92, size: 64, offset: 1472)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !853, file: !76, line: 420, baseType: !92, size: 64, offset: 1536)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !853, file: !76, line: 421, baseType: !871, size: 64, offset: 1600)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !853, file: !76, line: 424, baseType: !5046, size: 64, offset: 1664)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5048)
!5048 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !76, line: 424, flags: DIFlagFwdDecl)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !853, file: !76, line: 425, baseType: !5050, size: 64, offset: 1728)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !853, file: !76, line: 426, baseType: !28, size: 32, offset: 1792)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !853, file: !76, line: 435, baseType: !1013, size: 256, offset: 1856)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !853, file: !76, line: 437, baseType: !5055, size: 64, offset: 2112)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5057, line: 69, size: 320, elements: !5058)
!5057 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5058 = !{!5059, !5060, !5061, !5078, !5080, !5084, !5085}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5056, file: !5057, line: 70, baseType: !92, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5056, file: !5057, line: 71, baseType: !852, size: 64, offset: 64)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5056, file: !5057, line: 72, baseType: !5062, size: 64, offset: 128)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5064)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5057, line: 47, size: 256, elements: !5065)
!5065 = !{!5066, !5067, !5073, !5077}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5064, file: !5057, line: 49, baseType: !28, size: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5064, file: !5057, line: 51, baseType: !5068, size: 64, offset: 64)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!97, !92, !5071}
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5056)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5064, file: !5057, line: 53, baseType: !5074, size: 64, offset: 128)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!97, !806, !5071}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5064, file: !5057, line: 55, baseType: !3816, size: 64, offset: 192)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5056, file: !5057, line: 73, baseType: !5079, size: 16, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5056, file: !5057, line: 74, baseType: !5081, size: 8, offset: 208)
!5081 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !159, line: 16, baseType: !5082)
!5082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !161, line: 20, baseType: !5083)
!5083 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5056, file: !5057, line: 75, baseType: !158, size: 8, offset: 216)
!5085 = !DIDerivedType(tag: DW_TAG_member, scope: !5056, file: !5057, line: 76, baseType: !5086, size: 64, offset: 256)
!5086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5056, file: !5057, line: 76, size: 64, elements: !5087)
!5087 = !{!5088, !5089, !5096}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5086, file: !5057, line: 77, baseType: !95, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5086, file: !5057, line: 78, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5092)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5057, line: 86, size: 128, elements: !5093)
!5093 = !{!5094, !5095}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5092, file: !5057, line: 87, baseType: !28, size: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5092, file: !5057, line: 88, baseType: !806, size: 64, offset: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5086, file: !5057, line: 79, baseType: !5097, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5099)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5057, line: 92, size: 256, elements: !5100)
!5100 = !{!5101, !5102, !5103, !5105, !5106}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5099, file: !5057, line: 94, baseType: !28, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5099, file: !5057, line: 95, baseType: !28, size: 32, offset: 32)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5099, file: !5057, line: 96, baseType: !5104, size: 64, offset: 64)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5099, file: !5057, line: 97, baseType: !5062, size: 64, offset: 128)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5099, file: !5057, line: 98, baseType: !95, size: 64, offset: 192)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !853, file: !76, line: 438, baseType: !28, size: 32, offset: 2176)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !853, file: !76, line: 441, baseType: !28, size: 32, offset: 2208)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !853, file: !76, line: 442, baseType: !5046, size: 64, offset: 2240)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !853, file: !76, line: 443, baseType: !5050, size: 64, offset: 2304)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !853, file: !76, line: 444, baseType: !608, size: 8, offset: 2368)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !853, file: !76, line: 451, baseType: !608, size: 8, offset: 2376)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !853, file: !76, line: 454, baseType: !28, size: 32, offset: 2400)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !853, file: !76, line: 455, baseType: !5115, size: 64, offset: 2432)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5117, line: 23, size: 96, elements: !5118)
!5117 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5118 = !{!5119, !5120, !5121}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5116, file: !5117, line: 24, baseType: !97, size: 32)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5116, file: !5117, line: 24, baseType: !97, size: 32, offset: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5116, file: !5117, line: 24, baseType: !97, size: 32, offset: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !853, file: !76, line: 458, baseType: !4472, size: 64, offset: 2496)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !853, file: !76, line: 460, baseType: !5124, size: 4032, align: 512, offset: 2560)
!5124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5125, size: 4032, elements: !5139)
!5125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !76, line: 362, size: 576, elements: !5126)
!5126 = !{!5127, !5128, !5129}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5125, file: !76, line: 363, baseType: !95, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5125, file: !76, line: 364, baseType: !28, size: 32, offset: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5125, file: !76, line: 367, baseType: !5130, size: 448, offset: 128)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !76, line: 319, size: 448, elements: !5131)
!5131 = !{!5132, !5133}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5130, file: !76, line: 320, baseType: !852, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5130, file: !76, line: 321, baseType: !5134, size: 384, offset: 64)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5135, line: 40, size: 384, elements: !5136)
!5135 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5136 = !{!5137}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5134, file: !5135, line: 41, baseType: !5138, size: 384, align: 64)
!5138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1154, size: 384, align: 64, elements: !2749)
!5139 = !{!5140}
!5140 = !DISubrange(count: 7)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !853, file: !76, line: 463, baseType: !5142, size: 192, offset: 6592)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5143, line: 8, size: 192, elements: !5144)
!5143 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5144 = !{!5145, !5146, !5147}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5142, file: !5143, line: 10, baseType: !28, size: 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5142, file: !5143, line: 11, baseType: !1937, size: 64, offset: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5142, file: !5143, line: 12, baseType: !5148, size: 64, offset: 128)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5150, line: 59, size: 48, elements: !5151)
!5150 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5151 = !{!5152, !5153, !5154, !5155, !5156, !5157}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5149, file: !5150, line: 60, baseType: !1549, size: 16)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5149, file: !5150, line: 61, baseType: !1549, size: 16, offset: 16)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5149, file: !5150, line: 63, baseType: !28, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5149, file: !5150, line: 64, baseType: !28, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5149, file: !5150, line: 65, baseType: !28, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5149, file: !5150, line: 66, baseType: !28, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !853, file: !76, line: 465, baseType: !114, size: 64, offset: 6784)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !853, file: !76, line: 469, baseType: !28, size: 32, offset: 6848)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !853, file: !76, line: 470, baseType: !172, size: 128, offset: 6912)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !853, file: !76, line: 471, baseType: !5162, size: 64, offset: 7040)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5164, line: 33, size: 96, elements: !5165)
!5164 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5165 = !{!5166, !5167, !5168, !5169}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5163, file: !5164, line: 37, baseType: !97, size: 32)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5163, file: !5164, line: 43, baseType: !97, size: 32, offset: 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5163, file: !5164, line: 45, baseType: !101, size: 16, offset: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5163, file: !5164, line: 47, baseType: !101, size: 16, offset: 80)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !853, file: !76, line: 476, baseType: !5171, size: 64, offset: 7104)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !76, line: 378, size: 256, elements: !5173)
!5173 = !{!5174, !5190, !5191, !5192}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5172, file: !76, line: 379, baseType: !5175, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5177, line: 204, baseType: !5178)
!5177 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5177, line: 197, size: 192, elements: !5179)
!5179 = !{!5180, !5182, !5183, !5184, !5186, !5188}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5178, file: !5177, line: 198, baseType: !5181, size: 32)
!5181 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5177, line: 21, baseType: !356)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5178, file: !5177, line: 199, baseType: !162, size: 8, offset: 32)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5178, file: !5177, line: 200, baseType: !162, size: 8, offset: 40)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5178, file: !5177, line: 201, baseType: !5185, size: 16, offset: 48)
!5185 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5177, line: 17, baseType: !169)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5178, file: !5177, line: 202, baseType: !5187, size: 64, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5177, line: 16, baseType: !412)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5178, file: !5177, line: 203, baseType: !5189, size: 64, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5177, line: 22, baseType: !412)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5172, file: !76, line: 380, baseType: !28, size: 32, offset: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5172, file: !76, line: 381, baseType: !806, size: 64, offset: 128)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5172, file: !76, line: 382, baseType: !806, size: 64, offset: 192)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !853, file: !76, line: 477, baseType: !5172, size: 256, offset: 7168)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !853, file: !76, line: 480, baseType: !5195, size: 64, offset: 7424)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !76, line: 480, flags: DIFlagFwdDecl)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !853, file: !76, line: 483, baseType: !5198, size: 64, offset: 7488)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !76, line: 483, flags: DIFlagFwdDecl)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !853, file: !76, line: 488, baseType: !806, size: 64, offset: 7552)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !853, file: !76, line: 492, baseType: !95, size: 64, offset: 7616)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !853, file: !76, line: 493, baseType: !28, size: 32, offset: 7680)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !853, file: !76, line: 495, baseType: !95, size: 64, offset: 7744)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !853, file: !76, line: 496, baseType: !28, size: 32, offset: 7808)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !853, file: !76, line: 499, baseType: !28, size: 32, offset: 7840)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !853, file: !76, line: 500, baseType: !5207, size: 64, offset: 7872)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4422, line: 45, baseType: !4398)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !853, file: !76, line: 503, baseType: !28, size: 32, offset: 7936)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !853, file: !76, line: 504, baseType: !5211, size: 64, offset: 8000)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5214, line: 96, size: 192, elements: !5215)
!5214 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5215 = !{!5216, !5217, !5259, !5262}
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5213, file: !5214, line: 97, baseType: !28, size: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5213, file: !5214, line: 98, baseType: !5218, size: 64, offset: 64)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5214, line: 24, size: 3072, elements: !5220)
!5220 = !{!5221, !5223, !5224, !5225, !5226, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5256, !5257, !5258}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5219, file: !5214, line: 26, baseType: !5222, size: 128)
!5222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 128, elements: !2749)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5219, file: !5214, line: 27, baseType: !5222, size: 128, offset: 128)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5219, file: !5214, line: 28, baseType: !97, size: 32, offset: 256)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5219, file: !5214, line: 31, baseType: !134, size: 32, align: 512, offset: 512)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5219, file: !5214, line: 32, baseType: !5227, size: 960, offset: 576)
!5227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5228, line: 206, size: 960, elements: !5229)
!5228 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5229 = !{!5230, !5231, !5234, !5236, !5237, !5238}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5227, file: !5228, line: 207, baseType: !994, size: 64)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5227, file: !5228, line: 208, baseType: !5232, size: 256, offset: 64)
!5232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5233, size: 256, elements: !1074)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5227, file: !5228, line: 209, baseType: !5235, size: 256, offset: 320)
!5235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !1074)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5227, file: !5228, line: 213, baseType: !352, size: 64, offset: 576)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5227, file: !5228, line: 215, baseType: !1815, size: 256, offset: 640)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5227, file: !5228, line: 216, baseType: !158, size: 8, offset: 896)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5219, file: !5214, line: 33, baseType: !114, size: 64, offset: 1536)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5219, file: !5214, line: 34, baseType: !114, size: 64, offset: 1600)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5219, file: !5214, line: 35, baseType: !608, size: 8, offset: 1664)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5219, file: !5214, line: 36, baseType: !2437, size: 320, offset: 1728)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5219, file: !5214, line: 37, baseType: !1716, size: 256, offset: 2048)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5219, file: !5214, line: 38, baseType: !991, size: 128, align: 64, offset: 2304)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5219, file: !5214, line: 39, baseType: !5246, size: 64, offset: 2432)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5214, line: 49, size: 768, elements: !5248)
!5248 = !{!5249, !5250, !5251, !5252, !5253, !5254, !5255}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5247, file: !5214, line: 50, baseType: !134, size: 32)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5247, file: !5214, line: 51, baseType: !5235, size: 256, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5247, file: !5214, line: 53, baseType: !5235, size: 256, offset: 320)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5247, file: !5214, line: 54, baseType: !114, size: 64, offset: 576)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5247, file: !5214, line: 55, baseType: !5246, size: 64, offset: 640)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5247, file: !5214, line: 56, baseType: !97, size: 32, offset: 704)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5247, file: !5214, line: 57, baseType: !97, size: 32, offset: 736)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5219, file: !5214, line: 40, baseType: !114, size: 64, offset: 2496)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5219, file: !5214, line: 42, baseType: !97, size: 32, offset: 2560)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5219, file: !5214, line: 43, baseType: !5212, size: 64, offset: 2624)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5213, file: !5214, line: 99, baseType: !5260, offset: 128)
!5260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !5261, line: 211, elements: !1421)
!5261 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5213, file: !5214, line: 100, baseType: !5263, size: 64, offset: 128)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5214, line: 63, size: 3008, elements: !5265)
!5265 = !{!5266, !5267, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5295}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5264, file: !5214, line: 64, baseType: !5246, size: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5264, file: !5214, line: 65, baseType: !5268, size: 192, offset: 64)
!5268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5246, size: 192, elements: !906)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5264, file: !5214, line: 67, baseType: !97, size: 32, offset: 256)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5264, file: !5214, line: 68, baseType: !1013, size: 256, offset: 320)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5264, file: !5214, line: 69, baseType: !134, size: 32, offset: 576)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5264, file: !5214, line: 70, baseType: !1013, size: 256, offset: 640)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5264, file: !5214, line: 71, baseType: !114, size: 64, offset: 896)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5264, file: !5214, line: 72, baseType: !114, size: 64, offset: 960)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5264, file: !5214, line: 73, baseType: !114, size: 64, offset: 1024)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5264, file: !5214, line: 74, baseType: !114, size: 64, offset: 1088)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5264, file: !5214, line: 75, baseType: !114, size: 64, offset: 1152)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5264, file: !5214, line: 76, baseType: !114, size: 64, offset: 1216)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5264, file: !5214, line: 77, baseType: !114, size: 64, offset: 1280)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5264, file: !5214, line: 78, baseType: !114, size: 64, offset: 1344)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5264, file: !5214, line: 79, baseType: !608, size: 8, offset: 1408)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5264, file: !5214, line: 80, baseType: !114, size: 64, offset: 1472)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5264, file: !5214, line: 81, baseType: !1013, size: 256, offset: 1536)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5264, file: !5214, line: 82, baseType: !1755, size: 256, offset: 1792)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5264, file: !5214, line: 84, baseType: !124, size: 32, offset: 2048)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5264, file: !5214, line: 87, baseType: !114, size: 64, offset: 2112)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5264, file: !5214, line: 88, baseType: !114, size: 64, offset: 2176)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5264, file: !5214, line: 89, baseType: !5289, size: 704, offset: 2240)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1717, line: 111, size: 704, elements: !5290)
!5290 = !{!5291, !5292, !5293, !5294}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5289, file: !1717, line: 112, baseType: !1716, size: 256)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5289, file: !1717, line: 113, baseType: !2437, size: 320, offset: 256)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5289, file: !1717, line: 116, baseType: !2672, size: 64, offset: 576)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5289, file: !1717, line: 117, baseType: !97, size: 32, offset: 640)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5264, file: !5214, line: 90, baseType: !5212, size: 64, offset: 2944)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !853, file: !76, line: 515, baseType: !4435, size: 64, offset: 8064)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !853, file: !76, line: 516, baseType: !28, size: 32, offset: 8128)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !853, file: !76, line: 519, baseType: !28, size: 32, offset: 8160)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !853, file: !76, line: 520, baseType: !3708, size: 64, offset: 8192)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !853, file: !76, line: 523, baseType: !5301, size: 64, offset: 8256)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !853, file: !76, line: 524, baseType: !28, size: 32, offset: 8320)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !853, file: !76, line: 525, baseType: !5304, size: 64, offset: 8384)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !5307, line: 28, size: 192, elements: !5308)
!5307 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!5308 = !{!5309, !5310, !5311}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !5306, file: !5307, line: 29, baseType: !92, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !5306, file: !5307, line: 30, baseType: !92, size: 64, offset: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !5306, file: !5307, line: 31, baseType: !114, size: 64, offset: 128)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !853, file: !76, line: 526, baseType: !28, size: 32, offset: 8448)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !853, file: !76, line: 533, baseType: !95, size: 64, offset: 8512)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !853, file: !76, line: 534, baseType: !28, size: 32, offset: 8576)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !853, file: !76, line: 535, baseType: !5316, size: 64, offset: 8640)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !853, file: !76, line: 536, baseType: !28, size: 32, offset: 8704)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !853, file: !76, line: 539, baseType: !97, size: 32, offset: 8736)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !853, file: !76, line: 540, baseType: !4462, size: 64, offset: 8768)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !853, file: !76, line: 563, baseType: !172, size: 128, offset: 8832)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !853, file: !76, line: 565, baseType: !172, size: 128, offset: 8960)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !853, file: !76, line: 568, baseType: !2571, size: 64, offset: 9088)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !853, file: !76, line: 570, baseType: !124, size: 32, offset: 9152)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !829, file: !305, line: 2382, baseType: !828, size: 64, offset: 448)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !829, file: !305, line: 2383, baseType: !1065, size: 64, offset: 512)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !829, file: !305, line: 2385, baseType: !5327, offset: 576)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !5261, line: 206, elements: !1421)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !829, file: !305, line: 2386, baseType: !5327, offset: 576)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !829, file: !305, line: 2387, baseType: !5327, offset: 576)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !829, file: !305, line: 2388, baseType: !5331, offset: 576)
!5331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5327, elements: !906)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !829, file: !305, line: 2390, baseType: !5327, offset: 576)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !829, file: !305, line: 2391, baseType: !5327, offset: 576)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !829, file: !305, line: 2392, baseType: !5327, offset: 576)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !829, file: !305, line: 2393, baseType: !5327, offset: 576)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !818, file: !305, line: 1197, baseType: !5337, size: 64, offset: 384)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5339)
!5339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !305, line: 2057, size: 1664, elements: !5340)
!5340 = !{!5341, !5345, !5349, !5350, !5354, !5360, !5364, !5365, !5366, !5370, !5374, !5378, !5379, !5380, !5386, !5390, !5391, !5395, !5396, !5397, !5398, !5402, !5406, !5453, !5468, !5469}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !5339, file: !305, line: 2058, baseType: !5342, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!670, !817}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !5339, file: !305, line: 2059, baseType: !5346, size: 64, offset: 64)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{null, !670}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5339, file: !305, line: 2060, baseType: !5346, size: 64, offset: 128)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !5339, file: !305, line: 2062, baseType: !5351, size: 64, offset: 192)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{null, !670, !97}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !5339, file: !305, line: 2063, baseType: !5355, size: 64, offset: 256)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!97, !670, !5358}
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !305, line: 309, flags: DIFlagFwdDecl)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !5339, file: !305, line: 2064, baseType: !5361, size: 64, offset: 320)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!97, !670}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !5339, file: !305, line: 2065, baseType: !5346, size: 64, offset: 384)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !5339, file: !305, line: 2066, baseType: !848, size: 64, offset: 448)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !5339, file: !305, line: 2067, baseType: !5367, size: 64, offset: 512)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{!97, !817, !97}
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !5339, file: !305, line: 2068, baseType: !5371, size: 64, offset: 576)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!97, !817, !304}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !5339, file: !305, line: 2069, baseType: !5375, size: 64, offset: 640)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!97, !817}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !5339, file: !305, line: 2070, baseType: !5371, size: 64, offset: 704)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !5339, file: !305, line: 2071, baseType: !5375, size: 64, offset: 768)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !5339, file: !305, line: 2072, baseType: !5381, size: 64, offset: 832)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!97, !705, !5384}
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !305, line: 62, flags: DIFlagFwdDecl)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !5339, file: !305, line: 2073, baseType: !5387, size: 64, offset: 896)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!97, !817, !1937, !806}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !5339, file: !305, line: 2074, baseType: !848, size: 64, offset: 960)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !5339, file: !305, line: 2076, baseType: !5392, size: 64, offset: 1024)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!97, !2177, !705}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !5339, file: !305, line: 2077, baseType: !5392, size: 64, offset: 1088)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !5339, file: !305, line: 2078, baseType: !5392, size: 64, offset: 1152)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !5339, file: !305, line: 2079, baseType: !5392, size: 64, offset: 1216)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !5339, file: !305, line: 2081, baseType: !5399, size: 64, offset: 1280)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!937, !817, !97, !806, !110, !116}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !5339, file: !305, line: 2082, baseType: !5403, size: 64, offset: 1344)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!937, !817, !97, !92, !110, !116}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !5339, file: !305, line: 2083, baseType: !5407, size: 64, offset: 1408)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!5410, !670}
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !310, line: 296, size: 1664, elements: !5413)
!5413 = !{!5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5438, !5439, !5440}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !5412, file: !310, line: 297, baseType: !1069, size: 128)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !5412, file: !310, line: 298, baseType: !172, size: 128, offset: 128)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !5412, file: !310, line: 299, baseType: !172, size: 128, offset: 256)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !5412, file: !310, line: 300, baseType: !172, size: 128, offset: 384)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !5412, file: !310, line: 301, baseType: !1013, size: 256, offset: 512)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !5412, file: !310, line: 302, baseType: !134, size: 32, offset: 768)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !5412, file: !310, line: 303, baseType: !124, size: 32, offset: 800)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !5412, file: !310, line: 304, baseType: !817, size: 64, offset: 832)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !5412, file: !310, line: 305, baseType: !5423, size: 64, offset: 896)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !310, line: 68, size: 64, elements: !5424)
!5424 = !{!5425, !5437}
!5425 = !DIDerivedType(tag: DW_TAG_member, scope: !5423, file: !310, line: 69, baseType: !5426, size: 32)
!5426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5423, file: !310, line: 69, size: 32, elements: !5427)
!5427 = !{!5428, !5429, !5430}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5426, file: !310, line: 70, baseType: !676, size: 32)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5426, file: !310, line: 71, baseType: !685, size: 32)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !5426, file: !310, line: 72, baseType: !5431, size: 32)
!5431 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !5432, line: 24, baseType: !5433)
!5432 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5432, line: 22, size: 32, elements: !5434)
!5434 = !{!5435}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5433, file: !5432, line: 23, baseType: !5436, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !5432, line: 20, baseType: !682)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5423, file: !310, line: 74, baseType: !309, size: 32, offset: 32)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !5412, file: !310, line: 306, baseType: !116, size: 64, offset: 960)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !5412, file: !310, line: 307, baseType: !114, size: 64, offset: 1024)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !5412, file: !310, line: 308, baseType: !5441, size: 576, offset: 1088)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !310, line: 205, size: 576, elements: !5442)
!5442 = !{!5443, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !5441, file: !310, line: 206, baseType: !5444, size: 64)
!5444 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !310, line: 66, baseType: !118)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !5441, file: !310, line: 207, baseType: !5444, size: 64, offset: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !5441, file: !310, line: 208, baseType: !5444, size: 64, offset: 128)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !5441, file: !310, line: 209, baseType: !5444, size: 64, offset: 192)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !5441, file: !310, line: 210, baseType: !5444, size: 64, offset: 256)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !5441, file: !310, line: 211, baseType: !5444, size: 64, offset: 320)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !5441, file: !310, line: 212, baseType: !5444, size: 64, offset: 384)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !5441, file: !310, line: 213, baseType: !1627, size: 64, offset: 448)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !5441, file: !310, line: 214, baseType: !1627, size: 64, offset: 512)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !5339, file: !305, line: 2085, baseType: !5454, size: 64, offset: 1472)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!352, !817, !5457}
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !5459, line: 15, size: 256, elements: !5460)
!5459 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!5460 = !{!5461, !5462, !5463, !5464, !5465}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !5458, file: !5459, line: 16, baseType: !370, size: 32)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5458, file: !5459, line: 19, baseType: !97, size: 32, offset: 32)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !5458, file: !5459, line: 26, baseType: !114, size: 64, offset: 64)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !5458, file: !5459, line: 33, baseType: !114, size: 64, offset: 128)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !5458, file: !5459, line: 36, baseType: !5466, size: 64, offset: 192)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !189, line: 33, flags: DIFlagFwdDecl)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !5339, file: !305, line: 2087, baseType: !5454, size: 64, offset: 1536)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5339, file: !305, line: 2089, baseType: !848, size: 64, offset: 1600)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !818, file: !305, line: 1198, baseType: !5471, size: 64, offset: 448)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5473)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !310, line: 324, size: 704, elements: !5474)
!5474 = !{!5475, !5479, !5483, !5487, !5488, !5489, !5490, !5491, !5496, !5501, !5505}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !5473, file: !310, line: 325, baseType: !5476, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!97, !5411}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !5473, file: !310, line: 326, baseType: !5480, size: 64, offset: 64)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!5411, !817, !97}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !5473, file: !310, line: 327, baseType: !5484, size: 64, offset: 128)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{null, !5411}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !5473, file: !310, line: 328, baseType: !5476, size: 64, offset: 192)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !5473, file: !310, line: 329, baseType: !5476, size: 64, offset: 256)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !5473, file: !310, line: 330, baseType: !5476, size: 64, offset: 320)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !5473, file: !310, line: 331, baseType: !5367, size: 64, offset: 384)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !5473, file: !310, line: 334, baseType: !5492, size: 64, offset: 448)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!5495, !670}
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !5473, file: !310, line: 335, baseType: !5497, size: 64, offset: 512)
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!97, !670, !5500}
!5500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !5473, file: !310, line: 337, baseType: !5502, size: 64, offset: 576)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!97, !670, !5495}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5473, file: !310, line: 339, baseType: !5506, size: 64, offset: 640)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!97, !817, !5509}
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !818, file: !305, line: 1199, baseType: !5511, size: 64, offset: 512)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5513)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !310, line: 430, size: 704, elements: !5514)
!5514 = !{!5515, !5521, !5522, !5526, !5527, !5528, !5543, !5566, !5570, !5571, !5594}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !5513, file: !310, line: 431, baseType: !5516, size: 64)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!97, !817, !97, !97, !5519}
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4759)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !5513, file: !310, line: 432, baseType: !5367, size: 64, offset: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !5513, file: !310, line: 433, baseType: !5523, size: 64, offset: 128)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!97, !817, !28}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !5513, file: !310, line: 434, baseType: !5523, size: 64, offset: 192)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !5513, file: !310, line: 435, baseType: !5367, size: 64, offset: 256)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !5513, file: !310, line: 436, baseType: !5529, size: 64, offset: 320)
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!97, !817, !97, !5532}
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !310, line: 417, size: 256, elements: !5534)
!5534 = !{!5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !5533, file: !310, line: 418, baseType: !97, size: 32)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5533, file: !310, line: 419, baseType: !28, size: 32, offset: 32)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !5533, file: !310, line: 420, baseType: !28, size: 32, offset: 64)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !5533, file: !310, line: 422, baseType: !28, size: 32, offset: 96)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !5533, file: !310, line: 423, baseType: !28, size: 32, offset: 128)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !5533, file: !310, line: 424, baseType: !28, size: 32, offset: 160)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !5533, file: !310, line: 425, baseType: !28, size: 32, offset: 192)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !5533, file: !310, line: 426, baseType: !28, size: 32, offset: 224)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !5513, file: !310, line: 437, baseType: !5544, size: 64, offset: 384)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{!97, !817, !5423, !5547}
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !310, line: 345, size: 960, elements: !5549)
!5549 = !{!5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !5548, file: !310, line: 346, baseType: !97, size: 32)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !5548, file: !310, line: 347, baseType: !411, size: 64, offset: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !5548, file: !310, line: 348, baseType: !411, size: 64, offset: 128)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !5548, file: !310, line: 349, baseType: !411, size: 64, offset: 192)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !5548, file: !310, line: 350, baseType: !411, size: 64, offset: 256)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !5548, file: !310, line: 351, baseType: !411, size: 64, offset: 320)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !5548, file: !310, line: 352, baseType: !411, size: 64, offset: 384)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !5548, file: !310, line: 353, baseType: !1010, size: 64, offset: 448)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !5548, file: !310, line: 355, baseType: !1010, size: 64, offset: 512)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !5548, file: !310, line: 356, baseType: !97, size: 32, offset: 576)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !5548, file: !310, line: 357, baseType: !97, size: 32, offset: 608)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !5548, file: !310, line: 358, baseType: !411, size: 64, offset: 640)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !5548, file: !310, line: 359, baseType: !411, size: 64, offset: 704)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !5548, file: !310, line: 360, baseType: !411, size: 64, offset: 768)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !5548, file: !310, line: 361, baseType: !1010, size: 64, offset: 832)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !5548, file: !310, line: 362, baseType: !97, size: 32, offset: 896)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !5513, file: !310, line: 438, baseType: !5567, size: 64, offset: 448)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!97, !817, !5509, !5547}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !5513, file: !310, line: 440, baseType: !5544, size: 64, offset: 512)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !5513, file: !310, line: 441, baseType: !5572, size: 64, offset: 576)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!97, !817, !5575}
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !310, line: 411, size: 1408, elements: !5577)
!5577 = !{!5578, !5579}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !5576, file: !310, line: 412, baseType: !28, size: 32)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !5576, file: !310, line: 413, baseType: !5580, size: 1344, offset: 64)
!5580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5581, size: 1344, elements: !906)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !310, line: 397, size: 448, elements: !5582)
!5582 = !{!5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5593}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5581, file: !310, line: 398, baseType: !28, size: 32)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !5581, file: !310, line: 399, baseType: !28, size: 32, offset: 32)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !5581, file: !310, line: 401, baseType: !28, size: 32, offset: 64)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !5581, file: !310, line: 402, baseType: !28, size: 32, offset: 96)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !5581, file: !310, line: 403, baseType: !28, size: 32, offset: 128)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !5581, file: !310, line: 404, baseType: !28, size: 32, offset: 160)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !5581, file: !310, line: 405, baseType: !28, size: 32, offset: 192)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5581, file: !310, line: 406, baseType: !413, size: 64, offset: 256)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5581, file: !310, line: 407, baseType: !5592, size: 64, offset: 320)
!5592 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !100, line: 132, baseType: !411)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !5581, file: !310, line: 408, baseType: !5592, size: 64, offset: 384)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !5513, file: !310, line: 442, baseType: !5523, size: 64, offset: 640)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !818, file: !305, line: 1200, baseType: !5596, size: 64, offset: 576)
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5597, size: 64)
!5597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5598)
!5598 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !305, line: 54, flags: DIFlagFwdDecl)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !818, file: !305, line: 1201, baseType: !114, size: 64, offset: 640)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !818, file: !305, line: 1202, baseType: !114, size: 64, offset: 704)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !818, file: !305, line: 1203, baseType: !114, size: 64, offset: 768)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !818, file: !305, line: 1204, baseType: !705, size: 64, offset: 832)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !818, file: !305, line: 1205, baseType: !1455, size: 320, offset: 896)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !818, file: !305, line: 1206, baseType: !97, size: 32, offset: 1216)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !818, file: !305, line: 1207, baseType: !124, size: 32, offset: 1248)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !818, file: !305, line: 1209, baseType: !95, size: 64, offset: 1280)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !818, file: !305, line: 1211, baseType: !5608, size: 64, offset: 1344)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5611)
!5611 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !305, line: 1211, flags: DIFlagFwdDecl)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !818, file: !305, line: 1223, baseType: !5613, size: 64, offset: 1408)
!5613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !722, line: 34, size: 64, elements: !5614)
!5614 = !{!5615}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5613, file: !722, line: 35, baseType: !725, size: 64)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !818, file: !305, line: 1224, baseType: !172, size: 128, offset: 1472)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !818, file: !305, line: 1225, baseType: !5618, size: 64, offset: 1600)
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5619 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !305, line: 1225, flags: DIFlagFwdDecl)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !818, file: !305, line: 1226, baseType: !5621, size: 64, offset: 1664)
!5621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5622, size: 64)
!5622 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !305, line: 1226, flags: DIFlagFwdDecl)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !818, file: !305, line: 1227, baseType: !5624, size: 64, offset: 1728)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !305, line: 50, flags: DIFlagFwdDecl)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !818, file: !305, line: 1228, baseType: !5627, size: 64, offset: 1792)
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5628, size: 64)
!5628 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !305, line: 1228, flags: DIFlagFwdDecl)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !818, file: !305, line: 1229, baseType: !1069, size: 128, offset: 1856)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !818, file: !305, line: 1230, baseType: !28, size: 32, offset: 1984)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !818, file: !305, line: 1231, baseType: !5632, size: 2496, offset: 2048)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !310, line: 521, size: 2496, elements: !5633)
!5633 = !{!5634, !5635, !5636, !5638, !5670}
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5632, file: !310, line: 522, baseType: !28, size: 32)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !5632, file: !310, line: 523, baseType: !1455, size: 320, offset: 64)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !5632, file: !310, line: 524, baseType: !5637, size: 192, offset: 384)
!5637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 192, elements: !906)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5632, file: !310, line: 525, baseType: !5639, size: 1728, offset: 576)
!5639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5640, size: 1728, elements: !906)
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !310, line: 222, size: 576, elements: !5641)
!5641 = !{!5642, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !5640, file: !310, line: 223, baseType: !5643, size: 64)
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !310, line: 445, size: 256, elements: !5645)
!5645 = !{!5646, !5647, !5660, !5661}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !5644, file: !310, line: 446, baseType: !97, size: 32)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !5644, file: !310, line: 447, baseType: !5648, size: 64, offset: 64)
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5650)
!5650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !310, line: 312, size: 512, elements: !5651)
!5651 = !{!5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659}
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !5650, file: !310, line: 313, baseType: !5367, size: 64)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !5650, file: !310, line: 314, baseType: !5367, size: 64, offset: 64)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !5650, file: !310, line: 315, baseType: !5367, size: 64, offset: 128)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !5650, file: !310, line: 316, baseType: !5367, size: 64, offset: 192)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !5650, file: !310, line: 317, baseType: !5476, size: 64, offset: 256)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !5650, file: !310, line: 318, baseType: !5476, size: 64, offset: 320)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !5650, file: !310, line: 319, baseType: !5476, size: 64, offset: 384)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5650, file: !310, line: 320, baseType: !5506, size: 64, offset: 448)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !5644, file: !310, line: 448, baseType: !852, size: 64, offset: 128)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !5644, file: !310, line: 449, baseType: !5643, size: 64, offset: 192)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !5640, file: !310, line: 224, baseType: !97, size: 32, offset: 64)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !5640, file: !310, line: 226, baseType: !172, size: 128, offset: 128)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !5640, file: !310, line: 227, baseType: !114, size: 64, offset: 256)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !5640, file: !310, line: 228, baseType: !28, size: 32, offset: 320)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !5640, file: !310, line: 229, baseType: !28, size: 32, offset: 352)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !5640, file: !310, line: 230, baseType: !5444, size: 64, offset: 384)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !5640, file: !310, line: 231, baseType: !5444, size: 64, offset: 448)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !5640, file: !310, line: 232, baseType: !95, size: 64, offset: 512)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5632, file: !310, line: 526, baseType: !5671, size: 192, offset: 2304)
!5671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5648, size: 192, elements: !906)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !818, file: !305, line: 1233, baseType: !5673, size: 2368, offset: 4544)
!5673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !305, line: 1184, size: 2368, elements: !5674)
!5674 = !{!5675, !5676, !5677}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5673, file: !305, line: 1185, baseType: !101, size: 16)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !5673, file: !305, line: 1186, baseType: !101, size: 16, offset: 16)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !5673, file: !305, line: 1187, baseType: !5678, size: 2304, offset: 64)
!5678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5679, size: 2304, elements: !906)
!5679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !5680, line: 12, size: 768, elements: !5681)
!5680 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!5681 = !{!5682, !5690, !5691, !5692, !5693}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !5679, file: !5680, line: 13, baseType: !5683, size: 384)
!5683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5684, line: 17, size: 384, elements: !5685)
!5684 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5685 = !{!5686, !5687, !5688, !5689}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5683, file: !5684, line: 18, baseType: !97, size: 32)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5683, file: !5684, line: 19, baseType: !97, size: 32, offset: 32)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5683, file: !5684, line: 20, baseType: !129, size: 192, offset: 64)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5683, file: !5684, line: 22, baseType: !991, size: 128, align: 64, offset: 256)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !5679, file: !5680, line: 14, baseType: !5104, size: 64, offset: 384)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !5679, file: !5680, line: 15, baseType: !4217, size: 64, offset: 448)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5679, file: !5680, line: 16, baseType: !129, size: 192, offset: 512)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5679, file: !5680, line: 17, baseType: !124, size: 32, offset: 704)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !818, file: !305, line: 1240, baseType: !95, size: 64, offset: 6912)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !818, file: !305, line: 1243, baseType: !355, size: 32, offset: 6976)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !818, file: !305, line: 1245, baseType: !1627, size: 64, offset: 7040)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !818, file: !305, line: 1246, baseType: !1627, size: 64, offset: 7104)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !818, file: !305, line: 1248, baseType: !356, size: 32, offset: 7168)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !818, file: !305, line: 1249, baseType: !5700, size: 64, offset: 7232)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !305, line: 634, flags: DIFlagFwdDecl)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !818, file: !305, line: 1252, baseType: !2842, size: 256, offset: 7296)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !818, file: !305, line: 1253, baseType: !5704, size: 128, offset: 7552)
!5704 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5705, line: 21, baseType: !5706)
!5705 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5705, line: 19, size: 128, elements: !5707)
!5707 = !{!5708}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5706, file: !5705, line: 20, baseType: !5709, size: 128)
!5709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !2048)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !818, file: !305, line: 1255, baseType: !28, size: 32, offset: 7680)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !818, file: !305, line: 1261, baseType: !1013, size: 256, offset: 7744)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !818, file: !305, line: 1267, baseType: !92, size: 64, offset: 8000)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !818, file: !305, line: 1269, baseType: !763, size: 64, offset: 8064)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !818, file: !305, line: 1271, baseType: !5715, size: 448, offset: 8128)
!5715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !5459, line: 63, size: 448, elements: !5716)
!5716 = !{!5717, !5722, !5723, !5724, !5725, !5726, !5727}
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5715, file: !5459, line: 64, baseType: !5718, size: 64)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = !DISubroutineType(types: !5720)
!5720 = !{!114, !5721, !5457}
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5715, file: !5459, line: 66, baseType: !5718, size: 64, offset: 64)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5715, file: !5459, line: 69, baseType: !352, size: 64, offset: 128)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5715, file: !5459, line: 70, baseType: !97, size: 32, offset: 192)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5715, file: !5459, line: 71, baseType: !28, size: 32, offset: 224)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5715, file: !5459, line: 74, baseType: !172, size: 128, offset: 256)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5715, file: !5459, line: 85, baseType: !5728, size: 64, offset: 384)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !818, file: !305, line: 1274, baseType: !1004, size: 64, offset: 8576)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !818, file: !305, line: 1280, baseType: !1004, size: 64, offset: 8640)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !818, file: !305, line: 1283, baseType: !97, size: 32, offset: 8704)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !818, file: !305, line: 1286, baseType: !4975, size: 32, offset: 8736)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !818, file: !305, line: 1289, baseType: !2672, size: 64, offset: 8768)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !818, file: !305, line: 1290, baseType: !1065, size: 64, offset: 8832)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !818, file: !305, line: 1297, baseType: !1558, size: 64, offset: 8896)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !818, file: !305, line: 1304, baseType: !5737, size: 64, offset: 8960)
!5737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5738, line: 49, size: 64, elements: !5739)
!5738 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5739 = !{!5740}
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5737, file: !5738, line: 50, baseType: !5741, size: 64)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5738, line: 41, size: 512, align: 512, elements: !5743)
!5743 = !{!5744, !5745, !5750}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5742, file: !5738, line: 43, baseType: !134, size: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5742, file: !5738, line: 45, baseType: !5746, size: 192, offset: 64)
!5746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5738, line: 29, size: 192, elements: !5747)
!5747 = !{!5748, !5749}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5746, file: !5738, line: 30, baseType: !172, size: 128)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5746, file: !5738, line: 32, baseType: !352, size: 64, offset: 128)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5742, file: !5738, line: 46, baseType: !352, size: 64, offset: 256)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !818, file: !305, line: 1305, baseType: !5737, size: 64, offset: 9024)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !818, file: !305, line: 1306, baseType: !991, size: 128, align: 64, offset: 9088)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !818, file: !305, line: 1307, baseType: !1716, size: 256, offset: 9216)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !818, file: !305, line: 1309, baseType: !1013, size: 256, offset: 9472)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !818, file: !305, line: 1314, baseType: !97, size: 32, offset: 9728)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !818, file: !305, line: 1317, baseType: !134, size: 32, align: 512, offset: 10240)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !818, file: !305, line: 1318, baseType: !172, size: 128, offset: 10304)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !818, file: !305, line: 1320, baseType: !134, size: 32, offset: 10432)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !818, file: !305, line: 1321, baseType: !172, size: 128, offset: 10496)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !812, file: !813, line: 73, baseType: !97, size: 32, offset: 128)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !812, file: !813, line: 74, baseType: !5762, size: 64, offset: 192)
!5762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5763, size: 64)
!5763 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1991, line: 42, flags: DIFlagFwdDecl)
!5764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !765, file: !707, line: 141, baseType: !5766, size: 64, offset: 704)
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5767, size: 64)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!97, !5519, !608}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !765, file: !707, line: 142, baseType: !5770, size: 64, offset: 768)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5771, size: 64)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!705, !705, !5773}
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 64)
!5774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !706, file: !707, line: 96, baseType: !817, size: 64, offset: 832)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !706, file: !707, line: 97, baseType: !114, size: 64, offset: 896)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !706, file: !707, line: 98, baseType: !95, size: 64, offset: 960)
!5778 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !707, line: 100, baseType: !5779, size: 128, offset: 1024)
!5779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !707, line: 100, size: 128, elements: !5780)
!5780 = !{!5781, !5782}
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5779, file: !707, line: 101, baseType: !172, size: 128)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5779, file: !707, line: 102, baseType: !2412, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !706, file: !707, line: 104, baseType: !172, size: 128, offset: 1152)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !706, file: !707, line: 105, baseType: !172, size: 128, offset: 1280)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !706, file: !707, line: 113, baseType: !5786, size: 128, offset: 1408)
!5786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !707, line: 109, size: 128, elements: !5787)
!5787 = !{!5788, !5789, !5790}
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5786, file: !707, line: 110, baseType: !1069, size: 128)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5786, file: !707, line: 111, baseType: !721, size: 128)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5786, file: !707, line: 112, baseType: !991, size: 128, align: 64)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !699, file: !305, line: 1968, baseType: !5792, size: 64, offset: 64)
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!92, !705, !670, !5795}
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5796, size: 64)
!5796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5797, line: 10, size: 128, elements: !5798)
!5797 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5798 = !{!5799, !5800}
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5796, file: !5797, line: 11, baseType: !3816, size: 64)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5796, file: !5797, line: 12, baseType: !95, size: 64, offset: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !699, file: !305, line: 1969, baseType: !5802, size: 64, offset: 128)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5803, size: 64)
!5803 = !DISubroutineType(types: !5804)
!5804 = !{!97, !5762, !670, !97}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !699, file: !305, line: 1970, baseType: !5806, size: 64, offset: 192)
!5806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5807, size: 64)
!5807 = !DISubroutineType(types: !5808)
!5808 = !{!693, !670, !97, !608}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !699, file: !305, line: 1972, baseType: !5810, size: 64, offset: 256)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!97, !705, !806, !97}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !699, file: !305, line: 1974, baseType: !5814, size: 64, offset: 320)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{!97, !5762, !670, !705, !99, !608}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !699, file: !305, line: 1976, baseType: !5818, size: 64, offset: 384)
!5818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5819, size: 64)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!97, !705, !670, !705}
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !699, file: !305, line: 1977, baseType: !5822, size: 64, offset: 448)
!5822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5823, size: 64)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!97, !670, !705}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !699, file: !305, line: 1978, baseType: !5826, size: 64, offset: 512)
!5826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5827, size: 64)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!97, !5762, !670, !705, !92}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !699, file: !305, line: 1980, baseType: !5830, size: 64, offset: 576)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!97, !5762, !670, !705, !99}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !699, file: !305, line: 1982, baseType: !5822, size: 64, offset: 640)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !699, file: !305, line: 1983, baseType: !5835, size: 64, offset: 704)
!5835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5836, size: 64)
!5836 = !DISubroutineType(types: !5837)
!5837 = !{!97, !5762, !670, !705, !99, !822}
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !699, file: !305, line: 1985, baseType: !5839, size: 64, offset: 768)
!5839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5840, size: 64)
!5840 = !DISubroutineType(types: !5841)
!5841 = !{!97, !5762, !670, !705, !670, !705, !28}
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !699, file: !305, line: 1987, baseType: !5843, size: 64, offset: 832)
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5844, size: 64)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{!97, !5762, !705, !5846}
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5847, size: 64)
!5847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !305, line: 226, size: 640, elements: !5848)
!5848 = !{!5849, !5850, !5851, !5861, !5870, !5871, !5876, !5877, !5878}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5847, file: !305, line: 227, baseType: !28, size: 32)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5847, file: !305, line: 228, baseType: !99, size: 16, offset: 32)
!5851 = !DIDerivedType(tag: DW_TAG_member, scope: !5847, file: !305, line: 241, baseType: !5852, size: 32, offset: 64)
!5852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5847, file: !305, line: 241, size: 32, elements: !5853)
!5853 = !{!5854, !5855}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5852, file: !305, line: 242, baseType: !676, size: 32)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5852, file: !305, line: 243, baseType: !5856, size: 32)
!5856 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5857, line: 16, baseType: !5858)
!5857 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5857, line: 14, size: 32, elements: !5859)
!5859 = !{!5860}
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5858, file: !5857, line: 15, baseType: !681, size: 32)
!5861 = !DIDerivedType(tag: DW_TAG_member, scope: !5847, file: !305, line: 245, baseType: !5862, size: 32, offset: 96)
!5862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5847, file: !305, line: 245, size: 32, elements: !5863)
!5863 = !{!5864, !5865}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5862, file: !305, line: 246, baseType: !685, size: 32)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5862, file: !305, line: 247, baseType: !5866, size: 32)
!5866 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5857, line: 20, baseType: !5867)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5857, line: 18, size: 32, elements: !5868)
!5868 = !{!5869}
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5867, file: !5857, line: 19, baseType: !689, size: 32)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5847, file: !305, line: 249, baseType: !116, size: 64, offset: 128)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5847, file: !305, line: 250, baseType: !5872, size: 128, offset: 192)
!5872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1628, line: 13, size: 128, elements: !5873)
!5873 = !{!5874, !5875}
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5872, file: !1628, line: 14, baseType: !1627, size: 64)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5872, file: !1628, line: 15, baseType: !352, size: 64, offset: 64)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5847, file: !305, line: 251, baseType: !5872, size: 128, offset: 320)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5847, file: !305, line: 252, baseType: !5872, size: 128, offset: 448)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5847, file: !305, line: 259, baseType: !978, size: 64, offset: 576)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !699, file: !305, line: 1988, baseType: !5880, size: 64, offset: 896)
!5880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5881, size: 64)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!97, !5762, !5519, !5883, !355, !28}
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5885, line: 22, size: 1280, elements: !5886)
!5885 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5886 = !{!5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904, !5905, !5906, !5907}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5884, file: !5885, line: 23, baseType: !355, size: 32)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5884, file: !5885, line: 24, baseType: !99, size: 16, offset: 32)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5884, file: !5885, line: 25, baseType: !28, size: 32, offset: 64)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5884, file: !5885, line: 26, baseType: !1635, size: 32, offset: 96)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5884, file: !5885, line: 27, baseType: !411, size: 64, offset: 128)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5884, file: !5885, line: 28, baseType: !411, size: 64, offset: 192)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5884, file: !5885, line: 41, baseType: !411, size: 64, offset: 256)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5884, file: !5885, line: 42, baseType: !822, size: 32, offset: 320)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5884, file: !5885, line: 43, baseType: !822, size: 32, offset: 352)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5884, file: !5885, line: 44, baseType: !676, size: 32, offset: 384)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5884, file: !5885, line: 45, baseType: !685, size: 32, offset: 416)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5884, file: !5885, line: 46, baseType: !116, size: 64, offset: 448)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5884, file: !5885, line: 47, baseType: !5872, size: 128, offset: 512)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5884, file: !5885, line: 48, baseType: !5872, size: 128, offset: 640)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5884, file: !5885, line: 49, baseType: !5872, size: 128, offset: 768)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5884, file: !5885, line: 50, baseType: !5872, size: 128, offset: 896)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5884, file: !5885, line: 51, baseType: !411, size: 64, offset: 1024)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5884, file: !5885, line: 52, baseType: !411, size: 64, offset: 1088)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5884, file: !5885, line: 53, baseType: !355, size: 32, offset: 1152)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5884, file: !5885, line: 54, baseType: !355, size: 32, offset: 1184)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5884, file: !5885, line: 55, baseType: !411, size: 64, offset: 1216)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !699, file: !305, line: 1990, baseType: !5909, size: 64, offset: 960)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5910, size: 64)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{!937, !705, !806, !110}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !699, file: !305, line: 1991, baseType: !5913, size: 64, offset: 1024)
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{!97, !670, !5916, !411, !411}
!5916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5917, size: 64)
!5917 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !305, line: 55, flags: DIFlagFwdDecl)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !699, file: !305, line: 1993, baseType: !5919, size: 64, offset: 1088)
!5919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5920, size: 64)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!97, !670, !97}
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !699, file: !305, line: 1994, baseType: !5923, size: 64, offset: 1152)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!97, !670, !705, !978, !28, !99}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !699, file: !305, line: 1997, baseType: !5927, size: 64, offset: 1216)
!5927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5928, size: 64)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{!97, !5762, !670, !978, !99}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !699, file: !305, line: 1999, baseType: !5931, size: 64, offset: 1280)
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!693, !5762, !705, !97}
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !699, file: !305, line: 2001, baseType: !5935, size: 64, offset: 1344)
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5936, size: 64)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!97, !5762, !705, !693, !97}
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !699, file: !305, line: 2003, baseType: !5939, size: 64, offset: 1408)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{!97, !5762, !705, !5942}
!5942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5943, size: 64)
!5943 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !305, line: 76, flags: DIFlagFwdDecl)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !699, file: !305, line: 2005, baseType: !5945, size: 64, offset: 1472)
!5945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5946, size: 64)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!97, !705, !5942}
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !699, file: !305, line: 2006, baseType: !5949, size: 64, offset: 1536)
!5949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5950, size: 64)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!5952, !670}
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !305, line: 3192, size: 192, elements: !5954)
!5954 = !{!5955, !5956}
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5953, file: !305, line: 3193, baseType: !1094, size: 128)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5953, file: !305, line: 3194, baseType: !355, size: 32, offset: 128)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !671, file: !305, line: 655, baseType: !817, size: 64, offset: 448)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !671, file: !305, line: 656, baseType: !666, size: 64, offset: 512)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !671, file: !305, line: 659, baseType: !95, size: 64, offset: 576)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !671, file: !305, line: 663, baseType: !114, size: 64, offset: 640)
!5961 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !305, line: 671, baseType: !5962, size: 32, offset: 704)
!5962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !305, line: 671, size: 32, elements: !5963)
!5963 = !{!5964, !5965}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5962, file: !305, line: 672, baseType: !4401, size: 32)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5962, file: !305, line: 673, baseType: !28, size: 32)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !671, file: !305, line: 675, baseType: !822, size: 32, offset: 736)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !671, file: !305, line: 676, baseType: !116, size: 64, offset: 768)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !671, file: !305, line: 677, baseType: !5872, size: 128, offset: 832)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !671, file: !305, line: 678, baseType: !5872, size: 128, offset: 960)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !671, file: !305, line: 679, baseType: !5872, size: 128, offset: 1088)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !671, file: !305, line: 680, baseType: !134, size: 32, offset: 1216)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !671, file: !305, line: 681, baseType: !101, size: 16, offset: 1248)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !671, file: !305, line: 682, baseType: !158, size: 8, offset: 1264)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !671, file: !305, line: 683, baseType: !158, size: 8, offset: 1272)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !671, file: !305, line: 684, baseType: !5592, size: 64, offset: 1280)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !671, file: !305, line: 691, baseType: !114, size: 64, offset: 1344)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !671, file: !305, line: 692, baseType: !1455, size: 320, offset: 1408)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !671, file: !305, line: 694, baseType: !114, size: 64, offset: 1728)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !671, file: !305, line: 695, baseType: !114, size: 64, offset: 1792)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !671, file: !305, line: 697, baseType: !1069, size: 128, offset: 1856)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !671, file: !305, line: 698, baseType: !172, size: 128, offset: 1984)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !671, file: !305, line: 707, baseType: !172, size: 128, offset: 2112)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !671, file: !305, line: 708, baseType: !172, size: 128, offset: 2240)
!5984 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !305, line: 709, baseType: !5985, size: 128, offset: 2368)
!5985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !305, line: 709, size: 128, elements: !5986)
!5986 = !{!5987, !5988}
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5985, file: !305, line: 710, baseType: !1065, size: 64)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5985, file: !305, line: 711, baseType: !991, size: 128, align: 64)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !671, file: !305, line: 713, baseType: !1006, size: 64, offset: 2496)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !671, file: !305, line: 714, baseType: !1006, size: 64, offset: 2560)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !671, file: !305, line: 715, baseType: !124, size: 32, offset: 2624)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !671, file: !305, line: 716, baseType: !124, size: 32, offset: 2656)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !671, file: !305, line: 717, baseType: !124, size: 32, offset: 2688)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !671, file: !305, line: 719, baseType: !124, size: 32, offset: 2720)
!5995 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !305, line: 721, baseType: !5996, size: 64, offset: 2752)
!5996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !305, line: 721, size: 64, elements: !5997)
!5997 = !{!5998, !5999}
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5996, file: !305, line: 722, baseType: !4766, size: 64)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5996, file: !305, line: 723, baseType: !5346, size: 64)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !671, file: !305, line: 725, baseType: !6001, size: 64, offset: 2816)
!6001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6002, size: 64)
!6002 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !305, line: 725, flags: DIFlagFwdDecl)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !671, file: !305, line: 726, baseType: !667, size: 1536, align: 64, offset: 2880)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !671, file: !305, line: 727, baseType: !172, size: 128, offset: 4416)
!6005 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !305, line: 728, baseType: !6006, size: 64, offset: 4544)
!6006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !305, line: 728, size: 64, elements: !6007)
!6007 = !{!6008, !6009, !6012, !6013}
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !6006, file: !305, line: 729, baseType: !3188, size: 64)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !6006, file: !305, line: 730, baseType: !6010, size: 64)
!6010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6011, size: 64)
!6011 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !305, line: 730, flags: DIFlagFwdDecl)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !6006, file: !305, line: 731, baseType: !806, size: 64)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !6006, file: !305, line: 732, baseType: !28, size: 32)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !671, file: !305, line: 735, baseType: !356, size: 32, offset: 4608)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !671, file: !305, line: 738, baseType: !356, size: 32, offset: 4640)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !671, file: !305, line: 739, baseType: !5700, size: 64, offset: 4672)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !671, file: !305, line: 750, baseType: !95, size: 64, offset: 4736)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !667, file: !305, line: 474, baseType: !1094, size: 128, offset: 64)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !667, file: !305, line: 475, baseType: !1455, size: 320, offset: 192)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !667, file: !305, line: 476, baseType: !370, size: 32, offset: 512)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !667, file: !305, line: 477, baseType: !124, size: 32, offset: 544)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !667, file: !305, line: 482, baseType: !1283, size: 128, offset: 576)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !667, file: !305, line: 483, baseType: !114, size: 64, offset: 704)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !667, file: !305, line: 484, baseType: !114, size: 64, offset: 768)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !667, file: !305, line: 485, baseType: !6026, size: 64, offset: 832)
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6027, size: 64)
!6027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6028)
!6028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !305, line: 404, size: 1280, elements: !6029)
!6029 = !{!6030, !6034, !6104, !6108, !6112, !6118, !6122, !6126, !6131, !6135, !6139, !6143, !6144, !6148, !6152, !6156, !6161, !6165, !6172, !6173}
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !6028, file: !305, line: 405, baseType: !6031, size: 64)
!6031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6032, size: 64)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{!97, !644, !5358}
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !6028, file: !305, line: 406, baseType: !6035, size: 64, offset: 64)
!6035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6036, size: 64)
!6036 = !DISubroutineType(types: !6037)
!6037 = !{!97, !978, !6038}
!6038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !189, line: 293, size: 1536, elements: !6040)
!6040 = !{!6041, !6071, !6085}
!6041 = !DIDerivedType(tag: DW_TAG_member, scope: !6039, file: !189, line: 295, baseType: !6042, size: 512)
!6042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6039, file: !189, line: 295, size: 512, elements: !6043)
!6043 = !{!6044, !6070}
!6044 = !DIDerivedType(tag: DW_TAG_member, scope: !6042, file: !189, line: 296, baseType: !6045, size: 448)
!6045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6042, file: !189, line: 296, size: 448, elements: !6046)
!6046 = !{!6047, !6048, !6057, !6058, !6059, !6068, !6069}
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6045, file: !189, line: 298, baseType: !114, size: 64)
!6048 = !DIDerivedType(tag: DW_TAG_member, scope: !6045, file: !189, line: 299, baseType: !6049, size: 128, offset: 64)
!6049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6045, file: !189, line: 299, size: 128, elements: !6050)
!6050 = !{!6051, !6052}
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !6049, file: !189, line: 300, baseType: !172, size: 128)
!6052 = !DIDerivedType(tag: DW_TAG_member, scope: !6049, file: !189, line: 302, baseType: !6053, size: 128)
!6053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6049, file: !189, line: 302, size: 128, elements: !6054)
!6054 = !{!6055, !6056}
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !6053, file: !189, line: 303, baseType: !95, size: 64)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !6053, file: !189, line: 305, baseType: !28, size: 32, offset: 64)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !6045, file: !189, line: 310, baseType: !666, size: 64, offset: 192)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6045, file: !189, line: 311, baseType: !114, size: 64, offset: 256)
!6059 = !DIDerivedType(tag: DW_TAG_member, scope: !6045, file: !189, line: 312, baseType: !6060, size: 64, offset: 320)
!6060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6045, file: !189, line: 312, size: 64, elements: !6061)
!6061 = !{!6062, !6063}
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6060, file: !189, line: 313, baseType: !95, size: 64)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !6060, file: !189, line: 314, baseType: !6064, size: 64)
!6064 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !189, line: 257, baseType: !6065)
!6065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 255, size: 64, elements: !6066)
!6066 = !{!6067}
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !6065, file: !189, line: 256, baseType: !114, size: 64)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !6045, file: !189, line: 316, baseType: !124, size: 32, offset: 384)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !6045, file: !189, line: 317, baseType: !124, size: 32, offset: 416)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !6042, file: !189, line: 323, baseType: !645, size: 512, align: 128)
!6071 = !DIDerivedType(tag: DW_TAG_member, scope: !6039, file: !189, line: 325, baseType: !6072, size: 512, offset: 512)
!6072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6039, file: !189, line: 325, size: 512, elements: !6073)
!6073 = !{!6074, !6084}
!6074 = !DIDerivedType(tag: DW_TAG_member, scope: !6072, file: !189, line: 326, baseType: !6075, size: 320)
!6075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6072, file: !189, line: 326, size: 320, elements: !6076)
!6076 = !{!6077, !6078, !6079, !6080, !6081, !6082, !6083}
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !6075, file: !189, line: 327, baseType: !114, size: 64)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !6075, file: !189, line: 328, baseType: !114, size: 64, offset: 64)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !6075, file: !189, line: 329, baseType: !114, size: 64, offset: 128)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !6075, file: !189, line: 331, baseType: !124, size: 32, offset: 192)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !6075, file: !189, line: 332, baseType: !124, size: 32, offset: 224)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !6075, file: !189, line: 333, baseType: !124, size: 32, offset: 256)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !6075, file: !189, line: 335, baseType: !28, size: 32, offset: 288)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !6072, file: !189, line: 339, baseType: !645, size: 512, align: 128)
!6085 = !DIDerivedType(tag: DW_TAG_member, scope: !6039, file: !189, line: 341, baseType: !6086, size: 512, offset: 1024)
!6086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6039, file: !189, line: 341, size: 512, elements: !6087)
!6087 = !{!6088, !6097, !6103}
!6088 = !DIDerivedType(tag: DW_TAG_member, scope: !6086, file: !189, line: 342, baseType: !6089, size: 384)
!6089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6086, file: !189, line: 342, size: 384, elements: !6090)
!6090 = !{!6091, !6092, !6093, !6094, !6095, !6096}
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !6089, file: !189, line: 343, baseType: !114, size: 64)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !6089, file: !189, line: 344, baseType: !114, size: 64, offset: 64)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !6089, file: !189, line: 346, baseType: !95, size: 64, offset: 128)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !6089, file: !189, line: 347, baseType: !95, size: 64, offset: 192)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !6089, file: !189, line: 348, baseType: !95, size: 64, offset: 256)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !6089, file: !189, line: 349, baseType: !95, size: 64, offset: 320)
!6097 = !DIDerivedType(tag: DW_TAG_member, scope: !6086, file: !189, line: 352, baseType: !6098, size: 256)
!6098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6086, file: !189, line: 352, size: 256, elements: !6099)
!6099 = !{!6100, !6101, !6102}
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !6098, file: !189, line: 353, baseType: !114, size: 64)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !6098, file: !189, line: 354, baseType: !114, size: 64, offset: 64)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !6098, file: !189, line: 356, baseType: !172, size: 128, offset: 128)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !6086, file: !189, line: 359, baseType: !645, size: 512, align: 128)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !6028, file: !305, line: 409, baseType: !6105, size: 64, offset: 128)
!6105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6106, size: 64)
!6106 = !DISubroutineType(types: !6107)
!6107 = !{!97, !666, !5358}
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !6028, file: !305, line: 412, baseType: !6109, size: 64, offset: 192)
!6109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6110, size: 64)
!6110 = !DISubroutineType(types: !6111)
!6111 = !{!608, !666, !6038}
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !6028, file: !305, line: 414, baseType: !6113, size: 64, offset: 256)
!6113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6114, size: 64)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{null, !6116}
!6116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6117, size: 64)
!6117 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !305, line: 310, flags: DIFlagFwdDecl)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !6028, file: !305, line: 416, baseType: !6119, size: 64, offset: 320)
!6119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6120, size: 64)
!6120 = !DISubroutineType(types: !6121)
!6121 = !{!97, !978, !666, !116, !28, !3297, !3945}
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !6028, file: !305, line: 419, baseType: !6123, size: 64, offset: 384)
!6123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6124, size: 64)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!97, !978, !666, !116, !28, !28, !644, !95}
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !6028, file: !305, line: 424, baseType: !6127, size: 64, offset: 448)
!6127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6128, size: 64)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{!6130, !666, !6130}
!6130 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !100, line: 131, baseType: !411)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !6028, file: !305, line: 425, baseType: !6132, size: 64, offset: 512)
!6132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6133, size: 64)
!6133 = !DISubroutineType(types: !6134)
!6134 = !{null, !6038, !110, !110}
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !6028, file: !305, line: 426, baseType: !6136, size: 64, offset: 576)
!6136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6137, size: 64)
!6137 = !DISubroutineType(types: !6138)
!6138 = !{!608, !6038, !370}
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !6028, file: !305, line: 427, baseType: !6140, size: 64, offset: 640)
!6140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6141, size: 64)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{null, !6038}
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !6028, file: !305, line: 428, baseType: !4784, size: 64, offset: 704)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !6028, file: !305, line: 433, baseType: !6145, size: 64, offset: 768)
!6145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6146, size: 64)
!6146 = !DISubroutineType(types: !6147)
!6147 = !{!97, !666, !6038, !6038, !315}
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !6028, file: !305, line: 435, baseType: !6149, size: 64, offset: 832)
!6149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6150, size: 64)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!97, !6038}
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !6028, file: !305, line: 436, baseType: !6153, size: 64, offset: 896)
!6153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6154, size: 64)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{!608, !6038, !110, !110}
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !6028, file: !305, line: 438, baseType: !6157, size: 64, offset: 960)
!6157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6158, size: 64)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{null, !6038, !6160, !6160}
!6160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !6028, file: !305, line: 439, baseType: !6162, size: 64, offset: 1024)
!6162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6163, size: 64)
!6163 = !DISubroutineType(types: !6164)
!6164 = !{!97, !666, !644}
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !6028, file: !305, line: 442, baseType: !6166, size: 64, offset: 1088)
!6166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6167, size: 64)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{!97, !6169, !978, !6171}
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !305, line: 66, flags: DIFlagFwdDecl)
!6171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !6028, file: !305, line: 444, baseType: !4934, size: 64, offset: 1152)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !6028, file: !305, line: 445, baseType: !6174, size: 64, offset: 1216)
!6174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6175, size: 64)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!97, !4787, !4809}
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !305, line: 486, baseType: !114, size: 64, offset: 896)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !667, file: !305, line: 487, baseType: !1455, size: 320, offset: 960)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !667, file: !305, line: 488, baseType: !4975, size: 32, offset: 1280)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !667, file: !305, line: 489, baseType: !134, size: 32, offset: 1312)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !667, file: !305, line: 490, baseType: !172, size: 128, offset: 1344)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !667, file: !305, line: 491, baseType: !95, size: 64, offset: 1472)
!6183 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !189, line: 107, baseType: !6184, size: 64, offset: 192)
!6184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !189, line: 107, size: 64, elements: !6185)
!6185 = !{!6186, !6187}
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6184, file: !189, line: 108, baseType: !114, size: 64)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !6184, file: !189, line: 109, baseType: !114, size: 64)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !652, file: !189, line: 117, baseType: !114, size: 64, offset: 256)
!6189 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !189, line: 119, baseType: !6190, size: 320)
!6190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !189, line: 119, size: 320, elements: !6191)
!6191 = !{!6192, !6193, !6196, !6197, !6198}
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !6190, file: !189, line: 124, baseType: !114, size: 64)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !6190, file: !189, line: 125, baseType: !6194, size: 64, offset: 64)
!6194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6195, size: 64)
!6195 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !189, line: 125, flags: DIFlagFwdDecl)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !6190, file: !189, line: 126, baseType: !114, size: 64, offset: 128)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !6190, file: !189, line: 127, baseType: !114, size: 64, offset: 192)
!6198 = !DIDerivedType(tag: DW_TAG_member, scope: !6190, file: !189, line: 128, baseType: !6199, size: 64, offset: 256)
!6199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6190, file: !189, line: 128, size: 64, elements: !6200)
!6200 = !{!6201, !6202}
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !6199, file: !189, line: 133, baseType: !114, size: 64)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !6199, file: !189, line: 138, baseType: !1004, size: 64)
!6203 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !189, line: 141, baseType: !6204, size: 64)
!6204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !189, line: 141, size: 64, elements: !6205)
!6205 = !{!6206}
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !6204, file: !189, line: 142, baseType: !114, size: 64)
!6207 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !189, line: 144, baseType: !6208, size: 128)
!6208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !189, line: 144, size: 128, elements: !6209)
!6209 = !{!6210, !6261}
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !6208, file: !189, line: 146, baseType: !6211, size: 64)
!6211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6212, size: 64)
!6212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !323, line: 126, size: 1216, elements: !6213)
!6213 = !{!6214, !6224, !6225, !6226, !6227, !6228, !6229, !6243, !6244, !6245}
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !6212, file: !323, line: 127, baseType: !6215, size: 384)
!6215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !323, line: 21, size: 384, elements: !6216)
!6216 = !{!6217, !6218, !6220, !6221, !6222, !6223}
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !6215, file: !323, line: 22, baseType: !114, size: 64)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !6215, file: !323, line: 23, baseType: !6219, size: 64, offset: 64)
!6219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !6215, file: !323, line: 24, baseType: !6219, size: 64, offset: 128)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6215, file: !323, line: 25, baseType: !114, size: 64, offset: 192)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !6215, file: !323, line: 26, baseType: !114, size: 64, offset: 256)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !6215, file: !323, line: 27, baseType: !114, size: 64, offset: 320)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6212, file: !323, line: 128, baseType: !2638, size: 128, offset: 384)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !6212, file: !323, line: 129, baseType: !1755, size: 256, offset: 512)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6212, file: !323, line: 130, baseType: !322, size: 32, offset: 768)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6212, file: !323, line: 131, baseType: !28, size: 32, offset: 800)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !6212, file: !323, line: 132, baseType: !114, size: 64, offset: 832)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6212, file: !323, line: 133, baseType: !6230, size: 64, offset: 896)
!6230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6231, size: 64)
!6231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6232)
!6232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !323, line: 77, size: 192, elements: !6233)
!6233 = !{!6234, !6238, !6239}
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !6232, file: !323, line: 83, baseType: !6235, size: 64)
!6235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6236, size: 64)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{null, !644}
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !6232, file: !323, line: 89, baseType: !2300, size: 64, offset: 64)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !6232, file: !323, line: 100, baseType: !6240, size: 64, offset: 128)
!6240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6241, size: 64)
!6241 = !DISubroutineType(types: !6242)
!6242 = !{!97, !6211, !114, !114, !97}
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !6212, file: !323, line: 134, baseType: !95, size: 64, offset: 960)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !6212, file: !323, line: 135, baseType: !97, size: 32, offset: 1024)
!6245 = !DIDerivedType(tag: DW_TAG_member, scope: !6212, file: !323, line: 136, baseType: !6246, size: 128, offset: 1088)
!6246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6212, file: !323, line: 136, size: 128, elements: !6247)
!6247 = !{!6248, !6254}
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !6246, file: !323, line: 137, baseType: !6249, size: 128)
!6249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !6250, line: 6, size: 128, elements: !6251)
!6250 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!6251 = !{!6252, !6253}
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6249, file: !6250, line: 7, baseType: !411, size: 64)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6249, file: !6250, line: 8, baseType: !411, size: 64, offset: 64)
!6254 = !DIDerivedType(tag: DW_TAG_member, scope: !6246, file: !323, line: 138, baseType: !6255)
!6255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6246, file: !323, line: 138, elements: !6256)
!6256 = !{!6257, !6259}
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !6255, file: !323, line: 138, baseType: !6258)
!6258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6255, file: !323, line: 138, elements: !1421)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !6255, file: !323, line: 138, baseType: !6260)
!6260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6249, elements: !1832)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !6208, file: !189, line: 147, baseType: !95, size: 64, offset: 64)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !649, file: !189, line: 161, baseType: !991, size: 128, align: 64)
!6263 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !189, line: 164, baseType: !6264, size: 32, offset: 384)
!6264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !189, line: 164, size: 32, elements: !6265)
!6265 = !{!6266, !6267}
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !6264, file: !189, line: 169, baseType: !124, size: 32)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !6264, file: !189, line: 177, baseType: !28, size: 32)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !645, file: !189, line: 181, baseType: !124, size: 32, offset: 416)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "swap_page", scope: !635, file: !342, line: 303, baseType: !644, size: 64, offset: 320)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "vmcoreinfo_data_copy", scope: !635, file: !342, line: 304, baseType: !95, size: 64, offset: 384)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segments", scope: !635, file: !342, line: 306, baseType: !114, size: 64, offset: 448)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !635, file: !342, line: 307, baseType: !6273, size: 4096, offset: 512)
!6273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 4096, elements: !2048)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "control_pages", scope: !635, file: !342, line: 309, baseType: !172, size: 128, offset: 4608)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "dest_pages", scope: !635, file: !342, line: 310, baseType: !172, size: 128, offset: 4736)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "unusable_pages", scope: !635, file: !342, line: 311, baseType: !172, size: 128, offset: 4864)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "control_page", scope: !635, file: !342, line: 314, baseType: !114, size: 64, offset: 4992)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !342, line: 317, baseType: !28, size: 1, offset: 5056, flags: DIFlagBitField, extraData: i64 5056)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_context", scope: !635, file: !342, line: 320, baseType: !28, size: 1, offset: 5057, flags: DIFlagBitField, extraData: i64 5056)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "file_mode", scope: !635, file: !342, line: 322, baseType: !28, size: 1, offset: 5058, flags: DIFlagBitField, extraData: i64 5056)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "update_elfcorehdr", scope: !635, file: !342, line: 325, baseType: !28, size: 1, offset: 5059, flags: DIFlagBitField, extraData: i64 5056)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !635, file: !342, line: 329, baseType: !6283, size: 320, offset: 5120)
!6283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kimage_arch", file: !6284, line: 145, size: 320, elements: !6285)
!6284 = !DIFile(filename: "./arch/x86/include/asm/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ab2d478aae98767fa69f277d1e3e2976")
!6285 = !{!6286, !6287, !6294, !6295, !6296}
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !6283, file: !6284, line: 150, baseType: !1434, size: 64)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !6283, file: !6284, line: 159, baseType: !6288, size: 64, offset: 64)
!6288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6289, size: 64)
!6289 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !1436, line: 346, baseType: !6290)
!6290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1436, line: 346, size: 64, elements: !6291)
!6291 = !{!6292}
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !6290, file: !1436, line: 346, baseType: !6293, size: 64)
!6293 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !1441, line: 17, baseType: !114)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !6283, file: !6284, line: 160, baseType: !2324, size: 64, offset: 128)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !6283, file: !6284, line: 161, baseType: !2317, size: 64, offset: 192)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !6283, file: !6284, line: 162, baseType: !2343, size: 64, offset: 256)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "hp_action", scope: !635, file: !342, line: 354, baseType: !97, size: 32, offset: 5440)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "elfcorehdr_index", scope: !635, file: !342, line: 355, baseType: !97, size: 32, offset: 5472)
!6299 = !DIDerivedType(tag: DW_TAG_member, name: "elfcorehdr_updated", scope: !635, file: !342, line: 356, baseType: !608, size: 8, offset: 5504)
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "elf_headers", scope: !635, file: !342, line: 368, baseType: !95, size: 64, offset: 5568)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "elf_headers_sz", scope: !635, file: !342, line: 369, baseType: !114, size: 64, offset: 5632)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "elf_load_addr", scope: !635, file: !342, line: 370, baseType: !114, size: 64, offset: 5696)
!6303 = !DILocalVariable(name: "image", scope: !624, file: !2, line: 90, type: !634)
!6304 = !DILocalVariable(name: "i", scope: !624, file: !2, line: 91, type: !114)
!6305 = !DILocalVariable(name: "ret", scope: !624, file: !2, line: 92, type: !97)
!6306 = !DILocalVariable(name: "__ai_ptr", scope: !6307, file: !2, line: 112, type: !633)
!6307 = distinct !DILexicalBlock(scope: !6308, file: !2, line: 112, column: 15)
!6308 = distinct !DILexicalBlock(scope: !6309, file: !2, line: 110, column: 24)
!6309 = distinct !DILexicalBlock(scope: !624, file: !2, line: 110, column: 6)
!6310 = !DILocalVariable(name: "__ret", scope: !6311, file: !2, line: 112, type: !634)
!6311 = distinct !DILexicalBlock(scope: !6307, file: !2, line: 112, column: 15)
!6312 = !DILocalVariable(name: "__ai_ptr", scope: !6313, file: !2, line: 122, type: !633)
!6313 = distinct !DILexicalBlock(scope: !6314, file: !2, line: 122, column: 15)
!6314 = distinct !DILexicalBlock(scope: !6315, file: !2, line: 116, column: 30)
!6315 = distinct !DILexicalBlock(scope: !624, file: !2, line: 116, column: 6)
!6316 = !DILocalVariable(name: "__ret", scope: !6317, file: !2, line: 122, type: !634)
!6317 = distinct !DILexicalBlock(scope: !6313, file: !2, line: 122, column: 15)
!6318 = !DILocalVariable(name: "__ai_ptr", scope: !6319, file: !2, line: 162, type: !633)
!6319 = distinct !DILexicalBlock(scope: !624, file: !2, line: 162, column: 10)
!6320 = !DILocalVariable(name: "__ret", scope: !6321, file: !2, line: 162, type: !634)
!6321 = distinct !DILexicalBlock(scope: !6319, file: !2, line: 162, column: 10)
!6322 = !DILabel(scope: !624, name: "out", file: !2, line: 164)
!6323 = !DILabel(scope: !624, name: "out_unlock", file: !2, line: 169)
!6324 = !DILocation(line: 87, column: 40, scope: !624)
!6325 = !DILocation(line: 87, column: 61, scope: !624)
!6326 = !DILocation(line: 88, column: 25, scope: !624)
!6327 = !DILocation(line: 88, column: 49, scope: !624)
!6328 = !DILocation(line: 90, column: 2, scope: !624)
!6329 = !DILocation(line: 90, column: 18, scope: !624)
!6330 = !DILocation(line: 90, column: 31, scope: !624)
!6331 = !DILocation(line: 91, column: 2, scope: !624)
!6332 = !DILocation(line: 91, column: 16, scope: !624)
!6333 = !DILocation(line: 92, column: 2, scope: !624)
!6334 = !DILocation(line: 92, column: 6, scope: !624)
!6335 = !DILocation(line: 99, column: 7, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !624, file: !2, line: 99, column: 6)
!6337 = !DILocation(line: 99, column: 6, scope: !624)
!6338 = !DILocation(line: 100, column: 3, scope: !6336)
!6339 = !DILocation(line: 102, column: 6, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !624, file: !2, line: 102, column: 6)
!6341 = !DILocation(line: 102, column: 12, scope: !6340)
!6342 = !DILocation(line: 102, column: 6, scope: !624)
!6343 = !DILocation(line: 103, column: 14, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6340, file: !2, line: 102, column: 30)
!6345 = !DILocation(line: 104, column: 7, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6344, file: !2, line: 104, column: 7)
!6347 = !DILocation(line: 104, column: 7, scope: !6344)
!6348 = !DILocation(line: 105, column: 4, scope: !6346)
!6349 = !DILocation(line: 106, column: 2, scope: !6344)
!6350 = !DILocation(line: 107, column: 14, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6340, file: !2, line: 106, column: 9)
!6352 = !DILocation(line: 110, column: 6, scope: !6309)
!6353 = !DILocation(line: 110, column: 18, scope: !6309)
!6354 = !DILocation(line: 110, column: 6, scope: !624)
!6355 = !DILocation(line: 112, column: 15, scope: !6307)
!6356 = !DILocation(line: 112, column: 15, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6307, file: !2, line: 112, column: 15)
!6358 = !DILocation(line: 112, column: 15, scope: !6311)
!6359 = !{i64 2155840436}
!6360 = !DILocation(line: 112, column: 15, scope: !6308)
!6361 = !DILocation(line: 112, column: 3, scope: !6308)
!6362 = !DILocation(line: 113, column: 7, scope: !6308)
!6363 = !DILocation(line: 114, column: 3, scope: !6308)
!6364 = !DILocation(line: 116, column: 6, scope: !6315)
!6365 = !DILocation(line: 116, column: 12, scope: !6315)
!6366 = !DILocation(line: 116, column: 6, scope: !624)
!6367 = !DILocation(line: 122, column: 15, scope: !6313)
!6368 = !DILocation(line: 122, column: 15, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6313, file: !2, line: 122, column: 15)
!6370 = !DILocation(line: 122, column: 15, scope: !6317)
!6371 = !{i64 2155841739}
!6372 = !DILocation(line: 122, column: 15, scope: !6314)
!6373 = !DILocation(line: 122, column: 3, scope: !6314)
!6374 = !DILocation(line: 123, column: 2, scope: !6314)
!6375 = !DILocation(line: 125, column: 34, scope: !624)
!6376 = !DILocation(line: 125, column: 41, scope: !624)
!6377 = !DILocation(line: 125, column: 54, scope: !624)
!6378 = !DILocation(line: 125, column: 64, scope: !624)
!6379 = !DILocation(line: 125, column: 8, scope: !624)
!6380 = !DILocation(line: 125, column: 6, scope: !624)
!6381 = !DILocation(line: 126, column: 6, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !624, file: !2, line: 126, column: 6)
!6383 = !DILocation(line: 126, column: 6, scope: !624)
!6384 = !DILocation(line: 127, column: 3, scope: !6382)
!6385 = !DILocation(line: 129, column: 6, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !624, file: !2, line: 129, column: 6)
!6387 = !DILocation(line: 129, column: 12, scope: !6386)
!6388 = !DILocation(line: 129, column: 6, scope: !624)
!6389 = !DILocation(line: 130, column: 3, scope: !6386)
!6390 = !DILocation(line: 130, column: 10, scope: !6386)
!6391 = !DILocation(line: 130, column: 27, scope: !6386)
!6392 = !DILocation(line: 133, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !624, file: !2, line: 133, column: 6)
!6394 = !DILocation(line: 133, column: 12, scope: !6393)
!6395 = !DILocation(line: 133, column: 6, scope: !624)
!6396 = !DILocation(line: 134, column: 3, scope: !6393)
!6397 = !DILocation(line: 134, column: 10, scope: !6393)
!6398 = !DILocation(line: 134, column: 28, scope: !6393)
!6399 = !DILocation(line: 137, column: 30, scope: !624)
!6400 = !DILocation(line: 137, column: 8, scope: !624)
!6401 = !DILocation(line: 137, column: 6, scope: !624)
!6402 = !DILocation(line: 138, column: 6, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !624, file: !2, line: 138, column: 6)
!6404 = !DILocation(line: 138, column: 6, scope: !624)
!6405 = !DILocation(line: 139, column: 3, scope: !6403)
!6406 = !DILocation(line: 145, column: 37, scope: !624)
!6407 = !DILocation(line: 145, column: 8, scope: !624)
!6408 = !DILocation(line: 145, column: 6, scope: !624)
!6409 = !DILocation(line: 146, column: 6, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !624, file: !2, line: 146, column: 6)
!6411 = !DILocation(line: 146, column: 6, scope: !624)
!6412 = !DILocation(line: 147, column: 3, scope: !6410)
!6413 = !DILocation(line: 149, column: 9, scope: !6414)
!6414 = distinct !DILexicalBlock(scope: !624, file: !2, line: 149, column: 2)
!6415 = !DILocation(line: 149, column: 7, scope: !6414)
!6416 = !DILocation(line: 149, column: 14, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6414, file: !2, line: 149, column: 2)
!6418 = !DILocation(line: 149, column: 18, scope: !6417)
!6419 = !DILocation(line: 149, column: 16, scope: !6417)
!6420 = !DILocation(line: 149, column: 2, scope: !6414)
!6421 = !DILocation(line: 150, column: 29, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6417, file: !2, line: 149, column: 36)
!6423 = !DILocation(line: 150, column: 37, scope: !6422)
!6424 = !DILocation(line: 150, column: 44, scope: !6422)
!6425 = !DILocation(line: 150, column: 52, scope: !6422)
!6426 = !DILocation(line: 150, column: 9, scope: !6422)
!6427 = !DILocation(line: 150, column: 7, scope: !6422)
!6428 = !DILocation(line: 151, column: 7, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6422, file: !2, line: 151, column: 7)
!6430 = !DILocation(line: 151, column: 7, scope: !6422)
!6431 = !DILocation(line: 152, column: 4, scope: !6429)
!6432 = !DILocation(line: 153, column: 2, scope: !6422)
!6433 = !DILocation(line: 149, column: 32, scope: !6417)
!6434 = !DILocation(line: 149, column: 2, scope: !6417)
!6435 = distinct !{!6435, !6420, !6436, !6437, !6438}
!6436 = !DILocation(line: 153, column: 2, scope: !6414)
!6437 = !{!"llvm.loop.mustprogress"}
!6438 = !{!"llvm.loop.unroll.disable"}
!6439 = !DILocation(line: 155, column: 19, scope: !624)
!6440 = !DILocation(line: 155, column: 2, scope: !624)
!6441 = !DILocation(line: 157, column: 32, scope: !624)
!6442 = !DILocation(line: 157, column: 8, scope: !624)
!6443 = !DILocation(line: 157, column: 6, scope: !624)
!6444 = !DILocation(line: 158, column: 6, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !624, file: !2, line: 158, column: 6)
!6446 = !DILocation(line: 158, column: 6, scope: !624)
!6447 = !DILocation(line: 159, column: 3, scope: !6445)
!6448 = !DILocation(line: 162, column: 10, scope: !6319)
!6449 = !DILocation(line: 162, column: 10, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6319, file: !2, line: 162, column: 10)
!6451 = !DILocation(line: 162, column: 10, scope: !6321)
!6452 = !{i64 2155843007}
!6453 = !DILocation(line: 162, column: 10, scope: !624)
!6454 = !DILocation(line: 162, column: 8, scope: !624)
!6455 = !DILocation(line: 162, column: 2, scope: !624)
!6456 = !DILocation(line: 164, column: 1, scope: !624)
!6457 = !DILocation(line: 165, column: 7, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !624, file: !2, line: 165, column: 6)
!6459 = !DILocation(line: 165, column: 13, scope: !6458)
!6460 = !DILocation(line: 165, column: 31, scope: !6458)
!6461 = !DILocation(line: 165, column: 34, scope: !6458)
!6462 = !DILocation(line: 165, column: 6, scope: !624)
!6463 = !DILocation(line: 166, column: 3, scope: !6458)
!6464 = !DILocation(line: 168, column: 14, scope: !624)
!6465 = !DILocation(line: 168, column: 2, scope: !624)
!6466 = !DILocation(line: 169, column: 1, scope: !624)
!6467 = !DILocation(line: 170, column: 2, scope: !624)
!6468 = !DILocation(line: 171, column: 9, scope: !624)
!6469 = !DILocation(line: 171, column: 2, scope: !624)
!6470 = !DILocation(line: 172, column: 1, scope: !624)
!6471 = !DISubprogram(name: "kfree", scope: !14, file: !14, line: 227, type: !6472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6472 = !DISubroutineType(types: !6473)
!6473 = !{null, !582}
!6474 = !DISubprogram(name: "kexec_load_permitted", scope: !342, file: !342, line: 395, type: !6475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6475 = !DISubroutineType(types: !6476)
!6476 = !{!608, !97}
!6477 = !DISubprogram(name: "security_kernel_load_data", scope: !27, file: !27, line: 417, type: !6478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6478 = !DISubroutineType(types: !6479)
!6479 = !{!97, !26, !608}
!6480 = !DISubprogram(name: "security_locked_down", scope: !27, file: !27, line: 488, type: !6481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{!97, !43}
!6483 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6484, file: !6484, line: 51, type: !6485, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6487)
!6484 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6485 = !DISubroutineType(types: !6486)
!6486 = !{!608, !608}
!6487 = !{!6488}
!6488 = !DILocalVariable(name: "overflow", arg: 1, scope: !6483, file: !6484, line: 51, type: !608)
!6489 = !DILocation(line: 51, column: 60, scope: !6483)
!6490 = !DILocation(line: 53, column: 9, scope: !6483)
!6491 = !{i8 0, i8 2}
!6492 = !DILocation(line: 53, column: 2, scope: !6483)
!6493 = distinct !DISubprogram(name: "ERR_PTR", scope: !605, file: !605, line: 39, type: !6494, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6496)
!6494 = !DISubroutineType(types: !6495)
!6495 = !{!95, !352}
!6496 = !{!6497}
!6497 = !DILocalVariable(name: "error", arg: 1, scope: !6493, file: !605, line: 39, type: !352)
!6498 = !DILocation(line: 39, column: 48, scope: !6493)
!6499 = !DILocation(line: 41, column: 18, scope: !6493)
!6500 = !DILocation(line: 41, column: 9, scope: !6493)
!6501 = !DILocation(line: 41, column: 2, scope: !6493)
!6502 = !DISubprogram(name: "memdup_user", scope: !579, file: !579, line: 15, type: !6503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6503 = !DISubroutineType(types: !6504)
!6504 = !{!95, !582, !110}
!6505 = distinct !DISubprogram(name: "kexec_trylock", scope: !6506, file: !6506, line: 22, type: !3799, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!6506 = !DIFile(filename: "kernel/kexec_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "444968a356777549054ff8947fcf3734")
!6507 = !DILocation(line: 24, column: 9, scope: !6505)
!6508 = !DILocation(line: 24, column: 53, scope: !6505)
!6509 = !DILocation(line: 24, column: 2, scope: !6505)
!6510 = !DISubprogram(name: "arch_kexec_unprotect_crashkres", scope: !6284, file: !6284, line: 202, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6511 = !DISubprogram(name: "kimage_free", scope: !6506, file: !6506, line: 10, type: !6512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6512 = !DISubroutineType(types: !6513)
!6513 = !{null, !634}
!6514 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6515, file: !6515, line: 94, type: !6516, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6521)
!6515 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6516 = !DISubroutineType(types: !6517)
!6517 = !{null, !6518, !110}
!6518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6519, size: 64)
!6519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6520)
!6520 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6521 = !{!6522, !6523}
!6522 = !DILocalVariable(name: "v", arg: 1, scope: !6514, file: !6515, line: 94, type: !6518)
!6523 = !DILocalVariable(name: "size", arg: 2, scope: !6514, file: !6515, line: 94, type: !110)
!6524 = !DILocation(line: 94, column: 79, scope: !6514)
!6525 = !DILocation(line: 94, column: 89, scope: !6514)
!6526 = !DILocation(line: 96, column: 20, scope: !6514)
!6527 = !DILocation(line: 96, column: 23, scope: !6514)
!6528 = !DILocation(line: 96, column: 2, scope: !6514)
!6529 = !DILocation(line: 97, column: 2, scope: !6514)
!6530 = !DILocation(line: 98, column: 1, scope: !6514)
!6531 = distinct !DISubprogram(name: "kimage_alloc_init", scope: !2, file: !2, line: 22, type: !6532, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6534)
!6532 = !DISubroutineType(types: !6533)
!6533 = !{!97, !633, !114, !114, !340, !114}
!6534 = !{!6535, !6536, !6537, !6538, !6539, !6540, !6541, !6542, !6543, !6544}
!6535 = !DILocalVariable(name: "rimage", arg: 1, scope: !6531, file: !2, line: 22, type: !633)
!6536 = !DILocalVariable(name: "entry", arg: 2, scope: !6531, file: !2, line: 22, type: !114)
!6537 = !DILocalVariable(name: "nr_segments", arg: 3, scope: !6531, file: !2, line: 23, type: !114)
!6538 = !DILocalVariable(name: "segments", arg: 4, scope: !6531, file: !2, line: 24, type: !340)
!6539 = !DILocalVariable(name: "flags", arg: 5, scope: !6531, file: !2, line: 25, type: !114)
!6540 = !DILocalVariable(name: "ret", scope: !6531, file: !2, line: 27, type: !97)
!6541 = !DILocalVariable(name: "image", scope: !6531, file: !2, line: 28, type: !634)
!6542 = !DILocalVariable(name: "kexec_on_panic", scope: !6531, file: !2, line: 29, type: !608)
!6543 = !DILabel(scope: !6531, name: "out_free_control_pages", file: !2, line: 80)
!6544 = !DILabel(scope: !6531, name: "out_free_image", file: !2, line: 82)
!6545 = !DILocation(line: 22, column: 46, scope: !6531)
!6546 = !DILocation(line: 22, column: 68, scope: !6531)
!6547 = !DILocation(line: 23, column: 23, scope: !6531)
!6548 = !DILocation(line: 24, column: 31, scope: !6531)
!6549 = !DILocation(line: 25, column: 23, scope: !6531)
!6550 = !DILocation(line: 27, column: 2, scope: !6531)
!6551 = !DILocation(line: 27, column: 6, scope: !6531)
!6552 = !DILocation(line: 28, column: 2, scope: !6531)
!6553 = !DILocation(line: 28, column: 17, scope: !6531)
!6554 = !DILocation(line: 29, column: 2, scope: !6531)
!6555 = !DILocation(line: 29, column: 7, scope: !6531)
!6556 = !DILocation(line: 29, column: 24, scope: !6531)
!6557 = !DILocation(line: 29, column: 30, scope: !6531)
!6558 = !DILocation(line: 31, column: 6, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6531, file: !2, line: 31, column: 6)
!6560 = !DILocation(line: 31, column: 6, scope: !6531)
!6561 = !DILocation(line: 33, column: 8, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6563, file: !2, line: 33, column: 7)
!6563 = distinct !DILexicalBlock(scope: !6559, file: !2, line: 31, column: 22)
!6564 = !DILocation(line: 33, column: 45, scope: !6562)
!6565 = !DILocation(line: 33, column: 16, scope: !6562)
!6566 = !DILocation(line: 33, column: 14, scope: !6562)
!6567 = !DILocation(line: 33, column: 53, scope: !6562)
!6568 = !DILocation(line: 34, column: 8, scope: !6562)
!6569 = !DILocation(line: 34, column: 45, scope: !6562)
!6570 = !DILocation(line: 34, column: 16, scope: !6562)
!6571 = !DILocation(line: 34, column: 14, scope: !6562)
!6572 = !DILocation(line: 33, column: 7, scope: !6563)
!6573 = !DILocation(line: 35, column: 4, scope: !6562)
!6574 = !DILocation(line: 36, column: 2, scope: !6563)
!6575 = !DILocation(line: 39, column: 10, scope: !6531)
!6576 = !DILocation(line: 39, column: 8, scope: !6531)
!6577 = !DILocation(line: 40, column: 7, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6531, file: !2, line: 40, column: 6)
!6579 = !DILocation(line: 40, column: 6, scope: !6531)
!6580 = !DILocation(line: 41, column: 3, scope: !6578)
!6581 = !DILocation(line: 43, column: 17, scope: !6531)
!6582 = !DILocation(line: 43, column: 2, scope: !6531)
!6583 = !DILocation(line: 43, column: 9, scope: !6531)
!6584 = !DILocation(line: 43, column: 15, scope: !6531)
!6585 = !DILocation(line: 44, column: 23, scope: !6531)
!6586 = !DILocation(line: 44, column: 2, scope: !6531)
!6587 = !DILocation(line: 44, column: 9, scope: !6531)
!6588 = !DILocation(line: 44, column: 21, scope: !6531)
!6589 = !DILocation(line: 45, column: 9, scope: !6531)
!6590 = !DILocation(line: 45, column: 16, scope: !6531)
!6591 = !DILocation(line: 45, column: 2, scope: !6531)
!6592 = !DILocation(line: 45, column: 25, scope: !6531)
!6593 = !DILocation(line: 45, column: 35, scope: !6531)
!6594 = !DILocation(line: 45, column: 47, scope: !6531)
!6595 = !DILocation(line: 47, column: 6, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6531, file: !2, line: 47, column: 6)
!6597 = !DILocation(line: 47, column: 6, scope: !6531)
!6598 = !DILocation(line: 49, column: 36, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6596, file: !2, line: 47, column: 22)
!6600 = !DILocation(line: 49, column: 3, scope: !6599)
!6601 = !DILocation(line: 49, column: 10, scope: !6599)
!6602 = !DILocation(line: 49, column: 23, scope: !6599)
!6603 = !DILocation(line: 50, column: 3, scope: !6599)
!6604 = !DILocation(line: 50, column: 10, scope: !6599)
!6605 = !DILocation(line: 50, column: 15, scope: !6599)
!6606 = !DILocation(line: 51, column: 2, scope: !6599)
!6607 = !DILocation(line: 53, column: 34, scope: !6531)
!6608 = !DILocation(line: 53, column: 8, scope: !6531)
!6609 = !DILocation(line: 53, column: 6, scope: !6531)
!6610 = !DILocation(line: 54, column: 6, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6531, file: !2, line: 54, column: 6)
!6612 = !DILocation(line: 54, column: 6, scope: !6531)
!6613 = !DILocation(line: 55, column: 3, scope: !6611)
!6614 = !DILocation(line: 62, column: 6, scope: !6531)
!6615 = !DILocation(line: 63, column: 56, scope: !6531)
!6616 = !DILocation(line: 64, column: 9, scope: !6531)
!6617 = !DILocation(line: 63, column: 29, scope: !6531)
!6618 = !DILocation(line: 63, column: 2, scope: !6531)
!6619 = !DILocation(line: 63, column: 9, scope: !6531)
!6620 = !DILocation(line: 63, column: 27, scope: !6531)
!6621 = !DILocation(line: 65, column: 7, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6531, file: !2, line: 65, column: 6)
!6623 = !DILocation(line: 65, column: 14, scope: !6622)
!6624 = !DILocation(line: 65, column: 6, scope: !6531)
!6625 = !DILocation(line: 66, column: 3, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6627, file: !2, line: 66, column: 3)
!6627 = distinct !DILexicalBlock(scope: !6622, file: !2, line: 65, column: 33)
!6628 = !DILocation(line: 66, column: 3, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6626, file: !2, line: 66, column: 3)
!6630 = !DILocation(line: 67, column: 3, scope: !6627)
!6631 = !DILocation(line: 70, column: 7, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6531, file: !2, line: 70, column: 6)
!6633 = !DILocation(line: 70, column: 6, scope: !6531)
!6634 = !DILocation(line: 71, column: 49, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6632, file: !2, line: 70, column: 23)
!6636 = !DILocation(line: 71, column: 22, scope: !6635)
!6637 = !DILocation(line: 71, column: 3, scope: !6635)
!6638 = !DILocation(line: 71, column: 10, scope: !6635)
!6639 = !DILocation(line: 71, column: 20, scope: !6635)
!6640 = !DILocation(line: 72, column: 8, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6635, file: !2, line: 72, column: 7)
!6642 = !DILocation(line: 72, column: 15, scope: !6641)
!6643 = !DILocation(line: 72, column: 7, scope: !6635)
!6644 = !DILocation(line: 73, column: 4, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6646, file: !2, line: 73, column: 4)
!6646 = distinct !DILexicalBlock(scope: !6641, file: !2, line: 72, column: 26)
!6647 = !DILocation(line: 73, column: 4, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6645, file: !2, line: 73, column: 4)
!6649 = !DILocation(line: 74, column: 4, scope: !6646)
!6650 = !DILocation(line: 76, column: 2, scope: !6635)
!6651 = !DILocation(line: 78, column: 12, scope: !6531)
!6652 = !DILocation(line: 78, column: 3, scope: !6531)
!6653 = !DILocation(line: 78, column: 10, scope: !6531)
!6654 = !DILocation(line: 79, column: 2, scope: !6531)
!6655 = !DILocation(line: 80, column: 1, scope: !6531)
!6656 = !DILocation(line: 81, column: 25, scope: !6531)
!6657 = !DILocation(line: 81, column: 32, scope: !6531)
!6658 = !DILocation(line: 81, column: 2, scope: !6531)
!6659 = !DILocation(line: 82, column: 1, scope: !6531)
!6660 = !DILocation(line: 83, column: 8, scope: !6531)
!6661 = !DILocation(line: 83, column: 2, scope: !6531)
!6662 = !DILocation(line: 84, column: 9, scope: !6531)
!6663 = !DILocation(line: 84, column: 2, scope: !6531)
!6664 = !DILocation(line: 85, column: 1, scope: !6531)
!6665 = !DISubprogram(name: "machine_kexec_prepare", scope: !342, file: !342, line: 375, type: !6666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6666 = !DISubroutineType(types: !6667)
!6667 = !{!97, !634}
!6668 = !DISubprogram(name: "kimage_crash_copy_vmcoreinfo", scope: !342, file: !342, line: 390, type: !6666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6669 = !DISubprogram(name: "kimage_load_segment", scope: !6506, file: !6506, line: 11, type: !6670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6670 = !DISubroutineType(types: !6671)
!6671 = !{!97, !634, !340}
!6672 = !DISubprogram(name: "kimage_terminate", scope: !6506, file: !6506, line: 12, type: !6512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6673 = distinct !DISubprogram(name: "machine_kexec_post_load", scope: !342, file: !342, line: 382, type: !6666, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6674)
!6674 = !{!6675}
!6675 = !DILocalVariable(name: "image", arg: 1, scope: !6673, file: !342, line: 382, type: !634)
!6676 = !DILocation(line: 382, column: 58, scope: !6673)
!6677 = !DILocation(line: 382, column: 67, scope: !6673)
!6678 = !DISubprogram(name: "arch_kexec_protect_crashkres", scope: !6284, file: !6284, line: 199, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6679 = distinct !DISubprogram(name: "kexec_unlock", scope: !6506, file: !6506, line: 26, type: !2572, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!6680 = !DILocation(line: 28, column: 2, scope: !6679)
!6681 = !DILocation(line: 29, column: 1, scope: !6679)
!6682 = distinct !DISubprogram(name: "atomic_cmpxchg_acquire", scope: !6683, file: !6683, line: 1211, type: !6684, scopeLine: 1212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6687)
!6683 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6684 = !DISubroutineType(types: !6685)
!6685 = !{!97, !6686, !97, !97}
!6686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!6687 = !{!6688, !6689, !6690}
!6688 = !DILocalVariable(name: "v", arg: 1, scope: !6682, file: !6683, line: 1211, type: !6686)
!6689 = !DILocalVariable(name: "old", arg: 2, scope: !6682, file: !6683, line: 1211, type: !97)
!6690 = !DILocalVariable(name: "new", arg: 3, scope: !6682, file: !6683, line: 1211, type: !97)
!6691 = !DILocation(line: 1211, column: 34, scope: !6682)
!6692 = !DILocation(line: 1211, column: 41, scope: !6682)
!6693 = !DILocation(line: 1211, column: 50, scope: !6682)
!6694 = !DILocation(line: 1213, column: 31, scope: !6682)
!6695 = !DILocation(line: 1213, column: 2, scope: !6682)
!6696 = !DILocation(line: 1214, column: 36, scope: !6682)
!6697 = !DILocation(line: 1214, column: 39, scope: !6682)
!6698 = !DILocation(line: 1214, column: 44, scope: !6682)
!6699 = !DILocation(line: 1214, column: 9, scope: !6682)
!6700 = !DILocation(line: 1214, column: 2, scope: !6682)
!6701 = distinct !DISubprogram(name: "raw_atomic_cmpxchg_acquire", scope: !6702, file: !6702, line: 2029, type: !6684, scopeLine: 2030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6703)
!6702 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6703 = !{!6704, !6705, !6706}
!6704 = !DILocalVariable(name: "v", arg: 1, scope: !6701, file: !6702, line: 2029, type: !6686)
!6705 = !DILocalVariable(name: "old", arg: 2, scope: !6701, file: !6702, line: 2029, type: !97)
!6706 = !DILocalVariable(name: "new", arg: 3, scope: !6701, file: !6702, line: 2029, type: !97)
!6707 = !DILocation(line: 2029, column: 38, scope: !6701)
!6708 = !DILocation(line: 2029, column: 45, scope: !6701)
!6709 = !DILocation(line: 2029, column: 54, scope: !6701)
!6710 = !DILocation(line: 2038, column: 29, scope: !6701)
!6711 = !DILocation(line: 2038, column: 32, scope: !6701)
!6712 = !DILocation(line: 2038, column: 37, scope: !6701)
!6713 = !DILocation(line: 2038, column: 9, scope: !6701)
!6714 = !DILocation(line: 2038, column: 2, scope: !6701)
!6715 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !6716, file: !6716, line: 107, type: !6684, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6717)
!6716 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6717 = !{!6718, !6719, !6720, !6721, !6723, !6724, !6725}
!6718 = !DILocalVariable(name: "v", arg: 1, scope: !6715, file: !6716, line: 107, type: !6686)
!6719 = !DILocalVariable(name: "old", arg: 2, scope: !6715, file: !6716, line: 107, type: !97)
!6720 = !DILocalVariable(name: "new", arg: 3, scope: !6715, file: !6716, line: 107, type: !97)
!6721 = !DILocalVariable(name: "__ret", scope: !6722, file: !6716, line: 109, type: !97)
!6722 = distinct !DILexicalBlock(scope: !6715, file: !6716, line: 109, column: 9)
!6723 = !DILocalVariable(name: "__old", scope: !6722, file: !6716, line: 109, type: !97)
!6724 = !DILocalVariable(name: "__new", scope: !6722, file: !6716, line: 109, type: !97)
!6725 = !DILocalVariable(name: "__ptr", scope: !6722, file: !6716, line: 109, type: !353)
!6726 = !DILocation(line: 107, column: 58, scope: !6715)
!6727 = !DILocation(line: 107, column: 65, scope: !6715)
!6728 = !DILocation(line: 107, column: 74, scope: !6715)
!6729 = !DILocation(line: 109, column: 9, scope: !6722)
!6730 = !{i64 2149081201, i64 2149081240, i64 2149081261, i64 2149081298, i64 2149081321, i64 2149081330}
!6731 = !DILocation(line: 109, column: 9, scope: !6715)
!6732 = !DILocation(line: 109, column: 2, scope: !6715)
!6733 = distinct !DISubprogram(name: "kasan_check_write", scope: !6734, file: !6734, line: 44, type: !6735, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6737)
!6734 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6735 = !DISubroutineType(types: !6736)
!6736 = !{!608, !6518, !28}
!6737 = !{!6738, !6739}
!6738 = !DILocalVariable(name: "p", arg: 1, scope: !6733, file: !6734, line: 44, type: !6518)
!6739 = !DILocalVariable(name: "size", arg: 2, scope: !6733, file: !6734, line: 44, type: !28)
!6740 = !DILocation(line: 44, column: 59, scope: !6733)
!6741 = !DILocation(line: 44, column: 75, scope: !6733)
!6742 = !DILocation(line: 46, column: 2, scope: !6733)
!6743 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6744, file: !6744, line: 229, type: !6745, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6747)
!6744 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6745 = !DISubroutineType(types: !6746)
!6746 = !{null, !6518, !110, !97}
!6747 = !{!6748, !6749, !6750}
!6748 = !DILocalVariable(name: "ptr", arg: 1, scope: !6743, file: !6744, line: 229, type: !6518)
!6749 = !DILocalVariable(name: "size", arg: 2, scope: !6743, file: !6744, line: 229, type: !110)
!6750 = !DILocalVariable(name: "type", arg: 3, scope: !6743, file: !6744, line: 230, type: !97)
!6751 = !DILocation(line: 229, column: 60, scope: !6743)
!6752 = !DILocation(line: 229, column: 72, scope: !6743)
!6753 = !DILocation(line: 230, column: 15, scope: !6743)
!6754 = !DILocation(line: 230, column: 23, scope: !6743)
!6755 = distinct !DISubprogram(name: "phys_to_boot_phys", scope: !342, file: !342, line: 448, type: !6756, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6758)
!6756 = !DISubroutineType(types: !6757)
!6757 = !{!114, !3301}
!6758 = !{!6759}
!6759 = !DILocalVariable(name: "phys", arg: 1, scope: !6755, file: !342, line: 448, type: !3301)
!6760 = !DILocation(line: 448, column: 59, scope: !6755)
!6761 = !DILocation(line: 450, column: 9, scope: !6755)
!6762 = !DILocation(line: 450, column: 2, scope: !6755)
!6763 = !DISubprogram(name: "do_kimage_alloc_init", scope: !6506, file: !6506, line: 7, type: !6764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!634}
!6766 = !DISubprogram(name: "sanity_check_segment_list", scope: !6506, file: !6506, line: 8, type: !6666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6767 = !DISubprogram(name: "kimage_alloc_control_pages", scope: !342, file: !342, line: 378, type: !6768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6768 = !DISubroutineType(types: !6769)
!6769 = !{!644, !634, !28}
!6770 = distinct !DISubprogram(name: "get_order", scope: !6771, file: !6771, line: 29, type: !6772, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6774)
!6771 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ad2a20729bf2780fb61509a4eca111b")
!6772 = !DISubroutineType(types: !6773)
!6773 = !{!97, !114}
!6774 = !{!6775}
!6775 = !DILocalVariable(name: "size", arg: 1, scope: !6770, file: !6771, line: 29, type: !114)
!6776 = !DILocation(line: 29, column: 72, scope: !6770)
!6777 = !DILocation(line: 31, column: 27, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6770, file: !6771, line: 31, column: 6)
!6779 = !DILocation(line: 31, column: 6, scope: !6778)
!6780 = !DILocation(line: 31, column: 6, scope: !6770)
!6781 = !DILocation(line: 32, column: 8, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6783, file: !6771, line: 32, column: 7)
!6783 = distinct !DILexicalBlock(scope: !6778, file: !6771, line: 31, column: 34)
!6784 = !DILocation(line: 32, column: 7, scope: !6783)
!6785 = !DILocation(line: 33, column: 4, scope: !6782)
!6786 = !DILocation(line: 35, column: 7, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6783, file: !6771, line: 35, column: 7)
!6788 = !DILocation(line: 35, column: 12, scope: !6787)
!6789 = !DILocation(line: 35, column: 7, scope: !6783)
!6790 = !DILocation(line: 36, column: 4, scope: !6787)
!6791 = !DILocation(line: 38, column: 10, scope: !6783)
!6792 = !DILocation(line: 38, column: 28, scope: !6783)
!6793 = !DILocation(line: 38, column: 41, scope: !6783)
!6794 = !DILocation(line: 38, column: 3, scope: !6783)
!6795 = !DILocation(line: 41, column: 6, scope: !6770)
!6796 = !DILocation(line: 42, column: 7, scope: !6770)
!6797 = !DILocation(line: 46, column: 15, scope: !6770)
!6798 = !DILocation(line: 46, column: 9, scope: !6770)
!6799 = !DILocation(line: 46, column: 2, scope: !6770)
!6800 = !DILocation(line: 48, column: 1, scope: !6770)
!6801 = !DISubprogram(name: "_printk", scope: !6802, file: !6802, line: 153, type: !6803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6802 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6803 = !DISubroutineType(types: !6804)
!6804 = !{!97, !92, null}
!6805 = !DISubprogram(name: "kimage_free_page_list", scope: !6506, file: !6506, line: 9, type: !6806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6806 = !DISubroutineType(types: !6807)
!6807 = !{null, !175}
!6808 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6809, file: !6809, line: 30, type: !6810, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6812)
!6809 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!6810 = !DISubroutineType(types: !6811)
!6811 = !{!97, !411}
!6812 = !{!6813}
!6813 = !DILocalVariable(name: "n", arg: 1, scope: !6808, file: !6809, line: 30, type: !411)
!6814 = !DILocation(line: 30, column: 21, scope: !6808)
!6815 = !DILocation(line: 32, column: 15, scope: !6808)
!6816 = !DILocation(line: 32, column: 9, scope: !6808)
!6817 = !DILocation(line: 32, column: 18, scope: !6808)
!6818 = !DILocation(line: 32, column: 2, scope: !6808)
!6819 = distinct !DISubprogram(name: "fls64", scope: !6820, file: !6820, line: 401, type: !6821, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6823)
!6820 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6821 = !DISubroutineType(types: !6822)
!6822 = !{!97, !412}
!6823 = !{!6824, !6825}
!6824 = !DILocalVariable(name: "x", arg: 1, scope: !6819, file: !6820, line: 401, type: !412)
!6825 = !DILocalVariable(name: "bitpos", scope: !6819, file: !6820, line: 403, type: !97)
!6826 = !DILocation(line: 401, column: 40, scope: !6819)
!6827 = !DILocation(line: 403, column: 2, scope: !6819)
!6828 = !DILocation(line: 403, column: 6, scope: !6819)
!6829 = !DILocation(line: 409, column: 2, scope: !6819)
!6830 = !DILocation(line: 411, column: 14, scope: !6819)
!6831 = !{i64 848278}
!6832 = !DILocation(line: 412, column: 9, scope: !6819)
!6833 = !DILocation(line: 412, column: 16, scope: !6819)
!6834 = !DILocation(line: 413, column: 1, scope: !6819)
!6835 = !DILocation(line: 412, column: 2, scope: !6819)
!6836 = distinct !DISubprogram(name: "atomic_set_release", scope: !6683, file: !6683, line: 83, type: !6837, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6839)
!6837 = !DISubroutineType(types: !6838)
!6838 = !{null, !6686, !97}
!6839 = !{!6840, !6841}
!6840 = !DILocalVariable(name: "v", arg: 1, scope: !6836, file: !6683, line: 83, type: !6686)
!6841 = !DILocalVariable(name: "i", arg: 2, scope: !6836, file: !6683, line: 83, type: !97)
!6842 = !DILocation(line: 83, column: 30, scope: !6836)
!6843 = !DILocation(line: 83, column: 37, scope: !6836)
!6844 = !DILocation(line: 85, column: 2, scope: !6836)
!6845 = !DILocation(line: 85, column: 2, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6836, file: !6683, line: 85, column: 2)
!6847 = !DILocation(line: 86, column: 26, scope: !6836)
!6848 = !DILocation(line: 86, column: 2, scope: !6836)
!6849 = !DILocation(line: 87, column: 25, scope: !6836)
!6850 = !DILocation(line: 87, column: 28, scope: !6836)
!6851 = !DILocation(line: 87, column: 2, scope: !6836)
!6852 = !DILocation(line: 88, column: 1, scope: !6836)
!6853 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6515, file: !6515, line: 80, type: !6516, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6854)
!6854 = !{!6855, !6856}
!6855 = !DILocalVariable(name: "v", arg: 1, scope: !6853, file: !6515, line: 80, type: !6518)
!6856 = !DILocalVariable(name: "size", arg: 2, scope: !6853, file: !6515, line: 80, type: !110)
!6857 = !DILocation(line: 80, column: 74, scope: !6853)
!6858 = !DILocation(line: 80, column: 84, scope: !6853)
!6859 = !DILocation(line: 82, column: 20, scope: !6853)
!6860 = !DILocation(line: 82, column: 23, scope: !6853)
!6861 = !DILocation(line: 82, column: 2, scope: !6853)
!6862 = !DILocation(line: 83, column: 2, scope: !6853)
!6863 = !DILocation(line: 84, column: 1, scope: !6853)
!6864 = distinct !DISubprogram(name: "raw_atomic_set_release", scope: !6702, file: !6702, line: 505, type: !6837, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6865)
!6865 = !{!6866, !6867}
!6866 = !DILocalVariable(name: "v", arg: 1, scope: !6864, file: !6702, line: 505, type: !6686)
!6867 = !DILocalVariable(name: "i", arg: 2, scope: !6864, file: !6702, line: 505, type: !97)
!6868 = !DILocation(line: 505, column: 34, scope: !6864)
!6869 = !DILocation(line: 505, column: 41, scope: !6864)
!6870 = !DILocation(line: 511, column: 3, scope: !6871)
!6871 = distinct !DILexicalBlock(scope: !6872, file: !6702, line: 510, column: 31)
!6872 = distinct !DILexicalBlock(scope: !6864, file: !6702, line: 510, column: 6)
!6873 = !DILocation(line: 511, column: 3, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6871, file: !6702, line: 511, column: 3)
!6875 = !DILocation(line: 511, column: 3, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6874, file: !6702, line: 511, column: 3)
!6877 = !DILocation(line: 511, column: 3, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6874, file: !6702, line: 511, column: 3)
!6879 = !DILocation(line: 511, column: 3, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6878, file: !6702, line: 511, column: 3)
!6881 = !{i64 2149254169}
!6882 = !DILocation(line: 511, column: 3, scope: !6883)
!6883 = distinct !DILexicalBlock(scope: !6878, file: !6702, line: 511, column: 3)
!6884 = !DILocation(line: 511, column: 3, scope: !6885)
!6885 = distinct !DILexicalBlock(scope: !6883, file: !6702, line: 511, column: 3)
!6886 = !DILocation(line: 511, column: 3, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6883, file: !6702, line: 511, column: 3)
!6888 = !DILocation(line: 517, column: 1, scope: !6864)
!6889 = distinct !DISubprogram(name: "__do_compat_sys_kexec_load", scope: !2, file: !2, line: 261, type: !6890, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6892)
!6890 = !DISubroutineType(types: !6891)
!6891 = !{!352, !359, !359, !361, !359}
!6892 = !{!6893, !6894, !6895, !6896, !6897, !6898, !6899, !6900, !6901}
!6893 = !DILocalVariable(name: "entry", arg: 1, scope: !6889, file: !2, line: 261, type: !359)
!6894 = !DILocalVariable(name: "nr_segments", arg: 2, scope: !6889, file: !2, line: 261, type: !359)
!6895 = !DILocalVariable(name: "segments", arg: 3, scope: !6889, file: !2, line: 261, type: !361)
!6896 = !DILocalVariable(name: "flags", arg: 4, scope: !6889, file: !2, line: 261, type: !359)
!6897 = !DILocalVariable(name: "in", scope: !6889, file: !2, line: 266, type: !362)
!6898 = !DILocalVariable(name: "ksegments", scope: !6889, file: !2, line: 267, type: !340)
!6899 = !DILocalVariable(name: "i", scope: !6889, file: !2, line: 268, type: !114)
!6900 = !DILocalVariable(name: "result", scope: !6889, file: !2, line: 268, type: !114)
!6901 = !DILabel(scope: !6889, name: "fail", file: !2, line: 298)
!6902 = !DILocation(line: 261, column: 1, scope: !6889)
!6903 = !DILocation(line: 266, column: 2, scope: !6889)
!6904 = !DILocation(line: 266, column: 30, scope: !6889)
!6905 = !DILocation(line: 267, column: 2, scope: !6889)
!6906 = !DILocation(line: 267, column: 24, scope: !6889)
!6907 = !DILocation(line: 268, column: 2, scope: !6889)
!6908 = !DILocation(line: 268, column: 16, scope: !6889)
!6909 = !DILocation(line: 268, column: 19, scope: !6889)
!6910 = !DILocation(line: 270, column: 28, scope: !6889)
!6911 = !DILocation(line: 270, column: 41, scope: !6889)
!6912 = !DILocation(line: 270, column: 11, scope: !6889)
!6913 = !DILocation(line: 270, column: 9, scope: !6889)
!6914 = !DILocation(line: 271, column: 6, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6889, file: !2, line: 271, column: 6)
!6916 = !DILocation(line: 271, column: 6, scope: !6889)
!6917 = !DILocation(line: 272, column: 10, scope: !6915)
!6918 = !DILocation(line: 272, column: 3, scope: !6915)
!6919 = !DILocation(line: 277, column: 7, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6889, file: !2, line: 277, column: 6)
!6921 = !DILocation(line: 277, column: 13, scope: !6920)
!6922 = !DILocation(line: 277, column: 32, scope: !6920)
!6923 = !DILocation(line: 277, column: 6, scope: !6889)
!6924 = !DILocation(line: 278, column: 3, scope: !6920)
!6925 = !DILocation(line: 280, column: 28, scope: !6889)
!6926 = !DILocation(line: 280, column: 14, scope: !6889)
!6927 = !DILocation(line: 280, column: 12, scope: !6889)
!6928 = !DILocation(line: 282, column: 7, scope: !6929)
!6929 = distinct !DILexicalBlock(scope: !6889, file: !2, line: 282, column: 6)
!6930 = !DILocation(line: 282, column: 6, scope: !6889)
!6931 = !DILocation(line: 283, column: 3, scope: !6929)
!6932 = !DILocation(line: 285, column: 9, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6889, file: !2, line: 285, column: 2)
!6934 = !DILocation(line: 285, column: 7, scope: !6933)
!6935 = !DILocation(line: 285, column: 14, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6933, file: !2, line: 285, column: 2)
!6937 = !DILocation(line: 285, column: 18, scope: !6936)
!6938 = !DILocation(line: 285, column: 16, scope: !6936)
!6939 = !DILocation(line: 285, column: 2, scope: !6933)
!6940 = !DILocation(line: 286, column: 33, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6936, file: !2, line: 285, column: 36)
!6942 = !DILocation(line: 286, column: 42, scope: !6941)
!6943 = !DILocation(line: 286, column: 12, scope: !6941)
!6944 = !DILocation(line: 286, column: 10, scope: !6941)
!6945 = !DILocation(line: 287, column: 7, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6941, file: !2, line: 287, column: 7)
!6947 = !DILocation(line: 287, column: 7, scope: !6941)
!6948 = !DILocation(line: 288, column: 4, scope: !6946)
!6949 = !DILocation(line: 290, column: 38, scope: !6941)
!6950 = !DILocation(line: 290, column: 24, scope: !6941)
!6951 = !DILocation(line: 290, column: 3, scope: !6941)
!6952 = !DILocation(line: 290, column: 13, scope: !6941)
!6953 = !DILocation(line: 290, column: 16, scope: !6941)
!6954 = !DILocation(line: 290, column: 22, scope: !6941)
!6955 = !DILocation(line: 291, column: 27, scope: !6941)
!6956 = !DILocation(line: 291, column: 24, scope: !6941)
!6957 = !DILocation(line: 291, column: 3, scope: !6941)
!6958 = !DILocation(line: 291, column: 13, scope: !6941)
!6959 = !DILocation(line: 291, column: 16, scope: !6941)
!6960 = !DILocation(line: 291, column: 22, scope: !6941)
!6961 = !DILocation(line: 292, column: 27, scope: !6941)
!6962 = !DILocation(line: 292, column: 24, scope: !6941)
!6963 = !DILocation(line: 292, column: 3, scope: !6941)
!6964 = !DILocation(line: 292, column: 13, scope: !6941)
!6965 = !DILocation(line: 292, column: 16, scope: !6941)
!6966 = !DILocation(line: 292, column: 22, scope: !6941)
!6967 = !DILocation(line: 293, column: 27, scope: !6941)
!6968 = !DILocation(line: 293, column: 24, scope: !6941)
!6969 = !DILocation(line: 293, column: 3, scope: !6941)
!6970 = !DILocation(line: 293, column: 13, scope: !6941)
!6971 = !DILocation(line: 293, column: 16, scope: !6941)
!6972 = !DILocation(line: 293, column: 22, scope: !6941)
!6973 = !DILocation(line: 294, column: 2, scope: !6941)
!6974 = !DILocation(line: 285, column: 32, scope: !6936)
!6975 = !DILocation(line: 285, column: 2, scope: !6936)
!6976 = distinct !{!6976, !6939, !6977, !6437, !6438}
!6977 = !DILocation(line: 294, column: 2, scope: !6933)
!6978 = !DILocation(line: 296, column: 25, scope: !6889)
!6979 = !DILocation(line: 296, column: 32, scope: !6889)
!6980 = !DILocation(line: 296, column: 45, scope: !6889)
!6981 = !DILocation(line: 296, column: 56, scope: !6889)
!6982 = !DILocation(line: 296, column: 11, scope: !6889)
!6983 = !DILocation(line: 296, column: 9, scope: !6889)
!6984 = !DILocation(line: 296, column: 2, scope: !6889)
!6985 = !DILocation(line: 298, column: 1, scope: !6889)
!6986 = !DILocation(line: 299, column: 8, scope: !6889)
!6987 = !DILocation(line: 299, column: 2, scope: !6889)
!6988 = !DILocation(line: 300, column: 9, scope: !6889)
!6989 = !DILocation(line: 300, column: 2, scope: !6889)
!6990 = !DILocation(line: 301, column: 1, scope: !6889)
!6991 = distinct !DISubprogram(name: "kmalloc_array", scope: !14, file: !14, line: 629, type: !6992, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6994)
!6992 = !DISubroutineType(types: !6993)
!6993 = !{!95, !110, !110, !370}
!6994 = !{!6995, !6996, !6997, !6998}
!6995 = !DILocalVariable(name: "n", arg: 1, scope: !6991, file: !14, line: 629, type: !110)
!6996 = !DILocalVariable(name: "size", arg: 2, scope: !6991, file: !14, line: 629, type: !110)
!6997 = !DILocalVariable(name: "flags", arg: 3, scope: !6991, file: !14, line: 629, type: !370)
!6998 = !DILocalVariable(name: "bytes", scope: !6991, file: !14, line: 631, type: !110)
!6999 = !DILocation(line: 629, column: 61, scope: !6991)
!7000 = !DILocation(line: 629, column: 71, scope: !6991)
!7001 = !DILocation(line: 629, column: 83, scope: !6991)
!7002 = !DILocation(line: 631, column: 2, scope: !6991)
!7003 = !DILocation(line: 631, column: 9, scope: !6991)
!7004 = !DILocation(line: 633, column: 6, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !6991, file: !14, line: 633, column: 6)
!7006 = !DILocation(line: 633, column: 6, scope: !6991)
!7007 = !DILocation(line: 634, column: 3, scope: !7005)
!7008 = !DILocation(line: 635, column: 27, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !6991, file: !14, line: 635, column: 6)
!7010 = !DILocation(line: 635, column: 6, scope: !7009)
!7011 = !DILocation(line: 635, column: 30, scope: !7009)
!7012 = !DILocation(line: 635, column: 54, scope: !7009)
!7013 = !DILocation(line: 635, column: 33, scope: !7009)
!7014 = !DILocation(line: 635, column: 6, scope: !6991)
!7015 = !DILocation(line: 636, column: 18, scope: !7009)
!7016 = !DILocation(line: 636, column: 25, scope: !7009)
!7017 = !DILocation(line: 636, column: 10, scope: !7009)
!7018 = !DILocation(line: 636, column: 3, scope: !7009)
!7019 = !DILocation(line: 637, column: 19, scope: !6991)
!7020 = !DILocation(line: 637, column: 26, scope: !6991)
!7021 = !DILocation(line: 637, column: 9, scope: !6991)
!7022 = !DILocation(line: 637, column: 2, scope: !6991)
!7023 = !DILocation(line: 638, column: 1, scope: !6991)
!7024 = distinct !DISubprogram(name: "copy_from_user", scope: !7025, file: !7025, line: 180, type: !7026, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7028)
!7025 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!7026 = !DISubroutineType(types: !7027)
!7027 = !{!114, !95, !582, !114}
!7028 = !{!7029, !7030, !7031}
!7029 = !DILocalVariable(name: "to", arg: 1, scope: !7024, file: !7025, line: 180, type: !95)
!7030 = !DILocalVariable(name: "from", arg: 2, scope: !7024, file: !7025, line: 180, type: !582)
!7031 = !DILocalVariable(name: "n", arg: 3, scope: !7024, file: !7025, line: 180, type: !114)
!7032 = !DILocation(line: 180, column: 22, scope: !7024)
!7033 = !DILocation(line: 180, column: 45, scope: !7024)
!7034 = !DILocation(line: 180, column: 65, scope: !7024)
!7035 = !DILocation(line: 182, column: 22, scope: !7036)
!7036 = distinct !DILexicalBlock(scope: !7024, file: !7025, line: 182, column: 6)
!7037 = !DILocation(line: 182, column: 26, scope: !7036)
!7038 = !DILocation(line: 182, column: 6, scope: !7036)
!7039 = !DILocation(line: 182, column: 6, scope: !7024)
!7040 = !DILocation(line: 183, column: 23, scope: !7036)
!7041 = !DILocation(line: 183, column: 27, scope: !7036)
!7042 = !DILocation(line: 183, column: 33, scope: !7036)
!7043 = !DILocation(line: 183, column: 7, scope: !7036)
!7044 = !DILocation(line: 183, column: 5, scope: !7036)
!7045 = !DILocation(line: 183, column: 3, scope: !7036)
!7046 = !DILocation(line: 184, column: 9, scope: !7024)
!7047 = !DILocation(line: 184, column: 2, scope: !7024)
!7048 = distinct !DISubprogram(name: "compat_ptr", scope: !3097, file: !3097, line: 977, type: !7049, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7051)
!7049 = !DISubroutineType(types: !7050)
!7050 = !{!95, !365}
!7051 = !{!7052}
!7052 = !DILocalVariable(name: "uptr", arg: 1, scope: !7048, file: !3097, line: 977, type: !365)
!7053 = !DILocation(line: 977, column: 53, scope: !7048)
!7054 = !DILocation(line: 979, column: 39, scope: !7048)
!7055 = !DILocation(line: 979, column: 24, scope: !7048)
!7056 = !DILocation(line: 979, column: 9, scope: !7048)
!7057 = !DILocation(line: 979, column: 2, scope: !7048)
!7058 = distinct !DISubprogram(name: "kmalloc", scope: !14, file: !14, line: 591, type: !7059, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7061)
!7059 = !DISubroutineType(types: !7060)
!7060 = !{!95, !110, !370}
!7061 = !{!7062, !7063, !7064}
!7062 = !DILocalVariable(name: "size", arg: 1, scope: !7058, file: !14, line: 591, type: !110)
!7063 = !DILocalVariable(name: "flags", arg: 2, scope: !7058, file: !14, line: 591, type: !370)
!7064 = !DILocalVariable(name: "index", scope: !7065, file: !14, line: 594, type: !28)
!7065 = distinct !DILexicalBlock(scope: !7066, file: !14, line: 593, column: 42)
!7066 = distinct !DILexicalBlock(scope: !7058, file: !14, line: 593, column: 6)
!7067 = !DILocation(line: 591, column: 61, scope: !7058)
!7068 = !DILocation(line: 591, column: 73, scope: !7058)
!7069 = !DILocation(line: 593, column: 27, scope: !7066)
!7070 = !DILocation(line: 593, column: 6, scope: !7066)
!7071 = !DILocation(line: 593, column: 33, scope: !7066)
!7072 = !DILocation(line: 593, column: 36, scope: !7066)
!7073 = !DILocation(line: 593, column: 6, scope: !7058)
!7074 = !DILocation(line: 594, column: 3, scope: !7065)
!7075 = !DILocation(line: 594, column: 16, scope: !7065)
!7076 = !DILocation(line: 596, column: 7, scope: !7077)
!7077 = distinct !DILexicalBlock(scope: !7065, file: !14, line: 596, column: 7)
!7078 = !DILocation(line: 596, column: 12, scope: !7077)
!7079 = !DILocation(line: 596, column: 7, scope: !7065)
!7080 = !DILocation(line: 597, column: 25, scope: !7077)
!7081 = !DILocation(line: 597, column: 31, scope: !7077)
!7082 = !DILocation(line: 597, column: 11, scope: !7077)
!7083 = !DILocation(line: 597, column: 4, scope: !7077)
!7084 = !DILocation(line: 599, column: 11, scope: !7065)
!7085 = !DILocation(line: 599, column: 9, scope: !7065)
!7086 = !DILocation(line: 601, column: 33, scope: !7065)
!7087 = !DILocation(line: 601, column: 40, scope: !7065)
!7088 = !DILocation(line: 601, column: 20, scope: !7065)
!7089 = !DILocation(line: 601, column: 5, scope: !7065)
!7090 = !DILocation(line: 601, column: 51, scope: !7065)
!7091 = !DILocation(line: 602, column: 5, scope: !7065)
!7092 = !DILocation(line: 602, column: 12, scope: !7065)
!7093 = !DILocation(line: 600, column: 10, scope: !7065)
!7094 = !DILocation(line: 600, column: 3, scope: !7065)
!7095 = !DILocation(line: 603, column: 2, scope: !7066)
!7096 = !DILocation(line: 604, column: 19, scope: !7058)
!7097 = !DILocation(line: 604, column: 25, scope: !7058)
!7098 = !DILocation(line: 604, column: 9, scope: !7058)
!7099 = !DILocation(line: 604, column: 2, scope: !7058)
!7100 = !DILocation(line: 605, column: 1, scope: !7058)
!7101 = !DISubprogram(name: "__kmalloc", scope: !14, file: !14, line: 488, type: !7059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7102 = !DISubprogram(name: "kmalloc_large", scope: !14, file: !14, line: 531, type: !7059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7103 = distinct !DISubprogram(name: "__kmalloc_index", scope: !14, file: !14, line: 444, type: !7104, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7106)
!7104 = !DISubroutineType(types: !7105)
!7105 = !{!28, !110, !608}
!7106 = !{!7107, !7108}
!7107 = !DILocalVariable(name: "size", arg: 1, scope: !7103, file: !14, line: 444, type: !110)
!7108 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7103, file: !14, line: 445, type: !608)
!7109 = !DILocation(line: 444, column: 60, scope: !7103)
!7110 = !DILocation(line: 445, column: 16, scope: !7103)
!7111 = !DILocation(line: 447, column: 7, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 447, column: 6)
!7113 = !DILocation(line: 447, column: 6, scope: !7103)
!7114 = !DILocation(line: 448, column: 3, scope: !7112)
!7115 = !DILocation(line: 450, column: 6, scope: !7116)
!7116 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 450, column: 6)
!7117 = !DILocation(line: 450, column: 11, scope: !7116)
!7118 = !DILocation(line: 450, column: 6, scope: !7103)
!7119 = !DILocation(line: 451, column: 3, scope: !7116)
!7120 = !DILocation(line: 453, column: 32, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 453, column: 6)
!7122 = !DILocation(line: 453, column: 37, scope: !7121)
!7123 = !DILocation(line: 453, column: 42, scope: !7121)
!7124 = !DILocation(line: 453, column: 45, scope: !7121)
!7125 = !DILocation(line: 453, column: 50, scope: !7121)
!7126 = !DILocation(line: 453, column: 6, scope: !7103)
!7127 = !DILocation(line: 454, column: 3, scope: !7121)
!7128 = !DILocation(line: 455, column: 32, scope: !7129)
!7129 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 455, column: 6)
!7130 = !DILocation(line: 455, column: 37, scope: !7129)
!7131 = !DILocation(line: 455, column: 43, scope: !7129)
!7132 = !DILocation(line: 455, column: 46, scope: !7129)
!7133 = !DILocation(line: 455, column: 51, scope: !7129)
!7134 = !DILocation(line: 455, column: 6, scope: !7103)
!7135 = !DILocation(line: 456, column: 3, scope: !7129)
!7136 = !DILocation(line: 457, column: 6, scope: !7137)
!7137 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 457, column: 6)
!7138 = !DILocation(line: 457, column: 11, scope: !7137)
!7139 = !DILocation(line: 457, column: 6, scope: !7103)
!7140 = !DILocation(line: 457, column: 26, scope: !7137)
!7141 = !DILocation(line: 458, column: 6, scope: !7142)
!7142 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 458, column: 6)
!7143 = !DILocation(line: 458, column: 11, scope: !7142)
!7144 = !DILocation(line: 458, column: 6, scope: !7103)
!7145 = !DILocation(line: 458, column: 26, scope: !7142)
!7146 = !DILocation(line: 459, column: 6, scope: !7147)
!7147 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 459, column: 6)
!7148 = !DILocation(line: 459, column: 11, scope: !7147)
!7149 = !DILocation(line: 459, column: 6, scope: !7103)
!7150 = !DILocation(line: 459, column: 26, scope: !7147)
!7151 = !DILocation(line: 460, column: 6, scope: !7152)
!7152 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 460, column: 6)
!7153 = !DILocation(line: 460, column: 11, scope: !7152)
!7154 = !DILocation(line: 460, column: 6, scope: !7103)
!7155 = !DILocation(line: 460, column: 26, scope: !7152)
!7156 = !DILocation(line: 461, column: 6, scope: !7157)
!7157 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 461, column: 6)
!7158 = !DILocation(line: 461, column: 11, scope: !7157)
!7159 = !DILocation(line: 461, column: 6, scope: !7103)
!7160 = !DILocation(line: 461, column: 26, scope: !7157)
!7161 = !DILocation(line: 462, column: 6, scope: !7162)
!7162 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 462, column: 6)
!7163 = !DILocation(line: 462, column: 11, scope: !7162)
!7164 = !DILocation(line: 462, column: 6, scope: !7103)
!7165 = !DILocation(line: 462, column: 26, scope: !7162)
!7166 = !DILocation(line: 463, column: 6, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 463, column: 6)
!7168 = !DILocation(line: 463, column: 11, scope: !7167)
!7169 = !DILocation(line: 463, column: 6, scope: !7103)
!7170 = !DILocation(line: 463, column: 26, scope: !7167)
!7171 = !DILocation(line: 464, column: 6, scope: !7172)
!7172 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 464, column: 6)
!7173 = !DILocation(line: 464, column: 11, scope: !7172)
!7174 = !DILocation(line: 464, column: 6, scope: !7103)
!7175 = !DILocation(line: 464, column: 26, scope: !7172)
!7176 = !DILocation(line: 465, column: 6, scope: !7177)
!7177 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 465, column: 6)
!7178 = !DILocation(line: 465, column: 11, scope: !7177)
!7179 = !DILocation(line: 465, column: 6, scope: !7103)
!7180 = !DILocation(line: 465, column: 26, scope: !7177)
!7181 = !DILocation(line: 466, column: 6, scope: !7182)
!7182 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 466, column: 6)
!7183 = !DILocation(line: 466, column: 11, scope: !7182)
!7184 = !DILocation(line: 466, column: 6, scope: !7103)
!7185 = !DILocation(line: 466, column: 26, scope: !7182)
!7186 = !DILocation(line: 467, column: 6, scope: !7187)
!7187 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 467, column: 6)
!7188 = !DILocation(line: 467, column: 11, scope: !7187)
!7189 = !DILocation(line: 467, column: 6, scope: !7103)
!7190 = !DILocation(line: 467, column: 26, scope: !7187)
!7191 = !DILocation(line: 468, column: 6, scope: !7192)
!7192 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 468, column: 6)
!7193 = !DILocation(line: 468, column: 11, scope: !7192)
!7194 = !DILocation(line: 468, column: 6, scope: !7103)
!7195 = !DILocation(line: 468, column: 26, scope: !7192)
!7196 = !DILocation(line: 469, column: 6, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 469, column: 6)
!7198 = !DILocation(line: 469, column: 11, scope: !7197)
!7199 = !DILocation(line: 469, column: 6, scope: !7103)
!7200 = !DILocation(line: 469, column: 26, scope: !7197)
!7201 = !DILocation(line: 470, column: 6, scope: !7202)
!7202 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 470, column: 6)
!7203 = !DILocation(line: 470, column: 11, scope: !7202)
!7204 = !DILocation(line: 470, column: 6, scope: !7103)
!7205 = !DILocation(line: 470, column: 26, scope: !7202)
!7206 = !DILocation(line: 471, column: 6, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 471, column: 6)
!7208 = !DILocation(line: 471, column: 11, scope: !7207)
!7209 = !DILocation(line: 471, column: 6, scope: !7103)
!7210 = !DILocation(line: 471, column: 26, scope: !7207)
!7211 = !DILocation(line: 472, column: 6, scope: !7212)
!7212 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 472, column: 6)
!7213 = !DILocation(line: 472, column: 11, scope: !7212)
!7214 = !DILocation(line: 472, column: 6, scope: !7103)
!7215 = !DILocation(line: 472, column: 26, scope: !7212)
!7216 = !DILocation(line: 473, column: 6, scope: !7217)
!7217 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 473, column: 6)
!7218 = !DILocation(line: 473, column: 11, scope: !7217)
!7219 = !DILocation(line: 473, column: 6, scope: !7103)
!7220 = !DILocation(line: 473, column: 26, scope: !7217)
!7221 = !DILocation(line: 474, column: 6, scope: !7222)
!7222 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 474, column: 6)
!7223 = !DILocation(line: 474, column: 11, scope: !7222)
!7224 = !DILocation(line: 474, column: 6, scope: !7103)
!7225 = !DILocation(line: 474, column: 27, scope: !7222)
!7226 = !DILocation(line: 475, column: 6, scope: !7227)
!7227 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 475, column: 6)
!7228 = !DILocation(line: 475, column: 11, scope: !7227)
!7229 = !DILocation(line: 475, column: 6, scope: !7103)
!7230 = !DILocation(line: 475, column: 32, scope: !7227)
!7231 = !DILocation(line: 477, column: 50, scope: !7232)
!7232 = distinct !DILexicalBlock(scope: !7103, file: !14, line: 477, column: 6)
!7233 = !DILocation(line: 477, column: 6, scope: !7103)
!7234 = !DILocation(line: 478, column: 3, scope: !7232)
!7235 = !DILocation(line: 478, column: 3, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7237, file: !14, line: 478, column: 3)
!7237 = distinct !DILexicalBlock(scope: !7232, file: !14, line: 478, column: 3)
!7238 = !{i32 -2142298817}
!7239 = !DILocation(line: 478, column: 3, scope: !7237)
!7240 = !DILocation(line: 480, column: 3, scope: !7232)
!7241 = !DILocation(line: 480, column: 3, scope: !7242)
!7242 = distinct !DILexicalBlock(scope: !7232, file: !14, line: 480, column: 3)
!7243 = !DILocation(line: 480, column: 3, scope: !7244)
!7244 = distinct !DILexicalBlock(scope: !7242, file: !14, line: 480, column: 3)
!7245 = !DILocation(line: 480, column: 3, scope: !7246)
!7246 = distinct !DILexicalBlock(scope: !7242, file: !14, line: 480, column: 3)
!7247 = !{i64 2152668682, i64 2152668711, i64 2152668757, i64 2152668815, i64 2152668869, i64 2152668923, i64 2152668978, i64 2152669009}
!7248 = !DILocation(line: 483, column: 2, scope: !7103)
!7249 = !DILocation(line: 484, column: 1, scope: !7103)
!7250 = !DISubprogram(name: "kmalloc_trace", scope: !14, file: !14, line: 525, type: !7251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7251 = !DISubroutineType(types: !7252)
!7252 = !{!95, !3934, !370, !110}
!7253 = distinct !DISubprogram(name: "kmalloc_type", scope: !14, file: !14, line: 401, type: !7254, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7256)
!7254 = !DISubroutineType(types: !7255)
!7255 = !{!330, !370, !114}
!7256 = !{!7257, !7258}
!7257 = !DILocalVariable(name: "flags", arg: 1, scope: !7253, file: !14, line: 401, type: !370)
!7258 = !DILocalVariable(name: "caller", arg: 2, scope: !7253, file: !14, line: 401, type: !114)
!7259 = !DILocation(line: 401, column: 67, scope: !7253)
!7260 = !DILocation(line: 401, column: 88, scope: !7253)
!7261 = !DILocation(line: 407, column: 6, scope: !7262)
!7262 = distinct !DILexicalBlock(scope: !7253, file: !14, line: 407, column: 6)
!7263 = !DILocation(line: 407, column: 6, scope: !7253)
!7264 = !DILocation(line: 413, column: 3, scope: !7262)
!7265 = !DILocation(line: 423, column: 38, scope: !7266)
!7266 = distinct !DILexicalBlock(scope: !7253, file: !14, line: 423, column: 6)
!7267 = !DILocation(line: 423, column: 44, scope: !7266)
!7268 = !DILocation(line: 423, column: 6, scope: !7253)
!7269 = !DILocation(line: 424, column: 3, scope: !7266)
!7270 = !DILocation(line: 426, column: 3, scope: !7271)
!7271 = distinct !DILexicalBlock(scope: !7253, file: !14, line: 425, column: 6)
!7272 = !DILocation(line: 429, column: 1, scope: !7253)
!7273 = !DISubprogram(name: "__compiletime_assert_206", scope: !14, file: !14, line: 478, type: !2572, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7274 = distinct !DISubprogram(name: "check_copy_size", scope: !20, file: !20, line: 237, type: !7275, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7277)
!7275 = !DISubroutineType(types: !7276)
!7276 = !{!608, !582, !110, !608}
!7277 = !{!7278, !7279, !7280, !7281, !7282, !7285}
!7278 = !DILocalVariable(name: "addr", arg: 1, scope: !7274, file: !20, line: 237, type: !582)
!7279 = !DILocalVariable(name: "bytes", arg: 2, scope: !7274, file: !20, line: 237, type: !110)
!7280 = !DILocalVariable(name: "is_source", arg: 3, scope: !7274, file: !20, line: 237, type: !608)
!7281 = !DILocalVariable(name: "sz", scope: !7274, file: !20, line: 239, type: !97)
!7282 = !DILocalVariable(name: "__ret_warn_on", scope: !7283, file: !20, line: 249, type: !97)
!7283 = distinct !DILexicalBlock(scope: !7284, file: !20, line: 249, column: 6)
!7284 = distinct !DILexicalBlock(scope: !7274, file: !20, line: 249, column: 6)
!7285 = !DILocalVariable(name: "__flags", scope: !7286, file: !20, line: 249, type: !97)
!7286 = distinct !DILexicalBlock(scope: !7287, file: !20, line: 249, column: 6)
!7287 = distinct !DILexicalBlock(scope: !7283, file: !20, line: 249, column: 6)
!7288 = !DILocation(line: 237, column: 29, scope: !7274)
!7289 = !DILocation(line: 237, column: 42, scope: !7274)
!7290 = !DILocation(line: 237, column: 54, scope: !7274)
!7291 = !DILocation(line: 239, column: 2, scope: !7274)
!7292 = !DILocation(line: 239, column: 6, scope: !7274)
!7293 = !DILocation(line: 239, column: 33, scope: !7274)
!7294 = !DILocation(line: 239, column: 11, scope: !7274)
!7295 = !DILocation(line: 240, column: 6, scope: !7296)
!7296 = distinct !DILexicalBlock(scope: !7274, file: !20, line: 240, column: 6)
!7297 = !DILocation(line: 0, scope: !7296)
!7298 = !DILocation(line: 240, column: 6, scope: !7274)
!7299 = !DILocation(line: 241, column: 29, scope: !7300)
!7300 = distinct !DILexicalBlock(scope: !7301, file: !20, line: 241, column: 7)
!7301 = distinct !DILexicalBlock(scope: !7296, file: !20, line: 240, column: 39)
!7302 = !DILocation(line: 241, column: 8, scope: !7300)
!7303 = !DILocation(line: 241, column: 7, scope: !7301)
!7304 = !DILocation(line: 242, column: 18, scope: !7300)
!7305 = !DILocation(line: 242, column: 22, scope: !7300)
!7306 = !DILocation(line: 242, column: 4, scope: !7300)
!7307 = !DILocation(line: 243, column: 12, scope: !7308)
!7308 = distinct !DILexicalBlock(scope: !7300, file: !20, line: 243, column: 12)
!7309 = !DILocation(line: 243, column: 12, scope: !7300)
!7310 = !DILocation(line: 244, column: 4, scope: !7308)
!7311 = !{i32 1080538}
!7312 = !DILocation(line: 246, column: 4, scope: !7308)
!7313 = !{i32 1080567}
!7314 = !DILocation(line: 247, column: 3, scope: !7301)
!7315 = !DILocation(line: 249, column: 6, scope: !7283)
!7316 = !DILocation(line: 249, column: 6, scope: !7287)
!7317 = !DILocation(line: 249, column: 6, scope: !7286)
!7318 = !DILocation(line: 249, column: 6, scope: !7319)
!7319 = distinct !DILexicalBlock(scope: !7286, file: !20, line: 249, column: 6)
!7320 = !DILocation(line: 249, column: 6, scope: !7321)
!7321 = distinct !DILexicalBlock(scope: !7286, file: !20, line: 249, column: 6)
!7322 = !{i64 2149688162, i64 2149688191, i64 2149688237, i64 2149688295, i64 2149688349, i64 2149688403, i64 2149688458, i64 2149688489, i64 2149688797, i64 2149688803, i64 2149688850, i64 2149688873, i64 2149688899}
!7323 = !DILocation(line: 249, column: 6, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !7286, file: !20, line: 249, column: 6)
!7325 = !DILocation(line: 249, column: 6, scope: !7284)
!7326 = !DILocation(line: 249, column: 6, scope: !7274)
!7327 = !DILocation(line: 250, column: 3, scope: !7284)
!7328 = !DILocation(line: 251, column: 20, scope: !7274)
!7329 = !DILocation(line: 251, column: 26, scope: !7274)
!7330 = !DILocation(line: 251, column: 33, scope: !7274)
!7331 = !DILocation(line: 251, column: 2, scope: !7274)
!7332 = !DILocation(line: 252, column: 2, scope: !7274)
!7333 = !DILocation(line: 253, column: 1, scope: !7274)
!7334 = !DISubprogram(name: "_copy_from_user", scope: !7025, file: !7025, line: 158, type: !7026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7335 = distinct !DISubprogram(name: "copy_overflow", scope: !20, file: !20, line: 230, type: !7336, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7338)
!7336 = !DISubroutineType(types: !7337)
!7337 = !{null, !97, !114}
!7338 = !{!7339, !7340}
!7339 = !DILocalVariable(name: "size", arg: 1, scope: !7335, file: !20, line: 230, type: !97)
!7340 = !DILocalVariable(name: "count", arg: 2, scope: !7335, file: !20, line: 230, type: !114)
!7341 = !DILocation(line: 230, column: 38, scope: !7335)
!7342 = !DILocation(line: 230, column: 58, scope: !7335)
!7343 = !DILocation(line: 233, column: 19, scope: !7344)
!7344 = distinct !DILexicalBlock(scope: !7335, file: !20, line: 232, column: 6)
!7345 = !DILocation(line: 233, column: 25, scope: !7344)
!7346 = !DILocation(line: 233, column: 3, scope: !7344)
!7347 = !DILocation(line: 234, column: 1, scope: !7335)
!7348 = !DISubprogram(name: "__bad_copy_from", scope: !20, file: !20, line: 224, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7349 = !DISubprogram(name: "__bad_copy_to", scope: !20, file: !20, line: 226, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7350 = distinct !DISubprogram(name: "check_object_size", scope: !20, file: !20, line: 218, type: !7351, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !7353)
!7351 = !DISubroutineType(types: !7352)
!7352 = !{null, !582, !114, !608}
!7353 = !{!7354, !7355, !7356}
!7354 = !DILocalVariable(name: "ptr", arg: 1, scope: !7350, file: !20, line: 218, type: !582)
!7355 = !DILocalVariable(name: "n", arg: 2, scope: !7350, file: !20, line: 218, type: !114)
!7356 = !DILocalVariable(name: "to_user", arg: 3, scope: !7350, file: !20, line: 219, type: !608)
!7357 = !DILocation(line: 218, column: 50, scope: !7350)
!7358 = !DILocation(line: 218, column: 69, scope: !7350)
!7359 = !DILocation(line: 219, column: 15, scope: !7350)
!7360 = !DILocation(line: 220, column: 3, scope: !7350)
!7361 = !DISubprogram(name: "__copy_overflow", scope: !20, file: !20, line: 228, type: !7336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
