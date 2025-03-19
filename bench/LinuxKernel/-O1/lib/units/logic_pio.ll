; ModuleID = 'lib/logic_pio.c'
source_filename = "lib/logic_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.logic_pio_hwaddr = type { %struct.list_head, ptr, i64, i64, i64, i64, ptr, ptr }

@io_range_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @io_range_mutex, i64 16), ptr getelementptr (i8, ptr @io_range_mutex, i64 16) } }, align 8, !dbg !0
@io_range_list = internal global %struct.list_head { ptr @io_range_list, ptr @io_range_list }, align 8, !dbg !223
@.str = private unnamed_addr constant [62 x i8] c"\014LOGIC PIO: Requested IO range too big, new size set to 64K\0A\00", align 1, !dbg !203
@.str.1 = private unnamed_addr constant [44 x i8] c"\013LOGIC PIO: IO range not found or invalid\0A\00", align 1, !dbg !208
@.str.2 = private unnamed_addr constant [64 x i8] c"\013LOGIC PIO: resource size %pa cannot fit in IO range size %pa\0A\00", align 1, !dbg !213
@.str.3 = private unnamed_addr constant [55 x i8] c"\013LOGIC PIO: addr %pa not registered in io_range_list\0A\00", align 1, !dbg !218
@.str.4 = private unnamed_addr constant [44 x i8] c"\013LOGIC PIO: PIO entry token 0x%lx invalid\0A\00", align 1, !dbg !225

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @logic_pio_register_range(ptr noundef %new_range) #0 align 16 !dbg !286 {
entry:
  %retval = alloca i32, align 4
  %new_range.addr = alloca ptr, align 8
  %range = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %mmio_end = alloca i64, align 8
  %iio_sz = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr42 = alloca ptr, align 8
  %tmp44 = alloca ptr, align 8
  %tmp59 = alloca i32, align 4
  store ptr %new_range, ptr %new_range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_range.addr, metadata !290, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #7, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %range, metadata !291, metadata !DIExpression()), !dbg !306
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %start, metadata !292, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %end, metadata !293, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmio_end) #7, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %mmio_end, metadata !294, metadata !DIExpression()), !dbg !312
  store i64 0, ptr %mmio_end, align 8, !dbg !312
  call void @llvm.lifetime.start.p0(i64 8, ptr %iio_sz) #7, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %iio_sz, metadata !295, metadata !DIExpression()), !dbg !314
  store i64 65535, ptr %iio_sz, align 8, !dbg !314
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !296, metadata !DIExpression()), !dbg !316
  store i32 0, ptr %ret, align 4, !dbg !316
  %0 = load ptr, ptr %new_range.addr, align 8, !dbg !317
  %tobool = icmp ne ptr %0, null, !dbg !317
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !319

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %new_range.addr, align 8, !dbg !320
  %fwnode = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %1, i32 0, i32 1, !dbg !321
  %2 = load ptr, ptr %fwnode, align 8, !dbg !321
  %tobool1 = icmp ne ptr %2, null, !dbg !320
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !322

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %new_range.addr, align 8, !dbg !323
  %size = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %3, i32 0, i32 4, !dbg !324
  %4 = load i64, ptr %size, align 8, !dbg !324
  %tobool3 = icmp ne i64 %4, 0, !dbg !323
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !325

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %new_range.addr, align 8, !dbg !326
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %5, i32 0, i32 5, !dbg !327
  %6 = load i64, ptr %flags, align 8, !dbg !327
  %cmp = icmp eq i64 %6, 0, !dbg !328
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !329

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %new_range.addr, align 8, !dbg !330
  %ops = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 7, !dbg !331
  %8 = load ptr, ptr %ops, align 8, !dbg !331
  %tobool5 = icmp ne ptr %8, null, !dbg !330
  br i1 %tobool5, label %if.end, label %if.then, !dbg !332

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !333

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false4
  %9 = load ptr, ptr %new_range.addr, align 8, !dbg !334
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %9, i32 0, i32 2, !dbg !335
  %10 = load i64, ptr %hw_start, align 8, !dbg !335
  store i64 %10, ptr %start, align 8, !dbg !336
  %11 = load ptr, ptr %new_range.addr, align 8, !dbg !337
  %hw_start6 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %11, i32 0, i32 2, !dbg !338
  %12 = load i64, ptr %hw_start6, align 8, !dbg !338
  %13 = load ptr, ptr %new_range.addr, align 8, !dbg !339
  %size7 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %13, i32 0, i32 4, !dbg !340
  %14 = load i64, ptr %size7, align 8, !dbg !340
  %add = add i64 %12, %14, !dbg !341
  store i64 %add, ptr %end, align 8, !dbg !342
  call void @mutex_lock(ptr noundef @io_range_mutex) #8, !dbg !343
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !297, metadata !DIExpression()), !dbg !344
  %15 = load ptr, ptr @io_range_list, align 8, !dbg !344
  store ptr %15, ptr %__mptr, align 8, !dbg !344
  %16 = load ptr, ptr %__mptr, align 8, !dbg !344
  %add.ptr = getelementptr i8, ptr %16, i64 0, !dbg !344
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !345
  %17 = load ptr, ptr %tmp, align 8, !dbg !344
  store ptr %17, ptr %range, align 8, !dbg !345
  br label %for.cond, !dbg !345

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load ptr, ptr %range, align 8, !dbg !346
  %list = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %18, i32 0, i32 0, !dbg !346
  %cmp8 = icmp eq ptr %list, @io_range_list, !dbg !346
  %lnot = xor i1 %cmp8, true, !dbg !346
  br i1 %lnot, label %for.body, label %for.end, !dbg !345

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %range, align 8, !dbg !347
  %fwnode9 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %19, i32 0, i32 1, !dbg !350
  %20 = load ptr, ptr %fwnode9, align 8, !dbg !350
  %21 = load ptr, ptr %new_range.addr, align 8, !dbg !351
  %fwnode10 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %21, i32 0, i32 1, !dbg !352
  %22 = load ptr, ptr %fwnode10, align 8, !dbg !352
  %cmp11 = icmp eq ptr %20, %22, !dbg !353
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !354

if.then12:                                        ; preds = %for.body
  store i32 -17, ptr %ret, align 4, !dbg !355
  br label %end_register, !dbg !357

if.end13:                                         ; preds = %for.body
  %23 = load ptr, ptr %range, align 8, !dbg !358
  %flags14 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %23, i32 0, i32 5, !dbg !360
  %24 = load i64, ptr %flags14, align 8, !dbg !360
  %cmp15 = icmp eq i64 %24, 1, !dbg !361
  br i1 %cmp15, label %land.lhs.true16, label %if.else31, !dbg !362

land.lhs.true16:                                  ; preds = %if.end13
  %25 = load ptr, ptr %new_range.addr, align 8, !dbg !363
  %flags17 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %25, i32 0, i32 5, !dbg !364
  %26 = load i64, ptr %flags17, align 8, !dbg !364
  %cmp18 = icmp eq i64 %26, 1, !dbg !365
  br i1 %cmp18, label %if.then19, label %if.else31, !dbg !366

if.then19:                                        ; preds = %land.lhs.true16
  %27 = load i64, ptr %start, align 8, !dbg !367
  %28 = load ptr, ptr %range, align 8, !dbg !370
  %hw_start20 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %28, i32 0, i32 2, !dbg !371
  %29 = load i64, ptr %hw_start20, align 8, !dbg !371
  %30 = load ptr, ptr %range, align 8, !dbg !372
  %size21 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %30, i32 0, i32 4, !dbg !373
  %31 = load i64, ptr %size21, align 8, !dbg !373
  %add22 = add i64 %29, %31, !dbg !374
  %cmp23 = icmp uge i64 %27, %add22, !dbg !375
  br i1 %cmp23, label %if.then27, label %lor.lhs.false24, !dbg !376

lor.lhs.false24:                                  ; preds = %if.then19
  %32 = load i64, ptr %end, align 8, !dbg !377
  %33 = load ptr, ptr %range, align 8, !dbg !378
  %hw_start25 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %33, i32 0, i32 2, !dbg !379
  %34 = load i64, ptr %hw_start25, align 8, !dbg !379
  %cmp26 = icmp ult i64 %32, %34, !dbg !380
  br i1 %cmp26, label %if.then27, label %if.else, !dbg !381

if.then27:                                        ; preds = %lor.lhs.false24, %if.then19
  %35 = load ptr, ptr %range, align 8, !dbg !382
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %35, i32 0, i32 3, !dbg !384
  %36 = load i64, ptr %io_start, align 8, !dbg !384
  %37 = load ptr, ptr %range, align 8, !dbg !385
  %size28 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %37, i32 0, i32 4, !dbg !386
  %38 = load i64, ptr %size28, align 8, !dbg !386
  %add29 = add i64 %36, %38, !dbg !387
  store i64 %add29, ptr %mmio_end, align 8, !dbg !388
  br label %if.end30, !dbg !389

if.else:                                          ; preds = %lor.lhs.false24
  store i32 -14, ptr %ret, align 4, !dbg !390
  br label %end_register, !dbg !392

if.end30:                                         ; preds = %if.then27
  br label %if.end41, !dbg !393

if.else31:                                        ; preds = %land.lhs.true16, %if.end13
  %39 = load ptr, ptr %range, align 8, !dbg !394
  %flags32 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %39, i32 0, i32 5, !dbg !396
  %40 = load i64, ptr %flags32, align 8, !dbg !396
  %cmp33 = icmp eq i64 %40, 0, !dbg !397
  br i1 %cmp33, label %land.lhs.true34, label %if.end40, !dbg !398

land.lhs.true34:                                  ; preds = %if.else31
  %41 = load ptr, ptr %new_range.addr, align 8, !dbg !399
  %flags35 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %41, i32 0, i32 5, !dbg !400
  %42 = load i64, ptr %flags35, align 8, !dbg !400
  %cmp36 = icmp eq i64 %42, 0, !dbg !401
  br i1 %cmp36, label %if.then37, label %if.end40, !dbg !402

if.then37:                                        ; preds = %land.lhs.true34
  %43 = load ptr, ptr %range, align 8, !dbg !403
  %size38 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %43, i32 0, i32 4, !dbg !405
  %44 = load i64, ptr %size38, align 8, !dbg !405
  %45 = load i64, ptr %iio_sz, align 8, !dbg !406
  %add39 = add i64 %45, %44, !dbg !406
  store i64 %add39, ptr %iio_sz, align 8, !dbg !406
  br label %if.end40, !dbg !407

if.end40:                                         ; preds = %if.then37, %land.lhs.true34, %if.else31
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end30
  br label %for.inc, !dbg !408

for.inc:                                          ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr42) #7, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %__mptr42, metadata !300, metadata !DIExpression()), !dbg !409
  %46 = load ptr, ptr %range, align 8, !dbg !409
  %list43 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %46, i32 0, i32 0, !dbg !409
  %next = getelementptr inbounds %struct.list_head, ptr %list43, i32 0, i32 0, !dbg !409
  %47 = load ptr, ptr %next, align 8, !dbg !409
  store ptr %47, ptr %__mptr42, align 8, !dbg !409
  %48 = load ptr, ptr %__mptr42, align 8, !dbg !409
  %add.ptr45 = getelementptr i8, ptr %48, i64 0, !dbg !409
  store ptr %add.ptr45, ptr %tmp44, align 8, !dbg !409
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr42) #7, !dbg !346
  %49 = load ptr, ptr %tmp44, align 8, !dbg !409
  store ptr %49, ptr %range, align 8, !dbg !346
  br label %for.cond, !dbg !346, !llvm.loop !410

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %new_range.addr, align 8, !dbg !414
  %flags46 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %50, i32 0, i32 5, !dbg !416
  %51 = load i64, ptr %flags46, align 8, !dbg !416
  %cmp47 = icmp eq i64 %51, 1, !dbg !417
  br i1 %cmp47, label %if.then48, label %if.else62, !dbg !418

if.then48:                                        ; preds = %for.end
  %52 = load i64, ptr %mmio_end, align 8, !dbg !419
  %53 = load ptr, ptr %new_range.addr, align 8, !dbg !422
  %size49 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %53, i32 0, i32 4, !dbg !423
  %54 = load i64, ptr %size49, align 8, !dbg !423
  %add50 = add i64 %52, %54, !dbg !424
  %sub = sub i64 %add50, 1, !dbg !425
  %cmp51 = icmp ugt i64 %sub, 65535, !dbg !426
  br i1 %cmp51, label %if.then52, label %if.end60, !dbg !427

if.then52:                                        ; preds = %if.then48
  %55 = load i64, ptr %mmio_end, align 8, !dbg !428
  %add53 = add i64 %55, 65536, !dbg !431
  %sub54 = sub i64 %add53, 1, !dbg !432
  %cmp55 = icmp ugt i64 %sub54, 65535, !dbg !433
  br i1 %cmp55, label %if.then56, label %if.end57, !dbg !434

if.then56:                                        ; preds = %if.then52
  store i32 -7, ptr %ret, align 4, !dbg !435
  br label %end_register, !dbg !437

if.end57:                                         ; preds = %if.then52
  %56 = load ptr, ptr %new_range.addr, align 8, !dbg !438
  %size58 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %56, i32 0, i32 4, !dbg !439
  store i64 65536, ptr %size58, align 8, !dbg !440
  br label %do.body, !dbg !441

do.body:                                          ; preds = %if.end57
  br label %do.cond, !dbg !443

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !443

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #9, !dbg !441
  store i32 %call, ptr %tmp59, align 4, !dbg !443
  %57 = load i32, ptr %tmp59, align 4, !dbg !441
  br label %if.end60, !dbg !445

if.end60:                                         ; preds = %do.end, %if.then48
  %58 = load i64, ptr %mmio_end, align 8, !dbg !446
  %59 = load ptr, ptr %new_range.addr, align 8, !dbg !447
  %io_start61 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %59, i32 0, i32 3, !dbg !448
  store i64 %58, ptr %io_start61, align 8, !dbg !449
  br label %if.end75, !dbg !450

if.else62:                                        ; preds = %for.end
  %60 = load ptr, ptr %new_range.addr, align 8, !dbg !451
  %flags63 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %60, i32 0, i32 5, !dbg !453
  %61 = load i64, ptr %flags63, align 8, !dbg !453
  %cmp64 = icmp eq i64 %61, 0, !dbg !454
  br i1 %cmp64, label %if.then65, label %if.else73, !dbg !455

if.then65:                                        ; preds = %if.else62
  %62 = load i64, ptr %iio_sz, align 8, !dbg !456
  %63 = load ptr, ptr %new_range.addr, align 8, !dbg !459
  %size66 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %63, i32 0, i32 4, !dbg !460
  %64 = load i64, ptr %size66, align 8, !dbg !460
  %add67 = add i64 %62, %64, !dbg !461
  %sub68 = sub i64 %add67, 1, !dbg !462
  %cmp69 = icmp ugt i64 %sub68, 65535, !dbg !463
  br i1 %cmp69, label %if.then70, label %if.end71, !dbg !464

if.then70:                                        ; preds = %if.then65
  store i32 -7, ptr %ret, align 4, !dbg !465
  br label %end_register, !dbg !467

if.end71:                                         ; preds = %if.then65
  %65 = load i64, ptr %iio_sz, align 8, !dbg !468
  %66 = load ptr, ptr %new_range.addr, align 8, !dbg !469
  %io_start72 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %66, i32 0, i32 3, !dbg !470
  store i64 %65, ptr %io_start72, align 8, !dbg !471
  br label %if.end74, !dbg !472

if.else73:                                        ; preds = %if.else62
  store i32 -22, ptr %ret, align 4, !dbg !473
  br label %end_register, !dbg !475

if.end74:                                         ; preds = %if.end71
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end60
  %67 = load ptr, ptr %new_range.addr, align 8, !dbg !476
  %list76 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %67, i32 0, i32 0, !dbg !477
  call void @list_add_tail_rcu(ptr noundef %list76, ptr noundef @io_range_list) #8, !dbg !478
  br label %end_register, !dbg !478

end_register:                                     ; preds = %if.end75, %if.else73, %if.then70, %if.then56, %if.else, %if.then12
  call void @llvm.dbg.label(metadata !303), !dbg !479
  call void @mutex_unlock(ptr noundef @io_range_mutex) #8, !dbg !480
  %68 = load i32, ptr %ret, align 4, !dbg !481
  store i32 %68, ptr %retval, align 4, !dbg !482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !482

cleanup:                                          ; preds = %end_register, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !483
  call void @llvm.lifetime.end.p0(i64 8, ptr %iio_sz) #7, !dbg !483
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmio_end) #7, !dbg !483
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !483
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !483
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #7, !dbg !483
  %69 = load i32, ptr %retval, align 4, !dbg !483
  ret i32 %69, !dbg !483
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !484 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !488 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !492 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !497, metadata !DIExpression()), !dbg !499
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !498, metadata !DIExpression()), !dbg !500
  %0 = load ptr, ptr %new.addr, align 8, !dbg !501
  %1 = load ptr, ptr %head.addr, align 8, !dbg !502
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !503
  %2 = load ptr, ptr %prev, align 8, !dbg !503
  %3 = load ptr, ptr %head.addr, align 8, !dbg !504
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %2, ptr noundef %3) #8, !dbg !505
  ret void, !dbg !506
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !507 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @logic_pio_unregister_range(ptr noundef %range) #0 align 16 !dbg !508 {
entry:
  %range.addr = alloca ptr, align 8
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !512, metadata !DIExpression()), !dbg !513
  call void @mutex_lock(ptr noundef @io_range_mutex) #8, !dbg !514
  %0 = load ptr, ptr %range.addr, align 8, !dbg !515
  %list = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %0, i32 0, i32 0, !dbg !516
  call void @list_del_rcu(ptr noundef %list) #8, !dbg !517
  call void @mutex_unlock(ptr noundef @io_range_mutex) #8, !dbg !518
  call void @synchronize_rcu() #8, !dbg !519
  ret void, !dbg !520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #5 align 16 !dbg !521 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !527
  call void @__list_del_entry(ptr noundef %0) #8, !dbg !528
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !529
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !530
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !533 dso_local void @synchronize_rcu() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @find_io_range_by_fwnode(ptr noundef %fwnode) #0 align 16 !dbg !537 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %range = alloca ptr, align 8
  %found_range = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !541, metadata !DIExpression()), !dbg !550
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #7, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %range, metadata !542, metadata !DIExpression()), !dbg !552
  call void @llvm.lifetime.start.p0(i64 8, ptr %found_range) #7, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %found_range, metadata !543, metadata !DIExpression()), !dbg !553
  store ptr null, ptr %found_range, align 8, !dbg !553
  call void @rcu_read_lock() #8, !dbg !554
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !544, metadata !DIExpression()), !dbg !555
  br label %do.body, !dbg !556

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !558

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !558

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr @io_range_list, align 8, !dbg !556
  store ptr %0, ptr %tmp, align 8, !dbg !558
  %1 = load ptr, ptr %tmp, align 8, !dbg !556
  store ptr %1, ptr %__mptr, align 8, !dbg !555
  %2 = load ptr, ptr %__mptr, align 8, !dbg !555
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !555
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !555
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !560
  %3 = load ptr, ptr %tmp1, align 8, !dbg !555
  store ptr %3, ptr %range, align 8, !dbg !560
  br label %for.cond, !dbg !560

for.cond:                                         ; preds = %do.end7, %do.end
  %4 = load ptr, ptr %range, align 8, !dbg !561
  %list = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %4, i32 0, i32 0, !dbg !561
  %cmp = icmp ne ptr %list, @io_range_list, !dbg !561
  br i1 %cmp, label %for.body, label %for.end, !dbg !560

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %range, align 8, !dbg !562
  %fwnode2 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %5, i32 0, i32 1, !dbg !565
  %6 = load ptr, ptr %fwnode2, align 8, !dbg !565
  %7 = load ptr, ptr %fwnode.addr, align 8, !dbg !566
  %cmp3 = icmp eq ptr %6, %7, !dbg !567
  br i1 %cmp3, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %range, align 8, !dbg !569
  store ptr %8, ptr %found_range, align 8, !dbg !571
  br label %for.end, !dbg !572

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !573

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #7, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !547, metadata !DIExpression()), !dbg !574
  br label %do.body5, !dbg !575

do.body5:                                         ; preds = %for.inc
  br label %do.cond6, !dbg !577

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !577

do.end7:                                          ; preds = %do.cond6
  %9 = load ptr, ptr %range, align 8, !dbg !575
  %list9 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %9, i32 0, i32 0, !dbg !575
  %next = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !575
  %10 = load volatile ptr, ptr %next, align 8, !dbg !575
  store ptr %10, ptr %tmp8, align 8, !dbg !577
  %11 = load ptr, ptr %tmp8, align 8, !dbg !575
  store ptr %11, ptr %__mptr4, align 8, !dbg !574
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !574
  %add.ptr11 = getelementptr i8, ptr %12, i64 0, !dbg !574
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !574
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #7, !dbg !561
  %13 = load ptr, ptr %tmp10, align 8, !dbg !574
  store ptr %13, ptr %range, align 8, !dbg !561
  br label %for.cond, !dbg !561, !llvm.loop !579

for.end:                                          ; preds = %if.then, %for.cond
  call void @rcu_read_unlock() #8, !dbg !581
  %14 = load ptr, ptr %found_range, align 8, !dbg !582
  call void @llvm.lifetime.end.p0(i64 8, ptr %found_range) #7, !dbg !583
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #7, !dbg !583
  ret ptr %14, !dbg !584
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !585 {
entry:
  call void @__rcu_read_lock() #8, !dbg !586
  br label %do.body, !dbg !587

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !588

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !590

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !591

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !593
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !594 {
entry:
  br label %do.body, !dbg !595

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !596

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #8, !dbg !598
  br label %do.body1, !dbg !599

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !600

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @logic_pio_to_hwaddr(i64 noundef %pio) #0 align 16 !dbg !603 {
entry:
  %retval = alloca i64, align 8
  %pio.addr = alloca i64, align 8
  %range = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %pio, ptr %pio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pio.addr, metadata !607, metadata !DIExpression()), !dbg !609
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #7, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %range, metadata !608, metadata !DIExpression()), !dbg !611
  %0 = load i64, ptr %pio.addr, align 8, !dbg !612
  %call = call ptr @find_io_range(i64 noundef %0) #8, !dbg !613
  store ptr %call, ptr %range, align 8, !dbg !614
  %1 = load ptr, ptr %range, align 8, !dbg !615
  %tobool = icmp ne ptr %1, null, !dbg !615
  br i1 %tobool, label %if.then, label %if.end, !dbg !617

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %range, align 8, !dbg !618
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %2, i32 0, i32 2, !dbg !619
  %3 = load i64, ptr %hw_start, align 8, !dbg !619
  %4 = load i64, ptr %pio.addr, align 8, !dbg !620
  %add = add i64 %3, %4, !dbg !621
  %5 = load ptr, ptr %range, align 8, !dbg !622
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %5, i32 0, i32 3, !dbg !623
  %6 = load i64, ptr %io_start, align 8, !dbg !623
  %sub = sub i64 %add, %6, !dbg !624
  store i64 %sub, ptr %retval, align 8, !dbg !625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !625

if.end:                                           ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !626

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #7, !dbg !627
  %7 = load i64, ptr %retval, align 8, !dbg !627
  ret i64 %7, !dbg !627
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_io_range(i64 noundef %pio) #0 align 16 !dbg !628 {
entry:
  %pio.addr = alloca i64, align 8
  %range = alloca ptr, align 8
  %found_range = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %tmp21 = alloca i32, align 4
  store i64 %pio, ptr %pio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pio.addr, metadata !632, metadata !DIExpression()), !dbg !641
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #7, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %range, metadata !633, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 8, ptr %found_range) #7, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %found_range, metadata !634, metadata !DIExpression()), !dbg !644
  store ptr null, ptr %found_range, align 8, !dbg !644
  call void @rcu_read_lock() #8, !dbg !645
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !635, metadata !DIExpression()), !dbg !646
  br label %do.body, !dbg !647

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !649

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !649

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr @io_range_list, align 8, !dbg !647
  store ptr %0, ptr %tmp, align 8, !dbg !649
  %1 = load ptr, ptr %tmp, align 8, !dbg !647
  store ptr %1, ptr %__mptr, align 8, !dbg !646
  %2 = load ptr, ptr %__mptr, align 8, !dbg !646
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !646
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !646
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !651
  %3 = load ptr, ptr %tmp1, align 8, !dbg !646
  store ptr %3, ptr %range, align 8, !dbg !651
  br label %for.cond, !dbg !651

for.cond:                                         ; preds = %do.end12, %do.end
  %4 = load ptr, ptr %range, align 8, !dbg !652
  %list = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %4, i32 0, i32 0, !dbg !652
  %cmp = icmp ne ptr %list, @io_range_list, !dbg !652
  br i1 %cmp, label %for.body, label %for.end, !dbg !651

for.body:                                         ; preds = %for.cond
  br i1 false, label %cond.true, label %cond.false, !dbg !653

cond.true:                                        ; preds = %for.body
  %5 = load i64, ptr %pio.addr, align 8, !dbg !655
  %conv = trunc i64 %5 to i32, !dbg !655
  %6 = load ptr, ptr %range, align 8, !dbg !655
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 3, !dbg !655
  %7 = load i64, ptr %io_start, align 8, !dbg !655
  %conv2 = trunc i64 %7 to i32, !dbg !655
  %8 = load ptr, ptr %range, align 8, !dbg !655
  %size = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %8, i32 0, i32 4, !dbg !655
  %9 = load i64, ptr %size, align 8, !dbg !655
  %conv3 = trunc i64 %9 to i32, !dbg !655
  %call = call zeroext i1 @in_range32(i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #8, !dbg !655
  br i1 %call, label %if.then, label %if.end, !dbg !655

cond.false:                                       ; preds = %for.body
  %10 = load i64, ptr %pio.addr, align 8, !dbg !655
  %11 = load ptr, ptr %range, align 8, !dbg !655
  %io_start5 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %11, i32 0, i32 3, !dbg !655
  %12 = load i64, ptr %io_start5, align 8, !dbg !655
  %13 = load ptr, ptr %range, align 8, !dbg !655
  %size6 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %13, i32 0, i32 4, !dbg !655
  %14 = load i64, ptr %size6, align 8, !dbg !655
  %call7 = call zeroext i1 @in_range64(i64 noundef %10, i64 noundef %12, i64 noundef %14) #8, !dbg !655
  br i1 %call7, label %if.then, label %if.end, !dbg !653

if.then:                                          ; preds = %cond.false, %cond.true
  %15 = load ptr, ptr %range, align 8, !dbg !657
  store ptr %15, ptr %found_range, align 8, !dbg !659
  br label %for.end, !dbg !660

if.end:                                           ; preds = %cond.false, %cond.true
  br label %for.inc, !dbg !661

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #7, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !638, metadata !DIExpression()), !dbg !662
  br label %do.body10, !dbg !663

do.body10:                                        ; preds = %for.inc
  br label %do.cond11, !dbg !665

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !665

do.end12:                                         ; preds = %do.cond11
  %16 = load ptr, ptr %range, align 8, !dbg !663
  %list14 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %16, i32 0, i32 0, !dbg !663
  %next = getelementptr inbounds %struct.list_head, ptr %list14, i32 0, i32 0, !dbg !663
  %17 = load volatile ptr, ptr %next, align 8, !dbg !663
  store ptr %17, ptr %tmp13, align 8, !dbg !665
  %18 = load ptr, ptr %tmp13, align 8, !dbg !663
  store ptr %18, ptr %__mptr9, align 8, !dbg !662
  %19 = load ptr, ptr %__mptr9, align 8, !dbg !662
  %add.ptr16 = getelementptr i8, ptr %19, i64 0, !dbg !662
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #7, !dbg !652
  %20 = load ptr, ptr %tmp15, align 8, !dbg !662
  store ptr %20, ptr %range, align 8, !dbg !652
  br label %for.cond, !dbg !652, !llvm.loop !667

for.end:                                          ; preds = %if.then, %for.cond
  call void @rcu_read_unlock() #8, !dbg !669
  %21 = load ptr, ptr %found_range, align 8, !dbg !670
  %tobool = icmp ne ptr %21, null, !dbg !670
  br i1 %tobool, label %if.end23, label %if.then17, !dbg !672

if.then17:                                        ; preds = %for.end
  br label %do.body18, !dbg !673

do.body18:                                        ; preds = %if.then17
  br label %do.cond19, !dbg !675

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !675

do.end20:                                         ; preds = %do.cond19
  %22 = load i64, ptr %pio.addr, align 8, !dbg !673
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %22) #9, !dbg !673
  store i32 %call22, ptr %tmp21, align 4, !dbg !675
  %23 = load i32, ptr %tmp21, align 4, !dbg !673
  br label %if.end23, !dbg !677

if.end23:                                         ; preds = %do.end20, %for.end
  %24 = load ptr, ptr %found_range, align 8, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %found_range) #7, !dbg !679
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #7, !dbg !679
  ret ptr %24, !dbg !680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @logic_pio_trans_hwaddr(ptr noundef %fwnode, i64 noundef %addr, i64 noundef %size) #0 align 16 !dbg !681 {
entry:
  %retval = alloca i64, align 8
  %fwnode.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %range = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !685, metadata !DIExpression()), !dbg !689
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !686, metadata !DIExpression()), !dbg !690
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !687, metadata !DIExpression()), !dbg !691
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #7, !dbg !692
  call void @llvm.dbg.declare(metadata ptr %range, metadata !688, metadata !DIExpression()), !dbg !693
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !694
  %call = call ptr @find_io_range_by_fwnode(ptr noundef %0) #8, !dbg !695
  store ptr %call, ptr %range, align 8, !dbg !696
  %1 = load ptr, ptr %range, align 8, !dbg !697
  %tobool = icmp ne ptr %1, null, !dbg !697
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !699

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %range, align 8, !dbg !700
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %2, i32 0, i32 5, !dbg !701
  %3 = load i64, ptr %flags, align 8, !dbg !701
  %cmp = icmp eq i64 %3, 1, !dbg !702
  br i1 %cmp, label %if.then, label %if.end, !dbg !703

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !704

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !707

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !707

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #9, !dbg !704
  store i32 %call1, ptr %tmp, align 4, !dbg !707
  %4 = load i32, ptr %tmp, align 4, !dbg !704
  store i64 -1, ptr %retval, align 8, !dbg !709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !709

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %range, align 8, !dbg !710
  %size2 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %5, i32 0, i32 4, !dbg !712
  %6 = load i64, ptr %size2, align 8, !dbg !712
  %7 = load i64, ptr %size.addr, align 8, !dbg !713
  %cmp3 = icmp ult i64 %6, %7, !dbg !714
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !715

if.then4:                                         ; preds = %if.end
  br label %do.body5, !dbg !716

do.body5:                                         ; preds = %if.then4
  br label %do.cond6, !dbg !719

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !719

do.end7:                                          ; preds = %do.cond6
  %8 = load ptr, ptr %range, align 8, !dbg !716
  %size9 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %8, i32 0, i32 4, !dbg !716
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %size.addr, ptr noundef %size9) #9, !dbg !716
  store i32 %call10, ptr %tmp8, align 4, !dbg !719
  %9 = load i32, ptr %tmp8, align 4, !dbg !716
  store i64 -1, ptr %retval, align 8, !dbg !721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !721

if.end11:                                         ; preds = %if.end
  %10 = load i64, ptr %addr.addr, align 8, !dbg !722
  %11 = load ptr, ptr %range, align 8, !dbg !723
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %11, i32 0, i32 2, !dbg !724
  %12 = load i64, ptr %hw_start, align 8, !dbg !724
  %sub = sub i64 %10, %12, !dbg !725
  %13 = load ptr, ptr %range, align 8, !dbg !726
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %13, i32 0, i32 3, !dbg !727
  %14 = load i64, ptr %io_start, align 8, !dbg !727
  %add = add i64 %sub, %14, !dbg !728
  store i64 %add, ptr %retval, align 8, !dbg !729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !729

cleanup:                                          ; preds = %if.end11, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #7, !dbg !730
  %15 = load i64, ptr %retval, align 8, !dbg !730
  ret i64 %15, !dbg !730
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @logic_pio_trans_cpuaddr(i64 noundef %addr) #0 align 16 !dbg !731 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %range = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cpuaddr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr13 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %tmp24 = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !735, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #7, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %range, metadata !736, metadata !DIExpression()), !dbg !749
  call void @rcu_read_lock() #8, !dbg !750
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !751
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !737, metadata !DIExpression()), !dbg !751
  br label %do.body, !dbg !752

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !754

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !754

do.end:                                           ; preds = %do.cond
  %0 = load volatile ptr, ptr @io_range_list, align 8, !dbg !752
  store ptr %0, ptr %tmp, align 8, !dbg !754
  %1 = load ptr, ptr %tmp, align 8, !dbg !752
  store ptr %1, ptr %__mptr, align 8, !dbg !751
  %2 = load ptr, ptr %__mptr, align 8, !dbg !751
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !751
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !756
  %3 = load ptr, ptr %tmp1, align 8, !dbg !751
  store ptr %3, ptr %range, align 8, !dbg !756
  br label %for.cond, !dbg !756

for.cond:                                         ; preds = %do.end16, %do.end
  %4 = load ptr, ptr %range, align 8, !dbg !757
  %list = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %4, i32 0, i32 0, !dbg !757
  %cmp = icmp ne ptr %list, @io_range_list, !dbg !757
  br i1 %cmp, label %for.body, label %for.end, !dbg !756

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %range, align 8, !dbg !758
  %flags = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %5, i32 0, i32 5, !dbg !760
  %6 = load i64, ptr %flags, align 8, !dbg !760
  %cmp2 = icmp ne i64 %6, 1, !dbg !761
  br i1 %cmp2, label %if.then, label %if.end, !dbg !762

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !763

if.end:                                           ; preds = %for.body
  br i1 false, label %cond.true, label %cond.false, !dbg !764

cond.true:                                        ; preds = %if.end
  %7 = load i64, ptr %addr.addr, align 8, !dbg !765
  %conv = trunc i64 %7 to i32, !dbg !765
  %8 = load ptr, ptr %range, align 8, !dbg !765
  %hw_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %8, i32 0, i32 2, !dbg !765
  %9 = load i64, ptr %hw_start, align 8, !dbg !765
  %conv3 = trunc i64 %9 to i32, !dbg !765
  %10 = load ptr, ptr %range, align 8, !dbg !765
  %size = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %10, i32 0, i32 4, !dbg !765
  %11 = load i64, ptr %size, align 8, !dbg !765
  %conv4 = trunc i64 %11 to i32, !dbg !765
  %call = call zeroext i1 @in_range32(i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #8, !dbg !765
  br i1 %call, label %if.then10, label %if.end12, !dbg !765

cond.false:                                       ; preds = %if.end
  %12 = load i64, ptr %addr.addr, align 8, !dbg !765
  %13 = load ptr, ptr %range, align 8, !dbg !765
  %hw_start6 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %13, i32 0, i32 2, !dbg !765
  %14 = load i64, ptr %hw_start6, align 8, !dbg !765
  %15 = load ptr, ptr %range, align 8, !dbg !765
  %size7 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %15, i32 0, i32 4, !dbg !765
  %16 = load i64, ptr %size7, align 8, !dbg !765
  %call8 = call zeroext i1 @in_range64(i64 noundef %12, i64 noundef %14, i64 noundef %16) #8, !dbg !765
  br i1 %call8, label %if.then10, label %if.end12, !dbg !764

if.then10:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuaddr) #7, !dbg !766
  call void @llvm.dbg.declare(metadata ptr %cpuaddr, metadata !740, metadata !DIExpression()), !dbg !767
  %17 = load i64, ptr %addr.addr, align 8, !dbg !768
  %18 = load ptr, ptr %range, align 8, !dbg !769
  %hw_start11 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %18, i32 0, i32 2, !dbg !770
  %19 = load i64, ptr %hw_start11, align 8, !dbg !770
  %sub = sub i64 %17, %19, !dbg !771
  %20 = load ptr, ptr %range, align 8, !dbg !772
  %io_start = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %20, i32 0, i32 3, !dbg !773
  %21 = load i64, ptr %io_start, align 8, !dbg !773
  %add = add i64 %sub, %21, !dbg !774
  store i64 %add, ptr %cpuaddr, align 8, !dbg !775
  call void @rcu_read_unlock() #8, !dbg !776
  %22 = load i64, ptr %cpuaddr, align 8, !dbg !777
  store i64 %22, ptr %retval, align 8, !dbg !778
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuaddr) #7, !dbg !779
  br label %cleanup

if.end12:                                         ; preds = %cond.false, %cond.true
  br label %for.inc, !dbg !780

for.inc:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #7, !dbg !781
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !745, metadata !DIExpression()), !dbg !781
  br label %do.body14, !dbg !782

do.body14:                                        ; preds = %for.inc
  br label %do.cond15, !dbg !784

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !784

do.end16:                                         ; preds = %do.cond15
  %23 = load ptr, ptr %range, align 8, !dbg !782
  %list18 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %23, i32 0, i32 0, !dbg !782
  %next = getelementptr inbounds %struct.list_head, ptr %list18, i32 0, i32 0, !dbg !782
  %24 = load volatile ptr, ptr %next, align 8, !dbg !782
  store ptr %24, ptr %tmp17, align 8, !dbg !784
  %25 = load ptr, ptr %tmp17, align 8, !dbg !782
  store ptr %25, ptr %__mptr13, align 8, !dbg !781
  %26 = load ptr, ptr %__mptr13, align 8, !dbg !781
  %add.ptr20 = getelementptr i8, ptr %26, i64 0, !dbg !781
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !781
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #7, !dbg !757
  %27 = load ptr, ptr %tmp19, align 8, !dbg !781
  store ptr %27, ptr %range, align 8, !dbg !757
  br label %for.cond, !dbg !757, !llvm.loop !786

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #8, !dbg !788
  br label %do.body21, !dbg !789

do.body21:                                        ; preds = %for.end
  br label %do.cond22, !dbg !791

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !791

do.end23:                                         ; preds = %do.cond22
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %addr.addr) #9, !dbg !789
  store i32 %call25, ptr %tmp24, align 4, !dbg !791
  %28 = load i32, ptr %tmp24, align 4, !dbg !789
  store i64 -1, ptr %retval, align 8, !dbg !793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !793

cleanup:                                          ; preds = %do.end23, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #7, !dbg !794
  %29 = load i64, ptr %retval, align 8, !dbg !794
  ret i64 %29, !dbg !794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_range32(i32 noundef %val, i32 noundef %start, i32 noundef %len) #5 align 16 !dbg !795 {
entry:
  %val.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !800, metadata !DIExpression()), !dbg !803
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !801, metadata !DIExpression()), !dbg !804
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !802, metadata !DIExpression()), !dbg !805
  %0 = load i32, ptr %val.addr, align 4, !dbg !806
  %1 = load i32, ptr %start.addr, align 4, !dbg !807
  %sub = sub i32 %0, %1, !dbg !808
  %2 = load i32, ptr %len.addr, align 4, !dbg !809
  %cmp = icmp ult i32 %sub, %2, !dbg !810
  ret i1 %cmp, !dbg !811
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_range64(i64 noundef %val, i64 noundef %start, i64 noundef %len) #5 align 16 !dbg !812 {
entry:
  %val.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !816, metadata !DIExpression()), !dbg !819
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !817, metadata !DIExpression()), !dbg !820
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !818, metadata !DIExpression()), !dbg !821
  %0 = load i64, ptr %val.addr, align 8, !dbg !822
  %1 = load i64, ptr %start.addr, align 8, !dbg !823
  %sub = sub i64 %0, %1, !dbg !824
  %2 = load i64, ptr %len.addr, align 8, !dbg !825
  %cmp = icmp ult i64 %sub, %2, !dbg !826
  ret i1 %cmp, !dbg !827
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !828 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !832, metadata !DIExpression()), !dbg !837
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !833, metadata !DIExpression()), !dbg !838
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !834, metadata !DIExpression()), !dbg !839
  %0 = load ptr, ptr %new.addr, align 8, !dbg !840
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !842
  %2 = load ptr, ptr %next.addr, align 8, !dbg !843
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8, !dbg !844
  br i1 %call, label %if.end, label %if.then, !dbg !845

if.then:                                          ; preds = %entry
  br label %return, !dbg !846

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !847
  %4 = load ptr, ptr %new.addr, align 8, !dbg !848
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !849
  store ptr %3, ptr %next1, align 8, !dbg !850
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !851
  %6 = load ptr, ptr %new.addr, align 8, !dbg !852
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !853
  store ptr %5, ptr %prev2, align 8, !dbg !854
  br label %do.body, !dbg !855

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #7, !dbg !856
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !835, metadata !DIExpression()), !dbg !856
  %7 = load ptr, ptr %new.addr, align 8, !dbg !856
  %8 = ptrtoint ptr %7 to i64, !dbg !856
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !856
  br i1 false, label %land.lhs.true, label %if.else, !dbg !857

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !857
  %cmp = icmp eq i64 %9, 0, !dbg !857
  br i1 %cmp, label %if.then3, label %if.else, !dbg !856

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !857

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !859

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !861

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !861

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !859

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !863
  %11 = inttoptr i64 %10 to ptr, !dbg !863
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !863
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !863
  store volatile ptr %11, ptr %next7, align 8, !dbg !863
  br label %do.cond8, !dbg !863

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !863

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !859

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !859

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !859

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !857

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !865

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !867

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !867

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !865

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !869

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !871

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !871

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !869, !srcloc !873
  br label %do.body20, !dbg !869

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !874

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !876

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !876

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !874

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !878
  %14 = inttoptr i64 %13 to ptr, !dbg !878
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !878
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !878
  store volatile ptr %14, ptr %next25, align 8, !dbg !878
  br label %do.cond26, !dbg !878

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !878

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !874

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !874

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !869

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !869

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !865

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !865

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #7, !dbg !855
  br label %do.end36, !dbg !856

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !880
  %17 = load ptr, ptr %next.addr, align 8, !dbg !881
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !882
  store ptr %16, ptr %prev37, align 8, !dbg !883
  br label %return, !dbg !884

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !885 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !890, metadata !DIExpression()), !dbg !893
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !891, metadata !DIExpression()), !dbg !894
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !892, metadata !DIExpression()), !dbg !895
  ret i1 true, !dbg !896
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !897 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !899, metadata !DIExpression()), !dbg !900
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !901
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #8, !dbg !903
  br i1 %call, label %if.end, label %if.then, !dbg !904

if.then:                                          ; preds = %entry
  br label %return, !dbg !905

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !906
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !907
  %2 = load ptr, ptr %prev, align 8, !dbg !907
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !908
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !909
  %4 = load ptr, ptr %next, align 8, !dbg !909
  call void @__list_del(ptr noundef %2, ptr noundef %4) #8, !dbg !910
  br label %return, !dbg !911

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !911
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !912 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !916, metadata !DIExpression()), !dbg !917
  ret i1 true, !dbg !918
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !919 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !921, metadata !DIExpression()), !dbg !923
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !922, metadata !DIExpression()), !dbg !924
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !925
  %1 = load ptr, ptr %next.addr, align 8, !dbg !926
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !927
  store ptr %0, ptr %prev1, align 8, !dbg !928
  br label %do.body, !dbg !929

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !930

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !932

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !930

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !934
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !934
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !934
  store volatile ptr %2, ptr %next4, align 8, !dbg !934
  br label %do.end5, !dbg !934

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !930

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !936
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !937 dso_local void @__rcu_read_lock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !938 dso_local void @__rcu_read_unlock() #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!277, !278, !279, !280, !281, !282, !283, !284}
!llvm.ident = !{!285}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "io_range_mutex", scope: !2, file: !3, line: 21, type: !227, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.logic_pio.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/logic_pio\22 -D KBUILD_BASENAME=\22logic_pio\22 -D KBUILD_MODNAME=\22logic_pio\22 -D __KBUILD_MODNAME=kmod_logic_pio -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/logic_pio.ll lib/logic_pio.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !202, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/logic_pio.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bfc6b7b485d65ac3219fd8d8cf8487eb")
!4 = !{!5, !12, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!10 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!11 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 13, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/logic_pio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0805c15baf61456e3503f53b1379d6")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "LOGIC_PIO_INDIRECT", value: 0)
!16 = !DIEnumerator(name: "LOGIC_PIO_CPU_MMIO", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !{!23, !24, !196, !167, !199, !32, !200, !201}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logic_pio_hwaddr", file: !13, line: 18, size: 576, elements: !26)
!26 = !{!27, !34, !166, !169, !170, !171, !172, !173}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !25, file: !13, line: 19, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !29, line: 190, size: 128, elements: !30)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !29, line: 191, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !28, file: !29, line: 191, baseType: !32, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !25, file: !13, line: 20, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !37, line: 41, size: 512, elements: !38)
!37 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!38 = !{!39, !40, !158, !160, !161, !162}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !36, file: !37, line: 42, baseType: !35, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !36, file: !37, line: 43, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !37, line: 125, size: 1408, elements: !44)
!44 = !{!45, !49, !53, !61, !71, !72, !76, !83, !93, !98, !102, !103, !107, !111, !115, !133, !134, !135, !136, !146, !150, !154}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !43, file: !37, line: 126, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!35, !35}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !43, file: !37, line: 127, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !35}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !43, file: !37, line: 128, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !59}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !29, line: 35, baseType: !58)
!58 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !43, file: !37, line: 129, baseType: !62, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !59, !67}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 14, flags: DIFlagFwdDecl)
!70 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !43, file: !37, line: 131, baseType: !54, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !43, file: !37, line: 133, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!5, !59}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !43, file: !37, line: 134, baseType: !77, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!57, !59, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !43, file: !37, line: 136, baseType: !84, size: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !59, !80, !7, !23, !88}
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 61, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !90, line: 72, baseType: !91)
!90 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !90, line: 16, baseType: !92)
!92 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !43, file: !37, line: 141, baseType: !94, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!87, !59, !80, !97, !88}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !43, file: !37, line: 144, baseType: !99, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!80, !59}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !43, file: !37, line: 145, baseType: !99, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !43, file: !37, line: 146, baseType: !104, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!35, !59}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !43, file: !37, line: 148, baseType: !108, size: 64, offset: 768)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!35, !59, !35}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !43, file: !37, line: 151, baseType: !112, size: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!35, !59, !80}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !43, file: !37, line: 153, baseType: !116, size: 64, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!87, !59, !80, !80, !7, !7, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !37, line: 94, size: 640, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !120, file: !37, line: 95, baseType: !35, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !120, file: !37, line: 96, baseType: !7, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !120, file: !37, line: 97, baseType: !125, size: 512, offset: 128)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !131)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !127, line: 23, baseType: !128)
!127 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !129, line: 31, baseType: !130)
!129 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!130 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!131 = !{!132}
!132 = !DISubrange(count: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !43, file: !37, line: 158, baseType: !108, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !43, file: !37, line: 161, baseType: !104, size: 64, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !43, file: !37, line: 163, baseType: !46, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !43, file: !37, line: 164, baseType: !137, size: 64, offset: 1152)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!87, !59, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !37, line: 73, size: 128, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !141, file: !37, line: 74, baseType: !7, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !141, file: !37, line: 75, baseType: !7, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !141, file: !37, line: 76, baseType: !59, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !43, file: !37, line: 166, baseType: !147, size: 64, offset: 1216)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!23, !35, !87}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !43, file: !37, line: 167, baseType: !151, size: 64, offset: 1280)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!87, !59, !7}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !43, file: !37, line: 168, baseType: !155, size: 64, offset: 1344)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!87, !35}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !36, file: !37, line: 44, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !36, file: !37, line: 45, baseType: !28, size: 128, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !36, file: !37, line: 46, baseType: !28, size: 128, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !37, line: 47, baseType: !163, size: 8, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !127, line: 17, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !129, line: 21, baseType: !165)
!165 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hw_start", scope: !25, file: !13, line: 21, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !29, line: 164, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !29, line: 159, baseType: !126)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "io_start", scope: !25, file: !13, line: 22, baseType: !167, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !25, file: !13, line: 23, baseType: !167, size: 64, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !13, line: 24, baseType: !92, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !25, file: !13, line: 26, baseType: !23, size: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !25, file: !13, line: 27, baseType: !174, size: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logic_pio_host_ops", file: !13, line: 30, size: 256, elements: !177)
!177 = !{!178, !184, !188, !192}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !176, file: !13, line: 31, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !23, !92, !88}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !127, line: 21, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !129, line: 27, baseType: !7)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !176, file: !13, line: 32, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !23, !92, !182, !88}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !176, file: !13, line: 34, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!182, !23, !92, !23, !88, !7}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "outs", scope: !176, file: !13, line: 36, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !23, !92, !65, !88, !7}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !29, line: 42, baseType: !92)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!202 = !{!203, !208, !213, !218, !0, !223, !225}
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 496, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 62)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 352, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 44)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 512, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 64)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 440, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 55)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "io_range_list", scope: !2, file: !3, line: 20, type: !28, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !210, isLocal: true, isDefinition: true)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !228, line: 66, size: 256, elements: !229)
!228 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!229 = !{!230, !240, !271, !276}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !227, file: !228, line: 67, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !232, line: 13, baseType: !233)
!232 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !29, line: 181, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 179, size: 64, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !234, file: !29, line: 180, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !127, line: 22, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !129, line: 30, baseType: !239)
!239 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !227, file: !228, line: 68, baseType: !241, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !242, line: 23, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !242, line: 14, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !243, file: !242, line: 15, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !247, line: 44, baseType: !248)
!247 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !247, line: 14, size: 32, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !247, line: 15, baseType: !251, size: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !247, line: 15, size: 32, elements: !252)
!252 = !{!253, !258, !263}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !251, file: !247, line: 16, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !29, line: 174, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 172, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !255, file: !29, line: 173, baseType: !87, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !247, line: 24, baseType: !259, size: 16)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !247, line: 24, size: 16, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !259, file: !247, line: 25, baseType: !163, size: 8)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !259, file: !247, line: 26, baseType: !163, size: 8, offset: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !247, line: 28, baseType: !264, size: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !247, line: 28, size: 32, elements: !265)
!265 = !{!266, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !264, file: !247, line: 29, baseType: !267, size: 16)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !127, line: 19, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !129, line: 24, baseType: !269)
!269 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !264, file: !247, line: 30, baseType: !267, size: 16, offset: 16)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !227, file: !228, line: 70, baseType: !272, size: 32, offset: 96)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !273, line: 15, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !272, file: !273, line: 20, baseType: !254, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !227, file: !228, line: 72, baseType: !28, size: 128, offset: 128)
!277 = !{i32 7, !"Dwarf Version", i32 5}
!278 = !{i32 2, !"Debug Info Version", i32 3}
!279 = !{i32 1, !"wchar_size", i32 2}
!280 = !{i32 8, !"cf-protection-branch", i32 1}
!281 = !{i32 4, !"function_return_thunk_extern", i32 1}
!282 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!283 = !{i32 1, !"Code Model", i32 2}
!284 = !{i32 1, !"override-stack-alignment", i32 8}
!285 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!286 = distinct !DISubprogram(name: "logic_pio_register_range", scope: !3, file: !3, line: 33, type: !287, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{!87, !24}
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !300, !303}
!290 = !DILocalVariable(name: "new_range", arg: 1, scope: !286, file: !3, line: 33, type: !24)
!291 = !DILocalVariable(name: "range", scope: !286, file: !3, line: 35, type: !24)
!292 = !DILocalVariable(name: "start", scope: !286, file: !3, line: 36, type: !167)
!293 = !DILocalVariable(name: "end", scope: !286, file: !3, line: 37, type: !167)
!294 = !DILocalVariable(name: "mmio_end", scope: !286, file: !3, line: 38, type: !167)
!295 = !DILocalVariable(name: "iio_sz", scope: !286, file: !3, line: 39, type: !167)
!296 = !DILocalVariable(name: "ret", scope: !286, file: !3, line: 40, type: !87)
!297 = !DILocalVariable(name: "__mptr", scope: !298, file: !3, line: 50, type: !23)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 50, column: 2)
!299 = distinct !DILexicalBlock(scope: !286, file: !3, line: 50, column: 2)
!300 = !DILocalVariable(name: "__mptr", scope: !301, file: !3, line: 50, type: !23)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 50, column: 2)
!302 = distinct !DILexicalBlock(scope: !299, file: !3, line: 50, column: 2)
!303 = !DILabel(scope: !286, name: "end_register", file: !3, line: 98)
!304 = !DILocation(line: 33, column: 55, scope: !286)
!305 = !DILocation(line: 35, column: 2, scope: !286)
!306 = !DILocation(line: 35, column: 27, scope: !286)
!307 = !DILocation(line: 36, column: 2, scope: !286)
!308 = !DILocation(line: 36, column: 18, scope: !286)
!309 = !DILocation(line: 37, column: 2, scope: !286)
!310 = !DILocation(line: 37, column: 18, scope: !286)
!311 = !DILocation(line: 38, column: 2, scope: !286)
!312 = !DILocation(line: 38, column: 18, scope: !286)
!313 = !DILocation(line: 39, column: 2, scope: !286)
!314 = !DILocation(line: 39, column: 18, scope: !286)
!315 = !DILocation(line: 40, column: 2, scope: !286)
!316 = !DILocation(line: 40, column: 6, scope: !286)
!317 = !DILocation(line: 42, column: 7, scope: !318)
!318 = distinct !DILexicalBlock(scope: !286, file: !3, line: 42, column: 6)
!319 = !DILocation(line: 42, column: 17, scope: !318)
!320 = !DILocation(line: 42, column: 21, scope: !318)
!321 = !DILocation(line: 42, column: 32, scope: !318)
!322 = !DILocation(line: 42, column: 39, scope: !318)
!323 = !DILocation(line: 42, column: 43, scope: !318)
!324 = !DILocation(line: 42, column: 54, scope: !318)
!325 = !DILocation(line: 42, column: 59, scope: !318)
!326 = !DILocation(line: 43, column: 7, scope: !318)
!327 = !DILocation(line: 43, column: 18, scope: !318)
!328 = !DILocation(line: 43, column: 24, scope: !318)
!329 = !DILocation(line: 43, column: 46, scope: !318)
!330 = !DILocation(line: 43, column: 50, scope: !318)
!331 = !DILocation(line: 43, column: 61, scope: !318)
!332 = !DILocation(line: 42, column: 6, scope: !286)
!333 = !DILocation(line: 44, column: 3, scope: !318)
!334 = !DILocation(line: 46, column: 10, scope: !286)
!335 = !DILocation(line: 46, column: 21, scope: !286)
!336 = !DILocation(line: 46, column: 8, scope: !286)
!337 = !DILocation(line: 47, column: 8, scope: !286)
!338 = !DILocation(line: 47, column: 19, scope: !286)
!339 = !DILocation(line: 47, column: 30, scope: !286)
!340 = !DILocation(line: 47, column: 41, scope: !286)
!341 = !DILocation(line: 47, column: 28, scope: !286)
!342 = !DILocation(line: 47, column: 6, scope: !286)
!343 = !DILocation(line: 49, column: 2, scope: !286)
!344 = !DILocation(line: 50, column: 2, scope: !298)
!345 = !DILocation(line: 50, column: 2, scope: !299)
!346 = !DILocation(line: 50, column: 2, scope: !302)
!347 = !DILocation(line: 51, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 51, column: 7)
!349 = distinct !DILexicalBlock(scope: !302, file: !3, line: 50, column: 51)
!350 = !DILocation(line: 51, column: 14, scope: !348)
!351 = !DILocation(line: 51, column: 24, scope: !348)
!352 = !DILocation(line: 51, column: 35, scope: !348)
!353 = !DILocation(line: 51, column: 21, scope: !348)
!354 = !DILocation(line: 51, column: 7, scope: !349)
!355 = !DILocation(line: 53, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !3, line: 51, column: 43)
!357 = !DILocation(line: 54, column: 4, scope: !356)
!358 = !DILocation(line: 56, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !349, file: !3, line: 56, column: 7)
!360 = !DILocation(line: 56, column: 14, scope: !359)
!361 = !DILocation(line: 56, column: 20, scope: !359)
!362 = !DILocation(line: 56, column: 42, scope: !359)
!363 = !DILocation(line: 57, column: 7, scope: !359)
!364 = !DILocation(line: 57, column: 18, scope: !359)
!365 = !DILocation(line: 57, column: 24, scope: !359)
!366 = !DILocation(line: 56, column: 7, scope: !349)
!367 = !DILocation(line: 59, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 59, column: 8)
!369 = distinct !DILexicalBlock(scope: !359, file: !3, line: 57, column: 47)
!370 = !DILocation(line: 59, column: 17, scope: !368)
!371 = !DILocation(line: 59, column: 24, scope: !368)
!372 = !DILocation(line: 59, column: 35, scope: !368)
!373 = !DILocation(line: 59, column: 42, scope: !368)
!374 = !DILocation(line: 59, column: 33, scope: !368)
!375 = !DILocation(line: 59, column: 14, scope: !368)
!376 = !DILocation(line: 59, column: 47, scope: !368)
!377 = !DILocation(line: 60, column: 8, scope: !368)
!378 = !DILocation(line: 60, column: 14, scope: !368)
!379 = !DILocation(line: 60, column: 21, scope: !368)
!380 = !DILocation(line: 60, column: 12, scope: !368)
!381 = !DILocation(line: 59, column: 8, scope: !369)
!382 = !DILocation(line: 61, column: 16, scope: !383)
!383 = distinct !DILexicalBlock(scope: !368, file: !3, line: 60, column: 31)
!384 = !DILocation(line: 61, column: 23, scope: !383)
!385 = !DILocation(line: 61, column: 34, scope: !383)
!386 = !DILocation(line: 61, column: 41, scope: !383)
!387 = !DILocation(line: 61, column: 32, scope: !383)
!388 = !DILocation(line: 61, column: 14, scope: !383)
!389 = !DILocation(line: 62, column: 4, scope: !383)
!390 = !DILocation(line: 63, column: 9, scope: !391)
!391 = distinct !DILexicalBlock(scope: !368, file: !3, line: 62, column: 11)
!392 = !DILocation(line: 64, column: 5, scope: !391)
!393 = !DILocation(line: 66, column: 3, scope: !369)
!394 = !DILocation(line: 66, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !359, file: !3, line: 66, column: 14)
!396 = !DILocation(line: 66, column: 21, scope: !395)
!397 = !DILocation(line: 66, column: 27, scope: !395)
!398 = !DILocation(line: 66, column: 49, scope: !395)
!399 = !DILocation(line: 67, column: 7, scope: !395)
!400 = !DILocation(line: 67, column: 18, scope: !395)
!401 = !DILocation(line: 67, column: 24, scope: !395)
!402 = !DILocation(line: 66, column: 14, scope: !359)
!403 = !DILocation(line: 68, column: 14, scope: !404)
!404 = distinct !DILexicalBlock(scope: !395, file: !3, line: 67, column: 47)
!405 = !DILocation(line: 68, column: 21, scope: !404)
!406 = !DILocation(line: 68, column: 11, scope: !404)
!407 = !DILocation(line: 69, column: 3, scope: !404)
!408 = !DILocation(line: 70, column: 2, scope: !349)
!409 = !DILocation(line: 50, column: 2, scope: !301)
!410 = distinct !{!410, !345, !411, !412, !413}
!411 = !DILocation(line: 70, column: 2, scope: !299)
!412 = !{!"llvm.loop.mustprogress"}
!413 = !{!"llvm.loop.unroll.disable"}
!414 = !DILocation(line: 73, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !286, file: !3, line: 73, column: 6)
!416 = !DILocation(line: 73, column: 17, scope: !415)
!417 = !DILocation(line: 73, column: 23, scope: !415)
!418 = !DILocation(line: 73, column: 6, scope: !286)
!419 = !DILocation(line: 74, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 74, column: 7)
!421 = distinct !DILexicalBlock(scope: !415, file: !3, line: 73, column: 46)
!422 = !DILocation(line: 74, column: 18, scope: !420)
!423 = !DILocation(line: 74, column: 29, scope: !420)
!424 = !DILocation(line: 74, column: 16, scope: !420)
!425 = !DILocation(line: 74, column: 34, scope: !420)
!426 = !DILocation(line: 74, column: 38, scope: !420)
!427 = !DILocation(line: 74, column: 7, scope: !421)
!428 = !DILocation(line: 76, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 76, column: 8)
!430 = distinct !DILexicalBlock(scope: !420, file: !3, line: 74, column: 58)
!431 = !DILocation(line: 76, column: 17, scope: !429)
!432 = !DILocation(line: 76, column: 26, scope: !429)
!433 = !DILocation(line: 76, column: 30, scope: !429)
!434 = !DILocation(line: 76, column: 8, scope: !430)
!435 = !DILocation(line: 77, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !429, file: !3, line: 76, column: 50)
!437 = !DILocation(line: 78, column: 5, scope: !436)
!438 = !DILocation(line: 80, column: 4, scope: !430)
!439 = !DILocation(line: 80, column: 15, scope: !430)
!440 = !DILocation(line: 80, column: 20, scope: !430)
!441 = !DILocation(line: 81, column: 4, scope: !442)
!442 = distinct !DILexicalBlock(scope: !430, file: !3, line: 81, column: 4)
!443 = !DILocation(line: 81, column: 4, scope: !444)
!444 = distinct !DILexicalBlock(scope: !442, file: !3, line: 81, column: 4)
!445 = !DILocation(line: 82, column: 3, scope: !430)
!446 = !DILocation(line: 83, column: 25, scope: !421)
!447 = !DILocation(line: 83, column: 3, scope: !421)
!448 = !DILocation(line: 83, column: 14, scope: !421)
!449 = !DILocation(line: 83, column: 23, scope: !421)
!450 = !DILocation(line: 84, column: 2, scope: !421)
!451 = !DILocation(line: 84, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !415, file: !3, line: 84, column: 13)
!453 = !DILocation(line: 84, column: 24, scope: !452)
!454 = !DILocation(line: 84, column: 30, scope: !452)
!455 = !DILocation(line: 84, column: 13, scope: !415)
!456 = !DILocation(line: 85, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 85, column: 7)
!458 = distinct !DILexicalBlock(scope: !452, file: !3, line: 84, column: 53)
!459 = !DILocation(line: 85, column: 16, scope: !457)
!460 = !DILocation(line: 85, column: 27, scope: !457)
!461 = !DILocation(line: 85, column: 14, scope: !457)
!462 = !DILocation(line: 85, column: 32, scope: !457)
!463 = !DILocation(line: 85, column: 36, scope: !457)
!464 = !DILocation(line: 85, column: 7, scope: !458)
!465 = !DILocation(line: 86, column: 8, scope: !466)
!466 = distinct !DILexicalBlock(scope: !457, file: !3, line: 85, column: 54)
!467 = !DILocation(line: 87, column: 4, scope: !466)
!468 = !DILocation(line: 89, column: 25, scope: !458)
!469 = !DILocation(line: 89, column: 3, scope: !458)
!470 = !DILocation(line: 89, column: 14, scope: !458)
!471 = !DILocation(line: 89, column: 23, scope: !458)
!472 = !DILocation(line: 90, column: 2, scope: !458)
!473 = !DILocation(line: 92, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !452, file: !3, line: 90, column: 9)
!475 = !DILocation(line: 93, column: 3, scope: !474)
!476 = !DILocation(line: 96, column: 21, scope: !286)
!477 = !DILocation(line: 96, column: 32, scope: !286)
!478 = !DILocation(line: 96, column: 2, scope: !286)
!479 = !DILocation(line: 98, column: 1, scope: !286)
!480 = !DILocation(line: 99, column: 2, scope: !286)
!481 = !DILocation(line: 100, column: 9, scope: !286)
!482 = !DILocation(line: 100, column: 2, scope: !286)
!483 = !DILocation(line: 101, column: 1, scope: !286)
!484 = !DISubprogram(name: "mutex_lock", scope: !228, file: !228, line: 227, type: !485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!488 = !DISubprogram(name: "_printk", scope: !489, file: !489, line: 153, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!490 = !DISubroutineType(types: !491)
!491 = !{!87, !80, null}
!492 = distinct !DISubprogram(name: "list_add_tail_rcu", scope: !493, file: !493, line: 125, type: !494, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!493 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!494 = !DISubroutineType(types: !495)
!495 = !{null, !32, !32}
!496 = !{!497, !498}
!497 = !DILocalVariable(name: "new", arg: 1, scope: !492, file: !493, line: 125, type: !32)
!498 = !DILocalVariable(name: "head", arg: 2, scope: !492, file: !493, line: 126, type: !32)
!499 = !DILocation(line: 125, column: 56, scope: !492)
!500 = !DILocation(line: 126, column: 24, scope: !492)
!501 = !DILocation(line: 128, column: 17, scope: !492)
!502 = !DILocation(line: 128, column: 22, scope: !492)
!503 = !DILocation(line: 128, column: 28, scope: !492)
!504 = !DILocation(line: 128, column: 34, scope: !492)
!505 = !DILocation(line: 128, column: 2, scope: !492)
!506 = !DILocation(line: 129, column: 1, scope: !492)
!507 = !DISubprogram(name: "mutex_unlock", scope: !228, file: !228, line: 246, type: !485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = distinct !DISubprogram(name: "logic_pio_unregister_range", scope: !3, file: !3, line: 109, type: !509, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !24}
!511 = !{!512}
!512 = !DILocalVariable(name: "range", arg: 1, scope: !508, file: !3, line: 109, type: !24)
!513 = !DILocation(line: 109, column: 58, scope: !508)
!514 = !DILocation(line: 111, column: 2, scope: !508)
!515 = !DILocation(line: 112, column: 16, scope: !508)
!516 = !DILocation(line: 112, column: 23, scope: !508)
!517 = !DILocation(line: 112, column: 2, scope: !508)
!518 = !DILocation(line: 113, column: 2, scope: !508)
!519 = !DILocation(line: 114, column: 2, scope: !508)
!520 = !DILocation(line: 115, column: 1, scope: !508)
!521 = distinct !DISubprogram(name: "list_del_rcu", scope: !493, file: !493, line: 155, type: !522, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !32}
!524 = !{!525}
!525 = !DILocalVariable(name: "entry", arg: 1, scope: !521, file: !493, line: 155, type: !32)
!526 = !DILocation(line: 155, column: 51, scope: !521)
!527 = !DILocation(line: 157, column: 19, scope: !521)
!528 = !DILocation(line: 157, column: 2, scope: !521)
!529 = !DILocation(line: 158, column: 2, scope: !521)
!530 = !DILocation(line: 158, column: 9, scope: !521)
!531 = !DILocation(line: 158, column: 14, scope: !521)
!532 = !DILocation(line: 159, column: 1, scope: !521)
!533 = !DISubprogram(name: "synchronize_rcu", scope: !534, file: !534, line: 45, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!535 = !DISubroutineType(types: !536)
!536 = !{null}
!537 = distinct !DISubprogram(name: "find_io_range_by_fwnode", scope: !3, file: !3, line: 125, type: !538, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!24, !35}
!540 = !{!541, !542, !543, !544, !547}
!541 = !DILocalVariable(name: "fwnode", arg: 1, scope: !537, file: !3, line: 125, type: !35)
!542 = !DILocalVariable(name: "range", scope: !537, file: !3, line: 127, type: !24)
!543 = !DILocalVariable(name: "found_range", scope: !537, file: !3, line: 127, type: !24)
!544 = !DILocalVariable(name: "__mptr", scope: !545, file: !3, line: 130, type: !23)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 130, column: 2)
!546 = distinct !DILexicalBlock(scope: !537, file: !3, line: 130, column: 2)
!547 = !DILocalVariable(name: "__mptr", scope: !548, file: !3, line: 130, type: !23)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 130, column: 2)
!549 = distinct !DILexicalBlock(scope: !546, file: !3, line: 130, column: 2)
!550 = !DILocation(line: 125, column: 72, scope: !537)
!551 = !DILocation(line: 127, column: 2, scope: !537)
!552 = !DILocation(line: 127, column: 27, scope: !537)
!553 = !DILocation(line: 127, column: 35, scope: !537)
!554 = !DILocation(line: 129, column: 2, scope: !537)
!555 = !DILocation(line: 130, column: 2, scope: !545)
!556 = !DILocation(line: 130, column: 2, scope: !557)
!557 = distinct !DILexicalBlock(scope: !545, file: !3, line: 130, column: 2)
!558 = !DILocation(line: 130, column: 2, scope: !559)
!559 = distinct !DILexicalBlock(scope: !557, file: !3, line: 130, column: 2)
!560 = !DILocation(line: 130, column: 2, scope: !546)
!561 = !DILocation(line: 130, column: 2, scope: !549)
!562 = !DILocation(line: 131, column: 7, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 131, column: 7)
!564 = distinct !DILexicalBlock(scope: !549, file: !3, line: 130, column: 55)
!565 = !DILocation(line: 131, column: 14, scope: !563)
!566 = !DILocation(line: 131, column: 24, scope: !563)
!567 = !DILocation(line: 131, column: 21, scope: !563)
!568 = !DILocation(line: 131, column: 7, scope: !564)
!569 = !DILocation(line: 132, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !563, file: !3, line: 131, column: 32)
!571 = !DILocation(line: 132, column: 16, scope: !570)
!572 = !DILocation(line: 133, column: 4, scope: !570)
!573 = !DILocation(line: 135, column: 2, scope: !564)
!574 = !DILocation(line: 130, column: 2, scope: !548)
!575 = !DILocation(line: 130, column: 2, scope: !576)
!576 = distinct !DILexicalBlock(scope: !548, file: !3, line: 130, column: 2)
!577 = !DILocation(line: 130, column: 2, scope: !578)
!578 = distinct !DILexicalBlock(scope: !576, file: !3, line: 130, column: 2)
!579 = distinct !{!579, !560, !580, !412, !413}
!580 = !DILocation(line: 135, column: 2, scope: !546)
!581 = !DILocation(line: 136, column: 2, scope: !537)
!582 = !DILocation(line: 138, column: 9, scope: !537)
!583 = !DILocation(line: 139, column: 1, scope: !537)
!584 = !DILocation(line: 138, column: 2, scope: !537)
!585 = distinct !DISubprogram(name: "rcu_read_lock", scope: !534, file: !534, line: 782, type: !535, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!586 = !DILocation(line: 784, column: 2, scope: !585)
!587 = !DILocation(line: 786, column: 2, scope: !585)
!588 = !DILocation(line: 786, column: 2, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !534, line: 786, column: 2)
!590 = !DILocation(line: 787, column: 2, scope: !585)
!591 = !DILocation(line: 787, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !585, file: !534, line: 787, column: 2)
!593 = !DILocation(line: 789, column: 1, scope: !585)
!594 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !534, file: !534, line: 813, type: !535, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!595 = !DILocation(line: 815, column: 2, scope: !594)
!596 = !DILocation(line: 815, column: 2, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !534, line: 815, column: 2)
!598 = !DILocation(line: 818, column: 2, scope: !594)
!599 = !DILocation(line: 819, column: 2, scope: !594)
!600 = !DILocation(line: 819, column: 2, scope: !601)
!601 = distinct !DILexicalBlock(scope: !594, file: !534, line: 819, column: 2)
!602 = !DILocation(line: 820, column: 1, scope: !594)
!603 = distinct !DISubprogram(name: "logic_pio_to_hwaddr", scope: !3, file: !3, line: 170, type: !604, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!167, !92}
!606 = !{!607, !608}
!607 = !DILocalVariable(name: "pio", arg: 1, scope: !603, file: !3, line: 170, type: !92)
!608 = !DILocalVariable(name: "range", scope: !603, file: !3, line: 172, type: !24)
!609 = !DILocation(line: 170, column: 51, scope: !603)
!610 = !DILocation(line: 172, column: 2, scope: !603)
!611 = !DILocation(line: 172, column: 27, scope: !603)
!612 = !DILocation(line: 174, column: 24, scope: !603)
!613 = !DILocation(line: 174, column: 10, scope: !603)
!614 = !DILocation(line: 174, column: 8, scope: !603)
!615 = !DILocation(line: 175, column: 6, scope: !616)
!616 = distinct !DILexicalBlock(scope: !603, file: !3, line: 175, column: 6)
!617 = !DILocation(line: 175, column: 6, scope: !603)
!618 = !DILocation(line: 176, column: 10, scope: !616)
!619 = !DILocation(line: 176, column: 17, scope: !616)
!620 = !DILocation(line: 176, column: 28, scope: !616)
!621 = !DILocation(line: 176, column: 26, scope: !616)
!622 = !DILocation(line: 176, column: 34, scope: !616)
!623 = !DILocation(line: 176, column: 41, scope: !616)
!624 = !DILocation(line: 176, column: 32, scope: !616)
!625 = !DILocation(line: 176, column: 3, scope: !616)
!626 = !DILocation(line: 178, column: 2, scope: !603)
!627 = !DILocation(line: 179, column: 1, scope: !603)
!628 = distinct !DISubprogram(name: "find_io_range", scope: !3, file: !3, line: 142, type: !629, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!24, !92}
!631 = !{!632, !633, !634, !635, !638}
!632 = !DILocalVariable(name: "pio", arg: 1, scope: !628, file: !3, line: 142, type: !92)
!633 = !DILocalVariable(name: "range", scope: !628, file: !3, line: 144, type: !24)
!634 = !DILocalVariable(name: "found_range", scope: !628, file: !3, line: 144, type: !24)
!635 = !DILocalVariable(name: "__mptr", scope: !636, file: !3, line: 147, type: !23)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 147, column: 2)
!637 = distinct !DILexicalBlock(scope: !628, file: !3, line: 147, column: 2)
!638 = !DILocalVariable(name: "__mptr", scope: !639, file: !3, line: 147, type: !23)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 147, column: 2)
!640 = distinct !DILexicalBlock(scope: !637, file: !3, line: 147, column: 2)
!641 = !DILocation(line: 142, column: 61, scope: !628)
!642 = !DILocation(line: 144, column: 2, scope: !628)
!643 = !DILocation(line: 144, column: 27, scope: !628)
!644 = !DILocation(line: 144, column: 35, scope: !628)
!645 = !DILocation(line: 146, column: 2, scope: !628)
!646 = !DILocation(line: 147, column: 2, scope: !636)
!647 = !DILocation(line: 147, column: 2, scope: !648)
!648 = distinct !DILexicalBlock(scope: !636, file: !3, line: 147, column: 2)
!649 = !DILocation(line: 147, column: 2, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !3, line: 147, column: 2)
!651 = !DILocation(line: 147, column: 2, scope: !637)
!652 = !DILocation(line: 147, column: 2, scope: !640)
!653 = !DILocation(line: 148, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !640, file: !3, line: 147, column: 55)
!655 = !DILocation(line: 148, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !654, file: !3, line: 148, column: 7)
!657 = !DILocation(line: 149, column: 18, scope: !658)
!658 = distinct !DILexicalBlock(scope: !656, file: !3, line: 148, column: 52)
!659 = !DILocation(line: 149, column: 16, scope: !658)
!660 = !DILocation(line: 150, column: 4, scope: !658)
!661 = !DILocation(line: 152, column: 2, scope: !654)
!662 = !DILocation(line: 147, column: 2, scope: !639)
!663 = !DILocation(line: 147, column: 2, scope: !664)
!664 = distinct !DILexicalBlock(scope: !639, file: !3, line: 147, column: 2)
!665 = !DILocation(line: 147, column: 2, scope: !666)
!666 = distinct !DILexicalBlock(scope: !664, file: !3, line: 147, column: 2)
!667 = distinct !{!667, !651, !668, !412, !413}
!668 = !DILocation(line: 152, column: 2, scope: !637)
!669 = !DILocation(line: 153, column: 2, scope: !628)
!670 = !DILocation(line: 155, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !628, file: !3, line: 155, column: 6)
!672 = !DILocation(line: 155, column: 6, scope: !628)
!673 = !DILocation(line: 156, column: 3, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 156, column: 3)
!675 = !DILocation(line: 156, column: 3, scope: !676)
!676 = distinct !DILexicalBlock(scope: !674, file: !3, line: 156, column: 3)
!677 = !DILocation(line: 156, column: 3, scope: !671)
!678 = !DILocation(line: 158, column: 9, scope: !628)
!679 = !DILocation(line: 159, column: 1, scope: !628)
!680 = !DILocation(line: 158, column: 2, scope: !628)
!681 = distinct !DISubprogram(name: "logic_pio_trans_hwaddr", scope: !3, file: !3, line: 189, type: !682, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{!92, !35, !167, !167}
!684 = !{!685, !686, !687, !688}
!685 = !DILocalVariable(name: "fwnode", arg: 1, scope: !681, file: !3, line: 189, type: !35)
!686 = !DILocalVariable(name: "addr", arg: 2, scope: !681, file: !3, line: 190, type: !167)
!687 = !DILocalVariable(name: "size", arg: 3, scope: !681, file: !3, line: 190, type: !167)
!688 = !DILocalVariable(name: "range", scope: !681, file: !3, line: 192, type: !24)
!689 = !DILocation(line: 189, column: 60, scope: !681)
!690 = !DILocation(line: 190, column: 26, scope: !681)
!691 = !DILocation(line: 190, column: 48, scope: !681)
!692 = !DILocation(line: 192, column: 2, scope: !681)
!693 = !DILocation(line: 192, column: 27, scope: !681)
!694 = !DILocation(line: 194, column: 34, scope: !681)
!695 = !DILocation(line: 194, column: 10, scope: !681)
!696 = !DILocation(line: 194, column: 8, scope: !681)
!697 = !DILocation(line: 195, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !681, file: !3, line: 195, column: 6)
!699 = !DILocation(line: 195, column: 13, scope: !698)
!700 = !DILocation(line: 195, column: 16, scope: !698)
!701 = !DILocation(line: 195, column: 23, scope: !698)
!702 = !DILocation(line: 195, column: 29, scope: !698)
!703 = !DILocation(line: 195, column: 6, scope: !681)
!704 = !DILocation(line: 196, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 196, column: 3)
!706 = distinct !DILexicalBlock(scope: !698, file: !3, line: 195, column: 52)
!707 = !DILocation(line: 196, column: 3, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !3, line: 196, column: 3)
!709 = !DILocation(line: 197, column: 3, scope: !706)
!710 = !DILocation(line: 199, column: 6, scope: !711)
!711 = distinct !DILexicalBlock(scope: !681, file: !3, line: 199, column: 6)
!712 = !DILocation(line: 199, column: 13, scope: !711)
!713 = !DILocation(line: 199, column: 20, scope: !711)
!714 = !DILocation(line: 199, column: 18, scope: !711)
!715 = !DILocation(line: 199, column: 6, scope: !681)
!716 = !DILocation(line: 200, column: 3, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 200, column: 3)
!718 = distinct !DILexicalBlock(scope: !711, file: !3, line: 199, column: 26)
!719 = !DILocation(line: 200, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !3, line: 200, column: 3)
!721 = !DILocation(line: 202, column: 3, scope: !718)
!722 = !DILocation(line: 204, column: 9, scope: !681)
!723 = !DILocation(line: 204, column: 16, scope: !681)
!724 = !DILocation(line: 204, column: 23, scope: !681)
!725 = !DILocation(line: 204, column: 14, scope: !681)
!726 = !DILocation(line: 204, column: 34, scope: !681)
!727 = !DILocation(line: 204, column: 41, scope: !681)
!728 = !DILocation(line: 204, column: 32, scope: !681)
!729 = !DILocation(line: 204, column: 2, scope: !681)
!730 = !DILocation(line: 205, column: 1, scope: !681)
!731 = distinct !DISubprogram(name: "logic_pio_trans_cpuaddr", scope: !3, file: !3, line: 207, type: !732, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!92, !167}
!734 = !{!735, !736, !737, !740, !745}
!735 = !DILocalVariable(name: "addr", arg: 1, scope: !731, file: !3, line: 207, type: !167)
!736 = !DILocalVariable(name: "range", scope: !731, file: !3, line: 209, type: !24)
!737 = !DILocalVariable(name: "__mptr", scope: !738, file: !3, line: 212, type: !23)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 212, column: 2)
!739 = distinct !DILexicalBlock(scope: !731, file: !3, line: 212, column: 2)
!740 = !DILocalVariable(name: "cpuaddr", scope: !741, file: !3, line: 216, type: !92)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 215, column: 53)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 215, column: 7)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 212, column: 55)
!744 = distinct !DILexicalBlock(scope: !739, file: !3, line: 212, column: 2)
!745 = !DILocalVariable(name: "__mptr", scope: !746, file: !3, line: 212, type: !23)
!746 = distinct !DILexicalBlock(scope: !744, file: !3, line: 212, column: 2)
!747 = !DILocation(line: 207, column: 55, scope: !731)
!748 = !DILocation(line: 209, column: 2, scope: !731)
!749 = !DILocation(line: 209, column: 27, scope: !731)
!750 = !DILocation(line: 211, column: 2, scope: !731)
!751 = !DILocation(line: 212, column: 2, scope: !738)
!752 = !DILocation(line: 212, column: 2, scope: !753)
!753 = distinct !DILexicalBlock(scope: !738, file: !3, line: 212, column: 2)
!754 = !DILocation(line: 212, column: 2, scope: !755)
!755 = distinct !DILexicalBlock(scope: !753, file: !3, line: 212, column: 2)
!756 = !DILocation(line: 212, column: 2, scope: !739)
!757 = !DILocation(line: 212, column: 2, scope: !744)
!758 = !DILocation(line: 213, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !743, file: !3, line: 213, column: 7)
!760 = !DILocation(line: 213, column: 14, scope: !759)
!761 = !DILocation(line: 213, column: 20, scope: !759)
!762 = !DILocation(line: 213, column: 7, scope: !743)
!763 = !DILocation(line: 214, column: 4, scope: !759)
!764 = !DILocation(line: 215, column: 7, scope: !743)
!765 = !DILocation(line: 215, column: 7, scope: !742)
!766 = !DILocation(line: 216, column: 4, scope: !741)
!767 = !DILocation(line: 216, column: 18, scope: !741)
!768 = !DILocation(line: 218, column: 14, scope: !741)
!769 = !DILocation(line: 218, column: 21, scope: !741)
!770 = !DILocation(line: 218, column: 28, scope: !741)
!771 = !DILocation(line: 218, column: 19, scope: !741)
!772 = !DILocation(line: 218, column: 39, scope: !741)
!773 = !DILocation(line: 218, column: 46, scope: !741)
!774 = !DILocation(line: 218, column: 37, scope: !741)
!775 = !DILocation(line: 218, column: 12, scope: !741)
!776 = !DILocation(line: 220, column: 4, scope: !741)
!777 = !DILocation(line: 221, column: 11, scope: !741)
!778 = !DILocation(line: 221, column: 4, scope: !741)
!779 = !DILocation(line: 222, column: 3, scope: !742)
!780 = !DILocation(line: 223, column: 2, scope: !743)
!781 = !DILocation(line: 212, column: 2, scope: !746)
!782 = !DILocation(line: 212, column: 2, scope: !783)
!783 = distinct !DILexicalBlock(scope: !746, file: !3, line: 212, column: 2)
!784 = !DILocation(line: 212, column: 2, scope: !785)
!785 = distinct !DILexicalBlock(scope: !783, file: !3, line: 212, column: 2)
!786 = distinct !{!786, !756, !787, !412, !413}
!787 = !DILocation(line: 223, column: 2, scope: !739)
!788 = !DILocation(line: 224, column: 2, scope: !731)
!789 = !DILocation(line: 226, column: 2, scope: !790)
!790 = distinct !DILexicalBlock(scope: !731, file: !3, line: 226, column: 2)
!791 = !DILocation(line: 226, column: 2, scope: !792)
!792 = distinct !DILexicalBlock(scope: !790, file: !3, line: 226, column: 2)
!793 = !DILocation(line: 228, column: 2, scope: !731)
!794 = !DILocation(line: 229, column: 1, scope: !731)
!795 = distinct !DISubprogram(name: "in_range32", scope: !796, file: !796, line: 244, type: !797, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !799)
!796 = !DIFile(filename: "./include/linux/minmax.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7a4c1cef53d8ba336b59bf57ff6b0a2")
!797 = !DISubroutineType(types: !798)
!798 = !{!57, !182, !182, !182}
!799 = !{!800, !801, !802}
!800 = !DILocalVariable(name: "val", arg: 1, scope: !795, file: !796, line: 244, type: !182)
!801 = !DILocalVariable(name: "start", arg: 2, scope: !795, file: !796, line: 244, type: !182)
!802 = !DILocalVariable(name: "len", arg: 3, scope: !795, file: !796, line: 244, type: !182)
!803 = !DILocation(line: 244, column: 35, scope: !795)
!804 = !DILocation(line: 244, column: 44, scope: !795)
!805 = !DILocation(line: 244, column: 55, scope: !795)
!806 = !DILocation(line: 246, column: 10, scope: !795)
!807 = !DILocation(line: 246, column: 16, scope: !795)
!808 = !DILocation(line: 246, column: 14, scope: !795)
!809 = !DILocation(line: 246, column: 25, scope: !795)
!810 = !DILocation(line: 246, column: 23, scope: !795)
!811 = !DILocation(line: 246, column: 2, scope: !795)
!812 = distinct !DISubprogram(name: "in_range64", scope: !796, file: !796, line: 239, type: !813, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!57, !126, !126, !126}
!815 = !{!816, !817, !818}
!816 = !DILocalVariable(name: "val", arg: 1, scope: !812, file: !796, line: 239, type: !126)
!817 = !DILocalVariable(name: "start", arg: 2, scope: !812, file: !796, line: 239, type: !126)
!818 = !DILocalVariable(name: "len", arg: 3, scope: !812, file: !796, line: 239, type: !126)
!819 = !DILocation(line: 239, column: 35, scope: !812)
!820 = !DILocation(line: 239, column: 44, scope: !812)
!821 = !DILocation(line: 239, column: 55, scope: !812)
!822 = !DILocation(line: 241, column: 10, scope: !812)
!823 = !DILocation(line: 241, column: 16, scope: !812)
!824 = !DILocation(line: 241, column: 14, scope: !812)
!825 = !DILocation(line: 241, column: 25, scope: !812)
!826 = !DILocation(line: 241, column: 23, scope: !812)
!827 = !DILocation(line: 241, column: 2, scope: !812)
!828 = distinct !DISubprogram(name: "__list_add_rcu", scope: !493, file: !493, line: 76, type: !829, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !32, !32, !32}
!831 = !{!832, !833, !834, !835}
!832 = !DILocalVariable(name: "new", arg: 1, scope: !828, file: !493, line: 76, type: !32)
!833 = !DILocalVariable(name: "prev", arg: 2, scope: !828, file: !493, line: 77, type: !32)
!834 = !DILocalVariable(name: "next", arg: 3, scope: !828, file: !493, line: 77, type: !32)
!835 = !DILocalVariable(name: "_r_a_p__v", scope: !836, file: !493, line: 84, type: !199)
!836 = distinct !DILexicalBlock(scope: !828, file: !493, line: 84, column: 2)
!837 = !DILocation(line: 76, column: 53, scope: !828)
!838 = !DILocation(line: 77, column: 21, scope: !828)
!839 = !DILocation(line: 77, column: 45, scope: !828)
!840 = !DILocation(line: 79, column: 24, scope: !841)
!841 = distinct !DILexicalBlock(scope: !828, file: !493, line: 79, column: 6)
!842 = !DILocation(line: 79, column: 29, scope: !841)
!843 = !DILocation(line: 79, column: 35, scope: !841)
!844 = !DILocation(line: 79, column: 7, scope: !841)
!845 = !DILocation(line: 79, column: 6, scope: !828)
!846 = !DILocation(line: 80, column: 3, scope: !841)
!847 = !DILocation(line: 82, column: 14, scope: !828)
!848 = !DILocation(line: 82, column: 2, scope: !828)
!849 = !DILocation(line: 82, column: 7, scope: !828)
!850 = !DILocation(line: 82, column: 12, scope: !828)
!851 = !DILocation(line: 83, column: 14, scope: !828)
!852 = !DILocation(line: 83, column: 2, scope: !828)
!853 = !DILocation(line: 83, column: 7, scope: !828)
!854 = !DILocation(line: 83, column: 12, scope: !828)
!855 = !DILocation(line: 84, column: 2, scope: !828)
!856 = !DILocation(line: 84, column: 2, scope: !836)
!857 = !DILocation(line: 84, column: 2, scope: !858)
!858 = distinct !DILexicalBlock(scope: !836, file: !493, line: 84, column: 2)
!859 = !DILocation(line: 84, column: 2, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !493, line: 84, column: 2)
!861 = !DILocation(line: 84, column: 2, scope: !862)
!862 = distinct !DILexicalBlock(scope: !860, file: !493, line: 84, column: 2)
!863 = !DILocation(line: 84, column: 2, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !493, line: 84, column: 2)
!865 = !DILocation(line: 84, column: 2, scope: !866)
!866 = distinct !DILexicalBlock(scope: !858, file: !493, line: 84, column: 2)
!867 = !DILocation(line: 84, column: 2, scope: !868)
!868 = distinct !DILexicalBlock(scope: !866, file: !493, line: 84, column: 2)
!869 = !DILocation(line: 84, column: 2, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !493, line: 84, column: 2)
!871 = !DILocation(line: 84, column: 2, scope: !872)
!872 = distinct !DILexicalBlock(scope: !870, file: !493, line: 84, column: 2)
!873 = !{i64 2151616966}
!874 = !DILocation(line: 84, column: 2, scope: !875)
!875 = distinct !DILexicalBlock(scope: !870, file: !493, line: 84, column: 2)
!876 = !DILocation(line: 84, column: 2, scope: !877)
!877 = distinct !DILexicalBlock(scope: !875, file: !493, line: 84, column: 2)
!878 = !DILocation(line: 84, column: 2, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !493, line: 84, column: 2)
!880 = !DILocation(line: 85, column: 15, scope: !828)
!881 = !DILocation(line: 85, column: 2, scope: !828)
!882 = !DILocation(line: 85, column: 8, scope: !828)
!883 = !DILocation(line: 85, column: 13, scope: !828)
!884 = !DILocation(line: 86, column: 1, scope: !828)
!885 = distinct !DISubprogram(name: "__list_add_valid", scope: !886, file: !886, line: 128, type: !887, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!886 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!887 = !DISubroutineType(types: !888)
!888 = !{!57, !32, !32, !32}
!889 = !{!890, !891, !892}
!890 = !DILocalVariable(name: "new", arg: 1, scope: !885, file: !886, line: 128, type: !32)
!891 = !DILocalVariable(name: "prev", arg: 2, scope: !885, file: !886, line: 129, type: !32)
!892 = !DILocalVariable(name: "next", arg: 3, scope: !885, file: !886, line: 130, type: !32)
!893 = !DILocation(line: 128, column: 55, scope: !885)
!894 = !DILocation(line: 129, column: 23, scope: !885)
!895 = !DILocation(line: 130, column: 23, scope: !885)
!896 = !DILocation(line: 132, column: 2, scope: !885)
!897 = distinct !DISubprogram(name: "__list_del_entry", scope: !886, file: !886, line: 213, type: !522, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !898)
!898 = !{!899}
!899 = !DILocalVariable(name: "entry", arg: 1, scope: !897, file: !886, line: 213, type: !32)
!900 = !DILocation(line: 213, column: 55, scope: !897)
!901 = !DILocation(line: 215, column: 30, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !886, line: 215, column: 6)
!903 = !DILocation(line: 215, column: 7, scope: !902)
!904 = !DILocation(line: 215, column: 6, scope: !897)
!905 = !DILocation(line: 216, column: 3, scope: !902)
!906 = !DILocation(line: 218, column: 13, scope: !897)
!907 = !DILocation(line: 218, column: 20, scope: !897)
!908 = !DILocation(line: 218, column: 26, scope: !897)
!909 = !DILocation(line: 218, column: 33, scope: !897)
!910 = !DILocation(line: 218, column: 2, scope: !897)
!911 = !DILocation(line: 219, column: 1, scope: !897)
!912 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !886, file: !886, line: 134, type: !913, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{!57, !32}
!915 = !{!916}
!916 = !DILocalVariable(name: "entry", arg: 1, scope: !912, file: !886, line: 134, type: !32)
!917 = !DILocation(line: 134, column: 61, scope: !912)
!918 = !DILocation(line: 136, column: 2, scope: !912)
!919 = distinct !DISubprogram(name: "__list_del", scope: !886, file: !886, line: 193, type: !494, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !920)
!920 = !{!921, !922}
!921 = !DILocalVariable(name: "prev", arg: 1, scope: !919, file: !886, line: 193, type: !32)
!922 = !DILocalVariable(name: "next", arg: 2, scope: !919, file: !886, line: 193, type: !32)
!923 = !DILocation(line: 193, column: 50, scope: !919)
!924 = !DILocation(line: 193, column: 75, scope: !919)
!925 = !DILocation(line: 195, column: 15, scope: !919)
!926 = !DILocation(line: 195, column: 2, scope: !919)
!927 = !DILocation(line: 195, column: 8, scope: !919)
!928 = !DILocation(line: 195, column: 13, scope: !919)
!929 = !DILocation(line: 196, column: 2, scope: !919)
!930 = !DILocation(line: 196, column: 2, scope: !931)
!931 = distinct !DILexicalBlock(scope: !919, file: !886, line: 196, column: 2)
!932 = !DILocation(line: 196, column: 2, scope: !933)
!933 = distinct !DILexicalBlock(scope: !931, file: !886, line: 196, column: 2)
!934 = !DILocation(line: 196, column: 2, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !886, line: 196, column: 2)
!936 = !DILocation(line: 197, column: 1, scope: !919)
!937 = !DISubprogram(name: "__rcu_read_lock", scope: !534, file: !534, line: 74, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!938 = !DISubprogram(name: "__rcu_read_unlock", scope: !534, file: !534, line: 75, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
