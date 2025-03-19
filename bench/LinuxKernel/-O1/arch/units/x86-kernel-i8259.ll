; ModuleID = 'arch/x86/kernel/i8259.c'
source_filename = "arch/x86/kernel/i8259.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_legacy_pic: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad legacy_pic ; .previous"
module asm ".section\09\22.initcall6.init..kmod_i8259__243_450_i8259A_init_ops\22, \22a\22\09\09"
module asm "__initcall__kmod_i8259__243_450_i8259A_init_ops6:\09\09\09"
module asm ".long\09__initstub__kmod_i8259__243_450_i8259A_init_ops6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.legacy_pic = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }

@i8259A_lock = hidden global %struct.raw_spinlock zeroinitializer, align 4, !dbg !0
@cached_irq_mask = hidden global i32 65535, align 4, !dbg !87
@.str = private unnamed_addr constant [7 x i8] c"XT-PIC\00", align 1, !dbg !89
@i8259A_chip = hidden global %struct.irq_chip { ptr @.str, ptr null, ptr null, ptr null, ptr @disable_8259A_irq, ptr null, ptr @disable_8259A_irq, ptr @mask_and_ack_8259A, ptr @enable_8259A_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0 }, align 8, !dbg !95
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 8
@null_legacy_pic = hidden global %struct.legacy_pic { i32 0, ptr @dummy_irq_chip, ptr @legacy_pic_uint_noop, ptr @legacy_pic_uint_noop, ptr @legacy_pic_noop, ptr @legacy_pic_noop, ptr @legacy_pic_int_noop, ptr @legacy_pic_probe, ptr @legacy_pic_irq_pending_noop, ptr @legacy_pic_uint_noop }, align 8, !dbg !222
@default_legacy_pic = internal global %struct.legacy_pic { i32 16, ptr @i8259A_chip, ptr @mask_8259A_irq, ptr @unmask_8259A_irq, ptr @mask_8259A, ptr @unmask_8259A, ptr @init_8259A, ptr @probe_8259A, ptr @i8259A_irq_pending, ptr @make_8259A_irq }, align 8, !dbg !286
@legacy_pic = hidden global ptr @default_legacy_pic, align 8, !dbg !252
@__UNIQUE_ID___addressable_legacy_pic242 = internal global ptr @legacy_pic, section ".discard.addressable", align 8, !dbg !255
@__UNIQUE_ID___addressable___initstub__kmod_i8259__243_450_i8259A_init_ops6244 = internal global ptr @__initstub__kmod_i8259__243_450_i8259A_init_ops6, section ".discard.addressable", align 8, !dbg !257
@pcat_compat = internal global i8 0, section ".data..ro_after_init", align 1, !dbg !259
@io_apic_irqs = hidden global i64 0, align 8, !dbg !261
@mask_and_ack_8259A.spurious_irq_mask = internal global i32 0, align 4, !dbg !263
@.str.1 = private unnamed_addr constant [36 x i8] c"\017spurious 8259A interrupt: IRQ%d.\0A\00", align 1, !dbg !281
@irq_err_count = external dso_local global %struct.atomic_t, align 4
@i8259A_auto_eoi = internal global i32 0, align 4, !dbg !288
@.str.2 = private unnamed_addr constant [25 x i8] c"\016Using NULL legacy PIC\0A\00", align 1, !dbg !290
@i8259_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @i8259A_suspend, ptr @i8259A_resume, ptr @i8259A_shutdown }, align 8, !dbg !295
@irq_trigger = internal global [2 x i8] zeroinitializer, align 1, !dbg !309
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_legacy_pic242, ptr @__UNIQUE_ID___addressable___initstub__kmod_i8259__243_450_i8259A_init_ops6244], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @disable_8259A_irq(ptr noundef %data) #0 align 16 !dbg !355 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load ptr, ptr %data.addr, align 8, !dbg !359
  %irq = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1, !dbg !360
  %1 = load i32, ptr %irq, align 4, !dbg !360
  call void @mask_8259A_irq(i32 noundef %1) #8, !dbg !361
  ret void, !dbg !362
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mask_and_ack_8259A(ptr noundef %data) #0 align 16 !dbg !265 {
entry:
  %data.addr = alloca ptr, align 8
  %irq = alloca i32, align 4
  %irqmask = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy13 = alloca i64, align 8
  %__dummy214 = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !267, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #9, !dbg !364
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !268, metadata !DIExpression()), !dbg !365
  %0 = load ptr, ptr %data.addr, align 8, !dbg !366
  %irq1 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1, !dbg !367
  %1 = load i32, ptr %irq1, align 4, !dbg !367
  store i32 %1, ptr %irq, align 4, !dbg !365
  call void @llvm.lifetime.start.p0(i64 4, ptr %irqmask) #9, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %irqmask, metadata !269, metadata !DIExpression()), !dbg !369
  %2 = load i32, ptr %irq, align 4, !dbg !370
  %shl = shl i32 1, %2, !dbg !371
  store i32 %shl, ptr %irqmask, align 4, !dbg !369
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !270, metadata !DIExpression()), !dbg !373
  br label %do.body, !dbg !374

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !271, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !274, metadata !DIExpression()), !dbg !375
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !375
  %conv = zext i1 %cmp to i32, !dbg !375
  store i32 1, ptr %tmp, align 4, !dbg !375
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !376
  %3 = load i32, ptr %tmp, align 4, !dbg !375
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @i8259A_lock) #8, !dbg !376
  store i64 %call, ptr %flags, align 8, !dbg !376
  br label %do.cond, !dbg !376

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !376

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr @cached_irq_mask, align 4, !dbg !377
  %5 = load i32, ptr %irqmask, align 4, !dbg !379
  %and = and i32 %4, %5, !dbg !380
  %tobool = icmp ne i32 %and, 0, !dbg !380
  br i1 %tobool, label %if.then, label %if.end, !dbg !381

if.then:                                          ; preds = %do.end
  br label %spurious_8259A_irq, !dbg !382

if.end:                                           ; preds = %do.end
  %6 = load i32, ptr %irqmask, align 4, !dbg !383
  %7 = load i32, ptr @cached_irq_mask, align 4, !dbg !384
  %or = or i32 %7, %6, !dbg !384
  store i32 %or, ptr @cached_irq_mask, align 4, !dbg !384
  br label %handle_real_irq, !dbg !385

handle_real_irq:                                  ; preds = %if.end33, %if.then22, %if.end
  call void @llvm.dbg.label(metadata !275), !dbg !386
  %8 = load i32, ptr %irq, align 4, !dbg !387
  %and2 = and i32 %8, 8, !dbg !389
  %tobool3 = icmp ne i32 %and2, 0, !dbg !389
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !390

if.then4:                                         ; preds = %handle_real_irq
  %call5 = call zeroext i8 @__inb(i16 noundef zeroext 161) #8, !dbg !391
  %9 = load i8, ptr getelementptr (i8, ptr @cached_irq_mask, i64 1), align 1, !dbg !393
  call void @__outb(i8 noundef zeroext %9, i16 noundef zeroext 161) #8, !dbg !394
  %10 = load i32, ptr %irq, align 4, !dbg !395
  %and6 = and i32 %10, 7, !dbg !396
  %add = add i32 96, %and6, !dbg !397
  %conv7 = trunc i32 %add to i8, !dbg !398
  call void @__outb(i8 noundef zeroext %conv7, i16 noundef zeroext 160) #8, !dbg !399
  call void @__outb(i8 noundef zeroext 98, i16 noundef zeroext 32) #8, !dbg !400
  br label %if.end11, !dbg !401

if.else:                                          ; preds = %handle_real_irq
  %call8 = call zeroext i8 @__inb(i16 noundef zeroext 33) #8, !dbg !402
  %11 = load i8, ptr @cached_irq_mask, align 4, !dbg !404
  call void @__outb(i8 noundef zeroext %11, i16 noundef zeroext 33) #8, !dbg !405
  %12 = load i32, ptr %irq, align 4, !dbg !406
  %add9 = add i32 96, %12, !dbg !407
  %conv10 = trunc i32 %add9 to i8, !dbg !408
  call void @__outb(i8 noundef zeroext %conv10, i16 noundef zeroext 32) #8, !dbg !409
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then4
  br label %do.body12, !dbg !410

do.body12:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy13) #9, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %__dummy13, metadata !276, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy214) #9, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %__dummy214, metadata !279, metadata !DIExpression()), !dbg !411
  %cmp15 = icmp eq ptr %__dummy13, %__dummy214, !dbg !411
  %conv16 = zext i1 %cmp15 to i32, !dbg !411
  store i32 1, ptr %tmp17, align 4, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy214) #9, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy13) #9, !dbg !412
  %13 = load i32, ptr %tmp17, align 4, !dbg !411
  %14 = load i64, ptr %flags, align 8, !dbg !412
  call void @_raw_spin_unlock_irqrestore(ptr noundef @i8259A_lock, i64 noundef %14) #8, !dbg !412
  br label %do.cond18, !dbg !412

do.cond18:                                        ; preds = %do.body12
  br label %do.end19, !dbg !412

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !413
  call void @llvm.lifetime.end.p0(i64 4, ptr %irqmask) #9, !dbg !413
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #9, !dbg !413
  ret void, !dbg !413

spurious_8259A_irq:                               ; preds = %if.then
  call void @llvm.dbg.label(metadata !280), !dbg !414
  %15 = load i32, ptr %irq, align 4, !dbg !415
  %call20 = call i32 @i8259A_irq_real(i32 noundef %15) #8, !dbg !417
  %tobool21 = icmp ne i32 %call20, 0, !dbg !417
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !418

if.then22:                                        ; preds = %spurious_8259A_irq
  br label %handle_real_irq, !dbg !419

if.end23:                                         ; preds = %spurious_8259A_irq
  %16 = load i32, ptr @mask_and_ack_8259A.spurious_irq_mask, align 4, !dbg !420
  %17 = load i32, ptr %irqmask, align 4, !dbg !423
  %and24 = and i32 %16, %17, !dbg !424
  %tobool25 = icmp ne i32 %and24, 0, !dbg !424
  br i1 %tobool25, label %if.end33, label %if.then26, !dbg !425

if.then26:                                        ; preds = %if.end23
  br label %do.body27, !dbg !426

do.body27:                                        ; preds = %if.then26
  br label %do.cond28, !dbg !429

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !429

do.end29:                                         ; preds = %do.cond28
  %18 = load i32, ptr %irq, align 4, !dbg !426
  %call31 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str.1, i32 noundef %18) #10, !dbg !426
  store i32 %call31, ptr %tmp30, align 4, !dbg !429
  %19 = load i32, ptr %tmp30, align 4, !dbg !426
  %20 = load i32, ptr %irqmask, align 4, !dbg !431
  %21 = load i32, ptr @mask_and_ack_8259A.spurious_irq_mask, align 4, !dbg !432
  %or32 = or i32 %21, %20, !dbg !432
  store i32 %or32, ptr @mask_and_ack_8259A.spurious_irq_mask, align 4, !dbg !432
  br label %if.end33, !dbg !433

if.end33:                                         ; preds = %do.end29, %if.end23
  call void @atomic_inc(ptr noundef @irq_err_count) #8, !dbg !434
  br label %handle_real_irq, !dbg !435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @enable_8259A_irq(ptr noundef %data) #0 align 16 !dbg !436 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load ptr, ptr %data.addr, align 8, !dbg !440
  %irq = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1, !dbg !441
  %1 = load i32, ptr %irq, align 4, !dbg !441
  call void @unmask_8259A_irq(i32 noundef %1) #8, !dbg !442
  ret void, !dbg !443
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @legacy_pic_uint_noop(i32 noundef %unused) #0 align 16 !dbg !444 {
entry:
  %unused.addr = alloca i32, align 4
  store i32 %unused, ptr %unused.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !446, metadata !DIExpression()), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @legacy_pic_noop() #0 align 16 !dbg !449 {
entry:
  ret void, !dbg !450
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @legacy_pic_int_noop(i32 noundef %unused) #0 align 16 !dbg !451 {
entry:
  %unused.addr = alloca i32, align 4
  store i32 %unused, ptr %unused.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !453, metadata !DIExpression()), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @legacy_pic_probe() #0 align 16 !dbg !456 {
entry:
  ret i32 0, !dbg !457
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @legacy_pic_irq_pending_noop(i32 noundef %irq) #0 align 16 !dbg !458 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !460, metadata !DIExpression()), !dbg !461
  ret i32 0, !dbg !462
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_i8259__243_450_i8259A_init_ops6() #1 section ".init.text" align 16 !dbg !463 {
entry:
  %call = call i32 @i8259A_init_ops() #10, !dbg !464
  ret i32 %call, !dbg !464
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @i8259A_init_ops() #1 section ".init.text" align 16 !dbg !465 {
entry:
  %0 = load ptr, ptr @legacy_pic, align 8, !dbg !466
  %cmp = icmp eq ptr %0, @default_legacy_pic, !dbg !468
  br i1 %cmp, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  call void @register_syscore_ops(ptr noundef @i8259_syscore_ops) #8, !dbg !470
  br label %if.end, !dbg !470

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !471
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @legacy_pic_pcat_compat() #1 section ".init.text" align 16 !dbg !472 {
entry:
  store i8 1, ptr @pcat_compat, align 1, !dbg !473
  ret void, !dbg !474
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mask_8259A_irq(i32 noundef %irq) #0 align 16 !dbg !475 {
entry:
  %irq.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !477, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #9, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !478, metadata !DIExpression()), !dbg !490
  %0 = load i32, ptr %irq.addr, align 4, !dbg !491
  %shl = shl i32 1, %0, !dbg !492
  store i32 %shl, ptr %mask, align 4, !dbg !490
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !479, metadata !DIExpression()), !dbg !494
  br label %do.body, !dbg !495

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !480, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !483, metadata !DIExpression()), !dbg !496
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !496
  %conv = zext i1 %cmp to i32, !dbg !496
  store i32 1, ptr %tmp, align 4, !dbg !496
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !497
  %1 = load i32, ptr %tmp, align 4, !dbg !496
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @i8259A_lock) #8, !dbg !497
  store i64 %call, ptr %flags, align 8, !dbg !497
  br label %do.cond, !dbg !497

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !497

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %mask, align 4, !dbg !498
  %3 = load i32, ptr @cached_irq_mask, align 4, !dbg !499
  %or = or i32 %3, %2, !dbg !499
  store i32 %or, ptr @cached_irq_mask, align 4, !dbg !499
  %4 = load i32, ptr %irq.addr, align 4, !dbg !500
  %and = and i32 %4, 8, !dbg !502
  %tobool = icmp ne i32 %and, 0, !dbg !502
  br i1 %tobool, label %if.then, label %if.else, !dbg !503

if.then:                                          ; preds = %do.end
  %5 = load i8, ptr getelementptr (i8, ptr @cached_irq_mask, i64 1), align 1, !dbg !504
  call void @__outb(i8 noundef zeroext %5, i16 noundef zeroext 161) #8, !dbg !505
  br label %if.end, !dbg !505

if.else:                                          ; preds = %do.end
  %6 = load i8, ptr @cached_irq_mask, align 4, !dbg !506
  call void @__outb(i8 noundef zeroext %6, i16 noundef zeroext 33) #8, !dbg !507
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body1, !dbg !508

do.body1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #9, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !484, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #9, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !487, metadata !DIExpression()), !dbg !509
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !509
  %conv6 = zext i1 %cmp5 to i32, !dbg !509
  store i32 1, ptr %tmp7, align 4, !dbg !509
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #9, !dbg !510
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #9, !dbg !510
  %7 = load i32, ptr %tmp7, align 4, !dbg !509
  %8 = load i64, ptr %flags, align 8, !dbg !510
  call void @_raw_spin_unlock_irqrestore(ptr noundef @i8259A_lock, i64 noundef %8) #8, !dbg !510
  br label %do.cond8, !dbg !510

do.cond8:                                         ; preds = %do.body1
  br label %do.end9, !dbg !510

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !511
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #9, !dbg !511
  ret void, !dbg !511
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !512 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #5 align 16 !dbg !517 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !522, metadata !DIExpression()), !dbg !524
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %0 = load i8, ptr %value.addr, align 1, !dbg !524
  %1 = load i16, ptr %port.addr, align 2, !dbg !524
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #9, !dbg !524, !srcloc !525
  ret void, !dbg !524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !526 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #5 align 16 !dbg !529 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !533, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #9, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %value, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load i16, ptr %port.addr, align 2, !dbg !535
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #9, !dbg !535, !srcloc !536
  store i8 %1, ptr %value, align 1, !dbg !535
  %2 = load i8, ptr %value, align 1, !dbg !535
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #9, !dbg !535
  ret i8 %2, !dbg !535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i8259A_irq_real(i32 noundef %irq) #6 align 16 !dbg !537 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %irqmask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !539, metadata !DIExpression()), !dbg !542
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #9, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %value, metadata !540, metadata !DIExpression()), !dbg !544
  call void @llvm.lifetime.start.p0(i64 4, ptr %irqmask) #9, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %irqmask, metadata !541, metadata !DIExpression()), !dbg !546
  %0 = load i32, ptr %irq.addr, align 4, !dbg !547
  %shl = shl i32 1, %0, !dbg !548
  store i32 %shl, ptr %irqmask, align 4, !dbg !546
  %1 = load i32, ptr %irq.addr, align 4, !dbg !549
  %cmp = icmp ult i32 %1, 8, !dbg !551
  br i1 %cmp, label %if.then, label %if.end, !dbg !552

if.then:                                          ; preds = %entry
  call void @__outb(i8 noundef zeroext 11, i16 noundef zeroext 32) #8, !dbg !553
  %call = call zeroext i8 @__inb(i16 noundef zeroext 32) #8, !dbg !555
  %conv = zext i8 %call to i32, !dbg !555
  %2 = load i32, ptr %irqmask, align 4, !dbg !556
  %and = and i32 %conv, %2, !dbg !557
  store i32 %and, ptr %value, align 4, !dbg !558
  call void @__outb(i8 noundef zeroext 10, i16 noundef zeroext 32) #8, !dbg !559
  %3 = load i32, ptr %value, align 4, !dbg !560
  store i32 %3, ptr %retval, align 4, !dbg !561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !561

if.end:                                           ; preds = %entry
  call void @__outb(i8 noundef zeroext 11, i16 noundef zeroext 160) #8, !dbg !562
  %call1 = call zeroext i8 @__inb(i16 noundef zeroext 160) #8, !dbg !563
  %conv2 = zext i8 %call1 to i32, !dbg !563
  %4 = load i32, ptr %irqmask, align 4, !dbg !564
  %shr = ashr i32 %4, 8, !dbg !565
  %and3 = and i32 %conv2, %shr, !dbg !566
  store i32 %and3, ptr %value, align 4, !dbg !567
  call void @__outb(i8 noundef zeroext 10, i16 noundef zeroext 160) #8, !dbg !568
  %5 = load i32, ptr %value, align 4, !dbg !569
  store i32 %5, ptr %retval, align 4, !dbg !570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !570

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %irqmask) #9, !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #9, !dbg !571
  %6 = load i32, ptr %retval, align 4, !dbg !571
  ret i32 %6, !dbg !571
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !572 dso_local i32 @_printk_deferred(ptr noundef, ...) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #5 align 16 !dbg !576 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load ptr, ptr %v.addr, align 8, !dbg !584
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !585
  %1 = load ptr, ptr %v.addr, align 8, !dbg !586
  call void @raw_atomic_inc(ptr noundef %1) #8, !dbg !587
  ret void, !dbg !588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !589 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !601, metadata !DIExpression()), !dbg !603
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !602, metadata !DIExpression()), !dbg !604
  %0 = load ptr, ptr %v.addr, align 8, !dbg !605
  %1 = load i64, ptr %size.addr, align 8, !dbg !606
  %conv = trunc i64 %1 to i32, !dbg !606
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !607
  %2 = load ptr, ptr %v.addr, align 8, !dbg !608
  %3 = load i64, ptr %size.addr, align 8, !dbg !608
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !608
  ret void, !dbg !609
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #5 align 16 !dbg !610 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load ptr, ptr %v.addr, align 8, !dbg !615
  call void @arch_atomic_inc(ptr noundef %0) #8, !dbg !616
  ret void, !dbg !617
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !618 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !623, metadata !DIExpression()), !dbg !625
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !624, metadata !DIExpression()), !dbg !626
  ret i1 true, !dbg !627
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !628 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !633, metadata !DIExpression()), !dbg !636
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !634, metadata !DIExpression()), !dbg !637
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !635, metadata !DIExpression()), !dbg !638
  ret void, !dbg !639
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #5 align 16 !dbg !640 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !643, metadata !DIExpression()), !dbg !644
  %0 = load ptr, ptr %v.addr, align 8, !dbg !645
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !646
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #9, !dbg !647, !srcloc !648
  ret void, !dbg !649
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unmask_8259A_irq(i32 noundef %irq) #0 align 16 !dbg !650 {
entry:
  %irq.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !652, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #9, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !653, metadata !DIExpression()), !dbg !665
  %0 = load i32, ptr %irq.addr, align 4, !dbg !666
  %shl = shl i32 1, %0, !dbg !667
  %not = xor i32 %shl, -1, !dbg !668
  store i32 %not, ptr %mask, align 4, !dbg !665
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !654, metadata !DIExpression()), !dbg !670
  br label %do.body, !dbg !671

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !672
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !655, metadata !DIExpression()), !dbg !672
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !672
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !658, metadata !DIExpression()), !dbg !672
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !672
  %conv = zext i1 %cmp to i32, !dbg !672
  store i32 1, ptr %tmp, align 4, !dbg !672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !673
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !673
  %1 = load i32, ptr %tmp, align 4, !dbg !672
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @i8259A_lock) #8, !dbg !673
  store i64 %call, ptr %flags, align 8, !dbg !673
  br label %do.cond, !dbg !673

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !673

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %mask, align 4, !dbg !674
  %3 = load i32, ptr @cached_irq_mask, align 4, !dbg !675
  %and = and i32 %3, %2, !dbg !675
  store i32 %and, ptr @cached_irq_mask, align 4, !dbg !675
  %4 = load i32, ptr %irq.addr, align 4, !dbg !676
  %and1 = and i32 %4, 8, !dbg !678
  %tobool = icmp ne i32 %and1, 0, !dbg !678
  br i1 %tobool, label %if.then, label %if.else, !dbg !679

if.then:                                          ; preds = %do.end
  %5 = load i8, ptr getelementptr (i8, ptr @cached_irq_mask, i64 1), align 1, !dbg !680
  call void @__outb(i8 noundef zeroext %5, i16 noundef zeroext 161) #8, !dbg !681
  br label %if.end, !dbg !681

if.else:                                          ; preds = %do.end
  %6 = load i8, ptr @cached_irq_mask, align 4, !dbg !682
  call void @__outb(i8 noundef zeroext %6, i16 noundef zeroext 33) #8, !dbg !683
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body2, !dbg !684

do.body2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #9, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !659, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #9, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !662, metadata !DIExpression()), !dbg !685
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !685
  %conv6 = zext i1 %cmp5 to i32, !dbg !685
  store i32 1, ptr %tmp7, align 4, !dbg !685
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #9, !dbg !686
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #9, !dbg !686
  %7 = load i32, ptr %tmp7, align 4, !dbg !685
  %8 = load i64, ptr %flags, align 8, !dbg !686
  call void @_raw_spin_unlock_irqrestore(ptr noundef @i8259A_lock, i64 noundef %8) #8, !dbg !686
  br label %do.cond8, !dbg !686

do.cond8:                                         ; preds = %do.body2
  br label %do.end9, !dbg !686

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !687
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #9, !dbg !687
  ret void, !dbg !687
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mask_8259A() #0 align 16 !dbg !688 {
entry:
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !690, metadata !DIExpression()), !dbg !700
  br label %do.body, !dbg !701

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !691, metadata !DIExpression()), !dbg !702
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !694, metadata !DIExpression()), !dbg !702
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !702
  %conv = zext i1 %cmp to i32, !dbg !702
  store i32 1, ptr %tmp, align 4, !dbg !702
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !703
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !703
  %0 = load i32, ptr %tmp, align 4, !dbg !702
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @i8259A_lock) #8, !dbg !703
  store i64 %call, ptr %flags, align 8, !dbg !703
  br label %do.cond, !dbg !703

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !703

do.end:                                           ; preds = %do.cond
  call void @__outb(i8 noundef zeroext -1, i16 noundef zeroext 33) #8, !dbg !704
  call void @__outb(i8 noundef zeroext -1, i16 noundef zeroext 161) #8, !dbg !705
  br label %do.body1, !dbg !706

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #9, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !695, metadata !DIExpression()), !dbg !707
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #9, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !698, metadata !DIExpression()), !dbg !707
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !707
  %conv6 = zext i1 %cmp5 to i32, !dbg !707
  store i32 1, ptr %tmp7, align 4, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #9, !dbg !708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #9, !dbg !708
  %1 = load i32, ptr %tmp7, align 4, !dbg !707
  %2 = load i64, ptr %flags, align 8, !dbg !708
  call void @_raw_spin_unlock_irqrestore(ptr noundef @i8259A_lock, i64 noundef %2) #8, !dbg !708
  br label %do.cond8, !dbg !708

do.cond8:                                         ; preds = %do.body1
  br label %do.end9, !dbg !708

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !709
  ret void, !dbg !709
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unmask_8259A() #0 align 16 !dbg !710 {
entry:
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !721
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !712, metadata !DIExpression()), !dbg !722
  br label %do.body, !dbg !723

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !713, metadata !DIExpression()), !dbg !724
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !716, metadata !DIExpression()), !dbg !724
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !724
  %conv = zext i1 %cmp to i32, !dbg !724
  store i32 1, ptr %tmp, align 4, !dbg !724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !725
  %0 = load i32, ptr %tmp, align 4, !dbg !724
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @i8259A_lock) #8, !dbg !725
  store i64 %call, ptr %flags, align 8, !dbg !725
  br label %do.cond, !dbg !725

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !725

do.end:                                           ; preds = %do.cond
  %1 = load i8, ptr @cached_irq_mask, align 4, !dbg !726
  call void @__outb(i8 noundef zeroext %1, i16 noundef zeroext 33) #8, !dbg !727
  %2 = load i8, ptr getelementptr (i8, ptr @cached_irq_mask, i64 1), align 1, !dbg !728
  call void @__outb(i8 noundef zeroext %2, i16 noundef zeroext 161) #8, !dbg !729
  br label %do.body1, !dbg !730

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #9, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !717, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #9, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !720, metadata !DIExpression()), !dbg !731
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !731
  %conv6 = zext i1 %cmp5 to i32, !dbg !731
  store i32 1, ptr %tmp7, align 4, !dbg !731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #9, !dbg !732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #9, !dbg !732
  %3 = load i32, ptr %tmp7, align 4, !dbg !731
  %4 = load i64, ptr %flags, align 8, !dbg !732
  call void @_raw_spin_unlock_irqrestore(ptr noundef @i8259A_lock, i64 noundef %4) #8, !dbg !732
  br label %do.cond8, !dbg !732

do.cond8:                                         ; preds = %do.body1
  br label %do.end9, !dbg !732

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !733
  ret void, !dbg !733
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_8259A(i32 noundef %auto_eoi) #0 align 16 !dbg !734 {
entry:
  %auto_eoi.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store i32 %auto_eoi, ptr %auto_eoi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %auto_eoi.addr, metadata !736, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !737, metadata !DIExpression()), !dbg !748
  %0 = load i32, ptr %auto_eoi.addr, align 4, !dbg !749
  store i32 %0, ptr @i8259A_auto_eoi, align 4, !dbg !750
  br label %do.body, !dbg !751

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !752
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !738, metadata !DIExpression()), !dbg !752
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !752
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !741, metadata !DIExpression()), !dbg !752
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !752
  %conv = zext i1 %cmp to i32, !dbg !752
  store i32 1, ptr %tmp, align 4, !dbg !752
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !753
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !753
  %1 = load i32, ptr %tmp, align 4, !dbg !752
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @i8259A_lock) #8, !dbg !753
  store i64 %call, ptr %flags, align 8, !dbg !753
  br label %do.cond, !dbg !753

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !753

do.end:                                           ; preds = %do.cond
  call void @__outb(i8 noundef zeroext -1, i16 noundef zeroext 33) #8, !dbg !754
  call void @outb_pic(i8 noundef zeroext 17, i32 noundef 32) #8, !dbg !755
  call void @outb_pic(i8 noundef zeroext 48, i32 noundef 33) #8, !dbg !756
  call void @outb_pic(i8 noundef zeroext 4, i32 noundef 33) #8, !dbg !757
  %2 = load i32, ptr %auto_eoi.addr, align 4, !dbg !758
  %tobool = icmp ne i32 %2, 0, !dbg !758
  br i1 %tobool, label %if.then, label %if.else, !dbg !760

if.then:                                          ; preds = %do.end
  call void @outb_pic(i8 noundef zeroext 3, i32 noundef 33) #8, !dbg !761
  br label %if.end, !dbg !761

if.else:                                          ; preds = %do.end
  call void @outb_pic(i8 noundef zeroext 1, i32 noundef 33) #8, !dbg !762
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @outb_pic(i8 noundef zeroext 17, i32 noundef 160) #8, !dbg !763
  call void @outb_pic(i8 noundef zeroext 56, i32 noundef 161) #8, !dbg !764
  call void @outb_pic(i8 noundef zeroext 2, i32 noundef 161) #8, !dbg !765
  call void @outb_pic(i8 noundef zeroext 1, i32 noundef 161) #8, !dbg !766
  %3 = load i32, ptr %auto_eoi.addr, align 4, !dbg !767
  %tobool1 = icmp ne i32 %3, 0, !dbg !767
  br i1 %tobool1, label %if.then2, label %if.else3, !dbg !769

if.then2:                                         ; preds = %if.end
  store ptr @disable_8259A_irq, ptr getelementptr inbounds (%struct.irq_chip, ptr @i8259A_chip, i32 0, i32 7), align 8, !dbg !770
  br label %if.end4, !dbg !771

if.else3:                                         ; preds = %if.end
  store ptr @mask_and_ack_8259A, ptr getelementptr inbounds (%struct.irq_chip, ptr @i8259A_chip, i32 0, i32 7), align 8, !dbg !772
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  call void @__const_udelay(i64 noundef 429500) #8, !dbg !773
  %4 = load i8, ptr @cached_irq_mask, align 4, !dbg !778
  call void @__outb(i8 noundef zeroext %4, i16 noundef zeroext 33) #8, !dbg !779
  %5 = load i8, ptr getelementptr (i8, ptr @cached_irq_mask, i64 1), align 1, !dbg !780
  call void @__outb(i8 noundef zeroext %5, i16 noundef zeroext 161) #8, !dbg !781
  br label %do.body5, !dbg !782

do.body5:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #9, !dbg !783
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !742, metadata !DIExpression()), !dbg !783
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #9, !dbg !783
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !745, metadata !DIExpression()), !dbg !783
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !783
  %conv9 = zext i1 %cmp8 to i32, !dbg !783
  store i32 1, ptr %tmp10, align 4, !dbg !783
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #9, !dbg !784
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #9, !dbg !784
  %6 = load i32, ptr %tmp10, align 4, !dbg !783
  %7 = load i64, ptr %flags, align 8, !dbg !784
  call void @_raw_spin_unlock_irqrestore(ptr noundef @i8259A_lock, i64 noundef %7) #8, !dbg !784
  br label %do.cond11, !dbg !784

do.cond11:                                        ; preds = %do.body5
  br label %do.end12, !dbg !784

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !785
  ret void, !dbg !785
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @probe_8259A() #0 align 16 !dbg !786 {
entry:
  %retval = alloca i32, align 4
  %new_val = alloca i8, align 1
  %probe_val = alloca i8, align 1
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__dummy15 = alloca i64, align 8
  %__dummy216 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_val) #9, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %new_val, metadata !788, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 1, ptr %probe_val) #9, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %probe_val, metadata !789, metadata !DIExpression()), !dbg !801
  store i8 -5, ptr %probe_val, align 1, !dbg !801
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !790, metadata !DIExpression()), !dbg !803
  %0 = load i8, ptr @pcat_compat, align 1, !dbg !804, !range !806, !noundef !807
  %tobool = trunc i8 %0 to i1, !dbg !804
  br i1 %tobool, label %if.then, label %if.end, !dbg !808

if.then:                                          ; preds = %entry
  %call = call i32 @nr_legacy_irqs() #8, !dbg !809
  store i32 %call, ptr %retval, align 4, !dbg !810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !810

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !811

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !791, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !794, metadata !DIExpression()), !dbg !812
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !812
  %conv = zext i1 %cmp to i32, !dbg !812
  store i32 1, ptr %tmp, align 4, !dbg !812
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !813
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !813
  %1 = load i32, ptr %tmp, align 4, !dbg !812
  %call1 = call i64 @_raw_spin_lock_irqsave(ptr noundef @i8259A_lock) #8, !dbg !813
  store i64 %call1, ptr %flags, align 8, !dbg !813
  br label %do.cond, !dbg !813

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !813

do.end:                                           ; preds = %do.cond
  call void @__outb(i8 noundef zeroext -1, i16 noundef zeroext 161) #8, !dbg !814
  %2 = load i8, ptr %probe_val, align 1, !dbg !815
  call void @__outb(i8 noundef zeroext %2, i16 noundef zeroext 33) #8, !dbg !816
  %call2 = call zeroext i8 @__inb(i16 noundef zeroext 33) #8, !dbg !817
  store i8 %call2, ptr %new_val, align 1, !dbg !818
  %3 = load i8, ptr %new_val, align 1, !dbg !819
  %conv3 = zext i8 %3 to i32, !dbg !819
  %4 = load i8, ptr %probe_val, align 1, !dbg !821
  %conv4 = zext i8 %4 to i32, !dbg !821
  %cmp5 = icmp ne i32 %conv3, %conv4, !dbg !822
  br i1 %cmp5, label %if.then7, label %if.end13, !dbg !823

if.then7:                                         ; preds = %do.end
  br label %do.body8, !dbg !824

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !827

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !827

do.end10:                                         ; preds = %do.cond9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #10, !dbg !824
  store i32 %call12, ptr %tmp11, align 4, !dbg !827
  %5 = load i32, ptr %tmp11, align 4, !dbg !824
  store ptr @null_legacy_pic, ptr @legacy_pic, align 8, !dbg !829
  br label %if.end13, !dbg !830

if.end13:                                         ; preds = %do.end10, %do.end
  br label %do.body14, !dbg !831

do.body14:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy15) #9, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %__dummy15, metadata !795, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy216) #9, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %__dummy216, metadata !798, metadata !DIExpression()), !dbg !832
  %cmp17 = icmp eq ptr %__dummy15, %__dummy216, !dbg !832
  %conv18 = zext i1 %cmp17 to i32, !dbg !832
  store i32 1, ptr %tmp19, align 4, !dbg !832
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy216) #9, !dbg !833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy15) #9, !dbg !833
  %6 = load i32, ptr %tmp19, align 4, !dbg !832
  %7 = load i64, ptr %flags, align 8, !dbg !833
  call void @_raw_spin_unlock_irqrestore(ptr noundef @i8259A_lock, i64 noundef %7) #8, !dbg !833
  br label %do.cond20, !dbg !833

do.cond20:                                        ; preds = %do.body14
  br label %do.end21, !dbg !833

do.end21:                                         ; preds = %do.cond20
  %call22 = call i32 @nr_legacy_irqs() #8, !dbg !834
  store i32 %call22, ptr %retval, align 4, !dbg !835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !835

cleanup:                                          ; preds = %do.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 1, ptr %probe_val) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_val) #9, !dbg !836
  %8 = load i32, ptr %retval, align 4, !dbg !836
  ret i32 %8, !dbg !836
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i8259A_irq_pending(i32 noundef %irq) #0 align 16 !dbg !837 {
entry:
  %irq.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !839, metadata !DIExpression()), !dbg !851
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #9, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !840, metadata !DIExpression()), !dbg !853
  %0 = load i32, ptr %irq.addr, align 4, !dbg !854
  %shl = shl i32 1, %0, !dbg !855
  store i32 %shl, ptr %mask, align 4, !dbg !853
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !856
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !841, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !842, metadata !DIExpression()), !dbg !859
  br label %do.body, !dbg !860

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !843, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !846, metadata !DIExpression()), !dbg !861
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !861
  %conv = zext i1 %cmp to i32, !dbg !861
  store i32 1, ptr %tmp, align 4, !dbg !861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !862
  %1 = load i32, ptr %tmp, align 4, !dbg !861
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @i8259A_lock) #8, !dbg !862
  store i64 %call, ptr %flags, align 8, !dbg !862
  br label %do.cond, !dbg !862

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !862

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %irq.addr, align 4, !dbg !863
  %cmp1 = icmp ult i32 %2, 8, !dbg !865
  br i1 %cmp1, label %if.then, label %if.else, !dbg !866

if.then:                                          ; preds = %do.end
  %call3 = call zeroext i8 @__inb(i16 noundef zeroext 32) #8, !dbg !867
  %conv4 = zext i8 %call3 to i32, !dbg !867
  %3 = load i32, ptr %mask, align 4, !dbg !868
  %and = and i32 %conv4, %3, !dbg !869
  store i32 %and, ptr %ret, align 4, !dbg !870
  br label %if.end, !dbg !871

if.else:                                          ; preds = %do.end
  %call5 = call zeroext i8 @__inb(i16 noundef zeroext 160) #8, !dbg !872
  %conv6 = zext i8 %call5 to i32, !dbg !872
  %4 = load i32, ptr %mask, align 4, !dbg !873
  %shr = lshr i32 %4, 8, !dbg !874
  %and7 = and i32 %conv6, %shr, !dbg !875
  store i32 %and7, ptr %ret, align 4, !dbg !876
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body8, !dbg !877

do.body8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy9) #9, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %__dummy9, metadata !847, metadata !DIExpression()), !dbg !878
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy210) #9, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %__dummy210, metadata !850, metadata !DIExpression()), !dbg !878
  %cmp11 = icmp eq ptr %__dummy9, %__dummy210, !dbg !878
  %conv12 = zext i1 %cmp11 to i32, !dbg !878
  store i32 1, ptr %tmp13, align 4, !dbg !878
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy210) #9, !dbg !879
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy9) #9, !dbg !879
  %5 = load i32, ptr %tmp13, align 4, !dbg !878
  %6 = load i64, ptr %flags, align 8, !dbg !879
  call void @_raw_spin_unlock_irqrestore(ptr noundef @i8259A_lock, i64 noundef %6) #8, !dbg !879
  br label %do.cond14, !dbg !879

do.cond14:                                        ; preds = %do.body8
  br label %do.end15, !dbg !879

do.end15:                                         ; preds = %do.cond14
  %7 = load i32, ptr %ret, align 4, !dbg !880
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !881
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !881
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #9, !dbg !881
  ret i32 %7, !dbg !882
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @make_8259A_irq(i32 noundef %irq) #0 align 16 !dbg !883 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !885, metadata !DIExpression()), !dbg !886
  %0 = load i32, ptr %irq.addr, align 4, !dbg !887
  call void @disable_irq_nosync(i32 noundef %0) #8, !dbg !888
  %1 = load i32, ptr %irq.addr, align 4, !dbg !889
  %shl = shl i32 1, %1, !dbg !890
  %not = xor i32 %shl, -1, !dbg !891
  %conv = sext i32 %not to i64, !dbg !891
  %2 = load i64, ptr @io_apic_irqs, align 8, !dbg !892
  %and = and i64 %2, %conv, !dbg !892
  store i64 %and, ptr @io_apic_irqs, align 8, !dbg !892
  %3 = load i32, ptr %irq.addr, align 4, !dbg !893
  call void @irq_set_chip_and_handler(i32 noundef %3, ptr noundef @i8259A_chip, ptr noundef @handle_level_irq) #8, !dbg !894
  %4 = load i32, ptr %irq.addr, align 4, !dbg !895
  call void @irq_set_status_flags(i32 noundef %4, i64 noundef 256) #8, !dbg !896
  %5 = load i32, ptr %irq.addr, align 4, !dbg !897
  call void @enable_irq(i32 noundef %5) #8, !dbg !898
  %6 = load i32, ptr %irq.addr, align 4, !dbg !899
  call void @lapic_assign_legacy_vector(i32 noundef %6, i1 noundef zeroext true) #8, !dbg !900
  ret void, !dbg !901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @outb_pic(i8 noundef zeroext %value, i32 noundef %port) #6 align 16 !dbg !902 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !906, metadata !DIExpression()), !dbg !908
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !907, metadata !DIExpression()), !dbg !909
  %0 = load i8, ptr %value.addr, align 1, !dbg !910
  %1 = load i32, ptr %port.addr, align 4, !dbg !911
  %conv = trunc i32 %1 to i16, !dbg !911
  call void @__outb(i8 noundef zeroext %0, i16 noundef zeroext %conv) #8, !dbg !912
  call void @__const_udelay(i64 noundef 8590) #8, !dbg !913
  ret void, !dbg !918
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !919 dso_local void @__const_udelay(i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nr_legacy_irqs() #6 align 16 !dbg !923 {
entry:
  %0 = load ptr, ptr @legacy_pic, align 8, !dbg !924
  %nr_legacy_irqs = getelementptr inbounds %struct.legacy_pic, ptr %0, i32 0, i32 0, !dbg !925
  %1 = load i32, ptr %nr_legacy_irqs, align 8, !dbg !925
  ret i32 %1, !dbg !926
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !927 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !928 dso_local void @disable_irq_nosync(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_set_chip_and_handler(i32 noundef %irq, ptr noundef %chip, ptr noundef %handle) #6 align 16 !dbg !929 {
entry:
  %irq.addr = alloca i32, align 4
  %chip.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3149, metadata !DIExpression()), !dbg !3152
  store ptr %chip, ptr %chip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chip.addr, metadata !3150, metadata !DIExpression()), !dbg !3153
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3151, metadata !DIExpression()), !dbg !3154
  %0 = load i32, ptr %irq.addr, align 4, !dbg !3155
  %1 = load ptr, ptr %chip.addr, align 8, !dbg !3156
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !3157
  call void @irq_set_chip_and_handler_name(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #8, !dbg !3158
  ret void, !dbg !3159
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_set_status_flags(i32 noundef %irq, i64 noundef %set) #6 align 16 !dbg !3160 {
entry:
  %irq.addr = alloca i32, align 4
  %set.addr = alloca i64, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3164, metadata !DIExpression()), !dbg !3166
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3165, metadata !DIExpression()), !dbg !3167
  %0 = load i32, ptr %irq.addr, align 4, !dbg !3168
  %1 = load i64, ptr %set.addr, align 8, !dbg !3169
  call void @irq_modify_status(i32 noundef %0, i64 noundef 0, i64 noundef %1) #8, !dbg !3170
  ret void, !dbg !3171
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3172 dso_local void @enable_irq(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3173 dso_local void @lapic_assign_legacy_vector(i32 noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3177 dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3180 dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3183 dso_local void @register_syscore_ops(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i8259A_suspend() #0 align 16 !dbg !3187 {
entry:
  call void @save_ELCR(ptr noundef @irq_trigger) #8, !dbg !3188
  ret i32 0, !dbg !3189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i8259A_resume() #0 align 16 !dbg !3190 {
entry:
  %0 = load i32, ptr @i8259A_auto_eoi, align 4, !dbg !3191
  call void @init_8259A(i32 noundef %0) #8, !dbg !3192
  call void @restore_ELCR(ptr noundef @irq_trigger) #8, !dbg !3193
  ret void, !dbg !3194
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i8259A_shutdown() #0 align 16 !dbg !3195 {
entry:
  call void @__outb(i8 noundef zeroext -1, i16 noundef zeroext 33) #8, !dbg !3196
  call void @__outb(i8 noundef zeroext -1, i16 noundef zeroext 161) #8, !dbg !3197
  ret void, !dbg !3198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @save_ELCR(ptr noundef %trigger) #0 align 16 !dbg !3199 {
entry:
  %trigger.addr = alloca ptr, align 8
  store ptr %trigger, ptr %trigger.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trigger.addr, metadata !3203, metadata !DIExpression()), !dbg !3204
  %call = call zeroext i8 @__inb(i16 noundef zeroext 1232) #8, !dbg !3205
  %conv = zext i8 %call to i32, !dbg !3205
  %and = and i32 %conv, 248, !dbg !3206
  %conv1 = trunc i32 %and to i8, !dbg !3205
  %0 = load ptr, ptr %trigger.addr, align 8, !dbg !3207
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !3207
  store i8 %conv1, ptr %arrayidx, align 1, !dbg !3208
  %call2 = call zeroext i8 @__inb(i16 noundef zeroext 1233) #8, !dbg !3209
  %conv3 = zext i8 %call2 to i32, !dbg !3209
  %and4 = and i32 %conv3, 222, !dbg !3210
  %conv5 = trunc i32 %and4 to i8, !dbg !3209
  %1 = load ptr, ptr %trigger.addr, align 8, !dbg !3211
  %arrayidx6 = getelementptr i8, ptr %1, i64 1, !dbg !3211
  store i8 %conv5, ptr %arrayidx6, align 1, !dbg !3212
  ret void, !dbg !3213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @restore_ELCR(ptr noundef %trigger) #0 align 16 !dbg !3214 {
entry:
  %trigger.addr = alloca ptr, align 8
  store ptr %trigger, ptr %trigger.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trigger.addr, metadata !3216, metadata !DIExpression()), !dbg !3217
  %0 = load ptr, ptr %trigger.addr, align 8, !dbg !3218
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !3218
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3218
  call void @__outb(i8 noundef zeroext %1, i16 noundef zeroext 1232) #8, !dbg !3219
  %2 = load ptr, ptr %trigger.addr, align 8, !dbg !3220
  %arrayidx1 = getelementptr i8, ptr %2, i64 1, !dbg !3220
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !3220
  call void @__outb(i8 noundef zeroext %3, i16 noundef zeroext 1233) #8, !dbg !3221
  ret void, !dbg !3222
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i8259A_lock", scope: !2, file: !3, line: 37, type: !314, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.i8259.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/i8259\22 -D KBUILD_BASENAME=\22i8259\22 -D KBUILD_MODNAME=\22i8259\22 -D __KBUILD_MODNAME=kmod_i8259 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/i8259.ll arch/x86/kernel/i8259.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !82, globals: !86, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/i8259.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f7ce670ae20ac84fdb6f7e418e3e4a0")
!4 = !{!5, !13, !18, !45, !51, !56, !62, !69, !75}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !6, line: 497, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!10 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!11 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!12 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0)
!17 = !DIEnumerator(name: "true", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 77, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!21 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0)
!22 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1)
!23 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2)
!24 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3)
!25 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4)
!26 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8)
!27 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12)
!28 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15)
!29 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15)
!30 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16)
!31 = !DIEnumerator(name: "IRQ_LEVEL", value: 256)
!32 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512)
!33 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024)
!34 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048)
!35 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096)
!36 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192)
!37 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384)
!38 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768)
!39 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536)
!40 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072)
!41 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144)
!42 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288)
!43 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576)
!44 = !DIEnumerator(name: "IRQ_NO_DEBUG", value: 2097152)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !46, line: 11, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!49 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!50 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !52, line: 65, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!55 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !57, line: 16, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "TT_NONE", value: 0)
!60 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!61 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !63, line: 51, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!66 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!67 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!68 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !70, line: 26, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!73 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!74 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !76, line: 312, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!79 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!80 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!81 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!0, !87, !89, !95, !222, !252, !255, !257, !259, !261, !263, !281, !286, !288, !290, !295, !309}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "cached_irq_mask", scope: !2, file: !3, line: 46, type: !7, isLocal: false, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 56, elements: !93)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !{!94}
!94 = !DISubrange(count: 7)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "i8259A_chip", scope: !2, file: !3, line: 226, type: !97, isLocal: false, isDefinition: true)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !19, line: 501, size: 2112, elements: !98)
!98 = !{!99, !102, !146, !150, !151, !152, !153, !154, !155, !156, !157, !167, !171, !175, !176, !177, !178, !179, !180, !181, !182, !189, !190, !191, !197, !198, !203, !207, !211, !215, !219, !220, !221}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !19, line: 502, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !97, file: !19, line: 503, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!7, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !19, line: 179, size: 448, elements: !108)
!108 = !{!109, !114, !115, !117, !138, !140, !144, !145}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !107, file: !19, line: 180, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !111, line: 21, baseType: !112)
!111 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !113, line: 27, baseType: !7)
!113 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !107, file: !19, line: 181, baseType: !7, size: 32, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !107, file: !19, line: 182, baseType: !116, size: 64, offset: 64)
!116 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !107, file: !19, line: 183, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !19, line: 147, size: 320, elements: !120)
!120 = !{!121, !122, !123, !124, !127, !137}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !119, file: !19, line: 148, baseType: !7, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !19, line: 150, baseType: !7, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !119, file: !19, line: 152, baseType: !83, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !119, file: !19, line: 153, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !19, line: 129, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !119, file: !19, line: 155, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !129, line: 913, baseType: !130)
!129 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !135)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !129, line: 19, size: 64, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !131, file: !129, line: 19, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !119, file: !19, line: 158, baseType: !128, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !107, file: !19, line: 184, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !107, file: !19, line: 185, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !143, line: 13, flags: DIFlagFwdDecl)
!143 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !107, file: !19, line: 187, baseType: !106, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !107, file: !19, line: 189, baseType: !83, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !97, file: !19, line: 504, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !106}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !97, file: !19, line: 505, baseType: !147, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !97, file: !19, line: 506, baseType: !147, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !97, file: !19, line: 508, baseType: !147, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !97, file: !19, line: 509, baseType: !147, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !97, file: !19, line: 510, baseType: !147, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !97, file: !19, line: 511, baseType: !147, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !97, file: !19, line: 512, baseType: !147, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !97, file: !19, line: 514, baseType: !158, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !106, !162, !164}
!161 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !165, line: 35, baseType: !166)
!165 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!166 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !97, file: !19, line: 515, baseType: !168, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!161, !106}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !97, file: !19, line: 516, baseType: !172, size: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!161, !106, !7}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !97, file: !19, line: 517, baseType: !172, size: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !97, file: !19, line: 519, baseType: !147, size: 64, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !97, file: !19, line: 520, baseType: !147, size: 64, offset: 960)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !97, file: !19, line: 526, baseType: !147, size: 64, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !97, file: !19, line: 527, baseType: !147, size: 64, offset: 1088)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !97, file: !19, line: 528, baseType: !147, size: 64, offset: 1152)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !97, file: !19, line: 530, baseType: !147, size: 64, offset: 1216)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !97, file: !19, line: 532, baseType: !183, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !106, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !188, line: 474, flags: DIFlagFwdDecl)
!188 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!189 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !97, file: !19, line: 533, baseType: !168, size: 64, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !97, file: !19, line: 534, baseType: !147, size: 64, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !97, file: !19, line: 536, baseType: !192, size: 64, offset: 1472)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !106, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !19, line: 29, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !97, file: !19, line: 537, baseType: !192, size: 64, offset: 1536)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !97, file: !19, line: 539, baseType: !199, size: 64, offset: 1600)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!161, !106, !5, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !97, file: !19, line: 540, baseType: !204, size: 64, offset: 1664)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!161, !106, !5, !164}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !97, file: !19, line: 542, baseType: !208, size: 64, offset: 1728)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!161, !106, !83}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !97, file: !19, line: 544, baseType: !212, size: 64, offset: 1792)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !106, !7}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !97, file: !19, line: 545, baseType: !216, size: 64, offset: 1856)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !106, !162}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !97, file: !19, line: 547, baseType: !168, size: 64, offset: 1920)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !97, file: !19, line: 548, baseType: !147, size: 64, offset: 1984)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !19, line: 550, baseType: !116, size: 64, offset: 2048)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "null_legacy_pic", scope: !2, file: !3, line: 414, type: !224, isLocal: false, isDefinition: true)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "legacy_pic", file: !225, line: 59, size: 640, elements: !226)
!225 = !DIFile(filename: "./arch/x86/include/asm/i8259.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea2431e45e85ef1d701234a5172ab8b1")
!226 = !{!227, !228, !229, !233, !234, !238, !239, !243, !247, !251}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_legacy_irqs", scope: !224, file: !225, line: 60, baseType: !161, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !224, file: !225, line: 61, baseType: !139, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !224, file: !225, line: 62, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !7}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "unmask", scope: !224, file: !225, line: 63, baseType: !230, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mask_all", scope: !224, file: !225, line: 64, baseType: !235, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "restore_mask", scope: !224, file: !225, line: 65, baseType: !235, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !224, file: !225, line: 66, baseType: !240, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !161}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !224, file: !225, line: 67, baseType: !244, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!161}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !224, file: !225, line: 68, baseType: !248, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!161, !7}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "make_irq", scope: !224, file: !225, line: 69, baseType: !230, size: 64, offset: 576)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "legacy_pic", scope: !2, file: !3, line: 440, type: !254, isLocal: false, isDefinition: true)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_legacy_pic242", scope: !2, file: !3, line: 441, type: !83, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_i8259__243_450_i8259A_init_ops6244", scope: !2, file: !3, line: 450, type: !83, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "pcat_compat", scope: !2, file: !3, line: 35, type: !164, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "io_apic_irqs", scope: !2, file: !3, line: 57, type: !116, isLocal: false, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "spurious_irq_mask", scope: !265, file: !3, line: 206, type: !161, isLocal: true, isDefinition: true)
!265 = distinct !DISubprogram(name: "mask_and_ack_8259A", scope: !3, file: !3, line: 152, type: !148, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!266 = !{!267, !268, !269, !270, !271, !274, !275, !276, !279, !280}
!267 = !DILocalVariable(name: "data", arg: 1, scope: !265, file: !3, line: 152, type: !106)
!268 = !DILocalVariable(name: "irq", scope: !265, file: !3, line: 154, type: !7)
!269 = !DILocalVariable(name: "irqmask", scope: !265, file: !3, line: 155, type: !7)
!270 = !DILocalVariable(name: "flags", scope: !265, file: !3, line: 156, type: !116)
!271 = !DILocalVariable(name: "__dummy", scope: !272, file: !3, line: 158, type: !116)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 158, column: 2)
!273 = distinct !DILexicalBlock(scope: !265, file: !3, line: 158, column: 2)
!274 = !DILocalVariable(name: "__dummy2", scope: !272, file: !3, line: 158, type: !116)
!275 = !DILabel(scope: !265, name: "handle_real_irq", file: !3, line: 178)
!276 = !DILocalVariable(name: "__dummy", scope: !277, file: !3, line: 191, type: !116)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 191, column: 2)
!278 = distinct !DILexicalBlock(scope: !265, file: !3, line: 191, column: 2)
!279 = !DILocalVariable(name: "__dummy2", scope: !277, file: !3, line: 191, type: !116)
!280 = !DILabel(scope: !265, name: "spurious_8259A_irq", file: !3, line: 194)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 288, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 36)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "default_legacy_pic", scope: !2, file: !3, line: 427, type: !224, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "i8259A_auto_eoi", scope: !2, file: !3, line: 36, type: !161, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 336, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 200, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 25)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "i8259_syscore_ops", scope: !2, file: !3, line: 271, type: !297, isLocal: true, isDefinition: true)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !298, line: 13, size: 320, elements: !299)
!298 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59d2685cd3ea081e18f1bbec40d890d")
!299 = !{!300, !306, !307, !308}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !297, file: !298, line: 14, baseType: !301, size: 128)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !165, line: 190, size: 128, elements: !302)
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !165, line: 191, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !301, file: !165, line: 191, baseType: !304, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !297, file: !298, line: 15, baseType: !244, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !297, file: !298, line: 16, baseType: !235, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !297, file: !298, line: 17, baseType: !235, size: 64, offset: 256)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "irq_trigger", scope: !2, file: !3, line: 234, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 16, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 2)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !315, line: 23, baseType: !316)
!315 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !315, line: 14, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !316, file: !315, line: 15, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !320, line: 44, baseType: !321)
!320 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !320, line: 14, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !320, line: 15, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !320, line: 15, size: 32, elements: !325)
!325 = !{!326, !331, !338}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !324, file: !320, line: 16, baseType: !327, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !165, line: 174, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 172, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !328, file: !165, line: 173, baseType: !161, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !320, line: 24, baseType: !332, size: 16)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !320, line: 24, size: 16, elements: !333)
!333 = !{!334, !337}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !332, file: !320, line: 25, baseType: !335, size: 8)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !111, line: 17, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !113, line: 21, baseType: !85)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !332, file: !320, line: 26, baseType: !335, size: 8, offset: 8)
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !320, line: 28, baseType: !339, size: 32)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !320, line: 28, size: 32, elements: !340)
!340 = !{!341, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !339, file: !320, line: 29, baseType: !342, size: 16)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !111, line: 19, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !113, line: 24, baseType: !344)
!344 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !339, file: !320, line: 30, baseType: !342, size: 16, offset: 16)
!346 = !{i32 7, !"Dwarf Version", i32 5}
!347 = !{i32 2, !"Debug Info Version", i32 3}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 8, !"cf-protection-branch", i32 1}
!350 = !{i32 4, !"function_return_thunk_extern", i32 1}
!351 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!352 = !{i32 1, !"Code Model", i32 2}
!353 = !{i32 1, !"override-stack-alignment", i32 8}
!354 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!355 = distinct !DISubprogram(name: "disable_8259A_irq", scope: !3, file: !3, line: 73, type: !148, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!356 = !{!357}
!357 = !DILocalVariable(name: "data", arg: 1, scope: !355, file: !3, line: 73, type: !106)
!358 = !DILocation(line: 73, column: 48, scope: !355)
!359 = !DILocation(line: 75, column: 17, scope: !355)
!360 = !DILocation(line: 75, column: 23, scope: !355)
!361 = !DILocation(line: 75, column: 2, scope: !355)
!362 = !DILocation(line: 76, column: 1, scope: !355)
!363 = !DILocation(line: 152, column: 49, scope: !265)
!364 = !DILocation(line: 154, column: 2, scope: !265)
!365 = !DILocation(line: 154, column: 15, scope: !265)
!366 = !DILocation(line: 154, column: 21, scope: !265)
!367 = !DILocation(line: 154, column: 27, scope: !265)
!368 = !DILocation(line: 155, column: 2, scope: !265)
!369 = !DILocation(line: 155, column: 15, scope: !265)
!370 = !DILocation(line: 155, column: 30, scope: !265)
!371 = !DILocation(line: 155, column: 27, scope: !265)
!372 = !DILocation(line: 156, column: 2, scope: !265)
!373 = !DILocation(line: 156, column: 16, scope: !265)
!374 = !DILocation(line: 158, column: 2, scope: !265)
!375 = !DILocation(line: 158, column: 2, scope: !272)
!376 = !DILocation(line: 158, column: 2, scope: !273)
!377 = !DILocation(line: 174, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !265, file: !3, line: 174, column: 6)
!379 = !DILocation(line: 174, column: 24, scope: !378)
!380 = !DILocation(line: 174, column: 22, scope: !378)
!381 = !DILocation(line: 174, column: 6, scope: !265)
!382 = !DILocation(line: 175, column: 3, scope: !378)
!383 = !DILocation(line: 176, column: 21, scope: !265)
!384 = !DILocation(line: 176, column: 18, scope: !265)
!385 = !DILocation(line: 176, column: 2, scope: !265)
!386 = !DILocation(line: 178, column: 1, scope: !265)
!387 = !DILocation(line: 179, column: 6, scope: !388)
!388 = distinct !DILexicalBlock(scope: !265, file: !3, line: 179, column: 6)
!389 = !DILocation(line: 179, column: 10, scope: !388)
!390 = !DILocation(line: 179, column: 6, scope: !265)
!391 = !DILocation(line: 180, column: 3, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 179, column: 15)
!393 = !DILocation(line: 181, column: 8, scope: !392)
!394 = !DILocation(line: 181, column: 3, scope: !392)
!395 = !DILocation(line: 183, column: 14, scope: !392)
!396 = !DILocation(line: 183, column: 17, scope: !392)
!397 = !DILocation(line: 183, column: 12, scope: !392)
!398 = !DILocation(line: 183, column: 8, scope: !392)
!399 = !DILocation(line: 183, column: 3, scope: !392)
!400 = !DILocation(line: 185, column: 3, scope: !392)
!401 = !DILocation(line: 186, column: 2, scope: !392)
!402 = !DILocation(line: 187, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !388, file: !3, line: 186, column: 9)
!404 = !DILocation(line: 188, column: 8, scope: !403)
!405 = !DILocation(line: 188, column: 3, scope: !403)
!406 = !DILocation(line: 189, column: 13, scope: !403)
!407 = !DILocation(line: 189, column: 12, scope: !403)
!408 = !DILocation(line: 189, column: 8, scope: !403)
!409 = !DILocation(line: 189, column: 3, scope: !403)
!410 = !DILocation(line: 191, column: 2, scope: !265)
!411 = !DILocation(line: 191, column: 2, scope: !277)
!412 = !DILocation(line: 191, column: 2, scope: !278)
!413 = !DILocation(line: 224, column: 1, scope: !265)
!414 = !DILocation(line: 194, column: 1, scope: !265)
!415 = !DILocation(line: 198, column: 22, scope: !416)
!416 = distinct !DILexicalBlock(scope: !265, file: !3, line: 198, column: 6)
!417 = !DILocation(line: 198, column: 6, scope: !416)
!418 = !DILocation(line: 198, column: 6, scope: !265)
!419 = !DILocation(line: 203, column: 3, scope: !416)
!420 = !DILocation(line: 211, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 211, column: 7)
!422 = distinct !DILexicalBlock(scope: !265, file: !3, line: 205, column: 2)
!423 = !DILocation(line: 211, column: 29, scope: !421)
!424 = !DILocation(line: 211, column: 27, scope: !421)
!425 = !DILocation(line: 211, column: 7, scope: !422)
!426 = !DILocation(line: 212, column: 4, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 212, column: 4)
!428 = distinct !DILexicalBlock(scope: !421, file: !3, line: 211, column: 39)
!429 = !DILocation(line: 212, column: 4, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !3, line: 212, column: 4)
!431 = !DILocation(line: 214, column: 25, scope: !428)
!432 = !DILocation(line: 214, column: 22, scope: !428)
!433 = !DILocation(line: 215, column: 3, scope: !428)
!434 = !DILocation(line: 216, column: 3, scope: !422)
!435 = !DILocation(line: 222, column: 3, scope: !422)
!436 = distinct !DISubprogram(name: "enable_8259A_irq", scope: !3, file: !3, line: 92, type: !148, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!437 = !{!438}
!438 = !DILocalVariable(name: "data", arg: 1, scope: !436, file: !3, line: 92, type: !106)
!439 = !DILocation(line: 92, column: 47, scope: !436)
!440 = !DILocation(line: 94, column: 19, scope: !436)
!441 = !DILocation(line: 94, column: 25, scope: !436)
!442 = !DILocation(line: 94, column: 2, scope: !436)
!443 = !DILocation(line: 95, column: 1, scope: !436)
!444 = distinct !DISubprogram(name: "legacy_pic_uint_noop", scope: !3, file: !3, line: 403, type: !231, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !445)
!445 = !{!446}
!446 = !DILocalVariable(name: "unused", arg: 1, scope: !444, file: !3, line: 403, type: !7)
!447 = !DILocation(line: 403, column: 47, scope: !444)
!448 = !DILocation(line: 403, column: 57, scope: !444)
!449 = distinct !DISubprogram(name: "legacy_pic_noop", scope: !3, file: !3, line: 402, type: !236, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!450 = !DILocation(line: 402, column: 37, scope: !449)
!451 = distinct !DISubprogram(name: "legacy_pic_int_noop", scope: !3, file: !3, line: 404, type: !241, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!452 = !{!453}
!453 = !DILocalVariable(name: "unused", arg: 1, scope: !451, file: !3, line: 404, type: !161)
!454 = !DILocation(line: 404, column: 37, scope: !451)
!455 = !DILocation(line: 404, column: 47, scope: !451)
!456 = distinct !DISubprogram(name: "legacy_pic_probe", scope: !3, file: !3, line: 409, type: !245, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!457 = !DILocation(line: 411, column: 2, scope: !456)
!458 = distinct !DISubprogram(name: "legacy_pic_irq_pending_noop", scope: !3, file: !3, line: 405, type: !249, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !459)
!459 = !{!460}
!460 = !DILocalVariable(name: "irq", arg: 1, scope: !458, file: !3, line: 405, type: !7)
!461 = !DILocation(line: 405, column: 53, scope: !458)
!462 = !DILocation(line: 407, column: 2, scope: !458)
!463 = distinct !DISubprogram(name: "__initstub__kmod_i8259__243_450_i8259A_init_ops6", scope: !3, file: !3, line: 450, type: !245, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!464 = !DILocation(line: 450, column: 1, scope: !463)
!465 = distinct !DISubprogram(name: "i8259A_init_ops", scope: !3, file: !3, line: 443, type: !245, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!466 = !DILocation(line: 445, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !465, file: !3, line: 445, column: 6)
!468 = !DILocation(line: 445, column: 17, scope: !467)
!469 = !DILocation(line: 445, column: 6, scope: !465)
!470 = !DILocation(line: 446, column: 3, scope: !467)
!471 = !DILocation(line: 448, column: 2, scope: !465)
!472 = distinct !DISubprogram(name: "legacy_pic_pcat_compat", scope: !3, file: !3, line: 452, type: !236, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!473 = !DILocation(line: 454, column: 14, scope: !472)
!474 = !DILocation(line: 455, column: 1, scope: !472)
!475 = distinct !DISubprogram(name: "mask_8259A_irq", scope: !3, file: !3, line: 59, type: !231, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !476)
!476 = !{!477, !478, !479, !480, !483, !484, !487}
!477 = !DILocalVariable(name: "irq", arg: 1, scope: !475, file: !3, line: 59, type: !7)
!478 = !DILocalVariable(name: "mask", scope: !475, file: !3, line: 61, type: !7)
!479 = !DILocalVariable(name: "flags", scope: !475, file: !3, line: 62, type: !116)
!480 = !DILocalVariable(name: "__dummy", scope: !481, file: !3, line: 64, type: !116)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 64, column: 2)
!482 = distinct !DILexicalBlock(scope: !475, file: !3, line: 64, column: 2)
!483 = !DILocalVariable(name: "__dummy2", scope: !481, file: !3, line: 64, type: !116)
!484 = !DILocalVariable(name: "__dummy", scope: !485, file: !3, line: 70, type: !116)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 70, column: 2)
!486 = distinct !DILexicalBlock(scope: !475, file: !3, line: 70, column: 2)
!487 = !DILocalVariable(name: "__dummy2", scope: !485, file: !3, line: 70, type: !116)
!488 = !DILocation(line: 59, column: 41, scope: !475)
!489 = !DILocation(line: 61, column: 2, scope: !475)
!490 = !DILocation(line: 61, column: 15, scope: !475)
!491 = !DILocation(line: 61, column: 27, scope: !475)
!492 = !DILocation(line: 61, column: 24, scope: !475)
!493 = !DILocation(line: 62, column: 2, scope: !475)
!494 = !DILocation(line: 62, column: 16, scope: !475)
!495 = !DILocation(line: 64, column: 2, scope: !475)
!496 = !DILocation(line: 64, column: 2, scope: !481)
!497 = !DILocation(line: 64, column: 2, scope: !482)
!498 = !DILocation(line: 65, column: 21, scope: !475)
!499 = !DILocation(line: 65, column: 18, scope: !475)
!500 = !DILocation(line: 66, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !475, file: !3, line: 66, column: 6)
!502 = !DILocation(line: 66, column: 10, scope: !501)
!503 = !DILocation(line: 66, column: 6, scope: !475)
!504 = !DILocation(line: 67, column: 8, scope: !501)
!505 = !DILocation(line: 67, column: 3, scope: !501)
!506 = !DILocation(line: 69, column: 8, scope: !501)
!507 = !DILocation(line: 69, column: 3, scope: !501)
!508 = !DILocation(line: 70, column: 2, scope: !475)
!509 = !DILocation(line: 70, column: 2, scope: !485)
!510 = !DILocation(line: 70, column: 2, scope: !486)
!511 = !DILocation(line: 71, column: 1, scope: !475)
!512 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !513, file: !513, line: 32, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!514 = !DISubroutineType(types: !515)
!515 = !{!116, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!517 = distinct !DISubprogram(name: "__outb", scope: !518, file: !518, line: 22, type: !519, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!518 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!519 = !DISubroutineType(types: !520)
!520 = !{null, !335, !342}
!521 = !{!522, !523}
!522 = !DILocalVariable(name: "value", arg: 1, scope: !517, file: !518, line: 22, type: !335)
!523 = !DILocalVariable(name: "port", arg: 2, scope: !517, file: !518, line: 22, type: !342)
!524 = !DILocation(line: 22, column: 1, scope: !517)
!525 = !{i64 2151989658}
!526 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !513, file: !513, line: 43, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !516, !116}
!529 = distinct !DISubprogram(name: "__inb", scope: !518, file: !518, line: 22, type: !530, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{!335, !342}
!532 = !{!533, !534}
!533 = !DILocalVariable(name: "port", arg: 1, scope: !529, file: !518, line: 22, type: !342)
!534 = !DILocalVariable(name: "value", scope: !529, file: !518, line: 22, type: !335)
!535 = !DILocation(line: 22, column: 1, scope: !529)
!536 = !{i64 2151989854}
!537 = distinct !DISubprogram(name: "i8259A_irq_real", scope: !3, file: !3, line: 129, type: !249, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!538 = !{!539, !540, !541}
!539 = !DILocalVariable(name: "irq", arg: 1, scope: !537, file: !3, line: 129, type: !7)
!540 = !DILocalVariable(name: "value", scope: !537, file: !3, line: 131, type: !161)
!541 = !DILocalVariable(name: "irqmask", scope: !537, file: !3, line: 132, type: !161)
!542 = !DILocation(line: 129, column: 48, scope: !537)
!543 = !DILocation(line: 131, column: 2, scope: !537)
!544 = !DILocation(line: 131, column: 6, scope: !537)
!545 = !DILocation(line: 132, column: 2, scope: !537)
!546 = !DILocation(line: 132, column: 6, scope: !537)
!547 = !DILocation(line: 132, column: 19, scope: !537)
!548 = !DILocation(line: 132, column: 17, scope: !537)
!549 = !DILocation(line: 134, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !537, file: !3, line: 134, column: 6)
!551 = !DILocation(line: 134, column: 10, scope: !550)
!552 = !DILocation(line: 134, column: 6, scope: !537)
!553 = !DILocation(line: 135, column: 3, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !3, line: 134, column: 15)
!555 = !DILocation(line: 136, column: 11, scope: !554)
!556 = !DILocation(line: 136, column: 33, scope: !554)
!557 = !DILocation(line: 136, column: 31, scope: !554)
!558 = !DILocation(line: 136, column: 9, scope: !554)
!559 = !DILocation(line: 137, column: 3, scope: !554)
!560 = !DILocation(line: 138, column: 10, scope: !554)
!561 = !DILocation(line: 138, column: 3, scope: !554)
!562 = !DILocation(line: 140, column: 2, scope: !537)
!563 = !DILocation(line: 141, column: 10, scope: !537)
!564 = !DILocation(line: 141, column: 32, scope: !537)
!565 = !DILocation(line: 141, column: 40, scope: !537)
!566 = !DILocation(line: 141, column: 29, scope: !537)
!567 = !DILocation(line: 141, column: 8, scope: !537)
!568 = !DILocation(line: 142, column: 2, scope: !537)
!569 = !DILocation(line: 143, column: 9, scope: !537)
!570 = !DILocation(line: 143, column: 2, scope: !537)
!571 = !DILocation(line: 144, column: 1, scope: !537)
!572 = !DISubprogram(name: "_printk_deferred", scope: !573, file: !573, line: 158, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!574 = !DISubroutineType(types: !575)
!575 = !{!161, !100, null}
!576 = distinct !DISubprogram(name: "atomic_inc", scope: !577, file: !577, line: 433, type: !578, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!577 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!581 = !{!582}
!582 = !DILocalVariable(name: "v", arg: 1, scope: !576, file: !577, line: 433, type: !580)
!583 = !DILocation(line: 433, column: 22, scope: !576)
!584 = !DILocation(line: 435, column: 31, scope: !576)
!585 = !DILocation(line: 435, column: 2, scope: !576)
!586 = !DILocation(line: 436, column: 17, scope: !576)
!587 = !DILocation(line: 436, column: 2, scope: !576)
!588 = !DILocation(line: 437, column: 1, scope: !576)
!589 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !590, file: !590, line: 94, type: !591, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !600)
!590 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!591 = !DISubroutineType(types: !592)
!592 = !{null, !593, !596}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 61, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !598, line: 72, baseType: !599)
!598 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !598, line: 16, baseType: !116)
!600 = !{!601, !602}
!601 = !DILocalVariable(name: "v", arg: 1, scope: !589, file: !590, line: 94, type: !593)
!602 = !DILocalVariable(name: "size", arg: 2, scope: !589, file: !590, line: 94, type: !596)
!603 = !DILocation(line: 94, column: 79, scope: !589)
!604 = !DILocation(line: 94, column: 89, scope: !589)
!605 = !DILocation(line: 96, column: 20, scope: !589)
!606 = !DILocation(line: 96, column: 23, scope: !589)
!607 = !DILocation(line: 96, column: 2, scope: !589)
!608 = !DILocation(line: 97, column: 2, scope: !589)
!609 = !DILocation(line: 98, column: 1, scope: !589)
!610 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !611, file: !611, line: 976, type: !578, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!611 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!612 = !{!613}
!613 = !DILocalVariable(name: "v", arg: 1, scope: !610, file: !611, line: 976, type: !580)
!614 = !DILocation(line: 976, column: 26, scope: !610)
!615 = !DILocation(line: 979, column: 18, scope: !610)
!616 = !DILocation(line: 979, column: 2, scope: !610)
!617 = !DILocation(line: 983, column: 1, scope: !610)
!618 = distinct !DISubprogram(name: "kasan_check_write", scope: !619, file: !619, line: 44, type: !620, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!619 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!620 = !DISubroutineType(types: !621)
!621 = !{!164, !593, !7}
!622 = !{!623, !624}
!623 = !DILocalVariable(name: "p", arg: 1, scope: !618, file: !619, line: 44, type: !593)
!624 = !DILocalVariable(name: "size", arg: 2, scope: !618, file: !619, line: 44, type: !7)
!625 = !DILocation(line: 44, column: 59, scope: !618)
!626 = !DILocation(line: 44, column: 75, scope: !618)
!627 = !DILocation(line: 46, column: 2, scope: !618)
!628 = distinct !DISubprogram(name: "kcsan_check_access", scope: !629, file: !629, line: 229, type: !630, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !632)
!629 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!630 = !DISubroutineType(types: !631)
!631 = !{null, !593, !596, !161}
!632 = !{!633, !634, !635}
!633 = !DILocalVariable(name: "ptr", arg: 1, scope: !628, file: !629, line: 229, type: !593)
!634 = !DILocalVariable(name: "size", arg: 2, scope: !628, file: !629, line: 229, type: !596)
!635 = !DILocalVariable(name: "type", arg: 3, scope: !628, file: !629, line: 230, type: !161)
!636 = !DILocation(line: 229, column: 60, scope: !628)
!637 = !DILocation(line: 229, column: 72, scope: !628)
!638 = !DILocation(line: 230, column: 15, scope: !628)
!639 = !DILocation(line: 230, column: 23, scope: !628)
!640 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !641, file: !641, line: 51, type: !578, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!641 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!642 = !{!643}
!643 = !DILocalVariable(name: "v", arg: 1, scope: !640, file: !641, line: 51, type: !580)
!644 = !DILocation(line: 51, column: 55, scope: !640)
!645 = !DILocation(line: 54, column: 16, scope: !640)
!646 = !DILocation(line: 54, column: 19, scope: !640)
!647 = !DILocation(line: 53, column: 2, scope: !640)
!648 = !{i64 2148787221, i64 2148787260, i64 2148787281, i64 2148787318, i64 2148787341, i64 2148787211}
!649 = !DILocation(line: 55, column: 1, scope: !640)
!650 = distinct !DISubprogram(name: "unmask_8259A_irq", scope: !3, file: !3, line: 78, type: !231, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!651 = !{!652, !653, !654, !655, !658, !659, !662}
!652 = !DILocalVariable(name: "irq", arg: 1, scope: !650, file: !3, line: 78, type: !7)
!653 = !DILocalVariable(name: "mask", scope: !650, file: !3, line: 80, type: !7)
!654 = !DILocalVariable(name: "flags", scope: !650, file: !3, line: 81, type: !116)
!655 = !DILocalVariable(name: "__dummy", scope: !656, file: !3, line: 83, type: !116)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 83, column: 2)
!657 = distinct !DILexicalBlock(scope: !650, file: !3, line: 83, column: 2)
!658 = !DILocalVariable(name: "__dummy2", scope: !656, file: !3, line: 83, type: !116)
!659 = !DILocalVariable(name: "__dummy", scope: !660, file: !3, line: 89, type: !116)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 89, column: 2)
!661 = distinct !DILexicalBlock(scope: !650, file: !3, line: 89, column: 2)
!662 = !DILocalVariable(name: "__dummy2", scope: !660, file: !3, line: 89, type: !116)
!663 = !DILocation(line: 78, column: 43, scope: !650)
!664 = !DILocation(line: 80, column: 2, scope: !650)
!665 = !DILocation(line: 80, column: 15, scope: !650)
!666 = !DILocation(line: 80, column: 29, scope: !650)
!667 = !DILocation(line: 80, column: 26, scope: !650)
!668 = !DILocation(line: 80, column: 22, scope: !650)
!669 = !DILocation(line: 81, column: 2, scope: !650)
!670 = !DILocation(line: 81, column: 16, scope: !650)
!671 = !DILocation(line: 83, column: 2, scope: !650)
!672 = !DILocation(line: 83, column: 2, scope: !656)
!673 = !DILocation(line: 83, column: 2, scope: !657)
!674 = !DILocation(line: 84, column: 21, scope: !650)
!675 = !DILocation(line: 84, column: 18, scope: !650)
!676 = !DILocation(line: 85, column: 6, scope: !677)
!677 = distinct !DILexicalBlock(scope: !650, file: !3, line: 85, column: 6)
!678 = !DILocation(line: 85, column: 10, scope: !677)
!679 = !DILocation(line: 85, column: 6, scope: !650)
!680 = !DILocation(line: 86, column: 8, scope: !677)
!681 = !DILocation(line: 86, column: 3, scope: !677)
!682 = !DILocation(line: 88, column: 8, scope: !677)
!683 = !DILocation(line: 88, column: 3, scope: !677)
!684 = !DILocation(line: 89, column: 2, scope: !650)
!685 = !DILocation(line: 89, column: 2, scope: !660)
!686 = !DILocation(line: 89, column: 2, scope: !661)
!687 = !DILocation(line: 90, column: 1, scope: !650)
!688 = distinct !DISubprogram(name: "mask_8259A", scope: !3, file: !3, line: 277, type: !236, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!689 = !{!690, !691, !694, !695, !698}
!690 = !DILocalVariable(name: "flags", scope: !688, file: !3, line: 279, type: !116)
!691 = !DILocalVariable(name: "__dummy", scope: !692, file: !3, line: 281, type: !116)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 281, column: 2)
!693 = distinct !DILexicalBlock(scope: !688, file: !3, line: 281, column: 2)
!694 = !DILocalVariable(name: "__dummy2", scope: !692, file: !3, line: 281, type: !116)
!695 = !DILocalVariable(name: "__dummy", scope: !696, file: !3, line: 286, type: !116)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 286, column: 2)
!697 = distinct !DILexicalBlock(scope: !688, file: !3, line: 286, column: 2)
!698 = !DILocalVariable(name: "__dummy2", scope: !696, file: !3, line: 286, type: !116)
!699 = !DILocation(line: 279, column: 2, scope: !688)
!700 = !DILocation(line: 279, column: 16, scope: !688)
!701 = !DILocation(line: 281, column: 2, scope: !688)
!702 = !DILocation(line: 281, column: 2, scope: !692)
!703 = !DILocation(line: 281, column: 2, scope: !693)
!704 = !DILocation(line: 283, column: 2, scope: !688)
!705 = !DILocation(line: 284, column: 2, scope: !688)
!706 = !DILocation(line: 286, column: 2, scope: !688)
!707 = !DILocation(line: 286, column: 2, scope: !696)
!708 = !DILocation(line: 286, column: 2, scope: !697)
!709 = !DILocation(line: 287, column: 1, scope: !688)
!710 = distinct !DISubprogram(name: "unmask_8259A", scope: !3, file: !3, line: 289, type: !236, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !711)
!711 = !{!712, !713, !716, !717, !720}
!712 = !DILocalVariable(name: "flags", scope: !710, file: !3, line: 291, type: !116)
!713 = !DILocalVariable(name: "__dummy", scope: !714, file: !3, line: 293, type: !116)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 293, column: 2)
!715 = distinct !DILexicalBlock(scope: !710, file: !3, line: 293, column: 2)
!716 = !DILocalVariable(name: "__dummy2", scope: !714, file: !3, line: 293, type: !116)
!717 = !DILocalVariable(name: "__dummy", scope: !718, file: !3, line: 298, type: !116)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 298, column: 2)
!719 = distinct !DILexicalBlock(scope: !710, file: !3, line: 298, column: 2)
!720 = !DILocalVariable(name: "__dummy2", scope: !718, file: !3, line: 298, type: !116)
!721 = !DILocation(line: 291, column: 2, scope: !710)
!722 = !DILocation(line: 291, column: 16, scope: !710)
!723 = !DILocation(line: 293, column: 2, scope: !710)
!724 = !DILocation(line: 293, column: 2, scope: !714)
!725 = !DILocation(line: 293, column: 2, scope: !715)
!726 = !DILocation(line: 295, column: 7, scope: !710)
!727 = !DILocation(line: 295, column: 2, scope: !710)
!728 = !DILocation(line: 296, column: 7, scope: !710)
!729 = !DILocation(line: 296, column: 2, scope: !710)
!730 = !DILocation(line: 298, column: 2, scope: !710)
!731 = !DILocation(line: 298, column: 2, scope: !718)
!732 = !DILocation(line: 298, column: 2, scope: !719)
!733 = !DILocation(line: 299, column: 1, scope: !710)
!734 = distinct !DISubprogram(name: "init_8259A", scope: !3, file: !3, line: 344, type: !241, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !735)
!735 = !{!736, !737, !738, !741, !742, !745}
!736 = !DILocalVariable(name: "auto_eoi", arg: 1, scope: !734, file: !3, line: 344, type: !161)
!737 = !DILocalVariable(name: "flags", scope: !734, file: !3, line: 346, type: !116)
!738 = !DILocalVariable(name: "__dummy", scope: !739, file: !3, line: 350, type: !116)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 350, column: 2)
!740 = distinct !DILexicalBlock(scope: !734, file: !3, line: 350, column: 2)
!741 = !DILocalVariable(name: "__dummy2", scope: !739, file: !3, line: 350, type: !116)
!742 = !DILocalVariable(name: "__dummy", scope: !743, file: !3, line: 393, type: !116)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 393, column: 2)
!744 = distinct !DILexicalBlock(scope: !734, file: !3, line: 393, column: 2)
!745 = !DILocalVariable(name: "__dummy2", scope: !743, file: !3, line: 393, type: !116)
!746 = !DILocation(line: 344, column: 28, scope: !734)
!747 = !DILocation(line: 346, column: 2, scope: !734)
!748 = !DILocation(line: 346, column: 16, scope: !734)
!749 = !DILocation(line: 348, column: 20, scope: !734)
!750 = !DILocation(line: 348, column: 18, scope: !734)
!751 = !DILocation(line: 350, column: 2, scope: !734)
!752 = !DILocation(line: 350, column: 2, scope: !739)
!753 = !DILocation(line: 350, column: 2, scope: !740)
!754 = !DILocation(line: 352, column: 2, scope: !734)
!755 = !DILocation(line: 357, column: 2, scope: !734)
!756 = !DILocation(line: 360, column: 2, scope: !734)
!757 = !DILocation(line: 363, column: 2, scope: !734)
!758 = !DILocation(line: 365, column: 6, scope: !759)
!759 = distinct !DILexicalBlock(scope: !734, file: !3, line: 365, column: 6)
!760 = !DILocation(line: 365, column: 6, scope: !734)
!761 = !DILocation(line: 366, column: 3, scope: !759)
!762 = !DILocation(line: 368, column: 3, scope: !759)
!763 = !DILocation(line: 370, column: 2, scope: !734)
!764 = !DILocation(line: 373, column: 2, scope: !734)
!765 = !DILocation(line: 375, column: 2, scope: !734)
!766 = !DILocation(line: 377, column: 2, scope: !734)
!767 = !DILocation(line: 379, column: 6, scope: !768)
!768 = distinct !DILexicalBlock(scope: !734, file: !3, line: 379, column: 6)
!769 = !DILocation(line: 379, column: 6, scope: !734)
!770 = !DILocation(line: 384, column: 28, scope: !768)
!771 = !DILocation(line: 384, column: 3, scope: !768)
!772 = !DILocation(line: 386, column: 28, scope: !768)
!773 = !DILocation(line: 388, column: 2, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 388, column: 2)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 388, column: 2)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 388, column: 2)
!777 = distinct !DILexicalBlock(scope: !734, file: !3, line: 388, column: 2)
!778 = !DILocation(line: 390, column: 7, scope: !734)
!779 = !DILocation(line: 390, column: 2, scope: !734)
!780 = !DILocation(line: 391, column: 7, scope: !734)
!781 = !DILocation(line: 391, column: 2, scope: !734)
!782 = !DILocation(line: 393, column: 2, scope: !734)
!783 = !DILocation(line: 393, column: 2, scope: !743)
!784 = !DILocation(line: 393, column: 2, scope: !744)
!785 = !DILocation(line: 394, column: 1, scope: !734)
!786 = distinct !DISubprogram(name: "probe_8259A", scope: !3, file: !3, line: 301, type: !245, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!787 = !{!788, !789, !790, !791, !794, !795, !798}
!788 = !DILocalVariable(name: "new_val", scope: !786, file: !3, line: 303, type: !85)
!789 = !DILocalVariable(name: "probe_val", scope: !786, file: !3, line: 303, type: !85)
!790 = !DILocalVariable(name: "flags", scope: !786, file: !3, line: 304, type: !116)
!791 = !DILocalVariable(name: "__dummy", scope: !792, file: !3, line: 330, type: !116)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 330, column: 2)
!793 = distinct !DILexicalBlock(scope: !786, file: !3, line: 330, column: 2)
!794 = !DILocalVariable(name: "__dummy2", scope: !792, file: !3, line: 330, type: !116)
!795 = !DILocalVariable(name: "__dummy", scope: !796, file: !3, line: 340, type: !116)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 340, column: 2)
!797 = distinct !DILexicalBlock(scope: !786, file: !3, line: 340, column: 2)
!798 = !DILocalVariable(name: "__dummy2", scope: !796, file: !3, line: 340, type: !116)
!799 = !DILocation(line: 303, column: 2, scope: !786)
!800 = !DILocation(line: 303, column: 16, scope: !786)
!801 = !DILocation(line: 303, column: 25, scope: !786)
!802 = !DILocation(line: 304, column: 2, scope: !786)
!803 = !DILocation(line: 304, column: 16, scope: !786)
!804 = !DILocation(line: 322, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !786, file: !3, line: 322, column: 6)
!806 = !{i8 0, i8 2}
!807 = !{}
!808 = !DILocation(line: 322, column: 6, scope: !786)
!809 = !DILocation(line: 323, column: 10, scope: !805)
!810 = !DILocation(line: 323, column: 3, scope: !805)
!811 = !DILocation(line: 330, column: 2, scope: !786)
!812 = !DILocation(line: 330, column: 2, scope: !792)
!813 = !DILocation(line: 330, column: 2, scope: !793)
!814 = !DILocation(line: 332, column: 2, scope: !786)
!815 = !DILocation(line: 333, column: 7, scope: !786)
!816 = !DILocation(line: 333, column: 2, scope: !786)
!817 = !DILocation(line: 334, column: 12, scope: !786)
!818 = !DILocation(line: 334, column: 10, scope: !786)
!819 = !DILocation(line: 335, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !786, file: !3, line: 335, column: 6)
!821 = !DILocation(line: 335, column: 17, scope: !820)
!822 = !DILocation(line: 335, column: 14, scope: !820)
!823 = !DILocation(line: 335, column: 6, scope: !786)
!824 = !DILocation(line: 336, column: 3, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 336, column: 3)
!826 = distinct !DILexicalBlock(scope: !820, file: !3, line: 335, column: 28)
!827 = !DILocation(line: 336, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !3, line: 336, column: 3)
!829 = !DILocation(line: 337, column: 14, scope: !826)
!830 = !DILocation(line: 338, column: 2, scope: !826)
!831 = !DILocation(line: 340, column: 2, scope: !786)
!832 = !DILocation(line: 340, column: 2, scope: !796)
!833 = !DILocation(line: 340, column: 2, scope: !797)
!834 = !DILocation(line: 341, column: 9, scope: !786)
!835 = !DILocation(line: 341, column: 2, scope: !786)
!836 = !DILocation(line: 342, column: 1, scope: !786)
!837 = distinct !DISubprogram(name: "i8259A_irq_pending", scope: !3, file: !3, line: 97, type: !249, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !838)
!838 = !{!839, !840, !841, !842, !843, !846, !847, !850}
!839 = !DILocalVariable(name: "irq", arg: 1, scope: !837, file: !3, line: 97, type: !7)
!840 = !DILocalVariable(name: "mask", scope: !837, file: !3, line: 99, type: !7)
!841 = !DILocalVariable(name: "flags", scope: !837, file: !3, line: 100, type: !116)
!842 = !DILocalVariable(name: "ret", scope: !837, file: !3, line: 101, type: !161)
!843 = !DILocalVariable(name: "__dummy", scope: !844, file: !3, line: 103, type: !116)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 103, column: 2)
!845 = distinct !DILexicalBlock(scope: !837, file: !3, line: 103, column: 2)
!846 = !DILocalVariable(name: "__dummy2", scope: !844, file: !3, line: 103, type: !116)
!847 = !DILocalVariable(name: "__dummy", scope: !848, file: !3, line: 108, type: !116)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 108, column: 2)
!849 = distinct !DILexicalBlock(scope: !837, file: !3, line: 108, column: 2)
!850 = !DILocalVariable(name: "__dummy2", scope: !848, file: !3, line: 108, type: !116)
!851 = !DILocation(line: 97, column: 44, scope: !837)
!852 = !DILocation(line: 99, column: 2, scope: !837)
!853 = !DILocation(line: 99, column: 15, scope: !837)
!854 = !DILocation(line: 99, column: 25, scope: !837)
!855 = !DILocation(line: 99, column: 23, scope: !837)
!856 = !DILocation(line: 100, column: 2, scope: !837)
!857 = !DILocation(line: 100, column: 16, scope: !837)
!858 = !DILocation(line: 101, column: 2, scope: !837)
!859 = !DILocation(line: 101, column: 6, scope: !837)
!860 = !DILocation(line: 103, column: 2, scope: !837)
!861 = !DILocation(line: 103, column: 2, scope: !844)
!862 = !DILocation(line: 103, column: 2, scope: !845)
!863 = !DILocation(line: 104, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !837, file: !3, line: 104, column: 6)
!865 = !DILocation(line: 104, column: 10, scope: !864)
!866 = !DILocation(line: 104, column: 6, scope: !837)
!867 = !DILocation(line: 105, column: 9, scope: !864)
!868 = !DILocation(line: 105, column: 31, scope: !864)
!869 = !DILocation(line: 105, column: 29, scope: !864)
!870 = !DILocation(line: 105, column: 7, scope: !864)
!871 = !DILocation(line: 105, column: 3, scope: !864)
!872 = !DILocation(line: 107, column: 9, scope: !864)
!873 = !DILocation(line: 107, column: 31, scope: !864)
!874 = !DILocation(line: 107, column: 36, scope: !864)
!875 = !DILocation(line: 107, column: 28, scope: !864)
!876 = !DILocation(line: 107, column: 7, scope: !864)
!877 = !DILocation(line: 108, column: 2, scope: !837)
!878 = !DILocation(line: 108, column: 2, scope: !848)
!879 = !DILocation(line: 108, column: 2, scope: !849)
!880 = !DILocation(line: 110, column: 9, scope: !837)
!881 = !DILocation(line: 111, column: 1, scope: !837)
!882 = !DILocation(line: 110, column: 2, scope: !837)
!883 = distinct !DISubprogram(name: "make_8259A_irq", scope: !3, file: !3, line: 113, type: !231, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!884 = !{!885}
!885 = !DILocalVariable(name: "irq", arg: 1, scope: !883, file: !3, line: 113, type: !7)
!886 = !DILocation(line: 113, column: 41, scope: !883)
!887 = !DILocation(line: 115, column: 21, scope: !883)
!888 = !DILocation(line: 115, column: 2, scope: !883)
!889 = !DILocation(line: 116, column: 23, scope: !883)
!890 = !DILocation(line: 116, column: 21, scope: !883)
!891 = !DILocation(line: 116, column: 18, scope: !883)
!892 = !DILocation(line: 116, column: 15, scope: !883)
!893 = !DILocation(line: 117, column: 27, scope: !883)
!894 = !DILocation(line: 117, column: 2, scope: !883)
!895 = !DILocation(line: 118, column: 23, scope: !883)
!896 = !DILocation(line: 118, column: 2, scope: !883)
!897 = !DILocation(line: 119, column: 13, scope: !883)
!898 = !DILocation(line: 119, column: 2, scope: !883)
!899 = !DILocation(line: 120, column: 29, scope: !883)
!900 = !DILocation(line: 120, column: 2, scope: !883)
!901 = !DILocation(line: 121, column: 1, scope: !883)
!902 = distinct !DISubprogram(name: "outb_pic", scope: !225, file: !225, line: 47, type: !903, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !85, !7}
!905 = !{!906, !907}
!906 = !DILocalVariable(name: "value", arg: 1, scope: !902, file: !225, line: 47, type: !85)
!907 = !DILocalVariable(name: "port", arg: 2, scope: !902, file: !225, line: 47, type: !7)
!908 = !DILocation(line: 47, column: 43, scope: !902)
!909 = !DILocation(line: 47, column: 63, scope: !902)
!910 = !DILocation(line: 49, column: 7, scope: !902)
!911 = !DILocation(line: 49, column: 14, scope: !902)
!912 = !DILocation(line: 49, column: 2, scope: !902)
!913 = !DILocation(line: 54, column: 2, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !225, line: 54, column: 2)
!915 = distinct !DILexicalBlock(scope: !916, file: !225, line: 54, column: 2)
!916 = distinct !DILexicalBlock(scope: !917, file: !225, line: 54, column: 2)
!917 = distinct !DILexicalBlock(scope: !902, file: !225, line: 54, column: 2)
!918 = !DILocation(line: 55, column: 1, scope: !902)
!919 = !DISubprogram(name: "__const_udelay", scope: !920, file: !920, line: 11, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!921 = !DISubroutineType(types: !922)
!922 = !{null, !116}
!923 = distinct !DISubprogram(name: "nr_legacy_irqs", scope: !225, file: !225, line: 82, type: !245, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!924 = !DILocation(line: 84, column: 9, scope: !923)
!925 = !DILocation(line: 84, column: 21, scope: !923)
!926 = !DILocation(line: 84, column: 2, scope: !923)
!927 = !DISubprogram(name: "_printk", scope: !573, file: !573, line: 153, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DISubprogram(name: "disable_irq_nosync", scope: !6, file: !6, line: 226, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = distinct !DISubprogram(name: "irq_set_chip_and_handler", scope: !19, file: !19, line: 715, type: !930, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3148)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !7, !932, !934}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !935, line: 12, baseType: !936)
!935 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !941, line: 55, size: 3584, align: 512, elements: !942)
!941 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!942 = !{!943, !944, !945, !947, !948, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2435, !2436, !2437, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2803, !2804, !2805, !3146, !3147}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !940, file: !941, line: 56, baseType: !119, size: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !940, file: !941, line: 57, baseType: !107, size: 448, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !940, file: !941, line: 58, baseType: !946, size: 64, offset: 768)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !940, file: !941, line: 59, baseType: !934, size: 64, offset: 832)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !940, file: !941, line: 60, baseType: !949, size: 64, offset: 896)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !6, line: 118, size: 1024, align: 512, elements: !951)
!951 = !{!952, !958, !959, !960, !961, !962, !2413, !2414, !2415, !2416, !2417, !2418, !2419}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !950, file: !6, line: 119, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !6, line: 100, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!957, !161, !83}
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !46, line: 17, baseType: !45)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !950, file: !6, line: 120, baseType: !83, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !950, file: !6, line: 121, baseType: !83, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !950, file: !6, line: 122, baseType: !949, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !950, file: !6, line: 123, baseType: !953, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !950, file: !6, line: 124, baseType: !963, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !965, line: 746, size: 58368, elements: !966)
!965 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!966 = !{!967, !975, !976, !977, !983, !984, !985, !986, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1070, !1081, !1181, !1185, !1188, !1219, !1220, !1221, !1222, !1226, !1228, !1229, !1230, !1231, !1232, !1233, !1244, !1245, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1262, !1263, !1270, !1271, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1573, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1629, !1631, !1632, !1633, !1645, !1647, !1648, !1649, !1650, !1651, !1652, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1678, !1684, !1688, !1689, !1690, !1693, !1697, !1700, !1707, !1712, !1715, !1718, !1721, !1724, !1727, !1730, !1736, !1737, !1738, !1744, !1745, !1746, !1747, !1748, !1751, !1758, !1759, !1768, !1777, !1778, !1779, !1780, !1781, !1786, !1787, !1788, !1791, !1792, !1795, !1798, !1801, !1804, !1807, !1808, !1895, !1906, !1907, !1908, !1909, !1915, !1920, !1921, !1922, !1925, !1926, !1929, !1932, !1933, !1936, !1937, !1938, !1941, !1942, !1943, !1946, !1947, !1948, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1980, !1983, !2052, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2064, !2136, !2138, !2139, !2140, !2141, !2142, !2154, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2184, !2185, !2186}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !964, file: !965, line: 752, baseType: !968, size: 192)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !969, line: 56, size: 192, elements: !970)
!969 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!970 = !{!971, !972, !973, !974}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 57, baseType: !116, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !968, file: !969, line: 58, baseType: !116, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !968, file: !969, line: 59, baseType: !110, size: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !968, file: !969, line: 61, baseType: !110, size: 32, offset: 160)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !964, file: !965, line: 754, baseType: !7, size: 32, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !964, file: !965, line: 767, baseType: !83, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !964, file: !965, line: 768, baseType: !978, size: 32, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !979, line: 113, baseType: !980)
!979 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !979, line: 111, size: 32, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !980, file: !979, line: 112, baseType: !327, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !964, file: !965, line: 770, baseType: !7, size: 32, offset: 352)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !964, file: !965, line: 771, baseType: !7, size: 32, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !964, file: !965, line: 774, baseType: !161, size: 32, offset: 416)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !964, file: !965, line: 775, baseType: !987, size: 128, offset: 448)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !988, line: 58, size: 128, elements: !989)
!988 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!989 = !{!990, !996, !1001, !1002}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !987, file: !988, line: 59, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !992, line: 60, size: 64, elements: !993)
!992 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !991, file: !992, line: 61, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !988, line: 60, baseType: !997, size: 32, offset: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !988, line: 60, size: 32, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !997, file: !988, line: 61, baseType: !7, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !997, file: !988, line: 62, baseType: !327, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !987, file: !988, line: 65, baseType: !342, size: 16, offset: 96)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !987, file: !988, line: 65, baseType: !342, size: 16, offset: 112)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !964, file: !965, line: 776, baseType: !7, size: 32, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !964, file: !965, line: 777, baseType: !116, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !964, file: !965, line: 778, baseType: !963, size: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !964, file: !965, line: 787, baseType: !161, size: 32, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !964, file: !965, line: 788, baseType: !161, size: 32, offset: 800)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !964, file: !965, line: 790, baseType: !161, size: 32, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !964, file: !965, line: 792, baseType: !161, size: 32, offset: 864)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !964, file: !965, line: 793, baseType: !161, size: 32, offset: 896)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !964, file: !965, line: 794, baseType: !161, size: 32, offset: 928)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !964, file: !965, line: 795, baseType: !7, size: 32, offset: 960)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !964, file: !965, line: 797, baseType: !1014, size: 2048, offset: 1024)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !965, line: 551, size: 2048, elements: !1015)
!1015 = !{!1016, !1021, !1029, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1044, !1045, !1046, !1047, !1049, !1052, !1053, !1054}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1014, file: !965, line: 553, baseType: !1017, size: 128)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !965, line: 411, size: 128, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1017, file: !965, line: 412, baseType: !116, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1017, file: !965, line: 413, baseType: !110, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1014, file: !965, line: 554, baseType: !1022, size: 192, align: 64, offset: 128)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1023, line: 5, size: 192, align: 64, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1024 = !{!1025, !1026, !1028}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1022, file: !1023, line: 6, baseType: !116, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1022, file: !1023, line: 7, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1022, file: !1023, line: 8, baseType: !1027, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1014, file: !965, line: 555, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !111, line: 23, baseType: !1031)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !113, line: 31, baseType: !1032)
!1032 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1014, file: !965, line: 556, baseType: !1030, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1014, file: !965, line: 558, baseType: !301, size: 128, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1014, file: !965, line: 559, baseType: !7, size: 32, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1014, file: !965, line: 561, baseType: !1030, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1014, file: !965, line: 562, baseType: !1030, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1014, file: !965, line: 563, baseType: !1030, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1014, file: !965, line: 564, baseType: !1030, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1014, file: !965, line: 565, baseType: !1041, size: 64, offset: 896)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !111, line: 22, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !113, line: 30, baseType: !1043)
!1043 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1014, file: !965, line: 566, baseType: !1030, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1014, file: !965, line: 568, baseType: !1030, size: 64, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1014, file: !965, line: 571, baseType: !161, size: 32, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1014, file: !965, line: 572, baseType: !1048, size: 64, offset: 1152)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1014, file: !965, line: 574, baseType: !1050, size: 64, offset: 1216)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !965, line: 49, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1014, file: !965, line: 576, baseType: !1050, size: 64, offset: 1280)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1014, file: !965, line: 578, baseType: !116, size: 64, offset: 1344)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1014, file: !965, line: 588, baseType: !1055, size: 512, align: 512, offset: 1536)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !965, line: 497, size: 512, align: 512, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1055, file: !965, line: 498, baseType: !1030, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1055, file: !965, line: 499, baseType: !1030, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1055, file: !965, line: 500, baseType: !1030, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1055, file: !965, line: 501, baseType: !110, size: 32, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1055, file: !965, line: 502, baseType: !110, size: 32, offset: 224)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1055, file: !965, line: 503, baseType: !116, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1055, file: !965, line: 504, baseType: !116, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1055, file: !965, line: 505, baseType: !116, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1055, file: !965, line: 506, baseType: !1066, size: 64, align: 64, offset: 448)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !965, line: 445, size: 64, align: 64, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1066, file: !965, line: 446, baseType: !7, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1066, file: !965, line: 447, baseType: !7, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !964, file: !965, line: 798, baseType: !1071, size: 384, offset: 3072)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !965, line: 592, size: 384, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1071, file: !965, line: 593, baseType: !301, size: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1071, file: !965, line: 594, baseType: !116, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1071, file: !965, line: 595, baseType: !116, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1071, file: !965, line: 596, baseType: !7, size: 32, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1071, file: !965, line: 597, baseType: !344, size: 16, offset: 288)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1071, file: !965, line: 598, baseType: !344, size: 16, offset: 304)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1071, file: !965, line: 600, baseType: !1080, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !964, file: !965, line: 799, baseType: !1082, size: 1792, offset: 3456)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !965, line: 610, size: 1792, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1178, !1179}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1082, file: !965, line: 611, baseType: !1022, size: 192, align: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1082, file: !965, line: 618, baseType: !1030, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1082, file: !965, line: 619, baseType: !1030, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1082, file: !965, line: 620, baseType: !1030, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1082, file: !965, line: 621, baseType: !1030, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1082, file: !965, line: 622, baseType: !1030, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1082, file: !965, line: 629, baseType: !1041, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1082, file: !965, line: 630, baseType: !1030, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !965, line: 631, baseType: !7, size: 32, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1082, file: !965, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1082, file: !965, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1082, file: !965, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1082, file: !965, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1082, file: !965, line: 662, baseType: !1098, size: 512, offset: 704)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !52, line: 118, size: 512, elements: !1099)
!1099 = !{!1100, !1108, !1109, !1114, !1174, !1175, !1176, !1177}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1098, file: !52, line: 119, baseType: !1101, size: 256)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1102, line: 9, size: 256, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1101, file: !1102, line: 10, baseType: !1022, size: 192, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1101, file: !1102, line: 11, baseType: !1106, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1107, line: 29, baseType: !1041)
!1107 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1098, file: !52, line: 120, baseType: !1106, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1098, file: !52, line: 121, baseType: !1110, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!51, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1098, file: !52, line: 122, baseType: !1115, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !52, line: 159, size: 512, align: 512, elements: !1117)
!1117 = !{!1118, !1143, !1144, !1147, !1157, !1158, !1169, !1173}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1116, file: !52, line: 160, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !52, line: 215, size: 4608, align: 512, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1120, file: !52, line: 216, baseType: !314, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1120, file: !52, line: 217, baseType: !7, size: 32, offset: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1120, file: !52, line: 218, baseType: !7, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1120, file: !52, line: 219, baseType: !7, size: 32, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1120, file: !52, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1120, file: !52, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1120, file: !52, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1120, file: !52, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1120, file: !52, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1120, file: !52, line: 226, baseType: !7, size: 32, offset: 160)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1120, file: !52, line: 227, baseType: !344, size: 16, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1120, file: !52, line: 228, baseType: !344, size: 16, offset: 208)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1120, file: !52, line: 229, baseType: !7, size: 32, offset: 224)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1120, file: !52, line: 235, baseType: !1106, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1120, file: !52, line: 236, baseType: !1113, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1120, file: !52, line: 237, baseType: !1106, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1120, file: !52, line: 238, baseType: !1113, size: 64, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1120, file: !52, line: 239, baseType: !1140, size: 4096, align: 512, offset: 512)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 4096, align: 512, elements: !1141)
!1141 = !{!1142}
!1142 = !DISubrange(count: 8)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1116, file: !52, line: 161, baseType: !7, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1116, file: !52, line: 162, baseType: !1145, size: 32, offset: 96)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !165, line: 32, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !598, line: 96, baseType: !161)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1116, file: !52, line: 163, baseType: !1148, size: 32, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1149, line: 274, baseType: !1150)
!1149 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1149, line: 274, size: 32, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1150, file: !1149, line: 274, baseType: !1153, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1149, line: 69, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1149, line: 64, size: 32, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1154, file: !1149, line: 65, baseType: !7, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1116, file: !52, line: 164, baseType: !1113, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1116, file: !52, line: 165, baseType: !1159, size: 128, offset: 256)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1102, line: 14, size: 128, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1159, file: !1102, line: 15, baseType: !1162, size: 128)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1023, line: 26, size: 128, elements: !1163)
!1163 = !{!1164, !1168}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1162, file: !1023, line: 27, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1023, line: 12, size: 64, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1165, file: !1023, line: 13, baseType: !1027, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1162, file: !1023, line: 28, baseType: !1027, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1116, file: !52, line: 166, baseType: !1170, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!1106}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1116, file: !52, line: 167, baseType: !1106, size: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1098, file: !52, line: 123, baseType: !335, size: 8, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1098, file: !52, line: 124, baseType: !335, size: 8, offset: 456)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1098, file: !52, line: 125, baseType: !335, size: 8, offset: 464)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1098, file: !52, line: 126, baseType: !335, size: 8, offset: 472)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1082, file: !965, line: 671, baseType: !1098, size: 512, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1082, file: !965, line: 679, baseType: !1180, size: 64, offset: 1728)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !964, file: !965, line: 800, baseType: !1182, size: 64, offset: 5248)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !965, line: 800, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !964, file: !965, line: 809, baseType: !1186, size: 64, offset: 5312)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !965, line: 70, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !964, file: !965, line: 825, baseType: !1189, size: 2048, align: 512, offset: 5632)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !965, line: 509, size: 2048, align: 512, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1189, file: !965, line: 511, baseType: !1030, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1189, file: !965, line: 512, baseType: !1030, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1189, file: !965, line: 513, baseType: !1030, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1189, file: !965, line: 514, baseType: !1030, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1189, file: !965, line: 515, baseType: !1030, size: 64, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1189, file: !965, line: 516, baseType: !1030, size: 64, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1189, file: !965, line: 518, baseType: !1030, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1189, file: !965, line: 519, baseType: !1030, size: 64, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1189, file: !965, line: 520, baseType: !1041, size: 64, offset: 512)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1189, file: !965, line: 522, baseType: !1030, size: 64, offset: 576)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1189, file: !965, line: 523, baseType: !1030, size: 64, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1189, file: !965, line: 524, baseType: !1041, size: 64, offset: 704)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1189, file: !965, line: 526, baseType: !1041, size: 64, offset: 768)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1189, file: !965, line: 527, baseType: !1030, size: 64, offset: 832)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1189, file: !965, line: 529, baseType: !1030, size: 64, offset: 896)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1189, file: !965, line: 530, baseType: !1030, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1189, file: !965, line: 531, baseType: !1030, size: 64, offset: 1024)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1189, file: !965, line: 532, baseType: !1030, size: 64, offset: 1088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1189, file: !965, line: 533, baseType: !1030, size: 64, offset: 1152)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1189, file: !965, line: 535, baseType: !1030, size: 64, offset: 1216)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1189, file: !965, line: 536, baseType: !1030, size: 64, offset: 1280)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1189, file: !965, line: 537, baseType: !1030, size: 64, offset: 1344)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1189, file: !965, line: 538, baseType: !1030, size: 64, offset: 1408)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1189, file: !965, line: 539, baseType: !1030, size: 64, offset: 1472)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1189, file: !965, line: 540, baseType: !1030, size: 64, offset: 1536)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1189, file: !965, line: 541, baseType: !1030, size: 64, offset: 1600)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1189, file: !965, line: 542, baseType: !1030, size: 64, offset: 1664)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1189, file: !965, line: 543, baseType: !1030, size: 64, offset: 1728)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !964, file: !965, line: 833, baseType: !7, size: 32, offset: 7680)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !964, file: !965, line: 836, baseType: !7, size: 32, offset: 7712)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !964, file: !965, line: 837, baseType: !161, size: 32, offset: 7744)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !964, file: !965, line: 838, baseType: !1223, size: 64, offset: 7808)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !129, line: 19, baseType: !131)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !964, file: !965, line: 839, baseType: !1227, size: 64, offset: 7872)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !964, file: !965, line: 840, baseType: !1225, size: 64, offset: 7936)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !964, file: !965, line: 841, baseType: !83, size: 64, offset: 8000)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !964, file: !965, line: 843, baseType: !344, size: 16, offset: 8064)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !964, file: !965, line: 845, baseType: !344, size: 16, offset: 8080)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !964, file: !965, line: 848, baseType: !161, size: 32, offset: 8096)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !964, file: !965, line: 849, baseType: !1234, size: 32, offset: 8128)
!1234 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !965, line: 718, size: 32, elements: !1235)
!1235 = !{!1236, !1243}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1234, file: !965, line: 724, baseType: !1237, size: 32)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !965, line: 719, size: 32, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1237, file: !965, line: 720, baseType: !335, size: 8)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1237, file: !965, line: 721, baseType: !335, size: 8, offset: 8)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1237, file: !965, line: 722, baseType: !335, size: 8, offset: 16)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1237, file: !965, line: 723, baseType: !335, size: 8, offset: 24)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1234, file: !965, line: 725, baseType: !110, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !964, file: !965, line: 850, baseType: !301, size: 128, offset: 8192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !964, file: !965, line: 851, baseType: !1246, size: 64, offset: 8320)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !965, line: 60, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !964, file: !965, line: 855, baseType: !116, size: 64, offset: 8384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !964, file: !965, line: 856, baseType: !335, size: 8, offset: 8448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !964, file: !965, line: 857, baseType: !335, size: 8, offset: 8456)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !964, file: !965, line: 858, baseType: !161, size: 32, offset: 8480)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !964, file: !965, line: 859, baseType: !301, size: 128, offset: 8512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !964, file: !965, line: 860, baseType: !161, size: 32, offset: 8640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !964, file: !965, line: 861, baseType: !301, size: 128, offset: 8704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !964, file: !965, line: 873, baseType: !1256, size: 256, offset: 8832)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !965, line: 376, size: 256, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1256, file: !965, line: 381, baseType: !116, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1256, file: !965, line: 384, baseType: !1032, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1256, file: !965, line: 389, baseType: !1032, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1256, file: !965, line: 392, baseType: !1032, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !964, file: !965, line: 875, baseType: !301, size: 128, offset: 9088)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !964, file: !965, line: 877, baseType: !1264, size: 320, offset: 9216)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1265, line: 86, size: 320, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1264, file: !1265, line: 87, baseType: !161, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1264, file: !1265, line: 88, baseType: !301, size: 128, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1264, file: !1265, line: 89, baseType: !301, size: 128, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !964, file: !965, line: 878, baseType: !1022, size: 192, align: 64, offset: 9536)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !964, file: !965, line: 881, baseType: !1272, size: 64, offset: 9728)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1274, line: 733, size: 10240, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1275 = !{!1276, !1490}
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1274, line: 734, baseType: !1277, size: 10240)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1273, file: !1274, line: 734, size: 10240, elements: !1278)
!1278 = !{!1279, !1283, !1304, !1311, !1312, !1313, !1314, !1315, !1316, !1324, !1325, !1326, !1332, !1333, !1340, !1341, !1342, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1383, !1397, !1400, !1456, !1457, !1458, !1461, !1465, !1466, !1469, !1470, !1471, !1477, !1478}
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !1274, line: 739, baseType: !1280, size: 512, align: 512)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1277, file: !1274, line: 739, size: 512, align: 512, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1280, file: !1274, line: 747, baseType: !327, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1277, file: !1274, line: 750, baseType: !1284, size: 128, offset: 512)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1285, line: 218, size: 128, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1286 = !{!1287, !1302, !1303}
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1285, line: 219, baseType: !1288, size: 32)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1284, file: !1285, line: 219, size: 32, elements: !1289)
!1289 = !{!1290, !1299}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1288, file: !1285, line: 220, baseType: !1291, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1292, line: 29, baseType: !1293)
!1292 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1292, line: 17, size: 32, elements: !1294)
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !1292, line: 18, baseType: !1296, size: 32)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !1292, line: 18, size: 32, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1296, file: !1292, line: 19, baseType: !316, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1288, file: !1285, line: 221, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1285, line: 197, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1285, line: 197, elements: !807)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1284, file: !1285, line: 223, baseType: !7, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1284, file: !1285, line: 224, baseType: !83, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1277, file: !1274, line: 752, baseType: !1305, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!116, !1308, !116, !116, !116, !116}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1310, line: 537, flags: DIFlagFwdDecl)
!1310 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1277, file: !1274, line: 756, baseType: !116, size: 64, offset: 704)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1277, file: !1274, line: 757, baseType: !116, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1277, file: !1274, line: 760, baseType: !116, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1277, file: !1274, line: 761, baseType: !116, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1277, file: !1274, line: 763, baseType: !116, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1277, file: !1274, line: 764, baseType: !1317, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1310, line: 299, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1310, line: 299, size: 64, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1319, file: !1310, line: 299, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1323, line: 18, baseType: !116)
!1323 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1277, file: !1274, line: 773, baseType: !327, size: 32, offset: 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1277, file: !1274, line: 785, baseType: !327, size: 32, offset: 1120)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1277, file: !1274, line: 795, baseType: !1327, size: 64, offset: 1152)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1274, line: 726, size: 128, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1328, file: !1274, line: 727, baseType: !1030, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1328, file: !1274, line: 728, baseType: !161, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1277, file: !1274, line: 801, baseType: !116, size: 64, offset: 1216)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1277, file: !1274, line: 804, baseType: !1334, size: 64, offset: 1280)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1335, line: 13, baseType: !1336)
!1335 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !165, line: 181, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 179, size: 64, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1337, file: !165, line: 180, baseType: !1041, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1277, file: !1274, line: 806, baseType: !161, size: 32, offset: 1344)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1277, file: !1274, line: 808, baseType: !1291, size: 32, offset: 1376)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1277, file: !1274, line: 823, baseType: !1343, size: 320, offset: 1408)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1344, line: 48, size: 320, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1345 = !{!1346, !1347, !1348, !1353, !1354}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1343, file: !1344, line: 49, baseType: !1334, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1343, file: !1344, line: 55, baseType: !1334, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1343, file: !1344, line: 57, baseType: !1349, size: 32, offset: 128)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1350, line: 15, size: 32, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1349, file: !1350, line: 20, baseType: !327, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1343, file: !1344, line: 59, baseType: !314, size: 32, offset: 160)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1343, file: !1344, line: 60, baseType: !301, size: 128, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1277, file: !1274, line: 825, baseType: !301, size: 128, offset: 1728)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1277, file: !1274, line: 845, baseType: !161, size: 32, offset: 1856)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1277, file: !1274, line: 849, baseType: !116, size: 64, offset: 1920)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1277, file: !1274, line: 850, baseType: !116, size: 64, offset: 1984)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1277, file: !1274, line: 852, baseType: !116, size: 64, offset: 2048)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1277, file: !1274, line: 853, baseType: !116, size: 64, offset: 2112)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1277, file: !1274, line: 854, baseType: !1336, size: 64, offset: 2176)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1277, file: !1274, line: 855, baseType: !116, size: 64, offset: 2240)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1277, file: !1274, line: 856, baseType: !116, size: 64, offset: 2304)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1277, file: !1274, line: 857, baseType: !116, size: 64, offset: 2368)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1277, file: !1274, line: 858, baseType: !116, size: 64, offset: 2432)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1277, file: !1274, line: 865, baseType: !1153, size: 32, offset: 2496)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1277, file: !1274, line: 867, baseType: !1291, size: 32, offset: 2528)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1277, file: !1274, line: 869, baseType: !116, size: 64, offset: 2560)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1277, file: !1274, line: 869, baseType: !116, size: 64, offset: 2624)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1277, file: !1274, line: 869, baseType: !116, size: 64, offset: 2688)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1277, file: !1274, line: 869, baseType: !116, size: 64, offset: 2752)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1277, file: !1274, line: 870, baseType: !116, size: 64, offset: 2816)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1277, file: !1274, line: 870, baseType: !116, size: 64, offset: 2880)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1277, file: !1274, line: 870, baseType: !116, size: 64, offset: 2944)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1277, file: !1274, line: 871, baseType: !116, size: 64, offset: 3008)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1277, file: !1274, line: 871, baseType: !116, size: 64, offset: 3072)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1277, file: !1274, line: 871, baseType: !116, size: 64, offset: 3136)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1277, file: !1274, line: 871, baseType: !116, size: 64, offset: 3200)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1277, file: !1274, line: 873, baseType: !1380, size: 3328, offset: 3264)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 3328, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 52)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1277, file: !1274, line: 875, baseType: !1384, size: 1280, offset: 6592)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 1280, elements: !1395)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1386, line: 22, size: 320, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1386, line: 23, baseType: !314, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1385, file: !1386, line: 24, baseType: !1041, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1385, file: !1386, line: 26, baseType: !301, size: 128, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1385, file: !1386, line: 28, baseType: !1392, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !111, line: 20, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !113, line: 26, baseType: !161)
!1395 = !{!1396}
!1396 = !DISubrange(count: 4)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1277, file: !1274, line: 877, baseType: !1398, size: 64, offset: 7872)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1274, line: 877, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1277, file: !1274, line: 880, baseType: !1401, size: 1088, offset: 7936)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1402, line: 72, baseType: !1403)
!1402 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1402, line: 23, size: 1088, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1412, !1413, !1421, !1422, !1450, !1451, !1452}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1403, file: !1402, line: 28, baseType: !1030, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1403, file: !1402, line: 38, baseType: !1336, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1403, file: !1402, line: 40, baseType: !116, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1403, file: !1402, line: 43, baseType: !1343, size: 320, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1403, file: !1402, line: 44, baseType: !1410, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1402, line: 44, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1403, file: !1402, line: 48, baseType: !116, size: 64, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1403, file: !1402, line: 59, baseType: !1414, size: 256, offset: 640)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1415, line: 66, size: 256, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1416 = !{!1417, !1418, !1419, !1420}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1414, file: !1415, line: 67, baseType: !1334, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1414, file: !1415, line: 68, baseType: !314, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1414, file: !1415, line: 70, baseType: !1349, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1414, file: !1415, line: 72, baseType: !301, size: 128, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1403, file: !1402, line: 60, baseType: !83, size: 64, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1403, file: !1402, line: 61, baseType: !1423, size: 64, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1426, line: 13, size: 1216, elements: !1427)
!1426 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1437, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1425, file: !1426, line: 14, baseType: !83, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1425, file: !1426, line: 15, baseType: !116, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1425, file: !1426, line: 17, baseType: !116, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1425, file: !1426, line: 17, baseType: !116, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1425, file: !1426, line: 18, baseType: !116, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1425, file: !1426, line: 18, baseType: !116, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1425, file: !1426, line: 19, baseType: !1435, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1425, file: !1426, line: 21, baseType: !1438, size: 64, offset: 448)
!1438 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1425, file: !1426, line: 23, baseType: !1438, size: 64, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1425, file: !1426, line: 24, baseType: !1438, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1425, file: !1426, line: 25, baseType: !1438, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1425, file: !1426, line: 26, baseType: !1438, size: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1425, file: !1426, line: 27, baseType: !1438, size: 64, offset: 768)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1425, file: !1426, line: 28, baseType: !1438, size: 64, offset: 832)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1425, file: !1426, line: 29, baseType: !1438, size: 64, offset: 896)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1425, file: !1426, line: 30, baseType: !1438, size: 64, offset: 960)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1425, file: !1426, line: 31, baseType: !1438, size: 64, offset: 1024)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1425, file: !1426, line: 32, baseType: !1438, size: 64, offset: 1088)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1425, file: !1426, line: 33, baseType: !1438, size: 64, offset: 1152)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1403, file: !1402, line: 63, baseType: !327, size: 32, offset: 1024)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1403, file: !1402, line: 69, baseType: !342, size: 16, offset: 1056)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1403, file: !1402, line: 70, baseType: !1453, size: 16, offset: 1072)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !111, line: 18, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !113, line: 23, baseType: !1455)
!1455 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1274, line: 882, baseType: !116, size: 64, offset: 9024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1277, file: !1274, line: 885, baseType: !1291, size: 32, offset: 9088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1277, file: !1274, line: 886, baseType: !1459, size: 64, offset: 9152)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1274, line: 732, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1277, file: !1274, line: 901, baseType: !1462, size: 64, offset: 9216)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1464, line: 18, flags: DIFlagFwdDecl)
!1464 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1277, file: !1274, line: 904, baseType: !1308, size: 64, offset: 9280)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1277, file: !1274, line: 906, baseType: !1467, size: 64, offset: 9344)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1274, line: 906, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1277, file: !1274, line: 930, baseType: !327, size: 32, offset: 9408)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1277, file: !1274, line: 933, baseType: !327, size: 32, offset: 9440)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1277, file: !1274, line: 935, baseType: !1472, size: 64, offset: 9472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !63, line: 103, size: 64, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1472, file: !63, line: 104, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !63, line: 101, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1277, file: !1274, line: 940, baseType: !1334, size: 64, offset: 9536)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1277, file: !1274, line: 942, baseType: !1479, size: 256, offset: 9600)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1480, line: 98, size: 256, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1479, file: !1480, line: 99, baseType: !1334, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1479, file: !1480, line: 100, baseType: !301, size: 128, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1479, file: !1480, line: 101, baseType: !1485, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1480, line: 21, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1273, file: !1274, line: 986, baseType: !1491, offset: 10240)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: -1)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !964, file: !965, line: 882, baseType: !1272, size: 64, offset: 9792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !964, file: !965, line: 884, baseType: !161, size: 32, offset: 9856)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !964, file: !965, line: 885, baseType: !161, size: 32, offset: 9888)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !964, file: !965, line: 886, baseType: !161, size: 32, offset: 9920)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !964, file: !965, line: 888, baseType: !161, size: 32, offset: 9952)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !964, file: !965, line: 890, baseType: !116, size: 64, offset: 9984)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !964, file: !965, line: 893, baseType: !7, size: 32, offset: 10048)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !964, file: !965, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !964, file: !965, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !964, file: !965, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !964, file: !965, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !964, file: !965, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !964, file: !965, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !964, file: !965, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !964, file: !965, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !964, file: !965, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !964, file: !965, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !964, file: !965, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !964, file: !965, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !964, file: !965, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !964, file: !965, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !964, file: !965, line: 969, baseType: !116, size: 64, offset: 10176)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !964, file: !965, line: 971, baseType: !1517, size: 448, offset: 10240)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !57, line: 25, size: 448, elements: !1518)
!1518 = !{!1519, !1520, !1525}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1517, file: !57, line: 26, baseType: !116, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1517, file: !57, line: 27, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1438, !1524}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !57, line: 28, baseType: !1526, size: 320, offset: 128)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1517, file: !57, line: 28, size: 320, elements: !1527)
!1527 = !{!1528, !1538, !1563}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1526, file: !57, line: 37, baseType: !1529, size: 320)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !57, line: 30, size: 320, elements: !1530)
!1530 = !{!1531, !1533, !1534, !1535, !1536, !1537}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1529, file: !57, line: 31, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1529, file: !57, line: 32, baseType: !110, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !57, line: 33, baseType: !110, size: 32, offset: 96)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1529, file: !57, line: 34, baseType: !110, size: 32, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1529, file: !57, line: 35, baseType: !1030, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1529, file: !57, line: 36, baseType: !1532, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1526, file: !57, line: 47, baseType: !1539, size: 192)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !57, line: 39, size: 192, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1562}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1539, file: !57, line: 40, baseType: !1145, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1539, file: !57, line: 41, baseType: !56, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !57, line: 42, baseType: !1544, size: 64, offset: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !57, line: 42, size: 64, elements: !1545)
!1545 = !{!1546, !1554}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1544, file: !57, line: 43, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1549, line: 7, size: 128, elements: !1550)
!1549 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1550 = !{!1551, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1548, file: !1549, line: 8, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !598, line: 93, baseType: !1043)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1548, file: !1549, line: 9, baseType: !1043, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1544, file: !57, line: 44, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1557, line: 7, size: 64, elements: !1558)
!1557 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1558 = !{!1559, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1556, file: !1557, line: 8, baseType: !1560, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1557, line: 5, baseType: !1393)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1556, file: !1557, line: 9, baseType: !1393, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1539, file: !57, line: 46, baseType: !1030, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1526, file: !57, line: 55, baseType: !1564, size: 256)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !57, line: 49, size: 256, elements: !1565)
!1565 = !{!1566, !1569, !1570, !1571, !1572}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1564, file: !57, line: 50, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !57, line: 14, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1564, file: !57, line: 51, baseType: !161, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1564, file: !57, line: 52, baseType: !161, size: 32, offset: 96)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1564, file: !57, line: 53, baseType: !116, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1564, file: !57, line: 54, baseType: !116, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !964, file: !965, line: 973, baseType: !1574, size: 32, offset: 10688)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !165, line: 27, baseType: !1575)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !598, line: 28, baseType: !161)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !964, file: !965, line: 974, baseType: !1574, size: 32, offset: 10720)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !964, file: !965, line: 978, baseType: !116, size: 64, offset: 10752)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !964, file: !965, line: 987, baseType: !963, size: 64, offset: 10816)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !964, file: !965, line: 990, baseType: !963, size: 64, offset: 10880)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !964, file: !965, line: 995, baseType: !301, size: 128, offset: 10944)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !964, file: !965, line: 996, baseType: !301, size: 128, offset: 11072)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !964, file: !965, line: 997, baseType: !963, size: 64, offset: 11200)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !964, file: !965, line: 1005, baseType: !301, size: 128, offset: 11264)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !964, file: !965, line: 1006, baseType: !301, size: 128, offset: 11392)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !964, file: !965, line: 1009, baseType: !1586, size: 64, offset: 11520)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1588, line: 59, size: 768, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1589 = !{!1590, !1591, !1592, !1593, !1604, !1605, !1612, !1621}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1587, file: !1588, line: 61, baseType: !978, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1587, file: !1588, line: 62, baseType: !7, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1587, file: !1588, line: 63, baseType: !1291, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1587, file: !1588, line: 65, baseType: !1594, size: 256, offset: 128)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1595, size: 256, elements: !1395)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !165, line: 194, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1595, file: !165, line: 195, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !165, line: 198, size: 128, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1599, file: !165, line: 199, baseType: !1598, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1599, file: !165, line: 199, baseType: !1603, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1587, file: !1588, line: 66, baseType: !1595, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1587, file: !1588, line: 68, baseType: !1606, size: 192, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1607, line: 41, baseType: !1608)
!1607 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1607, line: 37, size: 192, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1608, file: !1607, line: 38, baseType: !1291, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1608, file: !1607, line: 39, baseType: !301, size: 128, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1587, file: !1588, line: 69, baseType: !1613, size: 128, align: 64, offset: 640)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !165, line: 232, size: 128, align: 64, elements: !1614)
!1614 = !{!1615, !1617}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1613, file: !165, line: 233, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1613, file: !165, line: 234, baseType: !1618, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !1616}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1587, file: !1588, line: 70, baseType: !1622, offset: 768)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1623, elements: !1492)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1588, line: 54, size: 128, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1623, file: !1588, line: 55, baseType: !161, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1623, file: !1588, line: 56, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1588, line: 56, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !964, file: !965, line: 1010, baseType: !1630, size: 512, offset: 11584)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1599, size: 512, elements: !1395)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !964, file: !965, line: 1011, baseType: !301, size: 128, offset: 12096)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !964, file: !965, line: 1012, baseType: !301, size: 128, offset: 12224)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !964, file: !965, line: 1014, baseType: !1634, size: 64, offset: 12352)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1636, line: 26, size: 256, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1635, file: !1636, line: 27, baseType: !7, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1635, file: !1636, line: 28, baseType: !1640, size: 192, offset: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1641, line: 43, size: 192, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1640, file: !1641, line: 44, baseType: !314, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1640, file: !1641, line: 45, baseType: !301, size: 128, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !964, file: !965, line: 1017, baseType: !1646, size: 64, offset: 12416)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !964, file: !965, line: 1020, baseType: !1646, size: 64, offset: 12480)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !964, file: !965, line: 1023, baseType: !83, size: 64, offset: 12544)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !964, file: !965, line: 1025, baseType: !1030, size: 64, offset: 12608)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !964, file: !965, line: 1026, baseType: !1030, size: 64, offset: 12672)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !964, file: !965, line: 1031, baseType: !1030, size: 64, offset: 12736)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !964, file: !965, line: 1032, baseType: !1653, size: 192, offset: 12800)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !965, line: 324, size: 192, elements: !1654)
!1654 = !{!1655, !1656, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1653, file: !965, line: 326, baseType: !1030, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1653, file: !965, line: 327, baseType: !1030, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1653, file: !965, line: 328, baseType: !314, size: 32, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !964, file: !965, line: 1041, baseType: !116, size: 64, offset: 12992)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !964, file: !965, line: 1042, baseType: !116, size: 64, offset: 13056)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !964, file: !965, line: 1045, baseType: !1030, size: 64, offset: 13120)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !964, file: !965, line: 1048, baseType: !1030, size: 64, offset: 13184)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !964, file: !965, line: 1051, baseType: !116, size: 64, offset: 13248)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !964, file: !965, line: 1052, baseType: !116, size: 64, offset: 13312)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !964, file: !965, line: 1055, baseType: !1665, size: 640, offset: 13376)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1666, line: 132, size: 640, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1667 = !{!1668, !1676, !1677}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1665, file: !1666, line: 133, baseType: !1669, size: 576)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, size: 576, elements: !1674)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1666, line: 117, size: 192, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1670, file: !1666, line: 118, baseType: !1030, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1670, file: !1666, line: 119, baseType: !1159, size: 128, offset: 64)
!1674 = !{!1675}
!1675 = !DISubrange(count: 3)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1665, file: !1666, line: 134, baseType: !7, size: 32, offset: 576)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1665, file: !1666, line: 135, baseType: !7, size: 32, offset: 608)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !964, file: !965, line: 1058, baseType: !1679, size: 448, offset: 14016)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1666, line: 144, size: 448, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1679, file: !1666, line: 145, baseType: !1613, size: 128, align: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1679, file: !1666, line: 146, baseType: !1414, size: 256, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1679, file: !1666, line: 147, baseType: !7, size: 32, offset: 384)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !964, file: !965, line: 1064, baseType: !1685, size: 64, offset: 14464)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !965, line: 1064, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !964, file: !965, line: 1067, baseType: !1685, size: 64, offset: 14528)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !964, file: !965, line: 1070, baseType: !1685, size: 64, offset: 14592)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !964, file: !965, line: 1074, baseType: !1691, size: 64, offset: 14656)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !965, line: 1074, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !964, file: !965, line: 1084, baseType: !1694, size: 128, offset: 14720)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !1695)
!1695 = !{!1696}
!1696 = !DISubrange(count: 16)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !964, file: !965, line: 1086, baseType: !1698, size: 64, offset: 14848)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !965, line: 55, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !964, file: !965, line: 1089, baseType: !1701, size: 64, offset: 14912)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1702, line: 12, size: 64, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1701, file: !1702, line: 13, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1702, line: 8, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !964, file: !965, line: 1090, baseType: !1708, size: 128, offset: 14976)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1709, line: 13, size: 128, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1710 = !{!1711}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1708, file: !1709, line: 14, baseType: !301, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !964, file: !965, line: 1097, baseType: !1713, size: 64, offset: 15104)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !965, line: 50, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !964, file: !965, line: 1100, baseType: !1716, size: 64, offset: 15168)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !965, line: 1100, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !964, file: !965, line: 1103, baseType: !1719, size: 64, offset: 15232)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !965, line: 53, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !964, file: !965, line: 1107, baseType: !1722, size: 64, offset: 15296)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !965, line: 56, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !964, file: !965, line: 1110, baseType: !1725, size: 64, offset: 15360)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1666, line: 236, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !964, file: !965, line: 1111, baseType: !1728, size: 64, offset: 15424)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !965, line: 67, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !964, file: !965, line: 1112, baseType: !1731, size: 64, offset: 15488)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1732, line: 25, baseType: !1733)
!1732 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1732, line: 23, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1733, file: !1732, line: 24, baseType: !134, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !964, file: !965, line: 1113, baseType: !1731, size: 64, offset: 15552)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !964, file: !965, line: 1115, baseType: !1731, size: 64, offset: 15616)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !964, file: !965, line: 1116, baseType: !1739, size: 192, offset: 15680)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1740, line: 32, size: 192, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1739, file: !1740, line: 33, baseType: !301, size: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1739, file: !1740, line: 34, baseType: !1731, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !964, file: !965, line: 1117, baseType: !116, size: 64, offset: 15872)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !964, file: !965, line: 1118, baseType: !596, size: 64, offset: 15936)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !964, file: !965, line: 1119, baseType: !7, size: 32, offset: 16000)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !964, file: !965, line: 1121, baseType: !1616, size: 64, offset: 16064)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !964, file: !965, line: 1125, baseType: !1749, size: 64, offset: 16128)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !965, line: 43, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !964, file: !965, line: 1127, baseType: !1752, size: 32, offset: 16192)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1464, line: 23, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1464, line: 21, size: 32, elements: !1754)
!1754 = !{!1755}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1753, file: !1464, line: 22, baseType: !1756, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !165, line: 37, baseType: !1757)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !598, line: 49, baseType: !7)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !964, file: !965, line: 1128, baseType: !7, size: 32, offset: 16224)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !964, file: !965, line: 1130, baseType: !1760, size: 128, offset: 16256)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1761, line: 37, size: 128, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1762 = !{!1763, !1764, !1765}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1760, file: !1761, line: 38, baseType: !161, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1760, file: !1761, line: 39, baseType: !327, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1760, file: !1761, line: 40, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1761, line: 24, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !964, file: !965, line: 1131, baseType: !1769, size: 256, offset: 16384)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1770, line: 12, size: 256, elements: !1771)
!1770 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1771 = !{!1772, !1774, !1775, !1776}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1769, file: !1770, line: 13, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1769, file: !1770, line: 14, baseType: !116, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1769, file: !1770, line: 15, baseType: !116, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1769, file: !1770, line: 16, baseType: !164, size: 8, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !964, file: !965, line: 1134, baseType: !1030, size: 64, offset: 16640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !964, file: !965, line: 1135, baseType: !1030, size: 64, offset: 16704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !964, file: !965, line: 1138, baseType: !1291, size: 32, offset: 16768)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !964, file: !965, line: 1141, baseType: !314, size: 32, offset: 16800)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !964, file: !965, line: 1143, baseType: !1782, size: 64, offset: 16832)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !965, line: 735, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1782, file: !965, line: 736, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !964, file: !965, line: 1147, baseType: !1162, size: 128, offset: 16896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !964, file: !965, line: 1149, baseType: !963, size: 64, offset: 17024)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !964, file: !965, line: 1151, baseType: !1789, size: 64, offset: 17088)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !965, line: 1151, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !964, file: !965, line: 1188, baseType: !83, size: 64, offset: 17152)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !964, file: !965, line: 1191, baseType: !1793, size: 64, offset: 17216)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !965, line: 44, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !964, file: !965, line: 1194, baseType: !1796, size: 64, offset: 17280)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !965, line: 45, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !964, file: !965, line: 1197, baseType: !1799, size: 64, offset: 17344)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !965, line: 61, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !964, file: !965, line: 1199, baseType: !1802, size: 64, offset: 17408)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !965, line: 52, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !964, file: !965, line: 1202, baseType: !1805, size: 64, offset: 17472)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !965, line: 48, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !964, file: !965, line: 1205, baseType: !116, size: 64, offset: 17536)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !964, file: !965, line: 1206, baseType: !1809, size: 64, offset: 17600)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1740, line: 14, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1740, line: 12, size: 384, elements: !1812)
!1812 = !{!1813}
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1740, line: 13, baseType: !1814, size: 384)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1811, file: !1740, line: 13, size: 384, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1819}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1814, file: !1740, line: 13, baseType: !161, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1814, file: !1740, line: 13, baseType: !161, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1814, file: !1740, line: 13, baseType: !161, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1814, file: !1740, line: 13, baseType: !1820, size: 256, offset: 128)
!1820 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1821, line: 37, size: 256, elements: !1822)
!1821 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1822 = !{!1823, !1828, !1841, !1847, !1857, !1884, !1889}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1820, file: !1821, line: 42, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !1821, line: 39, size: 64, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1824, file: !1821, line: 40, baseType: !1575, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1824, file: !1821, line: 41, baseType: !1757, size: 32, offset: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1820, file: !1821, line: 50, baseType: !1829, size: 192)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !1821, line: 45, size: 192, elements: !1830)
!1830 = !{!1831, !1833, !1834, !1840}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1829, file: !1821, line: 46, baseType: !1832, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !598, line: 95, baseType: !161)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1829, file: !1821, line: 47, baseType: !161, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1829, file: !1821, line: 48, baseType: !1835, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1821, line: 11, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1821, line: 8, size: 64, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1836, file: !1821, line: 9, baseType: !161, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1836, file: !1821, line: 10, baseType: !83, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1829, file: !1821, line: 49, baseType: !161, size: 32, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1820, file: !1821, line: 57, baseType: !1842, size: 128)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !1821, line: 53, size: 128, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1842, file: !1821, line: 54, baseType: !1575, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1842, file: !1821, line: 55, baseType: !1757, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1842, file: !1821, line: 56, baseType: !1835, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1820, file: !1821, line: 66, baseType: !1848, size: 256)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !1821, line: 60, size: 256, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1853, !1856}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1848, file: !1821, line: 61, baseType: !1575, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1848, file: !1821, line: 62, baseType: !1757, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1848, file: !1821, line: 63, baseType: !161, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1848, file: !1821, line: 64, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !598, line: 94, baseType: !1855)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !598, line: 15, baseType: !1438)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1848, file: !1821, line: 65, baseType: !1854, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1820, file: !1821, line: 105, baseType: !1858, size: 256)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !1821, line: 69, size: 256, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1858, file: !1821, line: 70, baseType: !83, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1821, line: 79, baseType: !1862, size: 192, offset: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1821, line: 79, size: 192, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1873, !1878}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1862, file: !1821, line: 81, baseType: !161, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1862, file: !1821, line: 86, baseType: !1455, size: 16)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1862, file: !1821, line: 92, baseType: !1867, size: 192)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !1821, line: 88, size: 192, elements: !1868)
!1868 = !{!1869, !1871, !1872}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1867, file: !1821, line: 89, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !1141)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1867, file: !1821, line: 90, baseType: !83, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1867, file: !1821, line: 91, baseType: !83, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1862, file: !1821, line: 97, baseType: !1874, size: 96)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !1821, line: 94, size: 96, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1874, file: !1821, line: 95, baseType: !1870, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1874, file: !1821, line: 96, baseType: !112, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1862, file: !1821, line: 103, baseType: !1879, size: 128)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !1821, line: 99, size: 128, elements: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1879, file: !1821, line: 100, baseType: !116, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1879, file: !1821, line: 101, baseType: !112, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1879, file: !1821, line: 102, baseType: !112, size: 32, offset: 96)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1820, file: !1821, line: 111, baseType: !1885, size: 128)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !1821, line: 108, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1885, file: !1821, line: 109, baseType: !1438, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1885, file: !1821, line: 110, baseType: !161, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1820, file: !1821, line: 118, baseType: !1890, size: 128)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !1821, line: 114, size: 128, elements: !1891)
!1891 = !{!1892, !1893, !1894}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1890, file: !1821, line: 115, baseType: !83, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1890, file: !1821, line: 116, baseType: !161, size: 32, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1890, file: !1821, line: 117, baseType: !7, size: 32, offset: 96)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !964, file: !965, line: 1208, baseType: !1896, size: 448, offset: 17664)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1897, line: 12, size: 448, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1896, file: !1897, line: 15, baseType: !1030, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1896, file: !1897, line: 17, baseType: !1030, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1896, file: !1897, line: 19, baseType: !1030, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1896, file: !1897, line: 21, baseType: !1030, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1896, file: !1897, line: 29, baseType: !1030, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1896, file: !1897, line: 35, baseType: !1030, size: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1896, file: !1897, line: 44, baseType: !1030, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !964, file: !965, line: 1215, baseType: !1030, size: 64, offset: 18112)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !964, file: !965, line: 1217, baseType: !1030, size: 64, offset: 18176)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !964, file: !965, line: 1219, baseType: !1030, size: 64, offset: 18240)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !964, file: !965, line: 1223, baseType: !1910, size: 64, offset: 18304)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1911, line: 99, baseType: !1912)
!1911 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1911, line: 99, size: 64, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1912, file: !1911, line: 99, baseType: !134, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !964, file: !965, line: 1225, baseType: !1916, size: 32, offset: 18368)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1149, line: 275, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1149, line: 275, size: 32, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1917, file: !1149, line: 275, baseType: !1153, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !964, file: !965, line: 1226, baseType: !161, size: 32, offset: 18400)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !964, file: !965, line: 1227, baseType: !161, size: 32, offset: 18432)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !964, file: !965, line: 1231, baseType: !1923, size: 64, offset: 18496)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !965, line: 1231, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !964, file: !965, line: 1233, baseType: !301, size: 128, offset: 18560)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !964, file: !965, line: 1240, baseType: !1927, size: 64, offset: 18688)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !965, line: 62, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !964, file: !965, line: 1242, baseType: !1930, size: 64, offset: 18752)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !965, line: 1242, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !964, file: !965, line: 1244, baseType: !301, size: 128, offset: 18816)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !964, file: !965, line: 1245, baseType: !1934, size: 64, offset: 18944)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !965, line: 51, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !964, file: !965, line: 1246, baseType: !1414, size: 256, offset: 19008)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !964, file: !965, line: 1247, baseType: !7, size: 32, offset: 19264)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !964, file: !965, line: 1250, baseType: !1939, size: 64, offset: 19328)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !965, line: 57, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !964, file: !965, line: 1251, baseType: !1414, size: 256, offset: 19392)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !964, file: !965, line: 1252, baseType: !301, size: 128, offset: 19648)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !964, file: !965, line: 1259, baseType: !1944, size: 64, offset: 19776)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !965, line: 54, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !964, file: !965, line: 1260, baseType: !1455, size: 16, offset: 19840)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !964, file: !965, line: 1261, baseType: !1455, size: 16, offset: 19856)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !964, file: !965, line: 1314, baseType: !1949, size: 64, offset: 19904)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1951, line: 62, size: 256, align: 256, elements: !1952)
!1951 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1950, file: !1951, line: 75, baseType: !112, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1950, file: !1951, line: 90, baseType: !112, size: 32, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1950, file: !1951, line: 112, baseType: !1031, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1950, file: !1951, line: 132, baseType: !112, size: 32, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1950, file: !1951, line: 140, baseType: !112, size: 32, offset: 160)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1950, file: !1951, line: 149, baseType: !112, size: 32, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1950, file: !1951, line: 154, baseType: !1960, offset: 224)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, elements: !1492)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !964, file: !965, line: 1315, baseType: !110, size: 32, offset: 19968)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !964, file: !965, line: 1316, baseType: !110, size: 32, offset: 20000)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !964, file: !965, line: 1321, baseType: !116, size: 64, offset: 20032)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !964, file: !965, line: 1325, baseType: !161, size: 32, offset: 20096)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !964, file: !965, line: 1326, baseType: !161, size: 32, offset: 20128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !964, file: !965, line: 1327, baseType: !161, size: 32, offset: 20160)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !964, file: !965, line: 1328, baseType: !161, size: 32, offset: 20192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !964, file: !965, line: 1329, baseType: !1613, size: 128, align: 64, offset: 20224)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !964, file: !965, line: 1332, baseType: !1970, size: 128, offset: 20352)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1971, line: 51, size: 128, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1972 = !{!1973, !1978, !1979}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1970, file: !1971, line: 60, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1975, line: 7, size: 64, elements: !1976)
!1975 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1976 = !{!1977}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1974, file: !1975, line: 12, baseType: !131, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1970, file: !1971, line: 63, baseType: !164, size: 8, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1970, file: !1971, line: 70, baseType: !164, size: 8, offset: 72)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !964, file: !965, line: 1335, baseType: !1981, size: 64, offset: 20480)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !965, line: 59, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !964, file: !965, line: 1337, baseType: !1984, size: 128, offset: 20544)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1971, line: 39, size: 128, elements: !1985)
!1985 = !{!1986, !2050, !2051}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1984, file: !1971, line: 40, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1274, line: 74, size: 512, align: 128, elements: !1989)
!1989 = !{!1990, !1991, !2044, !2049}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1988, file: !1274, line: 75, baseType: !116, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !1274, line: 83, baseType: !1992, size: 320, offset: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1988, file: !1274, line: 83, size: 320, elements: !1993)
!1993 = !{!1994, !2018, !2032, !2036, !2043}
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !1274, line: 84, baseType: !1995, size: 320)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1274, line: 84, size: 320, elements: !1996)
!1996 = !{!1997, !2008, !2012, !2017}
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1274, line: 90, baseType: !1998, size: 128)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1274, line: 90, size: 128, elements: !1999)
!1999 = !{!2000, !2001, !2006, !2007}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1998, file: !1274, line: 91, baseType: !301, size: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !1274, line: 94, baseType: !2002, size: 128)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1274, line: 94, size: 128, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2002, file: !1274, line: 96, baseType: !83, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2002, file: !1274, line: 98, baseType: !7, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1998, file: !1274, line: 102, baseType: !301, size: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1998, file: !1274, line: 103, baseType: !301, size: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1995, file: !1274, line: 106, baseType: !2009, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !2011, line: 351, flags: DIFlagFwdDecl)
!2011 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!2012 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1274, line: 107, baseType: !2013, size: 64, offset: 192)
!2013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1274, line: 107, size: 64, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2013, file: !1274, line: 108, baseType: !116, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2013, file: !1274, line: 109, baseType: !116, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1995, file: !1274, line: 117, baseType: !116, size: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !1274, line: 119, baseType: !2019, size: 320)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1274, line: 119, size: 320, elements: !2020)
!2020 = !{!2021, !2022, !2025, !2026, !2027}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2019, file: !1274, line: 124, baseType: !116, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2019, file: !1274, line: 125, baseType: !2023, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1274, line: 125, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2019, file: !1274, line: 126, baseType: !116, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2019, file: !1274, line: 127, baseType: !116, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !1274, line: 128, baseType: !2028, size: 64, offset: 256)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2019, file: !1274, line: 128, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2028, file: !1274, line: 133, baseType: !116, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2028, file: !1274, line: 138, baseType: !1334, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !1274, line: 141, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1274, line: 141, size: 64, elements: !2034)
!2034 = !{!2035}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2033, file: !1274, line: 142, baseType: !116, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !1274, line: 144, baseType: !2037, size: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1274, line: 144, size: 128, elements: !2038)
!2038 = !{!2039, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2037, file: !1274, line: 146, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1274, line: 146, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2037, file: !1274, line: 147, baseType: !83, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1992, file: !1274, line: 161, baseType: !1613, size: 128, align: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !1274, line: 164, baseType: !2045, size: 32, offset: 384)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1988, file: !1274, line: 164, size: 32, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2045, file: !1274, line: 169, baseType: !327, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2045, file: !1274, line: 177, baseType: !7, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1988, file: !1274, line: 181, baseType: !327, size: 32, offset: 416)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1984, file: !1971, line: 42, baseType: !112, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1984, file: !1971, line: 43, baseType: !112, size: 32, offset: 96)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !964, file: !965, line: 1340, baseType: !2053, size: 64, offset: 20672)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !965, line: 69, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !964, file: !965, line: 1351, baseType: !161, size: 32, offset: 20736)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !964, file: !965, line: 1352, baseType: !161, size: 32, offset: 20768)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !964, file: !965, line: 1354, baseType: !116, size: 64, offset: 20800)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !964, file: !965, line: 1364, baseType: !1030, size: 64, offset: 20864)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !964, file: !965, line: 1365, baseType: !1030, size: 64, offset: 20928)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !964, file: !965, line: 1412, baseType: !116, size: 64, offset: 20992)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !964, file: !965, line: 1453, baseType: !2062, size: 64, offset: 21056)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !965, line: 1453, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !964, file: !965, line: 1457, baseType: !2065, size: 64, offset: 21120)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !63, line: 61, size: 576, elements: !2067)
!2067 = !{!2068, !2069, !2088, !2091, !2092, !2125, !2135}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2066, file: !63, line: 62, baseType: !62, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !63, line: 64, baseType: !2070, size: 192, offset: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !63, line: 64, size: 192, elements: !2071)
!2071 = !{!2072, !2083}
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !63, line: 65, baseType: !2073, size: 192)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !63, line: 65, size: 192, elements: !2074)
!2074 = !{!2075, !2082}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2073, file: !63, line: 66, baseType: !2076, size: 128)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2077, line: 50, size: 128, elements: !2078)
!2077 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2078 = !{!2079, !2080, !2081}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2076, file: !2077, line: 52, baseType: !116, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2076, file: !2077, line: 54, baseType: !7, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2076, file: !2077, line: 55, baseType: !7, size: 32, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2073, file: !63, line: 67, baseType: !116, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !63, line: 70, baseType: !2084, size: 192)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !63, line: 70, size: 192, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2084, file: !63, line: 71, baseType: !1613, size: 128, align: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2084, file: !63, line: 72, baseType: !116, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2066, file: !63, line: 76, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !63, line: 76, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2066, file: !63, line: 77, baseType: !116, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2066, file: !63, line: 79, baseType: !2093, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2077, line: 25, size: 256, elements: !2095)
!2095 = !{!2096, !2102, !2106}
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2094, file: !2077, line: 26, baseType: !2097, size: 128)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2094, file: !2077, line: 26, size: 128, elements: !2098)
!2098 = !{!2099, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2097, file: !2077, line: 27, baseType: !2100, size: 128)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !1695)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2097, file: !2077, line: 28, baseType: !2100, size: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2094, file: !2077, line: 31, baseType: !2103, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2077, line: 23, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2094, file: !2077, line: 33, baseType: !2107, size: 64, offset: 192)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2094, file: !2077, line: 33, size: 64, elements: !2108)
!2108 = !{!2109, !2115, !2120}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2107, file: !2077, line: 38, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2077, line: 34, size: 64, elements: !2111)
!2111 = !{!2112, !2113, !2114}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2110, file: !2077, line: 35, baseType: !1393, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2110, file: !2077, line: 36, baseType: !335, size: 8, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2110, file: !2077, line: 37, baseType: !335, size: 8, offset: 40)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2107, file: !2077, line: 42, baseType: !2116, size: 16)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2077, line: 39, size: 16, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2116, file: !2077, line: 40, baseType: !335, size: 8)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2116, file: !2077, line: 41, baseType: !335, size: 8, offset: 8)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2107, file: !2077, line: 46, baseType: !2121, size: 16)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2077, line: 43, size: 16, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2121, file: !2077, line: 44, baseType: !335, size: 8)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2121, file: !2077, line: 45, baseType: !335, size: 8, offset: 8)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2066, file: !63, line: 81, baseType: !2126, size: 64, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !63, line: 85, size: 384, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2127, file: !63, line: 86, baseType: !2089, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2127, file: !63, line: 87, baseType: !116, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2127, file: !63, line: 88, baseType: !116, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2127, file: !63, line: 89, baseType: !116, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2127, file: !63, line: 90, baseType: !164, size: 8, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2127, file: !63, line: 92, baseType: !2126, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2066, file: !63, line: 82, baseType: !7, size: 32, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !964, file: !965, line: 1463, baseType: !2137, offset: 21184)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !965, line: 739, elements: !807)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !964, file: !965, line: 1470, baseType: !1613, size: 128, align: 64, offset: 21184)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !964, file: !965, line: 1471, baseType: !978, size: 32, offset: 21312)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !964, file: !965, line: 1472, baseType: !161, size: 32, offset: 21344)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !964, file: !965, line: 1474, baseType: !963, size: 64, offset: 21376)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !964, file: !965, line: 1475, baseType: !2143, size: 320, offset: 21440)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2144, line: 11, size: 320, elements: !2145)
!2144 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2145 = !{!2146, !2147, !2148, !2153}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2143, file: !2144, line: 16, baseType: !1599, size: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2143, file: !2144, line: 17, baseType: !116, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2143, file: !2144, line: 18, baseType: !2149, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !2144, line: 19, baseType: !110, size: 32, offset: 256)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !964, file: !965, line: 1478, baseType: !2155, size: 64, offset: 21760)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2157, line: 49, size: 512, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2165, !2166, !2167, !2169}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2156, file: !2157, line: 50, baseType: !2155, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2156, file: !2157, line: 51, baseType: !83, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2156, file: !2157, line: 52, baseType: !116, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !2157, line: 53, baseType: !116, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2156, file: !2157, line: 54, baseType: !2164, size: 64, offset: 256)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2156, file: !2157, line: 56, baseType: !7, size: 32, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2156, file: !2157, line: 58, baseType: !7, size: 32, offset: 352)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2156, file: !2157, line: 59, baseType: !2168, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !165, line: 159, baseType: !1030)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2156, file: !2157, line: 60, baseType: !1435, size: 64, offset: 448)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !964, file: !965, line: 1482, baseType: !978, size: 32, offset: 21824)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !964, file: !965, line: 1489, baseType: !83, size: 64, offset: 21888)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !964, file: !965, line: 1504, baseType: !83, size: 64, offset: 21952)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !964, file: !965, line: 1505, baseType: !1031, size: 64, offset: 22016)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !964, file: !965, line: 1506, baseType: !1030, size: 64, offset: 22080)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !964, file: !965, line: 1507, baseType: !1031, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !964, file: !965, line: 1508, baseType: !1031, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !964, file: !965, line: 1509, baseType: !1031, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !964, file: !965, line: 1510, baseType: !1613, size: 128, align: 64, offset: 22208)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !964, file: !965, line: 1511, baseType: !161, size: 32, offset: 22336)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !964, file: !965, line: 1515, baseType: !2181, size: 64, offset: 22400)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !992, line: 56, size: 64, elements: !2182)
!2182 = !{!2183}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2181, file: !992, line: 57, baseType: !995, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !964, file: !965, line: 1518, baseType: !2181, size: 64, offset: 22464)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !964, file: !965, line: 1528, baseType: !1613, size: 128, align: 64, offset: 22528)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !964, file: !965, line: 1552, baseType: !2187, size: 35328, offset: 23040)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2188, line: 430, size: 35328, elements: !2189)
!2188 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2189 = !{!2190, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2219, !2220, !2221, !2222, !2223, !2224, !2227, !2228, !2229, !2230}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2187, file: !2188, line: 432, baseType: !2191, size: 192)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2192, size: 192, elements: !1674)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2193, line: 16, size: 64, elements: !2194)
!2193 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2192, file: !2193, line: 17, baseType: !342, size: 16)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2192, file: !2193, line: 18, baseType: !342, size: 16, offset: 16)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2192, file: !2193, line: 19, baseType: !342, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2192, file: !2193, line: 19, baseType: !342, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2192, file: !2193, line: 19, baseType: !342, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2192, file: !2193, line: 19, baseType: !342, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2192, file: !2193, line: 19, baseType: !342, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2192, file: !2193, line: 20, baseType: !342, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2192, file: !2193, line: 20, baseType: !342, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2192, file: !2193, line: 20, baseType: !342, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2192, file: !2193, line: 20, baseType: !342, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2192, file: !2193, line: 20, baseType: !342, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2192, file: !2193, line: 20, baseType: !342, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2187, file: !2188, line: 436, baseType: !116, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2187, file: !2188, line: 440, baseType: !344, size: 16, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2187, file: !2188, line: 441, baseType: !344, size: 16, offset: 272)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2187, file: !2188, line: 442, baseType: !344, size: 16, offset: 288)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2187, file: !2188, line: 443, baseType: !344, size: 16, offset: 304)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2187, file: !2188, line: 447, baseType: !116, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2187, file: !2188, line: 448, baseType: !116, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2187, file: !2188, line: 459, baseType: !2216, size: 256, offset: 448)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2217, size: 256, elements: !1395)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2188, line: 428, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2187, file: !2188, line: 461, baseType: !116, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2187, file: !2188, line: 463, baseType: !116, size: 64, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2187, file: !2188, line: 465, baseType: !116, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2187, file: !2188, line: 466, baseType: !116, size: 64, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2187, file: !2188, line: 467, baseType: !116, size: 64, offset: 960)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2187, file: !2188, line: 473, baseType: !2225, size: 64, offset: 1024)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2188, line: 10, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2187, file: !2188, line: 480, baseType: !116, size: 64, offset: 1088)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2187, file: !2188, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2187, file: !2188, line: 491, baseType: !110, size: 32, offset: 1184)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2187, file: !2188, line: 501, baseType: !2231, size: 33792, offset: 1536)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2232, line: 448, size: 33792, elements: !2233)
!2232 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2233 = !{!2234, !2235, !2236, !2404, !2405, !2411, !2412}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2231, file: !2232, line: 461, baseType: !7, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2231, file: !2232, line: 468, baseType: !116, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2231, file: !2232, line: 476, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2232, line: 356, size: 33280, align: 512, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2238, file: !2232, line: 358, baseType: !7, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2238, file: !2232, line: 361, baseType: !7, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2238, file: !2232, line: 364, baseType: !1030, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2238, file: !2232, line: 367, baseType: !1030, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2238, file: !2232, line: 370, baseType: !1030, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2238, file: !2232, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2238, file: !2232, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2238, file: !2232, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2238, file: !2232, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2238, file: !2232, line: 397, baseType: !2250, size: 32768, offset: 512)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2232, line: 348, size: 32768, elements: !2251)
!2251 = !{!2252, !2267, !2308, !2385, !2400}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2250, file: !2232, line: 349, baseType: !2253, size: 896)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2232, line: 12, size: 896, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2266}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2253, file: !2232, line: 13, baseType: !110, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2253, file: !2232, line: 14, baseType: !110, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2253, file: !2232, line: 15, baseType: !110, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2253, file: !2232, line: 16, baseType: !110, size: 32, offset: 96)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2253, file: !2232, line: 17, baseType: !110, size: 32, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2253, file: !2232, line: 18, baseType: !110, size: 32, offset: 160)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2253, file: !2232, line: 19, baseType: !110, size: 32, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2253, file: !2232, line: 22, baseType: !2263, size: 640, offset: 224)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 640, elements: !2264)
!2264 = !{!2265}
!2265 = !DISubrange(count: 20)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2253, file: !2232, line: 25, baseType: !110, size: 32, offset: 864)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2250, file: !2232, line: 350, baseType: !2268, size: 4096, align: 128)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2232, line: 34, size: 4096, align: 128, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2289, !2290, !2291, !2295, !2299, !2303}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2268, file: !2232, line: 35, baseType: !342, size: 16)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2268, file: !2232, line: 36, baseType: !342, size: 16, offset: 16)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2268, file: !2232, line: 37, baseType: !342, size: 16, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2268, file: !2232, line: 38, baseType: !342, size: 16, offset: 48)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !2232, line: 39, baseType: !2275, size: 128, offset: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !2232, line: 39, size: 128, elements: !2276)
!2276 = !{!2277, !2282}
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !2232, line: 40, baseType: !2278, size: 128)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !2232, line: 40, size: 128, elements: !2279)
!2279 = !{!2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2278, file: !2232, line: 41, baseType: !1030, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2278, file: !2232, line: 42, baseType: !1030, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !2232, line: 44, baseType: !2283, size: 128)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !2232, line: 44, size: 128, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2283, file: !2232, line: 45, baseType: !110, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2283, file: !2232, line: 46, baseType: !110, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2283, file: !2232, line: 47, baseType: !110, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2283, file: !2232, line: 48, baseType: !110, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2268, file: !2232, line: 51, baseType: !110, size: 32, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2268, file: !2232, line: 52, baseType: !110, size: 32, offset: 224)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2268, file: !2232, line: 55, baseType: !2292, size: 1024, offset: 256)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1024, elements: !2293)
!2293 = !{!2294}
!2294 = !DISubrange(count: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2268, file: !2232, line: 58, baseType: !2296, size: 2048, offset: 1280)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2048, elements: !2297)
!2297 = !{!2298}
!2298 = !DISubrange(count: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2268, file: !2232, line: 60, baseType: !2300, size: 384, offset: 3328)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 384, elements: !2301)
!2301 = !{!2302}
!2302 = !DISubrange(count: 12)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !2232, line: 62, baseType: !2304, size: 384, offset: 3712)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !2232, line: 62, size: 384, elements: !2305)
!2305 = !{!2306, !2307}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2304, file: !2232, line: 63, baseType: !2300, size: 384)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2304, file: !2232, line: 64, baseType: !2300, size: 384)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2250, file: !2232, line: 351, baseType: !2309, size: 1088)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2232, line: 79, size: 1088, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2384}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2309, file: !2232, line: 80, baseType: !110, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2309, file: !2232, line: 81, baseType: !110, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2309, file: !2232, line: 82, baseType: !110, size: 32, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2309, file: !2232, line: 83, baseType: !110, size: 32, offset: 96)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2309, file: !2232, line: 84, baseType: !110, size: 32, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2309, file: !2232, line: 85, baseType: !110, size: 32, offset: 160)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2309, file: !2232, line: 86, baseType: !110, size: 32, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2309, file: !2232, line: 88, baseType: !2263, size: 640, offset: 224)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2309, file: !2232, line: 89, baseType: !335, size: 8, offset: 864)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2309, file: !2232, line: 90, baseType: !335, size: 8, offset: 872)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2309, file: !2232, line: 91, baseType: !335, size: 8, offset: 880)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2309, file: !2232, line: 92, baseType: !335, size: 8, offset: 888)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2309, file: !2232, line: 93, baseType: !335, size: 8, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2309, file: !2232, line: 94, baseType: !335, size: 8, offset: 904)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2309, file: !2232, line: 95, baseType: !2326, size: 64, offset: 960)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2328, line: 11, size: 128, elements: !2329)
!2328 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2329 = !{!2330, !2331}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2327, file: !2328, line: 12, baseType: !1438, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2327, file: !2328, line: 13, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2334, line: 103, size: 1344, elements: !2335)
!2334 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2364, !2365, !2366}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2333, file: !2334, line: 109, baseType: !116, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2333, file: !2334, line: 110, baseType: !116, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2333, file: !2334, line: 111, baseType: !116, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2333, file: !2334, line: 112, baseType: !116, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2333, file: !2334, line: 113, baseType: !116, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2333, file: !2334, line: 114, baseType: !116, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2333, file: !2334, line: 117, baseType: !116, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2333, file: !2334, line: 118, baseType: !116, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2333, file: !2334, line: 119, baseType: !116, size: 64, offset: 512)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2333, file: !2334, line: 120, baseType: !116, size: 64, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2333, file: !2334, line: 121, baseType: !116, size: 64, offset: 640)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2333, file: !2334, line: 122, baseType: !116, size: 64, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2333, file: !2334, line: 123, baseType: !116, size: 64, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2333, file: !2334, line: 124, baseType: !116, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2333, file: !2334, line: 125, baseType: !116, size: 64, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2333, file: !2334, line: 139, baseType: !116, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2333, file: !2334, line: 142, baseType: !116, size: 64, offset: 1024)
!2353 = !DIDerivedType(tag: DW_TAG_member, scope: !2333, file: !2334, line: 144, baseType: !2354, size: 64, offset: 1088)
!2354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2333, file: !2334, line: 144, size: 64, elements: !2355)
!2355 = !{!2356, !2357, !2358}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2354, file: !2334, line: 146, baseType: !342, size: 16)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2354, file: !2334, line: 148, baseType: !1030, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2354, file: !2334, line: 150, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2334, line: 59, size: 64, elements: !2360)
!2360 = !{!2361, !2362, !2363}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2359, file: !2334, line: 61, baseType: !1030, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2359, file: !2334, line: 63, baseType: !1030, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2359, file: !2334, line: 65, baseType: !1030, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !2334, line: 153, baseType: !116, size: 64, offset: 1152)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2333, file: !2334, line: 154, baseType: !116, size: 64, offset: 1216)
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !2333, file: !2334, line: 156, baseType: !2367, size: 64, offset: 1280)
!2367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2333, file: !2334, line: 156, size: 64, elements: !2368)
!2368 = !{!2369, !2370, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2367, file: !2334, line: 158, baseType: !342, size: 16)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2367, file: !2334, line: 160, baseType: !1030, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2367, file: !2334, line: 162, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2334, line: 69, size: 64, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2372, file: !2334, line: 71, baseType: !1030, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2372, file: !2334, line: 73, baseType: !1030, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2372, file: !2334, line: 75, baseType: !1030, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2372, file: !2334, line: 77, baseType: !1030, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2372, file: !2334, line: 80, baseType: !1030, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2372, file: !2334, line: 83, baseType: !1030, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2372, file: !2334, line: 86, baseType: !1030, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2372, file: !2334, line: 88, baseType: !1030, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2372, file: !2334, line: 93, baseType: !1030, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2372, file: !2334, line: 100, baseType: !1030, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2309, file: !2232, line: 96, baseType: !110, size: 32, offset: 1024)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2250, file: !2232, line: 352, baseType: !2386, size: 4608, align: 512)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2232, line: 333, size: 4608, align: 512, elements: !2387)
!2387 = !{!2388, !2389, !2398}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2386, file: !2232, line: 334, baseType: !2268, size: 4096, align: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2386, file: !2232, line: 335, baseType: !2390, size: 512, offset: 4096)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2232, line: 312, size: 512, elements: !2391)
!2391 = !{!2392, !2393, !2394}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2390, file: !2232, line: 313, baseType: !1030, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2390, file: !2232, line: 314, baseType: !1030, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2390, file: !2232, line: 315, baseType: !2395, size: 384, offset: 128)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 384, elements: !2396)
!2396 = !{!2397}
!2397 = !DISubrange(count: 6)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2386, file: !2232, line: 336, baseType: !2399, offset: 4608)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, elements: !1492)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2250, file: !2232, line: 353, baseType: !2401, size: 32768)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 32768, elements: !2402)
!2402 = !{!2403}
!2403 = !DISubrange(count: 4096)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2231, file: !2232, line: 484, baseType: !2237, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2231, file: !2232, line: 491, baseType: !2406, size: 128, offset: 256)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2232, line: 404, size: 128, elements: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2406, file: !2232, line: 424, baseType: !1030, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2406, file: !2232, line: 432, baseType: !7, size: 32, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2406, file: !2232, line: 440, baseType: !7, size: 32, offset: 96)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2231, file: !2232, line: 498, baseType: !2406, size: 128, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2231, file: !2232, line: 508, baseType: !2238, size: 33280, align: 512, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !950, file: !6, line: 125, baseType: !949, size: 64, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !950, file: !6, line: 126, baseType: !7, size: 32, offset: 448)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !6, line: 127, baseType: !7, size: 32, offset: 480)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !950, file: !6, line: 128, baseType: !116, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !950, file: !6, line: 129, baseType: !116, size: 64, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !950, file: !6, line: 130, baseType: !100, size: 64, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !950, file: !6, line: 131, baseType: !2420, size: 64, offset: 704)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !6, line: 131, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !940, file: !941, line: 61, baseType: !7, size: 32, offset: 960)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !940, file: !941, line: 62, baseType: !7, size: 32, offset: 992)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !940, file: !941, line: 63, baseType: !7, size: 32, offset: 1024)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !940, file: !941, line: 64, baseType: !7, size: 32, offset: 1056)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !940, file: !941, line: 65, baseType: !7, size: 32, offset: 1088)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !940, file: !941, line: 66, baseType: !7, size: 32, offset: 1120)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !940, file: !941, line: 67, baseType: !116, size: 64, offset: 1152)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !940, file: !941, line: 68, baseType: !7, size: 32, offset: 1216)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !940, file: !941, line: 69, baseType: !327, size: 32, offset: 1248)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !940, file: !941, line: 70, baseType: !161, size: 32, offset: 1280)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !940, file: !941, line: 71, baseType: !314, size: 32, offset: 1312)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !940, file: !941, line: 72, baseType: !2434, size: 64, offset: 1344)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !940, file: !941, line: 73, baseType: !162, size: 64, offset: 1408)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !940, file: !941, line: 75, baseType: !162, size: 64, offset: 1472)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !940, file: !941, line: 76, baseType: !2438, size: 64, offset: 1536)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !6, line: 261, size: 448, elements: !2440)
!2440 = !{!2441, !2442, !2447, !2448, !2452}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2439, file: !6, line: 262, baseType: !7, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2439, file: !6, line: 263, baseType: !2443, size: 32, offset: 32)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2444, line: 19, size: 32, elements: !2445)
!2444 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2445 = !{!2446}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2443, file: !2444, line: 20, baseType: !978, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2439, file: !6, line: 264, baseType: !1479, size: 256, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2439, file: !6, line: 265, baseType: !2449, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !2438, !1223}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2439, file: !6, line: 266, baseType: !2453, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2456}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !940, file: !941, line: 78, baseType: !128, size: 64, offset: 1600)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !940, file: !941, line: 81, baseType: !116, size: 64, offset: 1664)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !940, file: !941, line: 82, baseType: !327, size: 32, offset: 1728)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !940, file: !941, line: 83, baseType: !1606, size: 192, offset: 1792)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !940, file: !941, line: 85, baseType: !7, size: 32, offset: 1984)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !940, file: !941, line: 86, baseType: !7, size: 32, offset: 2016)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !940, file: !941, line: 87, baseType: !7, size: 32, offset: 2048)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !940, file: !941, line: 88, baseType: !7, size: 32, offset: 2080)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !940, file: !941, line: 91, baseType: !2420, size: 64, offset: 2112)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !940, file: !941, line: 98, baseType: !1613, size: 128, align: 64, offset: 2176)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !940, file: !941, line: 99, baseType: !2468, size: 512, offset: 2304)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2469, line: 64, size: 512, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!2470 = !{!2471, !2472, !2473, !2475, !2517, !2688, !2797, !2798, !2799, !2800, !2801, !2802}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2468, file: !2469, line: 65, baseType: !100, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2468, file: !2469, line: 66, baseType: !301, size: 128, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2468, file: !2469, line: 67, baseType: !2474, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2468, file: !2469, line: 68, baseType: !2476, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2469, line: 168, size: 768, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2477, file: !2469, line: 169, baseType: !301, size: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2477, file: !2469, line: 170, baseType: !1291, size: 32, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2477, file: !2469, line: 171, baseType: !2468, size: 512, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2477, file: !2469, line: 172, baseType: !2483, size: 64, offset: 704)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2469, line: 133, size: 192, elements: !2486)
!2486 = !{!2487, !2494, !2499}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2485, file: !2469, line: 134, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2489)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!161, !2492}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2485, file: !2469, line: 135, baseType: !2495, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!100, !2492}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2485, file: !2469, line: 136, baseType: !2500, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2501)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!161, !2492, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2469, line: 125, size: 20736, elements: !2506)
!2506 = !{!2507, !2509, !2511, !2512, !2516}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2505, file: !2469, line: 126, baseType: !2508, size: 192)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1773, size: 192, elements: !1674)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2505, file: !2469, line: 127, baseType: !2510, size: 4096, offset: 192)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1773, size: 4096, elements: !2297)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2505, file: !2469, line: 128, baseType: !161, size: 32, offset: 4288)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2505, file: !2469, line: 129, baseType: !2513, size: 16384, offset: 4320)
!2513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 16384, elements: !2514)
!2514 = !{!2515}
!2515 = !DISubrange(count: 2048)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2505, file: !2469, line: 130, baseType: !161, size: 32, offset: 20704)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2468, file: !2469, line: 69, baseType: !2518, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2469, line: 116, size: 384, elements: !2521)
!2521 = !{!2522, !2526, !2548, !2641, !2672, !2676}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2520, file: !2469, line: 117, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2474}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2520, file: !2469, line: 118, baseType: !2527, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2530, line: 254, size: 128, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!2531 = !{!2532, !2544}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2529, file: !2530, line: 255, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!2536, !2474, !2538, !1773}
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !165, line: 66, baseType: !2537)
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !598, line: 73, baseType: !1855)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2530, line: 30, size: 128, elements: !2540)
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2539, file: !2530, line: 31, baseType: !100, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2539, file: !2530, line: 32, baseType: !2543, size: 16, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !165, line: 24, baseType: !344)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2529, file: !2530, line: 256, baseType: !2545, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!2536, !2474, !2538, !100, !596}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2520, file: !2469, line: 119, baseType: !2549, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2530, line: 84, size: 320, elements: !2553)
!2553 = !{!2554, !2555, !2559, !2637, !2639}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2552, file: !2530, line: 85, baseType: !100, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2552, file: !2530, line: 86, baseType: !2556, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!2543, !2474, !2538, !161}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2552, file: !2530, line: 88, baseType: !2560, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!2543, !2474, !2563, !161}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2530, line: 175, size: 512, elements: !2565)
!2565 = !{!2566, !2567, !2568, !2569, !2573, !2579, !2580}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2564, file: !2530, line: 176, baseType: !2539, size: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2564, file: !2530, line: 177, baseType: !596, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2564, file: !2530, line: 178, baseType: !83, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2564, file: !2530, line: 179, baseType: !2570, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!2009}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2564, file: !2530, line: 180, baseType: !2574, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!2536, !1308, !2474, !2563, !1773, !2577, !596}
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !165, line: 52, baseType: !2578)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !598, line: 88, baseType: !1043)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2564, file: !2530, line: 182, baseType: !2574, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2564, file: !2530, line: 184, baseType: !2581, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!161, !1308, !2474, !2563, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1274, line: 625, size: 1344, elements: !2586)
!2586 = !{!2587, !2596, !2597, !2603, !2610, !2611, !2616, !2617, !2622, !2623, !2626, !2630, !2631, !2632, !2633, !2634, !2635}
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !1274, line: 628, baseType: !2588, size: 128)
!2588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !1274, line: 628, size: 128, elements: !2589)
!2589 = !{!2590, !2595}
!2590 = !DIDerivedType(tag: DW_TAG_member, scope: !2588, file: !1274, line: 629, baseType: !2591, size: 128)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2588, file: !1274, line: 629, size: 128, elements: !2592)
!2592 = !{!2593, !2594}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2591, file: !1274, line: 631, baseType: !116, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2591, file: !1274, line: 632, baseType: !116, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2588, file: !1274, line: 635, baseType: !1613, size: 128, align: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2585, file: !1274, line: 639, baseType: !1272, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2585, file: !1274, line: 640, baseType: !2598, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1310, line: 297, baseType: !2599)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1310, line: 297, size: 64, elements: !2600)
!2600 = !{!2601}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2599, file: !1310, line: 297, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1323, line: 19, baseType: !116)
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !1274, line: 646, baseType: !2604, size: 64, offset: 256)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !1274, line: 646, size: 64, elements: !2605)
!2605 = !{!2606, !2609}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2604, file: !1274, line: 647, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1274, line: 542, baseType: !116)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2604, file: !1274, line: 648, baseType: !2608, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2585, file: !1274, line: 666, baseType: !161, size: 32, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2585, file: !1274, line: 667, baseType: !2612, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1274, line: 579, size: 320, elements: !2614)
!2614 = !{!2615}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2613, file: !1274, line: 580, baseType: !1343, size: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2585, file: !1274, line: 670, baseType: !164, size: 8, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2585, file: !1274, line: 681, baseType: !2618, size: 256, offset: 512)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2585, file: !1274, line: 678, size: 256, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2618, file: !1274, line: 679, baseType: !1022, size: 192, align: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2618, file: !1274, line: 680, baseType: !116, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2585, file: !1274, line: 689, baseType: !301, size: 128, offset: 768)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2585, file: !1274, line: 691, baseType: !2624, size: 64, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1274, line: 691, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2585, file: !1274, line: 694, baseType: !2627, size: 64, offset: 960)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2629)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1274, line: 694, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2585, file: !1274, line: 697, baseType: !116, size: 64, offset: 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2585, file: !1274, line: 699, baseType: !1308, size: 64, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2585, file: !1274, line: 700, baseType: !83, size: 64, offset: 1152)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2585, file: !1274, line: 711, baseType: !1334, size: 64, offset: 1216)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2585, file: !1274, line: 717, baseType: !1944, size: 64, offset: 1280)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2585, file: !1274, line: 722, baseType: !2636, offset: 1344)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1274, line: 570, elements: !807)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2552, file: !2530, line: 90, baseType: !2638, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2552, file: !2530, line: 91, baseType: !2640, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2520, file: !2469, line: 120, baseType: !2642, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!2645, !2492}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !70, line: 39, size: 384, elements: !2648)
!2648 = !{!2649, !2650, !2654, !2658, !2664, !2668}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2647, file: !70, line: 40, baseType: !69, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2647, file: !70, line: 41, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!164}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2647, file: !70, line: 42, baseType: !2655, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!83}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2647, file: !70, line: 43, baseType: !2659, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!1435, !2662}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !70, line: 19, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2647, file: !70, line: 44, baseType: !2665, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!1435}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2647, file: !70, line: 45, baseType: !2669, size: 64, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !83}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2520, file: !2469, line: 121, baseType: !2673, size: 64, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!1435, !2492}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2520, file: !2469, line: 122, baseType: !2677, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{null, !2492, !2680, !2681}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1464, line: 28, baseType: !2683)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1464, line: 26, size: 32, elements: !2684)
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2683, file: !1464, line: 27, baseType: !2686, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !165, line: 38, baseType: !2687)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !598, line: 50, baseType: !7)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2468, file: !2469, line: 70, baseType: !2689, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2691, line: 190, size: 1152, elements: !2692)
!2691 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2789, !2790, !2791, !2792, !2793, !2796}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2690, file: !2691, line: 191, baseType: !327, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2690, file: !2691, line: 192, baseType: !327, size: 32, offset: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2690, file: !2691, line: 202, baseType: !2689, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2690, file: !2691, line: 203, baseType: !100, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2690, file: !2691, line: 205, baseType: !1022, size: 192, align: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2690, file: !2691, line: 207, baseType: !1435, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2690, file: !2691, line: 208, baseType: !7, size: 32, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, scope: !2690, file: !2691, line: 209, baseType: !2701, size: 256, offset: 512)
!2701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2690, file: !2691, line: 209, size: 256, elements: !2702)
!2702 = !{!2703, !2712, !2716}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2701, file: !2691, line: 210, baseType: !2704, size: 256)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2691, line: 153, size: 256, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2711}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2704, file: !2691, line: 154, baseType: !116, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2704, file: !2691, line: 156, baseType: !1165, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2704, file: !2691, line: 162, baseType: !2709, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2691, line: 162, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2704, file: !2691, line: 167, baseType: !116, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2701, file: !2691, line: 211, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2691, line: 170, size: 64, elements: !2714)
!2714 = !{!2715}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2713, file: !2691, line: 171, baseType: !2689, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2701, file: !2691, line: 212, baseType: !2717, size: 256)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2691, line: 174, size: 256, elements: !2718)
!2718 = !{!2719, !2784, !2787, !2788}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2717, file: !2691, line: 175, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2722)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2691, line: 271, size: 768, elements: !2723)
!2723 = !{!2724, !2744, !2748, !2752, !2757, !2761, !2765, !2769, !2770, !2771, !2772, !2780}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2722, file: !2691, line: 276, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!161, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2691, line: 251, size: 1216, elements: !2730)
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2729, file: !2691, line: 253, baseType: !2689, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2729, file: !2691, line: 254, baseType: !1308, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2729, file: !2691, line: 255, baseType: !186, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2729, file: !2691, line: 256, baseType: !83, size: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2729, file: !2691, line: 259, baseType: !1414, size: 256, offset: 256)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2729, file: !2691, line: 260, baseType: !1414, size: 256, offset: 512)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2729, file: !2691, line: 261, baseType: !161, size: 32, offset: 768)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2729, file: !2691, line: 262, baseType: !301, size: 128, offset: 832)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2729, file: !2691, line: 263, baseType: !1773, size: 64, offset: 960)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2729, file: !2691, line: 265, baseType: !596, size: 64, offset: 1024)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2729, file: !2691, line: 266, baseType: !164, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2729, file: !2691, line: 267, baseType: !164, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2729, file: !2691, line: 268, baseType: !2627, size: 64, offset: 1152)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2722, file: !2691, line: 277, baseType: !2745, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !2728}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2722, file: !2691, line: 290, baseType: !2749, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!161, !186, !83}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2722, file: !2691, line: 292, baseType: !2753, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!83, !186, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2722, file: !2691, line: 293, baseType: !2758, size: 64, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!83, !186, !83, !2756}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2722, file: !2691, line: 294, baseType: !2762, size: 64, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{null, !186, !83}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2722, file: !2691, line: 296, baseType: !2766, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!2536, !2728, !1773, !596, !2577}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2722, file: !2691, line: 306, baseType: !596, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2722, file: !2691, line: 313, baseType: !164, size: 8, offset: 512)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2722, file: !2691, line: 314, baseType: !2766, size: 64, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2722, file: !2691, line: 317, baseType: !2773, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!2776, !2728, !2778}
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2777, line: 59, baseType: !7)
!2777 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2691, line: 31, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2722, file: !2691, line: 320, baseType: !2781, size: 64, offset: 704)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!161, !2728, !2584}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2717, file: !2691, line: 176, baseType: !2785, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2691, line: 35, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2717, file: !2691, line: 177, baseType: !2577, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2717, file: !2691, line: 178, baseType: !2689, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2690, file: !2691, line: 215, baseType: !83, size: 64, offset: 768)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2690, file: !2691, line: 221, baseType: !1030, size: 64, offset: 832)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2690, file: !2691, line: 223, baseType: !344, size: 16, offset: 896)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2690, file: !2691, line: 224, baseType: !2543, size: 16, offset: 912)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2690, file: !2691, line: 225, baseType: !2794, size: 64, offset: 960)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2691, line: 36, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2690, file: !2691, line: 227, baseType: !1613, size: 128, align: 64, offset: 1024)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2468, file: !2469, line: 71, baseType: !2443, size: 32, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2468, file: !2469, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2468, file: !2469, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2468, file: !2469, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2468, file: !2469, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2468, file: !2469, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !940, file: !941, line: 101, baseType: !1414, size: 256, offset: 2816)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !940, file: !941, line: 102, baseType: !161, size: 32, offset: 3072)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !940, file: !941, line: 103, baseType: !2806, size: 64, offset: 3136)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !76, line: 402, size: 9216, align: 512, elements: !2808)
!2808 = !{!2809, !2810, !2811, !2815, !2825, !2851, !2852, !2853, !2854, !2858, !2861, !2862, !2863, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2930, !2931, !2947, !2964, !2965, !2966, !2967, !2976, !2999, !3000, !3003, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3017, !3018, !3107, !3115, !3116, !3117, !3119, !3123, !3124, !3128, !3129, !3130, !3131, !3133, !3134, !3135, !3142, !3143, !3144, !3145}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2807, file: !76, line: 403, baseType: !75, size: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2807, file: !76, line: 406, baseType: !301, size: 128, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2807, file: !76, line: 409, baseType: !2812, size: 448, offset: 192)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 448, elements: !2813)
!2813 = !{!2814}
!2814 = !DISubrange(count: 56)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2807, file: !76, line: 417, baseType: !2816, size: 768, offset: 640)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !76, line: 45, size: 768, elements: !2817)
!2817 = !{!2818, !2819, !2820, !2821, !2824}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2816, file: !76, line: 46, baseType: !2468, size: 512)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2816, file: !76, line: 47, baseType: !2806, size: 64, offset: 512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2816, file: !76, line: 48, baseType: !2474, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2816, file: !76, line: 49, baseType: !2822, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !76, line: 49, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2816, file: !76, line: 50, baseType: !1634, size: 64, offset: 704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2807, file: !76, line: 418, baseType: !2826, size: 64, offset: 1408)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !76, line: 53, size: 448, elements: !2828)
!2828 = !{!2829, !2830, !2835, !2839, !2843, !2847}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2827, file: !76, line: 54, baseType: !2539, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2827, file: !76, line: 55, baseType: !2831, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!2536, !2826, !2834, !1773}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2827, file: !76, line: 57, baseType: !2836, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!2536, !2826, !2834, !100, !596}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2827, file: !76, line: 59, baseType: !2840, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2806, !100}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2827, file: !76, line: 60, baseType: !2844, size: 64, offset: 320)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!161, !2806}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2827, file: !76, line: 61, baseType: !2848, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !2806}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2807, file: !76, line: 419, baseType: !100, size: 64, offset: 1472)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2807, file: !76, line: 420, baseType: !100, size: 64, offset: 1536)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2807, file: !76, line: 421, baseType: !2474, size: 64, offset: 1600)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2807, file: !76, line: 424, baseType: !2855, size: 64, offset: 1664)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2857)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !76, line: 424, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2807, file: !76, line: 425, baseType: !2859, size: 64, offset: 1728)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2807, file: !76, line: 426, baseType: !7, size: 32, offset: 1792)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2807, file: !76, line: 435, baseType: !1414, size: 256, offset: 1856)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2807, file: !76, line: 437, baseType: !2864, size: 64, offset: 2112)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2866, line: 69, size: 320, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2867 = !{!2868, !2869, !2870, !2887, !2889, !2893, !2894}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2865, file: !2866, line: 70, baseType: !100, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2865, file: !2866, line: 71, baseType: !2806, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2865, file: !2866, line: 72, baseType: !2871, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2873)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2866, line: 47, size: 256, elements: !2874)
!2874 = !{!2875, !2876, !2882, !2886}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2873, file: !2866, line: 49, baseType: !7, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2873, file: !2866, line: 51, baseType: !2877, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!161, !100, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2873, file: !2866, line: 53, baseType: !2883, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!161, !1773, !2880}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2873, file: !2866, line: 55, baseType: !2669, size: 64, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2865, file: !2866, line: 73, baseType: !2888, size: 16, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2865, file: !2866, line: 74, baseType: !2890, size: 8, offset: 208)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !111, line: 16, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !113, line: 20, baseType: !2892)
!2892 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2865, file: !2866, line: 75, baseType: !335, size: 8, offset: 216)
!2894 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !2866, line: 76, baseType: !2895, size: 64, offset: 256)
!2895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !2866, line: 76, size: 64, elements: !2896)
!2896 = !{!2897, !2898, !2905}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2895, file: !2866, line: 77, baseType: !83, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2895, file: !2866, line: 78, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2901)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2866, line: 86, size: 128, elements: !2902)
!2902 = !{!2903, !2904}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2901, file: !2866, line: 87, baseType: !7, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2901, file: !2866, line: 88, baseType: !1773, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2895, file: !2866, line: 79, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2908)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2866, line: 92, size: 256, elements: !2909)
!2909 = !{!2910, !2911, !2912, !2913, !2914}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2908, file: !2866, line: 94, baseType: !7, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2908, file: !2866, line: 95, baseType: !7, size: 32, offset: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2908, file: !2866, line: 96, baseType: !946, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2908, file: !2866, line: 97, baseType: !2871, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2908, file: !2866, line: 98, baseType: !83, size: 64, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2807, file: !76, line: 438, baseType: !7, size: 32, offset: 2176)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2807, file: !76, line: 441, baseType: !7, size: 32, offset: 2208)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2807, file: !76, line: 442, baseType: !2855, size: 64, offset: 2240)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2807, file: !76, line: 443, baseType: !2859, size: 64, offset: 2304)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2807, file: !76, line: 444, baseType: !164, size: 8, offset: 2368)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2807, file: !76, line: 451, baseType: !164, size: 8, offset: 2376)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2807, file: !76, line: 454, baseType: !7, size: 32, offset: 2400)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2807, file: !76, line: 455, baseType: !2923, size: 64, offset: 2432)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2925, line: 23, size: 96, elements: !2926)
!2925 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2924, file: !2925, line: 24, baseType: !161, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2924, file: !2925, line: 24, baseType: !161, size: 32, offset: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2924, file: !2925, line: 24, baseType: !161, size: 32, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2807, file: !76, line: 458, baseType: !244, size: 64, offset: 2496)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2807, file: !76, line: 460, baseType: !2932, size: 4032, align: 512, offset: 2560)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2933, size: 4032, elements: !93)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !76, line: 362, size: 576, elements: !2934)
!2934 = !{!2935, !2936, !2937}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2933, file: !76, line: 363, baseType: !83, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2933, file: !76, line: 364, baseType: !7, size: 32, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2933, file: !76, line: 367, baseType: !2938, size: 448, offset: 128)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !76, line: 319, size: 448, elements: !2939)
!2939 = !{!2940, !2941}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2938, file: !76, line: 320, baseType: !2806, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2938, file: !76, line: 321, baseType: !2942, size: 384, offset: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2943, line: 40, size: 384, elements: !2944)
!2943 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2944 = !{!2945}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2942, file: !2943, line: 41, baseType: !2946, size: 384, align: 64)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 384, align: 64, elements: !312)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2807, file: !76, line: 463, baseType: !2948, size: 192, offset: 6592)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2949, line: 8, size: 192, elements: !2950)
!2949 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2950 = !{!2951, !2952, !2953}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2948, file: !2949, line: 10, baseType: !7, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2948, file: !2949, line: 11, baseType: !1646, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2948, file: !2949, line: 12, baseType: !2954, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2956, line: 59, size: 48, elements: !2957)
!2956 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2955, file: !2956, line: 60, baseType: !1453, size: 16)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2955, file: !2956, line: 61, baseType: !1453, size: 16, offset: 16)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2955, file: !2956, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2955, file: !2956, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2955, file: !2956, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2955, file: !2956, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2807, file: !76, line: 465, baseType: !116, size: 64, offset: 6784)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2807, file: !76, line: 469, baseType: !7, size: 32, offset: 6848)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2807, file: !76, line: 470, baseType: !301, size: 128, offset: 6912)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2807, file: !76, line: 471, baseType: !2968, size: 64, offset: 7040)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2970, line: 33, size: 96, elements: !2971)
!2970 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2971 = !{!2972, !2973, !2974, !2975}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2969, file: !2970, line: 37, baseType: !161, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2969, file: !2970, line: 43, baseType: !161, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2969, file: !2970, line: 45, baseType: !344, size: 16, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2969, file: !2970, line: 47, baseType: !344, size: 16, offset: 80)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2807, file: !76, line: 476, baseType: !2977, size: 64, offset: 7104)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !76, line: 378, size: 256, elements: !2979)
!2979 = !{!2980, !2996, !2997, !2998}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2978, file: !76, line: 379, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2983, line: 204, baseType: !2984)
!2983 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2983, line: 197, size: 192, elements: !2985)
!2985 = !{!2986, !2988, !2989, !2990, !2992, !2994}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2984, file: !2983, line: 198, baseType: !2987, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2983, line: 21, baseType: !112)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2984, file: !2983, line: 199, baseType: !85, size: 8, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2984, file: !2983, line: 200, baseType: !85, size: 8, offset: 40)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2984, file: !2983, line: 201, baseType: !2991, size: 16, offset: 48)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2983, line: 17, baseType: !343)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2984, file: !2983, line: 202, baseType: !2993, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2983, line: 16, baseType: !1031)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2984, file: !2983, line: 203, baseType: !2995, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2983, line: 22, baseType: !1031)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2978, file: !76, line: 380, baseType: !7, size: 32, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2978, file: !76, line: 381, baseType: !1773, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2978, file: !76, line: 382, baseType: !1773, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2807, file: !76, line: 477, baseType: !2978, size: 256, offset: 7168)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2807, file: !76, line: 480, baseType: !3001, size: 64, offset: 7424)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !76, line: 480, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2807, file: !76, line: 483, baseType: !3004, size: 64, offset: 7488)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !76, line: 483, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2807, file: !76, line: 488, baseType: !1773, size: 64, offset: 7552)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2807, file: !76, line: 492, baseType: !83, size: 64, offset: 7616)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2807, file: !76, line: 493, baseType: !7, size: 32, offset: 7680)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2807, file: !76, line: 495, baseType: !83, size: 64, offset: 7744)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2807, file: !76, line: 496, baseType: !7, size: 32, offset: 7808)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2807, file: !76, line: 499, baseType: !7, size: 32, offset: 7840)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2807, file: !76, line: 500, baseType: !3013, size: 64, offset: 7872)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3015, line: 45, baseType: !3016)
!3015 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2807, file: !76, line: 503, baseType: !7, size: 32, offset: 7936)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2807, file: !76, line: 504, baseType: !3019, size: 64, offset: 8000)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3022, line: 96, size: 192, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3023 = !{!3024, !3025, !3068, !3071}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3021, file: !3022, line: 97, baseType: !7, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3021, file: !3022, line: 98, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3022, line: 24, size: 3072, elements: !3028)
!3028 = !{!3029, !3031, !3032, !3033, !3034, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3065, !3066, !3067}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3027, file: !3022, line: 26, baseType: !3030, size: 128)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1334, size: 128, elements: !312)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3027, file: !3022, line: 27, baseType: !3030, size: 128, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3027, file: !3022, line: 28, baseType: !161, size: 32, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3027, file: !3022, line: 31, baseType: !1291, size: 32, align: 512, offset: 512)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3027, file: !3022, line: 32, baseType: !3035, size: 960, offset: 576)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3036, line: 206, size: 960, elements: !3037)
!3036 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3037 = !{!3038, !3039, !3042, !3044, !3045, !3047}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3035, file: !3036, line: 207, baseType: !1616, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3035, file: !3036, line: 208, baseType: !3040, size: 256, offset: 64)
!3040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3041, size: 256, elements: !1395)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3035, file: !3036, line: 209, baseType: !3043, size: 256, offset: 320)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !1395)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3035, file: !3036, line: 213, baseType: !1438, size: 64, offset: 576)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3035, file: !3036, line: 215, baseType: !3046, size: 256, offset: 640)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1438, size: 256, elements: !1395)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3035, file: !3036, line: 216, baseType: !335, size: 8, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3027, file: !3022, line: 33, baseType: !116, size: 64, offset: 1536)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3027, file: !3022, line: 34, baseType: !116, size: 64, offset: 1600)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3027, file: !3022, line: 35, baseType: !164, size: 8, offset: 1664)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3027, file: !3022, line: 36, baseType: !2143, size: 320, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3027, file: !3022, line: 37, baseType: !1479, size: 256, offset: 2048)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3027, file: !3022, line: 38, baseType: !1613, size: 128, align: 64, offset: 2304)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3027, file: !3022, line: 39, baseType: !3055, size: 64, offset: 2432)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3022, line: 49, size: 768, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3061, !3062, !3063, !3064}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3056, file: !3022, line: 50, baseType: !1291, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3056, file: !3022, line: 51, baseType: !3043, size: 256, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3056, file: !3022, line: 53, baseType: !3043, size: 256, offset: 320)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3056, file: !3022, line: 54, baseType: !116, size: 64, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3056, file: !3022, line: 55, baseType: !3055, size: 64, offset: 640)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3056, file: !3022, line: 56, baseType: !161, size: 32, offset: 704)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3056, file: !3022, line: 57, baseType: !161, size: 32, offset: 736)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3027, file: !3022, line: 40, baseType: !116, size: 64, offset: 2496)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3027, file: !3022, line: 42, baseType: !161, size: 32, offset: 2560)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3027, file: !3022, line: 43, baseType: !3020, size: 64, offset: 2624)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3021, file: !3022, line: 99, baseType: !3069, offset: 128)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3070, line: 211, elements: !807)
!3070 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3021, file: !3022, line: 100, baseType: !3072, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3022, line: 63, size: 3008, elements: !3074)
!3074 = !{!3075, !3076, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3106}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3073, file: !3022, line: 64, baseType: !3055, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3073, file: !3022, line: 65, baseType: !3077, size: 192, offset: 64)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3055, size: 192, elements: !1674)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3073, file: !3022, line: 67, baseType: !161, size: 32, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3073, file: !3022, line: 68, baseType: !1414, size: 256, offset: 320)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3073, file: !3022, line: 69, baseType: !1291, size: 32, offset: 576)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3073, file: !3022, line: 70, baseType: !1414, size: 256, offset: 640)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3073, file: !3022, line: 71, baseType: !116, size: 64, offset: 896)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3073, file: !3022, line: 72, baseType: !116, size: 64, offset: 960)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3073, file: !3022, line: 73, baseType: !116, size: 64, offset: 1024)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3073, file: !3022, line: 74, baseType: !116, size: 64, offset: 1088)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3073, file: !3022, line: 75, baseType: !116, size: 64, offset: 1152)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3073, file: !3022, line: 76, baseType: !116, size: 64, offset: 1216)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3073, file: !3022, line: 77, baseType: !116, size: 64, offset: 1280)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3073, file: !3022, line: 78, baseType: !116, size: 64, offset: 1344)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3073, file: !3022, line: 79, baseType: !164, size: 8, offset: 1408)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3073, file: !3022, line: 80, baseType: !116, size: 64, offset: 1472)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3073, file: !3022, line: 81, baseType: !1414, size: 256, offset: 1536)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3073, file: !3022, line: 82, baseType: !1635, size: 256, offset: 1792)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3073, file: !3022, line: 84, baseType: !327, size: 32, offset: 2048)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3073, file: !3022, line: 87, baseType: !116, size: 64, offset: 2112)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3073, file: !3022, line: 88, baseType: !116, size: 64, offset: 2176)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3073, file: !3022, line: 89, baseType: !3098, size: 704, offset: 2240)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1480, line: 111, size: 704, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3105}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3098, file: !1480, line: 112, baseType: !1479, size: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3098, file: !1480, line: 113, baseType: !2143, size: 320, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3098, file: !1480, line: 116, baseType: !3103, size: 64, offset: 576)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1480, line: 18, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3098, file: !1480, line: 117, baseType: !161, size: 32, offset: 640)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3073, file: !3022, line: 90, baseType: !3020, size: 64, offset: 2944)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2807, file: !76, line: 515, baseType: !3108, size: 64, offset: 8064)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3110, line: 117, size: 128, elements: !3111)
!3110 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3109, file: !3110, line: 118, baseType: !1393, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3109, file: !3110, line: 119, baseType: !1393, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3109, file: !3110, line: 120, baseType: !1438, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2807, file: !76, line: 516, baseType: !7, size: 32, offset: 8128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2807, file: !76, line: 519, baseType: !7, size: 32, offset: 8160)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2807, file: !76, line: 520, baseType: !3118, size: 64, offset: 8192)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2807, file: !76, line: 523, baseType: !3120, size: 64, offset: 8256)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !76, line: 523, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2807, file: !76, line: 524, baseType: !7, size: 32, offset: 8320)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2807, file: !76, line: 525, baseType: !3125, size: 64, offset: 8384)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !76, line: 525, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2807, file: !76, line: 526, baseType: !7, size: 32, offset: 8448)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2807, file: !76, line: 533, baseType: !83, size: 64, offset: 8512)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2807, file: !76, line: 534, baseType: !7, size: 32, offset: 8576)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2807, file: !76, line: 535, baseType: !3132, size: 64, offset: 8640)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2807, file: !76, line: 536, baseType: !7, size: 32, offset: 8704)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2807, file: !76, line: 539, baseType: !161, size: 32, offset: 8736)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2807, file: !76, line: 540, baseType: !3136, size: 64, offset: 8768)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3138, line: 32, size: 64, elements: !3139)
!3138 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3139 = !{!3140, !3141}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3137, file: !3138, line: 33, baseType: !1393, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3137, file: !3138, line: 34, baseType: !1393, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2807, file: !76, line: 563, baseType: !301, size: 128, offset: 8832)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2807, file: !76, line: 565, baseType: !301, size: 128, offset: 8960)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2807, file: !76, line: 568, baseType: !235, size: 64, offset: 9088)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2807, file: !76, line: 570, baseType: !327, size: 32, offset: 9152)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !940, file: !941, line: 104, baseType: !100, size: 64, offset: 3200)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !940, file: !941, line: 106, baseType: !1599, size: 128, offset: 3264)
!3148 = !{!3149, !3150, !3151}
!3149 = !DILocalVariable(name: "irq", arg: 1, scope: !929, file: !19, line: 715, type: !7)
!3150 = !DILocalVariable(name: "chip", arg: 2, scope: !929, file: !19, line: 716, type: !932)
!3151 = !DILocalVariable(name: "handle", arg: 3, scope: !929, file: !19, line: 717, type: !934)
!3152 = !DILocation(line: 715, column: 58, scope: !929)
!3153 = !DILocation(line: 716, column: 33, scope: !929)
!3154 = !DILocation(line: 717, column: 29, scope: !929)
!3155 = !DILocation(line: 719, column: 32, scope: !929)
!3156 = !DILocation(line: 719, column: 37, scope: !929)
!3157 = !DILocation(line: 719, column: 43, scope: !929)
!3158 = !DILocation(line: 719, column: 2, scope: !929)
!3159 = !DILocation(line: 720, column: 1, scope: !929)
!3160 = distinct !DISubprogram(name: "irq_set_status_flags", scope: !19, file: !19, line: 760, type: !3161, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !7, !116}
!3163 = !{!3164, !3165}
!3164 = !DILocalVariable(name: "irq", arg: 1, scope: !3160, file: !19, line: 760, type: !7)
!3165 = !DILocalVariable(name: "set", arg: 2, scope: !3160, file: !19, line: 760, type: !116)
!3166 = !DILocation(line: 760, column: 54, scope: !3160)
!3167 = !DILocation(line: 760, column: 73, scope: !3160)
!3168 = !DILocation(line: 762, column: 20, scope: !3160)
!3169 = !DILocation(line: 762, column: 28, scope: !3160)
!3170 = !DILocation(line: 762, column: 2, scope: !3160)
!3171 = !DILocation(line: 763, column: 1, scope: !3160)
!3172 = !DISubprogram(name: "enable_irq", scope: !6, file: !6, line: 230, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3173 = !DISubprogram(name: "lapic_assign_legacy_vector", scope: !3174, file: !3174, line: 165, type: !3175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3174 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !7, !164}
!3177 = !DISubprogram(name: "irq_set_chip_and_handler_name", scope: !19, file: !19, line: 712, type: !3178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !7, !932, !934, !100}
!3180 = !DISubprogram(name: "irq_modify_status", scope: !19, file: !19, line: 758, type: !3181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !7, !116, !116}
!3183 = !DISubprogram(name: "register_syscore_ops", scope: !298, file: !298, line: 20, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{null, !3186}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!3187 = distinct !DISubprogram(name: "i8259A_suspend", scope: !3, file: !3, line: 255, type: !245, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3188 = !DILocation(line: 257, column: 2, scope: !3187)
!3189 = !DILocation(line: 258, column: 2, scope: !3187)
!3190 = distinct !DISubprogram(name: "i8259A_resume", scope: !3, file: !3, line: 249, type: !236, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3191 = !DILocation(line: 251, column: 13, scope: !3190)
!3192 = !DILocation(line: 251, column: 2, scope: !3190)
!3193 = !DILocation(line: 252, column: 2, scope: !3190)
!3194 = !DILocation(line: 253, column: 1, scope: !3190)
!3195 = distinct !DISubprogram(name: "i8259A_shutdown", scope: !3, file: !3, line: 261, type: !236, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3196 = !DILocation(line: 267, column: 2, scope: !3195)
!3197 = !DILocation(line: 268, column: 2, scope: !3195)
!3198 = !DILocation(line: 269, column: 1, scope: !3195)
!3199 = distinct !DISubprogram(name: "save_ELCR", scope: !3, file: !3, line: 242, type: !3200, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !1773}
!3202 = !{!3203}
!3203 = !DILocalVariable(name: "trigger", arg: 1, scope: !3199, file: !3, line: 242, type: !1773)
!3204 = !DILocation(line: 242, column: 29, scope: !3199)
!3205 = !DILocation(line: 245, column: 15, scope: !3199)
!3206 = !DILocation(line: 245, column: 30, scope: !3199)
!3207 = !DILocation(line: 245, column: 2, scope: !3199)
!3208 = !DILocation(line: 245, column: 13, scope: !3199)
!3209 = !DILocation(line: 246, column: 15, scope: !3199)
!3210 = !DILocation(line: 246, column: 30, scope: !3199)
!3211 = !DILocation(line: 246, column: 2, scope: !3199)
!3212 = !DILocation(line: 246, column: 13, scope: !3199)
!3213 = !DILocation(line: 247, column: 1, scope: !3199)
!3214 = distinct !DISubprogram(name: "restore_ELCR", scope: !3, file: !3, line: 236, type: !3200, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3215)
!3215 = !{!3216}
!3216 = !DILocalVariable(name: "trigger", arg: 1, scope: !3214, file: !3, line: 236, type: !1773)
!3217 = !DILocation(line: 236, column: 32, scope: !3214)
!3218 = !DILocation(line: 238, column: 7, scope: !3214)
!3219 = !DILocation(line: 238, column: 2, scope: !3214)
!3220 = !DILocation(line: 239, column: 7, scope: !3214)
!3221 = !DILocation(line: 239, column: 2, scope: !3214)
!3222 = !DILocation(line: 240, column: 1, scope: !3214)
