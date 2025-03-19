; ModuleID = 'sound/core/seq/seq_prioq.c'
source_filename = "sound/core/seq/seq_prioq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_seq_prioq = type { ptr, ptr, i32, %struct.spinlock }
%struct.snd_seq_event_cell = type { %union.anon.2, ptr, ptr }
%union.anon.2 = type { %struct.snd_seq_event }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.snd_seq_event_data }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.snd_seq_event_data = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_seq_remove_events = type { i32, %union.snd_seq_timestamp, i8, %struct.snd_seq_addr, i8, i32, i8, [10 x i32] }
%struct.snd_seq_ev_note = type { i8, i8, i8, i8, i32 }

@.str = private unnamed_addr constant [53 x i8] c"\013ALSA: seq: cannot find a pointer.. infinite loop?\0A\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_prioq_new() #0 align 16 !dbg !45 {
entry:
  %retval = alloca ptr, align 8
  %f = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #15, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %f, metadata !252, metadata !DIExpression()), !dbg !254
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #16, !dbg !255
  store ptr %call, ptr %f, align 8, !dbg !256
  %0 = load ptr, ptr %f, align 8, !dbg !257
  %tobool = icmp ne ptr %0, null, !dbg !257
  br i1 %tobool, label %if.end, label %if.then, !dbg !259

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !260

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !261

do.body:                                          ; preds = %if.end
  %1 = load ptr, ptr %f, align 8, !dbg !262
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %1, i32 0, i32 3, !dbg !262
  %call1 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !262
  %2 = load ptr, ptr %f, align 8, !dbg !262
  %lock2 = getelementptr inbounds %struct.snd_seq_prioq, ptr %2, i32 0, i32 3, !dbg !262
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !262
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !262
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !262
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !262
  store i32 0, ptr %counter, align 4, !dbg !262
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !262
  br label %do.cond, !dbg !262

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !262

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %f, align 8, !dbg !264
  %head = getelementptr inbounds %struct.snd_seq_prioq, ptr %5, i32 0, i32 0, !dbg !265
  store ptr null, ptr %head, align 8, !dbg !266
  %6 = load ptr, ptr %f, align 8, !dbg !267
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %6, i32 0, i32 1, !dbg !268
  store ptr null, ptr %tail, align 8, !dbg !269
  %7 = load ptr, ptr %f, align 8, !dbg !270
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %7, i32 0, i32 2, !dbg !271
  store i32 0, ptr %cells, align 8, !dbg !272
  %8 = load ptr, ptr %f, align 8, !dbg !273
  store ptr %8, ptr %retval, align 8, !dbg !274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !274

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #15, !dbg !275
  %9 = load ptr, ptr %retval, align 8, !dbg !275
  ret ptr %9, !dbg !275
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !276 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !284, metadata !DIExpression()), !dbg !286
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !285, metadata !DIExpression()), !dbg !287
  %0 = load i64, ptr %size.addr, align 8, !dbg !288
  %1 = load i32, ptr %flags.addr, align 4, !dbg !289
  %or = or i32 %1, 256, !dbg !290
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !291
  ret ptr %call, !dbg !292
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !293 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !303
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !304
  ret ptr %1, !dbg !305
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_prioq_delete(ptr noundef %fifo) #0 align 16 !dbg !306 {
entry:
  %fifo.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fifo, ptr %fifo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fifo.addr, metadata !311, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #15, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %f, metadata !312, metadata !DIExpression()), !dbg !315
  %0 = load ptr, ptr %fifo.addr, align 8, !dbg !316
  %1 = load ptr, ptr %0, align 8, !dbg !317
  store ptr %1, ptr %f, align 8, !dbg !315
  %2 = load ptr, ptr %fifo.addr, align 8, !dbg !318
  store ptr null, ptr %2, align 8, !dbg !319
  %3 = load ptr, ptr %f, align 8, !dbg !320
  %cmp = icmp eq ptr %3, null, !dbg !322
  br i1 %cmp, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !324
  %4 = load i32, ptr %tmp, align 4, !dbg !328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !329

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %f, align 8, !dbg !330
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %5, i32 0, i32 2, !dbg !332
  %6 = load i32, ptr %cells, align 8, !dbg !332
  %cmp1 = icmp sgt i32 %6, 0, !dbg !333
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !334

if.then2:                                         ; preds = %if.end
  br label %while.cond, !dbg !335

while.cond:                                       ; preds = %while.body, %if.then2
  %7 = load ptr, ptr %f, align 8, !dbg !337
  %cells3 = getelementptr inbounds %struct.snd_seq_prioq, ptr %7, i32 0, i32 2, !dbg !338
  %8 = load i32, ptr %cells3, align 8, !dbg !338
  %cmp4 = icmp sgt i32 %8, 0, !dbg !339
  br i1 %cmp4, label %while.body, label %while.end, !dbg !335

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %f, align 8, !dbg !340
  %call = call ptr @snd_seq_prioq_cell_out(ptr noundef %9, ptr noundef null) #17, !dbg !341
  call void @snd_seq_cell_free(ptr noundef %call) #17, !dbg !342
  br label %while.cond, !dbg !335, !llvm.loop !343

while.end:                                        ; preds = %while.cond
  br label %if.end5, !dbg !347

if.end5:                                          ; preds = %while.end, %if.end
  %10 = load ptr, ptr %f, align 8, !dbg !348
  call void @kfree(ptr noundef %10) #17, !dbg !349
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !350
  br label %cleanup, !dbg !350

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #15, !dbg !350
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !350

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !351 dso_local void @snd_seq_cell_free(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_prioq_cell_out(ptr noundef %f, ptr noundef %current_time) #0 align 16 !dbg !354 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %current_time.addr = alloca ptr, align 8
  %cell = alloca ptr, align 8
  %flags = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !358, metadata !DIExpression()), !dbg !367
  store ptr %current_time, ptr %current_time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %current_time.addr, metadata !359, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !360, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !361, metadata !DIExpression()), !dbg !372
  %0 = load ptr, ptr %f.addr, align 8, !dbg !373
  %cmp = icmp eq ptr %0, null, !dbg !375
  br i1 %cmp, label %if.then, label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !377
  %1 = load i32, ptr %tmp, align 4, !dbg !381
  store ptr null, ptr %retval, align 8, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !383

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !384

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !362, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !366, metadata !DIExpression()), !dbg !385
  %cmp2 = icmp eq ptr %__dummy, %__dummy2, !dbg !385
  %conv = zext i1 %cmp2 to i32, !dbg !385
  store i32 1, ptr %tmp3, align 4, !dbg !385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !386
  %2 = load i32, ptr %tmp3, align 4, !dbg !385
  %3 = load ptr, ptr %f.addr, align 8, !dbg !386
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %3, i32 0, i32 3, !dbg !386
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !386
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !386
  store i64 %call4, ptr %flags, align 8, !dbg !386
  br label %do.cond, !dbg !386

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !386

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !384

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !384

do.end6:                                          ; preds = %do.cond5
  %4 = load ptr, ptr %f.addr, align 8, !dbg !387
  %head = getelementptr inbounds %struct.snd_seq_prioq, ptr %4, i32 0, i32 0, !dbg !388
  %5 = load ptr, ptr %head, align 8, !dbg !388
  store ptr %5, ptr %cell, align 8, !dbg !389
  %6 = load ptr, ptr %cell, align 8, !dbg !390
  %tobool = icmp ne ptr %6, null, !dbg !390
  br i1 %tobool, label %land.lhs.true, label %if.end12, !dbg !392

land.lhs.true:                                    ; preds = %do.end6
  %7 = load ptr, ptr %current_time.addr, align 8, !dbg !393
  %tobool7 = icmp ne ptr %7, null, !dbg !393
  br i1 %tobool7, label %land.lhs.true8, label %if.end12, !dbg !394

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %cell, align 8, !dbg !395
  %9 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %8, i32 0, i32 0, !dbg !396
  %10 = load ptr, ptr %current_time.addr, align 8, !dbg !397
  %call9 = call i32 @event_is_ready(ptr noundef %9, ptr noundef %10) #17, !dbg !398
  %tobool10 = icmp ne i32 %call9, 0, !dbg !398
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !399

if.then11:                                        ; preds = %land.lhs.true8
  store ptr null, ptr %cell, align 8, !dbg !400
  br label %if.end12, !dbg !401

if.end12:                                         ; preds = %if.then11, %land.lhs.true8, %land.lhs.true, %do.end6
  %11 = load ptr, ptr %cell, align 8, !dbg !402
  %tobool13 = icmp ne ptr %11, null, !dbg !402
  br i1 %tobool13, label %if.then14, label %if.end22, !dbg !404

if.then14:                                        ; preds = %if.end12
  %12 = load ptr, ptr %cell, align 8, !dbg !405
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %12, i32 0, i32 2, !dbg !407
  %13 = load ptr, ptr %next, align 8, !dbg !407
  %14 = load ptr, ptr %f.addr, align 8, !dbg !408
  %head15 = getelementptr inbounds %struct.snd_seq_prioq, ptr %14, i32 0, i32 0, !dbg !409
  store ptr %13, ptr %head15, align 8, !dbg !410
  %15 = load ptr, ptr %f.addr, align 8, !dbg !411
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %15, i32 0, i32 1, !dbg !413
  %16 = load ptr, ptr %tail, align 8, !dbg !413
  %17 = load ptr, ptr %cell, align 8, !dbg !414
  %cmp16 = icmp eq ptr %16, %17, !dbg !415
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !416

if.then18:                                        ; preds = %if.then14
  %18 = load ptr, ptr %f.addr, align 8, !dbg !417
  %tail19 = getelementptr inbounds %struct.snd_seq_prioq, ptr %18, i32 0, i32 1, !dbg !418
  store ptr null, ptr %tail19, align 8, !dbg !419
  br label %if.end20, !dbg !417

if.end20:                                         ; preds = %if.then18, %if.then14
  %19 = load ptr, ptr %cell, align 8, !dbg !420
  %next21 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %19, i32 0, i32 2, !dbg !421
  store ptr null, ptr %next21, align 8, !dbg !422
  %20 = load ptr, ptr %f.addr, align 8, !dbg !423
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %20, i32 0, i32 2, !dbg !424
  %21 = load i32, ptr %cells, align 8, !dbg !425
  %dec = add i32 %21, -1, !dbg !425
  store i32 %dec, ptr %cells, align 8, !dbg !425
  br label %if.end22, !dbg !426

if.end22:                                         ; preds = %if.end20, %if.end12
  %22 = load ptr, ptr %f.addr, align 8, !dbg !427
  %lock23 = getelementptr inbounds %struct.snd_seq_prioq, ptr %22, i32 0, i32 3, !dbg !428
  %23 = load i64, ptr %flags, align 8, !dbg !429
  call void @spin_unlock_irqrestore(ptr noundef %lock23, i64 noundef %23) #17, !dbg !430
  %24 = load ptr, ptr %cell, align 8, !dbg !431
  store ptr %24, ptr %retval, align 8, !dbg !432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !432

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !433
  %25 = load ptr, ptr %retval, align 8, !dbg !433
  ret ptr %25, !dbg !433
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !434 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_prioq_cell_in(ptr noundef %f, ptr noundef %cell) #0 align 16 !dbg !439 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %flags = alloca i64, align 8
  %count = alloca i32, align 4
  %prior = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  %rel = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !443, metadata !DIExpression()), !dbg !460
  store ptr %cell, ptr %cell.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cell.addr, metadata !444, metadata !DIExpression()), !dbg !461
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #15, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !445, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #15, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !446, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !447, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %count, metadata !448, metadata !DIExpression()), !dbg !468
  call void @llvm.lifetime.start.p0(i64 4, ptr %prior) #15, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %prior, metadata !449, metadata !DIExpression()), !dbg !470
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !450, metadata !DIExpression()), !dbg !471
  %0 = load ptr, ptr %f.addr, align 8, !dbg !471
  %tobool = icmp ne ptr %0, null, !dbg !471
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !471

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %cell.addr, align 8, !dbg !471
  %tobool1 = icmp ne ptr %1, null, !dbg !471
  %lnot = xor i1 %tobool1, true, !dbg !471
  br label %lor.end, !dbg !471

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !471
  %lnot3 = xor i1 %lnot2, true, !dbg !471
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !471
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !471
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !471
  %tobool4 = icmp ne i32 %3, 0, !dbg !471
  %lnot5 = xor i1 %tobool4, true, !dbg !471
  %lnot7 = xor i1 %lnot5, true, !dbg !471
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !471
  %conv = sext i32 %lnot.ext8 to i64, !dbg !471
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !471
  store i64 %expval, ptr %tmp, align 8, !dbg !471
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !472
  %4 = load i64, ptr %tmp, align 8, !dbg !471
  %tobool9 = icmp ne i64 %4, 0, !dbg !472
  br i1 %tobool9, label %if.then, label %if.end, !dbg !473

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !474

if.end:                                           ; preds = %lor.end
  %5 = load ptr, ptr %cell.addr, align 8, !dbg !475
  %6 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %5, i32 0, i32 0, !dbg !476
  %flags10 = getelementptr inbounds %struct.snd_seq_event, ptr %6, i32 0, i32 1, !dbg !477
  %7 = load i8, ptr %flags10, align 1, !dbg !477
  %conv11 = zext i8 %7 to i32, !dbg !475
  %and = and i32 %conv11, 16, !dbg !478
  store i32 %and, ptr %prior, align 4, !dbg !479
  br label %do.body, !dbg !480

do.body:                                          ; preds = %if.end
  br label %do.body12, !dbg !481

do.body12:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !482
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !453, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !482
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !457, metadata !DIExpression()), !dbg !482
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !482
  %conv13 = zext i1 %cmp to i32, !dbg !482
  store i32 1, ptr %tmp14, align 4, !dbg !482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !483
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !483
  %8 = load i32, ptr %tmp14, align 4, !dbg !482
  %9 = load ptr, ptr %f.addr, align 8, !dbg !483
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %9, i32 0, i32 3, !dbg !483
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !483
  %call15 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !483
  store i64 %call15, ptr %flags, align 8, !dbg !483
  br label %do.cond, !dbg !483

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !483

do.end:                                           ; preds = %do.cond
  br label %do.cond16, !dbg !481

do.cond16:                                        ; preds = %do.end
  br label %do.end17, !dbg !481

do.end17:                                         ; preds = %do.cond16
  %10 = load ptr, ptr %f.addr, align 8, !dbg !484
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %10, i32 0, i32 1, !dbg !486
  %11 = load ptr, ptr %tail, align 8, !dbg !486
  %tobool18 = icmp ne ptr %11, null, !dbg !484
  br i1 %tobool18, label %land.lhs.true, label %if.end30, !dbg !487

land.lhs.true:                                    ; preds = %do.end17
  %12 = load i32, ptr %prior, align 4, !dbg !488
  %tobool19 = icmp ne i32 %12, 0, !dbg !488
  br i1 %tobool19, label %if.end30, label %if.then20, !dbg !489

if.then20:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %cell.addr, align 8, !dbg !490
  %14 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %13, i32 0, i32 0, !dbg !493
  %15 = load ptr, ptr %f.addr, align 8, !dbg !494
  %tail21 = getelementptr inbounds %struct.snd_seq_prioq, ptr %15, i32 0, i32 1, !dbg !495
  %16 = load ptr, ptr %tail21, align 8, !dbg !495
  %17 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %16, i32 0, i32 0, !dbg !496
  %call22 = call i32 @compare_timestamp(ptr noundef %14, ptr noundef %17) #17, !dbg !497
  %tobool23 = icmp ne i32 %call22, 0, !dbg !497
  br i1 %tobool23, label %if.then24, label %if.end29, !dbg !498

if.then24:                                        ; preds = %if.then20
  %18 = load ptr, ptr %cell.addr, align 8, !dbg !499
  %19 = load ptr, ptr %f.addr, align 8, !dbg !501
  %tail25 = getelementptr inbounds %struct.snd_seq_prioq, ptr %19, i32 0, i32 1, !dbg !502
  %20 = load ptr, ptr %tail25, align 8, !dbg !502
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %20, i32 0, i32 2, !dbg !503
  store ptr %18, ptr %next, align 8, !dbg !504
  %21 = load ptr, ptr %cell.addr, align 8, !dbg !505
  %22 = load ptr, ptr %f.addr, align 8, !dbg !506
  %tail26 = getelementptr inbounds %struct.snd_seq_prioq, ptr %22, i32 0, i32 1, !dbg !507
  store ptr %21, ptr %tail26, align 8, !dbg !508
  %23 = load ptr, ptr %cell.addr, align 8, !dbg !509
  %next27 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %23, i32 0, i32 2, !dbg !510
  store ptr null, ptr %next27, align 8, !dbg !511
  %24 = load ptr, ptr %f.addr, align 8, !dbg !512
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %24, i32 0, i32 2, !dbg !513
  %25 = load i32, ptr %cells, align 8, !dbg !514
  %inc = add i32 %25, 1, !dbg !514
  store i32 %inc, ptr %cells, align 8, !dbg !514
  %26 = load ptr, ptr %f.addr, align 8, !dbg !515
  %lock28 = getelementptr inbounds %struct.snd_seq_prioq, ptr %26, i32 0, i32 3, !dbg !516
  %27 = load i64, ptr %flags, align 8, !dbg !517
  call void @spin_unlock_irqrestore(ptr noundef %lock28, i64 noundef %27) #17, !dbg !518
  store i32 0, ptr %retval, align 4, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !519

if.end29:                                         ; preds = %if.then20
  br label %if.end30, !dbg !520

if.end30:                                         ; preds = %if.end29, %land.lhs.true, %do.end17
  store ptr null, ptr %prev, align 8, !dbg !521
  %28 = load ptr, ptr %f.addr, align 8, !dbg !522
  %head = getelementptr inbounds %struct.snd_seq_prioq, ptr %28, i32 0, i32 0, !dbg !523
  %29 = load ptr, ptr %head, align 8, !dbg !523
  store ptr %29, ptr %cur, align 8, !dbg !524
  store i32 10000, ptr %count, align 4, !dbg !525
  br label %while.cond, !dbg !526

while.cond:                                       ; preds = %cleanup.cont, %if.end30
  %30 = load ptr, ptr %cur, align 8, !dbg !527
  %cmp31 = icmp ne ptr %30, null, !dbg !528
  br i1 %cmp31, label %while.body, label %while.end, !dbg !526

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %rel) #15, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !458, metadata !DIExpression()), !dbg !530
  %31 = load ptr, ptr %cell.addr, align 8, !dbg !531
  %32 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %31, i32 0, i32 0, !dbg !532
  %33 = load ptr, ptr %cur, align 8, !dbg !533
  %34 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %33, i32 0, i32 0, !dbg !534
  %call33 = call i32 @compare_timestamp_rel(ptr noundef %32, ptr noundef %34) #17, !dbg !535
  store i32 %call33, ptr %rel, align 4, !dbg !530
  %35 = load i32, ptr %rel, align 4, !dbg !536
  %cmp34 = icmp slt i32 %35, 0, !dbg !538
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !539

if.then36:                                        ; preds = %while.body
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !540

if.else:                                          ; preds = %while.body
  %36 = load i32, ptr %rel, align 4, !dbg !541
  %cmp37 = icmp eq i32 %36, 0, !dbg !543
  br i1 %cmp37, label %land.lhs.true39, label %if.end42, !dbg !544

land.lhs.true39:                                  ; preds = %if.else
  %37 = load i32, ptr %prior, align 4, !dbg !545
  %tobool40 = icmp ne i32 %37, 0, !dbg !545
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !546

if.then41:                                        ; preds = %land.lhs.true39
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !547

if.end42:                                         ; preds = %land.lhs.true39, %if.else
  br label %if.end43

if.end43:                                         ; preds = %if.end42
  %38 = load ptr, ptr %cur, align 8, !dbg !548
  store ptr %38, ptr %prev, align 8, !dbg !549
  %39 = load ptr, ptr %cur, align 8, !dbg !550
  %next44 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %39, i32 0, i32 2, !dbg !551
  %40 = load ptr, ptr %next44, align 8, !dbg !551
  store ptr %40, ptr %cur, align 8, !dbg !552
  %41 = load i32, ptr %count, align 4, !dbg !553
  %dec = add i32 %41, -1, !dbg !553
  store i32 %dec, ptr %count, align 4, !dbg !553
  %tobool45 = icmp ne i32 %dec, 0, !dbg !553
  br i1 %tobool45, label %if.end53, label %if.then46, !dbg !555

if.then46:                                        ; preds = %if.end43
  %42 = load ptr, ptr %f.addr, align 8, !dbg !556
  %lock47 = getelementptr inbounds %struct.snd_seq_prioq, ptr %42, i32 0, i32 3, !dbg !558
  %43 = load i64, ptr %flags, align 8, !dbg !559
  call void @spin_unlock_irqrestore(ptr noundef %lock47, i64 noundef %43) #17, !dbg !560
  br label %do.body48, !dbg !561

do.body48:                                        ; preds = %if.then46
  br label %do.cond49, !dbg !563

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !563

do.end50:                                         ; preds = %do.cond49
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #18, !dbg !561
  store i32 %call52, ptr %tmp51, align 4, !dbg !563
  %44 = load i32, ptr %tmp51, align 4, !dbg !561
  store i32 -22, ptr %retval, align 4, !dbg !565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !565

if.end53:                                         ; preds = %if.end43
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !566
  br label %cleanup, !dbg !566

cleanup:                                          ; preds = %if.end53, %do.end50, %if.then41, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %rel) #15, !dbg !566
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup74 [
    i32 0, label %cleanup.cont
    i32 7, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !526, !llvm.loop !567

while.end:                                        ; preds = %cleanup, %while.cond
  %45 = load ptr, ptr %prev, align 8, !dbg !568
  %cmp54 = icmp ne ptr %45, null, !dbg !570
  br i1 %cmp54, label %if.then56, label %if.end58, !dbg !571

if.then56:                                        ; preds = %while.end
  %46 = load ptr, ptr %cell.addr, align 8, !dbg !572
  %47 = load ptr, ptr %prev, align 8, !dbg !573
  %next57 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %47, i32 0, i32 2, !dbg !574
  store ptr %46, ptr %next57, align 8, !dbg !575
  br label %if.end58, !dbg !573

if.end58:                                         ; preds = %if.then56, %while.end
  %48 = load ptr, ptr %cur, align 8, !dbg !576
  %49 = load ptr, ptr %cell.addr, align 8, !dbg !577
  %next59 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %49, i32 0, i32 2, !dbg !578
  store ptr %48, ptr %next59, align 8, !dbg !579
  %50 = load ptr, ptr %f.addr, align 8, !dbg !580
  %head60 = getelementptr inbounds %struct.snd_seq_prioq, ptr %50, i32 0, i32 0, !dbg !582
  %51 = load ptr, ptr %head60, align 8, !dbg !582
  %52 = load ptr, ptr %cur, align 8, !dbg !583
  %cmp61 = icmp eq ptr %51, %52, !dbg !584
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !585

if.then63:                                        ; preds = %if.end58
  %53 = load ptr, ptr %cell.addr, align 8, !dbg !586
  %54 = load ptr, ptr %f.addr, align 8, !dbg !587
  %head64 = getelementptr inbounds %struct.snd_seq_prioq, ptr %54, i32 0, i32 0, !dbg !588
  store ptr %53, ptr %head64, align 8, !dbg !589
  br label %if.end65, !dbg !587

if.end65:                                         ; preds = %if.then63, %if.end58
  %55 = load ptr, ptr %cur, align 8, !dbg !590
  %cmp66 = icmp eq ptr %55, null, !dbg !592
  br i1 %cmp66, label %if.then68, label %if.end70, !dbg !593

if.then68:                                        ; preds = %if.end65
  %56 = load ptr, ptr %cell.addr, align 8, !dbg !594
  %57 = load ptr, ptr %f.addr, align 8, !dbg !595
  %tail69 = getelementptr inbounds %struct.snd_seq_prioq, ptr %57, i32 0, i32 1, !dbg !596
  store ptr %56, ptr %tail69, align 8, !dbg !597
  br label %if.end70, !dbg !595

if.end70:                                         ; preds = %if.then68, %if.end65
  %58 = load ptr, ptr %f.addr, align 8, !dbg !598
  %cells71 = getelementptr inbounds %struct.snd_seq_prioq, ptr %58, i32 0, i32 2, !dbg !599
  %59 = load i32, ptr %cells71, align 8, !dbg !600
  %inc72 = add i32 %59, 1, !dbg !600
  store i32 %inc72, ptr %cells71, align 8, !dbg !600
  %60 = load ptr, ptr %f.addr, align 8, !dbg !601
  %lock73 = getelementptr inbounds %struct.snd_seq_prioq, ptr %60, i32 0, i32 3, !dbg !602
  %61 = load i64, ptr %flags, align 8, !dbg !603
  call void @spin_unlock_irqrestore(ptr noundef %lock73, i64 noundef %61) #17, !dbg !604
  store i32 0, ptr %retval, align 4, !dbg !605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !605

cleanup74:                                        ; preds = %if.end70, %cleanup, %if.then24, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prior) #15, !dbg !606
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !606
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !606
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #15, !dbg !606
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #15, !dbg !606
  %62 = load i32, ptr %retval, align 4, !dbg !606
  ret i32 %62, !dbg !606
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !607 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compare_timestamp(ptr noundef %a, ptr noundef %b) #8 align 16 !dbg !611 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !615, metadata !DIExpression()), !dbg !617
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !616, metadata !DIExpression()), !dbg !618
  %0 = load ptr, ptr %a.addr, align 8, !dbg !619
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %0, i32 0, i32 1, !dbg !621
  %1 = load i8, ptr %flags, align 1, !dbg !621
  %conv = zext i8 %1 to i32, !dbg !619
  %and = and i32 %conv, 1, !dbg !622
  %cmp = icmp eq i32 %and, 0, !dbg !623
  br i1 %cmp, label %if.then, label %if.else, !dbg !624

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8, !dbg !625
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %2, i32 0, i32 4, !dbg !627
  %3 = load ptr, ptr %b.addr, align 8, !dbg !628
  %time2 = getelementptr inbounds %struct.snd_seq_event, ptr %3, i32 0, i32 4, !dbg !629
  %call = call i32 @snd_seq_compare_tick_time(ptr noundef %time, ptr noundef %time2) #17, !dbg !630
  store i32 %call, ptr %retval, align 4, !dbg !631
  br label %return, !dbg !631

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !dbg !632
  %time3 = getelementptr inbounds %struct.snd_seq_event, ptr %4, i32 0, i32 4, !dbg !634
  %5 = load ptr, ptr %b.addr, align 8, !dbg !635
  %time4 = getelementptr inbounds %struct.snd_seq_event, ptr %5, i32 0, i32 4, !dbg !636
  %call5 = call i32 @snd_seq_compare_real_time(ptr noundef %time3, ptr noundef %time4) #17, !dbg !637
  store i32 %call5, ptr %retval, align 4, !dbg !638
  br label %return, !dbg !638

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !639
  ret i32 %6, !dbg !639
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !640 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !644, metadata !DIExpression()), !dbg !650
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !645, metadata !DIExpression()), !dbg !651
  br label %do.body, !dbg !652

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !646, metadata !DIExpression()), !dbg !653
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !649, metadata !DIExpression()), !dbg !653
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !653
  %conv = zext i1 %cmp to i32, !dbg !653
  store i32 1, ptr %tmp, align 4, !dbg !653
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !654
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !654
  %0 = load i32, ptr %tmp, align 4, !dbg !653
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !654
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !654
  %3 = load i64, ptr %flags.addr, align 8, !dbg !654
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !654
  br label %do.end, !dbg !654

do.end:                                           ; preds = %do.body
  ret void, !dbg !655
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compare_timestamp_rel(ptr noundef %a, ptr noundef %b) #8 align 16 !dbg !656 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !658, metadata !DIExpression()), !dbg !660
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !659, metadata !DIExpression()), !dbg !661
  %0 = load ptr, ptr %a.addr, align 8, !dbg !662
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %0, i32 0, i32 1, !dbg !664
  %1 = load i8, ptr %flags, align 1, !dbg !664
  %conv = zext i8 %1 to i32, !dbg !662
  %and = and i32 %conv, 1, !dbg !665
  %cmp = icmp eq i32 %and, 0, !dbg !666
  br i1 %cmp, label %if.then, label %if.else12, !dbg !667

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8, !dbg !668
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %2, i32 0, i32 4, !dbg !671
  %3 = load i32, ptr %time, align 4, !dbg !672
  %4 = load ptr, ptr %b.addr, align 8, !dbg !673
  %time2 = getelementptr inbounds %struct.snd_seq_event, ptr %4, i32 0, i32 4, !dbg !674
  %5 = load i32, ptr %time2, align 4, !dbg !675
  %cmp3 = icmp ugt i32 %3, %5, !dbg !676
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !677

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !678
  br label %return, !dbg !678

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %a.addr, align 8, !dbg !679
  %time6 = getelementptr inbounds %struct.snd_seq_event, ptr %6, i32 0, i32 4, !dbg !681
  %7 = load i32, ptr %time6, align 4, !dbg !682
  %8 = load ptr, ptr %b.addr, align 8, !dbg !683
  %time7 = getelementptr inbounds %struct.snd_seq_event, ptr %8, i32 0, i32 4, !dbg !684
  %9 = load i32, ptr %time7, align 4, !dbg !685
  %cmp8 = icmp eq i32 %7, %9, !dbg !686
  br i1 %cmp8, label %if.then10, label %if.else11, !dbg !687

if.then10:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !688
  br label %return, !dbg !688

if.else11:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4, !dbg !689
  br label %return, !dbg !689

if.else12:                                        ; preds = %entry
  %10 = load ptr, ptr %a.addr, align 8, !dbg !690
  %time13 = getelementptr inbounds %struct.snd_seq_event, ptr %10, i32 0, i32 4, !dbg !693
  %tv_sec = getelementptr inbounds %struct.snd_seq_real_time, ptr %time13, i32 0, i32 0, !dbg !694
  %11 = load i32, ptr %tv_sec, align 4, !dbg !694
  %12 = load ptr, ptr %b.addr, align 8, !dbg !695
  %time14 = getelementptr inbounds %struct.snd_seq_event, ptr %12, i32 0, i32 4, !dbg !696
  %tv_sec15 = getelementptr inbounds %struct.snd_seq_real_time, ptr %time14, i32 0, i32 0, !dbg !697
  %13 = load i32, ptr %tv_sec15, align 4, !dbg !697
  %cmp16 = icmp ugt i32 %11, %13, !dbg !698
  br i1 %cmp16, label %if.then18, label %if.else19, !dbg !699

if.then18:                                        ; preds = %if.else12
  store i32 1, ptr %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.else19:                                        ; preds = %if.else12
  %14 = load ptr, ptr %a.addr, align 8, !dbg !701
  %time20 = getelementptr inbounds %struct.snd_seq_event, ptr %14, i32 0, i32 4, !dbg !703
  %tv_sec21 = getelementptr inbounds %struct.snd_seq_real_time, ptr %time20, i32 0, i32 0, !dbg !704
  %15 = load i32, ptr %tv_sec21, align 4, !dbg !704
  %16 = load ptr, ptr %b.addr, align 8, !dbg !705
  %time22 = getelementptr inbounds %struct.snd_seq_event, ptr %16, i32 0, i32 4, !dbg !706
  %tv_sec23 = getelementptr inbounds %struct.snd_seq_real_time, ptr %time22, i32 0, i32 0, !dbg !707
  %17 = load i32, ptr %tv_sec23, align 4, !dbg !707
  %cmp24 = icmp eq i32 %15, %17, !dbg !708
  br i1 %cmp24, label %if.then26, label %if.else42, !dbg !709

if.then26:                                        ; preds = %if.else19
  %18 = load ptr, ptr %a.addr, align 8, !dbg !710
  %time27 = getelementptr inbounds %struct.snd_seq_event, ptr %18, i32 0, i32 4, !dbg !713
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %time27, i32 0, i32 1, !dbg !714
  %19 = load i32, ptr %tv_nsec, align 4, !dbg !714
  %20 = load ptr, ptr %b.addr, align 8, !dbg !715
  %time28 = getelementptr inbounds %struct.snd_seq_event, ptr %20, i32 0, i32 4, !dbg !716
  %tv_nsec29 = getelementptr inbounds %struct.snd_seq_real_time, ptr %time28, i32 0, i32 1, !dbg !717
  %21 = load i32, ptr %tv_nsec29, align 4, !dbg !717
  %cmp30 = icmp ugt i32 %19, %21, !dbg !718
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !719

if.then32:                                        ; preds = %if.then26
  store i32 1, ptr %retval, align 4, !dbg !720
  br label %return, !dbg !720

if.else33:                                        ; preds = %if.then26
  %22 = load ptr, ptr %a.addr, align 8, !dbg !721
  %time34 = getelementptr inbounds %struct.snd_seq_event, ptr %22, i32 0, i32 4, !dbg !723
  %tv_nsec35 = getelementptr inbounds %struct.snd_seq_real_time, ptr %time34, i32 0, i32 1, !dbg !724
  %23 = load i32, ptr %tv_nsec35, align 4, !dbg !724
  %24 = load ptr, ptr %b.addr, align 8, !dbg !725
  %time36 = getelementptr inbounds %struct.snd_seq_event, ptr %24, i32 0, i32 4, !dbg !726
  %tv_nsec37 = getelementptr inbounds %struct.snd_seq_real_time, ptr %time36, i32 0, i32 1, !dbg !727
  %25 = load i32, ptr %tv_nsec37, align 4, !dbg !727
  %cmp38 = icmp eq i32 %23, %25, !dbg !728
  br i1 %cmp38, label %if.then40, label %if.else41, !dbg !729

if.then40:                                        ; preds = %if.else33
  store i32 0, ptr %retval, align 4, !dbg !730
  br label %return, !dbg !730

if.else41:                                        ; preds = %if.else33
  store i32 -1, ptr %retval, align 4, !dbg !731
  br label %return, !dbg !731

if.else42:                                        ; preds = %if.else19
  store i32 -1, ptr %retval, align 4, !dbg !732
  br label %return, !dbg !732

return:                                           ; preds = %if.else42, %if.else41, %if.then40, %if.then32, %if.then18, %if.else11, %if.then10, %if.then5
  %26 = load i32, ptr %retval, align 4, !dbg !733
  ret i32 %26, !dbg !733
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !734 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @event_is_ready(ptr noundef %ev, ptr noundef %current_time) #0 align 16 !dbg !740 {
entry:
  %retval = alloca i32, align 4
  %ev.addr = alloca ptr, align 8
  %current_time.addr = alloca ptr, align 8
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !744, metadata !DIExpression()), !dbg !746
  store ptr %current_time, ptr %current_time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %current_time.addr, metadata !745, metadata !DIExpression()), !dbg !747
  %0 = load ptr, ptr %ev.addr, align 8, !dbg !748
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %0, i32 0, i32 1, !dbg !750
  %1 = load i8, ptr %flags, align 1, !dbg !750
  %conv = zext i8 %1 to i32, !dbg !748
  %and = and i32 %conv, 1, !dbg !751
  %cmp = icmp eq i32 %and, 0, !dbg !752
  br i1 %cmp, label %if.then, label %if.else, !dbg !753

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %current_time.addr, align 8, !dbg !754
  %3 = load ptr, ptr %ev.addr, align 8, !dbg !755
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %3, i32 0, i32 4, !dbg !756
  %call = call i32 @snd_seq_compare_tick_time(ptr noundef %2, ptr noundef %time) #17, !dbg !757
  store i32 %call, ptr %retval, align 4, !dbg !758
  br label %return, !dbg !758

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %current_time.addr, align 8, !dbg !759
  %5 = load ptr, ptr %ev.addr, align 8, !dbg !760
  %time2 = getelementptr inbounds %struct.snd_seq_event, ptr %5, i32 0, i32 4, !dbg !761
  %call3 = call i32 @snd_seq_compare_real_time(ptr noundef %4, ptr noundef %time2) #17, !dbg !762
  store i32 %call3, ptr %retval, align 4, !dbg !763
  br label %return, !dbg !763

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !764
  ret i32 %6, !dbg !764
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_prioq_avail(ptr noundef %f) #0 align 16 !dbg !765 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !769, metadata !DIExpression()), !dbg !770
  %0 = load ptr, ptr %f.addr, align 8, !dbg !771
  %cmp = icmp eq ptr %0, null, !dbg !773
  br i1 %cmp, label %if.then, label %if.end, !dbg !774

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !775
  %1 = load i32, ptr %tmp, align 4, !dbg !779
  store i32 0, ptr %retval, align 4, !dbg !780
  br label %return, !dbg !780

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %f.addr, align 8, !dbg !781
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %2, i32 0, i32 2, !dbg !782
  %3 = load i32, ptr %cells, align 8, !dbg !782
  store i32 %3, ptr %retval, align 4, !dbg !783
  br label %return, !dbg !783

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !784
  ret i32 %4, !dbg !784
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_prioq_leave(ptr noundef %f, i32 noundef %client, i32 noundef %timestamp) #0 align 16 !dbg !785 {
entry:
  %f.addr = alloca ptr, align 8
  %client.addr = alloca i32, align 4
  %timestamp.addr = alloca i32, align 4
  %cell = alloca ptr, align 8
  %next = alloca ptr, align 8
  %flags = alloca i64, align 8
  %prev = alloca ptr, align 8
  %freefirst = alloca ptr, align 8
  %freeprev = alloca ptr, align 8
  %freenext = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !789, metadata !DIExpression()), !dbg !804
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !790, metadata !DIExpression()), !dbg !805
  store i32 %timestamp, ptr %timestamp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timestamp.addr, metadata !791, metadata !DIExpression()), !dbg !806
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !792, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %next, metadata !793, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !810
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !794, metadata !DIExpression()), !dbg !811
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #15, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !795, metadata !DIExpression()), !dbg !813
  store ptr null, ptr %prev, align 8, !dbg !813
  call void @llvm.lifetime.start.p0(i64 8, ptr %freefirst) #15, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %freefirst, metadata !796, metadata !DIExpression()), !dbg !815
  store ptr null, ptr %freefirst, align 8, !dbg !815
  call void @llvm.lifetime.start.p0(i64 8, ptr %freeprev) #15, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %freeprev, metadata !797, metadata !DIExpression()), !dbg !816
  store ptr null, ptr %freeprev, align 8, !dbg !816
  call void @llvm.lifetime.start.p0(i64 8, ptr %freenext) #15, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %freenext, metadata !798, metadata !DIExpression()), !dbg !817
  br label %do.body, !dbg !818

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !819

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !799, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !803, metadata !DIExpression()), !dbg !820
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !820
  %conv = zext i1 %cmp to i32, !dbg !820
  store i32 1, ptr %tmp, align 4, !dbg !820
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !821
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !821
  %0 = load i32, ptr %tmp, align 4, !dbg !820
  %1 = load ptr, ptr %f.addr, align 8, !dbg !821
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %1, i32 0, i32 3, !dbg !821
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !821
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !821
  store i64 %call2, ptr %flags, align 8, !dbg !821
  br label %do.cond, !dbg !821

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !821

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !819

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !819

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %f.addr, align 8, !dbg !822
  %head = getelementptr inbounds %struct.snd_seq_prioq, ptr %2, i32 0, i32 0, !dbg !823
  %3 = load ptr, ptr %head, align 8, !dbg !823
  store ptr %3, ptr %cell, align 8, !dbg !824
  br label %while.cond, !dbg !825

while.cond:                                       ; preds = %if.end30, %do.end4
  %4 = load ptr, ptr %cell, align 8, !dbg !826
  %tobool = icmp ne ptr %4, null, !dbg !825
  br i1 %tobool, label %while.body, label %while.end, !dbg !825

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %cell, align 8, !dbg !827
  %next5 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %5, i32 0, i32 2, !dbg !829
  %6 = load ptr, ptr %next5, align 8, !dbg !829
  store ptr %6, ptr %next, align 8, !dbg !830
  %7 = load ptr, ptr %cell, align 8, !dbg !831
  %8 = load i32, ptr %client.addr, align 4, !dbg !833
  %9 = load i32, ptr %timestamp.addr, align 4, !dbg !834
  %call6 = call i32 @prioq_match(ptr noundef %7, i32 noundef %8, i32 noundef %9) #17, !dbg !835
  %tobool7 = icmp ne i32 %call6, 0, !dbg !835
  br i1 %tobool7, label %if.then, label %if.else29, !dbg !836

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %cell, align 8, !dbg !837
  %11 = load ptr, ptr %f.addr, align 8, !dbg !840
  %head8 = getelementptr inbounds %struct.snd_seq_prioq, ptr %11, i32 0, i32 0, !dbg !841
  %12 = load ptr, ptr %head8, align 8, !dbg !841
  %cmp9 = icmp eq ptr %10, %12, !dbg !842
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !843

if.then11:                                        ; preds = %if.then
  %13 = load ptr, ptr %cell, align 8, !dbg !844
  %next12 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %13, i32 0, i32 2, !dbg !846
  %14 = load ptr, ptr %next12, align 8, !dbg !846
  %15 = load ptr, ptr %f.addr, align 8, !dbg !847
  %head13 = getelementptr inbounds %struct.snd_seq_prioq, ptr %15, i32 0, i32 0, !dbg !848
  store ptr %14, ptr %head13, align 8, !dbg !849
  br label %if.end, !dbg !850

if.else:                                          ; preds = %if.then
  %16 = load ptr, ptr %cell, align 8, !dbg !851
  %next14 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %16, i32 0, i32 2, !dbg !853
  %17 = load ptr, ptr %next14, align 8, !dbg !853
  %18 = load ptr, ptr %prev, align 8, !dbg !854
  %next15 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %18, i32 0, i32 2, !dbg !855
  store ptr %17, ptr %next15, align 8, !dbg !856
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  %19 = load ptr, ptr %cell, align 8, !dbg !857
  %20 = load ptr, ptr %f.addr, align 8, !dbg !859
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %20, i32 0, i32 1, !dbg !860
  %21 = load ptr, ptr %tail, align 8, !dbg !860
  %cmp16 = icmp eq ptr %19, %21, !dbg !861
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !862

if.then18:                                        ; preds = %if.end
  %22 = load ptr, ptr %cell, align 8, !dbg !863
  %next19 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %22, i32 0, i32 2, !dbg !864
  %23 = load ptr, ptr %next19, align 8, !dbg !864
  %24 = load ptr, ptr %f.addr, align 8, !dbg !865
  %tail20 = getelementptr inbounds %struct.snd_seq_prioq, ptr %24, i32 0, i32 1, !dbg !866
  store ptr %23, ptr %tail20, align 8, !dbg !867
  br label %if.end21, !dbg !865

if.end21:                                         ; preds = %if.then18, %if.end
  %25 = load ptr, ptr %f.addr, align 8, !dbg !868
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %25, i32 0, i32 2, !dbg !869
  %26 = load i32, ptr %cells, align 8, !dbg !870
  %dec = add i32 %26, -1, !dbg !870
  store i32 %dec, ptr %cells, align 8, !dbg !870
  %27 = load ptr, ptr %cell, align 8, !dbg !871
  %next22 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %27, i32 0, i32 2, !dbg !872
  store ptr null, ptr %next22, align 8, !dbg !873
  %28 = load ptr, ptr %freefirst, align 8, !dbg !874
  %cmp23 = icmp eq ptr %28, null, !dbg !876
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !877

if.then25:                                        ; preds = %if.end21
  %29 = load ptr, ptr %cell, align 8, !dbg !878
  store ptr %29, ptr %freefirst, align 8, !dbg !880
  br label %if.end28, !dbg !881

if.else26:                                        ; preds = %if.end21
  %30 = load ptr, ptr %cell, align 8, !dbg !882
  %31 = load ptr, ptr %freeprev, align 8, !dbg !884
  %next27 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %31, i32 0, i32 2, !dbg !885
  store ptr %30, ptr %next27, align 8, !dbg !886
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then25
  %32 = load ptr, ptr %cell, align 8, !dbg !887
  store ptr %32, ptr %freeprev, align 8, !dbg !888
  br label %if.end30, !dbg !889

if.else29:                                        ; preds = %while.body
  %33 = load ptr, ptr %cell, align 8, !dbg !890
  store ptr %33, ptr %prev, align 8, !dbg !892
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.end28
  %34 = load ptr, ptr %next, align 8, !dbg !893
  store ptr %34, ptr %cell, align 8, !dbg !894
  br label %while.cond, !dbg !825, !llvm.loop !895

while.end:                                        ; preds = %while.cond
  %35 = load ptr, ptr %f.addr, align 8, !dbg !897
  %lock31 = getelementptr inbounds %struct.snd_seq_prioq, ptr %35, i32 0, i32 3, !dbg !898
  %36 = load i64, ptr %flags, align 8, !dbg !899
  call void @spin_unlock_irqrestore(ptr noundef %lock31, i64 noundef %36) #17, !dbg !900
  br label %while.cond32, !dbg !901

while.cond32:                                     ; preds = %while.body34, %while.end
  %37 = load ptr, ptr %freefirst, align 8, !dbg !902
  %tobool33 = icmp ne ptr %37, null, !dbg !901
  br i1 %tobool33, label %while.body34, label %while.end36, !dbg !901

while.body34:                                     ; preds = %while.cond32
  %38 = load ptr, ptr %freefirst, align 8, !dbg !903
  %next35 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %38, i32 0, i32 2, !dbg !905
  %39 = load ptr, ptr %next35, align 8, !dbg !905
  store ptr %39, ptr %freenext, align 8, !dbg !906
  %40 = load ptr, ptr %freefirst, align 8, !dbg !907
  call void @snd_seq_cell_free(ptr noundef %40) #17, !dbg !908
  %41 = load ptr, ptr %freenext, align 8, !dbg !909
  store ptr %41, ptr %freefirst, align 8, !dbg !910
  br label %while.cond32, !dbg !901, !llvm.loop !911

while.end36:                                      ; preds = %while.cond32
  call void @llvm.lifetime.end.p0(i64 8, ptr %freenext) #15, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %freeprev) #15, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %freefirst) #15, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #15, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !913
  ret void, !dbg !913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prioq_match(ptr noundef %cell, i32 noundef %client, i32 noundef %timestamp) #8 align 16 !dbg !914 {
entry:
  %retval = alloca i32, align 4
  %cell.addr = alloca ptr, align 8
  %client.addr = alloca i32, align 4
  %timestamp.addr = alloca i32, align 4
  store ptr %cell, ptr %cell.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cell.addr, metadata !918, metadata !DIExpression()), !dbg !921
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !919, metadata !DIExpression()), !dbg !922
  store i32 %timestamp, ptr %timestamp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timestamp.addr, metadata !920, metadata !DIExpression()), !dbg !923
  %0 = load ptr, ptr %cell.addr, align 8, !dbg !924
  %1 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %0, i32 0, i32 0, !dbg !926
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %1, i32 0, i32 5, !dbg !927
  %client1 = getelementptr inbounds %struct.snd_seq_addr, ptr %source, i32 0, i32 0, !dbg !928
  %2 = load i8, ptr %client1, align 4, !dbg !928
  %conv = zext i8 %2 to i32, !dbg !924
  %3 = load i32, ptr %client.addr, align 4, !dbg !929
  %cmp = icmp eq i32 %conv, %3, !dbg !930
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !931

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %cell.addr, align 8, !dbg !932
  %5 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %4, i32 0, i32 0, !dbg !933
  %dest = getelementptr inbounds %struct.snd_seq_event, ptr %5, i32 0, i32 6, !dbg !934
  %client3 = getelementptr inbounds %struct.snd_seq_addr, ptr %dest, i32 0, i32 0, !dbg !935
  %6 = load i8, ptr %client3, align 2, !dbg !935
  %conv4 = zext i8 %6 to i32, !dbg !932
  %7 = load i32, ptr %client.addr, align 4, !dbg !936
  %cmp5 = icmp eq i32 %conv4, %7, !dbg !937
  br i1 %cmp5, label %if.then, label %if.end, !dbg !938

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4, !dbg !939
  br label %return, !dbg !939

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, ptr %timestamp.addr, align 4, !dbg !940
  %tobool = icmp ne i32 %8, 0, !dbg !940
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !942

if.then7:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !943
  br label %return, !dbg !943

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %cell.addr, align 8, !dbg !944
  %10 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %9, i32 0, i32 0, !dbg !945
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %10, i32 0, i32 1, !dbg !946
  %11 = load i8, ptr %flags, align 1, !dbg !946
  %conv9 = zext i8 %11 to i32, !dbg !944
  %and = and i32 %conv9, 1, !dbg !947
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ], !dbg !948

sw.bb:                                            ; preds = %if.end8
  %12 = load ptr, ptr %cell.addr, align 8, !dbg !949
  %13 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %12, i32 0, i32 0, !dbg !952
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %13, i32 0, i32 4, !dbg !953
  %14 = load i32, ptr %time, align 4, !dbg !954
  %tobool10 = icmp ne i32 %14, 0, !dbg !949
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !955

if.then11:                                        ; preds = %sw.bb
  store i32 1, ptr %retval, align 4, !dbg !956
  br label %return, !dbg !956

if.end12:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !957

sw.bb13:                                          ; preds = %if.end8
  %15 = load ptr, ptr %cell.addr, align 8, !dbg !958
  %16 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %15, i32 0, i32 0, !dbg !960
  %time14 = getelementptr inbounds %struct.snd_seq_event, ptr %16, i32 0, i32 4, !dbg !961
  %tv_sec = getelementptr inbounds %struct.snd_seq_real_time, ptr %time14, i32 0, i32 0, !dbg !962
  %17 = load i32, ptr %tv_sec, align 4, !dbg !962
  %tobool15 = icmp ne i32 %17, 0, !dbg !958
  br i1 %tobool15, label %if.then19, label %lor.lhs.false16, !dbg !963

lor.lhs.false16:                                  ; preds = %sw.bb13
  %18 = load ptr, ptr %cell.addr, align 8, !dbg !964
  %19 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %18, i32 0, i32 0, !dbg !965
  %time17 = getelementptr inbounds %struct.snd_seq_event, ptr %19, i32 0, i32 4, !dbg !966
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %time17, i32 0, i32 1, !dbg !967
  %20 = load i32, ptr %tv_nsec, align 4, !dbg !967
  %tobool18 = icmp ne i32 %20, 0, !dbg !964
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !968

if.then19:                                        ; preds = %lor.lhs.false16, %sw.bb13
  store i32 1, ptr %retval, align 4, !dbg !969
  br label %return, !dbg !969

if.end20:                                         ; preds = %lor.lhs.false16
  br label %sw.epilog, !dbg !970

sw.epilog:                                        ; preds = %if.end8, %if.end20, %if.end12
  store i32 0, ptr %retval, align 4, !dbg !971
  br label %return, !dbg !971

return:                                           ; preds = %sw.epilog, %if.then19, %if.then11, %if.then7, %if.then
  %21 = load i32, ptr %retval, align 4, !dbg !972
  ret i32 %21, !dbg !972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_prioq_remove_events(ptr noundef %f, i32 noundef %client, ptr noundef %info) #0 align 16 !dbg !973 {
entry:
  %f.addr = alloca ptr, align 8
  %client.addr = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %cell = alloca ptr, align 8
  %next = alloca ptr, align 8
  %flags = alloca i64, align 8
  %prev = alloca ptr, align 8
  %freefirst = alloca ptr, align 8
  %freeprev = alloca ptr, align 8
  %freenext = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !991, metadata !DIExpression()), !dbg !1006
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !992, metadata !DIExpression()), !dbg !1007
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !993, metadata !DIExpression()), !dbg !1008
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !994, metadata !DIExpression()), !dbg !1010
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %next, metadata !995, metadata !DIExpression()), !dbg !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !996, metadata !DIExpression()), !dbg !1013
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #15, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !997, metadata !DIExpression()), !dbg !1015
  store ptr null, ptr %prev, align 8, !dbg !1015
  call void @llvm.lifetime.start.p0(i64 8, ptr %freefirst) #15, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %freefirst, metadata !998, metadata !DIExpression()), !dbg !1017
  store ptr null, ptr %freefirst, align 8, !dbg !1017
  call void @llvm.lifetime.start.p0(i64 8, ptr %freeprev) #15, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %freeprev, metadata !999, metadata !DIExpression()), !dbg !1018
  store ptr null, ptr %freeprev, align 8, !dbg !1018
  call void @llvm.lifetime.start.p0(i64 8, ptr %freenext) #15, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %freenext, metadata !1000, metadata !DIExpression()), !dbg !1019
  br label %do.body, !dbg !1020

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1021

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1001, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1005, metadata !DIExpression()), !dbg !1022
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1022
  %conv = zext i1 %cmp to i32, !dbg !1022
  store i32 1, ptr %tmp, align 4, !dbg !1022
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !1023
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !1023
  %0 = load i32, ptr %tmp, align 4, !dbg !1022
  %1 = load ptr, ptr %f.addr, align 8, !dbg !1023
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %1, i32 0, i32 3, !dbg !1023
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !1023
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !1023
  store i64 %call2, ptr %flags, align 8, !dbg !1023
  br label %do.cond, !dbg !1023

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1023

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !1021

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1021

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %f.addr, align 8, !dbg !1024
  %head = getelementptr inbounds %struct.snd_seq_prioq, ptr %2, i32 0, i32 0, !dbg !1025
  %3 = load ptr, ptr %head, align 8, !dbg !1025
  store ptr %3, ptr %cell, align 8, !dbg !1026
  br label %while.cond, !dbg !1027

while.cond:                                       ; preds = %if.end34, %do.end4
  %4 = load ptr, ptr %cell, align 8, !dbg !1028
  %tobool = icmp ne ptr %4, null, !dbg !1027
  br i1 %tobool, label %while.body, label %while.end, !dbg !1027

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %cell, align 8, !dbg !1029
  %next5 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %5, i32 0, i32 2, !dbg !1031
  %6 = load ptr, ptr %next5, align 8, !dbg !1031
  store ptr %6, ptr %next, align 8, !dbg !1032
  %7 = load ptr, ptr %cell, align 8, !dbg !1033
  %8 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %7, i32 0, i32 0, !dbg !1035
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %8, i32 0, i32 5, !dbg !1036
  %client6 = getelementptr inbounds %struct.snd_seq_addr, ptr %source, i32 0, i32 0, !dbg !1037
  %9 = load i8, ptr %client6, align 4, !dbg !1037
  %conv7 = zext i8 %9 to i32, !dbg !1033
  %10 = load i32, ptr %client.addr, align 4, !dbg !1038
  %cmp8 = icmp eq i32 %conv7, %10, !dbg !1039
  br i1 %cmp8, label %land.lhs.true, label %if.else33, !dbg !1040

land.lhs.true:                                    ; preds = %while.body
  %11 = load ptr, ptr %info.addr, align 8, !dbg !1041
  %12 = load ptr, ptr %cell, align 8, !dbg !1042
  %13 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %12, i32 0, i32 0, !dbg !1043
  %call10 = call i32 @prioq_remove_match(ptr noundef %11, ptr noundef %13) #17, !dbg !1044
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1044
  br i1 %tobool11, label %if.then, label %if.else33, !dbg !1045

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %cell, align 8, !dbg !1046
  %15 = load ptr, ptr %f.addr, align 8, !dbg !1049
  %head12 = getelementptr inbounds %struct.snd_seq_prioq, ptr %15, i32 0, i32 0, !dbg !1050
  %16 = load ptr, ptr %head12, align 8, !dbg !1050
  %cmp13 = icmp eq ptr %14, %16, !dbg !1051
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !1052

if.then15:                                        ; preds = %if.then
  %17 = load ptr, ptr %cell, align 8, !dbg !1053
  %next16 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %17, i32 0, i32 2, !dbg !1055
  %18 = load ptr, ptr %next16, align 8, !dbg !1055
  %19 = load ptr, ptr %f.addr, align 8, !dbg !1056
  %head17 = getelementptr inbounds %struct.snd_seq_prioq, ptr %19, i32 0, i32 0, !dbg !1057
  store ptr %18, ptr %head17, align 8, !dbg !1058
  br label %if.end, !dbg !1059

if.else:                                          ; preds = %if.then
  %20 = load ptr, ptr %cell, align 8, !dbg !1060
  %next18 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %20, i32 0, i32 2, !dbg !1062
  %21 = load ptr, ptr %next18, align 8, !dbg !1062
  %22 = load ptr, ptr %prev, align 8, !dbg !1063
  %next19 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %22, i32 0, i32 2, !dbg !1064
  store ptr %21, ptr %next19, align 8, !dbg !1065
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then15
  %23 = load ptr, ptr %cell, align 8, !dbg !1066
  %24 = load ptr, ptr %f.addr, align 8, !dbg !1068
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %24, i32 0, i32 1, !dbg !1069
  %25 = load ptr, ptr %tail, align 8, !dbg !1069
  %cmp20 = icmp eq ptr %23, %25, !dbg !1070
  br i1 %cmp20, label %if.then22, label %if.end25, !dbg !1071

if.then22:                                        ; preds = %if.end
  %26 = load ptr, ptr %cell, align 8, !dbg !1072
  %next23 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %26, i32 0, i32 2, !dbg !1073
  %27 = load ptr, ptr %next23, align 8, !dbg !1073
  %28 = load ptr, ptr %f.addr, align 8, !dbg !1074
  %tail24 = getelementptr inbounds %struct.snd_seq_prioq, ptr %28, i32 0, i32 1, !dbg !1075
  store ptr %27, ptr %tail24, align 8, !dbg !1076
  br label %if.end25, !dbg !1074

if.end25:                                         ; preds = %if.then22, %if.end
  %29 = load ptr, ptr %f.addr, align 8, !dbg !1077
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %29, i32 0, i32 2, !dbg !1078
  %30 = load i32, ptr %cells, align 8, !dbg !1079
  %dec = add i32 %30, -1, !dbg !1079
  store i32 %dec, ptr %cells, align 8, !dbg !1079
  %31 = load ptr, ptr %cell, align 8, !dbg !1080
  %next26 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %31, i32 0, i32 2, !dbg !1081
  store ptr null, ptr %next26, align 8, !dbg !1082
  %32 = load ptr, ptr %freefirst, align 8, !dbg !1083
  %cmp27 = icmp eq ptr %32, null, !dbg !1085
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !1086

if.then29:                                        ; preds = %if.end25
  %33 = load ptr, ptr %cell, align 8, !dbg !1087
  store ptr %33, ptr %freefirst, align 8, !dbg !1089
  br label %if.end32, !dbg !1090

if.else30:                                        ; preds = %if.end25
  %34 = load ptr, ptr %cell, align 8, !dbg !1091
  %35 = load ptr, ptr %freeprev, align 8, !dbg !1093
  %next31 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %35, i32 0, i32 2, !dbg !1094
  store ptr %34, ptr %next31, align 8, !dbg !1095
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then29
  %36 = load ptr, ptr %cell, align 8, !dbg !1096
  store ptr %36, ptr %freeprev, align 8, !dbg !1097
  br label %if.end34, !dbg !1098

if.else33:                                        ; preds = %land.lhs.true, %while.body
  %37 = load ptr, ptr %cell, align 8, !dbg !1099
  store ptr %37, ptr %prev, align 8, !dbg !1101
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.end32
  %38 = load ptr, ptr %next, align 8, !dbg !1102
  store ptr %38, ptr %cell, align 8, !dbg !1103
  br label %while.cond, !dbg !1027, !llvm.loop !1104

while.end:                                        ; preds = %while.cond
  %39 = load ptr, ptr %f.addr, align 8, !dbg !1106
  %lock35 = getelementptr inbounds %struct.snd_seq_prioq, ptr %39, i32 0, i32 3, !dbg !1107
  %40 = load i64, ptr %flags, align 8, !dbg !1108
  call void @spin_unlock_irqrestore(ptr noundef %lock35, i64 noundef %40) #17, !dbg !1109
  br label %while.cond36, !dbg !1110

while.cond36:                                     ; preds = %while.body38, %while.end
  %41 = load ptr, ptr %freefirst, align 8, !dbg !1111
  %tobool37 = icmp ne ptr %41, null, !dbg !1110
  br i1 %tobool37, label %while.body38, label %while.end40, !dbg !1110

while.body38:                                     ; preds = %while.cond36
  %42 = load ptr, ptr %freefirst, align 8, !dbg !1112
  %next39 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %42, i32 0, i32 2, !dbg !1114
  %43 = load ptr, ptr %next39, align 8, !dbg !1114
  store ptr %43, ptr %freenext, align 8, !dbg !1115
  %44 = load ptr, ptr %freefirst, align 8, !dbg !1116
  call void @snd_seq_cell_free(ptr noundef %44) #17, !dbg !1117
  %45 = load ptr, ptr %freenext, align 8, !dbg !1118
  store ptr %45, ptr %freefirst, align 8, !dbg !1119
  br label %while.cond36, !dbg !1110, !llvm.loop !1120

while.end40:                                      ; preds = %while.cond36
  call void @llvm.lifetime.end.p0(i64 8, ptr %freenext) #15, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %freeprev) #15, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %freefirst) #15, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #15, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !1122
  ret void, !dbg !1122
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prioq_remove_match(ptr noundef %info, ptr noundef %ev) #0 align 16 !dbg !1123 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %ev.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1127, metadata !DIExpression()), !dbg !1130
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !1128, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #15, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1129, metadata !DIExpression()), !dbg !1133
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1134
  %remove_mode = getelementptr inbounds %struct.snd_seq_remove_events, ptr %0, i32 0, i32 0, !dbg !1136
  %1 = load i32, ptr %remove_mode, align 4, !dbg !1136
  %and = and i32 %1, 4, !dbg !1137
  %tobool = icmp ne i32 %and, 0, !dbg !1137
  br i1 %tobool, label %if.then, label %if.end13, !dbg !1138

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ev.addr, align 8, !dbg !1139
  %dest = getelementptr inbounds %struct.snd_seq_event, ptr %2, i32 0, i32 6, !dbg !1142
  %client = getelementptr inbounds %struct.snd_seq_addr, ptr %dest, i32 0, i32 0, !dbg !1143
  %3 = load i8, ptr %client, align 2, !dbg !1143
  %conv = zext i8 %3 to i32, !dbg !1139
  %4 = load ptr, ptr %info.addr, align 8, !dbg !1144
  %dest1 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %4, i32 0, i32 3, !dbg !1145
  %client2 = getelementptr inbounds %struct.snd_seq_addr, ptr %dest1, i32 0, i32 0, !dbg !1146
  %5 = load i8, ptr %client2, align 1, !dbg !1146
  %conv3 = zext i8 %5 to i32, !dbg !1144
  %cmp = icmp ne i32 %conv, %conv3, !dbg !1147
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !1148

lor.lhs.false:                                    ; preds = %if.then
  %6 = load ptr, ptr %ev.addr, align 8, !dbg !1149
  %dest5 = getelementptr inbounds %struct.snd_seq_event, ptr %6, i32 0, i32 6, !dbg !1150
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %dest5, i32 0, i32 1, !dbg !1151
  %7 = load i8, ptr %port, align 1, !dbg !1151
  %conv6 = zext i8 %7 to i32, !dbg !1149
  %8 = load ptr, ptr %info.addr, align 8, !dbg !1152
  %dest7 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %8, i32 0, i32 3, !dbg !1153
  %port8 = getelementptr inbounds %struct.snd_seq_addr, ptr %dest7, i32 0, i32 1, !dbg !1154
  %9 = load i8, ptr %port8, align 1, !dbg !1154
  %conv9 = zext i8 %9 to i32, !dbg !1152
  %cmp10 = icmp ne i32 %conv6, %conv9, !dbg !1155
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !1156

if.then12:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, ptr %retval, align 4, !dbg !1157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1157

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end13, !dbg !1158

if.end13:                                         ; preds = %if.end, %entry
  %10 = load ptr, ptr %info.addr, align 8, !dbg !1159
  %remove_mode14 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %10, i32 0, i32 0, !dbg !1161
  %11 = load i32, ptr %remove_mode14, align 4, !dbg !1161
  %and15 = and i32 %11, 8, !dbg !1162
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1162
  br i1 %tobool16, label %if.then17, label %if.end34, !dbg !1163

if.then17:                                        ; preds = %if.end13
  %12 = load ptr, ptr %ev.addr, align 8, !dbg !1164
  %type = getelementptr inbounds %struct.snd_seq_event, ptr %12, i32 0, i32 0, !dbg !1164
  %13 = load i8, ptr %type, align 4, !dbg !1164
  %conv18 = zext i8 %13 to i32, !dbg !1164
  %cmp19 = icmp sge i32 %conv18, 5, !dbg !1164
  br i1 %cmp19, label %land.lhs.true, label %if.then25, !dbg !1164

land.lhs.true:                                    ; preds = %if.then17
  %14 = load ptr, ptr %ev.addr, align 8, !dbg !1164
  %type21 = getelementptr inbounds %struct.snd_seq_event, ptr %14, i32 0, i32 0, !dbg !1164
  %15 = load i8, ptr %type21, align 4, !dbg !1164
  %conv22 = zext i8 %15 to i32, !dbg !1164
  %cmp23 = icmp slt i32 %conv22, 20, !dbg !1164
  br i1 %cmp23, label %if.end26, label %if.then25, !dbg !1167

if.then25:                                        ; preds = %land.lhs.true, %if.then17
  store i32 0, ptr %retval, align 4, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

if.end26:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %ev.addr, align 8, !dbg !1169
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %16, i32 0, i32 7, !dbg !1171
  %channel = getelementptr inbounds %struct.snd_seq_ev_note, ptr %data, i32 0, i32 0, !dbg !1172
  %17 = load i8, ptr %channel, align 4, !dbg !1172
  %conv27 = zext i8 %17 to i32, !dbg !1169
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1173
  %channel28 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %18, i32 0, i32 4, !dbg !1174
  %19 = load i8, ptr %channel28, align 1, !dbg !1174
  %conv29 = zext i8 %19 to i32, !dbg !1173
  %cmp30 = icmp ne i32 %conv27, %conv29, !dbg !1175
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1176

if.then32:                                        ; preds = %if.end26
  store i32 0, ptr %retval, align 4, !dbg !1177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1177

if.end33:                                         ; preds = %if.end26
  br label %if.end34, !dbg !1178

if.end34:                                         ; preds = %if.end33, %if.end13
  %20 = load ptr, ptr %info.addr, align 8, !dbg !1179
  %remove_mode35 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %20, i32 0, i32 0, !dbg !1181
  %21 = load i32, ptr %remove_mode35, align 4, !dbg !1181
  %and36 = and i32 %21, 32, !dbg !1182
  %tobool37 = icmp ne i32 %and36, 0, !dbg !1182
  br i1 %tobool37, label %if.then38, label %if.end51, !dbg !1183

if.then38:                                        ; preds = %if.end34
  %22 = load ptr, ptr %info.addr, align 8, !dbg !1184
  %remove_mode39 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %22, i32 0, i32 0, !dbg !1187
  %23 = load i32, ptr %remove_mode39, align 4, !dbg !1187
  %and40 = and i32 %23, 64, !dbg !1188
  %tobool41 = icmp ne i32 %and40, 0, !dbg !1188
  br i1 %tobool41, label %if.then42, label %if.else, !dbg !1189

if.then42:                                        ; preds = %if.then38
  %24 = load ptr, ptr %ev.addr, align 8, !dbg !1190
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %24, i32 0, i32 4, !dbg !1191
  %25 = load ptr, ptr %info.addr, align 8, !dbg !1192
  %time43 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %25, i32 0, i32 1, !dbg !1193
  %call = call i32 @snd_seq_compare_tick_time(ptr noundef %time, ptr noundef %time43) #17, !dbg !1194
  store i32 %call, ptr %res, align 4, !dbg !1195
  br label %if.end47, !dbg !1196

if.else:                                          ; preds = %if.then38
  %26 = load ptr, ptr %ev.addr, align 8, !dbg !1197
  %time44 = getelementptr inbounds %struct.snd_seq_event, ptr %26, i32 0, i32 4, !dbg !1198
  %27 = load ptr, ptr %info.addr, align 8, !dbg !1199
  %time45 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %27, i32 0, i32 1, !dbg !1200
  %call46 = call i32 @snd_seq_compare_real_time(ptr noundef %time44, ptr noundef %time45) #17, !dbg !1201
  store i32 %call46, ptr %res, align 4, !dbg !1202
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then42
  %28 = load i32, ptr %res, align 4, !dbg !1203
  %tobool48 = icmp ne i32 %28, 0, !dbg !1203
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !1205

if.then49:                                        ; preds = %if.end47
  store i32 0, ptr %retval, align 4, !dbg !1206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1206

if.end50:                                         ; preds = %if.end47
  br label %if.end51, !dbg !1207

if.end51:                                         ; preds = %if.end50, %if.end34
  %29 = load ptr, ptr %info.addr, align 8, !dbg !1208
  %remove_mode52 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %29, i32 0, i32 0, !dbg !1210
  %30 = load i32, ptr %remove_mode52, align 4, !dbg !1210
  %and53 = and i32 %30, 16, !dbg !1211
  %tobool54 = icmp ne i32 %and53, 0, !dbg !1211
  br i1 %tobool54, label %if.then55, label %if.end71, !dbg !1212

if.then55:                                        ; preds = %if.end51
  %31 = load ptr, ptr %info.addr, align 8, !dbg !1213
  %remove_mode56 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %31, i32 0, i32 0, !dbg !1216
  %32 = load i32, ptr %remove_mode56, align 4, !dbg !1216
  %and57 = and i32 %32, 64, !dbg !1217
  %tobool58 = icmp ne i32 %and57, 0, !dbg !1217
  br i1 %tobool58, label %if.then59, label %if.else63, !dbg !1218

if.then59:                                        ; preds = %if.then55
  %33 = load ptr, ptr %ev.addr, align 8, !dbg !1219
  %time60 = getelementptr inbounds %struct.snd_seq_event, ptr %33, i32 0, i32 4, !dbg !1220
  %34 = load ptr, ptr %info.addr, align 8, !dbg !1221
  %time61 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %34, i32 0, i32 1, !dbg !1222
  %call62 = call i32 @snd_seq_compare_tick_time(ptr noundef %time60, ptr noundef %time61) #17, !dbg !1223
  store i32 %call62, ptr %res, align 4, !dbg !1224
  br label %if.end67, !dbg !1225

if.else63:                                        ; preds = %if.then55
  %35 = load ptr, ptr %ev.addr, align 8, !dbg !1226
  %time64 = getelementptr inbounds %struct.snd_seq_event, ptr %35, i32 0, i32 4, !dbg !1227
  %36 = load ptr, ptr %info.addr, align 8, !dbg !1228
  %time65 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %36, i32 0, i32 1, !dbg !1229
  %call66 = call i32 @snd_seq_compare_real_time(ptr noundef %time64, ptr noundef %time65) #17, !dbg !1230
  store i32 %call66, ptr %res, align 4, !dbg !1231
  br label %if.end67

if.end67:                                         ; preds = %if.else63, %if.then59
  %37 = load i32, ptr %res, align 4, !dbg !1232
  %tobool68 = icmp ne i32 %37, 0, !dbg !1232
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !1234

if.then69:                                        ; preds = %if.end67
  store i32 0, ptr %retval, align 4, !dbg !1235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1235

if.end70:                                         ; preds = %if.end67
  br label %if.end71, !dbg !1236

if.end71:                                         ; preds = %if.end70, %if.end51
  %38 = load ptr, ptr %info.addr, align 8, !dbg !1237
  %remove_mode72 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %38, i32 0, i32 0, !dbg !1239
  %39 = load i32, ptr %remove_mode72, align 4, !dbg !1239
  %and73 = and i32 %39, 128, !dbg !1240
  %tobool74 = icmp ne i32 %and73, 0, !dbg !1240
  br i1 %tobool74, label %if.then75, label %if.end83, !dbg !1241

if.then75:                                        ; preds = %if.end71
  %40 = load ptr, ptr %ev.addr, align 8, !dbg !1242
  %type76 = getelementptr inbounds %struct.snd_seq_event, ptr %40, i32 0, i32 0, !dbg !1245
  %41 = load i8, ptr %type76, align 4, !dbg !1245
  %conv77 = zext i8 %41 to i32, !dbg !1242
  %42 = load ptr, ptr %info.addr, align 8, !dbg !1246
  %type78 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %42, i32 0, i32 5, !dbg !1247
  %43 = load i32, ptr %type78, align 4, !dbg !1247
  %cmp79 = icmp ne i32 %conv77, %43, !dbg !1248
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !1249

if.then81:                                        ; preds = %if.then75
  store i32 0, ptr %retval, align 4, !dbg !1250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1250

if.end82:                                         ; preds = %if.then75
  br label %if.end83, !dbg !1251

if.end83:                                         ; preds = %if.end82, %if.end71
  %44 = load ptr, ptr %info.addr, align 8, !dbg !1252
  %remove_mode84 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %44, i32 0, i32 0, !dbg !1254
  %45 = load i32, ptr %remove_mode84, align 4, !dbg !1254
  %and85 = and i32 %45, 256, !dbg !1255
  %tobool86 = icmp ne i32 %and85, 0, !dbg !1255
  br i1 %tobool86, label %if.then87, label %if.end90, !dbg !1256

if.then87:                                        ; preds = %if.end83
  %46 = load ptr, ptr %ev.addr, align 8, !dbg !1257
  %type88 = getelementptr inbounds %struct.snd_seq_event, ptr %46, i32 0, i32 0, !dbg !1259
  %47 = load i8, ptr %type88, align 4, !dbg !1259
  %conv89 = zext i8 %47 to i32, !dbg !1257
  switch i32 %conv89, label %sw.default [
    i32 7, label %sw.bb
  ], !dbg !1260

sw.bb:                                            ; preds = %if.then87
  store i32 0, ptr %retval, align 4, !dbg !1261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1261

sw.default:                                       ; preds = %if.then87
  br label %sw.epilog, !dbg !1263

sw.epilog:                                        ; preds = %sw.default
  br label %if.end90, !dbg !1264

if.end90:                                         ; preds = %sw.epilog, %if.end83
  %48 = load ptr, ptr %info.addr, align 8, !dbg !1265
  %remove_mode91 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %48, i32 0, i32 0, !dbg !1267
  %49 = load i32, ptr %remove_mode91, align 4, !dbg !1267
  %and92 = and i32 %49, 512, !dbg !1268
  %tobool93 = icmp ne i32 %and92, 0, !dbg !1268
  br i1 %tobool93, label %if.then94, label %if.end102, !dbg !1269

if.then94:                                        ; preds = %if.end90
  %50 = load ptr, ptr %info.addr, align 8, !dbg !1270
  %tag = getelementptr inbounds %struct.snd_seq_remove_events, ptr %50, i32 0, i32 6, !dbg !1273
  %51 = load i8, ptr %tag, align 4, !dbg !1273
  %conv95 = zext i8 %51 to i32, !dbg !1270
  %52 = load ptr, ptr %ev.addr, align 8, !dbg !1274
  %tag96 = getelementptr inbounds %struct.snd_seq_event, ptr %52, i32 0, i32 2, !dbg !1275
  %53 = load i8, ptr %tag96, align 2, !dbg !1275
  %conv97 = zext i8 %53 to i32, !dbg !1274
  %cmp98 = icmp ne i32 %conv95, %conv97, !dbg !1276
  br i1 %cmp98, label %if.then100, label %if.end101, !dbg !1277

if.then100:                                       ; preds = %if.then94
  store i32 0, ptr %retval, align 4, !dbg !1278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1278

if.end101:                                        ; preds = %if.then94
  br label %if.end102, !dbg !1279

if.end102:                                        ; preds = %if.end101, %if.end90
  store i32 1, ptr %retval, align 4, !dbg !1280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1280

cleanup:                                          ; preds = %if.end102, %if.then100, %sw.bb, %if.then81, %if.then69, %if.then49, %if.then32, %if.then25, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #15, !dbg !1281
  %54 = load i32, ptr %retval, align 4, !dbg !1281
  ret i32 %54, !dbg !1281
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !1282 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1284, metadata !DIExpression()), !dbg !1289
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1285, metadata !DIExpression()), !dbg !1290
  %0 = load i64, ptr %size.addr, align 8, !dbg !1291
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1292
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1293

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1294
  %tobool = icmp ne i64 %2, 0, !dbg !1294
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1295

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1286, metadata !DIExpression()), !dbg !1297
  %3 = load i64, ptr %size.addr, align 8, !dbg !1298
  %cmp = icmp ugt i64 %3, 8192, !dbg !1300
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1301

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1302
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1303
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1304
  store ptr %call, ptr %retval, align 8, !dbg !1305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1305

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1306
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !1306
  store i32 %call2, ptr %index, align 4, !dbg !1307
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1308
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1309
  %9 = ptrtoint ptr %8 to i64, !dbg !1309
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !1310
  %idxprom = zext i32 %call3 to i64, !dbg !1311
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1311
  %10 = load i32, ptr %index, align 4, !dbg !1312
  %idxprom4 = zext i32 %10 to i64, !dbg !1311
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1311
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1311
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1313
  %13 = load i64, ptr %size.addr, align 8, !dbg !1314
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !1315
  store ptr %call6, ptr %retval, align 8, !dbg !1316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1316

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !1317
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1318
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1319
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1320
  store ptr %call8, ptr %retval, align 8, !dbg !1321
  br label %return, !dbg !1321

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1322
  ret ptr %16, !dbg !1322
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1323 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !1324 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1330, metadata !DIExpression()), !dbg !1332
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1331, metadata !DIExpression()), !dbg !1333
  %0 = load i64, ptr %size.addr, align 8, !dbg !1334
  %tobool = icmp ne i64 %0, 0, !dbg !1334
  br i1 %tobool, label %if.end, label %if.then, !dbg !1336

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1337
  br label %return, !dbg !1337

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1338
  %cmp = icmp ule i64 %1, 8, !dbg !1340
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1341

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1342
  br label %return, !dbg !1342

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1343
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1345
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1346

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1347
  %cmp4 = icmp ule i64 %3, 96, !dbg !1348
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1349

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1350
  br label %return, !dbg !1350

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1351
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1353
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1354

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1355
  %cmp9 = icmp ule i64 %5, 192, !dbg !1356
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1357

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1358
  br label %return, !dbg !1358

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1359
  %cmp12 = icmp ule i64 %6, 8, !dbg !1361
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1362

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1363
  br label %return, !dbg !1363

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1364
  %cmp15 = icmp ule i64 %7, 16, !dbg !1366
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1367

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1368
  br label %return, !dbg !1368

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1369
  %cmp18 = icmp ule i64 %8, 32, !dbg !1371
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1372

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1373
  br label %return, !dbg !1373

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1374
  %cmp21 = icmp ule i64 %9, 64, !dbg !1376
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1377

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1378
  br label %return, !dbg !1378

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1379
  %cmp24 = icmp ule i64 %10, 128, !dbg !1381
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1382

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1383
  br label %return, !dbg !1383

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1384
  %cmp27 = icmp ule i64 %11, 256, !dbg !1386
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1387

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1388
  br label %return, !dbg !1388

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1389
  %cmp30 = icmp ule i64 %12, 512, !dbg !1391
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1392

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1393
  br label %return, !dbg !1393

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1394
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1396
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1397

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1398
  br label %return, !dbg !1398

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1399
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1401
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1402

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1403
  br label %return, !dbg !1403

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1404
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1406
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1407

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1408
  br label %return, !dbg !1408

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1409
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1411
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1412

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1413
  br label %return, !dbg !1413

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1414
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1416
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1417

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1418
  br label %return, !dbg !1418

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1419
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1421
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1422

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1423
  br label %return, !dbg !1423

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1424
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1426
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1427

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1428
  br label %return, !dbg !1428

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1429
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1431
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1432

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1433
  br label %return, !dbg !1433

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1434
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1436
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1437

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1438
  br label %return, !dbg !1438

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1439
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1441
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1442

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1443
  br label %return, !dbg !1443

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1444
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1446
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1447

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1448
  br label %return, !dbg !1448

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1449
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1451
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1452

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1453
  br label %return, !dbg !1453

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1454, !range !1456, !noundef !1457
  %tobool69 = trunc i8 %25 to i1, !dbg !1454
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1458

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1459

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !1460, !srcloc !1463
  unreachable, !dbg !1460

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1464

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1465

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1466

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1468

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1466

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !1470, !srcloc !1472
  br label %do.end75, !dbg !1470

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1466

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1473
  br label %return, !dbg !1473

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1474
  ret i32 %26, !dbg !1474
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1475 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !1481 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1485, metadata !DIExpression()), !dbg !1487
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1486, metadata !DIExpression()), !dbg !1488
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1489
  %and = and i32 %0, 17, !dbg !1489
  %cmp = icmp eq i32 %and, 0, !dbg !1489
  %lnot = xor i1 %cmp, true, !dbg !1489
  %lnot1 = xor i1 %lnot, true, !dbg !1489
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1489
  %conv = sext i32 %lnot.ext to i64, !dbg !1489
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1489
  %tobool = icmp ne i64 %expval, 0, !dbg !1489
  br i1 %tobool, label %if.then, label %if.end, !dbg !1491

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1492
  br label %return, !dbg !1492

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1493
  %and2 = and i32 %1, 1, !dbg !1495
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1495
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1496

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1497
  br label %return, !dbg !1497

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1498
  br label %return, !dbg !1498

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1500
  ret i32 %2, !dbg !1500
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1501 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1502 dso_local void @__compiletime_assert_117() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_compare_tick_time(ptr noundef %a, ptr noundef %b) #8 align 16 !dbg !1505 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1511, metadata !DIExpression()), !dbg !1513
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1512, metadata !DIExpression()), !dbg !1514
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1515
  %1 = load i32, ptr %0, align 4, !dbg !1516
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1517
  %3 = load i32, ptr %2, align 4, !dbg !1518
  %cmp = icmp uge i32 %1, %3, !dbg !1519
  %conv = zext i1 %cmp to i32, !dbg !1519
  ret i32 %conv, !dbg !1520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_compare_real_time(ptr noundef %a, ptr noundef %b) #8 align 16 !dbg !1521 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1528, metadata !DIExpression()), !dbg !1530
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1529, metadata !DIExpression()), !dbg !1531
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1532
  %tv_sec = getelementptr inbounds %struct.snd_seq_real_time, ptr %0, i32 0, i32 0, !dbg !1534
  %1 = load i32, ptr %tv_sec, align 4, !dbg !1534
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1535
  %tv_sec1 = getelementptr inbounds %struct.snd_seq_real_time, ptr %2, i32 0, i32 0, !dbg !1536
  %3 = load i32, ptr %tv_sec1, align 4, !dbg !1536
  %cmp = icmp ugt i32 %1, %3, !dbg !1537
  br i1 %cmp, label %if.then, label %if.end, !dbg !1538

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1539
  br label %return, !dbg !1539

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !dbg !1540
  %tv_sec2 = getelementptr inbounds %struct.snd_seq_real_time, ptr %4, i32 0, i32 0, !dbg !1542
  %5 = load i32, ptr %tv_sec2, align 4, !dbg !1542
  %6 = load ptr, ptr %b.addr, align 8, !dbg !1543
  %tv_sec3 = getelementptr inbounds %struct.snd_seq_real_time, ptr %6, i32 0, i32 0, !dbg !1544
  %7 = load i32, ptr %tv_sec3, align 4, !dbg !1544
  %cmp4 = icmp eq i32 %5, %7, !dbg !1545
  br i1 %cmp4, label %land.lhs.true, label %if.end8, !dbg !1546

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %a.addr, align 8, !dbg !1547
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %8, i32 0, i32 1, !dbg !1548
  %9 = load i32, ptr %tv_nsec, align 4, !dbg !1548
  %10 = load ptr, ptr %b.addr, align 8, !dbg !1549
  %tv_nsec5 = getelementptr inbounds %struct.snd_seq_real_time, ptr %10, i32 0, i32 1, !dbg !1550
  %11 = load i32, ptr %tv_nsec5, align 4, !dbg !1550
  %cmp6 = icmp uge i32 %9, %11, !dbg !1551
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1552

if.then7:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1553
  br label %return, !dbg !1553

if.end8:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %retval, align 4, !dbg !1554
  br label %return, !dbg !1554

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !1555
  ret i32 %12, !dbg !1555
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1556 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sound/core/seq/seq_prioq.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "592731f810d499722fbb092e3e71dd38")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 53)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/seq/.seq_prioq.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/seq/snd-seq\22 -D KBUILD_BASENAME=\22seq_prioq\22 -D KBUILD_MODNAME=\22snd_seq\22 -D __KBUILD_MODNAME=kmod_snd_seq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/seq/seq_prioq.ll sound/core/seq/seq_prioq.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !30, globals: !35, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !21}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 10, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !17, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29}
!23 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!25 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!28 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!29 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!30 = !{!31, !33, !34}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !32, line: 154, baseType: !17)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{!0, !7}
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 4, !"function_return_thunk_extern", i32 1}
!41 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "snd_seq_prioq_new", scope: !2, file: !2, line: 42, type: !46, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !251)
!46 = !DISubroutineType(types: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_prioq", file: !50, line: 14, size: 192, elements: !51)
!50 = !DIFile(filename: "sound/core/seq/seq_prioq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a43ff953124a5eb5f3fb69be68c869b0")
!51 = !{!52, !248, !249, !250}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !49, file: !50, line: 15, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event_cell", file: !55, line: 29, size: 384, elements: !56)
!55 = !DIFile(filename: "sound/core/seq/seq_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00d141c657921506643a42c8b258f674")
!56 = !{!57, !179, !247}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !54, file: !55, line: 30, baseType: !58, size: 224)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !55, line: 30, size: 224, elements: !59)
!59 = !{!60, !171}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !55, line: 31, baseType: !61, size: 224)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event", file: !62, line: 271, size: 224, elements: !63)
!62 = !DIFile(filename: "./include/uapi/sound/asequencer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a270bda5db28a911babca63673f52743")
!63 = !{!64, !67, !68, !69, !70, !80, !85, !86}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !62, line: 272, baseType: !65, size: 8)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_event_type_t", file: !62, line: 139, baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !62, line: 273, baseType: !66, size: 8, offset: 8)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !61, file: !62, line: 274, baseType: !4, size: 8, offset: 16)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !61, file: !62, line: 276, baseType: !66, size: 8, offset: 24)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !61, file: !62, line: 277, baseType: !71, size: 64, offset: 32)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_timestamp", file: !62, line: 225, size: 64, elements: !72)
!72 = !{!73, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !71, file: !62, line: 226, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_tick_time_t", file: !62, line: 223, baseType: !17)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !71, file: !62, line: 227, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_real_time", file: !62, line: 218, size: 64, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !76, file: !62, line: 219, baseType: !17, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !76, file: !62, line: 220, baseType: !17, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !61, file: !62, line: 279, baseType: !81, size: 16, offset: 96)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_addr", file: !62, line: 142, size: 16, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !81, file: !62, line: 143, baseType: !66, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !81, file: !62, line: 144, baseType: !66, size: 8, offset: 8)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !61, file: !62, line: 280, baseType: !81, size: 16, offset: 112)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !61, file: !62, line: 282, baseType: !87, size: 96, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_event_data", file: !62, line: 256, size: 96, elements: !88)
!88 = !{!89, !97, !107, !114, !121, !126, !151, !152, !153, !158, !163}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !87, file: !62, line: 257, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_note", file: !62, line: 180, size: 64, elements: !91)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !90, file: !62, line: 181, baseType: !66, size: 8)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !90, file: !62, line: 182, baseType: !66, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "velocity", scope: !90, file: !62, line: 183, baseType: !66, size: 8, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "off_velocity", scope: !90, file: !62, line: 184, baseType: !66, size: 8, offset: 24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !90, file: !62, line: 185, baseType: !17, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !87, file: !62, line: 258, baseType: !98, size: 96)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ctrl", file: !62, line: 189, size: 96, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !98, file: !62, line: 190, baseType: !66, size: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !98, file: !62, line: 191, baseType: !66, size: 8, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !98, file: !62, line: 191, baseType: !66, size: 8, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !98, file: !62, line: 191, baseType: !66, size: 8, offset: 24)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !98, file: !62, line: 192, baseType: !17, size: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !98, file: !62, line: 193, baseType: !106, size: 32, offset: 64)
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "raw8", scope: !87, file: !62, line: 259, baseType: !108, size: 96)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw8", file: !62, line: 197, size: 96, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !108, file: !62, line: 198, baseType: !111, size: 96)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 96, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 12)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "raw32", scope: !87, file: !62, line: 260, baseType: !115, size: 96)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw32", file: !62, line: 202, size: 96, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !115, file: !62, line: 203, baseType: !118, size: 96)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 96, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 3)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !87, file: !62, line: 261, baseType: !122, size: 96)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ext", file: !62, line: 207, size: 96, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !122, file: !62, line: 208, baseType: !17, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !122, file: !62, line: 209, baseType: !33, size: 64, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !87, file: !62, line: 262, baseType: !127, size: 96)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_queue_control", file: !62, line: 236, size: 96, elements: !128)
!128 = !{!129, !130, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !127, file: !62, line: 237, baseType: !66, size: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !127, file: !62, line: 238, baseType: !131, size: 24, offset: 8)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 24, elements: !119)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !127, file: !62, line: 246, baseType: !133, size: 64, offset: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !62, line: 239, size: 64, elements: !134)
!134 = !{!135, !136, !137, !138, !143, !147}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !133, file: !62, line: 240, baseType: !106, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !133, file: !62, line: 241, baseType: !71, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !133, file: !62, line: 242, baseType: !17, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !133, file: !62, line: 243, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue_skew", file: !62, line: 230, size: 64, elements: !140)
!140 = !{!141, !142}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !139, file: !62, line: 231, baseType: !17, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !139, file: !62, line: 232, baseType: !17, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "d32", scope: !133, file: !62, line: 244, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "d8", scope: !133, file: !62, line: 245, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !87, file: !62, line: 263, baseType: !71, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !87, file: !62, line: 264, baseType: !81, size: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !87, file: !62, line: 265, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_connect", file: !62, line: 148, size: 32, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !154, file: !62, line: 149, baseType: !81, size: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !154, file: !62, line: 150, baseType: !81, size: 16, offset: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !87, file: !62, line: 266, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_result", file: !62, line: 212, size: 64, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !159, file: !62, line: 213, baseType: !106, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !159, file: !62, line: 214, baseType: !106, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !87, file: !62, line: 267, baseType: !164, size: 96)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_quote", file: !62, line: 250, size: 96, elements: !165)
!165 = !{!166, !167, !169}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !164, file: !62, line: 251, baseType: !81, size: 16)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !164, file: !62, line: 252, baseType: !168, size: 16, offset: 16)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !164, file: !62, line: 253, baseType: !170, size: 64, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ump", scope: !58, file: !55, line: 32, baseType: !172, size: 224)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__snd_seq_event", file: !55, line: 15, size: 224, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !172, file: !55, line: 16, baseType: !61, size: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !172, file: !55, line: 25, baseType: !176, size: 224)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !172, file: !55, line: 20, size: 224, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !176, file: !55, line: 21, baseType: !61, size: 224)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !54, file: !55, line: 34, baseType: !180, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_pool", file: !55, line: 43, size: 704, elements: !182)
!182 = !{!183, !184, !185, !186, !191, !192, !193, !194, !195, !196, !197, !198, !246}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !181, file: !55, line: 44, baseType: !53, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !181, file: !55, line: 45, baseType: !53, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "total_elements", scope: !181, file: !55, line: 47, baseType: !106, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !181, file: !55, line: 48, baseType: !187, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !32, line: 174, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 172, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !188, file: !32, line: 173, baseType: !106, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !55, line: 50, baseType: !106, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "room", scope: !181, file: !55, line: 51, baseType: !106, size: 32, offset: 224)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !181, file: !55, line: 53, baseType: !106, size: 32, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "max_used", scope: !181, file: !55, line: 56, baseType: !106, size: 32, offset: 288)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_nopool", scope: !181, file: !55, line: 57, baseType: !106, size: 32, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_failures", scope: !181, file: !55, line: 58, baseType: !106, size: 32, offset: 352)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_success", scope: !181, file: !55, line: 59, baseType: !106, size: 32, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "output_sleep", scope: !181, file: !55, line: 62, baseType: !199, size: 192, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !200, line: 41, baseType: !201)
!200 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !200, line: 37, size: 192, elements: !202)
!202 = !{!203, !240}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !201, file: !200, line: 38, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !205, line: 29, baseType: !206)
!205 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !205, line: 17, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 18, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 18, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !209, file: !205, line: 19, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !213, line: 14, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !212, file: !213, line: 15, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !217, line: 44, baseType: !218)
!217 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !217, line: 14, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !217, line: 15, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 15, size: 32, elements: !222)
!222 = !{!223, !224, !233}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !221, file: !217, line: 16, baseType: !187, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !217, line: 24, baseType: !225, size: 16)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !217, line: 24, size: 16, elements: !226)
!226 = !{!227, !232}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !225, file: !217, line: 25, baseType: !228, size: 8)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !229, line: 17, baseType: !230)
!229 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !231, line: 21, baseType: !66)
!231 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !225, file: !217, line: 26, baseType: !228, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !217, line: 28, baseType: !234, size: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !217, line: 28, size: 32, elements: !235)
!235 = !{!236, !239}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !234, file: !217, line: 29, baseType: !237, size: 16)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !229, line: 19, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !231, line: 24, baseType: !168)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !217, line: 30, baseType: !237, size: 16, offset: 16)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !201, file: !200, line: 39, baseType: !241, size: 128, offset: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !32, line: 190, size: 128, elements: !242)
!242 = !{!243, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !32, line: 191, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !241, file: !32, line: 191, baseType: !244, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !181, file: !55, line: 65, baseType: !204, size: 32, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !55, line: 35, baseType: !53, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !49, file: !50, line: 16, baseType: !53, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "cells", scope: !49, file: !50, line: 17, baseType: !106, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !49, file: !50, line: 18, baseType: !204, size: 32, offset: 160)
!251 = !{!252}
!252 = !DILocalVariable(name: "f", scope: !45, file: !2, line: 44, type: !48)
!253 = !DILocation(line: 44, column: 2, scope: !45)
!254 = !DILocation(line: 44, column: 24, scope: !45)
!255 = !DILocation(line: 46, column: 6, scope: !45)
!256 = !DILocation(line: 46, column: 4, scope: !45)
!257 = !DILocation(line: 47, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !45, file: !2, line: 47, column: 6)
!259 = !DILocation(line: 47, column: 6, scope: !45)
!260 = !DILocation(line: 48, column: 3, scope: !258)
!261 = !DILocation(line: 50, column: 2, scope: !45)
!262 = !DILocation(line: 50, column: 2, scope: !263)
!263 = distinct !DILexicalBlock(scope: !45, file: !2, line: 50, column: 2)
!264 = !DILocation(line: 51, column: 2, scope: !45)
!265 = !DILocation(line: 51, column: 5, scope: !45)
!266 = !DILocation(line: 51, column: 10, scope: !45)
!267 = !DILocation(line: 52, column: 2, scope: !45)
!268 = !DILocation(line: 52, column: 5, scope: !45)
!269 = !DILocation(line: 52, column: 10, scope: !45)
!270 = !DILocation(line: 53, column: 2, scope: !45)
!271 = !DILocation(line: 53, column: 5, scope: !45)
!272 = !DILocation(line: 53, column: 11, scope: !45)
!273 = !DILocation(line: 55, column: 9, scope: !45)
!274 = !DILocation(line: 55, column: 2, scope: !45)
!275 = !DILocation(line: 56, column: 1, scope: !45)
!276 = distinct !DISubprogram(name: "kzalloc", scope: !9, file: !9, line: 719, type: !277, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !283)
!277 = !DISubroutineType(types: !278)
!278 = !{!33, !279, !31}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 61, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !281, line: 72, baseType: !282)
!281 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !281, line: 16, baseType: !34)
!283 = !{!284, !285}
!284 = !DILocalVariable(name: "size", arg: 1, scope: !276, file: !9, line: 719, type: !279)
!285 = !DILocalVariable(name: "flags", arg: 2, scope: !276, file: !9, line: 719, type: !31)
!286 = !DILocation(line: 719, column: 52, scope: !276)
!287 = !DILocation(line: 719, column: 64, scope: !276)
!288 = !DILocation(line: 721, column: 17, scope: !276)
!289 = !DILocation(line: 721, column: 23, scope: !276)
!290 = !DILocation(line: 721, column: 29, scope: !276)
!291 = !DILocation(line: 721, column: 9, scope: !276)
!292 = !DILocation(line: 721, column: 2, scope: !276)
!293 = distinct !DISubprogram(name: "spinlock_check", scope: !294, file: !294, line: 324, type: !295, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !300)
!294 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !213, line: 23, baseType: !212)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!300 = !{!301}
!301 = !DILocalVariable(name: "lock", arg: 1, scope: !293, file: !294, line: 324, type: !299)
!302 = !DILocation(line: 324, column: 67, scope: !293)
!303 = !DILocation(line: 326, column: 10, scope: !293)
!304 = !DILocation(line: 326, column: 16, scope: !293)
!305 = !DILocation(line: 326, column: 2, scope: !293)
!306 = distinct !DISubprogram(name: "snd_seq_prioq_delete", scope: !2, file: !2, line: 59, type: !307, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !310)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!310 = !{!311, !312}
!311 = !DILocalVariable(name: "fifo", arg: 1, scope: !306, file: !2, line: 59, type: !309)
!312 = !DILocalVariable(name: "f", scope: !306, file: !2, line: 61, type: !48)
!313 = !DILocation(line: 59, column: 50, scope: !306)
!314 = !DILocation(line: 61, column: 2, scope: !306)
!315 = !DILocation(line: 61, column: 24, scope: !306)
!316 = !DILocation(line: 61, column: 29, scope: !306)
!317 = !DILocation(line: 61, column: 28, scope: !306)
!318 = !DILocation(line: 62, column: 3, scope: !306)
!319 = !DILocation(line: 62, column: 8, scope: !306)
!320 = !DILocation(line: 64, column: 6, scope: !321)
!321 = distinct !DILexicalBlock(scope: !306, file: !2, line: 64, column: 6)
!322 = !DILocation(line: 64, column: 8, scope: !321)
!323 = !DILocation(line: 64, column: 6, scope: !306)
!324 = !DILocation(line: 65, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 65, column: 3)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 65, column: 3)
!327 = distinct !DILexicalBlock(scope: !321, file: !2, line: 64, column: 17)
!328 = !DILocation(line: 65, column: 3, scope: !326)
!329 = !DILocation(line: 66, column: 3, scope: !327)
!330 = !DILocation(line: 72, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !306, file: !2, line: 72, column: 6)
!332 = !DILocation(line: 72, column: 9, scope: !331)
!333 = !DILocation(line: 72, column: 15, scope: !331)
!334 = !DILocation(line: 72, column: 6, scope: !306)
!335 = !DILocation(line: 74, column: 3, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !2, line: 72, column: 20)
!337 = !DILocation(line: 74, column: 10, scope: !336)
!338 = !DILocation(line: 74, column: 13, scope: !336)
!339 = !DILocation(line: 74, column: 19, scope: !336)
!340 = !DILocation(line: 75, column: 45, scope: !336)
!341 = !DILocation(line: 75, column: 22, scope: !336)
!342 = !DILocation(line: 75, column: 4, scope: !336)
!343 = distinct !{!343, !335, !344, !345, !346}
!344 = !DILocation(line: 75, column: 53, scope: !336)
!345 = !{!"llvm.loop.mustprogress"}
!346 = !{!"llvm.loop.unroll.disable"}
!347 = !DILocation(line: 76, column: 2, scope: !336)
!348 = !DILocation(line: 78, column: 8, scope: !306)
!349 = !DILocation(line: 78, column: 2, scope: !306)
!350 = !DILocation(line: 79, column: 1, scope: !306)
!351 = !DISubprogram(name: "snd_seq_cell_free", scope: !55, file: !55, line: 68, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !53}
!354 = distinct !DISubprogram(name: "snd_seq_prioq_cell_out", scope: !2, file: !2, line: 212, type: !355, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!53, !48, !33}
!357 = !{!358, !359, !360, !361, !362, !366}
!358 = !DILocalVariable(name: "f", arg: 1, scope: !354, file: !2, line: 212, type: !48)
!359 = !DILocalVariable(name: "current_time", arg: 2, scope: !354, file: !2, line: 213, type: !33)
!360 = !DILocalVariable(name: "cell", scope: !354, file: !2, line: 215, type: !53)
!361 = !DILocalVariable(name: "flags", scope: !354, file: !2, line: 216, type: !34)
!362 = !DILocalVariable(name: "__dummy", scope: !363, file: !2, line: 222, type: !34)
!363 = distinct !DILexicalBlock(scope: !364, file: !2, line: 222, column: 2)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 222, column: 2)
!365 = distinct !DILexicalBlock(scope: !354, file: !2, line: 222, column: 2)
!366 = !DILocalVariable(name: "__dummy2", scope: !363, file: !2, line: 222, type: !34)
!367 = !DILocation(line: 212, column: 73, scope: !354)
!368 = !DILocation(line: 213, column: 15, scope: !354)
!369 = !DILocation(line: 215, column: 2, scope: !354)
!370 = !DILocation(line: 215, column: 29, scope: !354)
!371 = !DILocation(line: 216, column: 2, scope: !354)
!372 = !DILocation(line: 216, column: 16, scope: !354)
!373 = !DILocation(line: 218, column: 6, scope: !374)
!374 = distinct !DILexicalBlock(scope: !354, file: !2, line: 218, column: 6)
!375 = !DILocation(line: 218, column: 8, scope: !374)
!376 = !DILocation(line: 218, column: 6, scope: !354)
!377 = !DILocation(line: 219, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !2, line: 219, column: 3)
!379 = distinct !DILexicalBlock(scope: !380, file: !2, line: 219, column: 3)
!380 = distinct !DILexicalBlock(scope: !374, file: !2, line: 218, column: 17)
!381 = !DILocation(line: 219, column: 3, scope: !379)
!382 = !DILocation(line: 220, column: 3, scope: !380)
!383 = !DILocation(line: 222, column: 2, scope: !354)
!384 = !DILocation(line: 222, column: 2, scope: !365)
!385 = !DILocation(line: 222, column: 2, scope: !363)
!386 = !DILocation(line: 222, column: 2, scope: !364)
!387 = !DILocation(line: 224, column: 9, scope: !354)
!388 = !DILocation(line: 224, column: 12, scope: !354)
!389 = !DILocation(line: 224, column: 7, scope: !354)
!390 = !DILocation(line: 225, column: 6, scope: !391)
!391 = distinct !DILexicalBlock(scope: !354, file: !2, line: 225, column: 6)
!392 = !DILocation(line: 225, column: 11, scope: !391)
!393 = !DILocation(line: 225, column: 14, scope: !391)
!394 = !DILocation(line: 225, column: 27, scope: !391)
!395 = !DILocation(line: 225, column: 47, scope: !391)
!396 = !DILocation(line: 225, column: 53, scope: !391)
!397 = !DILocation(line: 225, column: 60, scope: !391)
!398 = !DILocation(line: 225, column: 31, scope: !391)
!399 = !DILocation(line: 225, column: 6, scope: !354)
!400 = !DILocation(line: 226, column: 8, scope: !391)
!401 = !DILocation(line: 226, column: 3, scope: !391)
!402 = !DILocation(line: 227, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !354, file: !2, line: 227, column: 6)
!404 = !DILocation(line: 227, column: 6, scope: !354)
!405 = !DILocation(line: 228, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !2, line: 227, column: 12)
!407 = !DILocation(line: 228, column: 19, scope: !406)
!408 = !DILocation(line: 228, column: 3, scope: !406)
!409 = !DILocation(line: 228, column: 6, scope: !406)
!410 = !DILocation(line: 228, column: 11, scope: !406)
!411 = !DILocation(line: 231, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !406, file: !2, line: 231, column: 7)
!413 = !DILocation(line: 231, column: 10, scope: !412)
!414 = !DILocation(line: 231, column: 18, scope: !412)
!415 = !DILocation(line: 231, column: 15, scope: !412)
!416 = !DILocation(line: 231, column: 7, scope: !406)
!417 = !DILocation(line: 232, column: 4, scope: !412)
!418 = !DILocation(line: 232, column: 7, scope: !412)
!419 = !DILocation(line: 232, column: 12, scope: !412)
!420 = !DILocation(line: 234, column: 3, scope: !406)
!421 = !DILocation(line: 234, column: 9, scope: !406)
!422 = !DILocation(line: 234, column: 14, scope: !406)
!423 = !DILocation(line: 235, column: 3, scope: !406)
!424 = !DILocation(line: 235, column: 6, scope: !406)
!425 = !DILocation(line: 235, column: 11, scope: !406)
!426 = !DILocation(line: 236, column: 2, scope: !406)
!427 = !DILocation(line: 238, column: 26, scope: !354)
!428 = !DILocation(line: 238, column: 29, scope: !354)
!429 = !DILocation(line: 238, column: 35, scope: !354)
!430 = !DILocation(line: 238, column: 2, scope: !354)
!431 = !DILocation(line: 239, column: 9, scope: !354)
!432 = !DILocation(line: 239, column: 2, scope: !354)
!433 = !DILocation(line: 240, column: 1, scope: !354)
!434 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!439 = distinct !DISubprogram(name: "snd_seq_prioq_cell_in", scope: !2, file: !2, line: 131, type: !440, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!106, !48, !53}
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !453, !457, !458}
!443 = !DILocalVariable(name: "f", arg: 1, scope: !439, file: !2, line: 131, type: !48)
!444 = !DILocalVariable(name: "cell", arg: 2, scope: !439, file: !2, line: 132, type: !53)
!445 = !DILocalVariable(name: "cur", scope: !439, file: !2, line: 134, type: !53)
!446 = !DILocalVariable(name: "prev", scope: !439, file: !2, line: 134, type: !53)
!447 = !DILocalVariable(name: "flags", scope: !439, file: !2, line: 135, type: !34)
!448 = !DILocalVariable(name: "count", scope: !439, file: !2, line: 136, type: !106)
!449 = !DILocalVariable(name: "prior", scope: !439, file: !2, line: 137, type: !106)
!450 = !DILocalVariable(name: "__ret_warn_on", scope: !451, file: !2, line: 139, type: !106)
!451 = distinct !DILexicalBlock(scope: !452, file: !2, line: 139, column: 6)
!452 = distinct !DILexicalBlock(scope: !439, file: !2, line: 139, column: 6)
!453 = !DILocalVariable(name: "__dummy", scope: !454, file: !2, line: 145, type: !34)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 145, column: 2)
!455 = distinct !DILexicalBlock(scope: !456, file: !2, line: 145, column: 2)
!456 = distinct !DILexicalBlock(scope: !439, file: !2, line: 145, column: 2)
!457 = !DILocalVariable(name: "__dummy2", scope: !454, file: !2, line: 145, type: !34)
!458 = !DILocalVariable(name: "rel", scope: !459, file: !2, line: 170, type: !106)
!459 = distinct !DILexicalBlock(scope: !439, file: !2, line: 168, column: 22)
!460 = !DILocation(line: 131, column: 50, scope: !439)
!461 = !DILocation(line: 132, column: 34, scope: !439)
!462 = !DILocation(line: 134, column: 2, scope: !439)
!463 = !DILocation(line: 134, column: 29, scope: !439)
!464 = !DILocation(line: 134, column: 35, scope: !439)
!465 = !DILocation(line: 135, column: 2, scope: !439)
!466 = !DILocation(line: 135, column: 16, scope: !439)
!467 = !DILocation(line: 136, column: 2, scope: !439)
!468 = !DILocation(line: 136, column: 6, scope: !439)
!469 = !DILocation(line: 137, column: 2, scope: !439)
!470 = !DILocation(line: 137, column: 6, scope: !439)
!471 = !DILocation(line: 139, column: 6, scope: !451)
!472 = !DILocation(line: 139, column: 6, scope: !452)
!473 = !DILocation(line: 139, column: 6, scope: !439)
!474 = !DILocation(line: 140, column: 3, scope: !452)
!475 = !DILocation(line: 143, column: 11, scope: !439)
!476 = !DILocation(line: 143, column: 17, scope: !439)
!477 = !DILocation(line: 143, column: 23, scope: !439)
!478 = !DILocation(line: 143, column: 29, scope: !439)
!479 = !DILocation(line: 143, column: 8, scope: !439)
!480 = !DILocation(line: 145, column: 2, scope: !439)
!481 = !DILocation(line: 145, column: 2, scope: !456)
!482 = !DILocation(line: 145, column: 2, scope: !454)
!483 = !DILocation(line: 145, column: 2, scope: !455)
!484 = !DILocation(line: 150, column: 6, scope: !485)
!485 = distinct !DILexicalBlock(scope: !439, file: !2, line: 150, column: 6)
!486 = !DILocation(line: 150, column: 9, scope: !485)
!487 = !DILocation(line: 150, column: 14, scope: !485)
!488 = !DILocation(line: 150, column: 18, scope: !485)
!489 = !DILocation(line: 150, column: 6, scope: !439)
!490 = !DILocation(line: 151, column: 26, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !2, line: 151, column: 7)
!492 = distinct !DILexicalBlock(scope: !485, file: !2, line: 150, column: 25)
!493 = !DILocation(line: 151, column: 32, scope: !491)
!494 = !DILocation(line: 151, column: 40, scope: !491)
!495 = !DILocation(line: 151, column: 43, scope: !491)
!496 = !DILocation(line: 151, column: 49, scope: !491)
!497 = !DILocation(line: 151, column: 7, scope: !491)
!498 = !DILocation(line: 151, column: 7, scope: !492)
!499 = !DILocation(line: 153, column: 20, scope: !500)
!500 = distinct !DILexicalBlock(scope: !491, file: !2, line: 151, column: 57)
!501 = !DILocation(line: 153, column: 4, scope: !500)
!502 = !DILocation(line: 153, column: 7, scope: !500)
!503 = !DILocation(line: 153, column: 13, scope: !500)
!504 = !DILocation(line: 153, column: 18, scope: !500)
!505 = !DILocation(line: 154, column: 14, scope: !500)
!506 = !DILocation(line: 154, column: 4, scope: !500)
!507 = !DILocation(line: 154, column: 7, scope: !500)
!508 = !DILocation(line: 154, column: 12, scope: !500)
!509 = !DILocation(line: 155, column: 4, scope: !500)
!510 = !DILocation(line: 155, column: 10, scope: !500)
!511 = !DILocation(line: 155, column: 15, scope: !500)
!512 = !DILocation(line: 156, column: 4, scope: !500)
!513 = !DILocation(line: 156, column: 7, scope: !500)
!514 = !DILocation(line: 156, column: 12, scope: !500)
!515 = !DILocation(line: 157, column: 28, scope: !500)
!516 = !DILocation(line: 157, column: 31, scope: !500)
!517 = !DILocation(line: 157, column: 37, scope: !500)
!518 = !DILocation(line: 157, column: 4, scope: !500)
!519 = !DILocation(line: 158, column: 4, scope: !500)
!520 = !DILocation(line: 160, column: 2, scope: !492)
!521 = !DILocation(line: 164, column: 7, scope: !439)
!522 = !DILocation(line: 165, column: 8, scope: !439)
!523 = !DILocation(line: 165, column: 11, scope: !439)
!524 = !DILocation(line: 165, column: 6, scope: !439)
!525 = !DILocation(line: 167, column: 8, scope: !439)
!526 = !DILocation(line: 168, column: 2, scope: !439)
!527 = !DILocation(line: 168, column: 9, scope: !439)
!528 = !DILocation(line: 168, column: 13, scope: !439)
!529 = !DILocation(line: 170, column: 3, scope: !459)
!530 = !DILocation(line: 170, column: 7, scope: !459)
!531 = !DILocation(line: 170, column: 36, scope: !459)
!532 = !DILocation(line: 170, column: 42, scope: !459)
!533 = !DILocation(line: 170, column: 50, scope: !459)
!534 = !DILocation(line: 170, column: 55, scope: !459)
!535 = !DILocation(line: 170, column: 13, scope: !459)
!536 = !DILocation(line: 171, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !459, file: !2, line: 171, column: 7)
!538 = !DILocation(line: 171, column: 11, scope: !537)
!539 = !DILocation(line: 171, column: 7, scope: !459)
!540 = !DILocation(line: 173, column: 4, scope: !537)
!541 = !DILocation(line: 174, column: 12, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !2, line: 174, column: 12)
!543 = !DILocation(line: 174, column: 16, scope: !542)
!544 = !DILocation(line: 174, column: 21, scope: !542)
!545 = !DILocation(line: 174, column: 24, scope: !542)
!546 = !DILocation(line: 174, column: 12, scope: !537)
!547 = !DILocation(line: 176, column: 4, scope: !542)
!548 = !DILocation(line: 179, column: 10, scope: !459)
!549 = !DILocation(line: 179, column: 8, scope: !459)
!550 = !DILocation(line: 180, column: 9, scope: !459)
!551 = !DILocation(line: 180, column: 14, scope: !459)
!552 = !DILocation(line: 180, column: 7, scope: !459)
!553 = !DILocation(line: 181, column: 9, scope: !554)
!554 = distinct !DILexicalBlock(scope: !459, file: !2, line: 181, column: 7)
!555 = !DILocation(line: 181, column: 7, scope: !459)
!556 = !DILocation(line: 182, column: 28, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !2, line: 181, column: 18)
!558 = !DILocation(line: 182, column: 31, scope: !557)
!559 = !DILocation(line: 182, column: 37, scope: !557)
!560 = !DILocation(line: 182, column: 4, scope: !557)
!561 = !DILocation(line: 183, column: 4, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !2, line: 183, column: 4)
!563 = !DILocation(line: 183, column: 4, scope: !564)
!564 = distinct !DILexicalBlock(scope: !562, file: !2, line: 183, column: 4)
!565 = !DILocation(line: 184, column: 4, scope: !557)
!566 = !DILocation(line: 186, column: 2, scope: !439)
!567 = distinct !{!567, !526, !566, !345, !346}
!568 = !DILocation(line: 189, column: 6, scope: !569)
!569 = distinct !DILexicalBlock(scope: !439, file: !2, line: 189, column: 6)
!570 = !DILocation(line: 189, column: 11, scope: !569)
!571 = !DILocation(line: 189, column: 6, scope: !439)
!572 = !DILocation(line: 190, column: 16, scope: !569)
!573 = !DILocation(line: 190, column: 3, scope: !569)
!574 = !DILocation(line: 190, column: 9, scope: !569)
!575 = !DILocation(line: 190, column: 14, scope: !569)
!576 = !DILocation(line: 191, column: 15, scope: !439)
!577 = !DILocation(line: 191, column: 2, scope: !439)
!578 = !DILocation(line: 191, column: 8, scope: !439)
!579 = !DILocation(line: 191, column: 13, scope: !439)
!580 = !DILocation(line: 193, column: 6, scope: !581)
!581 = distinct !DILexicalBlock(scope: !439, file: !2, line: 193, column: 6)
!582 = !DILocation(line: 193, column: 9, scope: !581)
!583 = !DILocation(line: 193, column: 17, scope: !581)
!584 = !DILocation(line: 193, column: 14, scope: !581)
!585 = !DILocation(line: 193, column: 6, scope: !439)
!586 = !DILocation(line: 194, column: 13, scope: !581)
!587 = !DILocation(line: 194, column: 3, scope: !581)
!588 = !DILocation(line: 194, column: 6, scope: !581)
!589 = !DILocation(line: 194, column: 11, scope: !581)
!590 = !DILocation(line: 195, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !439, file: !2, line: 195, column: 6)
!592 = !DILocation(line: 195, column: 10, scope: !591)
!593 = !DILocation(line: 195, column: 6, scope: !439)
!594 = !DILocation(line: 196, column: 13, scope: !591)
!595 = !DILocation(line: 196, column: 3, scope: !591)
!596 = !DILocation(line: 196, column: 6, scope: !591)
!597 = !DILocation(line: 196, column: 11, scope: !591)
!598 = !DILocation(line: 197, column: 2, scope: !439)
!599 = !DILocation(line: 197, column: 5, scope: !439)
!600 = !DILocation(line: 197, column: 10, scope: !439)
!601 = !DILocation(line: 198, column: 26, scope: !439)
!602 = !DILocation(line: 198, column: 29, scope: !439)
!603 = !DILocation(line: 198, column: 35, scope: !439)
!604 = !DILocation(line: 198, column: 2, scope: !439)
!605 = !DILocation(line: 199, column: 2, scope: !439)
!606 = !DILocation(line: 200, column: 1, scope: !439)
!607 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !608, file: !608, line: 32, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!609 = !DISubroutineType(types: !610)
!610 = !{!34, !297}
!611 = distinct !DISubprogram(name: "compare_timestamp", scope: !2, file: !2, line: 86, type: !612, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!106, !170, !170}
!614 = !{!615, !616}
!615 = !DILocalVariable(name: "a", arg: 1, scope: !611, file: !2, line: 86, type: !170)
!616 = !DILocalVariable(name: "b", arg: 2, scope: !611, file: !2, line: 87, type: !170)
!617 = !DILocation(line: 86, column: 59, scope: !611)
!618 = !DILocation(line: 87, column: 31, scope: !611)
!619 = !DILocation(line: 89, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !611, file: !2, line: 89, column: 6)
!621 = !DILocation(line: 89, column: 10, scope: !620)
!622 = !DILocation(line: 89, column: 16, scope: !620)
!623 = !DILocation(line: 89, column: 45, scope: !620)
!624 = !DILocation(line: 89, column: 6, scope: !611)
!625 = !DILocation(line: 91, column: 38, scope: !626)
!626 = distinct !DILexicalBlock(scope: !620, file: !2, line: 89, column: 75)
!627 = !DILocation(line: 91, column: 41, scope: !626)
!628 = !DILocation(line: 91, column: 53, scope: !626)
!629 = !DILocation(line: 91, column: 56, scope: !626)
!630 = !DILocation(line: 91, column: 11, scope: !626)
!631 = !DILocation(line: 91, column: 3, scope: !626)
!632 = !DILocation(line: 94, column: 38, scope: !633)
!633 = distinct !DILexicalBlock(scope: !620, file: !2, line: 92, column: 9)
!634 = !DILocation(line: 94, column: 41, scope: !633)
!635 = !DILocation(line: 94, column: 53, scope: !633)
!636 = !DILocation(line: 94, column: 56, scope: !633)
!637 = !DILocation(line: 94, column: 11, scope: !633)
!638 = !DILocation(line: 94, column: 3, scope: !633)
!639 = !DILocation(line: 96, column: 1, scope: !611)
!640 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !294, file: !294, line: 404, type: !641, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !299, !34}
!643 = !{!644, !645, !646, !649}
!644 = !DILocalVariable(name: "lock", arg: 1, scope: !640, file: !294, line: 404, type: !299)
!645 = !DILocalVariable(name: "flags", arg: 2, scope: !640, file: !294, line: 404, type: !34)
!646 = !DILocalVariable(name: "__dummy", scope: !647, file: !294, line: 406, type: !34)
!647 = distinct !DILexicalBlock(scope: !648, file: !294, line: 406, column: 2)
!648 = distinct !DILexicalBlock(scope: !640, file: !294, line: 406, column: 2)
!649 = !DILocalVariable(name: "__dummy2", scope: !647, file: !294, line: 406, type: !34)
!650 = !DILocation(line: 404, column: 64, scope: !640)
!651 = !DILocation(line: 404, column: 84, scope: !640)
!652 = !DILocation(line: 406, column: 2, scope: !640)
!653 = !DILocation(line: 406, column: 2, scope: !647)
!654 = !DILocation(line: 406, column: 2, scope: !648)
!655 = !DILocation(line: 407, column: 1, scope: !640)
!656 = distinct !DISubprogram(name: "compare_timestamp_rel", scope: !2, file: !2, line: 103, type: !612, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !657)
!657 = !{!658, !659}
!658 = !DILocalVariable(name: "a", arg: 1, scope: !656, file: !2, line: 103, type: !170)
!659 = !DILocalVariable(name: "b", arg: 2, scope: !656, file: !2, line: 104, type: !170)
!660 = !DILocation(line: 103, column: 63, scope: !656)
!661 = !DILocation(line: 104, column: 28, scope: !656)
!662 = !DILocation(line: 106, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !656, file: !2, line: 106, column: 6)
!664 = !DILocation(line: 106, column: 10, scope: !663)
!665 = !DILocation(line: 106, column: 16, scope: !663)
!666 = !DILocation(line: 106, column: 45, scope: !663)
!667 = !DILocation(line: 106, column: 6, scope: !656)
!668 = !DILocation(line: 108, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !2, line: 108, column: 7)
!670 = distinct !DILexicalBlock(scope: !663, file: !2, line: 106, column: 75)
!671 = !DILocation(line: 108, column: 10, scope: !669)
!672 = !DILocation(line: 108, column: 15, scope: !669)
!673 = !DILocation(line: 108, column: 22, scope: !669)
!674 = !DILocation(line: 108, column: 25, scope: !669)
!675 = !DILocation(line: 108, column: 30, scope: !669)
!676 = !DILocation(line: 108, column: 20, scope: !669)
!677 = !DILocation(line: 108, column: 7, scope: !670)
!678 = !DILocation(line: 109, column: 4, scope: !669)
!679 = !DILocation(line: 110, column: 12, scope: !680)
!680 = distinct !DILexicalBlock(scope: !669, file: !2, line: 110, column: 12)
!681 = !DILocation(line: 110, column: 15, scope: !680)
!682 = !DILocation(line: 110, column: 20, scope: !680)
!683 = !DILocation(line: 110, column: 28, scope: !680)
!684 = !DILocation(line: 110, column: 31, scope: !680)
!685 = !DILocation(line: 110, column: 36, scope: !680)
!686 = !DILocation(line: 110, column: 25, scope: !680)
!687 = !DILocation(line: 110, column: 12, scope: !669)
!688 = !DILocation(line: 111, column: 4, scope: !680)
!689 = !DILocation(line: 113, column: 4, scope: !680)
!690 = !DILocation(line: 116, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !2, line: 116, column: 7)
!692 = distinct !DILexicalBlock(scope: !663, file: !2, line: 114, column: 9)
!693 = !DILocation(line: 116, column: 10, scope: !691)
!694 = !DILocation(line: 116, column: 20, scope: !691)
!695 = !DILocation(line: 116, column: 29, scope: !691)
!696 = !DILocation(line: 116, column: 32, scope: !691)
!697 = !DILocation(line: 116, column: 42, scope: !691)
!698 = !DILocation(line: 116, column: 27, scope: !691)
!699 = !DILocation(line: 116, column: 7, scope: !692)
!700 = !DILocation(line: 117, column: 4, scope: !691)
!701 = !DILocation(line: 118, column: 12, scope: !702)
!702 = distinct !DILexicalBlock(scope: !691, file: !2, line: 118, column: 12)
!703 = !DILocation(line: 118, column: 15, scope: !702)
!704 = !DILocation(line: 118, column: 25, scope: !702)
!705 = !DILocation(line: 118, column: 35, scope: !702)
!706 = !DILocation(line: 118, column: 38, scope: !702)
!707 = !DILocation(line: 118, column: 48, scope: !702)
!708 = !DILocation(line: 118, column: 32, scope: !702)
!709 = !DILocation(line: 118, column: 12, scope: !691)
!710 = !DILocation(line: 119, column: 8, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !2, line: 119, column: 8)
!712 = distinct !DILexicalBlock(scope: !702, file: !2, line: 118, column: 56)
!713 = !DILocation(line: 119, column: 11, scope: !711)
!714 = !DILocation(line: 119, column: 21, scope: !711)
!715 = !DILocation(line: 119, column: 31, scope: !711)
!716 = !DILocation(line: 119, column: 34, scope: !711)
!717 = !DILocation(line: 119, column: 44, scope: !711)
!718 = !DILocation(line: 119, column: 29, scope: !711)
!719 = !DILocation(line: 119, column: 8, scope: !712)
!720 = !DILocation(line: 120, column: 5, scope: !711)
!721 = !DILocation(line: 121, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !711, file: !2, line: 121, column: 13)
!723 = !DILocation(line: 121, column: 16, scope: !722)
!724 = !DILocation(line: 121, column: 26, scope: !722)
!725 = !DILocation(line: 121, column: 37, scope: !722)
!726 = !DILocation(line: 121, column: 40, scope: !722)
!727 = !DILocation(line: 121, column: 50, scope: !722)
!728 = !DILocation(line: 121, column: 34, scope: !722)
!729 = !DILocation(line: 121, column: 13, scope: !711)
!730 = !DILocation(line: 122, column: 5, scope: !722)
!731 = !DILocation(line: 124, column: 5, scope: !722)
!732 = !DILocation(line: 126, column: 4, scope: !702)
!733 = !DILocation(line: 128, column: 1, scope: !656)
!734 = !DISubprogram(name: "_printk", scope: !735, file: !735, line: 153, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!735 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!736 = !DISubroutineType(types: !737)
!737 = !{!106, !738, null}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!740 = distinct !DISubprogram(name: "event_is_ready", scope: !2, file: !2, line: 203, type: !741, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!106, !170, !33}
!743 = !{!744, !745}
!744 = !DILocalVariable(name: "ev", arg: 1, scope: !740, file: !2, line: 203, type: !170)
!745 = !DILocalVariable(name: "current_time", arg: 2, scope: !740, file: !2, line: 203, type: !33)
!746 = !DILocation(line: 203, column: 49, scope: !740)
!747 = !DILocation(line: 203, column: 59, scope: !740)
!748 = !DILocation(line: 205, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !740, file: !2, line: 205, column: 6)
!750 = !DILocation(line: 205, column: 11, scope: !749)
!751 = !DILocation(line: 205, column: 17, scope: !749)
!752 = !DILocation(line: 205, column: 46, scope: !749)
!753 = !DILocation(line: 205, column: 6, scope: !740)
!754 = !DILocation(line: 206, column: 36, scope: !749)
!755 = !DILocation(line: 206, column: 51, scope: !749)
!756 = !DILocation(line: 206, column: 55, scope: !749)
!757 = !DILocation(line: 206, column: 10, scope: !749)
!758 = !DILocation(line: 206, column: 3, scope: !749)
!759 = !DILocation(line: 208, column: 36, scope: !749)
!760 = !DILocation(line: 208, column: 51, scope: !749)
!761 = !DILocation(line: 208, column: 55, scope: !749)
!762 = !DILocation(line: 208, column: 10, scope: !749)
!763 = !DILocation(line: 208, column: 3, scope: !749)
!764 = !DILocation(line: 209, column: 1, scope: !740)
!765 = distinct !DISubprogram(name: "snd_seq_prioq_avail", scope: !2, file: !2, line: 243, type: !766, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{!106, !48}
!768 = !{!769}
!769 = !DILocalVariable(name: "f", arg: 1, scope: !765, file: !2, line: 243, type: !48)
!770 = !DILocation(line: 243, column: 48, scope: !765)
!771 = !DILocation(line: 245, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !765, file: !2, line: 245, column: 6)
!773 = !DILocation(line: 245, column: 8, scope: !772)
!774 = !DILocation(line: 245, column: 6, scope: !765)
!775 = !DILocation(line: 246, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !2, line: 246, column: 3)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 246, column: 3)
!778 = distinct !DILexicalBlock(scope: !772, file: !2, line: 245, column: 17)
!779 = !DILocation(line: 246, column: 3, scope: !777)
!780 = !DILocation(line: 247, column: 3, scope: !778)
!781 = !DILocation(line: 249, column: 9, scope: !765)
!782 = !DILocation(line: 249, column: 12, scope: !765)
!783 = !DILocation(line: 249, column: 2, scope: !765)
!784 = !DILocation(line: 250, column: 1, scope: !765)
!785 = distinct !DISubprogram(name: "snd_seq_prioq_leave", scope: !2, file: !2, line: 275, type: !786, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !48, !106, !106}
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !803}
!789 = !DILocalVariable(name: "f", arg: 1, scope: !785, file: !2, line: 275, type: !48)
!790 = !DILocalVariable(name: "client", arg: 2, scope: !785, file: !2, line: 275, type: !106)
!791 = !DILocalVariable(name: "timestamp", arg: 3, scope: !785, file: !2, line: 275, type: !106)
!792 = !DILocalVariable(name: "cell", scope: !785, file: !2, line: 277, type: !53)
!793 = !DILocalVariable(name: "next", scope: !785, file: !2, line: 277, type: !53)
!794 = !DILocalVariable(name: "flags", scope: !785, file: !2, line: 278, type: !34)
!795 = !DILocalVariable(name: "prev", scope: !785, file: !2, line: 279, type: !53)
!796 = !DILocalVariable(name: "freefirst", scope: !785, file: !2, line: 280, type: !53)
!797 = !DILocalVariable(name: "freeprev", scope: !785, file: !2, line: 280, type: !53)
!798 = !DILocalVariable(name: "freenext", scope: !785, file: !2, line: 280, type: !53)
!799 = !DILocalVariable(name: "__dummy", scope: !800, file: !2, line: 283, type: !34)
!800 = distinct !DILexicalBlock(scope: !801, file: !2, line: 283, column: 2)
!801 = distinct !DILexicalBlock(scope: !802, file: !2, line: 283, column: 2)
!802 = distinct !DILexicalBlock(scope: !785, file: !2, line: 283, column: 2)
!803 = !DILocalVariable(name: "__dummy2", scope: !800, file: !2, line: 283, type: !34)
!804 = !DILocation(line: 275, column: 49, scope: !785)
!805 = !DILocation(line: 275, column: 56, scope: !785)
!806 = !DILocation(line: 275, column: 68, scope: !785)
!807 = !DILocation(line: 277, column: 2, scope: !785)
!808 = !DILocation(line: 277, column: 38, scope: !785)
!809 = !DILocation(line: 277, column: 45, scope: !785)
!810 = !DILocation(line: 278, column: 2, scope: !785)
!811 = !DILocation(line: 278, column: 16, scope: !785)
!812 = !DILocation(line: 279, column: 2, scope: !785)
!813 = !DILocation(line: 279, column: 29, scope: !785)
!814 = !DILocation(line: 280, column: 2, scope: !785)
!815 = !DILocation(line: 280, column: 29, scope: !785)
!816 = !DILocation(line: 280, column: 48, scope: !785)
!817 = !DILocation(line: 280, column: 66, scope: !785)
!818 = !DILocation(line: 283, column: 2, scope: !785)
!819 = !DILocation(line: 283, column: 2, scope: !802)
!820 = !DILocation(line: 283, column: 2, scope: !800)
!821 = !DILocation(line: 283, column: 2, scope: !801)
!822 = !DILocation(line: 284, column: 9, scope: !785)
!823 = !DILocation(line: 284, column: 12, scope: !785)
!824 = !DILocation(line: 284, column: 7, scope: !785)
!825 = !DILocation(line: 285, column: 2, scope: !785)
!826 = !DILocation(line: 285, column: 9, scope: !785)
!827 = !DILocation(line: 286, column: 10, scope: !828)
!828 = distinct !DILexicalBlock(scope: !785, file: !2, line: 285, column: 15)
!829 = !DILocation(line: 286, column: 16, scope: !828)
!830 = !DILocation(line: 286, column: 8, scope: !828)
!831 = !DILocation(line: 287, column: 19, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !2, line: 287, column: 7)
!833 = !DILocation(line: 287, column: 25, scope: !832)
!834 = !DILocation(line: 287, column: 33, scope: !832)
!835 = !DILocation(line: 287, column: 7, scope: !832)
!836 = !DILocation(line: 287, column: 7, scope: !828)
!837 = !DILocation(line: 289, column: 8, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !2, line: 289, column: 8)
!839 = distinct !DILexicalBlock(scope: !832, file: !2, line: 287, column: 45)
!840 = !DILocation(line: 289, column: 16, scope: !838)
!841 = !DILocation(line: 289, column: 19, scope: !838)
!842 = !DILocation(line: 289, column: 13, scope: !838)
!843 = !DILocation(line: 289, column: 8, scope: !839)
!844 = !DILocation(line: 290, column: 15, scope: !845)
!845 = distinct !DILexicalBlock(scope: !838, file: !2, line: 289, column: 25)
!846 = !DILocation(line: 290, column: 21, scope: !845)
!847 = !DILocation(line: 290, column: 5, scope: !845)
!848 = !DILocation(line: 290, column: 8, scope: !845)
!849 = !DILocation(line: 290, column: 13, scope: !845)
!850 = !DILocation(line: 291, column: 4, scope: !845)
!851 = !DILocation(line: 292, column: 18, scope: !852)
!852 = distinct !DILexicalBlock(scope: !838, file: !2, line: 291, column: 11)
!853 = !DILocation(line: 292, column: 24, scope: !852)
!854 = !DILocation(line: 292, column: 5, scope: !852)
!855 = !DILocation(line: 292, column: 11, scope: !852)
!856 = !DILocation(line: 292, column: 16, scope: !852)
!857 = !DILocation(line: 294, column: 8, scope: !858)
!858 = distinct !DILexicalBlock(scope: !839, file: !2, line: 294, column: 8)
!859 = !DILocation(line: 294, column: 16, scope: !858)
!860 = !DILocation(line: 294, column: 19, scope: !858)
!861 = !DILocation(line: 294, column: 13, scope: !858)
!862 = !DILocation(line: 294, column: 8, scope: !839)
!863 = !DILocation(line: 295, column: 15, scope: !858)
!864 = !DILocation(line: 295, column: 21, scope: !858)
!865 = !DILocation(line: 295, column: 5, scope: !858)
!866 = !DILocation(line: 295, column: 8, scope: !858)
!867 = !DILocation(line: 295, column: 13, scope: !858)
!868 = !DILocation(line: 296, column: 4, scope: !839)
!869 = !DILocation(line: 296, column: 7, scope: !839)
!870 = !DILocation(line: 296, column: 12, scope: !839)
!871 = !DILocation(line: 298, column: 4, scope: !839)
!872 = !DILocation(line: 298, column: 10, scope: !839)
!873 = !DILocation(line: 298, column: 15, scope: !839)
!874 = !DILocation(line: 299, column: 8, scope: !875)
!875 = distinct !DILexicalBlock(scope: !839, file: !2, line: 299, column: 8)
!876 = !DILocation(line: 299, column: 18, scope: !875)
!877 = !DILocation(line: 299, column: 8, scope: !839)
!878 = !DILocation(line: 300, column: 17, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !2, line: 299, column: 27)
!880 = !DILocation(line: 300, column: 15, scope: !879)
!881 = !DILocation(line: 301, column: 4, scope: !879)
!882 = !DILocation(line: 302, column: 22, scope: !883)
!883 = distinct !DILexicalBlock(scope: !875, file: !2, line: 301, column: 11)
!884 = !DILocation(line: 302, column: 5, scope: !883)
!885 = !DILocation(line: 302, column: 15, scope: !883)
!886 = !DILocation(line: 302, column: 20, scope: !883)
!887 = !DILocation(line: 304, column: 15, scope: !839)
!888 = !DILocation(line: 304, column: 13, scope: !839)
!889 = !DILocation(line: 305, column: 3, scope: !839)
!890 = !DILocation(line: 314, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !832, file: !2, line: 305, column: 10)
!892 = !DILocation(line: 314, column: 9, scope: !891)
!893 = !DILocation(line: 316, column: 10, scope: !828)
!894 = !DILocation(line: 316, column: 8, scope: !828)
!895 = distinct !{!895, !825, !896, !345, !346}
!896 = !DILocation(line: 317, column: 2, scope: !785)
!897 = !DILocation(line: 318, column: 26, scope: !785)
!898 = !DILocation(line: 318, column: 29, scope: !785)
!899 = !DILocation(line: 318, column: 35, scope: !785)
!900 = !DILocation(line: 318, column: 2, scope: !785)
!901 = !DILocation(line: 321, column: 2, scope: !785)
!902 = !DILocation(line: 321, column: 9, scope: !785)
!903 = !DILocation(line: 322, column: 14, scope: !904)
!904 = distinct !DILexicalBlock(scope: !785, file: !2, line: 321, column: 20)
!905 = !DILocation(line: 322, column: 25, scope: !904)
!906 = !DILocation(line: 322, column: 12, scope: !904)
!907 = !DILocation(line: 323, column: 21, scope: !904)
!908 = !DILocation(line: 323, column: 3, scope: !904)
!909 = !DILocation(line: 324, column: 15, scope: !904)
!910 = !DILocation(line: 324, column: 13, scope: !904)
!911 = distinct !{!911, !901, !912, !345, !346}
!912 = !DILocation(line: 325, column: 2, scope: !785)
!913 = !DILocation(line: 326, column: 1, scope: !785)
!914 = distinct !DISubprogram(name: "prioq_match", scope: !2, file: !2, line: 252, type: !915, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!106, !53, !106, !106}
!917 = !{!918, !919, !920}
!918 = !DILocalVariable(name: "cell", arg: 1, scope: !914, file: !2, line: 252, type: !53)
!919 = !DILocalVariable(name: "client", arg: 2, scope: !914, file: !2, line: 253, type: !106)
!920 = !DILocalVariable(name: "timestamp", arg: 3, scope: !914, file: !2, line: 253, type: !106)
!921 = !DILocation(line: 252, column: 58, scope: !914)
!922 = !DILocation(line: 253, column: 14, scope: !914)
!923 = !DILocation(line: 253, column: 26, scope: !914)
!924 = !DILocation(line: 255, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !914, file: !2, line: 255, column: 6)
!926 = !DILocation(line: 255, column: 12, scope: !925)
!927 = !DILocation(line: 255, column: 18, scope: !925)
!928 = !DILocation(line: 255, column: 25, scope: !925)
!929 = !DILocation(line: 255, column: 35, scope: !925)
!930 = !DILocation(line: 255, column: 32, scope: !925)
!931 = !DILocation(line: 255, column: 42, scope: !925)
!932 = !DILocation(line: 256, column: 6, scope: !925)
!933 = !DILocation(line: 256, column: 12, scope: !925)
!934 = !DILocation(line: 256, column: 18, scope: !925)
!935 = !DILocation(line: 256, column: 23, scope: !925)
!936 = !DILocation(line: 256, column: 33, scope: !925)
!937 = !DILocation(line: 256, column: 30, scope: !925)
!938 = !DILocation(line: 255, column: 6, scope: !914)
!939 = !DILocation(line: 257, column: 3, scope: !925)
!940 = !DILocation(line: 258, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !914, file: !2, line: 258, column: 6)
!942 = !DILocation(line: 258, column: 6, scope: !914)
!943 = !DILocation(line: 259, column: 3, scope: !941)
!944 = !DILocation(line: 260, column: 10, scope: !914)
!945 = !DILocation(line: 260, column: 16, scope: !914)
!946 = !DILocation(line: 260, column: 22, scope: !914)
!947 = !DILocation(line: 260, column: 28, scope: !914)
!948 = !DILocation(line: 260, column: 2, scope: !914)
!949 = !DILocation(line: 262, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !2, line: 262, column: 7)
!951 = distinct !DILexicalBlock(scope: !914, file: !2, line: 260, column: 57)
!952 = !DILocation(line: 262, column: 13, scope: !950)
!953 = !DILocation(line: 262, column: 19, scope: !950)
!954 = !DILocation(line: 262, column: 24, scope: !950)
!955 = !DILocation(line: 262, column: 7, scope: !951)
!956 = !DILocation(line: 263, column: 4, scope: !950)
!957 = !DILocation(line: 264, column: 3, scope: !951)
!958 = !DILocation(line: 266, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !951, file: !2, line: 266, column: 7)
!960 = !DILocation(line: 266, column: 13, scope: !959)
!961 = !DILocation(line: 266, column: 19, scope: !959)
!962 = !DILocation(line: 266, column: 29, scope: !959)
!963 = !DILocation(line: 266, column: 36, scope: !959)
!964 = !DILocation(line: 267, column: 7, scope: !959)
!965 = !DILocation(line: 267, column: 13, scope: !959)
!966 = !DILocation(line: 267, column: 19, scope: !959)
!967 = !DILocation(line: 267, column: 29, scope: !959)
!968 = !DILocation(line: 266, column: 7, scope: !951)
!969 = !DILocation(line: 268, column: 4, scope: !959)
!970 = !DILocation(line: 269, column: 3, scope: !951)
!971 = !DILocation(line: 271, column: 2, scope: !914)
!972 = !DILocation(line: 272, column: 1, scope: !914)
!973 = distinct !DISubprogram(name: "snd_seq_prioq_remove_events", scope: !2, file: !2, line: 384, type: !974, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !990)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !48, !106, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_remove_events", file: !62, line: 402, size: 512, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "remove_mode", scope: !977, file: !62, line: 403, baseType: !17, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !977, file: !62, line: 405, baseType: !71, size: 64, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !977, file: !62, line: 407, baseType: !66, size: 8, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !977, file: !62, line: 408, baseType: !81, size: 16, offset: 104)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !977, file: !62, line: 409, baseType: !66, size: 8, offset: 120)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !977, file: !62, line: 411, baseType: !106, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !977, file: !62, line: 412, baseType: !4, size: 8, offset: 160)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !977, file: !62, line: 414, baseType: !987, size: 320, offset: 192)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 320, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 10)
!990 = !{!991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1005}
!991 = !DILocalVariable(name: "f", arg: 1, scope: !973, file: !2, line: 384, type: !48)
!992 = !DILocalVariable(name: "client", arg: 2, scope: !973, file: !2, line: 384, type: !106)
!993 = !DILocalVariable(name: "info", arg: 3, scope: !973, file: !2, line: 385, type: !976)
!994 = !DILocalVariable(name: "cell", scope: !973, file: !2, line: 387, type: !53)
!995 = !DILocalVariable(name: "next", scope: !973, file: !2, line: 387, type: !53)
!996 = !DILocalVariable(name: "flags", scope: !973, file: !2, line: 388, type: !34)
!997 = !DILocalVariable(name: "prev", scope: !973, file: !2, line: 389, type: !53)
!998 = !DILocalVariable(name: "freefirst", scope: !973, file: !2, line: 390, type: !53)
!999 = !DILocalVariable(name: "freeprev", scope: !973, file: !2, line: 390, type: !53)
!1000 = !DILocalVariable(name: "freenext", scope: !973, file: !2, line: 390, type: !53)
!1001 = !DILocalVariable(name: "__dummy", scope: !1002, file: !2, line: 393, type: !34)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 393, column: 2)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 393, column: 2)
!1004 = distinct !DILexicalBlock(scope: !973, file: !2, line: 393, column: 2)
!1005 = !DILocalVariable(name: "__dummy2", scope: !1002, file: !2, line: 393, type: !34)
!1006 = !DILocation(line: 384, column: 57, scope: !973)
!1007 = !DILocation(line: 384, column: 64, scope: !973)
!1008 = !DILocation(line: 385, column: 36, scope: !973)
!1009 = !DILocation(line: 387, column: 2, scope: !973)
!1010 = !DILocation(line: 387, column: 29, scope: !973)
!1011 = !DILocation(line: 387, column: 36, scope: !973)
!1012 = !DILocation(line: 388, column: 2, scope: !973)
!1013 = !DILocation(line: 388, column: 16, scope: !973)
!1014 = !DILocation(line: 389, column: 2, scope: !973)
!1015 = !DILocation(line: 389, column: 29, scope: !973)
!1016 = !DILocation(line: 390, column: 2, scope: !973)
!1017 = !DILocation(line: 390, column: 29, scope: !973)
!1018 = !DILocation(line: 390, column: 48, scope: !973)
!1019 = !DILocation(line: 390, column: 66, scope: !973)
!1020 = !DILocation(line: 393, column: 2, scope: !973)
!1021 = !DILocation(line: 393, column: 2, scope: !1004)
!1022 = !DILocation(line: 393, column: 2, scope: !1002)
!1023 = !DILocation(line: 393, column: 2, scope: !1003)
!1024 = !DILocation(line: 394, column: 9, scope: !973)
!1025 = !DILocation(line: 394, column: 12, scope: !973)
!1026 = !DILocation(line: 394, column: 7, scope: !973)
!1027 = !DILocation(line: 396, column: 2, scope: !973)
!1028 = !DILocation(line: 396, column: 9, scope: !973)
!1029 = !DILocation(line: 397, column: 10, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !973, file: !2, line: 396, column: 15)
!1031 = !DILocation(line: 397, column: 16, scope: !1030)
!1032 = !DILocation(line: 397, column: 8, scope: !1030)
!1033 = !DILocation(line: 398, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 398, column: 7)
!1035 = !DILocation(line: 398, column: 13, scope: !1034)
!1036 = !DILocation(line: 398, column: 19, scope: !1034)
!1037 = !DILocation(line: 398, column: 26, scope: !1034)
!1038 = !DILocation(line: 398, column: 36, scope: !1034)
!1039 = !DILocation(line: 398, column: 33, scope: !1034)
!1040 = !DILocation(line: 398, column: 43, scope: !1034)
!1041 = !DILocation(line: 399, column: 23, scope: !1034)
!1042 = !DILocation(line: 399, column: 30, scope: !1034)
!1043 = !DILocation(line: 399, column: 36, scope: !1034)
!1044 = !DILocation(line: 399, column: 4, scope: !1034)
!1045 = !DILocation(line: 398, column: 7, scope: !1030)
!1046 = !DILocation(line: 402, column: 8, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 402, column: 8)
!1048 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 399, column: 44)
!1049 = !DILocation(line: 402, column: 16, scope: !1047)
!1050 = !DILocation(line: 402, column: 19, scope: !1047)
!1051 = !DILocation(line: 402, column: 13, scope: !1047)
!1052 = !DILocation(line: 402, column: 8, scope: !1048)
!1053 = !DILocation(line: 403, column: 15, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 402, column: 25)
!1055 = !DILocation(line: 403, column: 21, scope: !1054)
!1056 = !DILocation(line: 403, column: 5, scope: !1054)
!1057 = !DILocation(line: 403, column: 8, scope: !1054)
!1058 = !DILocation(line: 403, column: 13, scope: !1054)
!1059 = !DILocation(line: 404, column: 4, scope: !1054)
!1060 = !DILocation(line: 405, column: 18, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 404, column: 11)
!1062 = !DILocation(line: 405, column: 24, scope: !1061)
!1063 = !DILocation(line: 405, column: 5, scope: !1061)
!1064 = !DILocation(line: 405, column: 11, scope: !1061)
!1065 = !DILocation(line: 405, column: 16, scope: !1061)
!1066 = !DILocation(line: 408, column: 8, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 408, column: 8)
!1068 = !DILocation(line: 408, column: 16, scope: !1067)
!1069 = !DILocation(line: 408, column: 19, scope: !1067)
!1070 = !DILocation(line: 408, column: 13, scope: !1067)
!1071 = !DILocation(line: 408, column: 8, scope: !1048)
!1072 = !DILocation(line: 409, column: 15, scope: !1067)
!1073 = !DILocation(line: 409, column: 21, scope: !1067)
!1074 = !DILocation(line: 409, column: 5, scope: !1067)
!1075 = !DILocation(line: 409, column: 8, scope: !1067)
!1076 = !DILocation(line: 409, column: 13, scope: !1067)
!1077 = !DILocation(line: 410, column: 4, scope: !1048)
!1078 = !DILocation(line: 410, column: 7, scope: !1048)
!1079 = !DILocation(line: 410, column: 12, scope: !1048)
!1080 = !DILocation(line: 413, column: 4, scope: !1048)
!1081 = !DILocation(line: 413, column: 10, scope: !1048)
!1082 = !DILocation(line: 413, column: 15, scope: !1048)
!1083 = !DILocation(line: 414, column: 8, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 414, column: 8)
!1085 = !DILocation(line: 414, column: 18, scope: !1084)
!1086 = !DILocation(line: 414, column: 8, scope: !1048)
!1087 = !DILocation(line: 415, column: 17, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 414, column: 27)
!1089 = !DILocation(line: 415, column: 15, scope: !1088)
!1090 = !DILocation(line: 416, column: 4, scope: !1088)
!1091 = !DILocation(line: 417, column: 22, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 416, column: 11)
!1093 = !DILocation(line: 417, column: 5, scope: !1092)
!1094 = !DILocation(line: 417, column: 15, scope: !1092)
!1095 = !DILocation(line: 417, column: 20, scope: !1092)
!1096 = !DILocation(line: 420, column: 15, scope: !1048)
!1097 = !DILocation(line: 420, column: 13, scope: !1048)
!1098 = !DILocation(line: 421, column: 3, scope: !1048)
!1099 = !DILocation(line: 422, column: 11, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 421, column: 10)
!1101 = !DILocation(line: 422, column: 9, scope: !1100)
!1102 = !DILocation(line: 424, column: 10, scope: !1030)
!1103 = !DILocation(line: 424, column: 8, scope: !1030)
!1104 = distinct !{!1104, !1027, !1105, !345, !346}
!1105 = !DILocation(line: 425, column: 2, scope: !973)
!1106 = !DILocation(line: 426, column: 26, scope: !973)
!1107 = !DILocation(line: 426, column: 29, scope: !973)
!1108 = !DILocation(line: 426, column: 35, scope: !973)
!1109 = !DILocation(line: 426, column: 2, scope: !973)
!1110 = !DILocation(line: 429, column: 2, scope: !973)
!1111 = !DILocation(line: 429, column: 9, scope: !973)
!1112 = !DILocation(line: 430, column: 14, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !973, file: !2, line: 429, column: 20)
!1114 = !DILocation(line: 430, column: 25, scope: !1113)
!1115 = !DILocation(line: 430, column: 12, scope: !1113)
!1116 = !DILocation(line: 431, column: 21, scope: !1113)
!1117 = !DILocation(line: 431, column: 3, scope: !1113)
!1118 = !DILocation(line: 432, column: 15, scope: !1113)
!1119 = !DILocation(line: 432, column: 13, scope: !1113)
!1120 = distinct !{!1120, !1110, !1121, !345, !346}
!1121 = !DILocation(line: 433, column: 2, scope: !973)
!1122 = !DILocation(line: 434, column: 1, scope: !973)
!1123 = distinct !DISubprogram(name: "prioq_remove_match", scope: !2, file: !2, line: 328, type: !1124, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!106, !976, !170}
!1126 = !{!1127, !1128, !1129}
!1127 = !DILocalVariable(name: "info", arg: 1, scope: !1123, file: !2, line: 328, type: !976)
!1128 = !DILocalVariable(name: "ev", arg: 2, scope: !1123, file: !2, line: 329, type: !170)
!1129 = !DILocalVariable(name: "res", scope: !1123, file: !2, line: 331, type: !106)
!1130 = !DILocation(line: 328, column: 61, scope: !1123)
!1131 = !DILocation(line: 329, column: 32, scope: !1123)
!1132 = !DILocation(line: 331, column: 2, scope: !1123)
!1133 = !DILocation(line: 331, column: 6, scope: !1123)
!1134 = !DILocation(line: 333, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 333, column: 6)
!1136 = !DILocation(line: 333, column: 12, scope: !1135)
!1137 = !DILocation(line: 333, column: 24, scope: !1135)
!1138 = !DILocation(line: 333, column: 6, scope: !1123)
!1139 = !DILocation(line: 334, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 334, column: 7)
!1141 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 333, column: 49)
!1142 = !DILocation(line: 334, column: 11, scope: !1140)
!1143 = !DILocation(line: 334, column: 16, scope: !1140)
!1144 = !DILocation(line: 334, column: 26, scope: !1140)
!1145 = !DILocation(line: 334, column: 32, scope: !1140)
!1146 = !DILocation(line: 334, column: 37, scope: !1140)
!1147 = !DILocation(line: 334, column: 23, scope: !1140)
!1148 = !DILocation(line: 334, column: 44, scope: !1140)
!1149 = !DILocation(line: 335, column: 5, scope: !1140)
!1150 = !DILocation(line: 335, column: 9, scope: !1140)
!1151 = !DILocation(line: 335, column: 14, scope: !1140)
!1152 = !DILocation(line: 335, column: 22, scope: !1140)
!1153 = !DILocation(line: 335, column: 28, scope: !1140)
!1154 = !DILocation(line: 335, column: 33, scope: !1140)
!1155 = !DILocation(line: 335, column: 19, scope: !1140)
!1156 = !DILocation(line: 334, column: 7, scope: !1141)
!1157 = !DILocation(line: 336, column: 4, scope: !1140)
!1158 = !DILocation(line: 337, column: 2, scope: !1141)
!1159 = !DILocation(line: 338, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 338, column: 6)
!1161 = !DILocation(line: 338, column: 12, scope: !1160)
!1162 = !DILocation(line: 338, column: 24, scope: !1160)
!1163 = !DILocation(line: 338, column: 6, scope: !1123)
!1164 = !DILocation(line: 339, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 339, column: 7)
!1166 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 338, column: 57)
!1167 = !DILocation(line: 339, column: 7, scope: !1166)
!1168 = !DILocation(line: 340, column: 4, scope: !1165)
!1169 = !DILocation(line: 342, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 342, column: 7)
!1171 = !DILocation(line: 342, column: 11, scope: !1170)
!1172 = !DILocation(line: 342, column: 21, scope: !1170)
!1173 = !DILocation(line: 342, column: 32, scope: !1170)
!1174 = !DILocation(line: 342, column: 38, scope: !1170)
!1175 = !DILocation(line: 342, column: 29, scope: !1170)
!1176 = !DILocation(line: 342, column: 7, scope: !1166)
!1177 = !DILocation(line: 343, column: 4, scope: !1170)
!1178 = !DILocation(line: 344, column: 2, scope: !1166)
!1179 = !DILocation(line: 345, column: 6, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 345, column: 6)
!1181 = !DILocation(line: 345, column: 12, scope: !1180)
!1182 = !DILocation(line: 345, column: 24, scope: !1180)
!1183 = !DILocation(line: 345, column: 6, scope: !1123)
!1184 = !DILocation(line: 346, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 346, column: 7)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 345, column: 55)
!1187 = !DILocation(line: 346, column: 13, scope: !1185)
!1188 = !DILocation(line: 346, column: 25, scope: !1185)
!1189 = !DILocation(line: 346, column: 7, scope: !1186)
!1190 = !DILocation(line: 347, column: 37, scope: !1185)
!1191 = !DILocation(line: 347, column: 41, scope: !1185)
!1192 = !DILocation(line: 347, column: 53, scope: !1185)
!1193 = !DILocation(line: 347, column: 59, scope: !1185)
!1194 = !DILocation(line: 347, column: 10, scope: !1185)
!1195 = !DILocation(line: 347, column: 8, scope: !1185)
!1196 = !DILocation(line: 347, column: 4, scope: !1185)
!1197 = !DILocation(line: 349, column: 37, scope: !1185)
!1198 = !DILocation(line: 349, column: 41, scope: !1185)
!1199 = !DILocation(line: 349, column: 53, scope: !1185)
!1200 = !DILocation(line: 349, column: 59, scope: !1185)
!1201 = !DILocation(line: 349, column: 10, scope: !1185)
!1202 = !DILocation(line: 349, column: 8, scope: !1185)
!1203 = !DILocation(line: 350, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 350, column: 7)
!1205 = !DILocation(line: 350, column: 7, scope: !1186)
!1206 = !DILocation(line: 351, column: 4, scope: !1204)
!1207 = !DILocation(line: 352, column: 2, scope: !1186)
!1208 = !DILocation(line: 353, column: 6, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 353, column: 6)
!1210 = !DILocation(line: 353, column: 12, scope: !1209)
!1211 = !DILocation(line: 353, column: 24, scope: !1209)
!1212 = !DILocation(line: 353, column: 6, scope: !1123)
!1213 = !DILocation(line: 354, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 354, column: 7)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 353, column: 56)
!1216 = !DILocation(line: 354, column: 13, scope: !1214)
!1217 = !DILocation(line: 354, column: 25, scope: !1214)
!1218 = !DILocation(line: 354, column: 7, scope: !1215)
!1219 = !DILocation(line: 355, column: 37, scope: !1214)
!1220 = !DILocation(line: 355, column: 41, scope: !1214)
!1221 = !DILocation(line: 355, column: 53, scope: !1214)
!1222 = !DILocation(line: 355, column: 59, scope: !1214)
!1223 = !DILocation(line: 355, column: 10, scope: !1214)
!1224 = !DILocation(line: 355, column: 8, scope: !1214)
!1225 = !DILocation(line: 355, column: 4, scope: !1214)
!1226 = !DILocation(line: 357, column: 37, scope: !1214)
!1227 = !DILocation(line: 357, column: 41, scope: !1214)
!1228 = !DILocation(line: 357, column: 53, scope: !1214)
!1229 = !DILocation(line: 357, column: 59, scope: !1214)
!1230 = !DILocation(line: 357, column: 10, scope: !1214)
!1231 = !DILocation(line: 357, column: 8, scope: !1214)
!1232 = !DILocation(line: 358, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 358, column: 7)
!1234 = !DILocation(line: 358, column: 7, scope: !1215)
!1235 = !DILocation(line: 359, column: 4, scope: !1233)
!1236 = !DILocation(line: 360, column: 2, scope: !1215)
!1237 = !DILocation(line: 361, column: 6, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 361, column: 6)
!1239 = !DILocation(line: 361, column: 12, scope: !1238)
!1240 = !DILocation(line: 361, column: 24, scope: !1238)
!1241 = !DILocation(line: 361, column: 6, scope: !1123)
!1242 = !DILocation(line: 362, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 362, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 361, column: 55)
!1245 = !DILocation(line: 362, column: 11, scope: !1243)
!1246 = !DILocation(line: 362, column: 19, scope: !1243)
!1247 = !DILocation(line: 362, column: 25, scope: !1243)
!1248 = !DILocation(line: 362, column: 16, scope: !1243)
!1249 = !DILocation(line: 362, column: 7, scope: !1244)
!1250 = !DILocation(line: 363, column: 4, scope: !1243)
!1251 = !DILocation(line: 364, column: 2, scope: !1244)
!1252 = !DILocation(line: 365, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 365, column: 6)
!1254 = !DILocation(line: 365, column: 12, scope: !1253)
!1255 = !DILocation(line: 365, column: 24, scope: !1253)
!1256 = !DILocation(line: 365, column: 6, scope: !1123)
!1257 = !DILocation(line: 367, column: 11, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 365, column: 55)
!1259 = !DILocation(line: 367, column: 15, scope: !1258)
!1260 = !DILocation(line: 367, column: 3, scope: !1258)
!1261 = !DILocation(line: 370, column: 4, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 367, column: 21)
!1263 = !DILocation(line: 372, column: 4, scope: !1262)
!1264 = !DILocation(line: 374, column: 2, scope: !1258)
!1265 = !DILocation(line: 375, column: 6, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 375, column: 6)
!1267 = !DILocation(line: 375, column: 12, scope: !1266)
!1268 = !DILocation(line: 375, column: 24, scope: !1266)
!1269 = !DILocation(line: 375, column: 6, scope: !1123)
!1270 = !DILocation(line: 376, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 376, column: 7)
!1272 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 375, column: 54)
!1273 = !DILocation(line: 376, column: 13, scope: !1271)
!1274 = !DILocation(line: 376, column: 20, scope: !1271)
!1275 = !DILocation(line: 376, column: 24, scope: !1271)
!1276 = !DILocation(line: 376, column: 17, scope: !1271)
!1277 = !DILocation(line: 376, column: 7, scope: !1272)
!1278 = !DILocation(line: 377, column: 4, scope: !1271)
!1279 = !DILocation(line: 378, column: 2, scope: !1272)
!1280 = !DILocation(line: 380, column: 2, scope: !1123)
!1281 = !DILocation(line: 381, column: 1, scope: !1123)
!1282 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !277, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DILocalVariable(name: "size", arg: 1, scope: !1282, file: !9, line: 591, type: !279)
!1285 = !DILocalVariable(name: "flags", arg: 2, scope: !1282, file: !9, line: 591, type: !31)
!1286 = !DILocalVariable(name: "index", scope: !1287, file: !9, line: 594, type: !17)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !9, line: 593, column: 42)
!1288 = distinct !DILexicalBlock(scope: !1282, file: !9, line: 593, column: 6)
!1289 = !DILocation(line: 591, column: 61, scope: !1282)
!1290 = !DILocation(line: 591, column: 73, scope: !1282)
!1291 = !DILocation(line: 593, column: 27, scope: !1288)
!1292 = !DILocation(line: 593, column: 6, scope: !1288)
!1293 = !DILocation(line: 593, column: 33, scope: !1288)
!1294 = !DILocation(line: 593, column: 36, scope: !1288)
!1295 = !DILocation(line: 593, column: 6, scope: !1282)
!1296 = !DILocation(line: 594, column: 3, scope: !1287)
!1297 = !DILocation(line: 594, column: 16, scope: !1287)
!1298 = !DILocation(line: 596, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1287, file: !9, line: 596, column: 7)
!1300 = !DILocation(line: 596, column: 12, scope: !1299)
!1301 = !DILocation(line: 596, column: 7, scope: !1287)
!1302 = !DILocation(line: 597, column: 25, scope: !1299)
!1303 = !DILocation(line: 597, column: 31, scope: !1299)
!1304 = !DILocation(line: 597, column: 11, scope: !1299)
!1305 = !DILocation(line: 597, column: 4, scope: !1299)
!1306 = !DILocation(line: 599, column: 11, scope: !1287)
!1307 = !DILocation(line: 599, column: 9, scope: !1287)
!1308 = !DILocation(line: 601, column: 33, scope: !1287)
!1309 = !DILocation(line: 601, column: 40, scope: !1287)
!1310 = !DILocation(line: 601, column: 20, scope: !1287)
!1311 = !DILocation(line: 601, column: 5, scope: !1287)
!1312 = !DILocation(line: 601, column: 51, scope: !1287)
!1313 = !DILocation(line: 602, column: 5, scope: !1287)
!1314 = !DILocation(line: 602, column: 12, scope: !1287)
!1315 = !DILocation(line: 600, column: 10, scope: !1287)
!1316 = !DILocation(line: 600, column: 3, scope: !1287)
!1317 = !DILocation(line: 603, column: 2, scope: !1288)
!1318 = !DILocation(line: 604, column: 19, scope: !1282)
!1319 = !DILocation(line: 604, column: 25, scope: !1282)
!1320 = !DILocation(line: 604, column: 9, scope: !1282)
!1321 = !DILocation(line: 604, column: 2, scope: !1282)
!1322 = !DILocation(line: 605, column: 1, scope: !1282)
!1323 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1324 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !1325, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1329)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!17, !279, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !32, line: 35, baseType: !1328)
!1328 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1329 = !{!1330, !1331}
!1330 = !DILocalVariable(name: "size", arg: 1, scope: !1324, file: !9, line: 444, type: !279)
!1331 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1324, file: !9, line: 445, type: !1327)
!1332 = !DILocation(line: 444, column: 60, scope: !1324)
!1333 = !DILocation(line: 445, column: 16, scope: !1324)
!1334 = !DILocation(line: 447, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 447, column: 6)
!1336 = !DILocation(line: 447, column: 6, scope: !1324)
!1337 = !DILocation(line: 448, column: 3, scope: !1335)
!1338 = !DILocation(line: 450, column: 6, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 450, column: 6)
!1340 = !DILocation(line: 450, column: 11, scope: !1339)
!1341 = !DILocation(line: 450, column: 6, scope: !1324)
!1342 = !DILocation(line: 451, column: 3, scope: !1339)
!1343 = !DILocation(line: 453, column: 32, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 453, column: 6)
!1345 = !DILocation(line: 453, column: 37, scope: !1344)
!1346 = !DILocation(line: 453, column: 42, scope: !1344)
!1347 = !DILocation(line: 453, column: 45, scope: !1344)
!1348 = !DILocation(line: 453, column: 50, scope: !1344)
!1349 = !DILocation(line: 453, column: 6, scope: !1324)
!1350 = !DILocation(line: 454, column: 3, scope: !1344)
!1351 = !DILocation(line: 455, column: 32, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 455, column: 6)
!1353 = !DILocation(line: 455, column: 37, scope: !1352)
!1354 = !DILocation(line: 455, column: 43, scope: !1352)
!1355 = !DILocation(line: 455, column: 46, scope: !1352)
!1356 = !DILocation(line: 455, column: 51, scope: !1352)
!1357 = !DILocation(line: 455, column: 6, scope: !1324)
!1358 = !DILocation(line: 456, column: 3, scope: !1352)
!1359 = !DILocation(line: 457, column: 6, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 457, column: 6)
!1361 = !DILocation(line: 457, column: 11, scope: !1360)
!1362 = !DILocation(line: 457, column: 6, scope: !1324)
!1363 = !DILocation(line: 457, column: 26, scope: !1360)
!1364 = !DILocation(line: 458, column: 6, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 458, column: 6)
!1366 = !DILocation(line: 458, column: 11, scope: !1365)
!1367 = !DILocation(line: 458, column: 6, scope: !1324)
!1368 = !DILocation(line: 458, column: 26, scope: !1365)
!1369 = !DILocation(line: 459, column: 6, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 459, column: 6)
!1371 = !DILocation(line: 459, column: 11, scope: !1370)
!1372 = !DILocation(line: 459, column: 6, scope: !1324)
!1373 = !DILocation(line: 459, column: 26, scope: !1370)
!1374 = !DILocation(line: 460, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 460, column: 6)
!1376 = !DILocation(line: 460, column: 11, scope: !1375)
!1377 = !DILocation(line: 460, column: 6, scope: !1324)
!1378 = !DILocation(line: 460, column: 26, scope: !1375)
!1379 = !DILocation(line: 461, column: 6, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 461, column: 6)
!1381 = !DILocation(line: 461, column: 11, scope: !1380)
!1382 = !DILocation(line: 461, column: 6, scope: !1324)
!1383 = !DILocation(line: 461, column: 26, scope: !1380)
!1384 = !DILocation(line: 462, column: 6, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 462, column: 6)
!1386 = !DILocation(line: 462, column: 11, scope: !1385)
!1387 = !DILocation(line: 462, column: 6, scope: !1324)
!1388 = !DILocation(line: 462, column: 26, scope: !1385)
!1389 = !DILocation(line: 463, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 463, column: 6)
!1391 = !DILocation(line: 463, column: 11, scope: !1390)
!1392 = !DILocation(line: 463, column: 6, scope: !1324)
!1393 = !DILocation(line: 463, column: 26, scope: !1390)
!1394 = !DILocation(line: 464, column: 6, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 464, column: 6)
!1396 = !DILocation(line: 464, column: 11, scope: !1395)
!1397 = !DILocation(line: 464, column: 6, scope: !1324)
!1398 = !DILocation(line: 464, column: 26, scope: !1395)
!1399 = !DILocation(line: 465, column: 6, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 465, column: 6)
!1401 = !DILocation(line: 465, column: 11, scope: !1400)
!1402 = !DILocation(line: 465, column: 6, scope: !1324)
!1403 = !DILocation(line: 465, column: 26, scope: !1400)
!1404 = !DILocation(line: 466, column: 6, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 466, column: 6)
!1406 = !DILocation(line: 466, column: 11, scope: !1405)
!1407 = !DILocation(line: 466, column: 6, scope: !1324)
!1408 = !DILocation(line: 466, column: 26, scope: !1405)
!1409 = !DILocation(line: 467, column: 6, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 467, column: 6)
!1411 = !DILocation(line: 467, column: 11, scope: !1410)
!1412 = !DILocation(line: 467, column: 6, scope: !1324)
!1413 = !DILocation(line: 467, column: 26, scope: !1410)
!1414 = !DILocation(line: 468, column: 6, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 468, column: 6)
!1416 = !DILocation(line: 468, column: 11, scope: !1415)
!1417 = !DILocation(line: 468, column: 6, scope: !1324)
!1418 = !DILocation(line: 468, column: 26, scope: !1415)
!1419 = !DILocation(line: 469, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 469, column: 6)
!1421 = !DILocation(line: 469, column: 11, scope: !1420)
!1422 = !DILocation(line: 469, column: 6, scope: !1324)
!1423 = !DILocation(line: 469, column: 26, scope: !1420)
!1424 = !DILocation(line: 470, column: 6, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 470, column: 6)
!1426 = !DILocation(line: 470, column: 11, scope: !1425)
!1427 = !DILocation(line: 470, column: 6, scope: !1324)
!1428 = !DILocation(line: 470, column: 26, scope: !1425)
!1429 = !DILocation(line: 471, column: 6, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 471, column: 6)
!1431 = !DILocation(line: 471, column: 11, scope: !1430)
!1432 = !DILocation(line: 471, column: 6, scope: !1324)
!1433 = !DILocation(line: 471, column: 26, scope: !1430)
!1434 = !DILocation(line: 472, column: 6, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 472, column: 6)
!1436 = !DILocation(line: 472, column: 11, scope: !1435)
!1437 = !DILocation(line: 472, column: 6, scope: !1324)
!1438 = !DILocation(line: 472, column: 26, scope: !1435)
!1439 = !DILocation(line: 473, column: 6, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 473, column: 6)
!1441 = !DILocation(line: 473, column: 11, scope: !1440)
!1442 = !DILocation(line: 473, column: 6, scope: !1324)
!1443 = !DILocation(line: 473, column: 26, scope: !1440)
!1444 = !DILocation(line: 474, column: 6, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 474, column: 6)
!1446 = !DILocation(line: 474, column: 11, scope: !1445)
!1447 = !DILocation(line: 474, column: 6, scope: !1324)
!1448 = !DILocation(line: 474, column: 27, scope: !1445)
!1449 = !DILocation(line: 475, column: 6, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 475, column: 6)
!1451 = !DILocation(line: 475, column: 11, scope: !1450)
!1452 = !DILocation(line: 475, column: 6, scope: !1324)
!1453 = !DILocation(line: 475, column: 32, scope: !1450)
!1454 = !DILocation(line: 477, column: 50, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1324, file: !9, line: 477, column: 6)
!1456 = !{i8 0, i8 2}
!1457 = !{}
!1458 = !DILocation(line: 477, column: 6, scope: !1324)
!1459 = !DILocation(line: 478, column: 3, scope: !1455)
!1460 = !DILocation(line: 478, column: 3, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !9, line: 478, column: 3)
!1462 = distinct !DILexicalBlock(scope: !1455, file: !9, line: 478, column: 3)
!1463 = !{i32 -2143552766}
!1464 = !DILocation(line: 478, column: 3, scope: !1462)
!1465 = !DILocation(line: 480, column: 3, scope: !1455)
!1466 = !DILocation(line: 480, column: 3, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1455, file: !9, line: 480, column: 3)
!1468 = !DILocation(line: 480, column: 3, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1467, file: !9, line: 480, column: 3)
!1470 = !DILocation(line: 480, column: 3, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !9, line: 480, column: 3)
!1472 = !{i64 2151414733, i64 2151414762, i64 2151414808, i64 2151414866, i64 2151414920, i64 2151414974, i64 2151415029, i64 2151415060}
!1473 = !DILocation(line: 483, column: 2, scope: !1324)
!1474 = !DILocation(line: 484, column: 1, scope: !1324)
!1475 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!33, !1478, !31, !279}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1480, line: 11, flags: DIFlagFwdDecl)
!1480 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1481 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !1482, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!21, !31, !34}
!1484 = !{!1485, !1486}
!1485 = !DILocalVariable(name: "flags", arg: 1, scope: !1481, file: !9, line: 401, type: !31)
!1486 = !DILocalVariable(name: "caller", arg: 2, scope: !1481, file: !9, line: 401, type: !34)
!1487 = !DILocation(line: 401, column: 67, scope: !1481)
!1488 = !DILocation(line: 401, column: 88, scope: !1481)
!1489 = !DILocation(line: 407, column: 6, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1481, file: !9, line: 407, column: 6)
!1491 = !DILocation(line: 407, column: 6, scope: !1481)
!1492 = !DILocation(line: 413, column: 3, scope: !1490)
!1493 = !DILocation(line: 423, column: 38, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1481, file: !9, line: 423, column: 6)
!1495 = !DILocation(line: 423, column: 44, scope: !1494)
!1496 = !DILocation(line: 423, column: 6, scope: !1481)
!1497 = !DILocation(line: 424, column: 3, scope: !1494)
!1498 = !DILocation(line: 426, column: 3, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1481, file: !9, line: 425, column: 6)
!1500 = !DILocation(line: 429, column: 1, scope: !1481)
!1501 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1502 = !DISubprogram(name: "__compiletime_assert_117", scope: !9, file: !9, line: 478, type: !1503, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null}
!1505 = distinct !DISubprogram(name: "snd_seq_compare_tick_time", scope: !1506, file: !1506, line: 66, type: !1507, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1510)
!1506 = !DIFile(filename: "sound/core/seq/seq_timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef518dcd507810ac3e20dcc3b1742c28")
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!106, !1509, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1510 = !{!1511, !1512}
!1511 = !DILocalVariable(name: "a", arg: 1, scope: !1505, file: !1506, line: 66, type: !1509)
!1512 = !DILocalVariable(name: "b", arg: 2, scope: !1505, file: !1506, line: 66, type: !1509)
!1513 = !DILocation(line: 66, column: 66, scope: !1505)
!1514 = !DILocation(line: 66, column: 90, scope: !1505)
!1515 = !DILocation(line: 69, column: 11, scope: !1505)
!1516 = !DILocation(line: 69, column: 10, scope: !1505)
!1517 = !DILocation(line: 69, column: 17, scope: !1505)
!1518 = !DILocation(line: 69, column: 16, scope: !1505)
!1519 = !DILocation(line: 69, column: 13, scope: !1505)
!1520 = !DILocation(line: 69, column: 2, scope: !1505)
!1521 = distinct !DISubprogram(name: "snd_seq_compare_real_time", scope: !1506, file: !1506, line: 72, type: !1522, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1527)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!106, !1524, !1524}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_real_time_t", file: !1526, line: 12, baseType: !76)
!1526 = !DIFile(filename: "./include/sound/seq_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "583a8c45ab6a5155295b27a2a548f2e3")
!1527 = !{!1528, !1529}
!1528 = !DILocalVariable(name: "a", arg: 1, scope: !1521, file: !1506, line: 72, type: !1524)
!1529 = !DILocalVariable(name: "b", arg: 2, scope: !1521, file: !1506, line: 72, type: !1524)
!1530 = !DILocation(line: 72, column: 66, scope: !1521)
!1531 = !DILocation(line: 72, column: 90, scope: !1521)
!1532 = !DILocation(line: 75, column: 6, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1521, file: !1506, line: 75, column: 6)
!1534 = !DILocation(line: 75, column: 9, scope: !1533)
!1535 = !DILocation(line: 75, column: 18, scope: !1533)
!1536 = !DILocation(line: 75, column: 21, scope: !1533)
!1537 = !DILocation(line: 75, column: 16, scope: !1533)
!1538 = !DILocation(line: 75, column: 6, scope: !1521)
!1539 = !DILocation(line: 76, column: 3, scope: !1533)
!1540 = !DILocation(line: 77, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1521, file: !1506, line: 77, column: 6)
!1542 = !DILocation(line: 77, column: 10, scope: !1541)
!1543 = !DILocation(line: 77, column: 20, scope: !1541)
!1544 = !DILocation(line: 77, column: 23, scope: !1541)
!1545 = !DILocation(line: 77, column: 17, scope: !1541)
!1546 = !DILocation(line: 77, column: 31, scope: !1541)
!1547 = !DILocation(line: 77, column: 35, scope: !1541)
!1548 = !DILocation(line: 77, column: 38, scope: !1541)
!1549 = !DILocation(line: 77, column: 49, scope: !1541)
!1550 = !DILocation(line: 77, column: 52, scope: !1541)
!1551 = !DILocation(line: 77, column: 46, scope: !1541)
!1552 = !DILocation(line: 77, column: 6, scope: !1521)
!1553 = !DILocation(line: 78, column: 3, scope: !1541)
!1554 = !DILocation(line: 79, column: 2, scope: !1521)
!1555 = !DILocation(line: 80, column: 1, scope: !1521)
!1556 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !608, file: !608, line: 43, type: !1557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !297, !34}
