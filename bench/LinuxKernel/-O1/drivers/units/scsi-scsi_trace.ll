; ModuleID = 'drivers/scsi/scsi_trace.c'
source_filename = "drivers/scsi/scsi_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i64, i32 }
%struct.seq_buf = type { ptr, i64, i64 }
%struct.anon = type { i32 }
%struct.anon.0 = type { i16 }
%struct.anon.1 = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"lba=%u txlen=%u\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [27 x i8] c"lba=%u txlen=%u protect=%u\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c" unmap=%u\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"lba=%llu txlen=%u protect=%u\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [11 x i8] c"regions=%u\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [17 x i8] c"READ_CAPACITY_16\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [15 x i8] c"GET_LBA_STATUS\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [25 x i8] c"%s lba=%llu alloc_len=%u\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [5 x i8] c"READ\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [11 x i8] c"WRITE_SAME\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [46 x i8] c"%s_32 lba=%llu txlen=%u protect=%u ei_lbrt=%u\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [31 x i8] c"REPORT_IDENTIFYING_INFORMATION\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [26 x i8] c"REPORT_TARGET_PORT_GROUPS\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [15 x i8] c"REPORT_ALIASES\00", align 1, !dbg !79
@.str.17 = private unnamed_addr constant [33 x i8] c"REPORT_SUPPORTED_OPERATION_CODES\00", align 1, !dbg !81
@.str.18 = private unnamed_addr constant [43 x i8] c"REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS\00", align 1, !dbg !86
@.str.19 = private unnamed_addr constant [16 x i8] c"REPORT_PRIORITY\00", align 1, !dbg !91
@.str.20 = private unnamed_addr constant [17 x i8] c"REPORT_TIMESTAMP\00", align 1, !dbg !93
@.str.21 = private unnamed_addr constant [23 x i8] c"MANAGEMENT_PROTOCOL_IN\00", align 1, !dbg !95
@.str.22 = private unnamed_addr constant [16 x i8] c"%s alloc_len=%u\00", align 1, !dbg !100
@.str.23 = private unnamed_addr constant [28 x i8] c"SET_IDENTIFYING_INFORMATION\00", align 1, !dbg !102
@.str.24 = private unnamed_addr constant [23 x i8] c"SET_TARGET_PORT_GROUPS\00", align 1, !dbg !107
@.str.25 = private unnamed_addr constant [15 x i8] c"CHANGE_ALIASES\00", align 1, !dbg !109
@.str.26 = private unnamed_addr constant [13 x i8] c"SET_PRIORITY\00", align 1, !dbg !111
@.str.27 = private unnamed_addr constant [14 x i8] c"SET_TIMESTAMP\00", align 1, !dbg !116
@.str.28 = private unnamed_addr constant [24 x i8] c"MANAGEMENT_PROTOCOL_OUT\00", align 1, !dbg !121
@.str.29 = private unnamed_addr constant [13 x i8] c"REPORT_ZONES\00", align 1, !dbg !126
@.str.30 = private unnamed_addr constant [48 x i8] c"%s zone=%llu alloc_len=%u options=%u partial=%u\00", align 1, !dbg !128
@.str.31 = private unnamed_addr constant [11 x i8] c"CLOSE_ZONE\00", align 1, !dbg !133
@.str.32 = private unnamed_addr constant [12 x i8] c"FINISH_ZONE\00", align 1, !dbg !135
@.str.33 = private unnamed_addr constant [10 x i8] c"OPEN_ZONE\00", align 1, !dbg !140
@.str.34 = private unnamed_addr constant [20 x i8] c"RESET_WRITE_POINTER\00", align 1, !dbg !142
@.str.35 = private unnamed_addr constant [20 x i8] c"%s zone=%llu all=%u\00", align 1, !dbg !147

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @scsi_trace_parse_cdb(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !215 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !248, metadata !DIExpression()), !dbg !251
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !249, metadata !DIExpression()), !dbg !252
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !250, metadata !DIExpression()), !dbg !253
  %0 = load ptr, ptr %cdb.addr, align 8, !dbg !254
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !254
  %1 = load i8, ptr %arrayidx, align 1, !dbg !254
  %conv = zext i8 %1 to i32, !dbg !254
  switch i32 %conv, label %sw.default [
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 40, label %sw.bb1
    i32 47, label %sw.bb1
    i32 42, label %sw.bb1
    i32 65, label %sw.bb1
    i32 168, label %sw.bb3
    i32 175, label %sw.bb3
    i32 170, label %sw.bb3
    i32 136, label %sw.bb5
    i32 143, label %sw.bb5
    i32 138, label %sw.bb5
    i32 147, label %sw.bb5
    i32 66, label %sw.bb7
    i32 158, label %sw.bb9
    i32 127, label %sw.bb11
    i32 163, label %sw.bb13
    i32 164, label %sw.bb15
    i32 149, label %sw.bb17
    i32 148, label %sw.bb19
  ], !dbg !255

sw.bb:                                            ; preds = %entry, %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !256
  %3 = load ptr, ptr %cdb.addr, align 8, !dbg !258
  %4 = load i32, ptr %len.addr, align 4, !dbg !259
  %call = call ptr @scsi_trace_rw6(ptr noundef %2, ptr noundef %3, i32 noundef %4) #5, !dbg !260
  store ptr %call, ptr %retval, align 8, !dbg !261
  br label %return, !dbg !261

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry
  %5 = load ptr, ptr %p.addr, align 8, !dbg !262
  %6 = load ptr, ptr %cdb.addr, align 8, !dbg !263
  %7 = load i32, ptr %len.addr, align 4, !dbg !264
  %call2 = call ptr @scsi_trace_rw10(ptr noundef %5, ptr noundef %6, i32 noundef %7) #5, !dbg !265
  store ptr %call2, ptr %retval, align 8, !dbg !266
  br label %return, !dbg !266

sw.bb3:                                           ; preds = %entry, %entry, %entry
  %8 = load ptr, ptr %p.addr, align 8, !dbg !267
  %9 = load ptr, ptr %cdb.addr, align 8, !dbg !268
  %10 = load i32, ptr %len.addr, align 4, !dbg !269
  %call4 = call ptr @scsi_trace_rw12(ptr noundef %8, ptr noundef %9, i32 noundef %10) #5, !dbg !270
  store ptr %call4, ptr %retval, align 8, !dbg !271
  br label %return, !dbg !271

sw.bb5:                                           ; preds = %entry, %entry, %entry, %entry
  %11 = load ptr, ptr %p.addr, align 8, !dbg !272
  %12 = load ptr, ptr %cdb.addr, align 8, !dbg !273
  %13 = load i32, ptr %len.addr, align 4, !dbg !274
  %call6 = call ptr @scsi_trace_rw16(ptr noundef %11, ptr noundef %12, i32 noundef %13) #5, !dbg !275
  store ptr %call6, ptr %retval, align 8, !dbg !276
  br label %return, !dbg !276

sw.bb7:                                           ; preds = %entry
  %14 = load ptr, ptr %p.addr, align 8, !dbg !277
  %15 = load ptr, ptr %cdb.addr, align 8, !dbg !278
  %16 = load i32, ptr %len.addr, align 4, !dbg !279
  %call8 = call ptr @scsi_trace_unmap(ptr noundef %14, ptr noundef %15, i32 noundef %16) #5, !dbg !280
  store ptr %call8, ptr %retval, align 8, !dbg !281
  br label %return, !dbg !281

sw.bb9:                                           ; preds = %entry
  %17 = load ptr, ptr %p.addr, align 8, !dbg !282
  %18 = load ptr, ptr %cdb.addr, align 8, !dbg !283
  %19 = load i32, ptr %len.addr, align 4, !dbg !284
  %call10 = call ptr @scsi_trace_service_action_in(ptr noundef %17, ptr noundef %18, i32 noundef %19) #5, !dbg !285
  store ptr %call10, ptr %retval, align 8, !dbg !286
  br label %return, !dbg !286

sw.bb11:                                          ; preds = %entry
  %20 = load ptr, ptr %p.addr, align 8, !dbg !287
  %21 = load ptr, ptr %cdb.addr, align 8, !dbg !288
  %22 = load i32, ptr %len.addr, align 4, !dbg !289
  %call12 = call ptr @scsi_trace_varlen(ptr noundef %20, ptr noundef %21, i32 noundef %22) #5, !dbg !290
  store ptr %call12, ptr %retval, align 8, !dbg !291
  br label %return, !dbg !291

sw.bb13:                                          ; preds = %entry
  %23 = load ptr, ptr %p.addr, align 8, !dbg !292
  %24 = load ptr, ptr %cdb.addr, align 8, !dbg !293
  %25 = load i32, ptr %len.addr, align 4, !dbg !294
  %call14 = call ptr @scsi_trace_maintenance_in(ptr noundef %23, ptr noundef %24, i32 noundef %25) #5, !dbg !295
  store ptr %call14, ptr %retval, align 8, !dbg !296
  br label %return, !dbg !296

sw.bb15:                                          ; preds = %entry
  %26 = load ptr, ptr %p.addr, align 8, !dbg !297
  %27 = load ptr, ptr %cdb.addr, align 8, !dbg !298
  %28 = load i32, ptr %len.addr, align 4, !dbg !299
  %call16 = call ptr @scsi_trace_maintenance_out(ptr noundef %26, ptr noundef %27, i32 noundef %28) #5, !dbg !300
  store ptr %call16, ptr %retval, align 8, !dbg !301
  br label %return, !dbg !301

sw.bb17:                                          ; preds = %entry
  %29 = load ptr, ptr %p.addr, align 8, !dbg !302
  %30 = load ptr, ptr %cdb.addr, align 8, !dbg !303
  %31 = load i32, ptr %len.addr, align 4, !dbg !304
  %call18 = call ptr @scsi_trace_zbc_in(ptr noundef %29, ptr noundef %30, i32 noundef %31) #5, !dbg !305
  store ptr %call18, ptr %retval, align 8, !dbg !306
  br label %return, !dbg !306

sw.bb19:                                          ; preds = %entry
  %32 = load ptr, ptr %p.addr, align 8, !dbg !307
  %33 = load ptr, ptr %cdb.addr, align 8, !dbg !308
  %34 = load i32, ptr %len.addr, align 4, !dbg !309
  %call20 = call ptr @scsi_trace_zbc_out(ptr noundef %32, ptr noundef %33, i32 noundef %34) #5, !dbg !310
  store ptr %call20, ptr %retval, align 8, !dbg !311
  br label %return, !dbg !311

sw.default:                                       ; preds = %entry
  %35 = load ptr, ptr %p.addr, align 8, !dbg !312
  %36 = load ptr, ptr %cdb.addr, align 8, !dbg !313
  %37 = load i32, ptr %len.addr, align 4, !dbg !314
  %call21 = call ptr @scsi_trace_misc(ptr noundef %35, ptr noundef %36, i32 noundef %37) #5, !dbg !315
  store ptr %call21, ptr %retval, align 8, !dbg !316
  br label %return, !dbg !316

return:                                           ; preds = %sw.default, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %38 = load ptr, ptr %retval, align 8, !dbg !317
  ret ptr %38, !dbg !317
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_rw6(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !318 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %lba = alloca i32, align 4
  %txlen = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !320, metadata !DIExpression()), !dbg !326
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !321, metadata !DIExpression()), !dbg !327
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !322, metadata !DIExpression()), !dbg !328
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !323, metadata !DIExpression()), !dbg !330
  %0 = load ptr, ptr %p.addr, align 8, !dbg !331
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !332
  store ptr %call, ptr %ret, align 8, !dbg !330
  call void @llvm.lifetime.start.p0(i64 4, ptr %lba) #6, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %lba, metadata !324, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 4, ptr %txlen) #6, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %txlen, metadata !325, metadata !DIExpression()), !dbg !335
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !336
  %arrayidx = getelementptr i8, ptr %1, i64 1, !dbg !336
  %call1 = call i32 @get_unaligned_be24(ptr noundef %arrayidx) #5, !dbg !337
  %and = and i32 %call1, 2097151, !dbg !338
  store i32 %and, ptr %lba, align 4, !dbg !339
  %2 = load ptr, ptr %cdb.addr, align 8, !dbg !340
  %arrayidx2 = getelementptr i8, ptr %2, i64 4, !dbg !340
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !340
  %conv = zext i8 %3 to i32, !dbg !340
  %tobool = icmp ne i32 %conv, 0, !dbg !340
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !340

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %cdb.addr, align 8, !dbg !341
  %arrayidx3 = getelementptr i8, ptr %4, i64 4, !dbg !341
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !341
  %conv4 = zext i8 %5 to i32, !dbg !341
  br label %cond.end, !dbg !340

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !340

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 256, %cond.false ], !dbg !340
  store i32 %cond, ptr %txlen, align 4, !dbg !342
  %6 = load ptr, ptr %p.addr, align 8, !dbg !343
  %7 = load i32, ptr %lba, align 4, !dbg !344
  %8 = load i32, ptr %txlen, align 4, !dbg !345
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef @.str, i32 noundef %7, i32 noundef %8) #5, !dbg !346
  %9 = load ptr, ptr %p.addr, align 8, !dbg !347
  call void @trace_seq_putc(ptr noundef %9, i8 noundef zeroext 0) #5, !dbg !348
  %10 = load ptr, ptr %ret, align 8, !dbg !349
  call void @llvm.lifetime.end.p0(i64 4, ptr %txlen) #6, !dbg !350
  call void @llvm.lifetime.end.p0(i64 4, ptr %lba) #6, !dbg !350
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !350
  ret ptr %10, !dbg !351
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_rw10(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !352 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %lba = alloca i32, align 4
  %txlen = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !354, metadata !DIExpression()), !dbg !360
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !355, metadata !DIExpression()), !dbg !361
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !356, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !357, metadata !DIExpression()), !dbg !364
  %0 = load ptr, ptr %p.addr, align 8, !dbg !365
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !366
  store ptr %call, ptr %ret, align 8, !dbg !364
  call void @llvm.lifetime.start.p0(i64 4, ptr %lba) #6, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %lba, metadata !358, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 4, ptr %txlen) #6, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %txlen, metadata !359, metadata !DIExpression()), !dbg !369
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !370
  %arrayidx = getelementptr i8, ptr %1, i64 2, !dbg !370
  %call1 = call i32 @get_unaligned_be32(ptr noundef %arrayidx) #5, !dbg !371
  store i32 %call1, ptr %lba, align 4, !dbg !372
  %2 = load ptr, ptr %cdb.addr, align 8, !dbg !373
  %arrayidx2 = getelementptr i8, ptr %2, i64 7, !dbg !373
  %call3 = call zeroext i16 @get_unaligned_be16(ptr noundef %arrayidx2) #5, !dbg !374
  %conv = zext i16 %call3 to i32, !dbg !374
  store i32 %conv, ptr %txlen, align 4, !dbg !375
  %3 = load ptr, ptr %p.addr, align 8, !dbg !376
  %4 = load i32, ptr %lba, align 4, !dbg !377
  %5 = load i32, ptr %txlen, align 4, !dbg !378
  %6 = load ptr, ptr %cdb.addr, align 8, !dbg !379
  %arrayidx4 = getelementptr i8, ptr %6, i64 1, !dbg !379
  %7 = load i8, ptr %arrayidx4, align 1, !dbg !379
  %conv5 = zext i8 %7 to i32, !dbg !379
  %shr = ashr i32 %conv5, 5, !dbg !380
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef @.str.1, i32 noundef %4, i32 noundef %5, i32 noundef %shr) #5, !dbg !381
  %8 = load ptr, ptr %cdb.addr, align 8, !dbg !382
  %arrayidx6 = getelementptr i8, ptr %8, i64 0, !dbg !382
  %9 = load i8, ptr %arrayidx6, align 1, !dbg !382
  %conv7 = zext i8 %9 to i32, !dbg !382
  %cmp = icmp eq i32 %conv7, 65, !dbg !384
  br i1 %cmp, label %if.then, label %if.end, !dbg !385

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %p.addr, align 8, !dbg !386
  %11 = load ptr, ptr %cdb.addr, align 8, !dbg !387
  %arrayidx9 = getelementptr i8, ptr %11, i64 1, !dbg !387
  %12 = load i8, ptr %arrayidx9, align 1, !dbg !387
  %conv10 = zext i8 %12 to i32, !dbg !387
  %shr11 = ashr i32 %conv10, 3, !dbg !388
  %and = and i32 %shr11, 1, !dbg !389
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef @.str.2, i32 noundef %and) #5, !dbg !390
  br label %if.end, !dbg !390

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %p.addr, align 8, !dbg !391
  call void @trace_seq_putc(ptr noundef %13, i8 noundef zeroext 0) #5, !dbg !392
  %14 = load ptr, ptr %ret, align 8, !dbg !393
  call void @llvm.lifetime.end.p0(i64 4, ptr %txlen) #6, !dbg !394
  call void @llvm.lifetime.end.p0(i64 4, ptr %lba) #6, !dbg !394
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !394
  ret ptr %14, !dbg !395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_rw12(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !396 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %lba = alloca i32, align 4
  %txlen = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !398, metadata !DIExpression()), !dbg !404
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !399, metadata !DIExpression()), !dbg !405
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !400, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !401, metadata !DIExpression()), !dbg !408
  %0 = load ptr, ptr %p.addr, align 8, !dbg !409
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !410
  store ptr %call, ptr %ret, align 8, !dbg !408
  call void @llvm.lifetime.start.p0(i64 4, ptr %lba) #6, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %lba, metadata !402, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 4, ptr %txlen) #6, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %txlen, metadata !403, metadata !DIExpression()), !dbg !413
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !414
  %arrayidx = getelementptr i8, ptr %1, i64 2, !dbg !414
  %call1 = call i32 @get_unaligned_be32(ptr noundef %arrayidx) #5, !dbg !415
  store i32 %call1, ptr %lba, align 4, !dbg !416
  %2 = load ptr, ptr %cdb.addr, align 8, !dbg !417
  %arrayidx2 = getelementptr i8, ptr %2, i64 6, !dbg !417
  %call3 = call i32 @get_unaligned_be32(ptr noundef %arrayidx2) #5, !dbg !418
  store i32 %call3, ptr %txlen, align 4, !dbg !419
  %3 = load ptr, ptr %p.addr, align 8, !dbg !420
  %4 = load i32, ptr %lba, align 4, !dbg !421
  %5 = load i32, ptr %txlen, align 4, !dbg !422
  %6 = load ptr, ptr %cdb.addr, align 8, !dbg !423
  %arrayidx4 = getelementptr i8, ptr %6, i64 1, !dbg !423
  %7 = load i8, ptr %arrayidx4, align 1, !dbg !423
  %conv = zext i8 %7 to i32, !dbg !423
  %shr = ashr i32 %conv, 5, !dbg !424
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef @.str.1, i32 noundef %4, i32 noundef %5, i32 noundef %shr) #5, !dbg !425
  %8 = load ptr, ptr %p.addr, align 8, !dbg !426
  call void @trace_seq_putc(ptr noundef %8, i8 noundef zeroext 0) #5, !dbg !427
  %9 = load ptr, ptr %ret, align 8, !dbg !428
  call void @llvm.lifetime.end.p0(i64 4, ptr %txlen) #6, !dbg !429
  call void @llvm.lifetime.end.p0(i64 4, ptr %lba) #6, !dbg !429
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !429
  ret ptr %9, !dbg !430
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_rw16(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !431 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %lba = alloca i64, align 8
  %txlen = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !433, metadata !DIExpression()), !dbg !439
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !434, metadata !DIExpression()), !dbg !440
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !435, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !436, metadata !DIExpression()), !dbg !443
  %0 = load ptr, ptr %p.addr, align 8, !dbg !444
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !445
  store ptr %call, ptr %ret, align 8, !dbg !443
  call void @llvm.lifetime.start.p0(i64 8, ptr %lba) #6, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %lba, metadata !437, metadata !DIExpression()), !dbg !447
  call void @llvm.lifetime.start.p0(i64 4, ptr %txlen) #6, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %txlen, metadata !438, metadata !DIExpression()), !dbg !449
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !450
  %arrayidx = getelementptr i8, ptr %1, i64 2, !dbg !450
  %call1 = call i64 @get_unaligned_be64(ptr noundef %arrayidx) #5, !dbg !451
  store i64 %call1, ptr %lba, align 8, !dbg !452
  %2 = load ptr, ptr %cdb.addr, align 8, !dbg !453
  %arrayidx2 = getelementptr i8, ptr %2, i64 10, !dbg !453
  %call3 = call i32 @get_unaligned_be32(ptr noundef %arrayidx2) #5, !dbg !454
  store i32 %call3, ptr %txlen, align 4, !dbg !455
  %3 = load ptr, ptr %p.addr, align 8, !dbg !456
  %4 = load i64, ptr %lba, align 8, !dbg !457
  %5 = load i32, ptr %txlen, align 4, !dbg !458
  %6 = load ptr, ptr %cdb.addr, align 8, !dbg !459
  %arrayidx4 = getelementptr i8, ptr %6, i64 1, !dbg !459
  %7 = load i8, ptr %arrayidx4, align 1, !dbg !459
  %conv = zext i8 %7 to i32, !dbg !459
  %shr = ashr i32 %conv, 5, !dbg !460
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef @.str.3, i64 noundef %4, i32 noundef %5, i32 noundef %shr) #5, !dbg !461
  %8 = load ptr, ptr %cdb.addr, align 8, !dbg !462
  %arrayidx5 = getelementptr i8, ptr %8, i64 0, !dbg !462
  %9 = load i8, ptr %arrayidx5, align 1, !dbg !462
  %conv6 = zext i8 %9 to i32, !dbg !462
  %cmp = icmp eq i32 %conv6, 147, !dbg !464
  br i1 %cmp, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %p.addr, align 8, !dbg !466
  %11 = load ptr, ptr %cdb.addr, align 8, !dbg !467
  %arrayidx8 = getelementptr i8, ptr %11, i64 1, !dbg !467
  %12 = load i8, ptr %arrayidx8, align 1, !dbg !467
  %conv9 = zext i8 %12 to i32, !dbg !467
  %shr10 = ashr i32 %conv9, 3, !dbg !468
  %and = and i32 %shr10, 1, !dbg !469
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef @.str.2, i32 noundef %and) #5, !dbg !470
  br label %if.end, !dbg !470

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %p.addr, align 8, !dbg !471
  call void @trace_seq_putc(ptr noundef %13, i8 noundef zeroext 0) #5, !dbg !472
  %14 = load ptr, ptr %ret, align 8, !dbg !473
  call void @llvm.lifetime.end.p0(i64 4, ptr %txlen) #6, !dbg !474
  call void @llvm.lifetime.end.p0(i64 8, ptr %lba) #6, !dbg !474
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !474
  ret ptr %14, !dbg !475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_unmap(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !476 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %regions = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !478, metadata !DIExpression()), !dbg !483
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !479, metadata !DIExpression()), !dbg !484
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !480, metadata !DIExpression()), !dbg !485
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !481, metadata !DIExpression()), !dbg !487
  %0 = load ptr, ptr %p.addr, align 8, !dbg !488
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !489
  store ptr %call, ptr %ret, align 8, !dbg !487
  call void @llvm.lifetime.start.p0(i64 4, ptr %regions) #6, !dbg !490
  call void @llvm.dbg.declare(metadata ptr %regions, metadata !482, metadata !DIExpression()), !dbg !491
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !492
  %arrayidx = getelementptr i8, ptr %1, i64 7, !dbg !492
  %call1 = call zeroext i16 @get_unaligned_be16(ptr noundef %arrayidx) #5, !dbg !493
  %conv = zext i16 %call1 to i32, !dbg !493
  store i32 %conv, ptr %regions, align 4, !dbg !491
  %2 = load ptr, ptr %p.addr, align 8, !dbg !494
  %3 = load i32, ptr %regions, align 4, !dbg !495
  %sub = sub i32 %3, 8, !dbg !496
  %div = udiv i32 %sub, 16, !dbg !497
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %2, ptr noundef @.str.4, i32 noundef %div) #5, !dbg !498
  %4 = load ptr, ptr %p.addr, align 8, !dbg !499
  call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext 0) #5, !dbg !500
  %5 = load ptr, ptr %ret, align 8, !dbg !501
  call void @llvm.lifetime.end.p0(i64 4, ptr %regions) #6, !dbg !502
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !502
  ret ptr %5, !dbg !503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_service_action_in(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !504 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  %lba = alloca i64, align 8
  %alloc_len = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !506, metadata !DIExpression()), !dbg !514
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !507, metadata !DIExpression()), !dbg !515
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !508, metadata !DIExpression()), !dbg !516
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !509, metadata !DIExpression()), !dbg !518
  %0 = load ptr, ptr %p.addr, align 8, !dbg !519
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !520
  store ptr %call, ptr %ret, align 8, !dbg !518
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #6, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !510, metadata !DIExpression()), !dbg !521
  call void @llvm.lifetime.start.p0(i64 8, ptr %lba) #6, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %lba, metadata !511, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 4, ptr %alloc_len) #6, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %alloc_len, metadata !512, metadata !DIExpression()), !dbg !525
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !526
  %arrayidx = getelementptr i8, ptr %1, i64 1, !dbg !526
  %2 = load i8, ptr %arrayidx, align 1, !dbg !526
  %conv = zext i8 %2 to i32, !dbg !526
  %and = and i32 %conv, 31, !dbg !526
  switch i32 %and, label %sw.default [
    i32 16, label %sw.bb
    i32 18, label %sw.bb1
  ], !dbg !527

sw.bb:                                            ; preds = %entry
  store ptr @.str.5, ptr %cmd, align 8, !dbg !528
  br label %sw.epilog, !dbg !530

sw.bb1:                                           ; preds = %entry
  store ptr @.str.6, ptr %cmd, align 8, !dbg !531
  br label %sw.epilog, !dbg !532

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !dbg !533
  call void @trace_seq_puts(ptr noundef %3, ptr noundef @.str.7) #5, !dbg !534
  br label %out, !dbg !535

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %4 = load ptr, ptr %cdb.addr, align 8, !dbg !536
  %arrayidx2 = getelementptr i8, ptr %4, i64 2, !dbg !536
  %call3 = call i64 @get_unaligned_be64(ptr noundef %arrayidx2) #5, !dbg !537
  store i64 %call3, ptr %lba, align 8, !dbg !538
  %5 = load ptr, ptr %cdb.addr, align 8, !dbg !539
  %arrayidx4 = getelementptr i8, ptr %5, i64 10, !dbg !539
  %call5 = call i32 @get_unaligned_be32(ptr noundef %arrayidx4) #5, !dbg !540
  store i32 %call5, ptr %alloc_len, align 4, !dbg !541
  %6 = load ptr, ptr %p.addr, align 8, !dbg !542
  %7 = load ptr, ptr %cmd, align 8, !dbg !543
  %8 = load i64, ptr %lba, align 8, !dbg !544
  %9 = load i32, ptr %alloc_len, align 4, !dbg !545
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef @.str.8, ptr noundef %7, i64 noundef %8, i32 noundef %9) #5, !dbg !546
  br label %out, !dbg !546

out:                                              ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !513), !dbg !547
  %10 = load ptr, ptr %p.addr, align 8, !dbg !548
  call void @trace_seq_putc(ptr noundef %10, i8 noundef zeroext 0) #5, !dbg !549
  %11 = load ptr, ptr %ret, align 8, !dbg !550
  call void @llvm.lifetime.end.p0(i64 4, ptr %alloc_len) #6, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %lba) #6, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #6, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !551
  ret ptr %11, !dbg !552
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_varlen(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !553 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !555, metadata !DIExpression()), !dbg !558
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !556, metadata !DIExpression()), !dbg !559
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !557, metadata !DIExpression()), !dbg !560
  %0 = load ptr, ptr %cdb.addr, align 8, !dbg !561
  %arrayidx = getelementptr i8, ptr %0, i64 8, !dbg !561
  %call = call zeroext i16 @get_unaligned_be16(ptr noundef %arrayidx) #5, !dbg !561
  %conv = zext i16 %call to i32, !dbg !561
  switch i32 %conv, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 13, label %sw.bb
  ], !dbg !562

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !563
  %2 = load ptr, ptr %cdb.addr, align 8, !dbg !565
  %3 = load i32, ptr %len.addr, align 4, !dbg !566
  %call1 = call ptr @scsi_trace_rw32(ptr noundef %1, ptr noundef %2, i32 noundef %3) #5, !dbg !567
  store ptr %call1, ptr %retval, align 8, !dbg !568
  br label %return, !dbg !568

sw.default:                                       ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !569
  %5 = load ptr, ptr %cdb.addr, align 8, !dbg !570
  %6 = load i32, ptr %len.addr, align 4, !dbg !571
  %call2 = call ptr @scsi_trace_misc(ptr noundef %4, ptr noundef %5, i32 noundef %6) #5, !dbg !572
  store ptr %call2, ptr %retval, align 8, !dbg !573
  br label %return, !dbg !573

return:                                           ; preds = %sw.default, %sw.bb
  %7 = load ptr, ptr %retval, align 8, !dbg !574
  ret ptr %7, !dbg !574
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_maintenance_in(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !575 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  %alloc_len = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !577, metadata !DIExpression()), !dbg !584
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !578, metadata !DIExpression()), !dbg !585
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !579, metadata !DIExpression()), !dbg !586
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !580, metadata !DIExpression()), !dbg !588
  %0 = load ptr, ptr %p.addr, align 8, !dbg !589
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !590
  store ptr %call, ptr %ret, align 8, !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #6, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !581, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0(i64 4, ptr %alloc_len) #6, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %alloc_len, metadata !582, metadata !DIExpression()), !dbg !593
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !594
  %arrayidx = getelementptr i8, ptr %1, i64 1, !dbg !594
  %2 = load i8, ptr %arrayidx, align 1, !dbg !594
  %conv = zext i8 %2 to i32, !dbg !594
  %and = and i32 %conv, 31, !dbg !594
  switch i32 %and, label %sw.default [
    i32 5, label %sw.bb
    i32 10, label %sw.bb1
    i32 11, label %sw.bb2
    i32 12, label %sw.bb3
    i32 13, label %sw.bb4
    i32 14, label %sw.bb5
    i32 15, label %sw.bb6
    i32 16, label %sw.bb7
  ], !dbg !595

sw.bb:                                            ; preds = %entry
  store ptr @.str.14, ptr %cmd, align 8, !dbg !596
  br label %sw.epilog, !dbg !598

sw.bb1:                                           ; preds = %entry
  store ptr @.str.15, ptr %cmd, align 8, !dbg !599
  br label %sw.epilog, !dbg !600

sw.bb2:                                           ; preds = %entry
  store ptr @.str.16, ptr %cmd, align 8, !dbg !601
  br label %sw.epilog, !dbg !602

sw.bb3:                                           ; preds = %entry
  store ptr @.str.17, ptr %cmd, align 8, !dbg !603
  br label %sw.epilog, !dbg !604

sw.bb4:                                           ; preds = %entry
  store ptr @.str.18, ptr %cmd, align 8, !dbg !605
  br label %sw.epilog, !dbg !606

sw.bb5:                                           ; preds = %entry
  store ptr @.str.19, ptr %cmd, align 8, !dbg !607
  br label %sw.epilog, !dbg !608

sw.bb6:                                           ; preds = %entry
  store ptr @.str.20, ptr %cmd, align 8, !dbg !609
  br label %sw.epilog, !dbg !610

sw.bb7:                                           ; preds = %entry
  store ptr @.str.21, ptr %cmd, align 8, !dbg !611
  br label %sw.epilog, !dbg !612

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !dbg !613
  call void @trace_seq_puts(ptr noundef %3, ptr noundef @.str.7) #5, !dbg !614
  br label %out, !dbg !615

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load ptr, ptr %cdb.addr, align 8, !dbg !616
  %arrayidx8 = getelementptr i8, ptr %4, i64 6, !dbg !616
  %call9 = call i32 @get_unaligned_be32(ptr noundef %arrayidx8) #5, !dbg !617
  store i32 %call9, ptr %alloc_len, align 4, !dbg !618
  %5 = load ptr, ptr %p.addr, align 8, !dbg !619
  %6 = load ptr, ptr %cmd, align 8, !dbg !620
  %7 = load i32, ptr %alloc_len, align 4, !dbg !621
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %5, ptr noundef @.str.22, ptr noundef %6, i32 noundef %7) #5, !dbg !622
  br label %out, !dbg !622

out:                                              ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !583), !dbg !623
  %8 = load ptr, ptr %p.addr, align 8, !dbg !624
  call void @trace_seq_putc(ptr noundef %8, i8 noundef zeroext 0) #5, !dbg !625
  %9 = load ptr, ptr %ret, align 8, !dbg !626
  call void @llvm.lifetime.end.p0(i64 4, ptr %alloc_len) #6, !dbg !627
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #6, !dbg !627
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !627
  ret ptr %9, !dbg !628
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_maintenance_out(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !629 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  %alloc_len = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !631, metadata !DIExpression()), !dbg !638
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !632, metadata !DIExpression()), !dbg !639
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !633, metadata !DIExpression()), !dbg !640
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !634, metadata !DIExpression()), !dbg !642
  %0 = load ptr, ptr %p.addr, align 8, !dbg !643
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !644
  store ptr %call, ptr %ret, align 8, !dbg !642
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #6, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !635, metadata !DIExpression()), !dbg !645
  call void @llvm.lifetime.start.p0(i64 4, ptr %alloc_len) #6, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %alloc_len, metadata !636, metadata !DIExpression()), !dbg !647
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !648
  %arrayidx = getelementptr i8, ptr %1, i64 1, !dbg !648
  %2 = load i8, ptr %arrayidx, align 1, !dbg !648
  %conv = zext i8 %2 to i32, !dbg !648
  %and = and i32 %conv, 31, !dbg !648
  switch i32 %and, label %sw.default [
    i32 6, label %sw.bb
    i32 10, label %sw.bb1
    i32 11, label %sw.bb2
    i32 14, label %sw.bb3
    i32 15, label %sw.bb4
    i32 16, label %sw.bb5
  ], !dbg !649

sw.bb:                                            ; preds = %entry
  store ptr @.str.23, ptr %cmd, align 8, !dbg !650
  br label %sw.epilog, !dbg !652

sw.bb1:                                           ; preds = %entry
  store ptr @.str.24, ptr %cmd, align 8, !dbg !653
  br label %sw.epilog, !dbg !654

sw.bb2:                                           ; preds = %entry
  store ptr @.str.25, ptr %cmd, align 8, !dbg !655
  br label %sw.epilog, !dbg !656

sw.bb3:                                           ; preds = %entry
  store ptr @.str.26, ptr %cmd, align 8, !dbg !657
  br label %sw.epilog, !dbg !658

sw.bb4:                                           ; preds = %entry
  store ptr @.str.27, ptr %cmd, align 8, !dbg !659
  br label %sw.epilog, !dbg !660

sw.bb5:                                           ; preds = %entry
  store ptr @.str.28, ptr %cmd, align 8, !dbg !661
  br label %sw.epilog, !dbg !662

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !dbg !663
  call void @trace_seq_puts(ptr noundef %3, ptr noundef @.str.7) #5, !dbg !664
  br label %out, !dbg !665

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load ptr, ptr %cdb.addr, align 8, !dbg !666
  %arrayidx6 = getelementptr i8, ptr %4, i64 6, !dbg !666
  %call7 = call i32 @get_unaligned_be32(ptr noundef %arrayidx6) #5, !dbg !667
  store i32 %call7, ptr %alloc_len, align 4, !dbg !668
  %5 = load ptr, ptr %p.addr, align 8, !dbg !669
  %6 = load ptr, ptr %cmd, align 8, !dbg !670
  %7 = load i32, ptr %alloc_len, align 4, !dbg !671
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %5, ptr noundef @.str.22, ptr noundef %6, i32 noundef %7) #5, !dbg !672
  br label %out, !dbg !672

out:                                              ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !637), !dbg !673
  %8 = load ptr, ptr %p.addr, align 8, !dbg !674
  call void @trace_seq_putc(ptr noundef %8, i8 noundef zeroext 0) #5, !dbg !675
  %9 = load ptr, ptr %ret, align 8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 4, ptr %alloc_len) #6, !dbg !677
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #6, !dbg !677
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !677
  ret ptr %9, !dbg !678
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_zbc_in(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !679 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  %zone_id = alloca i64, align 8
  %alloc_len = alloca i32, align 4
  %options = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !681, metadata !DIExpression()), !dbg !692
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !682, metadata !DIExpression()), !dbg !693
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !683, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !684, metadata !DIExpression()), !dbg !696
  %0 = load ptr, ptr %p.addr, align 8, !dbg !697
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !698
  store ptr %call, ptr %ret, align 8, !dbg !696
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #6, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !685, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 8, ptr %zone_id) #6, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %zone_id, metadata !686, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 4, ptr %alloc_len) #6, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %alloc_len, metadata !687, metadata !DIExpression()), !dbg !703
  call void @llvm.lifetime.start.p0(i64 1, ptr %options) #6, !dbg !704
  call void @llvm.dbg.declare(metadata ptr %options, metadata !688, metadata !DIExpression()), !dbg !705
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !706
  %arrayidx = getelementptr i8, ptr %1, i64 1, !dbg !706
  %2 = load i8, ptr %arrayidx, align 1, !dbg !706
  %conv = zext i8 %2 to i32, !dbg !706
  %and = and i32 %conv, 31, !dbg !706
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
  ], !dbg !707

sw.bb:                                            ; preds = %entry
  store ptr @.str.29, ptr %cmd, align 8, !dbg !708
  br label %sw.epilog, !dbg !710

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !dbg !711
  call void @trace_seq_puts(ptr noundef %3, ptr noundef @.str.7) #5, !dbg !712
  br label %out, !dbg !713

sw.epilog:                                        ; preds = %sw.bb
  %4 = load ptr, ptr %cdb.addr, align 8, !dbg !714
  %arrayidx1 = getelementptr i8, ptr %4, i64 2, !dbg !714
  %call2 = call i64 @get_unaligned_be64(ptr noundef %arrayidx1) #5, !dbg !715
  store i64 %call2, ptr %zone_id, align 8, !dbg !716
  %5 = load ptr, ptr %cdb.addr, align 8, !dbg !717
  %arrayidx3 = getelementptr i8, ptr %5, i64 10, !dbg !717
  %call4 = call i32 @get_unaligned_be32(ptr noundef %arrayidx3) #5, !dbg !718
  store i32 %call4, ptr %alloc_len, align 4, !dbg !719
  %6 = load ptr, ptr %cdb.addr, align 8, !dbg !720
  %arrayidx5 = getelementptr i8, ptr %6, i64 14, !dbg !720
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !720
  %conv6 = zext i8 %7 to i32, !dbg !720
  %and7 = and i32 %conv6, 63, !dbg !721
  %conv8 = trunc i32 %and7 to i8, !dbg !720
  store i8 %conv8, ptr %options, align 1, !dbg !722
  %8 = load ptr, ptr %p.addr, align 8, !dbg !723
  %9 = load ptr, ptr %cmd, align 8, !dbg !724
  %10 = load i64, ptr %zone_id, align 8, !dbg !725
  %11 = load i32, ptr %alloc_len, align 4, !dbg !726
  %12 = load i8, ptr %options, align 1, !dbg !727
  %conv9 = zext i8 %12 to i32, !dbg !727
  %13 = load ptr, ptr %cdb.addr, align 8, !dbg !728
  %arrayidx10 = getelementptr i8, ptr %13, i64 14, !dbg !728
  %14 = load i8, ptr %arrayidx10, align 1, !dbg !728
  %conv11 = zext i8 %14 to i32, !dbg !728
  %shr = ashr i32 %conv11, 7, !dbg !729
  %and12 = and i32 %shr, 1, !dbg !730
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %8, ptr noundef @.str.30, ptr noundef %9, i64 noundef %10, i32 noundef %11, i32 noundef %conv9, i32 noundef %and12) #5, !dbg !731
  br label %out, !dbg !731

out:                                              ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !691), !dbg !732
  %15 = load ptr, ptr %p.addr, align 8, !dbg !733
  call void @trace_seq_putc(ptr noundef %15, i8 noundef zeroext 0) #5, !dbg !734
  %16 = load ptr, ptr %ret, align 8, !dbg !735
  call void @llvm.lifetime.end.p0(i64 1, ptr %options) #6, !dbg !736
  call void @llvm.lifetime.end.p0(i64 4, ptr %alloc_len) #6, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %zone_id) #6, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #6, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !736
  ret ptr %16, !dbg !737
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_zbc_out(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !738 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  %zone_id = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !740, metadata !DIExpression()), !dbg !747
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !741, metadata !DIExpression()), !dbg !748
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !742, metadata !DIExpression()), !dbg !749
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !743, metadata !DIExpression()), !dbg !751
  %0 = load ptr, ptr %p.addr, align 8, !dbg !752
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !753
  store ptr %call, ptr %ret, align 8, !dbg !751
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #6, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !744, metadata !DIExpression()), !dbg !754
  call void @llvm.lifetime.start.p0(i64 8, ptr %zone_id) #6, !dbg !755
  call void @llvm.dbg.declare(metadata ptr %zone_id, metadata !745, metadata !DIExpression()), !dbg !756
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !757
  %arrayidx = getelementptr i8, ptr %1, i64 1, !dbg !757
  %2 = load i8, ptr %arrayidx, align 1, !dbg !757
  %conv = zext i8 %2 to i32, !dbg !757
  %and = and i32 %conv, 31, !dbg !757
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
  ], !dbg !758

sw.bb:                                            ; preds = %entry
  store ptr @.str.31, ptr %cmd, align 8, !dbg !759
  br label %sw.epilog, !dbg !761

sw.bb1:                                           ; preds = %entry
  store ptr @.str.32, ptr %cmd, align 8, !dbg !762
  br label %sw.epilog, !dbg !763

sw.bb2:                                           ; preds = %entry
  store ptr @.str.33, ptr %cmd, align 8, !dbg !764
  br label %sw.epilog, !dbg !765

sw.bb3:                                           ; preds = %entry
  store ptr @.str.34, ptr %cmd, align 8, !dbg !766
  br label %sw.epilog, !dbg !767

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !dbg !768
  call void @trace_seq_puts(ptr noundef %3, ptr noundef @.str.7) #5, !dbg !769
  br label %out, !dbg !770

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load ptr, ptr %cdb.addr, align 8, !dbg !771
  %arrayidx4 = getelementptr i8, ptr %4, i64 2, !dbg !771
  %call5 = call i64 @get_unaligned_be64(ptr noundef %arrayidx4) #5, !dbg !772
  store i64 %call5, ptr %zone_id, align 8, !dbg !773
  %5 = load ptr, ptr %p.addr, align 8, !dbg !774
  %6 = load ptr, ptr %cmd, align 8, !dbg !775
  %7 = load i64, ptr %zone_id, align 8, !dbg !776
  %8 = load ptr, ptr %cdb.addr, align 8, !dbg !777
  %arrayidx6 = getelementptr i8, ptr %8, i64 14, !dbg !777
  %9 = load i8, ptr %arrayidx6, align 1, !dbg !777
  %conv7 = zext i8 %9 to i32, !dbg !777
  %and8 = and i32 %conv7, 1, !dbg !778
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %5, ptr noundef @.str.35, ptr noundef %6, i64 noundef %7, i32 noundef %and8) #5, !dbg !779
  br label %out, !dbg !779

out:                                              ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !746), !dbg !780
  %10 = load ptr, ptr %p.addr, align 8, !dbg !781
  call void @trace_seq_putc(ptr noundef %10, i8 noundef zeroext 0) #5, !dbg !782
  %11 = load ptr, ptr %ret, align 8, !dbg !783
  call void @llvm.lifetime.end.p0(i64 8, ptr %zone_id) #6, !dbg !784
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #6, !dbg !784
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !784
  ret ptr %11, !dbg !785
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_misc(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !786 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !788, metadata !DIExpression()), !dbg !792
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !789, metadata !DIExpression()), !dbg !793
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !790, metadata !DIExpression()), !dbg !794
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !795
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !791, metadata !DIExpression()), !dbg !796
  %0 = load ptr, ptr %p.addr, align 8, !dbg !797
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !798
  store ptr %call, ptr %ret, align 8, !dbg !796
  %1 = load ptr, ptr %p.addr, align 8, !dbg !799
  call void @trace_seq_putc(ptr noundef %1, i8 noundef zeroext 45) #5, !dbg !800
  %2 = load ptr, ptr %p.addr, align 8, !dbg !801
  call void @trace_seq_putc(ptr noundef %2, i8 noundef zeroext 0) #5, !dbg !802
  %3 = load ptr, ptr %ret, align 8, !dbg !803
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !804
  ret ptr %3, !dbg !805
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @trace_seq_buffer_ptr(ptr noundef %s) #3 align 16 !dbg !806 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !810, metadata !DIExpression()), !dbg !811
  %0 = load ptr, ptr %s.addr, align 8, !dbg !812
  %buffer = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 0, !dbg !813
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %buffer, i64 0, i64 0, !dbg !812
  %1 = load ptr, ptr %s.addr, align 8, !dbg !814
  %seq = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, !dbg !815
  %call = call i32 @seq_buf_used(ptr noundef %seq) #5, !dbg !816
  %idx.ext = zext i32 %call to i64, !dbg !817
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !817
  ret ptr %add.ptr, !dbg !818
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_be24(ptr noundef %p) #3 align 16 !dbg !819 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !821, metadata !DIExpression()), !dbg !822
  %0 = load ptr, ptr %p.addr, align 8, !dbg !823
  %call = call i32 @__get_unaligned_be24(ptr noundef %0) #5, !dbg !824
  ret i32 %call, !dbg !825
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !826 dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !829 dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_buf_used(ptr noundef %s) #3 align 16 !dbg !832 {
entry:
  %s.addr = alloca ptr, align 8
  %__UNIQUE_ID___x249 = alloca i64, align 8
  %__UNIQUE_ID___y250 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !837, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x249) #6, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x249, metadata !838, metadata !DIExpression()), !dbg !842
  %0 = load ptr, ptr %s.addr, align 8, !dbg !842
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !842
  %1 = load i64, ptr %len, align 8, !dbg !842
  store i64 %1, ptr %__UNIQUE_ID___x249, align 8, !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y250) #6, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y250, metadata !840, metadata !DIExpression()), !dbg !842
  %2 = load ptr, ptr %s.addr, align 8, !dbg !842
  %size = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 1, !dbg !842
  %3 = load i64, ptr %size, align 8, !dbg !842
  store i64 %3, ptr %__UNIQUE_ID___y250, align 8, !dbg !842
  %4 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !842
  %5 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !842
  %cmp = icmp ult i64 %4, %5, !dbg !842
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !842

cond.true:                                        ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !842
  br label %cond.end, !dbg !842

cond.false:                                       ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !842
  br label %cond.end, !dbg !842

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !842
  store i64 %cond, ptr %tmp, align 8, !dbg !842
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y250) #6, !dbg !843
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x249) #6, !dbg !843
  %8 = load i64, ptr %tmp, align 8, !dbg !842
  %conv = trunc i64 %8 to i32, !dbg !843
  ret i32 %conv, !dbg !844
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_unaligned_be24(ptr noundef %p) #3 align 16 !dbg !845 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !851, metadata !DIExpression()), !dbg !852
  %0 = load ptr, ptr %p.addr, align 8, !dbg !853
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !853
  %1 = load i8, ptr %arrayidx, align 1, !dbg !853
  %conv = zext i8 %1 to i32, !dbg !853
  %shl = shl i32 %conv, 16, !dbg !854
  %2 = load ptr, ptr %p.addr, align 8, !dbg !855
  %arrayidx1 = getelementptr i8, ptr %2, i64 1, !dbg !855
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !855
  %conv2 = zext i8 %3 to i32, !dbg !855
  %shl3 = shl i32 %conv2, 8, !dbg !856
  %or = or i32 %shl, %shl3, !dbg !857
  %4 = load ptr, ptr %p.addr, align 8, !dbg !858
  %arrayidx4 = getelementptr i8, ptr %4, i64 2, !dbg !858
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !858
  %conv5 = zext i8 %5 to i32, !dbg !858
  %or6 = or i32 %or, %conv5, !dbg !859
  ret i32 %or6, !dbg !860
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_be32(ptr noundef %p) #3 align 16 !dbg !160 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !168, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #6, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !169, metadata !DIExpression()), !dbg !862
  %0 = load ptr, ptr %p.addr, align 8, !dbg !862
  store ptr %0, ptr %__pptr, align 8, !dbg !862
  %1 = load ptr, ptr %__pptr, align 8, !dbg !862
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !862
  %2 = load i32, ptr %x, align 1, !dbg !862
  store i32 %2, ptr %tmp, align 4, !dbg !862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #6, !dbg !863
  %3 = load i32, ptr %tmp, align 4, !dbg !862
  %4 = call i32 @llvm.bswap.i32(i32 %3), !dbg !863
  ret i32 %4, !dbg !864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @get_unaligned_be16(ptr noundef %p) #3 align 16 !dbg !179 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !184, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #6, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !185, metadata !DIExpression()), !dbg !866
  %0 = load ptr, ptr %p.addr, align 8, !dbg !866
  store ptr %0, ptr %__pptr, align 8, !dbg !866
  %1 = load ptr, ptr %__pptr, align 8, !dbg !866
  %x = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !866
  %2 = load i16, ptr %x, align 1, !dbg !866
  store i16 %2, ptr %tmp, align 2, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #6, !dbg !867
  %3 = load i16, ptr %tmp, align 2, !dbg !866
  %4 = call i16 @llvm.bswap.i16(i16 %3), !dbg !867
  ret i16 %4, !dbg !868
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_unaligned_be64(ptr noundef %p) #3 align 16 !dbg !195 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !200, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #6, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !201, metadata !DIExpression()), !dbg !870
  %0 = load ptr, ptr %p.addr, align 8, !dbg !870
  store ptr %0, ptr %__pptr, align 8, !dbg !870
  %1 = load ptr, ptr %__pptr, align 8, !dbg !870
  %x = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !870
  %2 = load i64, ptr %x, align 1, !dbg !870
  store i64 %2, ptr %tmp, align 8, !dbg !870
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #6, !dbg !871
  %3 = load i64, ptr %tmp, align 8, !dbg !870
  %4 = call i64 @llvm.bswap.i64(i64 %3), !dbg !871
  ret i64 %4, !dbg !872
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !873 dso_local void @trace_seq_puts(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_trace_rw32(ptr noundef %p, ptr noundef %cdb, i32 noundef %len) #0 align 16 !dbg !876 {
entry:
  %p.addr = alloca ptr, align 8
  %cdb.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  %lba = alloca i64, align 8
  %ei_lbrt = alloca i32, align 4
  %txlen = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !878, metadata !DIExpression()), !dbg !887
  store ptr %cdb, ptr %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb.addr, metadata !879, metadata !DIExpression()), !dbg !888
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !880, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !881, metadata !DIExpression()), !dbg !891
  %0 = load ptr, ptr %p.addr, align 8, !dbg !892
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #5, !dbg !893
  store ptr %call, ptr %ret, align 8, !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #6, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !882, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 8, ptr %lba) #6, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %lba, metadata !883, metadata !DIExpression()), !dbg !896
  call void @llvm.lifetime.start.p0(i64 4, ptr %ei_lbrt) #6, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %ei_lbrt, metadata !884, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.start.p0(i64 4, ptr %txlen) #6, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %txlen, metadata !885, metadata !DIExpression()), !dbg !899
  %1 = load ptr, ptr %cdb.addr, align 8, !dbg !900
  %arrayidx = getelementptr i8, ptr %1, i64 8, !dbg !900
  %call1 = call zeroext i16 @get_unaligned_be16(ptr noundef %arrayidx) #5, !dbg !900
  %conv = zext i16 %call1 to i32, !dbg !900
  switch i32 %conv, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb2
    i32 11, label %sw.bb3
    i32 13, label %sw.bb4
  ], !dbg !901

sw.bb:                                            ; preds = %entry
  store ptr @.str.9, ptr %cmd, align 8, !dbg !902
  br label %sw.epilog, !dbg !904

sw.bb2:                                           ; preds = %entry
  store ptr @.str.10, ptr %cmd, align 8, !dbg !905
  br label %sw.epilog, !dbg !906

sw.bb3:                                           ; preds = %entry
  store ptr @.str.11, ptr %cmd, align 8, !dbg !907
  br label %sw.epilog, !dbg !908

sw.bb4:                                           ; preds = %entry
  store ptr @.str.12, ptr %cmd, align 8, !dbg !909
  br label %sw.epilog, !dbg !910

sw.default:                                       ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !911
  call void @trace_seq_puts(ptr noundef %2, ptr noundef @.str.7) #5, !dbg !912
  br label %out, !dbg !913

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %3 = load ptr, ptr %cdb.addr, align 8, !dbg !914
  %arrayidx5 = getelementptr i8, ptr %3, i64 12, !dbg !914
  %call6 = call i64 @get_unaligned_be64(ptr noundef %arrayidx5) #5, !dbg !915
  store i64 %call6, ptr %lba, align 8, !dbg !916
  %4 = load ptr, ptr %cdb.addr, align 8, !dbg !917
  %arrayidx7 = getelementptr i8, ptr %4, i64 20, !dbg !917
  %call8 = call i32 @get_unaligned_be32(ptr noundef %arrayidx7) #5, !dbg !918
  store i32 %call8, ptr %ei_lbrt, align 4, !dbg !919
  %5 = load ptr, ptr %cdb.addr, align 8, !dbg !920
  %arrayidx9 = getelementptr i8, ptr %5, i64 28, !dbg !920
  %call10 = call i32 @get_unaligned_be32(ptr noundef %arrayidx9) #5, !dbg !921
  store i32 %call10, ptr %txlen, align 4, !dbg !922
  %6 = load ptr, ptr %p.addr, align 8, !dbg !923
  %7 = load ptr, ptr %cmd, align 8, !dbg !924
  %8 = load i64, ptr %lba, align 8, !dbg !925
  %9 = load i32, ptr %txlen, align 4, !dbg !926
  %10 = load ptr, ptr %cdb.addr, align 8, !dbg !927
  %arrayidx11 = getelementptr i8, ptr %10, i64 10, !dbg !927
  %11 = load i8, ptr %arrayidx11, align 1, !dbg !927
  %conv12 = zext i8 %11 to i32, !dbg !927
  %shr = ashr i32 %conv12, 5, !dbg !928
  %12 = load i32, ptr %ei_lbrt, align 4, !dbg !929
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef @.str.13, ptr noundef %7, i64 noundef %8, i32 noundef %9, i32 noundef %shr, i32 noundef %12) #5, !dbg !930
  %13 = load ptr, ptr %cdb.addr, align 8, !dbg !931
  %arrayidx13 = getelementptr i8, ptr %13, i64 8, !dbg !931
  %call14 = call zeroext i16 @get_unaligned_be16(ptr noundef %arrayidx13) #5, !dbg !931
  %conv15 = zext i16 %call14 to i32, !dbg !931
  %cmp = icmp eq i32 %conv15, 13, !dbg !933
  br i1 %cmp, label %if.then, label %if.end, !dbg !934

if.then:                                          ; preds = %sw.epilog
  %14 = load ptr, ptr %p.addr, align 8, !dbg !935
  %15 = load ptr, ptr %cdb.addr, align 8, !dbg !936
  %arrayidx17 = getelementptr i8, ptr %15, i64 10, !dbg !936
  %16 = load i8, ptr %arrayidx17, align 1, !dbg !936
  %conv18 = zext i8 %16 to i32, !dbg !936
  %shr19 = ashr i32 %conv18, 3, !dbg !937
  %and = and i32 %shr19, 1, !dbg !938
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %14, ptr noundef @.str.2, i32 noundef %and) #5, !dbg !939
  br label %if.end, !dbg !939

if.end:                                           ; preds = %if.then, %sw.epilog
  br label %out, !dbg !940

out:                                              ; preds = %if.end, %sw.default
  call void @llvm.dbg.label(metadata !886), !dbg !941
  %17 = load ptr, ptr %p.addr, align 8, !dbg !942
  call void @trace_seq_putc(ptr noundef %17, i8 noundef zeroext 0) #5, !dbg !943
  %18 = load ptr, ptr %ret, align 8, !dbg !944
  call void @llvm.lifetime.end.p0(i64 4, ptr %txlen) #6, !dbg !945
  call void @llvm.lifetime.end.p0(i64 4, ptr %ei_lbrt) #6, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %lba) #6, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #6, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !945
  ret ptr %18, !dbg !946
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!149}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/scsi/scsi_trace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f10987db7f213f26c3c46b7ae75bf386")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 27)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 11)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 17)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 15)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 8)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 25)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 5)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 7)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 6)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !24, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 46)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 31)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 26)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !34, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 33)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 43)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !3, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !29, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 23)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !3, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 28)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !97, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !34, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 13)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 14)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 24)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !113, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 48)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !24, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 12)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !14, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 20)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !144, isLocal: true, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/scsi/.scsi_trace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/scsi/scsi_mod\22 -D KBUILD_BASENAME=\22scsi_trace\22 -D KBUILD_MODNAME=\22scsi_mod\22 -D __KBUILD_MODNAME=kmod_scsi_mod -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/scsi/scsi_trace.ll drivers/scsi/scsi_trace.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !150, globals: !205, splitDebugInlining: false, nameTableKind: None)
!150 = !{!151, !154, !156, !173, !175, !176, !189, !191, !192, !190}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !152, line: 27, baseType: !153)
!152 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!153 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !155, line: 39, baseType: !151)
!155 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !159, line: 62, size: 32, elements: !171)
!159 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!160 = distinct !DISubprogram(name: "get_unaligned_be32", scope: !159, file: !159, line: 60, type: !161, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !167)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !165}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !164, line: 21, baseType: !151)
!164 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!167 = !{!168, !169}
!168 = !DILocalVariable(name: "p", arg: 1, scope: !160, file: !159, line: 60, type: !165)
!169 = !DILocalVariable(name: "__pptr", scope: !170, file: !159, line: 62, type: !156)
!170 = distinct !DILexicalBlock(scope: !160, file: !159, line: 62, column: 9)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !158, file: !159, line: 62, baseType: !154, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !152, line: 24, baseType: !174)
!174 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !155, line: 37, baseType: !173)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !159, line: 57, size: 16, elements: !187)
!179 = distinct !DISubprogram(name: "get_unaligned_be16", scope: !159, file: !159, line: 55, type: !180, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !183)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !165}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !164, line: 19, baseType: !173)
!183 = !{!184, !185}
!184 = !DILocalVariable(name: "p", arg: 1, scope: !179, file: !159, line: 55, type: !165)
!185 = !DILocalVariable(name: "__pptr", scope: !186, file: !159, line: 57, type: !176)
!186 = distinct !DILexicalBlock(scope: !179, file: !159, line: 57, column: 9)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !178, file: !159, line: 57, baseType: !175, size: 16)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !152, line: 31, baseType: !190)
!190 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !155, line: 41, baseType: !189)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !159, line: 67, size: 64, elements: !203)
!195 = distinct !DISubprogram(name: "get_unaligned_be64", scope: !159, file: !159, line: 65, type: !196, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !199)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !165}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !164, line: 23, baseType: !189)
!199 = !{!200, !201}
!200 = !DILocalVariable(name: "p", arg: 1, scope: !195, file: !159, line: 65, type: !165)
!201 = !DILocalVariable(name: "__pptr", scope: !202, file: !159, line: 67, type: !192)
!202 = distinct !DILexicalBlock(scope: !195, file: !159, line: 67, column: 9)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !194, file: !159, line: 67, baseType: !191, size: 64)
!205 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !64, !69, !74, !79, !81, !86, !91, !93, !95, !100, !102, !107, !109, !111, !116, !121, !126, !128, !133, !135, !140, !142, !147}
!206 = !{i32 7, !"Dwarf Version", i32 5}
!207 = !{i32 2, !"Debug Info Version", i32 3}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 8, !"cf-protection-branch", i32 1}
!210 = !{i32 4, !"function_return_thunk_extern", i32 1}
!211 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!212 = !{i32 1, !"Code Model", i32 2}
!213 = !{i32 1, !"override-stack-alignment", i32 8}
!214 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!215 = distinct !DISubprogram(name: "scsi_trace_parse_cdb", scope: !2, file: !2, line: 354, type: !216, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !247)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !220, !245, !244}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !222, line: 14, size: 33088, elements: !223)
!222 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!223 = !{!224, !228, !242, !243}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !221, file: !222, line: 15, baseType: !225, size: 32768)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 4096)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !221, file: !222, line: 16, baseType: !229, size: 192, offset: 32768)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !230, line: 18, size: 192, elements: !231)
!230 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!231 = !{!232, !234, !241}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !229, file: !230, line: 19, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !229, file: !230, line: 20, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !236, line: 61, baseType: !237)
!236 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !238, line: 72, baseType: !239)
!238 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !238, line: 16, baseType: !240)
!240 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !229, file: !230, line: 21, baseType: !235, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !221, file: !222, line: 17, baseType: !235, size: 64, offset: 32960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !221, file: !222, line: 18, baseType: !244, size: 32, offset: 33024)
!244 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !{!248, !249, !250}
!248 = !DILocalVariable(name: "p", arg: 1, scope: !215, file: !2, line: 354, type: !220)
!249 = !DILocalVariable(name: "cdb", arg: 2, scope: !215, file: !2, line: 354, type: !245)
!250 = !DILocalVariable(name: "len", arg: 3, scope: !215, file: !2, line: 354, type: !244)
!251 = !DILocation(line: 354, column: 40, scope: !215)
!252 = !DILocation(line: 354, column: 58, scope: !215)
!253 = !DILocation(line: 354, column: 67, scope: !215)
!254 = !DILocation(line: 356, column: 10, scope: !215)
!255 = !DILocation(line: 356, column: 2, scope: !215)
!256 = !DILocation(line: 359, column: 25, scope: !257)
!257 = distinct !DILexicalBlock(scope: !215, file: !2, line: 356, column: 18)
!258 = !DILocation(line: 359, column: 28, scope: !257)
!259 = !DILocation(line: 359, column: 33, scope: !257)
!260 = !DILocation(line: 359, column: 10, scope: !257)
!261 = !DILocation(line: 359, column: 3, scope: !257)
!262 = !DILocation(line: 364, column: 26, scope: !257)
!263 = !DILocation(line: 364, column: 29, scope: !257)
!264 = !DILocation(line: 364, column: 34, scope: !257)
!265 = !DILocation(line: 364, column: 10, scope: !257)
!266 = !DILocation(line: 364, column: 3, scope: !257)
!267 = !DILocation(line: 368, column: 26, scope: !257)
!268 = !DILocation(line: 368, column: 29, scope: !257)
!269 = !DILocation(line: 368, column: 34, scope: !257)
!270 = !DILocation(line: 368, column: 10, scope: !257)
!271 = !DILocation(line: 368, column: 3, scope: !257)
!272 = !DILocation(line: 373, column: 26, scope: !257)
!273 = !DILocation(line: 373, column: 29, scope: !257)
!274 = !DILocation(line: 373, column: 34, scope: !257)
!275 = !DILocation(line: 373, column: 10, scope: !257)
!276 = !DILocation(line: 373, column: 3, scope: !257)
!277 = !DILocation(line: 375, column: 27, scope: !257)
!278 = !DILocation(line: 375, column: 30, scope: !257)
!279 = !DILocation(line: 375, column: 35, scope: !257)
!280 = !DILocation(line: 375, column: 10, scope: !257)
!281 = !DILocation(line: 375, column: 3, scope: !257)
!282 = !DILocation(line: 377, column: 39, scope: !257)
!283 = !DILocation(line: 377, column: 42, scope: !257)
!284 = !DILocation(line: 377, column: 47, scope: !257)
!285 = !DILocation(line: 377, column: 10, scope: !257)
!286 = !DILocation(line: 377, column: 3, scope: !257)
!287 = !DILocation(line: 379, column: 28, scope: !257)
!288 = !DILocation(line: 379, column: 31, scope: !257)
!289 = !DILocation(line: 379, column: 36, scope: !257)
!290 = !DILocation(line: 379, column: 10, scope: !257)
!291 = !DILocation(line: 379, column: 3, scope: !257)
!292 = !DILocation(line: 381, column: 36, scope: !257)
!293 = !DILocation(line: 381, column: 39, scope: !257)
!294 = !DILocation(line: 381, column: 44, scope: !257)
!295 = !DILocation(line: 381, column: 10, scope: !257)
!296 = !DILocation(line: 381, column: 3, scope: !257)
!297 = !DILocation(line: 383, column: 37, scope: !257)
!298 = !DILocation(line: 383, column: 40, scope: !257)
!299 = !DILocation(line: 383, column: 45, scope: !257)
!300 = !DILocation(line: 383, column: 10, scope: !257)
!301 = !DILocation(line: 383, column: 3, scope: !257)
!302 = !DILocation(line: 385, column: 28, scope: !257)
!303 = !DILocation(line: 385, column: 31, scope: !257)
!304 = !DILocation(line: 385, column: 36, scope: !257)
!305 = !DILocation(line: 385, column: 10, scope: !257)
!306 = !DILocation(line: 385, column: 3, scope: !257)
!307 = !DILocation(line: 387, column: 29, scope: !257)
!308 = !DILocation(line: 387, column: 32, scope: !257)
!309 = !DILocation(line: 387, column: 37, scope: !257)
!310 = !DILocation(line: 387, column: 10, scope: !257)
!311 = !DILocation(line: 387, column: 3, scope: !257)
!312 = !DILocation(line: 389, column: 26, scope: !257)
!313 = !DILocation(line: 389, column: 29, scope: !257)
!314 = !DILocation(line: 389, column: 34, scope: !257)
!315 = !DILocation(line: 389, column: 10, scope: !257)
!316 = !DILocation(line: 389, column: 3, scope: !257)
!317 = !DILocation(line: 391, column: 1, scope: !215)
!318 = distinct !DISubprogram(name: "scsi_trace_rw6", scope: !2, file: !2, line: 18, type: !216, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !319)
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DILocalVariable(name: "p", arg: 1, scope: !318, file: !2, line: 18, type: !220)
!321 = !DILocalVariable(name: "cdb", arg: 2, scope: !318, file: !2, line: 18, type: !245)
!322 = !DILocalVariable(name: "len", arg: 3, scope: !318, file: !2, line: 18, type: !244)
!323 = !DILocalVariable(name: "ret", scope: !318, file: !2, line: 20, type: !218)
!324 = !DILocalVariable(name: "lba", scope: !318, file: !2, line: 21, type: !163)
!325 = !DILocalVariable(name: "txlen", scope: !318, file: !2, line: 21, type: !163)
!326 = !DILocation(line: 18, column: 34, scope: !318)
!327 = !DILocation(line: 18, column: 52, scope: !318)
!328 = !DILocation(line: 18, column: 61, scope: !318)
!329 = !DILocation(line: 20, column: 2, scope: !318)
!330 = !DILocation(line: 20, column: 14, scope: !318)
!331 = !DILocation(line: 20, column: 41, scope: !318)
!332 = !DILocation(line: 20, column: 20, scope: !318)
!333 = !DILocation(line: 21, column: 2, scope: !318)
!334 = !DILocation(line: 21, column: 6, scope: !318)
!335 = !DILocation(line: 21, column: 11, scope: !318)
!336 = !DILocation(line: 23, column: 28, scope: !318)
!337 = !DILocation(line: 23, column: 8, scope: !318)
!338 = !DILocation(line: 23, column: 36, scope: !318)
!339 = !DILocation(line: 23, column: 6, scope: !318)
!340 = !DILocation(line: 28, column: 10, scope: !318)
!341 = !DILocation(line: 28, column: 19, scope: !318)
!342 = !DILocation(line: 28, column: 8, scope: !318)
!343 = !DILocation(line: 30, column: 19, scope: !318)
!344 = !DILocation(line: 30, column: 41, scope: !318)
!345 = !DILocation(line: 30, column: 46, scope: !318)
!346 = !DILocation(line: 30, column: 2, scope: !318)
!347 = !DILocation(line: 31, column: 17, scope: !318)
!348 = !DILocation(line: 31, column: 2, scope: !318)
!349 = !DILocation(line: 33, column: 9, scope: !318)
!350 = !DILocation(line: 34, column: 1, scope: !318)
!351 = !DILocation(line: 33, column: 2, scope: !318)
!352 = distinct !DISubprogram(name: "scsi_trace_rw10", scope: !2, file: !2, line: 37, type: !216, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !353)
!353 = !{!354, !355, !356, !357, !358, !359}
!354 = !DILocalVariable(name: "p", arg: 1, scope: !352, file: !2, line: 37, type: !220)
!355 = !DILocalVariable(name: "cdb", arg: 2, scope: !352, file: !2, line: 37, type: !245)
!356 = !DILocalVariable(name: "len", arg: 3, scope: !352, file: !2, line: 37, type: !244)
!357 = !DILocalVariable(name: "ret", scope: !352, file: !2, line: 39, type: !218)
!358 = !DILocalVariable(name: "lba", scope: !352, file: !2, line: 40, type: !163)
!359 = !DILocalVariable(name: "txlen", scope: !352, file: !2, line: 40, type: !163)
!360 = !DILocation(line: 37, column: 35, scope: !352)
!361 = !DILocation(line: 37, column: 53, scope: !352)
!362 = !DILocation(line: 37, column: 62, scope: !352)
!363 = !DILocation(line: 39, column: 2, scope: !352)
!364 = !DILocation(line: 39, column: 14, scope: !352)
!365 = !DILocation(line: 39, column: 41, scope: !352)
!366 = !DILocation(line: 39, column: 20, scope: !352)
!367 = !DILocation(line: 40, column: 2, scope: !352)
!368 = !DILocation(line: 40, column: 6, scope: !352)
!369 = !DILocation(line: 40, column: 11, scope: !352)
!370 = !DILocation(line: 42, column: 28, scope: !352)
!371 = !DILocation(line: 42, column: 8, scope: !352)
!372 = !DILocation(line: 42, column: 6, scope: !352)
!373 = !DILocation(line: 43, column: 30, scope: !352)
!374 = !DILocation(line: 43, column: 10, scope: !352)
!375 = !DILocation(line: 43, column: 8, scope: !352)
!376 = !DILocation(line: 45, column: 19, scope: !352)
!377 = !DILocation(line: 45, column: 52, scope: !352)
!378 = !DILocation(line: 45, column: 57, scope: !352)
!379 = !DILocation(line: 46, column: 5, scope: !352)
!380 = !DILocation(line: 46, column: 12, scope: !352)
!381 = !DILocation(line: 45, column: 2, scope: !352)
!382 = !DILocation(line: 48, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !352, file: !2, line: 48, column: 6)
!384 = !DILocation(line: 48, column: 13, scope: !383)
!385 = !DILocation(line: 48, column: 6, scope: !352)
!386 = !DILocation(line: 49, column: 20, scope: !383)
!387 = !DILocation(line: 49, column: 36, scope: !383)
!388 = !DILocation(line: 49, column: 43, scope: !383)
!389 = !DILocation(line: 49, column: 48, scope: !383)
!390 = !DILocation(line: 49, column: 3, scope: !383)
!391 = !DILocation(line: 51, column: 17, scope: !352)
!392 = !DILocation(line: 51, column: 2, scope: !352)
!393 = !DILocation(line: 53, column: 9, scope: !352)
!394 = !DILocation(line: 54, column: 1, scope: !352)
!395 = !DILocation(line: 53, column: 2, scope: !352)
!396 = distinct !DISubprogram(name: "scsi_trace_rw12", scope: !2, file: !2, line: 57, type: !216, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !397)
!397 = !{!398, !399, !400, !401, !402, !403}
!398 = !DILocalVariable(name: "p", arg: 1, scope: !396, file: !2, line: 57, type: !220)
!399 = !DILocalVariable(name: "cdb", arg: 2, scope: !396, file: !2, line: 57, type: !245)
!400 = !DILocalVariable(name: "len", arg: 3, scope: !396, file: !2, line: 57, type: !244)
!401 = !DILocalVariable(name: "ret", scope: !396, file: !2, line: 59, type: !218)
!402 = !DILocalVariable(name: "lba", scope: !396, file: !2, line: 60, type: !163)
!403 = !DILocalVariable(name: "txlen", scope: !396, file: !2, line: 60, type: !163)
!404 = !DILocation(line: 57, column: 35, scope: !396)
!405 = !DILocation(line: 57, column: 53, scope: !396)
!406 = !DILocation(line: 57, column: 62, scope: !396)
!407 = !DILocation(line: 59, column: 2, scope: !396)
!408 = !DILocation(line: 59, column: 14, scope: !396)
!409 = !DILocation(line: 59, column: 41, scope: !396)
!410 = !DILocation(line: 59, column: 20, scope: !396)
!411 = !DILocation(line: 60, column: 2, scope: !396)
!412 = !DILocation(line: 60, column: 6, scope: !396)
!413 = !DILocation(line: 60, column: 11, scope: !396)
!414 = !DILocation(line: 62, column: 28, scope: !396)
!415 = !DILocation(line: 62, column: 8, scope: !396)
!416 = !DILocation(line: 62, column: 6, scope: !396)
!417 = !DILocation(line: 63, column: 30, scope: !396)
!418 = !DILocation(line: 63, column: 10, scope: !396)
!419 = !DILocation(line: 63, column: 8, scope: !396)
!420 = !DILocation(line: 65, column: 19, scope: !396)
!421 = !DILocation(line: 65, column: 52, scope: !396)
!422 = !DILocation(line: 65, column: 57, scope: !396)
!423 = !DILocation(line: 66, column: 5, scope: !396)
!424 = !DILocation(line: 66, column: 12, scope: !396)
!425 = !DILocation(line: 65, column: 2, scope: !396)
!426 = !DILocation(line: 67, column: 17, scope: !396)
!427 = !DILocation(line: 67, column: 2, scope: !396)
!428 = !DILocation(line: 69, column: 9, scope: !396)
!429 = !DILocation(line: 70, column: 1, scope: !396)
!430 = !DILocation(line: 69, column: 2, scope: !396)
!431 = distinct !DISubprogram(name: "scsi_trace_rw16", scope: !2, file: !2, line: 73, type: !216, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !432)
!432 = !{!433, !434, !435, !436, !437, !438}
!433 = !DILocalVariable(name: "p", arg: 1, scope: !431, file: !2, line: 73, type: !220)
!434 = !DILocalVariable(name: "cdb", arg: 2, scope: !431, file: !2, line: 73, type: !245)
!435 = !DILocalVariable(name: "len", arg: 3, scope: !431, file: !2, line: 73, type: !244)
!436 = !DILocalVariable(name: "ret", scope: !431, file: !2, line: 75, type: !218)
!437 = !DILocalVariable(name: "lba", scope: !431, file: !2, line: 76, type: !198)
!438 = !DILocalVariable(name: "txlen", scope: !431, file: !2, line: 77, type: !163)
!439 = !DILocation(line: 73, column: 35, scope: !431)
!440 = !DILocation(line: 73, column: 53, scope: !431)
!441 = !DILocation(line: 73, column: 62, scope: !431)
!442 = !DILocation(line: 75, column: 2, scope: !431)
!443 = !DILocation(line: 75, column: 14, scope: !431)
!444 = !DILocation(line: 75, column: 41, scope: !431)
!445 = !DILocation(line: 75, column: 20, scope: !431)
!446 = !DILocation(line: 76, column: 2, scope: !431)
!447 = !DILocation(line: 76, column: 6, scope: !431)
!448 = !DILocation(line: 77, column: 2, scope: !431)
!449 = !DILocation(line: 77, column: 6, scope: !431)
!450 = !DILocation(line: 79, column: 28, scope: !431)
!451 = !DILocation(line: 79, column: 8, scope: !431)
!452 = !DILocation(line: 79, column: 6, scope: !431)
!453 = !DILocation(line: 80, column: 30, scope: !431)
!454 = !DILocation(line: 80, column: 10, scope: !431)
!455 = !DILocation(line: 80, column: 8, scope: !431)
!456 = !DILocation(line: 82, column: 19, scope: !431)
!457 = !DILocation(line: 82, column: 54, scope: !431)
!458 = !DILocation(line: 82, column: 59, scope: !431)
!459 = !DILocation(line: 83, column: 5, scope: !431)
!460 = !DILocation(line: 83, column: 12, scope: !431)
!461 = !DILocation(line: 82, column: 2, scope: !431)
!462 = !DILocation(line: 85, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !431, file: !2, line: 85, column: 6)
!464 = !DILocation(line: 85, column: 13, scope: !463)
!465 = !DILocation(line: 85, column: 6, scope: !431)
!466 = !DILocation(line: 86, column: 20, scope: !463)
!467 = !DILocation(line: 86, column: 36, scope: !463)
!468 = !DILocation(line: 86, column: 43, scope: !463)
!469 = !DILocation(line: 86, column: 48, scope: !463)
!470 = !DILocation(line: 86, column: 3, scope: !463)
!471 = !DILocation(line: 88, column: 17, scope: !431)
!472 = !DILocation(line: 88, column: 2, scope: !431)
!473 = !DILocation(line: 90, column: 9, scope: !431)
!474 = !DILocation(line: 91, column: 1, scope: !431)
!475 = !DILocation(line: 90, column: 2, scope: !431)
!476 = distinct !DISubprogram(name: "scsi_trace_unmap", scope: !2, file: !2, line: 135, type: !216, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !477)
!477 = !{!478, !479, !480, !481, !482}
!478 = !DILocalVariable(name: "p", arg: 1, scope: !476, file: !2, line: 135, type: !220)
!479 = !DILocalVariable(name: "cdb", arg: 2, scope: !476, file: !2, line: 135, type: !245)
!480 = !DILocalVariable(name: "len", arg: 3, scope: !476, file: !2, line: 135, type: !244)
!481 = !DILocalVariable(name: "ret", scope: !476, file: !2, line: 137, type: !218)
!482 = !DILocalVariable(name: "regions", scope: !476, file: !2, line: 138, type: !153)
!483 = !DILocation(line: 135, column: 36, scope: !476)
!484 = !DILocation(line: 135, column: 54, scope: !476)
!485 = !DILocation(line: 135, column: 63, scope: !476)
!486 = !DILocation(line: 137, column: 2, scope: !476)
!487 = !DILocation(line: 137, column: 14, scope: !476)
!488 = !DILocation(line: 137, column: 41, scope: !476)
!489 = !DILocation(line: 137, column: 20, scope: !476)
!490 = !DILocation(line: 138, column: 2, scope: !476)
!491 = !DILocation(line: 138, column: 15, scope: !476)
!492 = !DILocation(line: 138, column: 45, scope: !476)
!493 = !DILocation(line: 138, column: 25, scope: !476)
!494 = !DILocation(line: 140, column: 19, scope: !476)
!495 = !DILocation(line: 140, column: 37, scope: !476)
!496 = !DILocation(line: 140, column: 45, scope: !476)
!497 = !DILocation(line: 140, column: 50, scope: !476)
!498 = !DILocation(line: 140, column: 2, scope: !476)
!499 = !DILocation(line: 141, column: 17, scope: !476)
!500 = !DILocation(line: 141, column: 2, scope: !476)
!501 = !DILocation(line: 143, column: 9, scope: !476)
!502 = !DILocation(line: 144, column: 1, scope: !476)
!503 = !DILocation(line: 143, column: 2, scope: !476)
!504 = distinct !DISubprogram(name: "scsi_trace_service_action_in", scope: !2, file: !2, line: 147, type: !216, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513}
!506 = !DILocalVariable(name: "p", arg: 1, scope: !504, file: !2, line: 147, type: !220)
!507 = !DILocalVariable(name: "cdb", arg: 2, scope: !504, file: !2, line: 147, type: !245)
!508 = !DILocalVariable(name: "len", arg: 3, scope: !504, file: !2, line: 147, type: !244)
!509 = !DILocalVariable(name: "ret", scope: !504, file: !2, line: 149, type: !218)
!510 = !DILocalVariable(name: "cmd", scope: !504, file: !2, line: 149, type: !218)
!511 = !DILocalVariable(name: "lba", scope: !504, file: !2, line: 150, type: !198)
!512 = !DILocalVariable(name: "alloc_len", scope: !504, file: !2, line: 151, type: !163)
!513 = !DILabel(scope: !504, name: "out", file: !2, line: 170)
!514 = !DILocation(line: 147, column: 48, scope: !504)
!515 = !DILocation(line: 147, column: 66, scope: !504)
!516 = !DILocation(line: 147, column: 75, scope: !504)
!517 = !DILocation(line: 149, column: 2, scope: !504)
!518 = !DILocation(line: 149, column: 14, scope: !504)
!519 = !DILocation(line: 149, column: 41, scope: !504)
!520 = !DILocation(line: 149, column: 20, scope: !504)
!521 = !DILocation(line: 149, column: 46, scope: !504)
!522 = !DILocation(line: 150, column: 2, scope: !504)
!523 = !DILocation(line: 150, column: 6, scope: !504)
!524 = !DILocation(line: 151, column: 2, scope: !504)
!525 = !DILocation(line: 151, column: 6, scope: !504)
!526 = !DILocation(line: 153, column: 10, scope: !504)
!527 = !DILocation(line: 153, column: 2, scope: !504)
!528 = !DILocation(line: 155, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !504, file: !2, line: 153, column: 33)
!530 = !DILocation(line: 156, column: 3, scope: !529)
!531 = !DILocation(line: 158, column: 7, scope: !529)
!532 = !DILocation(line: 159, column: 3, scope: !529)
!533 = !DILocation(line: 161, column: 18, scope: !529)
!534 = !DILocation(line: 161, column: 3, scope: !529)
!535 = !DILocation(line: 162, column: 3, scope: !529)
!536 = !DILocation(line: 165, column: 28, scope: !504)
!537 = !DILocation(line: 165, column: 8, scope: !504)
!538 = !DILocation(line: 165, column: 6, scope: !504)
!539 = !DILocation(line: 166, column: 34, scope: !504)
!540 = !DILocation(line: 166, column: 14, scope: !504)
!541 = !DILocation(line: 166, column: 12, scope: !504)
!542 = !DILocation(line: 168, column: 19, scope: !504)
!543 = !DILocation(line: 168, column: 50, scope: !504)
!544 = !DILocation(line: 168, column: 55, scope: !504)
!545 = !DILocation(line: 168, column: 60, scope: !504)
!546 = !DILocation(line: 168, column: 2, scope: !504)
!547 = !DILocation(line: 170, column: 1, scope: !504)
!548 = !DILocation(line: 171, column: 17, scope: !504)
!549 = !DILocation(line: 171, column: 2, scope: !504)
!550 = !DILocation(line: 173, column: 9, scope: !504)
!551 = !DILocation(line: 174, column: 1, scope: !504)
!552 = !DILocation(line: 173, column: 2, scope: !504)
!553 = distinct !DISubprogram(name: "scsi_trace_varlen", scope: !2, file: !2, line: 329, type: !216, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !554)
!554 = !{!555, !556, !557}
!555 = !DILocalVariable(name: "p", arg: 1, scope: !553, file: !2, line: 329, type: !220)
!556 = !DILocalVariable(name: "cdb", arg: 2, scope: !553, file: !2, line: 329, type: !245)
!557 = !DILocalVariable(name: "len", arg: 3, scope: !553, file: !2, line: 329, type: !244)
!558 = !DILocation(line: 329, column: 37, scope: !553)
!559 = !DILocation(line: 329, column: 55, scope: !553)
!560 = !DILocation(line: 329, column: 64, scope: !553)
!561 = !DILocation(line: 331, column: 10, scope: !553)
!562 = !DILocation(line: 331, column: 2, scope: !553)
!563 = !DILocation(line: 336, column: 26, scope: !564)
!564 = distinct !DILexicalBlock(scope: !553, file: !2, line: 331, column: 33)
!565 = !DILocation(line: 336, column: 29, scope: !564)
!566 = !DILocation(line: 336, column: 34, scope: !564)
!567 = !DILocation(line: 336, column: 10, scope: !564)
!568 = !DILocation(line: 336, column: 3, scope: !564)
!569 = !DILocation(line: 338, column: 26, scope: !564)
!570 = !DILocation(line: 338, column: 29, scope: !564)
!571 = !DILocation(line: 338, column: 34, scope: !564)
!572 = !DILocation(line: 338, column: 10, scope: !564)
!573 = !DILocation(line: 338, column: 3, scope: !564)
!574 = !DILocation(line: 340, column: 1, scope: !553)
!575 = distinct !DISubprogram(name: "scsi_trace_maintenance_in", scope: !2, file: !2, line: 177, type: !216, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583}
!577 = !DILocalVariable(name: "p", arg: 1, scope: !575, file: !2, line: 177, type: !220)
!578 = !DILocalVariable(name: "cdb", arg: 2, scope: !575, file: !2, line: 177, type: !245)
!579 = !DILocalVariable(name: "len", arg: 3, scope: !575, file: !2, line: 177, type: !244)
!580 = !DILocalVariable(name: "ret", scope: !575, file: !2, line: 179, type: !218)
!581 = !DILocalVariable(name: "cmd", scope: !575, file: !2, line: 179, type: !218)
!582 = !DILocalVariable(name: "alloc_len", scope: !575, file: !2, line: 180, type: !163)
!583 = !DILabel(scope: !575, name: "out", file: !2, line: 216)
!584 = !DILocation(line: 177, column: 45, scope: !575)
!585 = !DILocation(line: 177, column: 63, scope: !575)
!586 = !DILocation(line: 177, column: 72, scope: !575)
!587 = !DILocation(line: 179, column: 2, scope: !575)
!588 = !DILocation(line: 179, column: 14, scope: !575)
!589 = !DILocation(line: 179, column: 41, scope: !575)
!590 = !DILocation(line: 179, column: 20, scope: !575)
!591 = !DILocation(line: 179, column: 46, scope: !575)
!592 = !DILocation(line: 180, column: 2, scope: !575)
!593 = !DILocation(line: 180, column: 6, scope: !575)
!594 = !DILocation(line: 182, column: 10, scope: !575)
!595 = !DILocation(line: 182, column: 2, scope: !575)
!596 = !DILocation(line: 184, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !575, file: !2, line: 182, column: 33)
!598 = !DILocation(line: 185, column: 3, scope: !597)
!599 = !DILocation(line: 187, column: 7, scope: !597)
!600 = !DILocation(line: 188, column: 3, scope: !597)
!601 = !DILocation(line: 190, column: 7, scope: !597)
!602 = !DILocation(line: 191, column: 3, scope: !597)
!603 = !DILocation(line: 193, column: 7, scope: !597)
!604 = !DILocation(line: 194, column: 3, scope: !597)
!605 = !DILocation(line: 196, column: 7, scope: !597)
!606 = !DILocation(line: 197, column: 3, scope: !597)
!607 = !DILocation(line: 199, column: 7, scope: !597)
!608 = !DILocation(line: 200, column: 3, scope: !597)
!609 = !DILocation(line: 202, column: 7, scope: !597)
!610 = !DILocation(line: 203, column: 3, scope: !597)
!611 = !DILocation(line: 205, column: 7, scope: !597)
!612 = !DILocation(line: 206, column: 3, scope: !597)
!613 = !DILocation(line: 208, column: 18, scope: !597)
!614 = !DILocation(line: 208, column: 3, scope: !597)
!615 = !DILocation(line: 209, column: 3, scope: !597)
!616 = !DILocation(line: 212, column: 34, scope: !575)
!617 = !DILocation(line: 212, column: 14, scope: !575)
!618 = !DILocation(line: 212, column: 12, scope: !575)
!619 = !DILocation(line: 214, column: 19, scope: !575)
!620 = !DILocation(line: 214, column: 41, scope: !575)
!621 = !DILocation(line: 214, column: 46, scope: !575)
!622 = !DILocation(line: 214, column: 2, scope: !575)
!623 = !DILocation(line: 216, column: 1, scope: !575)
!624 = !DILocation(line: 217, column: 17, scope: !575)
!625 = !DILocation(line: 217, column: 2, scope: !575)
!626 = !DILocation(line: 219, column: 9, scope: !575)
!627 = !DILocation(line: 220, column: 1, scope: !575)
!628 = !DILocation(line: 219, column: 2, scope: !575)
!629 = distinct !DISubprogram(name: "scsi_trace_maintenance_out", scope: !2, file: !2, line: 223, type: !216, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637}
!631 = !DILocalVariable(name: "p", arg: 1, scope: !629, file: !2, line: 223, type: !220)
!632 = !DILocalVariable(name: "cdb", arg: 2, scope: !629, file: !2, line: 223, type: !245)
!633 = !DILocalVariable(name: "len", arg: 3, scope: !629, file: !2, line: 223, type: !244)
!634 = !DILocalVariable(name: "ret", scope: !629, file: !2, line: 225, type: !218)
!635 = !DILocalVariable(name: "cmd", scope: !629, file: !2, line: 225, type: !218)
!636 = !DILocalVariable(name: "alloc_len", scope: !629, file: !2, line: 226, type: !163)
!637 = !DILabel(scope: !629, name: "out", file: !2, line: 256)
!638 = !DILocation(line: 223, column: 46, scope: !629)
!639 = !DILocation(line: 223, column: 64, scope: !629)
!640 = !DILocation(line: 223, column: 73, scope: !629)
!641 = !DILocation(line: 225, column: 2, scope: !629)
!642 = !DILocation(line: 225, column: 14, scope: !629)
!643 = !DILocation(line: 225, column: 41, scope: !629)
!644 = !DILocation(line: 225, column: 20, scope: !629)
!645 = !DILocation(line: 225, column: 46, scope: !629)
!646 = !DILocation(line: 226, column: 2, scope: !629)
!647 = !DILocation(line: 226, column: 6, scope: !629)
!648 = !DILocation(line: 228, column: 10, scope: !629)
!649 = !DILocation(line: 228, column: 2, scope: !629)
!650 = !DILocation(line: 230, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !629, file: !2, line: 228, column: 33)
!652 = !DILocation(line: 231, column: 3, scope: !651)
!653 = !DILocation(line: 233, column: 7, scope: !651)
!654 = !DILocation(line: 234, column: 3, scope: !651)
!655 = !DILocation(line: 236, column: 7, scope: !651)
!656 = !DILocation(line: 237, column: 3, scope: !651)
!657 = !DILocation(line: 239, column: 7, scope: !651)
!658 = !DILocation(line: 240, column: 3, scope: !651)
!659 = !DILocation(line: 242, column: 7, scope: !651)
!660 = !DILocation(line: 243, column: 3, scope: !651)
!661 = !DILocation(line: 245, column: 7, scope: !651)
!662 = !DILocation(line: 246, column: 3, scope: !651)
!663 = !DILocation(line: 248, column: 18, scope: !651)
!664 = !DILocation(line: 248, column: 3, scope: !651)
!665 = !DILocation(line: 249, column: 3, scope: !651)
!666 = !DILocation(line: 252, column: 34, scope: !629)
!667 = !DILocation(line: 252, column: 14, scope: !629)
!668 = !DILocation(line: 252, column: 12, scope: !629)
!669 = !DILocation(line: 254, column: 19, scope: !629)
!670 = !DILocation(line: 254, column: 41, scope: !629)
!671 = !DILocation(line: 254, column: 46, scope: !629)
!672 = !DILocation(line: 254, column: 2, scope: !629)
!673 = !DILocation(line: 256, column: 1, scope: !629)
!674 = !DILocation(line: 257, column: 17, scope: !629)
!675 = !DILocation(line: 257, column: 2, scope: !629)
!676 = !DILocation(line: 259, column: 9, scope: !629)
!677 = !DILocation(line: 260, column: 1, scope: !629)
!678 = !DILocation(line: 259, column: 2, scope: !629)
!679 = distinct !DISubprogram(name: "scsi_trace_zbc_in", scope: !2, file: !2, line: 263, type: !216, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !691}
!681 = !DILocalVariable(name: "p", arg: 1, scope: !679, file: !2, line: 263, type: !220)
!682 = !DILocalVariable(name: "cdb", arg: 2, scope: !679, file: !2, line: 263, type: !245)
!683 = !DILocalVariable(name: "len", arg: 3, scope: !679, file: !2, line: 263, type: !244)
!684 = !DILocalVariable(name: "ret", scope: !679, file: !2, line: 265, type: !218)
!685 = !DILocalVariable(name: "cmd", scope: !679, file: !2, line: 265, type: !218)
!686 = !DILocalVariable(name: "zone_id", scope: !679, file: !2, line: 266, type: !198)
!687 = !DILocalVariable(name: "alloc_len", scope: !679, file: !2, line: 267, type: !163)
!688 = !DILocalVariable(name: "options", scope: !679, file: !2, line: 268, type: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !164, line: 17, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !152, line: 21, baseType: !246)
!691 = !DILabel(scope: !679, name: "out", file: !2, line: 287)
!692 = !DILocation(line: 263, column: 37, scope: !679)
!693 = !DILocation(line: 263, column: 55, scope: !679)
!694 = !DILocation(line: 263, column: 64, scope: !679)
!695 = !DILocation(line: 265, column: 2, scope: !679)
!696 = !DILocation(line: 265, column: 14, scope: !679)
!697 = !DILocation(line: 265, column: 41, scope: !679)
!698 = !DILocation(line: 265, column: 20, scope: !679)
!699 = !DILocation(line: 265, column: 46, scope: !679)
!700 = !DILocation(line: 266, column: 2, scope: !679)
!701 = !DILocation(line: 266, column: 6, scope: !679)
!702 = !DILocation(line: 267, column: 2, scope: !679)
!703 = !DILocation(line: 267, column: 6, scope: !679)
!704 = !DILocation(line: 268, column: 2, scope: !679)
!705 = !DILocation(line: 268, column: 5, scope: !679)
!706 = !DILocation(line: 270, column: 10, scope: !679)
!707 = !DILocation(line: 270, column: 2, scope: !679)
!708 = !DILocation(line: 272, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !679, file: !2, line: 270, column: 33)
!710 = !DILocation(line: 273, column: 3, scope: !709)
!711 = !DILocation(line: 275, column: 18, scope: !709)
!712 = !DILocation(line: 275, column: 3, scope: !709)
!713 = !DILocation(line: 276, column: 3, scope: !709)
!714 = !DILocation(line: 279, column: 32, scope: !679)
!715 = !DILocation(line: 279, column: 12, scope: !679)
!716 = !DILocation(line: 279, column: 10, scope: !679)
!717 = !DILocation(line: 280, column: 34, scope: !679)
!718 = !DILocation(line: 280, column: 14, scope: !679)
!719 = !DILocation(line: 280, column: 12, scope: !679)
!720 = !DILocation(line: 281, column: 12, scope: !679)
!721 = !DILocation(line: 281, column: 20, scope: !679)
!722 = !DILocation(line: 281, column: 10, scope: !679)
!723 = !DILocation(line: 283, column: 19, scope: !679)
!724 = !DILocation(line: 284, column: 5, scope: !679)
!725 = !DILocation(line: 284, column: 30, scope: !679)
!726 = !DILocation(line: 284, column: 39, scope: !679)
!727 = !DILocation(line: 285, column: 5, scope: !679)
!728 = !DILocation(line: 285, column: 15, scope: !679)
!729 = !DILocation(line: 285, column: 23, scope: !679)
!730 = !DILocation(line: 285, column: 29, scope: !679)
!731 = !DILocation(line: 283, column: 2, scope: !679)
!732 = !DILocation(line: 287, column: 1, scope: !679)
!733 = !DILocation(line: 288, column: 17, scope: !679)
!734 = !DILocation(line: 288, column: 2, scope: !679)
!735 = !DILocation(line: 290, column: 9, scope: !679)
!736 = !DILocation(line: 291, column: 1, scope: !679)
!737 = !DILocation(line: 290, column: 2, scope: !679)
!738 = distinct !DISubprogram(name: "scsi_trace_zbc_out", scope: !2, file: !2, line: 294, type: !216, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746}
!740 = !DILocalVariable(name: "p", arg: 1, scope: !738, file: !2, line: 294, type: !220)
!741 = !DILocalVariable(name: "cdb", arg: 2, scope: !738, file: !2, line: 294, type: !245)
!742 = !DILocalVariable(name: "len", arg: 3, scope: !738, file: !2, line: 294, type: !244)
!743 = !DILocalVariable(name: "ret", scope: !738, file: !2, line: 296, type: !218)
!744 = !DILocalVariable(name: "cmd", scope: !738, file: !2, line: 296, type: !218)
!745 = !DILocalVariable(name: "zone_id", scope: !738, file: !2, line: 297, type: !198)
!746 = !DILabel(scope: !738, name: "out", file: !2, line: 322)
!747 = !DILocation(line: 294, column: 38, scope: !738)
!748 = !DILocation(line: 294, column: 56, scope: !738)
!749 = !DILocation(line: 294, column: 65, scope: !738)
!750 = !DILocation(line: 296, column: 2, scope: !738)
!751 = !DILocation(line: 296, column: 14, scope: !738)
!752 = !DILocation(line: 296, column: 41, scope: !738)
!753 = !DILocation(line: 296, column: 20, scope: !738)
!754 = !DILocation(line: 296, column: 46, scope: !738)
!755 = !DILocation(line: 297, column: 2, scope: !738)
!756 = !DILocation(line: 297, column: 6, scope: !738)
!757 = !DILocation(line: 299, column: 10, scope: !738)
!758 = !DILocation(line: 299, column: 2, scope: !738)
!759 = !DILocation(line: 301, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !738, file: !2, line: 299, column: 33)
!761 = !DILocation(line: 302, column: 3, scope: !760)
!762 = !DILocation(line: 304, column: 7, scope: !760)
!763 = !DILocation(line: 305, column: 3, scope: !760)
!764 = !DILocation(line: 307, column: 7, scope: !760)
!765 = !DILocation(line: 308, column: 3, scope: !760)
!766 = !DILocation(line: 310, column: 7, scope: !760)
!767 = !DILocation(line: 311, column: 3, scope: !760)
!768 = !DILocation(line: 313, column: 18, scope: !760)
!769 = !DILocation(line: 313, column: 3, scope: !760)
!770 = !DILocation(line: 314, column: 3, scope: !760)
!771 = !DILocation(line: 317, column: 32, scope: !738)
!772 = !DILocation(line: 317, column: 12, scope: !738)
!773 = !DILocation(line: 317, column: 10, scope: !738)
!774 = !DILocation(line: 319, column: 19, scope: !738)
!775 = !DILocation(line: 319, column: 45, scope: !738)
!776 = !DILocation(line: 320, column: 25, scope: !738)
!777 = !DILocation(line: 320, column: 34, scope: !738)
!778 = !DILocation(line: 320, column: 42, scope: !738)
!779 = !DILocation(line: 319, column: 2, scope: !738)
!780 = !DILocation(line: 322, column: 1, scope: !738)
!781 = !DILocation(line: 323, column: 17, scope: !738)
!782 = !DILocation(line: 323, column: 2, scope: !738)
!783 = !DILocation(line: 325, column: 9, scope: !738)
!784 = !DILocation(line: 326, column: 1, scope: !738)
!785 = !DILocation(line: 325, column: 2, scope: !738)
!786 = distinct !DISubprogram(name: "scsi_trace_misc", scope: !2, file: !2, line: 343, type: !216, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !787)
!787 = !{!788, !789, !790, !791}
!788 = !DILocalVariable(name: "p", arg: 1, scope: !786, file: !2, line: 343, type: !220)
!789 = !DILocalVariable(name: "cdb", arg: 2, scope: !786, file: !2, line: 343, type: !245)
!790 = !DILocalVariable(name: "len", arg: 3, scope: !786, file: !2, line: 343, type: !244)
!791 = !DILocalVariable(name: "ret", scope: !786, file: !2, line: 345, type: !218)
!792 = !DILocation(line: 343, column: 35, scope: !786)
!793 = !DILocation(line: 343, column: 53, scope: !786)
!794 = !DILocation(line: 343, column: 62, scope: !786)
!795 = !DILocation(line: 345, column: 2, scope: !786)
!796 = !DILocation(line: 345, column: 14, scope: !786)
!797 = !DILocation(line: 345, column: 41, scope: !786)
!798 = !DILocation(line: 345, column: 20, scope: !786)
!799 = !DILocation(line: 347, column: 17, scope: !786)
!800 = !DILocation(line: 347, column: 2, scope: !786)
!801 = !DILocation(line: 348, column: 17, scope: !786)
!802 = !DILocation(line: 348, column: 2, scope: !786)
!803 = !DILocation(line: 350, column: 9, scope: !786)
!804 = !DILocation(line: 351, column: 1, scope: !786)
!805 = !DILocation(line: 350, column: 2, scope: !786)
!806 = distinct !DISubprogram(name: "trace_seq_buffer_ptr", scope: !222, file: !222, line: 57, type: !807, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!233, !220}
!809 = !{!810}
!810 = !DILocalVariable(name: "s", arg: 1, scope: !806, file: !222, line: 57, type: !220)
!811 = !DILocation(line: 57, column: 40, scope: !806)
!812 = !DILocation(line: 59, column: 9, scope: !806)
!813 = !DILocation(line: 59, column: 12, scope: !806)
!814 = !DILocation(line: 59, column: 35, scope: !806)
!815 = !DILocation(line: 59, column: 38, scope: !806)
!816 = !DILocation(line: 59, column: 21, scope: !806)
!817 = !DILocation(line: 59, column: 19, scope: !806)
!818 = !DILocation(line: 59, column: 2, scope: !806)
!819 = distinct !DISubprogram(name: "get_unaligned_be24", scope: !159, file: !159, line: 90, type: !161, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !820)
!820 = !{!821}
!821 = !DILocalVariable(name: "p", arg: 1, scope: !819, file: !159, line: 90, type: !165)
!822 = !DILocation(line: 90, column: 50, scope: !819)
!823 = !DILocation(line: 92, column: 30, scope: !819)
!824 = !DILocation(line: 92, column: 9, scope: !819)
!825 = !DILocation(line: 92, column: 2, scope: !819)
!826 = !DISubprogram(name: "trace_seq_printf", scope: !222, file: !222, line: 79, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !220, !218, null}
!829 = !DISubprogram(name: "trace_seq_putc", scope: !222, file: !222, line: 88, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !220, !246}
!832 = distinct !DISubprogram(name: "seq_buf_used", scope: !230, file: !230, line: 74, type: !833, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !836)
!833 = !DISubroutineType(types: !834)
!834 = !{!153, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!836 = !{!837, !838, !840}
!837 = !DILocalVariable(name: "s", arg: 1, scope: !832, file: !230, line: 74, type: !835)
!838 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !839, file: !230, line: 76, type: !235)
!839 = distinct !DILexicalBlock(scope: !832, file: !230, line: 76, column: 9)
!840 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !839, file: !230, line: 76, type: !235)
!841 = !DILocation(line: 74, column: 57, scope: !832)
!842 = !DILocation(line: 76, column: 9, scope: !839)
!843 = !DILocation(line: 76, column: 9, scope: !832)
!844 = !DILocation(line: 76, column: 2, scope: !832)
!845 = distinct !DISubprogram(name: "__get_unaligned_be24", scope: !159, file: !159, line: 85, type: !846, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !850)
!846 = !DISubroutineType(types: !847)
!847 = !{!163, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!850 = !{!851}
!851 = !DILocalVariable(name: "p", arg: 1, scope: !845, file: !159, line: 85, type: !848)
!852 = !DILocation(line: 85, column: 50, scope: !845)
!853 = !DILocation(line: 87, column: 9, scope: !845)
!854 = !DILocation(line: 87, column: 14, scope: !845)
!855 = !DILocation(line: 87, column: 22, scope: !845)
!856 = !DILocation(line: 87, column: 27, scope: !845)
!857 = !DILocation(line: 87, column: 20, scope: !845)
!858 = !DILocation(line: 87, column: 34, scope: !845)
!859 = !DILocation(line: 87, column: 32, scope: !845)
!860 = !DILocation(line: 87, column: 2, scope: !845)
!861 = !DILocation(line: 60, column: 50, scope: !160)
!862 = !DILocation(line: 62, column: 9, scope: !170)
!863 = !DILocation(line: 62, column: 9, scope: !160)
!864 = !DILocation(line: 62, column: 2, scope: !160)
!865 = !DILocation(line: 55, column: 50, scope: !179)
!866 = !DILocation(line: 57, column: 9, scope: !186)
!867 = !DILocation(line: 57, column: 9, scope: !179)
!868 = !DILocation(line: 57, column: 2, scope: !179)
!869 = !DILocation(line: 65, column: 50, scope: !195)
!870 = !DILocation(line: 67, column: 9, scope: !202)
!871 = !DILocation(line: 67, column: 9, scope: !195)
!872 = !DILocation(line: 67, column: 2, scope: !195)
!873 = !DISubprogram(name: "trace_seq_puts", scope: !222, file: !222, line: 87, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !220, !218}
!876 = distinct !DISubprogram(name: "scsi_trace_rw32", scope: !2, file: !2, line: 94, type: !216, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !877)
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !886}
!878 = !DILocalVariable(name: "p", arg: 1, scope: !876, file: !2, line: 94, type: !220)
!879 = !DILocalVariable(name: "cdb", arg: 2, scope: !876, file: !2, line: 94, type: !245)
!880 = !DILocalVariable(name: "len", arg: 3, scope: !876, file: !2, line: 94, type: !244)
!881 = !DILocalVariable(name: "ret", scope: !876, file: !2, line: 96, type: !218)
!882 = !DILocalVariable(name: "cmd", scope: !876, file: !2, line: 96, type: !218)
!883 = !DILocalVariable(name: "lba", scope: !876, file: !2, line: 97, type: !198)
!884 = !DILocalVariable(name: "ei_lbrt", scope: !876, file: !2, line: 98, type: !163)
!885 = !DILocalVariable(name: "txlen", scope: !876, file: !2, line: 98, type: !163)
!886 = !DILabel(scope: !876, name: "out", file: !2, line: 128)
!887 = !DILocation(line: 94, column: 35, scope: !876)
!888 = !DILocation(line: 94, column: 53, scope: !876)
!889 = !DILocation(line: 94, column: 62, scope: !876)
!890 = !DILocation(line: 96, column: 2, scope: !876)
!891 = !DILocation(line: 96, column: 14, scope: !876)
!892 = !DILocation(line: 96, column: 41, scope: !876)
!893 = !DILocation(line: 96, column: 20, scope: !876)
!894 = !DILocation(line: 96, column: 46, scope: !876)
!895 = !DILocation(line: 97, column: 2, scope: !876)
!896 = !DILocation(line: 97, column: 6, scope: !876)
!897 = !DILocation(line: 98, column: 2, scope: !876)
!898 = !DILocation(line: 98, column: 6, scope: !876)
!899 = !DILocation(line: 98, column: 15, scope: !876)
!900 = !DILocation(line: 100, column: 10, scope: !876)
!901 = !DILocation(line: 100, column: 2, scope: !876)
!902 = !DILocation(line: 102, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !876, file: !2, line: 100, column: 33)
!904 = !DILocation(line: 103, column: 3, scope: !903)
!905 = !DILocation(line: 105, column: 7, scope: !903)
!906 = !DILocation(line: 106, column: 3, scope: !903)
!907 = !DILocation(line: 108, column: 7, scope: !903)
!908 = !DILocation(line: 109, column: 3, scope: !903)
!909 = !DILocation(line: 111, column: 7, scope: !903)
!910 = !DILocation(line: 112, column: 3, scope: !903)
!911 = !DILocation(line: 114, column: 18, scope: !903)
!912 = !DILocation(line: 114, column: 3, scope: !903)
!913 = !DILocation(line: 115, column: 3, scope: !903)
!914 = !DILocation(line: 118, column: 28, scope: !876)
!915 = !DILocation(line: 118, column: 8, scope: !876)
!916 = !DILocation(line: 118, column: 6, scope: !876)
!917 = !DILocation(line: 119, column: 32, scope: !876)
!918 = !DILocation(line: 119, column: 12, scope: !876)
!919 = !DILocation(line: 119, column: 10, scope: !876)
!920 = !DILocation(line: 120, column: 30, scope: !876)
!921 = !DILocation(line: 120, column: 10, scope: !876)
!922 = !DILocation(line: 120, column: 8, scope: !876)
!923 = !DILocation(line: 122, column: 19, scope: !876)
!924 = !DILocation(line: 123, column: 5, scope: !876)
!925 = !DILocation(line: 123, column: 10, scope: !876)
!926 = !DILocation(line: 123, column: 15, scope: !876)
!927 = !DILocation(line: 123, column: 22, scope: !876)
!928 = !DILocation(line: 123, column: 30, scope: !876)
!929 = !DILocation(line: 123, column: 36, scope: !876)
!930 = !DILocation(line: 122, column: 2, scope: !876)
!931 = !DILocation(line: 125, column: 6, scope: !932)
!932 = distinct !DILexicalBlock(scope: !876, file: !2, line: 125, column: 6)
!933 = !DILocation(line: 125, column: 28, scope: !932)
!934 = !DILocation(line: 125, column: 6, scope: !876)
!935 = !DILocation(line: 126, column: 20, scope: !932)
!936 = !DILocation(line: 126, column: 36, scope: !932)
!937 = !DILocation(line: 126, column: 44, scope: !932)
!938 = !DILocation(line: 126, column: 49, scope: !932)
!939 = !DILocation(line: 126, column: 3, scope: !932)
!940 = !DILocation(line: 125, column: 31, scope: !932)
!941 = !DILocation(line: 128, column: 1, scope: !876)
!942 = !DILocation(line: 129, column: 17, scope: !876)
!943 = !DILocation(line: 129, column: 2, scope: !876)
!944 = !DILocation(line: 131, column: 9, scope: !876)
!945 = !DILocation(line: 132, column: 1, scope: !876)
!946 = !DILocation(line: 131, column: 2, scope: !876)
