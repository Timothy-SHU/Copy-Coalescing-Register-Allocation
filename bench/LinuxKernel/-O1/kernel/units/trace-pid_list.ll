; ModuleID = 'kernel/trace/pid_list.c'
source_filename = "kernel/trace/pid_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_pid_list = type { %struct.raw_spinlock, %struct.irq_work, [256 x ptr], ptr, ptr, i32, i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.8 = type { i32 }
%struct.rcuwait = type { ptr }

@pid_max = external dso_local global i32, align 4
@.str = private unnamed_addr constant [24 x i8] c"kernel/trace/pid_list.c\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @trace_pid_list_is_set(ptr noundef %pid_list, i32 noundef %pid) #0 align 16 !dbg !6176 {
entry:
  %retval = alloca i1, align 1
  %pid_list.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %upper_chunk = alloca ptr, align 8
  %lower_chunk = alloca ptr, align 8
  %flags = alloca i64, align 8
  %upper1 = alloca i32, align 4
  %upper2 = alloca i32, align 4
  %lower = alloca i32, align 4
  %ret = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy31 = alloca i64, align 8
  %__dummy232 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6180, metadata !DIExpression()), !dbg !6197
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6181, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_chunk) #16, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %upper_chunk, metadata !6182, metadata !DIExpression()), !dbg !6200
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_chunk) #16, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %lower_chunk, metadata !6183, metadata !DIExpression()), !dbg !6202
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6184, metadata !DIExpression()), !dbg !6204
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper1) #16, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %upper1, metadata !6185, metadata !DIExpression()), !dbg !6206
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper2) #16, !dbg !6207
  call void @llvm.dbg.declare(metadata ptr %upper2, metadata !6186, metadata !DIExpression()), !dbg !6208
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower) #16, !dbg !6209
  call void @llvm.dbg.declare(metadata ptr %lower, metadata !6187, metadata !DIExpression()), !dbg !6210
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #16, !dbg !6211
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6188, metadata !DIExpression()), !dbg !6212
  store i8 0, ptr %ret, align 1, !dbg !6212
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6213
  %tobool = icmp ne ptr %0, null, !dbg !6213
  br i1 %tobool, label %if.end, label %if.then, !dbg !6215

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6216

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %pid.addr, align 4, !dbg !6217
  %call = call i32 @pid_split(i32 noundef %1, ptr noundef %upper1, ptr noundef %upper2, ptr noundef %lower) #17, !dbg !6219
  %cmp = icmp slt i32 %call, 0, !dbg !6220
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6221

if.then1:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6222

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6223

do.body:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6189, metadata !DIExpression()), !dbg !6224
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6192, metadata !DIExpression()), !dbg !6224
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !6224
  %conv = zext i1 %cmp3 to i32, !dbg !6224
  store i32 1, ptr %tmp, align 4, !dbg !6224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6225
  %2 = load i32, ptr %tmp, align 4, !dbg !6224
  %3 = load ptr, ptr %pid_list.addr, align 8, !dbg !6225
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %3, i32 0, i32 0, !dbg !6225
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #17, !dbg !6225
  store i64 %call4, ptr %flags, align 8, !dbg !6225
  br label %do.cond, !dbg !6225

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6225

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %pid_list.addr, align 8, !dbg !6226
  %upper = getelementptr inbounds %struct.trace_pid_list, ptr %4, i32 0, i32 2, !dbg !6227
  %5 = load i32, ptr %upper1, align 4, !dbg !6228
  %idxprom = zext i32 %5 to i64, !dbg !6226
  %arrayidx = getelementptr [256 x ptr], ptr %upper, i64 0, i64 %idxprom, !dbg !6226
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !6226
  store ptr %6, ptr %upper_chunk, align 8, !dbg !6229
  %7 = load ptr, ptr %upper_chunk, align 8, !dbg !6230
  %tobool5 = icmp ne ptr %7, null, !dbg !6230
  br i1 %tobool5, label %if.then6, label %if.end29, !dbg !6232

if.then6:                                         ; preds = %do.end
  %8 = load ptr, ptr %upper_chunk, align 8, !dbg !6233
  %9 = load i32, ptr %upper2, align 4, !dbg !6235
  %idxprom7 = zext i32 %9 to i64, !dbg !6233
  %arrayidx8 = getelementptr [256 x ptr], ptr %8, i64 0, i64 %idxprom7, !dbg !6233
  %10 = load ptr, ptr %arrayidx8, align 8, !dbg !6233
  store ptr %10, ptr %lower_chunk, align 8, !dbg !6236
  %11 = load ptr, ptr %lower_chunk, align 8, !dbg !6237
  %tobool9 = icmp ne ptr %11, null, !dbg !6237
  br i1 %tobool9, label %if.then10, label %if.end28, !dbg !6239

if.then10:                                        ; preds = %if.then6
  %12 = load i32, ptr %lower, align 4, !dbg !6240
  %13 = call i1 @llvm.is.constant.i32(i32 %12), !dbg !6240
  br i1 %13, label %land.lhs.true, label %cond.false, !dbg !6240

land.lhs.true:                                    ; preds = %if.then10
  %14 = load ptr, ptr %lower_chunk, align 8, !dbg !6240
  %arraydecay = getelementptr inbounds [256 x i64], ptr %14, i64 0, i64 0, !dbg !6240
  %15 = ptrtoint ptr %arraydecay to i64, !dbg !6240
  %cmp11 = icmp ne i64 %15, 0, !dbg !6240
  %conv12 = zext i1 %cmp11 to i32, !dbg !6240
  %16 = call i1 @llvm.is.constant.i32(i32 %conv12), !dbg !6240
  br i1 %16, label %land.lhs.true13, label %cond.false, !dbg !6240

land.lhs.true13:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %lower_chunk, align 8, !dbg !6240
  %arraydecay14 = getelementptr inbounds [256 x i64], ptr %17, i64 0, i64 0, !dbg !6240
  %18 = ptrtoint ptr %arraydecay14 to i64, !dbg !6240
  %cmp15 = icmp ne i64 %18, 0, !dbg !6240
  br i1 %cmp15, label %land.lhs.true17, label %cond.false, !dbg !6240

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %19 = load ptr, ptr %lower_chunk, align 8, !dbg !6240
  %arraydecay18 = getelementptr inbounds [256 x i64], ptr %19, i64 0, i64 0, !dbg !6240
  %20 = load i64, ptr %arraydecay18, align 8, !dbg !6240
  %21 = call i1 @llvm.is.constant.i64(i64 %20), !dbg !6240
  br i1 %21, label %cond.true, label %cond.false, !dbg !6240

cond.true:                                        ; preds = %land.lhs.true17
  %22 = load i32, ptr %lower, align 4, !dbg !6240
  %conv19 = zext i32 %22 to i64, !dbg !6240
  %23 = load ptr, ptr %lower_chunk, align 8, !dbg !6240
  %arraydecay20 = getelementptr inbounds [256 x i64], ptr %23, i64 0, i64 0, !dbg !6240
  %call21 = call zeroext i1 @const_test_bit(i64 noundef %conv19, ptr noundef %arraydecay20) #17, !dbg !6240
  %conv22 = zext i1 %call21 to i32, !dbg !6240
  br label %cond.end, !dbg !6240

cond.false:                                       ; preds = %land.lhs.true17, %land.lhs.true13, %land.lhs.true, %if.then10
  %24 = load i32, ptr %lower, align 4, !dbg !6240
  %conv23 = zext i32 %24 to i64, !dbg !6240
  %25 = load ptr, ptr %lower_chunk, align 8, !dbg !6240
  %arraydecay24 = getelementptr inbounds [256 x i64], ptr %25, i64 0, i64 0, !dbg !6240
  %call25 = call zeroext i1 @_test_bit(i64 noundef %conv23, ptr noundef %arraydecay24) #17, !dbg !6240
  %conv26 = zext i1 %call25 to i32, !dbg !6240
  br label %cond.end, !dbg !6240

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv22, %cond.true ], [ %conv26, %cond.false ], !dbg !6240
  %tobool27 = icmp ne i32 %cond, 0, !dbg !6240
  %frombool = zext i1 %tobool27 to i8, !dbg !6241
  store i8 %frombool, ptr %ret, align 1, !dbg !6241
  br label %if.end28, !dbg !6242

if.end28:                                         ; preds = %cond.end, %if.then6
  br label %if.end29, !dbg !6243

if.end29:                                         ; preds = %if.end28, %do.end
  br label %do.body30, !dbg !6244

do.body30:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy31) #16, !dbg !6245
  call void @llvm.dbg.declare(metadata ptr %__dummy31, metadata !6193, metadata !DIExpression()), !dbg !6245
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy232) #16, !dbg !6245
  call void @llvm.dbg.declare(metadata ptr %__dummy232, metadata !6196, metadata !DIExpression()), !dbg !6245
  %cmp33 = icmp eq ptr %__dummy31, %__dummy232, !dbg !6245
  %conv34 = zext i1 %cmp33 to i32, !dbg !6245
  store i32 1, ptr %tmp35, align 4, !dbg !6245
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy232) #16, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy31) #16, !dbg !6246
  %26 = load i32, ptr %tmp35, align 4, !dbg !6245
  %27 = load ptr, ptr %pid_list.addr, align 8, !dbg !6246
  %lock36 = getelementptr inbounds %struct.trace_pid_list, ptr %27, i32 0, i32 0, !dbg !6246
  %28 = load i64, ptr %flags, align 8, !dbg !6246
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock36, i64 noundef %28) #17, !dbg !6246
  br label %do.cond37, !dbg !6246

do.cond37:                                        ; preds = %do.body30
  br label %do.end38, !dbg !6246

do.end38:                                         ; preds = %do.cond37
  %29 = load i8, ptr %ret, align 1, !dbg !6247, !range !6248, !noundef !661
  %tobool39 = trunc i8 %29 to i1, !dbg !6247
  store i1 %tobool39, ptr %retval, align 1, !dbg !6249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6249

cleanup:                                          ; preds = %do.end38, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #16, !dbg !6250
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower) #16, !dbg !6250
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper2) #16, !dbg !6250
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper1) #16, !dbg !6250
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6250
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_chunk) #16, !dbg !6250
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_chunk) #16, !dbg !6250
  %30 = load i1, ptr %retval, align 1, !dbg !6250
  ret i1 %30, !dbg !6250
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pid_split(i32 noundef %pid, ptr noundef %upper1, ptr noundef %upper2, ptr noundef %lower) #3 align 16 !dbg !6251 {
entry:
  %retval = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %upper1.addr = alloca ptr, align 8
  %upper2.addr = alloca ptr, align 8
  %lower.addr = alloca ptr, align 8
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6255, metadata !DIExpression()), !dbg !6259
  store ptr %upper1, ptr %upper1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %upper1.addr, metadata !6256, metadata !DIExpression()), !dbg !6260
  store ptr %upper2, ptr %upper2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %upper2.addr, metadata !6257, metadata !DIExpression()), !dbg !6261
  store ptr %lower, ptr %lower.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lower.addr, metadata !6258, metadata !DIExpression()), !dbg !6262
  br label %do.body, !dbg !6263

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6264

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %pid.addr, align 4, !dbg !6266
  %cmp = icmp uge i32 %0, 1073741824, !dbg !6266
  %lnot = xor i1 %cmp, true, !dbg !6266
  %lnot1 = xor i1 %lnot, true, !dbg !6266
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6266
  %conv = sext i32 %lnot.ext to i64, !dbg !6266
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6266
  %tobool = icmp ne i64 %expval, 0, !dbg !6266
  br i1 %tobool, label %if.then, label %if.end, !dbg !6268

if.then:                                          ; preds = %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6269
  br label %return, !dbg !6269

if.end:                                           ; preds = %do.end
  %1 = load i32, ptr %pid.addr, align 4, !dbg !6270
  %shr = lshr i32 %1, 22, !dbg !6271
  %and = and i32 %shr, 255, !dbg !6272
  %2 = load ptr, ptr %upper1.addr, align 8, !dbg !6273
  store i32 %and, ptr %2, align 4, !dbg !6274
  %3 = load i32, ptr %pid.addr, align 4, !dbg !6275
  %shr2 = lshr i32 %3, 14, !dbg !6276
  %and3 = and i32 %shr2, 255, !dbg !6277
  %4 = load ptr, ptr %upper2.addr, align 8, !dbg !6278
  store i32 %and3, ptr %4, align 4, !dbg !6279
  %5 = load i32, ptr %pid.addr, align 4, !dbg !6280
  %and4 = and i32 %5, 16383, !dbg !6281
  %6 = load ptr, ptr %lower.addr, align 8, !dbg !6282
  store i32 %and4, ptr %6, align 4, !dbg !6283
  store i32 0, ptr %retval, align 4, !dbg !6284
  br label %return, !dbg !6284

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !6285
  ret i32 %7, !dbg !6285
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6286 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6291 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6299, metadata !DIExpression()), !dbg !6304
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6300, metadata !DIExpression()), !dbg !6305
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6301, metadata !DIExpression()), !dbg !6307
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6308
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6309
  %div = udiv i64 %1, 64, !dbg !6309
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6310
  store ptr %add.ptr, ptr %p, align 8, !dbg !6307
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !6311
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6302, metadata !DIExpression()), !dbg !6312
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6313
  %rem = urem i64 %2, 64, !dbg !6313
  %shl = shl i64 1, %rem, !dbg !6313
  store i64 %shl, ptr %mask, align 8, !dbg !6312
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6303, metadata !DIExpression()), !dbg !6315
  %3 = load ptr, ptr %p, align 8, !dbg !6316
  %4 = load i64, ptr %3, align 8, !dbg !6317
  store i64 %4, ptr %val, align 8, !dbg !6315
  %5 = load i64, ptr %val, align 8, !dbg !6318
  %6 = load i64, ptr %mask, align 8, !dbg !6319
  %and = and i64 %5, %6, !dbg !6320
  %tobool = icmp ne i64 %and, 0, !dbg !6321
  %lnot = xor i1 %tobool, true, !dbg !6321
  %lnot1 = xor i1 %lnot, true, !dbg !6322
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6323
  ret i1 %lnot1, !dbg !6324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6325 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6328, metadata !DIExpression()), !dbg !6330
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6329, metadata !DIExpression()), !dbg !6331
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6332
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6333
  %div = udiv i64 %1, 64, !dbg !6333
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6334
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6335
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6336
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6337
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6338
  ret i1 %call, !dbg !6339
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6340 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_pid_list_set(ptr noundef %pid_list, i32 noundef %pid) #0 align 16 !dbg !6343 {
entry:
  %retval = alloca i32, align 4
  %pid_list.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %upper_chunk = alloca ptr, align 8
  %lower_chunk = alloca ptr, align 8
  %flags = alloca i64, align 8
  %upper1 = alloca i32, align 4
  %upper2 = alloca i32, align 4
  %lower = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy28 = alloca i64, align 8
  %__dummy229 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6347, metadata !DIExpression()), !dbg !6365
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6348, metadata !DIExpression()), !dbg !6366
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_chunk) #16, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %upper_chunk, metadata !6349, metadata !DIExpression()), !dbg !6368
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_chunk) #16, !dbg !6369
  call void @llvm.dbg.declare(metadata ptr %lower_chunk, metadata !6350, metadata !DIExpression()), !dbg !6370
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6371
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6351, metadata !DIExpression()), !dbg !6372
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper1) #16, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %upper1, metadata !6352, metadata !DIExpression()), !dbg !6374
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper2) #16, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %upper2, metadata !6353, metadata !DIExpression()), !dbg !6376
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower) #16, !dbg !6377
  call void @llvm.dbg.declare(metadata ptr %lower, metadata !6354, metadata !DIExpression()), !dbg !6378
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6355, metadata !DIExpression()), !dbg !6380
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6381
  %tobool = icmp ne ptr %0, null, !dbg !6381
  br i1 %tobool, label %if.end, label %if.then, !dbg !6383

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6384

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %pid.addr, align 4, !dbg !6385
  %call = call i32 @pid_split(i32 noundef %1, ptr noundef %upper1, ptr noundef %upper2, ptr noundef %lower) #17, !dbg !6387
  %cmp = icmp slt i32 %call, 0, !dbg !6388
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6389

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6390

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6391

do.body:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6392
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6356, metadata !DIExpression()), !dbg !6392
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6392
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6359, metadata !DIExpression()), !dbg !6392
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !6392
  %conv = zext i1 %cmp3 to i32, !dbg !6392
  store i32 1, ptr %tmp, align 4, !dbg !6392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6393
  %2 = load i32, ptr %tmp, align 4, !dbg !6392
  %3 = load ptr, ptr %pid_list.addr, align 8, !dbg !6393
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %3, i32 0, i32 0, !dbg !6393
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #17, !dbg !6393
  store i64 %call4, ptr %flags, align 8, !dbg !6393
  br label %do.cond, !dbg !6393

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6393

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %pid_list.addr, align 8, !dbg !6394
  %upper = getelementptr inbounds %struct.trace_pid_list, ptr %4, i32 0, i32 2, !dbg !6395
  %5 = load i32, ptr %upper1, align 4, !dbg !6396
  %idxprom = zext i32 %5 to i64, !dbg !6394
  %arrayidx = getelementptr [256 x ptr], ptr %upper, i64 0, i64 %idxprom, !dbg !6394
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !6394
  store ptr %6, ptr %upper_chunk, align 8, !dbg !6397
  %7 = load ptr, ptr %upper_chunk, align 8, !dbg !6398
  %tobool5 = icmp ne ptr %7, null, !dbg !6398
  br i1 %tobool5, label %if.end14, label %if.then6, !dbg !6400

if.then6:                                         ; preds = %do.end
  %8 = load ptr, ptr %pid_list.addr, align 8, !dbg !6401
  %call7 = call ptr @get_upper_chunk(ptr noundef %8) #17, !dbg !6403
  store ptr %call7, ptr %upper_chunk, align 8, !dbg !6404
  %9 = load ptr, ptr %upper_chunk, align 8, !dbg !6405
  %tobool8 = icmp ne ptr %9, null, !dbg !6405
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6407

if.then9:                                         ; preds = %if.then6
  store i32 -12, ptr %ret, align 4, !dbg !6408
  br label %out, !dbg !6410

if.end10:                                         ; preds = %if.then6
  %10 = load ptr, ptr %upper_chunk, align 8, !dbg !6411
  %11 = load ptr, ptr %pid_list.addr, align 8, !dbg !6412
  %upper11 = getelementptr inbounds %struct.trace_pid_list, ptr %11, i32 0, i32 2, !dbg !6413
  %12 = load i32, ptr %upper1, align 4, !dbg !6414
  %idxprom12 = zext i32 %12 to i64, !dbg !6412
  %arrayidx13 = getelementptr [256 x ptr], ptr %upper11, i64 0, i64 %idxprom12, !dbg !6412
  store ptr %10, ptr %arrayidx13, align 8, !dbg !6415
  br label %if.end14, !dbg !6416

if.end14:                                         ; preds = %if.end10, %do.end
  %13 = load ptr, ptr %upper_chunk, align 8, !dbg !6417
  %14 = load i32, ptr %upper2, align 4, !dbg !6418
  %idxprom15 = zext i32 %14 to i64, !dbg !6417
  %arrayidx16 = getelementptr [256 x ptr], ptr %13, i64 0, i64 %idxprom15, !dbg !6417
  %15 = load ptr, ptr %arrayidx16, align 8, !dbg !6417
  store ptr %15, ptr %lower_chunk, align 8, !dbg !6419
  %16 = load ptr, ptr %lower_chunk, align 8, !dbg !6420
  %tobool17 = icmp ne ptr %16, null, !dbg !6420
  br i1 %tobool17, label %if.end25, label %if.then18, !dbg !6422

if.then18:                                        ; preds = %if.end14
  %17 = load ptr, ptr %pid_list.addr, align 8, !dbg !6423
  %call19 = call ptr @get_lower_chunk(ptr noundef %17) #17, !dbg !6425
  store ptr %call19, ptr %lower_chunk, align 8, !dbg !6426
  %18 = load ptr, ptr %lower_chunk, align 8, !dbg !6427
  %tobool20 = icmp ne ptr %18, null, !dbg !6427
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !6429

if.then21:                                        ; preds = %if.then18
  store i32 -12, ptr %ret, align 4, !dbg !6430
  br label %out, !dbg !6432

if.end22:                                         ; preds = %if.then18
  %19 = load ptr, ptr %lower_chunk, align 8, !dbg !6433
  %20 = load ptr, ptr %upper_chunk, align 8, !dbg !6434
  %21 = load i32, ptr %upper2, align 4, !dbg !6435
  %idxprom23 = zext i32 %21 to i64, !dbg !6434
  %arrayidx24 = getelementptr [256 x ptr], ptr %20, i64 0, i64 %idxprom23, !dbg !6434
  store ptr %19, ptr %arrayidx24, align 8, !dbg !6436
  br label %if.end25, !dbg !6437

if.end25:                                         ; preds = %if.end22, %if.end14
  %22 = load i32, ptr %lower, align 4, !dbg !6438
  %conv26 = zext i32 %22 to i64, !dbg !6438
  %23 = load ptr, ptr %lower_chunk, align 8, !dbg !6439
  %arraydecay = getelementptr inbounds [256 x i64], ptr %23, i64 0, i64 0, !dbg !6439
  call void @set_bit(i64 noundef %conv26, ptr noundef %arraydecay) #17, !dbg !6440
  store i32 0, ptr %ret, align 4, !dbg !6441
  br label %out, !dbg !6442

out:                                              ; preds = %if.end25, %if.then21, %if.then9
  call void @llvm.dbg.label(metadata !6360), !dbg !6443
  br label %do.body27, !dbg !6444

do.body27:                                        ; preds = %out
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy28) #16, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %__dummy28, metadata !6361, metadata !DIExpression()), !dbg !6445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy229) #16, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %__dummy229, metadata !6364, metadata !DIExpression()), !dbg !6445
  %cmp30 = icmp eq ptr %__dummy28, %__dummy229, !dbg !6445
  %conv31 = zext i1 %cmp30 to i32, !dbg !6445
  store i32 1, ptr %tmp32, align 4, !dbg !6445
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy229) #16, !dbg !6446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy28) #16, !dbg !6446
  %24 = load i32, ptr %tmp32, align 4, !dbg !6445
  %25 = load ptr, ptr %pid_list.addr, align 8, !dbg !6446
  %lock33 = getelementptr inbounds %struct.trace_pid_list, ptr %25, i32 0, i32 0, !dbg !6446
  %26 = load i64, ptr %flags, align 8, !dbg !6446
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock33, i64 noundef %26) #17, !dbg !6446
  br label %do.cond34, !dbg !6446

do.cond34:                                        ; preds = %do.body27
  br label %do.end35, !dbg !6446

do.end35:                                         ; preds = %do.cond34
  %27 = load i32, ptr %ret, align 4, !dbg !6447
  store i32 %27, ptr %retval, align 4, !dbg !6448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6448

cleanup:                                          ; preds = %do.end35, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper2) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper1) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_chunk) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_chunk) #16, !dbg !6449
  %28 = load i32, ptr %retval, align 4, !dbg !6449
  ret i32 %28, !dbg !6449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_upper_chunk(ptr noundef %pid_list) #3 align 16 !dbg !6450 {
entry:
  %retval = alloca ptr, align 8
  %pid_list.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6454, metadata !DIExpression()), !dbg !6461
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #16, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !6455, metadata !DIExpression()), !dbg !6463
  br label %do.body, !dbg !6464

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6465
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 0, !dbg !6465
  br label %do.cond, !dbg !6465

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6465

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %pid_list.addr, align 8, !dbg !6467
  %upper_list = getelementptr inbounds %struct.trace_pid_list, ptr %1, i32 0, i32 3, !dbg !6469
  %2 = load ptr, ptr %upper_list, align 8, !dbg !6469
  %tobool = icmp ne ptr %2, null, !dbg !6467
  br i1 %tobool, label %if.end, label %if.then, !dbg !6470

if.then:                                          ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !6471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6471

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %pid_list.addr, align 8, !dbg !6472
  %upper_list1 = getelementptr inbounds %struct.trace_pid_list, ptr %3, i32 0, i32 3, !dbg !6473
  %4 = load ptr, ptr %upper_list1, align 8, !dbg !6473
  store ptr %4, ptr %chunk, align 8, !dbg !6474
  %5 = load ptr, ptr %chunk, align 8, !dbg !6475
  %6 = load ptr, ptr %5, align 8, !dbg !6476
  %7 = load ptr, ptr %pid_list.addr, align 8, !dbg !6477
  %upper_list2 = getelementptr inbounds %struct.trace_pid_list, ptr %7, i32 0, i32 3, !dbg !6478
  store ptr %6, ptr %upper_list2, align 8, !dbg !6479
  %8 = load ptr, ptr %pid_list.addr, align 8, !dbg !6480
  %free_upper_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %8, i32 0, i32 5, !dbg !6481
  %9 = load i32, ptr %free_upper_chunks, align 8, !dbg !6482
  %dec = add i32 %9, -1, !dbg !6482
  store i32 %dec, ptr %free_upper_chunks, align 8, !dbg !6482
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6483
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6456, metadata !DIExpression()), !dbg !6483
  %10 = load ptr, ptr %pid_list.addr, align 8, !dbg !6483
  %free_upper_chunks3 = getelementptr inbounds %struct.trace_pid_list, ptr %10, i32 0, i32 5, !dbg !6483
  %11 = load i32, ptr %free_upper_chunks3, align 8, !dbg !6483
  %cmp = icmp slt i32 %11, 0, !dbg !6483
  %lnot = xor i1 %cmp, true, !dbg !6483
  %lnot4 = xor i1 %lnot, true, !dbg !6483
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6483
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6483
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6484
  %tobool5 = icmp ne i32 %12, 0, !dbg !6484
  %lnot6 = xor i1 %tobool5, true, !dbg !6484
  %lnot8 = xor i1 %lnot6, true, !dbg !6484
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6484
  %conv = sext i32 %lnot.ext9 to i64, !dbg !6484
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6484
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6484
  br i1 %tobool10, label %if.then11, label %if.end24, !dbg !6483

if.then11:                                        ; preds = %if.end
  br label %do.body12, !dbg !6484

do.body12:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6485
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6458, metadata !DIExpression()), !dbg !6485
  store i32 2307, ptr %__flags, align 4, !dbg !6485
  br label %do.body13, !dbg !6485

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !6486

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6486

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6485

do.body16:                                        ; preds = %do.end15
  %13 = load i32, ptr %__flags, align 4, !dbg !6488
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 48, i32 %13, i64 12) #16, !dbg !6488, !srcloc !6490
  br label %do.cond17, !dbg !6488

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6488

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !6485

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !6491

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6491

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6484
  br label %do.cond22, !dbg !6485

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !6485

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !6485

if.end24:                                         ; preds = %do.end23, %if.end
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6483
  %tobool25 = icmp ne i32 %14, 0, !dbg !6483
  %lnot26 = xor i1 %tobool25, true, !dbg !6483
  %lnot28 = xor i1 %lnot26, true, !dbg !6483
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !6483
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !6483
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !6483
  store i64 %expval31, ptr %tmp, align 8, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6493
  %15 = load i64, ptr %tmp, align 8, !dbg !6483
  %16 = load ptr, ptr %chunk, align 8, !dbg !6494
  store ptr null, ptr %16, align 8, !dbg !6495
  %17 = load ptr, ptr %pid_list.addr, align 8, !dbg !6496
  %free_upper_chunks32 = getelementptr inbounds %struct.trace_pid_list, ptr %17, i32 0, i32 5, !dbg !6498
  %18 = load i32, ptr %free_upper_chunks32, align 8, !dbg !6498
  %cmp33 = icmp sle i32 %18, 2, !dbg !6499
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !6500

if.then35:                                        ; preds = %if.end24
  %19 = load ptr, ptr %pid_list.addr, align 8, !dbg !6501
  %refill_irqwork = getelementptr inbounds %struct.trace_pid_list, ptr %19, i32 0, i32 1, !dbg !6502
  %call = call zeroext i1 @irq_work_queue(ptr noundef %refill_irqwork) #17, !dbg !6503
  br label %if.end36, !dbg !6503

if.end36:                                         ; preds = %if.then35, %if.end24
  %20 = load ptr, ptr %chunk, align 8, !dbg !6504
  store ptr %20, ptr %retval, align 8, !dbg !6505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6505

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #16, !dbg !6506
  %21 = load ptr, ptr %retval, align 8, !dbg !6506
  ret ptr %21, !dbg !6506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_lower_chunk(ptr noundef %pid_list) #3 align 16 !dbg !6507 {
entry:
  %retval = alloca ptr, align 8
  %pid_list.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6511, metadata !DIExpression()), !dbg !6518
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #16, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !6512, metadata !DIExpression()), !dbg !6520
  br label %do.body, !dbg !6521

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6522
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 0, !dbg !6522
  br label %do.cond, !dbg !6522

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6522

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %pid_list.addr, align 8, !dbg !6524
  %lower_list = getelementptr inbounds %struct.trace_pid_list, ptr %1, i32 0, i32 4, !dbg !6526
  %2 = load ptr, ptr %lower_list, align 8, !dbg !6526
  %tobool = icmp ne ptr %2, null, !dbg !6524
  br i1 %tobool, label %if.end, label %if.then, !dbg !6527

if.then:                                          ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !6528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6528

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %pid_list.addr, align 8, !dbg !6529
  %lower_list1 = getelementptr inbounds %struct.trace_pid_list, ptr %3, i32 0, i32 4, !dbg !6530
  %4 = load ptr, ptr %lower_list1, align 8, !dbg !6530
  store ptr %4, ptr %chunk, align 8, !dbg !6531
  %5 = load ptr, ptr %chunk, align 8, !dbg !6532
  %6 = load ptr, ptr %5, align 8, !dbg !6533
  %7 = load ptr, ptr %pid_list.addr, align 8, !dbg !6534
  %lower_list2 = getelementptr inbounds %struct.trace_pid_list, ptr %7, i32 0, i32 4, !dbg !6535
  store ptr %6, ptr %lower_list2, align 8, !dbg !6536
  %8 = load ptr, ptr %pid_list.addr, align 8, !dbg !6537
  %free_lower_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %8, i32 0, i32 6, !dbg !6538
  %9 = load i32, ptr %free_lower_chunks, align 4, !dbg !6539
  %dec = add i32 %9, -1, !dbg !6539
  store i32 %dec, ptr %free_lower_chunks, align 4, !dbg !6539
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6513, metadata !DIExpression()), !dbg !6540
  %10 = load ptr, ptr %pid_list.addr, align 8, !dbg !6540
  %free_lower_chunks3 = getelementptr inbounds %struct.trace_pid_list, ptr %10, i32 0, i32 6, !dbg !6540
  %11 = load i32, ptr %free_lower_chunks3, align 4, !dbg !6540
  %cmp = icmp slt i32 %11, 0, !dbg !6540
  %lnot = xor i1 %cmp, true, !dbg !6540
  %lnot4 = xor i1 %lnot, true, !dbg !6540
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6540
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6540
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6541
  %tobool5 = icmp ne i32 %12, 0, !dbg !6541
  %lnot6 = xor i1 %tobool5, true, !dbg !6541
  %lnot8 = xor i1 %lnot6, true, !dbg !6541
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6541
  %conv = sext i32 %lnot.ext9 to i64, !dbg !6541
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6541
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6541
  br i1 %tobool10, label %if.then11, label %if.end24, !dbg !6540

if.then11:                                        ; preds = %if.end
  br label %do.body12, !dbg !6541

do.body12:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6515, metadata !DIExpression()), !dbg !6542
  store i32 2307, ptr %__flags, align 4, !dbg !6542
  br label %do.body13, !dbg !6542

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !6543

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6543

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6542

do.body16:                                        ; preds = %do.end15
  %13 = load i32, ptr %__flags, align 4, !dbg !6545
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 24, i32 %13, i64 12) #16, !dbg !6545, !srcloc !6547
  br label %do.cond17, !dbg !6545

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6545

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !6542

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !6548

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6548

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6541
  br label %do.cond22, !dbg !6542

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !6542

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !6542

if.end24:                                         ; preds = %do.end23, %if.end
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6540
  %tobool25 = icmp ne i32 %14, 0, !dbg !6540
  %lnot26 = xor i1 %tobool25, true, !dbg !6540
  %lnot28 = xor i1 %lnot26, true, !dbg !6540
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !6540
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !6540
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !6540
  store i64 %expval31, ptr %tmp, align 8, !dbg !6541
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6550
  %15 = load i64, ptr %tmp, align 8, !dbg !6540
  %16 = load ptr, ptr %chunk, align 8, !dbg !6551
  store ptr null, ptr %16, align 8, !dbg !6552
  %17 = load ptr, ptr %pid_list.addr, align 8, !dbg !6553
  %free_lower_chunks32 = getelementptr inbounds %struct.trace_pid_list, ptr %17, i32 0, i32 6, !dbg !6555
  %18 = load i32, ptr %free_lower_chunks32, align 4, !dbg !6555
  %cmp33 = icmp sle i32 %18, 2, !dbg !6556
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !6557

if.then35:                                        ; preds = %if.end24
  %19 = load ptr, ptr %pid_list.addr, align 8, !dbg !6558
  %refill_irqwork = getelementptr inbounds %struct.trace_pid_list, ptr %19, i32 0, i32 1, !dbg !6559
  %call = call zeroext i1 @irq_work_queue(ptr noundef %refill_irqwork) #17, !dbg !6560
  br label %if.end36, !dbg !6560

if.end36:                                         ; preds = %if.then35, %if.end24
  %20 = load ptr, ptr %chunk, align 8, !dbg !6561
  store ptr %20, ptr %retval, align 8, !dbg !6562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6562

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #16, !dbg !6563
  %21 = load ptr, ptr %retval, align 8, !dbg !6563
  ret ptr %21, !dbg !6563
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6564 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6570, metadata !DIExpression()), !dbg !6572
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6571, metadata !DIExpression()), !dbg !6573
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6574
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6575
  %div = sdiv i64 %1, 64, !dbg !6575
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6576
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6577
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6578
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6579
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6580
  ret void, !dbg !6581
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_pid_list_clear(ptr noundef %pid_list, i32 noundef %pid) #0 align 16 !dbg !6582 {
entry:
  %retval = alloca i32, align 4
  %pid_list.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %upper_chunk = alloca ptr, align 8
  %lower_chunk = alloca ptr, align 8
  %flags = alloca i64, align 8
  %upper1 = alloca i32, align 4
  %upper2 = alloca i32, align 4
  %lower = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy29 = alloca i64, align 8
  %__dummy230 = alloca i64, align 8
  %tmp33 = alloca i32, align 4
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6584, metadata !DIExpression()), !dbg !6601
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6585, metadata !DIExpression()), !dbg !6602
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_chunk) #16, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %upper_chunk, metadata !6586, metadata !DIExpression()), !dbg !6604
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_chunk) #16, !dbg !6605
  call void @llvm.dbg.declare(metadata ptr %lower_chunk, metadata !6587, metadata !DIExpression()), !dbg !6606
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6607
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6588, metadata !DIExpression()), !dbg !6608
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper1) #16, !dbg !6609
  call void @llvm.dbg.declare(metadata ptr %upper1, metadata !6589, metadata !DIExpression()), !dbg !6610
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper2) #16, !dbg !6611
  call void @llvm.dbg.declare(metadata ptr %upper2, metadata !6590, metadata !DIExpression()), !dbg !6612
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower) #16, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %lower, metadata !6591, metadata !DIExpression()), !dbg !6614
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6615
  %tobool = icmp ne ptr %0, null, !dbg !6615
  br i1 %tobool, label %if.end, label %if.then, !dbg !6617

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6618

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %pid.addr, align 4, !dbg !6619
  %call = call i32 @pid_split(i32 noundef %1, ptr noundef %upper1, ptr noundef %upper2, ptr noundef %lower) #17, !dbg !6621
  %cmp = icmp slt i32 %call, 0, !dbg !6622
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6623

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6624

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6625

do.body:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6592, metadata !DIExpression()), !dbg !6626
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6595, metadata !DIExpression()), !dbg !6626
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !6626
  %conv = zext i1 %cmp3 to i32, !dbg !6626
  store i32 1, ptr %tmp, align 4, !dbg !6626
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6627
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6627
  %2 = load i32, ptr %tmp, align 4, !dbg !6626
  %3 = load ptr, ptr %pid_list.addr, align 8, !dbg !6627
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %3, i32 0, i32 0, !dbg !6627
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #17, !dbg !6627
  store i64 %call4, ptr %flags, align 8, !dbg !6627
  br label %do.cond, !dbg !6627

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6627

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %pid_list.addr, align 8, !dbg !6628
  %upper = getelementptr inbounds %struct.trace_pid_list, ptr %4, i32 0, i32 2, !dbg !6629
  %5 = load i32, ptr %upper1, align 4, !dbg !6630
  %idxprom = zext i32 %5 to i64, !dbg !6628
  %arrayidx = getelementptr [256 x ptr], ptr %upper, i64 0, i64 %idxprom, !dbg !6628
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !6628
  store ptr %6, ptr %upper_chunk, align 8, !dbg !6631
  %7 = load ptr, ptr %upper_chunk, align 8, !dbg !6632
  %tobool5 = icmp ne ptr %7, null, !dbg !6632
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6634

if.then6:                                         ; preds = %do.end
  br label %out, !dbg !6635

if.end7:                                          ; preds = %do.end
  %8 = load ptr, ptr %upper_chunk, align 8, !dbg !6636
  %9 = load i32, ptr %upper2, align 4, !dbg !6637
  %idxprom8 = zext i32 %9 to i64, !dbg !6636
  %arrayidx9 = getelementptr [256 x ptr], ptr %8, i64 0, i64 %idxprom8, !dbg !6636
  %10 = load ptr, ptr %arrayidx9, align 8, !dbg !6636
  store ptr %10, ptr %lower_chunk, align 8, !dbg !6638
  %11 = load ptr, ptr %lower_chunk, align 8, !dbg !6639
  %tobool10 = icmp ne ptr %11, null, !dbg !6639
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6641

if.then11:                                        ; preds = %if.end7
  br label %out, !dbg !6642

if.end12:                                         ; preds = %if.end7
  %12 = load i32, ptr %lower, align 4, !dbg !6643
  %conv13 = zext i32 %12 to i64, !dbg !6643
  %13 = load ptr, ptr %lower_chunk, align 8, !dbg !6644
  %arraydecay = getelementptr inbounds [256 x i64], ptr %13, i64 0, i64 0, !dbg !6644
  call void @clear_bit(i64 noundef %conv13, ptr noundef %arraydecay) #17, !dbg !6645
  %14 = load ptr, ptr %lower_chunk, align 8, !dbg !6646
  %arraydecay14 = getelementptr inbounds [256 x i64], ptr %14, i64 0, i64 0, !dbg !6646
  %call15 = call i64 @find_first_bit(ptr noundef %arraydecay14, i64 noundef 16384) #17, !dbg !6648
  %cmp16 = icmp uge i64 %call15, 16384, !dbg !6649
  br i1 %cmp16, label %if.then18, label %if.end27, !dbg !6650

if.then18:                                        ; preds = %if.end12
  %15 = load ptr, ptr %pid_list.addr, align 8, !dbg !6651
  %16 = load ptr, ptr %lower_chunk, align 8, !dbg !6653
  call void @put_lower_chunk(ptr noundef %15, ptr noundef %16) #17, !dbg !6654
  %17 = load ptr, ptr %upper_chunk, align 8, !dbg !6655
  %18 = load i32, ptr %upper2, align 4, !dbg !6656
  %idxprom19 = zext i32 %18 to i64, !dbg !6655
  %arrayidx20 = getelementptr [256 x ptr], ptr %17, i64 0, i64 %idxprom19, !dbg !6655
  store ptr null, ptr %arrayidx20, align 8, !dbg !6657
  %19 = load ptr, ptr %upper_chunk, align 8, !dbg !6658
  %call21 = call zeroext i1 @upper_empty(ptr noundef %19) #17, !dbg !6660
  br i1 %call21, label %if.then22, label %if.end26, !dbg !6661

if.then22:                                        ; preds = %if.then18
  %20 = load ptr, ptr %pid_list.addr, align 8, !dbg !6662
  %21 = load ptr, ptr %upper_chunk, align 8, !dbg !6664
  call void @put_upper_chunk(ptr noundef %20, ptr noundef %21) #17, !dbg !6665
  %22 = load ptr, ptr %pid_list.addr, align 8, !dbg !6666
  %upper23 = getelementptr inbounds %struct.trace_pid_list, ptr %22, i32 0, i32 2, !dbg !6667
  %23 = load i32, ptr %upper1, align 4, !dbg !6668
  %idxprom24 = zext i32 %23 to i64, !dbg !6666
  %arrayidx25 = getelementptr [256 x ptr], ptr %upper23, i64 0, i64 %idxprom24, !dbg !6666
  store ptr null, ptr %arrayidx25, align 8, !dbg !6669
  br label %if.end26, !dbg !6670

if.end26:                                         ; preds = %if.then22, %if.then18
  br label %if.end27, !dbg !6671

if.end27:                                         ; preds = %if.end26, %if.end12
  br label %out, !dbg !6672

out:                                              ; preds = %if.end27, %if.then11, %if.then6
  call void @llvm.dbg.label(metadata !6596), !dbg !6673
  br label %do.body28, !dbg !6674

do.body28:                                        ; preds = %out
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy29) #16, !dbg !6675
  call void @llvm.dbg.declare(metadata ptr %__dummy29, metadata !6597, metadata !DIExpression()), !dbg !6675
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy230) #16, !dbg !6675
  call void @llvm.dbg.declare(metadata ptr %__dummy230, metadata !6600, metadata !DIExpression()), !dbg !6675
  %cmp31 = icmp eq ptr %__dummy29, %__dummy230, !dbg !6675
  %conv32 = zext i1 %cmp31 to i32, !dbg !6675
  store i32 1, ptr %tmp33, align 4, !dbg !6675
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy230) #16, !dbg !6676
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy29) #16, !dbg !6676
  %24 = load i32, ptr %tmp33, align 4, !dbg !6675
  %25 = load ptr, ptr %pid_list.addr, align 8, !dbg !6676
  %lock34 = getelementptr inbounds %struct.trace_pid_list, ptr %25, i32 0, i32 0, !dbg !6676
  %26 = load i64, ptr %flags, align 8, !dbg !6676
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock34, i64 noundef %26) #17, !dbg !6676
  br label %do.cond35, !dbg !6676

do.cond35:                                        ; preds = %do.body28
  br label %do.end36, !dbg !6676

do.end36:                                         ; preds = %do.cond35
  store i32 0, ptr %retval, align 4, !dbg !6677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6677

cleanup:                                          ; preds = %do.end36, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower) #16, !dbg !6678
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper2) #16, !dbg !6678
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper1) #16, !dbg !6678
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6678
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_chunk) #16, !dbg !6678
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_chunk) #16, !dbg !6678
  %27 = load i32, ptr %retval, align 4, !dbg !6678
  ret i32 %27, !dbg !6678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6679 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6681, metadata !DIExpression()), !dbg !6683
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6682, metadata !DIExpression()), !dbg !6684
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6685
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6686
  %div = sdiv i64 %1, 64, !dbg !6686
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6687
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6688
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6689
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6690
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6691
  ret void, !dbg !6692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !6693 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6698, metadata !DIExpression()), !dbg !6703
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6699, metadata !DIExpression()), !dbg !6704
  %0 = load i64, ptr %size.addr, align 8, !dbg !6705
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6705
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !6705

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6705
  %cmp = icmp ule i64 %2, 64, !dbg !6705
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !6705

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6705
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6705
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6706

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !6707
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6700, metadata !DIExpression()), !dbg !6708
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !6709
  %5 = load i64, ptr %4, align 8, !dbg !6710
  %6 = load i64, ptr %size.addr, align 8, !dbg !6711
  %sub = sub i64 %6, 1, !dbg !6711
  %sub3 = sub i64 63, %sub, !dbg !6711
  %shr = lshr i64 -1, %sub3, !dbg !6711
  %and = and i64 -1, %shr, !dbg !6711
  %add = add i64 0, %and, !dbg !6711
  %and4 = and i64 %5, %add, !dbg !6712
  store i64 %and4, ptr %val, align 8, !dbg !6708
  %7 = load i64, ptr %val, align 8, !dbg !6713
  %tobool = icmp ne i64 %7, 0, !dbg !6713
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !6713

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !6714
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6714
  br i1 %9, label %cond.true5, label %cond.false, !dbg !6714

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !6714
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !6714
  %cast = trunc i64 %11 to i32, !dbg !6714
  %conv = sext i32 %cast to i64, !dbg !6714
  br label %cond.end, !dbg !6714

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !6714
  %call = call i64 @variable__ffs(i64 noundef %12) #17, !dbg !6714
  br label %cond.end, !dbg !6714

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !6714
  br label %cond.end7, !dbg !6713

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !6715
  br label %cond.end7, !dbg !6713

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !6713
  store i64 %cond8, ptr %retval, align 8, !dbg !6716
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !6717
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !6718
  %15 = load i64, ptr %size.addr, align 8, !dbg !6719
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #17, !dbg !6720
  store i64 %call9, ptr %retval, align 8, !dbg !6721
  br label %return, !dbg !6721

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !6722
  ret i64 %16, !dbg !6722
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_lower_chunk(ptr noundef %pid_list, ptr noundef %chunk) #3 align 16 !dbg !6723 {
entry:
  %pid_list.addr = alloca ptr, align 8
  %chunk.addr = alloca ptr, align 8
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6727, metadata !DIExpression()), !dbg !6729
  store ptr %chunk, ptr %chunk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !6728, metadata !DIExpression()), !dbg !6730
  br label %do.body, !dbg !6731

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6732
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 0, !dbg !6732
  br label %do.end, !dbg !6732

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %pid_list.addr, align 8, !dbg !6734
  %lower_list = getelementptr inbounds %struct.trace_pid_list, ptr %1, i32 0, i32 4, !dbg !6735
  %2 = load ptr, ptr %lower_list, align 8, !dbg !6735
  %3 = load ptr, ptr %chunk.addr, align 8, !dbg !6736
  store ptr %2, ptr %3, align 8, !dbg !6737
  %4 = load ptr, ptr %chunk.addr, align 8, !dbg !6738
  %5 = load ptr, ptr %pid_list.addr, align 8, !dbg !6739
  %lower_list1 = getelementptr inbounds %struct.trace_pid_list, ptr %5, i32 0, i32 4, !dbg !6740
  store ptr %4, ptr %lower_list1, align 8, !dbg !6741
  %6 = load ptr, ptr %pid_list.addr, align 8, !dbg !6742
  %free_lower_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %6, i32 0, i32 6, !dbg !6743
  %7 = load i32, ptr %free_lower_chunks, align 4, !dbg !6744
  %inc = add i32 %7, 1, !dbg !6744
  store i32 %inc, ptr %free_lower_chunks, align 4, !dbg !6744
  ret void, !dbg !6745
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @upper_empty(ptr noundef %chunk) #3 align 16 !dbg !6746 {
entry:
  %chunk.addr = alloca ptr, align 8
  %bit = alloca i32, align 4
  store ptr %chunk, ptr %chunk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !6750, metadata !DIExpression()), !dbg !6752
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #16, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !6751, metadata !DIExpression()), !dbg !6754
  %0 = load ptr, ptr %chunk.addr, align 8, !dbg !6755
  %arraydecay = getelementptr inbounds [256 x ptr], ptr %0, i64 0, i64 0, !dbg !6755
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 16384) #17, !dbg !6756
  %conv = trunc i64 %call to i32, !dbg !6756
  store i32 %conv, ptr %bit, align 4, !dbg !6754
  %1 = load i32, ptr %bit, align 4, !dbg !6757
  %conv1 = sext i32 %1 to i64, !dbg !6757
  %cmp = icmp uge i64 %conv1, 16384, !dbg !6758
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #16, !dbg !6759
  ret i1 %cmp, !dbg !6760
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_upper_chunk(ptr noundef %pid_list, ptr noundef %chunk) #3 align 16 !dbg !6761 {
entry:
  %pid_list.addr = alloca ptr, align 8
  %chunk.addr = alloca ptr, align 8
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6765, metadata !DIExpression()), !dbg !6767
  store ptr %chunk, ptr %chunk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !6766, metadata !DIExpression()), !dbg !6768
  br label %do.body, !dbg !6769

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6770
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 0, !dbg !6770
  br label %do.end, !dbg !6770

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %pid_list.addr, align 8, !dbg !6772
  %upper_list = getelementptr inbounds %struct.trace_pid_list, ptr %1, i32 0, i32 3, !dbg !6773
  %2 = load ptr, ptr %upper_list, align 8, !dbg !6773
  %3 = load ptr, ptr %chunk.addr, align 8, !dbg !6774
  store ptr %2, ptr %3, align 8, !dbg !6775
  %4 = load ptr, ptr %chunk.addr, align 8, !dbg !6776
  %5 = load ptr, ptr %pid_list.addr, align 8, !dbg !6777
  %upper_list1 = getelementptr inbounds %struct.trace_pid_list, ptr %5, i32 0, i32 3, !dbg !6778
  store ptr %4, ptr %upper_list1, align 8, !dbg !6779
  %6 = load ptr, ptr %pid_list.addr, align 8, !dbg !6780
  %free_upper_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %6, i32 0, i32 5, !dbg !6781
  %7 = load i32, ptr %free_upper_chunks, align 8, !dbg !6782
  %inc = add i32 %7, 1, !dbg !6782
  store i32 %inc, ptr %free_upper_chunks, align 8, !dbg !6782
  ret void, !dbg !6783
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_pid_list_next(ptr noundef %pid_list, i32 noundef %pid, ptr noundef %next) #0 align 16 !dbg !6784 {
entry:
  %retval = alloca i32, align 4
  %pid_list.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %next.addr = alloca ptr, align 8
  %upper_chunk = alloca ptr, align 8
  %lower_chunk = alloca ptr, align 8
  %flags = alloca i64, align 8
  %upper1 = alloca i32, align 4
  %upper2 = alloca i32, align 4
  %lower = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy30 = alloca i64, align 8
  %__dummy231 = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6788, metadata !DIExpression()), !dbg !6806
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6789, metadata !DIExpression()), !dbg !6807
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6790, metadata !DIExpression()), !dbg !6808
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_chunk) #16, !dbg !6809
  call void @llvm.dbg.declare(metadata ptr %upper_chunk, metadata !6791, metadata !DIExpression()), !dbg !6810
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_chunk) #16, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %lower_chunk, metadata !6792, metadata !DIExpression()), !dbg !6812
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6813
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6793, metadata !DIExpression()), !dbg !6814
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper1) #16, !dbg !6815
  call void @llvm.dbg.declare(metadata ptr %upper1, metadata !6794, metadata !DIExpression()), !dbg !6816
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper2) #16, !dbg !6817
  call void @llvm.dbg.declare(metadata ptr %upper2, metadata !6795, metadata !DIExpression()), !dbg !6818
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower) #16, !dbg !6819
  call void @llvm.dbg.declare(metadata ptr %lower, metadata !6796, metadata !DIExpression()), !dbg !6820
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6821
  %tobool = icmp ne ptr %0, null, !dbg !6821
  br i1 %tobool, label %if.end, label %if.then, !dbg !6823

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6824

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %pid.addr, align 4, !dbg !6825
  %call = call i32 @pid_split(i32 noundef %1, ptr noundef %upper1, ptr noundef %upper2, ptr noundef %lower) #17, !dbg !6827
  %cmp = icmp slt i32 %call, 0, !dbg !6828
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6829

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6830

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !6831

do.body:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6797, metadata !DIExpression()), !dbg !6832
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6800, metadata !DIExpression()), !dbg !6832
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !6832
  %conv = zext i1 %cmp3 to i32, !dbg !6832
  store i32 1, ptr %tmp, align 4, !dbg !6832
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6833
  %2 = load i32, ptr %tmp, align 4, !dbg !6832
  %3 = load ptr, ptr %pid_list.addr, align 8, !dbg !6833
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %3, i32 0, i32 0, !dbg !6833
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #17, !dbg !6833
  store i64 %call4, ptr %flags, align 8, !dbg !6833
  br label %do.cond, !dbg !6833

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6833

do.end:                                           ; preds = %do.cond
  br label %for.cond, !dbg !6834

for.cond:                                         ; preds = %for.inc26, %do.end
  %4 = load i32, ptr %upper1, align 4, !dbg !6835
  %cmp5 = icmp ule i32 %4, 255, !dbg !6838
  br i1 %cmp5, label %for.body, label %for.end28, !dbg !6839

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pid_list.addr, align 8, !dbg !6840
  %upper = getelementptr inbounds %struct.trace_pid_list, ptr %5, i32 0, i32 2, !dbg !6842
  %6 = load i32, ptr %upper1, align 4, !dbg !6843
  %idxprom = zext i32 %6 to i64, !dbg !6840
  %arrayidx = getelementptr [256 x ptr], ptr %upper, i64 0, i64 %idxprom, !dbg !6840
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !6840
  store ptr %7, ptr %upper_chunk, align 8, !dbg !6844
  %8 = load ptr, ptr %upper_chunk, align 8, !dbg !6845
  %tobool7 = icmp ne ptr %8, null, !dbg !6845
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6847

if.then8:                                         ; preds = %for.body
  br label %for.inc26, !dbg !6848

if.end9:                                          ; preds = %for.body
  br label %for.cond10, !dbg !6849

for.cond10:                                       ; preds = %for.inc, %if.end9
  %9 = load i32, ptr %upper2, align 4, !dbg !6850
  %cmp11 = icmp ule i32 %9, 255, !dbg !6853
  br i1 %cmp11, label %for.body13, label %for.end, !dbg !6854

for.body13:                                       ; preds = %for.cond10
  %10 = load ptr, ptr %upper_chunk, align 8, !dbg !6855
  %11 = load i32, ptr %upper2, align 4, !dbg !6857
  %idxprom14 = zext i32 %11 to i64, !dbg !6855
  %arrayidx15 = getelementptr [256 x ptr], ptr %10, i64 0, i64 %idxprom14, !dbg !6855
  %12 = load ptr, ptr %arrayidx15, align 8, !dbg !6855
  store ptr %12, ptr %lower_chunk, align 8, !dbg !6858
  %13 = load ptr, ptr %lower_chunk, align 8, !dbg !6859
  %tobool16 = icmp ne ptr %13, null, !dbg !6859
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !6861

if.then17:                                        ; preds = %for.body13
  br label %for.inc, !dbg !6862

if.end18:                                         ; preds = %for.body13
  %14 = load ptr, ptr %lower_chunk, align 8, !dbg !6863
  %arraydecay = getelementptr inbounds [256 x i64], ptr %14, i64 0, i64 0, !dbg !6863
  %15 = load i32, ptr %lower, align 4, !dbg !6864
  %conv19 = zext i32 %15 to i64, !dbg !6864
  %call20 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 16384, i64 noundef %conv19) #17, !dbg !6865
  %conv21 = trunc i64 %call20 to i32, !dbg !6865
  store i32 %conv21, ptr %lower, align 4, !dbg !6866
  %16 = load i32, ptr %lower, align 4, !dbg !6867
  %cmp22 = icmp ult i32 %16, 16384, !dbg !6869
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !6870

if.then24:                                        ; preds = %if.end18
  br label %found, !dbg !6871

if.end25:                                         ; preds = %if.end18
  br label %for.inc, !dbg !6872

for.inc:                                          ; preds = %if.end25, %if.then17
  %17 = load i32, ptr %upper2, align 4, !dbg !6873
  %inc = add i32 %17, 1, !dbg !6873
  store i32 %inc, ptr %upper2, align 4, !dbg !6873
  store i32 0, ptr %lower, align 4, !dbg !6874
  br label %for.cond10, !dbg !6875, !llvm.loop !6876

for.end:                                          ; preds = %for.cond10
  br label %for.inc26, !dbg !6880

for.inc26:                                        ; preds = %for.end, %if.then8
  %18 = load i32, ptr %upper1, align 4, !dbg !6881
  %inc27 = add i32 %18, 1, !dbg !6881
  store i32 %inc27, ptr %upper1, align 4, !dbg !6881
  store i32 0, ptr %upper2, align 4, !dbg !6882
  br label %for.cond, !dbg !6883, !llvm.loop !6884

for.end28:                                        ; preds = %for.cond
  br label %found, !dbg !6885

found:                                            ; preds = %for.end28, %if.then24
  call void @llvm.dbg.label(metadata !6801), !dbg !6886
  br label %do.body29, !dbg !6887

do.body29:                                        ; preds = %found
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy30) #16, !dbg !6888
  call void @llvm.dbg.declare(metadata ptr %__dummy30, metadata !6802, metadata !DIExpression()), !dbg !6888
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy231) #16, !dbg !6888
  call void @llvm.dbg.declare(metadata ptr %__dummy231, metadata !6805, metadata !DIExpression()), !dbg !6888
  %cmp32 = icmp eq ptr %__dummy30, %__dummy231, !dbg !6888
  %conv33 = zext i1 %cmp32 to i32, !dbg !6888
  store i32 1, ptr %tmp34, align 4, !dbg !6888
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy231) #16, !dbg !6889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy30) #16, !dbg !6889
  %19 = load i32, ptr %tmp34, align 4, !dbg !6888
  %20 = load ptr, ptr %pid_list.addr, align 8, !dbg !6889
  %lock35 = getelementptr inbounds %struct.trace_pid_list, ptr %20, i32 0, i32 0, !dbg !6889
  %21 = load i64, ptr %flags, align 8, !dbg !6889
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock35, i64 noundef %21) #17, !dbg !6889
  br label %do.cond36, !dbg !6889

do.cond36:                                        ; preds = %do.body29
  br label %do.end37, !dbg !6889

do.end37:                                         ; preds = %do.cond36
  %22 = load i32, ptr %upper1, align 4, !dbg !6890
  %cmp38 = icmp ugt i32 %22, 255, !dbg !6892
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !6893

if.then40:                                        ; preds = %do.end37
  store i32 -1, ptr %retval, align 4, !dbg !6894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6894

if.end41:                                         ; preds = %do.end37
  %23 = load i32, ptr %upper1, align 4, !dbg !6895
  %24 = load i32, ptr %upper2, align 4, !dbg !6896
  %25 = load i32, ptr %lower, align 4, !dbg !6897
  %call42 = call i32 @pid_join(i32 noundef %23, i32 noundef %24, i32 noundef %25) #17, !dbg !6898
  %26 = load ptr, ptr %next.addr, align 8, !dbg !6899
  store i32 %call42, ptr %26, align 4, !dbg !6900
  store i32 0, ptr %retval, align 4, !dbg !6901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6901

cleanup:                                          ; preds = %if.end41, %if.then40, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower) #16, !dbg !6902
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper2) #16, !dbg !6902
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper1) #16, !dbg !6902
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6902
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_chunk) #16, !dbg !6902
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_chunk) #16, !dbg !6902
  %27 = load i32, ptr %retval, align 4, !dbg !6902
  ret i32 %27, !dbg !6902
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !6903 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6907, metadata !DIExpression()), !dbg !6913
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6908, metadata !DIExpression()), !dbg !6914
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6909, metadata !DIExpression()), !dbg !6915
  %0 = load i64, ptr %size.addr, align 8, !dbg !6916
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6916
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6916

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6916
  %cmp = icmp ule i64 %2, 64, !dbg !6916
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6916

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6916
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6916
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6917

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !6918
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6910, metadata !DIExpression()), !dbg !6919
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6920
  %5 = load i64, ptr %size.addr, align 8, !dbg !6920
  %cmp3 = icmp uge i64 %4, %5, !dbg !6920
  %lnot = xor i1 %cmp3, true, !dbg !6920
  %lnot4 = xor i1 %lnot, true, !dbg !6920
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6920
  %conv = sext i32 %lnot.ext to i64, !dbg !6920
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6920
  %tobool = icmp ne i64 %expval, 0, !dbg !6920
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6922

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6923
  store i64 %6, ptr %retval, align 8, !dbg !6924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6924

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6925
  %8 = load i64, ptr %7, align 8, !dbg !6926
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6927
  %shl = shl i64 1, %9, !dbg !6927
  %sub = sub i64 -1, %shl, !dbg !6927
  %add = add i64 %sub, 1, !dbg !6927
  %10 = load i64, ptr %size.addr, align 8, !dbg !6927
  %sub6 = sub i64 %10, 1, !dbg !6927
  %sub7 = sub i64 63, %sub6, !dbg !6927
  %shr = lshr i64 -1, %sub7, !dbg !6927
  %and = and i64 %add, %shr, !dbg !6927
  %add8 = add i64 0, %and, !dbg !6927
  %and9 = and i64 %8, %add8, !dbg !6928
  store i64 %and9, ptr %val, align 8, !dbg !6929
  %11 = load i64, ptr %val, align 8, !dbg !6930
  %tobool10 = icmp ne i64 %11, 0, !dbg !6930
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6930

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6931
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6931
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6931

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6931
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6931
  %cast = trunc i64 %15 to i32, !dbg !6931
  %conv12 = sext i32 %cast to i64, !dbg !6931
  br label %cond.end, !dbg !6931

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6931
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !6931
  br label %cond.end, !dbg !6931

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6931
  br label %cond.end14, !dbg !6930

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6932
  br label %cond.end14, !dbg !6930

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6930
  store i64 %cond15, ptr %retval, align 8, !dbg !6933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6933

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !6934
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6935
  %19 = load i64, ptr %size.addr, align 8, !dbg !6936
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6937
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !6938
  store i64 %call17, ptr %retval, align 8, !dbg !6939
  br label %return, !dbg !6939

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6940
  ret i64 %21, !dbg !6940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pid_join(i32 noundef %upper1, i32 noundef %upper2, i32 noundef %lower) #3 align 16 !dbg !6941 {
entry:
  %upper1.addr = alloca i32, align 4
  %upper2.addr = alloca i32, align 4
  %lower.addr = alloca i32, align 4
  store i32 %upper1, ptr %upper1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %upper1.addr, metadata !6945, metadata !DIExpression()), !dbg !6948
  store i32 %upper2, ptr %upper2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %upper2.addr, metadata !6946, metadata !DIExpression()), !dbg !6949
  store i32 %lower, ptr %lower.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lower.addr, metadata !6947, metadata !DIExpression()), !dbg !6950
  %0 = load i32, ptr %upper1.addr, align 4, !dbg !6951
  %and = and i32 %0, 255, !dbg !6952
  %shl = shl i32 %and, 22, !dbg !6953
  %1 = load i32, ptr %upper2.addr, align 4, !dbg !6954
  %and1 = and i32 %1, 255, !dbg !6955
  %shl2 = shl i32 %and1, 14, !dbg !6956
  %or = or i32 %shl, %shl2, !dbg !6957
  %2 = load i32, ptr %lower.addr, align 4, !dbg !6958
  %and3 = and i32 %2, 16383, !dbg !6959
  %or4 = or i32 %or, %and3, !dbg !6960
  ret i32 %or4, !dbg !6961
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_pid_list_first(ptr noundef %pid_list, ptr noundef %pid) #0 align 16 !dbg !6962 {
entry:
  %pid_list.addr = alloca ptr, align 8
  %pid.addr = alloca ptr, align 8
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !6966, metadata !DIExpression()), !dbg !6968
  store ptr %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6967, metadata !DIExpression()), !dbg !6969
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !6970
  %1 = load ptr, ptr %pid.addr, align 8, !dbg !6971
  %call = call i32 @trace_pid_list_next(ptr noundef %0, i32 noundef 0, ptr noundef %1) #17, !dbg !6972
  ret i32 %call, !dbg !6973
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @trace_pid_list_alloc() #0 align 16 !dbg !6974 {
entry:
  %retval = alloca ptr, align 8
  %pid_list = alloca ptr, align 8
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  %chunk = alloca ptr, align 8
  %chunk41 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pid_list) #16, !dbg !6993
  call void @llvm.dbg.declare(metadata ptr %pid_list, metadata !6978, metadata !DIExpression()), !dbg !6994
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6995
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6979, metadata !DIExpression()), !dbg !6996
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6997
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6980, metadata !DIExpression()), !dbg !6997
  %0 = load i32, ptr @pid_max, align 4, !dbg !6997
  %cmp = icmp sgt i32 %0, 1073741824, !dbg !6997
  %lnot = xor i1 %cmp, true, !dbg !6997
  %lnot1 = xor i1 %lnot, true, !dbg !6997
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6997
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6997
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6998
  %tobool = icmp ne i32 %1, 0, !dbg !6998
  %lnot2 = xor i1 %tobool, true, !dbg !6998
  %lnot4 = xor i1 %lnot2, true, !dbg !6998
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6998
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6998
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6998
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6998
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6997

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6998

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6999
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6982, metadata !DIExpression()), !dbg !6999
  store i32 2307, ptr %__flags, align 4, !dbg !6999
  br label %do.body7, !dbg !6999

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !7000

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !7000

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6999

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !7002
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 417, i32 %2, i64 12) #16, !dbg !7002, !srcloc !7004
  br label %do.cond9, !dbg !7002

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !7002

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6999

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !7005

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7005

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6998
  br label %do.cond14, !dbg !6999

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6999

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6999

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6997
  %tobool16 = icmp ne i32 %3, 0, !dbg !6997
  %lnot17 = xor i1 %tobool16, true, !dbg !6997
  %lnot19 = xor i1 %lnot17, true, !dbg !6997
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6997
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6997
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6997
  store i64 %expval22, ptr %tmp, align 8, !dbg !6998
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7007
  %4 = load i64, ptr %tmp, align 8, !dbg !6997
  %call = call noalias ptr @kzalloc(i64 noundef 2112, i32 noundef 3264) #18, !dbg !7008
  store ptr %call, ptr %pid_list, align 8, !dbg !7009
  %5 = load ptr, ptr %pid_list, align 8, !dbg !7010
  %tobool23 = icmp ne ptr %5, null, !dbg !7010
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !7012

if.then24:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !7013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !7013

if.end25:                                         ; preds = %if.end
  %6 = load ptr, ptr %pid_list, align 8, !dbg !7014
  %refill_irqwork = getelementptr inbounds %struct.trace_pid_list, ptr %6, i32 0, i32 1, !dbg !7015
  call void @init_irq_work(ptr noundef %refill_irqwork, ptr noundef @pid_list_refill_irq) #17, !dbg !7016
  br label %do.body26, !dbg !7017

do.body26:                                        ; preds = %if.end25
  %7 = load ptr, ptr %pid_list, align 8, !dbg !7018
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %7, i32 0, i32 0, !dbg !7018
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !7018
  %8 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !7018
  %counter = getelementptr inbounds %struct.atomic_t, ptr %8, i32 0, i32 0, !dbg !7018
  store i32 0, ptr %counter, align 4, !dbg !7018
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !7018
  br label %do.cond27, !dbg !7018

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !7018

do.end28:                                         ; preds = %do.cond27
  store i32 0, ptr %i, align 4, !dbg !7020
  br label %for.cond, !dbg !7021

for.cond:                                         ; preds = %for.inc, %do.end28
  %9 = load i32, ptr %i, align 4, !dbg !7022
  %cmp29 = icmp slt i32 %9, 6, !dbg !7023
  br i1 %cmp29, label %for.body, label %for.end, !dbg !7024

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #16, !dbg !7025
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !6985, metadata !DIExpression()), !dbg !7026
  %call31 = call noalias ptr @kzalloc(i64 noundef 2048, i32 noundef 3264) #18, !dbg !7027
  store ptr %call31, ptr %chunk, align 8, !dbg !7028
  %10 = load ptr, ptr %chunk, align 8, !dbg !7029
  %tobool32 = icmp ne ptr %10, null, !dbg !7029
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !7031

if.then33:                                        ; preds = %for.body
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7032

if.end34:                                         ; preds = %for.body
  %11 = load ptr, ptr %pid_list, align 8, !dbg !7033
  %upper_list = getelementptr inbounds %struct.trace_pid_list, ptr %11, i32 0, i32 3, !dbg !7034
  %12 = load ptr, ptr %upper_list, align 8, !dbg !7034
  %13 = load ptr, ptr %chunk, align 8, !dbg !7035
  store ptr %12, ptr %13, align 8, !dbg !7036
  %14 = load ptr, ptr %chunk, align 8, !dbg !7037
  %15 = load ptr, ptr %pid_list, align 8, !dbg !7038
  %upper_list35 = getelementptr inbounds %struct.trace_pid_list, ptr %15, i32 0, i32 3, !dbg !7039
  store ptr %14, ptr %upper_list35, align 8, !dbg !7040
  %16 = load ptr, ptr %pid_list, align 8, !dbg !7041
  %free_upper_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %16, i32 0, i32 5, !dbg !7042
  %17 = load i32, ptr %free_upper_chunks, align 8, !dbg !7043
  %inc = add i32 %17, 1, !dbg !7043
  store i32 %inc, ptr %free_upper_chunks, align 8, !dbg !7043
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7044
  br label %cleanup, !dbg !7044

cleanup:                                          ; preds = %if.end34, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #16, !dbg !7044
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 12, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !7045

for.inc:                                          ; preds = %cleanup.cont
  %18 = load i32, ptr %i, align 4, !dbg !7046
  %inc36 = add i32 %18, 1, !dbg !7046
  store i32 %inc36, ptr %i, align 4, !dbg !7046
  br label %for.cond, !dbg !7047, !llvm.loop !7048

for.end:                                          ; preds = %cleanup, %for.cond
  store i32 0, ptr %i, align 4, !dbg !7050
  br label %for.cond37, !dbg !7051

for.cond37:                                       ; preds = %for.inc51, %for.end
  %19 = load i32, ptr %i, align 4, !dbg !7052
  %cmp38 = icmp slt i32 %19, 6, !dbg !7053
  br i1 %cmp38, label %for.body40, label %for.end53, !dbg !7054

for.body40:                                       ; preds = %for.cond37
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk41) #16, !dbg !7055
  call void @llvm.dbg.declare(metadata ptr %chunk41, metadata !6989, metadata !DIExpression()), !dbg !7056
  %call42 = call noalias ptr @kzalloc(i64 noundef 2048, i32 noundef 3264) #18, !dbg !7057
  store ptr %call42, ptr %chunk41, align 8, !dbg !7058
  %20 = load ptr, ptr %chunk41, align 8, !dbg !7059
  %tobool43 = icmp ne ptr %20, null, !dbg !7059
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !7061

if.then44:                                        ; preds = %for.body40
  store i32 15, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !7062

if.end45:                                         ; preds = %for.body40
  %21 = load ptr, ptr %pid_list, align 8, !dbg !7063
  %lower_list = getelementptr inbounds %struct.trace_pid_list, ptr %21, i32 0, i32 4, !dbg !7064
  %22 = load ptr, ptr %lower_list, align 8, !dbg !7064
  %23 = load ptr, ptr %chunk41, align 8, !dbg !7065
  store ptr %22, ptr %23, align 8, !dbg !7066
  %24 = load ptr, ptr %chunk41, align 8, !dbg !7067
  %25 = load ptr, ptr %pid_list, align 8, !dbg !7068
  %lower_list46 = getelementptr inbounds %struct.trace_pid_list, ptr %25, i32 0, i32 4, !dbg !7069
  store ptr %24, ptr %lower_list46, align 8, !dbg !7070
  %26 = load ptr, ptr %pid_list, align 8, !dbg !7071
  %free_lower_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %26, i32 0, i32 6, !dbg !7072
  %27 = load i32, ptr %free_lower_chunks, align 4, !dbg !7073
  %inc47 = add i32 %27, 1, !dbg !7073
  store i32 %inc47, ptr %free_lower_chunks, align 4, !dbg !7073
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7074
  br label %cleanup48, !dbg !7074

cleanup48:                                        ; preds = %if.end45, %if.then44
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk41) #16, !dbg !7074
  %cleanup.dest49 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest49, label %unreachable [
    i32 0, label %cleanup.cont50
    i32 15, label %for.end53
  ]

cleanup.cont50:                                   ; preds = %cleanup48
  br label %for.inc51, !dbg !7075

for.inc51:                                        ; preds = %cleanup.cont50
  %28 = load i32, ptr %i, align 4, !dbg !7076
  %inc52 = add i32 %28, 1, !dbg !7076
  store i32 %inc52, ptr %i, align 4, !dbg !7076
  br label %for.cond37, !dbg !7077, !llvm.loop !7078

for.end53:                                        ; preds = %cleanup48, %for.cond37
  %29 = load ptr, ptr %pid_list, align 8, !dbg !7080
  store ptr %29, ptr %retval, align 8, !dbg !7081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !7081

cleanup54:                                        ; preds = %for.end53, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !7082
  call void @llvm.lifetime.end.p0(i64 8, ptr %pid_list) #16, !dbg !7082
  %30 = load ptr, ptr %retval, align 8, !dbg !7082
  ret ptr %30, !dbg !7082

unreachable:                                      ; preds = %cleanup48, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !7083 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7087, metadata !DIExpression()), !dbg !7089
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7088, metadata !DIExpression()), !dbg !7090
  %0 = load i64, ptr %size.addr, align 8, !dbg !7091
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7092
  %or = or i32 %1, 256, !dbg !7093
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !7094
  ret ptr %call, !dbg !7095
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_irq_work(ptr noundef %work, ptr noundef %func) #3 align 16 !dbg !7096 {
entry:
  %work.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.irq_work, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !7100, metadata !DIExpression()), !dbg !7102
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !7101, metadata !DIExpression()), !dbg !7103
  %0 = load ptr, ptr %work.addr, align 8, !dbg !7104
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 32, i1 false), !dbg !7105
  %func1 = getelementptr inbounds %struct.irq_work, ptr %.compoundliteral, i32 0, i32 1, !dbg !7105
  %1 = load ptr, ptr %func.addr, align 8, !dbg !7105
  store ptr %1, ptr %func1, align 8, !dbg !7105
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %.compoundliteral, i64 32, i1 false), !dbg !7105
  ret void, !dbg !7106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pid_list_refill_irq(ptr noundef %iwork) #0 align 16 !dbg !7107 {
entry:
  %iwork.addr = alloca ptr, align 8
  %pid_list = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %upper = alloca ptr, align 8
  %lower = alloca ptr, align 8
  %upper_next = alloca ptr, align 8
  %lower_next = alloca ptr, align 8
  %upper_count = alloca i32, align 4
  %lower_count = alloca i32, align 4
  %ucnt = alloca i32, align 4
  %lcnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %chunk = alloca ptr, align 8
  %chunk11 = alloca ptr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iwork.addr, metadata !7109, metadata !DIExpression()), !dbg !7128
  call void @llvm.lifetime.start.p0(i64 8, ptr %pid_list) #16, !dbg !7129
  call void @llvm.dbg.declare(metadata ptr %pid_list, metadata !7110, metadata !DIExpression()), !dbg !7130
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7131
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7111, metadata !DIExpression()), !dbg !7131
  %0 = load ptr, ptr %iwork.addr, align 8, !dbg !7131
  store ptr %0, ptr %__mptr, align 8, !dbg !7131
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7131
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !7131
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7131
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7132
  %2 = load ptr, ptr %tmp, align 8, !dbg !7131
  store ptr %2, ptr %pid_list, align 8, !dbg !7130
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper) #16, !dbg !7133
  call void @llvm.dbg.declare(metadata ptr %upper, metadata !7113, metadata !DIExpression()), !dbg !7134
  store ptr null, ptr %upper, align 8, !dbg !7134
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower) #16, !dbg !7135
  call void @llvm.dbg.declare(metadata ptr %lower, metadata !7114, metadata !DIExpression()), !dbg !7136
  store ptr null, ptr %lower, align 8, !dbg !7136
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_next) #16, !dbg !7137
  call void @llvm.dbg.declare(metadata ptr %upper_next, metadata !7115, metadata !DIExpression()), !dbg !7138
  store ptr %upper, ptr %upper_next, align 8, !dbg !7138
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_next) #16, !dbg !7139
  call void @llvm.dbg.declare(metadata ptr %lower_next, metadata !7117, metadata !DIExpression()), !dbg !7140
  store ptr %lower, ptr %lower_next, align 8, !dbg !7140
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper_count) #16, !dbg !7141
  call void @llvm.dbg.declare(metadata ptr %upper_count, metadata !7119, metadata !DIExpression()), !dbg !7142
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower_count) #16, !dbg !7143
  call void @llvm.dbg.declare(metadata ptr %lower_count, metadata !7120, metadata !DIExpression()), !dbg !7144
  call void @llvm.lifetime.start.p0(i64 4, ptr %ucnt) #16, !dbg !7145
  call void @llvm.dbg.declare(metadata ptr %ucnt, metadata !7121, metadata !DIExpression()), !dbg !7146
  store i32 0, ptr %ucnt, align 4, !dbg !7146
  call void @llvm.lifetime.start.p0(i64 4, ptr %lcnt) #16, !dbg !7147
  call void @llvm.dbg.declare(metadata ptr %lcnt, metadata !7122, metadata !DIExpression()), !dbg !7148
  store i32 0, ptr %lcnt, align 4, !dbg !7148
  br label %again, !dbg !7147

again:                                            ; preds = %if.end37, %entry
  call void @llvm.dbg.label(metadata !7123), !dbg !7149
  %3 = load ptr, ptr %pid_list, align 8, !dbg !7150
  %lock = getelementptr inbounds %struct.trace_pid_list, ptr %3, i32 0, i32 0, !dbg !7150
  call void @_raw_spin_lock(ptr noundef %lock) #17, !dbg !7150
  %4 = load ptr, ptr %pid_list, align 8, !dbg !7151
  %free_upper_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %4, i32 0, i32 5, !dbg !7152
  %5 = load i32, ptr %free_upper_chunks, align 8, !dbg !7152
  %sub = sub i32 6, %5, !dbg !7153
  store i32 %sub, ptr %upper_count, align 4, !dbg !7154
  %6 = load ptr, ptr %pid_list, align 8, !dbg !7155
  %free_lower_chunks = getelementptr inbounds %struct.trace_pid_list, ptr %6, i32 0, i32 6, !dbg !7156
  %7 = load i32, ptr %free_lower_chunks, align 4, !dbg !7156
  %sub1 = sub i32 6, %7, !dbg !7157
  store i32 %sub1, ptr %lower_count, align 4, !dbg !7158
  %8 = load ptr, ptr %pid_list, align 8, !dbg !7159
  %lock2 = getelementptr inbounds %struct.trace_pid_list, ptr %8, i32 0, i32 0, !dbg !7159
  call void @_raw_spin_unlock(ptr noundef %lock2) #17, !dbg !7159
  %9 = load i32, ptr %upper_count, align 4, !dbg !7160
  %cmp = icmp sle i32 %9, 0, !dbg !7162
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !7163

land.lhs.true:                                    ; preds = %again
  %10 = load i32, ptr %lower_count, align 4, !dbg !7164
  %cmp3 = icmp sle i32 %10, 0, !dbg !7165
  br i1 %cmp3, label %if.then, label %if.end, !dbg !7166

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !7167

if.end:                                           ; preds = %land.lhs.true, %again
  br label %while.cond, !dbg !7168

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %11 = load i32, ptr %upper_count, align 4, !dbg !7169
  %dec = add i32 %11, -1, !dbg !7169
  store i32 %dec, ptr %upper_count, align 4, !dbg !7169
  %cmp4 = icmp sgt i32 %11, 0, !dbg !7170
  br i1 %cmp4, label %while.body, label %while.end, !dbg !7168

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #16, !dbg !7171
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !7124, metadata !DIExpression()), !dbg !7172
  %call = call noalias ptr @kzalloc(i64 noundef 2048, i32 noundef 2048) #18, !dbg !7173
  store ptr %call, ptr %chunk, align 8, !dbg !7174
  %12 = load ptr, ptr %chunk, align 8, !dbg !7175
  %tobool = icmp ne ptr %12, null, !dbg !7175
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !7177

if.then5:                                         ; preds = %while.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7178

if.end6:                                          ; preds = %while.body
  %13 = load ptr, ptr %chunk, align 8, !dbg !7179
  %14 = load ptr, ptr %upper_next, align 8, !dbg !7180
  store ptr %13, ptr %14, align 8, !dbg !7181
  %15 = load ptr, ptr %chunk, align 8, !dbg !7182
  store ptr %15, ptr %upper_next, align 8, !dbg !7183
  %16 = load i32, ptr %ucnt, align 4, !dbg !7184
  %inc = add i32 %16, 1, !dbg !7184
  store i32 %inc, ptr %ucnt, align 4, !dbg !7184
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7185
  br label %cleanup, !dbg !7185

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #16, !dbg !7185
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !7168, !llvm.loop !7186

while.end:                                        ; preds = %cleanup, %while.cond
  br label %while.cond7, !dbg !7187

while.cond7:                                      ; preds = %cleanup.cont19, %while.end
  %17 = load i32, ptr %lower_count, align 4, !dbg !7188
  %dec8 = add i32 %17, -1, !dbg !7188
  store i32 %dec8, ptr %lower_count, align 4, !dbg !7188
  %cmp9 = icmp sgt i32 %17, 0, !dbg !7189
  br i1 %cmp9, label %while.body10, label %while.end20, !dbg !7187

while.body10:                                     ; preds = %while.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk11) #16, !dbg !7190
  call void @llvm.dbg.declare(metadata ptr %chunk11, metadata !7126, metadata !DIExpression()), !dbg !7191
  %call12 = call noalias ptr @kzalloc(i64 noundef 2048, i32 noundef 2048) #18, !dbg !7192
  store ptr %call12, ptr %chunk11, align 8, !dbg !7193
  %18 = load ptr, ptr %chunk11, align 8, !dbg !7194
  %tobool13 = icmp ne ptr %18, null, !dbg !7194
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !7196

if.then14:                                        ; preds = %while.body10
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !7197

if.end15:                                         ; preds = %while.body10
  %19 = load ptr, ptr %chunk11, align 8, !dbg !7198
  %20 = load ptr, ptr %lower_next, align 8, !dbg !7199
  store ptr %19, ptr %20, align 8, !dbg !7200
  %21 = load ptr, ptr %chunk11, align 8, !dbg !7201
  store ptr %21, ptr %lower_next, align 8, !dbg !7202
  %22 = load i32, ptr %lcnt, align 4, !dbg !7203
  %inc16 = add i32 %22, 1, !dbg !7203
  store i32 %inc16, ptr %lcnt, align 4, !dbg !7203
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7204
  br label %cleanup17, !dbg !7204

cleanup17:                                        ; preds = %if.end15, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk11) #16, !dbg !7204
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 0, label %cleanup.cont19
    i32 6, label %while.end20
  ]

cleanup.cont19:                                   ; preds = %cleanup17
  br label %while.cond7, !dbg !7187, !llvm.loop !7205

while.end20:                                      ; preds = %cleanup17, %while.cond7
  %23 = load ptr, ptr %pid_list, align 8, !dbg !7206
  %lock21 = getelementptr inbounds %struct.trace_pid_list, ptr %23, i32 0, i32 0, !dbg !7206
  call void @_raw_spin_lock(ptr noundef %lock21) #17, !dbg !7206
  %24 = load ptr, ptr %upper, align 8, !dbg !7207
  %tobool22 = icmp ne ptr %24, null, !dbg !7207
  br i1 %tobool22, label %if.then23, label %if.end26, !dbg !7209

if.then23:                                        ; preds = %while.end20
  %25 = load ptr, ptr %pid_list, align 8, !dbg !7210
  %upper_list = getelementptr inbounds %struct.trace_pid_list, ptr %25, i32 0, i32 3, !dbg !7212
  %26 = load ptr, ptr %upper_list, align 8, !dbg !7212
  %27 = load ptr, ptr %upper_next, align 8, !dbg !7213
  store ptr %26, ptr %27, align 8, !dbg !7214
  %28 = load ptr, ptr %upper, align 8, !dbg !7215
  %29 = load ptr, ptr %pid_list, align 8, !dbg !7216
  %upper_list24 = getelementptr inbounds %struct.trace_pid_list, ptr %29, i32 0, i32 3, !dbg !7217
  store ptr %28, ptr %upper_list24, align 8, !dbg !7218
  %30 = load i32, ptr %ucnt, align 4, !dbg !7219
  %31 = load ptr, ptr %pid_list, align 8, !dbg !7220
  %free_upper_chunks25 = getelementptr inbounds %struct.trace_pid_list, ptr %31, i32 0, i32 5, !dbg !7221
  %32 = load i32, ptr %free_upper_chunks25, align 8, !dbg !7222
  %add = add i32 %32, %30, !dbg !7222
  store i32 %add, ptr %free_upper_chunks25, align 8, !dbg !7222
  br label %if.end26, !dbg !7223

if.end26:                                         ; preds = %if.then23, %while.end20
  %33 = load ptr, ptr %lower, align 8, !dbg !7224
  %tobool27 = icmp ne ptr %33, null, !dbg !7224
  br i1 %tobool27, label %if.then28, label %if.end32, !dbg !7226

if.then28:                                        ; preds = %if.end26
  %34 = load ptr, ptr %pid_list, align 8, !dbg !7227
  %lower_list = getelementptr inbounds %struct.trace_pid_list, ptr %34, i32 0, i32 4, !dbg !7229
  %35 = load ptr, ptr %lower_list, align 8, !dbg !7229
  %36 = load ptr, ptr %lower_next, align 8, !dbg !7230
  store ptr %35, ptr %36, align 8, !dbg !7231
  %37 = load ptr, ptr %lower, align 8, !dbg !7232
  %38 = load ptr, ptr %pid_list, align 8, !dbg !7233
  %lower_list29 = getelementptr inbounds %struct.trace_pid_list, ptr %38, i32 0, i32 4, !dbg !7234
  store ptr %37, ptr %lower_list29, align 8, !dbg !7235
  %39 = load i32, ptr %lcnt, align 4, !dbg !7236
  %40 = load ptr, ptr %pid_list, align 8, !dbg !7237
  %free_lower_chunks30 = getelementptr inbounds %struct.trace_pid_list, ptr %40, i32 0, i32 6, !dbg !7238
  %41 = load i32, ptr %free_lower_chunks30, align 4, !dbg !7239
  %add31 = add i32 %41, %39, !dbg !7239
  store i32 %add31, ptr %free_lower_chunks30, align 4, !dbg !7239
  br label %if.end32, !dbg !7240

if.end32:                                         ; preds = %if.then28, %if.end26
  %42 = load ptr, ptr %pid_list, align 8, !dbg !7241
  %lock33 = getelementptr inbounds %struct.trace_pid_list, ptr %42, i32 0, i32 0, !dbg !7241
  call void @_raw_spin_unlock(ptr noundef %lock33) #17, !dbg !7241
  %43 = load i32, ptr %upper_count, align 4, !dbg !7242
  %cmp34 = icmp sge i32 %43, 0, !dbg !7244
  br i1 %cmp34, label %if.then36, label %lor.lhs.false, !dbg !7245

lor.lhs.false:                                    ; preds = %if.end32
  %44 = load i32, ptr %lower_count, align 4, !dbg !7246
  %cmp35 = icmp sge i32 %44, 0, !dbg !7247
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !7248

if.then36:                                        ; preds = %lor.lhs.false, %if.end32
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !7249

if.end37:                                         ; preds = %lor.lhs.false
  br label %again, !dbg !7250

cleanup38:                                        ; preds = %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %lcnt) #16, !dbg !7251
  call void @llvm.lifetime.end.p0(i64 4, ptr %ucnt) #16, !dbg !7251
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower_count) #16, !dbg !7251
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper_count) #16, !dbg !7251
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_next) #16, !dbg !7251
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_next) #16, !dbg !7251
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower) #16, !dbg !7251
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper) #16, !dbg !7251
  call void @llvm.lifetime.end.p0(i64 8, ptr %pid_list) #16, !dbg !7251
  ret void, !dbg !7251

unreachable:                                      ; preds = %cleanup17, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_pid_list_free(ptr noundef %pid_list) #0 align 16 !dbg !7252 {
entry:
  %pid_list.addr = alloca ptr, align 8
  %upper = alloca ptr, align 8
  %lower = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %chunk = alloca ptr, align 8
  %chunk8 = alloca ptr, align 8
  store ptr %pid_list, ptr %pid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_list.addr, metadata !7256, metadata !DIExpression()), !dbg !7265
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper) #16, !dbg !7266
  call void @llvm.dbg.declare(metadata ptr %upper, metadata !7257, metadata !DIExpression()), !dbg !7267
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower) #16, !dbg !7268
  call void @llvm.dbg.declare(metadata ptr %lower, metadata !7258, metadata !DIExpression()), !dbg !7269
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !7270
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7259, metadata !DIExpression()), !dbg !7271
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #16, !dbg !7270
  call void @llvm.dbg.declare(metadata ptr %j, metadata !7260, metadata !DIExpression()), !dbg !7272
  %0 = load ptr, ptr %pid_list.addr, align 8, !dbg !7273
  %tobool = icmp ne ptr %0, null, !dbg !7273
  br i1 %tobool, label %if.end, label %if.then, !dbg !7275

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7276

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pid_list.addr, align 8, !dbg !7277
  %refill_irqwork = getelementptr inbounds %struct.trace_pid_list, ptr %1, i32 0, i32 1, !dbg !7278
  call void @irq_work_sync(ptr noundef %refill_irqwork) #17, !dbg !7279
  br label %while.cond, !dbg !7280

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load ptr, ptr %pid_list.addr, align 8, !dbg !7281
  %lower_list = getelementptr inbounds %struct.trace_pid_list, ptr %2, i32 0, i32 4, !dbg !7282
  %3 = load ptr, ptr %lower_list, align 8, !dbg !7282
  %tobool1 = icmp ne ptr %3, null, !dbg !7280
  br i1 %tobool1, label %while.body, label %while.end, !dbg !7280

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #16, !dbg !7283
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !7261, metadata !DIExpression()), !dbg !7284
  %4 = load ptr, ptr %pid_list.addr, align 8, !dbg !7285
  %lower_list2 = getelementptr inbounds %struct.trace_pid_list, ptr %4, i32 0, i32 4, !dbg !7286
  %5 = load ptr, ptr %lower_list2, align 8, !dbg !7286
  store ptr %5, ptr %chunk, align 8, !dbg !7287
  %6 = load ptr, ptr %pid_list.addr, align 8, !dbg !7288
  %lower_list3 = getelementptr inbounds %struct.trace_pid_list, ptr %6, i32 0, i32 4, !dbg !7289
  %7 = load ptr, ptr %lower_list3, align 8, !dbg !7289
  %8 = load ptr, ptr %7, align 8, !dbg !7290
  %9 = load ptr, ptr %pid_list.addr, align 8, !dbg !7291
  %lower_list4 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 4, !dbg !7292
  store ptr %8, ptr %lower_list4, align 8, !dbg !7293
  %10 = load ptr, ptr %chunk, align 8, !dbg !7294
  call void @kfree(ptr noundef %10) #17, !dbg !7295
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #16, !dbg !7296
  br label %while.cond, !dbg !7280, !llvm.loop !7297

while.end:                                        ; preds = %while.cond
  br label %while.cond5, !dbg !7298

while.cond5:                                      ; preds = %while.body7, %while.end
  %11 = load ptr, ptr %pid_list.addr, align 8, !dbg !7299
  %upper_list = getelementptr inbounds %struct.trace_pid_list, ptr %11, i32 0, i32 3, !dbg !7300
  %12 = load ptr, ptr %upper_list, align 8, !dbg !7300
  %tobool6 = icmp ne ptr %12, null, !dbg !7298
  br i1 %tobool6, label %while.body7, label %while.end12, !dbg !7298

while.body7:                                      ; preds = %while.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk8) #16, !dbg !7301
  call void @llvm.dbg.declare(metadata ptr %chunk8, metadata !7263, metadata !DIExpression()), !dbg !7302
  %13 = load ptr, ptr %pid_list.addr, align 8, !dbg !7303
  %upper_list9 = getelementptr inbounds %struct.trace_pid_list, ptr %13, i32 0, i32 3, !dbg !7304
  %14 = load ptr, ptr %upper_list9, align 8, !dbg !7304
  store ptr %14, ptr %chunk8, align 8, !dbg !7305
  %15 = load ptr, ptr %pid_list.addr, align 8, !dbg !7306
  %upper_list10 = getelementptr inbounds %struct.trace_pid_list, ptr %15, i32 0, i32 3, !dbg !7307
  %16 = load ptr, ptr %upper_list10, align 8, !dbg !7307
  %17 = load ptr, ptr %16, align 8, !dbg !7308
  %18 = load ptr, ptr %pid_list.addr, align 8, !dbg !7309
  %upper_list11 = getelementptr inbounds %struct.trace_pid_list, ptr %18, i32 0, i32 3, !dbg !7310
  store ptr %17, ptr %upper_list11, align 8, !dbg !7311
  %19 = load ptr, ptr %chunk8, align 8, !dbg !7312
  call void @kfree(ptr noundef %19) #17, !dbg !7313
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk8) #16, !dbg !7314
  br label %while.cond5, !dbg !7298, !llvm.loop !7315

while.end12:                                      ; preds = %while.cond5
  store i32 0, ptr %i, align 4, !dbg !7316
  br label %for.cond, !dbg !7318

for.cond:                                         ; preds = %for.inc22, %while.end12
  %20 = load i32, ptr %i, align 4, !dbg !7319
  %cmp = icmp slt i32 %20, 256, !dbg !7321
  br i1 %cmp, label %for.body, label %for.end24, !dbg !7322

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %pid_list.addr, align 8, !dbg !7323
  %upper13 = getelementptr inbounds %struct.trace_pid_list, ptr %21, i32 0, i32 2, !dbg !7325
  %22 = load i32, ptr %i, align 4, !dbg !7326
  %idxprom = sext i32 %22 to i64, !dbg !7323
  %arrayidx = getelementptr [256 x ptr], ptr %upper13, i64 0, i64 %idxprom, !dbg !7323
  %23 = load ptr, ptr %arrayidx, align 8, !dbg !7323
  store ptr %23, ptr %upper, align 8, !dbg !7327
  %24 = load ptr, ptr %upper, align 8, !dbg !7328
  %tobool14 = icmp ne ptr %24, null, !dbg !7328
  br i1 %tobool14, label %if.then15, label %if.end21, !dbg !7330

if.then15:                                        ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !7331
  br label %for.cond16, !dbg !7334

for.cond16:                                       ; preds = %for.inc, %if.then15
  %25 = load i32, ptr %j, align 4, !dbg !7335
  %cmp17 = icmp slt i32 %25, 256, !dbg !7337
  br i1 %cmp17, label %for.body18, label %for.end, !dbg !7338

for.body18:                                       ; preds = %for.cond16
  %26 = load ptr, ptr %upper, align 8, !dbg !7339
  %27 = load i32, ptr %j, align 4, !dbg !7341
  %idxprom19 = sext i32 %27 to i64, !dbg !7339
  %arrayidx20 = getelementptr [256 x ptr], ptr %26, i64 0, i64 %idxprom19, !dbg !7339
  %28 = load ptr, ptr %arrayidx20, align 8, !dbg !7339
  store ptr %28, ptr %lower, align 8, !dbg !7342
  %29 = load ptr, ptr %lower, align 8, !dbg !7343
  call void @kfree(ptr noundef %29) #17, !dbg !7344
  br label %for.inc, !dbg !7345

for.inc:                                          ; preds = %for.body18
  %30 = load i32, ptr %j, align 4, !dbg !7346
  %inc = add i32 %30, 1, !dbg !7346
  store i32 %inc, ptr %j, align 4, !dbg !7346
  br label %for.cond16, !dbg !7347, !llvm.loop !7348

for.end:                                          ; preds = %for.cond16
  %31 = load ptr, ptr %upper, align 8, !dbg !7350
  call void @kfree(ptr noundef %31) #17, !dbg !7351
  br label %if.end21, !dbg !7352

if.end21:                                         ; preds = %for.end, %for.body
  br label %for.inc22, !dbg !7353

for.inc22:                                        ; preds = %if.end21
  %32 = load i32, ptr %i, align 4, !dbg !7354
  %inc23 = add i32 %32, 1, !dbg !7354
  store i32 %inc23, ptr %i, align 4, !dbg !7354
  br label %for.cond, !dbg !7355, !llvm.loop !7356

for.end24:                                        ; preds = %for.cond
  %33 = load ptr, ptr %pid_list.addr, align 8, !dbg !7358
  call void @kfree(ptr noundef %33) #17, !dbg !7359
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7360
  br label %cleanup, !dbg !7360

cleanup:                                          ; preds = %for.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #16, !dbg !7360
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !7360
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower) #16, !dbg !7360
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper) #16, !dbg !7360
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7360

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7361 dso_local void @irq_work_sync(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7362 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7365 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7373, metadata !DIExpression()), !dbg !7375
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7374, metadata !DIExpression()), !dbg !7376
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7377
  %1 = load i64, ptr %size.addr, align 8, !dbg !7378
  %conv = trunc i64 %1 to i32, !dbg !7378
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7379
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7380
  %3 = load i64, ptr %size.addr, align 8, !dbg !7380
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7380
  ret void, !dbg !7381
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7382 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7385, metadata !DIExpression()), !dbg !7387
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7386, metadata !DIExpression()), !dbg !7388
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7389
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7390
  br i1 %1, label %cond.true, label %cond.false, !dbg !7390

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7391
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7392
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7393
  %conv = zext i1 %call to i32, !dbg !7393
  br label %cond.end, !dbg !7390

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7394
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7395
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !7396
  %conv2 = zext i1 %call1 to i32, !dbg !7396
  br label %cond.end, !dbg !7390

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7390
  %tobool = icmp ne i32 %cond, 0, !dbg !7390
  ret i1 %tobool, !dbg !7397
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7398 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7403, metadata !DIExpression()), !dbg !7405
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7404, metadata !DIExpression()), !dbg !7406
  ret i1 true, !dbg !7407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7408 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7413, metadata !DIExpression()), !dbg !7416
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7414, metadata !DIExpression()), !dbg !7417
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7415, metadata !DIExpression()), !dbg !7418
  ret void, !dbg !7419
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7420 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7424, metadata !DIExpression()), !dbg !7426
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7425, metadata !DIExpression()), !dbg !7427
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7428
  %and = and i64 %0, 63, !dbg !7429
  %shl = shl i64 1, %and, !dbg !7430
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7431
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7432
  %shr = ashr i64 %2, 6, !dbg !7433
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7431
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7431
  %and1 = and i64 %shl, %3, !dbg !7434
  %cmp = icmp ne i64 %and1, 0, !dbg !7435
  ret i1 %cmp, !dbg !7436
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7437 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7439, metadata !DIExpression()), !dbg !7442
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7440, metadata !DIExpression()), !dbg !7443
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !7444
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7441, metadata !DIExpression()), !dbg !7445
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7446
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7447
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !7448, !srcloc !7449
  %3 = icmp ult i8 %2, 2, !dbg !7448
  call void @llvm.assume(i1 %3), !dbg !7448
  store i8 %2, ptr %oldbit, align 1, !dbg !7448
  %4 = load i8, ptr %oldbit, align 1, !dbg !7450, !range !6248, !noundef !661
  %tobool = trunc i8 %4 to i1, !dbg !7450
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !7451
  ret i1 %tobool, !dbg !7452
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7453 dso_local zeroext i1 @irq_work_queue(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7456 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7458, metadata !DIExpression()), !dbg !7460
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7459, metadata !DIExpression()), !dbg !7461
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7462
  %1 = load i64, ptr %size.addr, align 8, !dbg !7463
  %conv = trunc i64 %1 to i32, !dbg !7463
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !7464
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7465
  %3 = load i64, ptr %size.addr, align 8, !dbg !7465
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !7465
  ret void, !dbg !7466
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7467 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7469, metadata !DIExpression()), !dbg !7471
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7470, metadata !DIExpression()), !dbg !7472
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7473
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7475
  br i1 %1, label %if.then, label %if.else, !dbg !7476

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7477
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7477
  %shr = ashr i64 %3, 3, !dbg !7477
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7477
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7479
  %and = and i64 %4, 7, !dbg !7479
  %sh_prom = trunc i64 %and to i32, !dbg !7479
  %shl = shl i32 1, %sh_prom, !dbg !7479
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !7480, !srcloc !7481
  br label %if.end, !dbg !7482

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7483
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7485
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !7486, !srcloc !7487
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7489 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7491, metadata !DIExpression()), !dbg !7493
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7492, metadata !DIExpression()), !dbg !7494
  ret i1 true, !dbg !7495
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7496 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7498, metadata !DIExpression()), !dbg !7500
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7499, metadata !DIExpression()), !dbg !7501
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7502
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7504
  br i1 %1, label %if.then, label %if.else, !dbg !7505

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7506
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7506
  %shr = ashr i64 %3, 3, !dbg !7506
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7506
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7508
  %and = and i64 %4, 7, !dbg !7508
  %sh_prom = trunc i64 %and to i32, !dbg !7508
  %shl = shl i32 1, %sh_prom, !dbg !7508
  %not = xor i32 %shl, -1, !dbg !7509
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #16, !dbg !7510, !srcloc !7511
  br label %if.end, !dbg !7512

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7513
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7515
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !7516, !srcloc !7517
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7518
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !7519 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !7523, metadata !DIExpression()), !dbg !7524
  %0 = load i64, ptr %word.addr, align 8, !dbg !7525
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #19, !dbg !7526, !srcloc !7527
  store i64 %1, ptr %word.addr, align 8, !dbg !7526
  %2 = load i64, ptr %word.addr, align 8, !dbg !7528
  ret i64 %2, !dbg !7529
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7530 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7531 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !7532 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7534, metadata !DIExpression()), !dbg !7539
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7535, metadata !DIExpression()), !dbg !7540
  %0 = load i64, ptr %size.addr, align 8, !dbg !7541
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7542
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7543

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7544
  %tobool = icmp ne i64 %2, 0, !dbg !7544
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7545

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !7546
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7536, metadata !DIExpression()), !dbg !7547
  %3 = load i64, ptr %size.addr, align 8, !dbg !7548
  %cmp = icmp ugt i64 %3, 8192, !dbg !7550
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7551

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7552
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7553
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !7554
  store ptr %call, ptr %retval, align 8, !dbg !7555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7555

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7556
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !7556
  store i32 %call2, ptr %index, align 4, !dbg !7557
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7558
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7559
  %9 = ptrtoint ptr %8 to i64, !dbg !7559
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !7560
  %idxprom = zext i32 %call3 to i64, !dbg !7561
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7561
  %10 = load i32, ptr %index, align 4, !dbg !7562
  %idxprom4 = zext i32 %10 to i64, !dbg !7561
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7561
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7561
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7563
  %13 = load i64, ptr %size.addr, align 8, !dbg !7564
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !7565
  store ptr %call6, ptr %retval, align 8, !dbg !7566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7566

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !7567
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7568
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7569
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !7570
  store ptr %call8, ptr %retval, align 8, !dbg !7571
  br label %return, !dbg !7571

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7572
  ret ptr %16, !dbg !7572
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7573 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !7574 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7578, metadata !DIExpression()), !dbg !7580
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7579, metadata !DIExpression()), !dbg !7581
  %0 = load i64, ptr %size.addr, align 8, !dbg !7582
  %tobool = icmp ne i64 %0, 0, !dbg !7582
  br i1 %tobool, label %if.end, label %if.then, !dbg !7584

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7585
  br label %return, !dbg !7585

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7586
  %cmp = icmp ule i64 %1, 8, !dbg !7588
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7589

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7590
  br label %return, !dbg !7590

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7591
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7593
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7594

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7595
  %cmp4 = icmp ule i64 %3, 96, !dbg !7596
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7597

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7598
  br label %return, !dbg !7598

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7599
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7601
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7602

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7603
  %cmp9 = icmp ule i64 %5, 192, !dbg !7604
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7605

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7606
  br label %return, !dbg !7606

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7607
  %cmp12 = icmp ule i64 %6, 8, !dbg !7609
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7610

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7611
  br label %return, !dbg !7611

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7612
  %cmp15 = icmp ule i64 %7, 16, !dbg !7614
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7615

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7616
  br label %return, !dbg !7616

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7617
  %cmp18 = icmp ule i64 %8, 32, !dbg !7619
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7620

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7621
  br label %return, !dbg !7621

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7622
  %cmp21 = icmp ule i64 %9, 64, !dbg !7624
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7625

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7626
  br label %return, !dbg !7626

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7627
  %cmp24 = icmp ule i64 %10, 128, !dbg !7629
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7630

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7631
  br label %return, !dbg !7631

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7632
  %cmp27 = icmp ule i64 %11, 256, !dbg !7634
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7635

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7636
  br label %return, !dbg !7636

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7637
  %cmp30 = icmp ule i64 %12, 512, !dbg !7639
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7640

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7641
  br label %return, !dbg !7641

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7642
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7644
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7645

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7646
  br label %return, !dbg !7646

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7647
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7649
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7650

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7651
  br label %return, !dbg !7651

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7652
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7654
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7655

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7656
  br label %return, !dbg !7656

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7657
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7659
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7660

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7661
  br label %return, !dbg !7661

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7662
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7664
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7665

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7666
  br label %return, !dbg !7666

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7667
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7669
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7670

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7671
  br label %return, !dbg !7671

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7672
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7674
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7675

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7676
  br label %return, !dbg !7676

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7677
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7679
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7680

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7681
  br label %return, !dbg !7681

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7682
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7684
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7685

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7686
  br label %return, !dbg !7686

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7687
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7689
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7690

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7691
  br label %return, !dbg !7691

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7692
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7694
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7695

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7696
  br label %return, !dbg !7696

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7697
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7699
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7700

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7701
  br label %return, !dbg !7701

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7702, !range !6248, !noundef !661
  %tobool69 = trunc i8 %25 to i1, !dbg !7702
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7704

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7705

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_213() #21, !dbg !7706, !srcloc !7709
  unreachable, !dbg !7706

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7710

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7711

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7712

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7714

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7712

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !7716, !srcloc !7718
  br label %do.end75, !dbg !7716

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7712

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7719
  br label %return, !dbg !7719

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7720
  ret i32 %26, !dbg !7720
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7721 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !7724 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7728, metadata !DIExpression()), !dbg !7730
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7729, metadata !DIExpression()), !dbg !7731
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7732
  %and = and i32 %0, 17, !dbg !7732
  %cmp = icmp eq i32 %and, 0, !dbg !7732
  %lnot = xor i1 %cmp, true, !dbg !7732
  %lnot1 = xor i1 %lnot, true, !dbg !7732
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7732
  %conv = sext i32 %lnot.ext to i64, !dbg !7732
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7732
  %tobool = icmp ne i64 %expval, 0, !dbg !7732
  br i1 %tobool, label %if.then, label %if.end, !dbg !7734

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7735
  br label %return, !dbg !7735

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7736
  %and2 = and i32 %1, 1, !dbg !7738
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7738
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7739

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7740
  br label %return, !dbg !7740

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7741
  br label %return, !dbg !7741

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7743
  ret i32 %2, !dbg !7743
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7744 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7745 dso_local void @__compiletime_assert_213() #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7746 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7749 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { nounwind memory(read) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!6167, !6168, !6169, !6170, !6171, !6172, !6173, !6174}
!llvm.ident = !{!6175}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/trace/pid_list.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8f124760a262e6bab6b5951b7c43a7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/trace/.pid_list.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/trace/pid_list\22 -D KBUILD_BASENAME=\22pid_list\22 -D KBUILD_MODNAME=\22pid_list\22 -D __KBUILD_MODNAME=kmod_pid_list -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/trace/pid_list.ll kernel/trace/pid_list.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !291, globals: !6166, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !21, !116, !124, !131, !139, !155, !162, !168, !179, !185, !191, !198, !206, !213, !219, !228, !233, !238, !244, !253, !258, !264, !270, !277, !282}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !16, line: 65, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!20 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !23, file: !22, line: 147, baseType: !17, size: 32, elements: !113)
!22 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !22, line: 135, size: 512, elements: !24)
!24 = !{!25, !28, !30, !32, !36, !37, !53, !111, !112}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !23, file: !22, line: 136, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !22, line: 137, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !23, file: !22, line: 138, baseType: !31, size: 32, offset: 128)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !23, file: !22, line: 139, baseType: !33, size: 16, offset: 160)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !34, line: 24, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !22, line: 150, baseType: !21, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !23, file: !22, line: 151, baseType: !38, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !22, line: 64, baseType: !40)
!40 = !DISubroutineType(types: !41)
!41 = !{!31, !42, !31, !29, !43, !49}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !46, line: 72, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !46, line: 16, baseType: !48)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !34, line: 52, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !46, line: 88, baseType: !52)
!52 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !23, file: !22, line: 152, baseType: !54, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !22, line: 117, size: 256, elements: !56)
!56 = !{!57, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !55, file: !22, line: 118, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !34, line: 174, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 172, size: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !59, file: !34, line: 173, baseType: !31, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !55, file: !22, line: 119, baseType: !63, size: 192, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !64, line: 41, baseType: !65)
!64 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !64, line: 37, size: 192, elements: !66)
!66 = !{!67, !105}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !65, file: !64, line: 38, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !69, line: 29, baseType: !70)
!69 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !69, line: 17, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !69, line: 18, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !69, line: 18, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !73, file: !69, line: 19, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !77, line: 14, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !76, file: !77, line: 15, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !81, line: 44, baseType: !82)
!81 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !81, line: 14, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !81, line: 15, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !81, line: 15, size: 32, elements: !86)
!86 = !{!87, !88, !98}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !85, file: !81, line: 16, baseType: !58, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !81, line: 24, baseType: !89, size: 16)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !81, line: 24, size: 16, elements: !90)
!90 = !{!91, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !89, file: !81, line: 25, baseType: !92, size: 8)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !93, line: 17, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !95, line: 21, baseType: !96)
!95 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !89, file: !81, line: 26, baseType: !92, size: 8, offset: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !81, line: 28, baseType: !99, size: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !81, line: 28, size: 32, elements: !100)
!100 = !{!101, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !99, file: !81, line: 29, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !93, line: 19, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !95, line: 24, baseType: !35)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !99, file: !81, line: 30, baseType: !102, size: 16, offset: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !65, file: !64, line: 39, baseType: !106, size: 128, offset: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !34, line: 190, size: 128, elements: !107)
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !34, line: 191, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !34, line: 191, baseType: !109, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !23, file: !22, line: 153, baseType: !29, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !23, file: !22, line: 154, baseType: !29, size: 64, offset: 448)
!113 = !{!114, !115}
!114 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!115 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !117, line: 9, baseType: !17, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!120 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!121 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!122 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!123 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !125, line: 312, baseType: !17, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!128 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!129 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!130 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !132, line: 68, baseType: !17, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!133 = !{!134, !135, !136, !137, !138}
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!135 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!136 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!137 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!138 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !140, line: 1325, baseType: !17, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!142 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!143 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!144 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!145 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!146 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!147 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!148 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!149 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!150 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!151 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!152 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!153 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!154 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !156, line: 15, baseType: !17, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!159 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!160 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!161 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !163, line: 26, baseType: !17, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !169, line: 253, baseType: !17, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178}
!171 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!172 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!173 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!174 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!175 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!176 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!177 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!178 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !169, line: 158, baseType: !17, size: 32, elements: !180)
!180 = !{!181, !182, !183, !184}
!181 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!182 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!183 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!184 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !186, line: 45, baseType: !17, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!189 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!190 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !192, line: 487, baseType: !17, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!193 = !{!194, !195, !196, !197}
!194 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!195 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!196 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!197 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !199, line: 620, baseType: !17, size: 32, elements: !200)
!199 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!200 = !{!201, !202, !203, !204, !205}
!201 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!202 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!203 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!204 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!205 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !199, line: 597, baseType: !31, size: 32, elements: !207)
!207 = !{!208, !209, !210, !211, !212}
!208 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!209 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!210 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!211 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!212 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !214, line: 30, baseType: !17, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!215 = !{!216, !217, !218}
!216 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!217 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!218 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !192, line: 547, baseType: !17, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227}
!221 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!222 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!223 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!224 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!225 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!226 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!227 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !192, line: 564, baseType: !17, size: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!231 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !192, line: 577, baseType: !17, size: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!236 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !192, line: 503, baseType: !17, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243}
!240 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!241 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!242 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!243 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !245, line: 593, baseType: !31, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!246 = !{!247, !248, !249, !250, !251, !252}
!247 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!248 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!249 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!250 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!251 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!252 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !254, line: 2052, baseType: !17, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!255 = !{!256, !257}
!256 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!257 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !259, line: 54, baseType: !17, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "USRQUOTA", value: 0)
!262 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!263 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !265, line: 16, baseType: !17, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!266 = !{!267, !268, !269}
!267 = !DIEnumerator(name: "TT_NONE", value: 0)
!268 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!269 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !271, line: 51, baseType: !17, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!272 = !{!273, !274, !275, !276}
!273 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!274 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!275 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!276 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !278, line: 10, baseType: !17, size: 32, elements: !279)
!278 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!279 = !{!280, !281}
!280 = !DIEnumerator(name: "false", value: 0)
!281 = !DIEnumerator(name: "true", value: 1)
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !17, size: 32, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290}
!284 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!285 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!286 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!287 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!288 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!289 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!290 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!291 = !{!292, !29, !293, !295, !296, !297, !299, !31, !48, !302}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !34, line: 42, baseType: !48)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !17)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !301)
!301 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_pid_list", file: !304, line: 78, size: 16896, elements: !305)
!304 = !DIFile(filename: "kernel/trace/pid_list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca7ceba9dd4bbea3985e3aae225c7de1")
!305 = !{!306, !308, !6146, !6162, !6163, !6164, !6165}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !303, file: !304, line: 79, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !77, line: 23, baseType: !76)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "refill_irqwork", scope: !303, file: !304, line: 80, baseType: !309, size: 256, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !310, line: 17, size: 256, elements: !311)
!310 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!311 = !{!312, !329, !334}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !309, file: !310, line: 18, baseType: !313, size: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !314, line: 58, size: 128, elements: !315)
!314 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!315 = !{!316, !322, !327, !328}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !313, file: !314, line: 59, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !318, line: 60, size: 64, elements: !319)
!318 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !318, line: 61, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !314, line: 60, baseType: !323, size: 32, offset: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !314, line: 60, size: 32, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !323, file: !314, line: 61, baseType: !17, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !323, file: !314, line: 62, baseType: !58, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !313, file: !314, line: 65, baseType: !102, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !313, file: !314, line: 65, baseType: !102, size: 16, offset: 112)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !309, file: !310, line: 19, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !309, file: !310, line: 20, baseType: !335, size: 64, offset: 192)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !336, line: 16, size: 64, elements: !337)
!336 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !335, file: !336, line: 17, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !341, line: 746, size: 58368, elements: !342)
!341 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!342 = !{!343, !353, !354, !355, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !431, !442, !542, !546, !549, !580, !581, !582, !583, !594, !596, !597, !598, !599, !600, !601, !612, !613, !616, !617, !618, !619, !620, !621, !622, !623, !630, !631, !638, !639, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5343, !5349, !5350, !5351, !5352, !5353, !5354, !5357, !5364, !5369, !5372, !5375, !5378, !5410, !5608, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5646, !5647, !5648, !5657, !5665, !5666, !5667, !5668, !5669, !5674, !5675, !5676, !5679, !5680, !5683, !5686, !5689, !5697, !5700, !5701, !5787, !5788, !5789, !5790, !5791, !5797, !5798, !5799, !5800, !5801, !5802, !5805, !5808, !5809, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5852, !5853, !5859, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5871, !5943, !5945, !5946, !5947, !5948, !5949, !5950, !5965, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973, !5974, !5975, !5979, !5980, !5981}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !340, file: !341, line: 752, baseType: !344, size: 192)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !345, line: 56, size: 192, elements: !346)
!345 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!346 = !{!347, !348, !349, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !345, line: 57, baseType: !48, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !344, file: !345, line: 58, baseType: !48, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !344, file: !345, line: 59, baseType: !350, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !93, line: 21, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !95, line: 27, baseType: !17)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !344, file: !345, line: 61, baseType: !350, size: 32, offset: 160)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !340, file: !341, line: 754, baseType: !17, size: 32, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !340, file: !341, line: 767, baseType: !29, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !340, file: !341, line: 768, baseType: !356, size: 32, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !357, line: 113, baseType: !358)
!357 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !357, line: 111, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !358, file: !357, line: 112, baseType: !58, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !341, line: 770, baseType: !17, size: 32, offset: 352)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !340, file: !341, line: 771, baseType: !17, size: 32, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !340, file: !341, line: 774, baseType: !31, size: 32, offset: 416)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !340, file: !341, line: 775, baseType: !313, size: 128, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !340, file: !341, line: 776, baseType: !17, size: 32, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !340, file: !341, line: 777, baseType: !48, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !340, file: !341, line: 778, baseType: !339, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !340, file: !341, line: 787, baseType: !31, size: 32, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !340, file: !341, line: 788, baseType: !31, size: 32, offset: 800)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !340, file: !341, line: 790, baseType: !31, size: 32, offset: 832)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !340, file: !341, line: 792, baseType: !31, size: 32, offset: 864)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !340, file: !341, line: 793, baseType: !31, size: 32, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !340, file: !341, line: 794, baseType: !31, size: 32, offset: 928)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !340, file: !341, line: 795, baseType: !17, size: 32, offset: 960)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !340, file: !341, line: 797, baseType: !376, size: 2048, offset: 1024)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !341, line: 551, size: 2048, elements: !377)
!377 = !{!378, !383, !391, !395, !396, !397, !398, !399, !400, !401, !402, !405, !406, !407, !408, !410, !413, !414, !415}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !376, file: !341, line: 553, baseType: !379, size: 128)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !341, line: 411, size: 128, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !379, file: !341, line: 412, baseType: !48, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !379, file: !341, line: 413, baseType: !350, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !376, file: !341, line: 554, baseType: !384, size: 192, align: 64, offset: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !385, line: 5, size: 192, align: 64, elements: !386)
!385 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!386 = !{!387, !388, !390}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !384, file: !385, line: 6, baseType: !48, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !384, file: !385, line: 7, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !384, file: !385, line: 8, baseType: !389, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !376, file: !341, line: 555, baseType: !392, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !93, line: 23, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !95, line: 31, baseType: !394)
!394 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !376, file: !341, line: 556, baseType: !392, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !376, file: !341, line: 558, baseType: !106, size: 128, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !376, file: !341, line: 559, baseType: !17, size: 32, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !376, file: !341, line: 561, baseType: !392, size: 64, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !376, file: !341, line: 562, baseType: !392, size: 64, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !376, file: !341, line: 563, baseType: !392, size: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !376, file: !341, line: 564, baseType: !392, size: 64, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !376, file: !341, line: 565, baseType: !403, size: 64, offset: 896)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !93, line: 22, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !95, line: 30, baseType: !52)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !376, file: !341, line: 566, baseType: !392, size: 64, offset: 960)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !376, file: !341, line: 568, baseType: !392, size: 64, offset: 1024)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !376, file: !341, line: 571, baseType: !31, size: 32, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !376, file: !341, line: 572, baseType: !409, size: 64, offset: 1152)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !376, file: !341, line: 574, baseType: !411, size: 64, offset: 1216)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !341, line: 49, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !376, file: !341, line: 576, baseType: !411, size: 64, offset: 1280)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !376, file: !341, line: 578, baseType: !48, size: 64, offset: 1344)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !376, file: !341, line: 588, baseType: !416, size: 512, align: 512, offset: 1536)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !341, line: 497, size: 512, align: 512, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !416, file: !341, line: 498, baseType: !392, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !416, file: !341, line: 499, baseType: !392, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !416, file: !341, line: 500, baseType: !392, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !416, file: !341, line: 501, baseType: !350, size: 32, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !416, file: !341, line: 502, baseType: !350, size: 32, offset: 224)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !416, file: !341, line: 503, baseType: !48, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !416, file: !341, line: 504, baseType: !48, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !416, file: !341, line: 505, baseType: !48, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !416, file: !341, line: 506, baseType: !427, size: 64, align: 64, offset: 448)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !341, line: 445, size: 64, align: 64, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !427, file: !341, line: 446, baseType: !17, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !427, file: !341, line: 447, baseType: !17, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !340, file: !341, line: 798, baseType: !432, size: 384, offset: 3072)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !341, line: 592, size: 384, elements: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !440}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !432, file: !341, line: 593, baseType: !106, size: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !432, file: !341, line: 594, baseType: !48, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !432, file: !341, line: 595, baseType: !48, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !432, file: !341, line: 596, baseType: !17, size: 32, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !432, file: !341, line: 597, baseType: !35, size: 16, offset: 288)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !432, file: !341, line: 598, baseType: !35, size: 16, offset: 304)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !432, file: !341, line: 600, baseType: !441, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !340, file: !341, line: 799, baseType: !443, size: 1792, offset: 3456)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !341, line: 610, size: 1792, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !539, !540}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !443, file: !341, line: 611, baseType: !384, size: 192, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !443, file: !341, line: 618, baseType: !392, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !443, file: !341, line: 619, baseType: !392, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !443, file: !341, line: 620, baseType: !392, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !443, file: !341, line: 621, baseType: !392, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !443, file: !341, line: 622, baseType: !392, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !443, file: !341, line: 629, baseType: !403, size: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !443, file: !341, line: 630, baseType: !392, size: 64, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !341, line: 631, baseType: !17, size: 32, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !443, file: !341, line: 653, baseType: !17, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !443, file: !341, line: 654, baseType: !17, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !443, file: !341, line: 655, baseType: !17, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !443, file: !341, line: 656, baseType: !17, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !443, file: !341, line: 662, baseType: !459, size: 512, offset: 704)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !16, line: 118, size: 512, elements: !460)
!460 = !{!461, !469, !470, !475, !535, !536, !537, !538}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !16, line: 119, baseType: !462, size: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !463, line: 9, size: 256, elements: !464)
!463 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !462, file: !463, line: 10, baseType: !384, size: 192, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !462, file: !463, line: 11, baseType: !467, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !468, line: 29, baseType: !403)
!468 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !459, file: !16, line: 120, baseType: !467, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !459, file: !16, line: 121, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!15, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !459, file: !16, line: 122, baseType: !476, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !16, line: 159, size: 512, align: 512, elements: !478)
!478 = !{!479, !504, !505, !508, !518, !519, !530, !534}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !477, file: !16, line: 160, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !16, line: 215, size: 4608, align: 512, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !481, file: !16, line: 216, baseType: !307, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !481, file: !16, line: 217, baseType: !17, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !481, file: !16, line: 218, baseType: !17, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !481, file: !16, line: 219, baseType: !17, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !481, file: !16, line: 220, baseType: !17, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !481, file: !16, line: 221, baseType: !17, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !481, file: !16, line: 222, baseType: !17, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !481, file: !16, line: 223, baseType: !17, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !481, file: !16, line: 224, baseType: !17, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !481, file: !16, line: 226, baseType: !17, size: 32, offset: 160)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !481, file: !16, line: 227, baseType: !35, size: 16, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !481, file: !16, line: 228, baseType: !35, size: 16, offset: 208)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !481, file: !16, line: 229, baseType: !17, size: 32, offset: 224)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !481, file: !16, line: 235, baseType: !467, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !481, file: !16, line: 236, baseType: !474, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !481, file: !16, line: 237, baseType: !467, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !481, file: !16, line: 238, baseType: !474, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !481, file: !16, line: 239, baseType: !501, size: 4096, align: 512, offset: 512)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 4096, align: 512, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 8)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !477, file: !16, line: 161, baseType: !17, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !477, file: !16, line: 162, baseType: !506, size: 32, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !34, line: 32, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !46, line: 96, baseType: !31)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !477, file: !16, line: 163, baseType: !509, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !510, line: 274, baseType: !511)
!510 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !510, line: 274, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !511, file: !510, line: 274, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !510, line: 69, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !510, line: 64, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !515, file: !510, line: 65, baseType: !17, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !477, file: !16, line: 164, baseType: !474, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !477, file: !16, line: 165, baseType: !520, size: 128, offset: 256)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !463, line: 14, size: 128, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !520, file: !463, line: 15, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !385, line: 26, size: 128, elements: !524)
!524 = !{!525, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !523, file: !385, line: 27, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !385, line: 12, size: 64, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !526, file: !385, line: 13, baseType: !389, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !523, file: !385, line: 28, baseType: !389, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !477, file: !16, line: 166, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!467}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !477, file: !16, line: 167, baseType: !467, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !459, file: !16, line: 123, baseType: !92, size: 8, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !459, file: !16, line: 124, baseType: !92, size: 8, offset: 456)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !459, file: !16, line: 125, baseType: !92, size: 8, offset: 464)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !459, file: !16, line: 126, baseType: !92, size: 8, offset: 472)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !443, file: !341, line: 671, baseType: !459, size: 512, offset: 1216)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !443, file: !341, line: 679, baseType: !541, size: 64, offset: 1728)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !340, file: !341, line: 800, baseType: !543, size: 64, offset: 5248)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !341, line: 800, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !340, file: !341, line: 809, baseType: !547, size: 64, offset: 5312)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !341, line: 70, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !340, file: !341, line: 825, baseType: !550, size: 2048, align: 512, offset: 5632)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !341, line: 509, size: 2048, align: 512, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !550, file: !341, line: 511, baseType: !392, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !550, file: !341, line: 512, baseType: !392, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !550, file: !341, line: 513, baseType: !392, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !550, file: !341, line: 514, baseType: !392, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !550, file: !341, line: 515, baseType: !392, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !550, file: !341, line: 516, baseType: !392, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !550, file: !341, line: 518, baseType: !392, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !550, file: !341, line: 519, baseType: !392, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !550, file: !341, line: 520, baseType: !403, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !550, file: !341, line: 522, baseType: !392, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !550, file: !341, line: 523, baseType: !392, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !550, file: !341, line: 524, baseType: !403, size: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !550, file: !341, line: 526, baseType: !403, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !550, file: !341, line: 527, baseType: !392, size: 64, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !550, file: !341, line: 529, baseType: !392, size: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !550, file: !341, line: 530, baseType: !392, size: 64, offset: 960)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !550, file: !341, line: 531, baseType: !392, size: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !550, file: !341, line: 532, baseType: !392, size: 64, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !550, file: !341, line: 533, baseType: !392, size: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !550, file: !341, line: 535, baseType: !392, size: 64, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !550, file: !341, line: 536, baseType: !392, size: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !550, file: !341, line: 537, baseType: !392, size: 64, offset: 1344)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !550, file: !341, line: 538, baseType: !392, size: 64, offset: 1408)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !550, file: !341, line: 539, baseType: !392, size: 64, offset: 1472)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !550, file: !341, line: 540, baseType: !392, size: 64, offset: 1536)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !550, file: !341, line: 541, baseType: !392, size: 64, offset: 1600)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !550, file: !341, line: 542, baseType: !392, size: 64, offset: 1664)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !550, file: !341, line: 543, baseType: !392, size: 64, offset: 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !340, file: !341, line: 833, baseType: !17, size: 32, offset: 7680)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !340, file: !341, line: 836, baseType: !17, size: 32, offset: 7712)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !340, file: !341, line: 837, baseType: !31, size: 32, offset: 7744)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !340, file: !341, line: 838, baseType: !584, size: 64, offset: 7808)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !587, line: 19, baseType: !588)
!587 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !587, line: 19, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !588, file: !587, line: 19, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 1)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !340, file: !341, line: 839, baseType: !595, size: 64, offset: 7872)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !340, file: !341, line: 840, baseType: !586, size: 64, offset: 7936)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !340, file: !341, line: 841, baseType: !29, size: 64, offset: 8000)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !340, file: !341, line: 843, baseType: !35, size: 16, offset: 8064)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !340, file: !341, line: 845, baseType: !35, size: 16, offset: 8080)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !340, file: !341, line: 848, baseType: !31, size: 32, offset: 8096)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !340, file: !341, line: 849, baseType: !602, size: 32, offset: 8128)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !341, line: 718, size: 32, elements: !603)
!603 = !{!604, !611}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !602, file: !341, line: 724, baseType: !605, size: 32)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !602, file: !341, line: 719, size: 32, elements: !606)
!606 = !{!607, !608, !609, !610}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !605, file: !341, line: 720, baseType: !92, size: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !605, file: !341, line: 721, baseType: !92, size: 8, offset: 8)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !605, file: !341, line: 722, baseType: !92, size: 8, offset: 16)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !605, file: !341, line: 723, baseType: !92, size: 8, offset: 24)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !602, file: !341, line: 725, baseType: !350, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !340, file: !341, line: 850, baseType: !106, size: 128, offset: 8192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !340, file: !341, line: 851, baseType: !614, size: 64, offset: 8320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !341, line: 60, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !340, file: !341, line: 855, baseType: !48, size: 64, offset: 8384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !340, file: !341, line: 856, baseType: !92, size: 8, offset: 8448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !340, file: !341, line: 857, baseType: !92, size: 8, offset: 8456)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !340, file: !341, line: 858, baseType: !31, size: 32, offset: 8480)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !340, file: !341, line: 859, baseType: !106, size: 128, offset: 8512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !340, file: !341, line: 860, baseType: !31, size: 32, offset: 8640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !340, file: !341, line: 861, baseType: !106, size: 128, offset: 8704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !340, file: !341, line: 873, baseType: !624, size: 256, offset: 8832)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !341, line: 376, size: 256, elements: !625)
!625 = !{!626, !627, !628, !629}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !624, file: !341, line: 381, baseType: !48, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !624, file: !341, line: 384, baseType: !394, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !624, file: !341, line: 389, baseType: !394, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !624, file: !341, line: 392, baseType: !394, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !340, file: !341, line: 875, baseType: !106, size: 128, offset: 9088)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !340, file: !341, line: 877, baseType: !632, size: 320, offset: 9216)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !633, line: 86, size: 320, elements: !634)
!633 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!634 = !{!635, !636, !637}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !632, file: !633, line: 87, baseType: !31, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !632, file: !633, line: 88, baseType: !106, size: 128, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !632, file: !633, line: 89, baseType: !106, size: 128, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !340, file: !341, line: 878, baseType: !384, size: 192, align: 64, offset: 9536)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !340, file: !341, line: 881, baseType: !640, size: 64, offset: 9728)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !140, line: 733, size: 10240, elements: !642)
!642 = !{!643, !5216}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !140, line: 734, baseType: !644, size: 10240)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !140, line: 734, size: 10240, elements: !645)
!645 = !{!646, !650, !664, !5095, !5096, !5097, !5098, !5099, !5100, !5107, !5108, !5109, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5148, !5150, !5153, !5196, !5197, !5198, !5201, !5202, !5203, !5206, !5207, !5208, !5214, !5215}
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !140, line: 739, baseType: !647, size: 512, align: 512)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !140, line: 739, size: 512, align: 512, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !647, file: !140, line: 747, baseType: !58, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !644, file: !140, line: 750, baseType: !651, size: 128, offset: 512)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !652, line: 218, size: 128, elements: !653)
!652 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!653 = !{!654, !662, !663}
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 219, baseType: !655, size: 32)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 219, size: 32, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !655, file: !652, line: 220, baseType: !68, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !655, file: !652, line: 221, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !652, line: 197, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !652, line: 197, elements: !661)
!661 = !{}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !651, file: !652, line: 223, baseType: !17, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !651, file: !652, line: 224, baseType: !29, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !644, file: !140, line: 752, baseType: !665, size: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!48, !668, !48, !48, !48, !48}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !254, line: 994, size: 1856, align: 64, elements: !670)
!670 = !{!671, !685, !686, !688, !695, !707, !708, !709, !1089, !1167, !1176, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094}
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !254, line: 995, baseType: !672, size: 128)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !254, line: 995, size: 128, elements: !673)
!673 = !{!674, !675, !684}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !672, file: !254, line: 996, baseType: !317, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !672, file: !254, line: 997, baseType: !676, size: 128, align: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !34, line: 232, size: 128, align: 64, elements: !677)
!677 = !{!678, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !34, line: 233, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !676, file: !34, line: 234, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !679}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !672, file: !254, line: 998, baseType: !17, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !669, file: !254, line: 1005, baseType: !68, size: 32, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !669, file: !254, line: 1006, baseType: !687, size: 32, offset: 160)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !34, line: 156, baseType: !17)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !669, file: !254, line: 1007, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !690, line: 13, baseType: !691)
!690 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !34, line: 181, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 179, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !692, file: !34, line: 180, baseType: !403, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !669, file: !254, line: 1008, baseType: !696, size: 256, offset: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !697, line: 66, size: 256, elements: !698)
!697 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!698 = !{!699, !700, !701, !706}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !696, file: !697, line: 67, baseType: !689, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !696, file: !697, line: 68, baseType: !307, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !696, file: !697, line: 70, baseType: !702, size: 32, offset: 96)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !703, line: 15, size: 32, elements: !704)
!703 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !702, file: !703, line: 20, baseType: !58, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !696, file: !697, line: 72, baseType: !106, size: 128, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !669, file: !254, line: 1009, baseType: !50, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !669, file: !254, line: 1010, baseType: !17, size: 32, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !669, file: !254, line: 1011, baseType: !710, size: 256, offset: 640)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !254, line: 948, size: 256, elements: !711)
!711 = !{!712, !735, !1085, !1086, !1087, !1088}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !710, file: !254, line: 949, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !714, line: 34, baseType: !715)
!714 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !714, line: 25, size: 64, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !715, file: !714, line: 26, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !719, line: 27, baseType: !720)
!719 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !719, line: 13, size: 64, elements: !721)
!721 = !{!722, !734}
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !719, line: 14, baseType: !723, size: 32)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !719, line: 14, size: 32, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !723, file: !719, line: 15, baseType: !58, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !719, line: 16, baseType: !727, size: 32)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !719, line: 16, size: 32, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !727, file: !719, line: 18, baseType: !92, size: 8)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !727, file: !719, line: 19, baseType: !731, size: 24, offset: 8)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 24, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 3)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !720, file: !719, line: 26, baseType: !80, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !710, file: !254, line: 950, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !117, line: 59, size: 768, elements: !738)
!738 = !{!739, !740, !741, !742, !755, !756, !757, !758}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !737, file: !117, line: 61, baseType: !356, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !737, file: !117, line: 62, baseType: !17, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !737, file: !117, line: 63, baseType: !68, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !737, file: !117, line: 65, baseType: !743, size: 256, offset: 128)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 256, elements: !753)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !34, line: 194, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !744, file: !34, line: 195, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !34, line: 198, size: 128, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !34, line: 199, baseType: !747, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !748, file: !34, line: 199, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!753 = !{!754}
!754 = !DISubrange(count: 4)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !737, file: !117, line: 66, baseType: !744, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !737, file: !117, line: 68, baseType: !63, size: 192, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !737, file: !117, line: 69, baseType: !676, size: 128, align: 64, offset: 640)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !737, file: !117, line: 70, baseType: !759, offset: 768)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, elements: !1083)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !117, line: 54, size: 128, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !760, file: !117, line: 55, baseType: !31, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !760, file: !117, line: 56, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !766, line: 26, size: 1152, elements: !767)
!766 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!767 = !{!768, !781, !782, !783, !784, !788, !789, !790, !793, !1079, !1080, !1081, !1082}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !765, file: !766, line: 27, baseType: !769, size: 192)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !770, line: 19, size: 192, elements: !771)
!770 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!771 = !{!772, !779, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !769, file: !770, line: 20, baseType: !773, size: 128)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !774, line: 296, size: 128, elements: !775)
!774 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !773, file: !774, line: 297, baseType: !68, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !773, file: !774, line: 299, baseType: !295, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !773, file: !774, line: 300, baseType: !29, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !769, file: !770, line: 21, baseType: !17, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !769, file: !770, line: 22, baseType: !17, size: 32, offset: 160)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !765, file: !766, line: 28, baseType: !676, size: 128, align: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !765, file: !766, line: 29, baseType: !17, size: 32, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !765, file: !766, line: 30, baseType: !339, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !765, file: !766, line: 31, baseType: !785, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !787, line: 325, flags: DIFlagFwdDecl)
!787 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !765, file: !766, line: 32, baseType: !17, size: 32, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !765, file: !766, line: 33, baseType: !764, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !765, file: !766, line: 35, baseType: !791, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !766, line: 17, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !765, file: !766, line: 37, baseType: !794, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !796, line: 68, size: 4800, elements: !797)
!796 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!797 = !{!798, !820, !821, !822, !823, !824, !832, !839, !850, !851, !854, !855, !977, !978, !990, !1060, !1061, !1075, !1077}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !795, file: !796, line: 69, baseType: !799, size: 576)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !796, line: 23, size: 576, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !799, file: !796, line: 24, baseType: !350, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !796, line: 25, baseType: !803, size: 512, offset: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !796, line: 25, size: 512, elements: !804)
!804 = !{!805, !814}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !803, file: !796, line: 26, baseType: !806, size: 480)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 480, elements: !812)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !796, line: 17, size: 96, elements: !808)
!808 = !{!809, !810, !811}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !807, file: !796, line: 18, baseType: !350, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !807, file: !796, line: 19, baseType: !350, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !807, file: !796, line: 20, baseType: !350, size: 32, offset: 64)
!812 = !{!813}
!813 = !DISubrange(count: 5)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !796, line: 27, baseType: !815, size: 128)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !796, line: 27, size: 128, elements: !816)
!816 = !{!817, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !815, file: !796, line: 28, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !815, file: !796, line: 29, baseType: !818, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !795, file: !796, line: 70, baseType: !799, size: 576, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !795, file: !796, line: 71, baseType: !799, size: 576, offset: 1152)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !795, file: !796, line: 72, baseType: !794, size: 64, offset: 1728)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !795, file: !796, line: 73, baseType: !31, size: 32, offset: 1792)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !795, file: !796, line: 74, baseType: !825, size: 32, offset: 1824)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !826, line: 23, baseType: !827)
!826 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !826, line: 21, size: 32, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !827, file: !826, line: 22, baseType: !830, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !34, line: 37, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !46, line: 49, baseType: !17)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !795, file: !796, line: 75, baseType: !833, size: 32, offset: 1856)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !826, line: 28, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !826, line: 26, size: 32, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !834, file: !826, line: 27, baseType: !837, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !34, line: 38, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !46, line: 50, baseType: !17)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !795, file: !796, line: 76, baseType: !840, size: 192, offset: 1920)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !841, line: 9, size: 192, elements: !842)
!841 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!842 = !{!843, !844, !848, !849}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !840, file: !841, line: 10, baseType: !689, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !840, file: !841, line: 11, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !841, line: 7, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !840, file: !841, line: 12, baseType: !17, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !840, file: !841, line: 13, baseType: !356, size: 32, offset: 160)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !796, line: 77, baseType: !48, size: 64, offset: 2112)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !795, file: !796, line: 80, baseType: !852, size: 8, offset: 2176)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !853)
!853 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !795, file: !796, line: 88, baseType: !106, size: 128, offset: 2240)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !795, file: !796, line: 89, baseType: !856, size: 64, offset: 2368)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !858, line: 195, size: 1728, elements: !859)
!858 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!859 = !{!860, !861, !866, !871, !880, !883, !884, !891, !892, !893, !894, !897, !898, !899, !901, !902, !941, !962}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !857, file: !858, line: 196, baseType: !356, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !857, file: !858, line: 197, baseType: !862, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !858, line: 28, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !34, line: 104, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !93, line: 20, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !95, line: 26, baseType: !31)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 198, baseType: !867, size: 192, offset: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 198, size: 192, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !867, file: !858, line: 199, baseType: !106, size: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !867, file: !858, line: 200, baseType: !384, size: 192, align: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !857, file: !858, line: 205, baseType: !872, size: 320, offset: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !873, line: 48, size: 320, elements: !874)
!873 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!874 = !{!875, !876, !877, !878, !879}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !872, file: !873, line: 49, baseType: !689, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !872, file: !873, line: 55, baseType: !689, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !872, file: !873, line: 57, baseType: !702, size: 32, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !872, file: !873, line: 59, baseType: !307, size: 32, offset: 160)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !872, file: !873, line: 60, baseType: !106, size: 128, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !857, file: !858, line: 206, baseType: !881, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !858, line: 206, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !857, file: !858, line: 207, baseType: !29, size: 64, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 208, baseType: !885, size: 64, offset: 704)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 208, size: 64, elements: !886)
!886 = !{!887, !890}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !885, file: !858, line: 209, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !889, line: 8, baseType: !404)
!889 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !885, file: !858, line: 210, baseType: !888, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !857, file: !858, line: 212, baseType: !888, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !857, file: !858, line: 213, baseType: !825, size: 32, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !857, file: !858, line: 214, baseType: !833, size: 32, offset: 864)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !857, file: !858, line: 215, baseType: !895, size: 32, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !858, line: 31, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 110, baseType: !350)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !857, file: !858, line: 216, baseType: !35, size: 16, offset: 928)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !857, file: !858, line: 217, baseType: !35, size: 16, offset: 944)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !857, file: !858, line: 221, baseType: !900, size: 16, offset: 960)
!900 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !858, line: 228, baseType: !48, size: 64, offset: 1024)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 245, baseType: !903, size: 320, offset: 1088)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 245, size: 320, elements: !904)
!904 = !{!905, !932}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !903, file: !858, line: 246, baseType: !906, size: 320)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !858, line: 114, size: 320, elements: !907)
!907 = !{!908, !909, !921, !924, !931}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !906, file: !858, line: 116, baseType: !48, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !858, line: 117, baseType: !910, size: 64, offset: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !858, line: 117, size: 64, elements: !911)
!911 = !{!912, !920}
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !858, line: 118, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !858, line: 118, size: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !913, file: !858, line: 120, baseType: !102, size: 16)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !913, file: !858, line: 121, baseType: !917, size: 48, offset: 16)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 6)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !910, file: !858, line: 127, baseType: !48, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !906, file: !858, line: 129, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !858, line: 102, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !906, file: !858, line: 130, baseType: !925, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !858, line: 108, size: 192, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !926, file: !858, line: 109, baseType: !676, size: 128, align: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !926, file: !858, line: 110, baseType: !356, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !926, file: !858, line: 111, baseType: !852, size: 8, offset: 160)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !906, file: !858, line: 131, baseType: !26, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !858, line: 247, baseType: !933, size: 320)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !903, file: !858, line: 247, size: 320, elements: !934)
!934 = !{!935, !936, !937, !938, !939}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !933, file: !858, line: 248, baseType: !48, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !933, file: !858, line: 249, baseType: !48, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !933, file: !858, line: 250, baseType: !922, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !933, file: !858, line: 251, baseType: !925, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !933, file: !858, line: 252, baseType: !940, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !858, line: 260, baseType: !942, size: 256, offset: 1408)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !858, line: 260, size: 256, elements: !943)
!943 = !{!944, !950}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !942, file: !858, line: 261, baseType: !945, size: 256)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !858, line: 134, size: 256, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !945, file: !858, line: 135, baseType: !29, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !945, file: !858, line: 136, baseType: !949, size: 256)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !753)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !858, line: 262, baseType: !951, size: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !858, line: 262, size: 256, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !951, file: !858, line: 264, baseType: !106, size: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !951, file: !858, line: 265, baseType: !955, size: 128, offset: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !956, line: 22, size: 128, elements: !957)
!956 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!957 = !{!958, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !955, file: !956, line: 23, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !956, line: 23, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !955, file: !956, line: 24, baseType: !48, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !857, file: !858, line: 280, baseType: !963, size: 64, offset: 1664)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !858, line: 176, size: 192, elements: !965)
!965 = !{!966, !975, !976}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !964, file: !858, line: 177, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !858, line: 171, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!31, !856, !971, !973, !856}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !964, file: !858, line: 178, baseType: !856, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !964, file: !858, line: 179, baseType: !922, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !795, file: !796, line: 90, baseType: !872, size: 320, offset: 2432)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !795, file: !796, line: 97, baseType: !979, size: 256, offset: 2752)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !980, line: 98, size: 256, elements: !981)
!980 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !979, file: !980, line: 99, baseType: !689, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !979, file: !980, line: 100, baseType: !106, size: 128, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !979, file: !980, line: 101, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !980, line: 21, baseType: !986)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !989}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !795, file: !796, line: 99, baseType: !991, size: 768, offset: 3008)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !22, line: 199, size: 768, elements: !992)
!992 = !{!993, !998}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !991, file: !22, line: 200, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!31, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !991, file: !22, line: 201, baseType: !999, size: 704, offset: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !22, line: 193, size: 704, elements: !1000)
!1000 = !{!1001, !1059}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !999, file: !22, line: 195, baseType: !1002, size: 640)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !22, line: 173, size: 640, elements: !1003)
!1003 = !{!1004, !1016, !1028, !1029, !1049, !1050, !1052, !1058}
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !22, line: 174, baseType: !1005, size: 192)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !22, line: 174, size: 192, elements: !1006)
!1006 = !{!1007, !1015}
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !22, line: 175, baseType: !1008, size: 192)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !22, line: 175, size: 192, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1008, file: !22, line: 176, baseType: !42, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1008, file: !22, line: 177, baseType: !31, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1008, file: !22, line: 178, baseType: !31, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1008, file: !22, line: 179, baseType: !31, size: 32, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1008, file: !22, line: 180, baseType: !31, size: 32, offset: 160)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1005, file: !22, line: 182, baseType: !676, size: 128, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1002, file: !22, line: 184, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1019, line: 26, size: 256, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1018, file: !1019, line: 27, baseType: !17, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1018, file: !1019, line: 28, baseType: !1023, size: 192, offset: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1024, line: 43, size: 192, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1023, file: !1024, line: 44, baseType: !307, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1023, file: !1024, line: 45, baseType: !106, size: 128, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1002, file: !22, line: 185, baseType: !42, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1002, file: !22, line: 186, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !22, line: 204, size: 960, elements: !1032)
!1032 = !{!1033, !1034, !1038, !1045}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1031, file: !22, line: 205, baseType: !991, size: 768)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1031, file: !22, line: 206, baseType: !1035, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!997, !1030}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1031, file: !22, line: 207, baseType: !1039, size: 64, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1031, file: !22, line: 209, baseType: !1046, size: 64, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!31, !1042, !42}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1002, file: !22, line: 187, baseType: !997, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1002, file: !22, line: 188, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1002, file: !22, line: 189, baseType: !1053, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !22, line: 157, size: 256, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1054, file: !22, line: 158, baseType: !384, size: 192, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1054, file: !22, line: 159, baseType: !1042, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1002, file: !22, line: 190, baseType: !744, size: 64, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !999, file: !22, line: 196, baseType: !526, size: 64, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !795, file: !796, line: 100, baseType: !1042, size: 64, offset: 3776)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !795, file: !796, line: 102, baseType: !1062, size: 64, offset: 3840)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !796, line: 107, size: 1152, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1073}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1063, file: !796, line: 108, baseType: !748, size: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1063, file: !796, line: 109, baseType: !794, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1063, file: !796, line: 110, baseType: !825, size: 32, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1063, file: !796, line: 111, baseType: !58, size: 32, offset: 224)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1063, file: !796, line: 112, baseType: !1070, size: 640, offset: 256)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 640, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 10)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1063, file: !796, line: 113, baseType: !1074, size: 256, offset: 896)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 256, elements: !753)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !795, file: !796, line: 103, baseType: !1076, size: 640, offset: 3904)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 640, elements: !1071)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !795, file: !796, line: 104, baseType: !1078, size: 256, offset: 4544)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !753)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !765, file: !766, line: 38, baseType: !1062, size: 64, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !765, file: !766, line: 39, baseType: !31, size: 32, offset: 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !765, file: !766, line: 40, baseType: !840, size: 192, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !765, file: !766, line: 42, baseType: !31, size: 32, offset: 1088)
!1083 = !{!1084}
!1084 = !DISubrange(count: -1)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !710, file: !254, line: 951, baseType: !116, size: 32, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !710, file: !254, line: 952, baseType: !825, size: 32, offset: 160)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !710, file: !254, line: 952, baseType: !825, size: 32, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !710, file: !254, line: 953, baseType: !31, size: 32, offset: 224)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !669, file: !254, line: 1012, baseType: !1090, size: 64, offset: 896)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1093, line: 110, size: 1472, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1152, !1153, !1154, !1162}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1092, file: !1093, line: 111, baseType: !689, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1092, file: !1093, line: 112, baseType: !825, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1092, file: !1093, line: 113, baseType: !833, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1092, file: !1093, line: 114, baseType: !825, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1092, file: !1093, line: 115, baseType: !833, size: 32, offset: 160)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1092, file: !1093, line: 116, baseType: !825, size: 32, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1092, file: !1093, line: 117, baseType: !833, size: 32, offset: 224)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1092, file: !1093, line: 118, baseType: !825, size: 32, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1092, file: !1093, line: 119, baseType: !833, size: 32, offset: 288)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1092, file: !1093, line: 120, baseType: !17, size: 32, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1092, file: !1093, line: 121, baseType: !1106, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1107, line: 24, baseType: !1108)
!1107 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1107, line: 24, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1108, file: !1107, line: 24, baseType: !392, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1092, file: !1093, line: 122, baseType: !1106, size: 64, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1092, file: !1093, line: 123, baseType: !1106, size: 64, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1092, file: !1093, line: 124, baseType: !1106, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1092, file: !1093, line: 125, baseType: !1106, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1092, file: !1093, line: 127, baseType: !96, size: 8, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1092, file: !1093, line: 129, baseType: !856, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1092, file: !1093, line: 130, baseType: !856, size: 64, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1092, file: !1093, line: 131, baseType: !856, size: 64, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1092, file: !1093, line: 132, baseType: !856, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1092, file: !1093, line: 135, baseType: !29, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1092, file: !1093, line: 137, baseType: !1122, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1124, line: 14, size: 1088, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1125 = !{!1126, !1127, !1136, !1137, !1138, !1139, !1140, !1141}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1123, file: !1124, line: 15, baseType: !356, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1123, file: !1124, line: 17, baseType: !1128, size: 320, offset: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1129, line: 22, size: 320, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1128, file: !1129, line: 23, baseType: !307, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1128, file: !1129, line: 24, baseType: !403, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1128, file: !1129, line: 26, baseType: !106, size: 128, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1128, file: !1129, line: 28, baseType: !1135, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1123, file: !1124, line: 19, baseType: !48, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1123, file: !1124, line: 20, baseType: !689, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1123, file: !1124, line: 23, baseType: !748, size: 128, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1123, file: !1124, line: 24, baseType: !825, size: 32, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1123, file: !1124, line: 29, baseType: !689, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1123, file: !1124, line: 36, baseType: !1142, size: 320, offset: 768)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1143, line: 15, size: 320, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1142, file: !1143, line: 16, baseType: !307, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1142, file: !1143, line: 18, baseType: !31, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1142, file: !1143, line: 19, baseType: !31, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1142, file: !1143, line: 20, baseType: !31, size: 32, offset: 96)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1142, file: !1143, line: 21, baseType: !31, size: 32, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1142, file: !1143, line: 22, baseType: !48, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1142, file: !1143, line: 23, baseType: !48, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1092, file: !1093, line: 138, baseType: !794, size: 64, offset: 1152)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1092, file: !1093, line: 139, baseType: !1062, size: 64, offset: 1216)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1092, file: !1093, line: 140, baseType: !1155, size: 64, offset: 1280)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1093, line: 25, size: 64, elements: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1156, file: !1093, line: 26, baseType: !58, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1156, file: !1093, line: 27, baseType: !31, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1156, file: !1093, line: 28, baseType: !1161, offset: 64)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, elements: !1083)
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1093, line: 142, baseType: !1163, size: 128, offset: 1344)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !1093, line: 142, size: 128, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1163, file: !1093, line: 143, baseType: !31, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1163, file: !1093, line: 144, baseType: !676, size: 128, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !669, file: !254, line: 1013, baseType: !1168, size: 256, offset: 960)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !254, line: 970, size: 256, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1168, file: !254, line: 971, baseType: !48, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1168, file: !254, line: 972, baseType: !17, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1168, file: !254, line: 973, baseType: !17, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1168, file: !254, line: 974, baseType: !17, size: 32, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1168, file: !254, line: 975, baseType: !17, size: 32, offset: 160)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1168, file: !254, line: 976, baseType: !50, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !669, file: !254, line: 1014, baseType: !1177, size: 128, offset: 1216)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1178, line: 8, size: 128, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1179 = !{!1180, !5085}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1177, file: !1178, line: 9, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1183, line: 70, size: 256, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1184 = !{!1185, !5082, !5083, !5084}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1182, file: !1183, line: 71, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1188, line: 82, size: 1536, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1189 = !{!1190, !1191, !1196, !1204, !1205, !1220, !5051, !5052, !5065, !5066, !5067, !5068, !5069, !5074, !5075, !5076}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1187, file: !1188, line: 84, baseType: !17, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1187, file: !1188, line: 85, baseType: !1192, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !510, line: 275, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !510, line: 275, size: 32, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1193, file: !510, line: 275, baseType: !514, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1187, file: !1188, line: 86, baseType: !1197, size: 128, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1198, line: 38, size: 128, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1199 = !{!1200, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1197, file: !1198, line: 39, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1197, file: !1198, line: 39, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1187, file: !1188, line: 87, baseType: !1186, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1187, file: !1188, line: 88, baseType: !1206, size: 128, offset: 256)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1188, line: 49, size: 128, elements: !1207)
!1207 = !{!1208, !1217}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !1188, line: 50, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1206, file: !1188, line: 50, size: 64, elements: !1210)
!1210 = !{!1211, !1216}
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1188, line: 51, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1209, file: !1188, line: 51, size: 64, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1212, file: !1188, line: 52, baseType: !350, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1212, file: !1188, line: 52, baseType: !350, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1209, file: !1188, line: 54, baseType: !392, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1206, file: !1188, line: 56, baseType: !1218, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1187, file: !1188, line: 89, baseType: !1221, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !254, line: 641, size: 4800, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1233, !1234, !1421, !4868, !4869, !4870, !4871, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !5033, !5036, !5037, !5038, !5047, !5048, !5049, !5050}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1222, file: !254, line: 642, baseType: !33, size: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1222, file: !254, line: 643, baseType: !35, size: 16, offset: 16)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1222, file: !254, line: 644, baseType: !825, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1222, file: !254, line: 645, baseType: !106, size: 128, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1222, file: !254, line: 646, baseType: !833, size: 32, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1222, file: !254, line: 647, baseType: !17, size: 32, offset: 224)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1222, file: !254, line: 650, baseType: !1231, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !254, line: 607, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1222, file: !254, line: 651, baseType: !1231, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1222, file: !254, line: 654, baseType: !1235, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !254, line: 1966, size: 2048, align: 512, elements: !1238)
!1238 = !{!1239, !1243, !1256, !1262, !1266, !1270, !1274, !1278, !1282, !1286, !1290, !1291, !1297, !1301, !1338, !1369, !1376, !1382, !1386, !1390, !1394, !1398, !1402, !1408, !1412}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1237, file: !254, line: 1967, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1186, !1221, !1186, !17}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1237, file: !254, line: 1968, baseType: !1244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!26, !1186, !1221, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1249, line: 10, size: 128, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1250 = !{!1251, !1255}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1248, file: !1249, line: 11, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !29}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1248, file: !1249, line: 12, baseType: !29, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1237, file: !254, line: 1969, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!31, !1260, !1221, !31}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1107, line: 42, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1237, file: !254, line: 1970, baseType: !1263, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1231, !1221, !31, !852}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1237, file: !254, line: 1972, baseType: !1267, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!31, !1186, !940, !31}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1237, file: !254, line: 1974, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!31, !1260, !1221, !1186, !33, !852}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1237, file: !254, line: 1976, baseType: !1275, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!31, !1186, !1221, !1186}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1237, file: !254, line: 1977, baseType: !1279, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!31, !1221, !1186}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1237, file: !254, line: 1978, baseType: !1283, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!31, !1260, !1221, !1186, !26}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1237, file: !254, line: 1980, baseType: !1287, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!31, !1260, !1221, !1186, !33}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1237, file: !254, line: 1982, baseType: !1279, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1237, file: !254, line: 1983, baseType: !1292, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!31, !1260, !1221, !1186, !33, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !34, line: 21, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !34, line: 18, baseType: !350)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1237, file: !254, line: 1985, baseType: !1298, size: 64, offset: 768)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!31, !1260, !1221, !1186, !1221, !1186, !17}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1237, file: !254, line: 1987, baseType: !1302, size: 64, offset: 832)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!31, !1260, !1186, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !254, line: 226, size: 640, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1320, !1329, !1330, !1335, !1336, !1337}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1306, file: !254, line: 227, baseType: !17, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1306, file: !254, line: 228, baseType: !33, size: 16, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !254, line: 241, baseType: !1311, size: 32, offset: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !254, line: 241, size: 32, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1311, file: !254, line: 242, baseType: !825, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1311, file: !254, line: 243, baseType: !1315, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1316, line: 16, baseType: !1317)
!1316 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1316, line: 14, size: 32, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1317, file: !1316, line: 15, baseType: !830, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !254, line: 245, baseType: !1321, size: 32, offset: 96)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !254, line: 245, size: 32, elements: !1322)
!1322 = !{!1323, !1324}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1321, file: !254, line: 246, baseType: !833, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1321, file: !254, line: 247, baseType: !1325, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1316, line: 20, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1316, line: 18, size: 32, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1326, file: !1316, line: 19, baseType: !837, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1306, file: !254, line: 249, baseType: !50, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1306, file: !254, line: 250, baseType: !1331, size: 128, offset: 192)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !889, line: 13, size: 128, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1331, file: !889, line: 14, baseType: !888, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1331, file: !889, line: 15, baseType: !301, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1306, file: !254, line: 251, baseType: !1331, size: 128, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1306, file: !254, line: 252, baseType: !1331, size: 128, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1306, file: !254, line: 259, baseType: !668, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1237, file: !254, line: 1988, baseType: !1339, size: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!31, !1260, !1342, !1344, !350, !17}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1346, line: 22, size: 1280, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1345, file: !1346, line: 23, baseType: !350, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1345, file: !1346, line: 24, baseType: !33, size: 16, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1345, file: !1346, line: 25, baseType: !17, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1345, file: !1346, line: 26, baseType: !896, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1345, file: !1346, line: 27, baseType: !392, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1345, file: !1346, line: 28, baseType: !392, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1345, file: !1346, line: 41, baseType: !392, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1345, file: !1346, line: 42, baseType: !1295, size: 32, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1345, file: !1346, line: 43, baseType: !1295, size: 32, offset: 352)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1345, file: !1346, line: 44, baseType: !825, size: 32, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1345, file: !1346, line: 45, baseType: !833, size: 32, offset: 416)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1345, file: !1346, line: 46, baseType: !50, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1345, file: !1346, line: 47, baseType: !1331, size: 128, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1345, file: !1346, line: 48, baseType: !1331, size: 128, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1345, file: !1346, line: 49, baseType: !1331, size: 128, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1345, file: !1346, line: 50, baseType: !1331, size: 128, offset: 896)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1345, file: !1346, line: 51, baseType: !392, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1345, file: !1346, line: 52, baseType: !392, size: 64, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1345, file: !1346, line: 53, baseType: !350, size: 32, offset: 1152)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1345, file: !1346, line: 54, baseType: !350, size: 32, offset: 1184)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1345, file: !1346, line: 55, baseType: !392, size: 64, offset: 1216)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1237, file: !254, line: 1990, baseType: !1370, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1373, !1186, !940, !44}
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !34, line: 66, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !46, line: 73, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !46, line: 15, baseType: !301)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1237, file: !254, line: 1991, baseType: !1377, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!31, !1221, !1380, !392, !392}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !254, line: 55, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1237, file: !254, line: 1993, baseType: !1383, size: 64, offset: 1088)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!31, !1221, !31}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1237, file: !254, line: 1994, baseType: !1387, size: 64, offset: 1152)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!31, !1221, !1186, !668, !17, !33}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1237, file: !254, line: 1997, baseType: !1391, size: 64, offset: 1216)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!31, !1260, !1221, !668, !33}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1237, file: !254, line: 1999, baseType: !1395, size: 64, offset: 1280)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!1231, !1260, !1186, !31}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1237, file: !254, line: 2001, baseType: !1399, size: 64, offset: 1344)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!31, !1260, !1186, !1231, !31}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1237, file: !254, line: 2003, baseType: !1403, size: 64, offset: 1408)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!31, !1260, !1186, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !254, line: 76, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1237, file: !254, line: 2005, baseType: !1409, size: 64, offset: 1472)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!31, !1186, !1406}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1237, file: !254, line: 2006, baseType: !1413, size: 64, offset: 1536)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1416, !1221}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !254, line: 3192, size: 192, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1417, file: !254, line: 3193, baseType: !773, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1417, file: !254, line: 3194, baseType: !350, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1222, file: !254, line: 655, baseType: !1422, size: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !254, line: 1190, size: 10752, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !4391, !4523, !4563, !4646, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4663, !4667, !4668, !4671, !4674, !4677, !4680, !4681, !4682, !4723, !4745, !4746, !4747, !4748, !4749, !4750, !4753, !4754, !4760, !4761, !4762, !4763, !4822, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1423, file: !254, line: 1191, baseType: !106, size: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1423, file: !254, line: 1192, baseType: !1295, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1423, file: !254, line: 1193, baseType: !96, size: 8, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1423, file: !254, line: 1194, baseType: !48, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1423, file: !254, line: 1195, baseType: !50, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1423, file: !254, line: 1196, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !254, line: 2366, size: 576, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1442, !1446, !1450, !1454, !4379, !4380, !4381, !4383, !4384, !4385, !4387, !4388, !4389, !4390}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1432, file: !254, line: 2367, baseType: !26, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1432, file: !254, line: 2368, baseType: !31, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1432, file: !254, line: 2376, baseType: !1437, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!31, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1183, line: 21, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1432, file: !254, line: 2377, baseType: !1443, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !254, line: 75, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1432, file: !254, line: 2378, baseType: !1447, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1186, !1431, !31, !26, !29}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1432, file: !254, line: 2380, baseType: !1451, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1422}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1432, file: !254, line: 2381, baseType: !1455, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !125, line: 402, size: 9216, align: 512, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1464, !2273, !2299, !2300, !2301, !2302, !2306, !2309, !2310, !2311, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2379, !2383, !2403, !2423, !2424, !2425, !2426, !2435, !2458, !2459, !2462, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2476, !2477, !2576, !2584, !2585, !2586, !2588, !4358, !4359, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1456, file: !125, line: 403, baseType: !124, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1456, file: !125, line: 406, baseType: !106, size: 128, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1456, file: !125, line: 409, baseType: !1461, size: 448, offset: 192)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1462)
!1462 = !{!1463}
!1463 = !DISubrange(count: 56)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1456, file: !125, line: 417, baseType: !1465, size: 768, offset: 640)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !125, line: 45, size: 768, elements: !1466)
!1466 = !{!1467, !2267, !2268, !2269, !2272}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1465, file: !125, line: 46, baseType: !1468, size: 512)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1469, line: 64, size: 512, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1470 = !{!1471, !1472, !1473, !1475, !1519, !2114, !2257, !2262, !2263, !2264, !2265, !2266}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1468, file: !1469, line: 65, baseType: !26, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1468, file: !1469, line: 66, baseType: !106, size: 128, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1468, file: !1469, line: 67, baseType: !1474, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1468, file: !1469, line: 68, baseType: !1476, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1469, line: 168, size: 768, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1477, file: !1469, line: 169, baseType: !106, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1477, file: !1469, line: 170, baseType: !68, size: 32, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1477, file: !1469, line: 171, baseType: !1468, size: 512, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1477, file: !1469, line: 172, baseType: !1483, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1469, line: 133, size: 192, elements: !1486)
!1486 = !{!1487, !1494, !1499}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1485, file: !1469, line: 134, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!31, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1485, file: !1469, line: 135, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!26, !1492}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1485, file: !1469, line: 136, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!31, !1492, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1469, line: 125, size: 20736, elements: !1506)
!1506 = !{!1507, !1509, !1513, !1514, !1518}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1505, file: !1469, line: 126, baseType: !1508, size: 192)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 192, elements: !732)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1505, file: !1469, line: 127, baseType: !1510, size: 4096, offset: 192)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 4096, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1505, file: !1469, line: 128, baseType: !31, size: 32, offset: 4288)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1505, file: !1469, line: 129, baseType: !1515, size: 16384, offset: 4320)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 2048)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1505, file: !1469, line: 130, baseType: !31, size: 32, offset: 20704)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1468, file: !1469, line: 69, baseType: !1520, size: 64, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1469, line: 116, size: 384, elements: !1523)
!1523 = !{!1524, !1528, !1547, !2076, !2106, !2110}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1522, file: !1469, line: 117, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1474}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1522, file: !1469, line: 118, baseType: !1529, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1532, line: 254, size: 128, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1533 = !{!1534, !1543}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1531, file: !1532, line: 255, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1373, !1474, !1538, !940}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1532, line: 30, size: 128, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1539, file: !1532, line: 31, baseType: !26, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1539, file: !1532, line: 32, baseType: !33, size: 16, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1531, file: !1532, line: 256, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1373, !1474, !1538, !26, !44}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1522, file: !1469, line: 119, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1532, line: 84, size: 320, elements: !1552)
!1552 = !{!1553, !1554, !1558, !2072, !2074}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1551, file: !1532, line: 85, baseType: !26, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1551, file: !1532, line: 86, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!33, !1474, !1538, !31}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1551, file: !1532, line: 88, baseType: !1559, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!33, !1474, !1562, !31}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1532, line: 175, size: 512, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !2063, !2067, !2068}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1563, file: !1532, line: 176, baseType: !1539, size: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1563, file: !1532, line: 177, baseType: !44, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1563, file: !1532, line: 178, baseType: !29, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1563, file: !1532, line: 179, baseType: !1569, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !254, line: 472, size: 1536, align: 64, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !2055, !2056, !2057, !2060, !2061, !2062}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1573, file: !254, line: 473, baseType: !1221, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1573, file: !254, line: 474, baseType: !773, size: 128, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1573, file: !254, line: 475, baseType: !872, size: 320, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1573, file: !254, line: 476, baseType: !295, size: 32, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1573, file: !254, line: 477, baseType: !58, size: 32, offset: 544)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1573, file: !254, line: 482, baseType: !523, size: 128, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1573, file: !254, line: 483, baseType: !48, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1573, file: !254, line: 484, baseType: !48, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1573, file: !254, line: 485, baseType: !1584, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !254, line: 404, size: 1280, elements: !1587)
!1587 = !{!1588, !1880, !1950, !1954, !1958, !1964, !1970, !1974, !1979, !1983, !1987, !1991, !2019, !2023, !2027, !2031, !2036, !2040, !2047, !2051}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1586, file: !254, line: 405, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!31, !1592, !1878}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !140, line: 74, size: 512, align: 128, elements: !1594)
!1594 = !{!1595, !1596, !1872, !1877}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !140, line: 75, baseType: !48, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !140, line: 83, baseType: !1597, size: 320, offset: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !140, line: 83, size: 320, elements: !1598)
!1598 = !{!1599, !1620, !1634, !1638, !1871}
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !140, line: 84, baseType: !1600, size: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !140, line: 84, size: 320, elements: !1601)
!1601 = !{!1602, !1613, !1614, !1619}
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !140, line: 90, baseType: !1603, size: 128)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !140, line: 90, size: 128, elements: !1604)
!1604 = !{!1605, !1606, !1611, !1612}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1603, file: !140, line: 91, baseType: !106, size: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !140, line: 94, baseType: !1607, size: 128)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1603, file: !140, line: 94, size: 128, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1607, file: !140, line: 96, baseType: !29, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1607, file: !140, line: 98, baseType: !17, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1603, file: !140, line: 102, baseType: !106, size: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1603, file: !140, line: 103, baseType: !106, size: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1600, file: !140, line: 106, baseType: !1572, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !140, line: 107, baseType: !1615, size: 64, offset: 192)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !140, line: 107, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1615, file: !140, line: 108, baseType: !48, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1615, file: !140, line: 109, baseType: !48, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1600, file: !140, line: 117, baseType: !48, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !140, line: 119, baseType: !1621, size: 320)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !140, line: 119, size: 320, elements: !1622)
!1622 = !{!1623, !1624, !1627, !1628, !1629}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1621, file: !140, line: 124, baseType: !48, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1621, file: !140, line: 125, baseType: !1625, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !140, line: 125, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1621, file: !140, line: 126, baseType: !48, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1621, file: !140, line: 127, baseType: !48, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !140, line: 128, baseType: !1630, size: 64, offset: 256)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !140, line: 128, size: 64, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1630, file: !140, line: 133, baseType: !48, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1630, file: !140, line: 138, baseType: !689, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !140, line: 141, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !140, line: 141, size: 64, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1635, file: !140, line: 142, baseType: !48, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !140, line: 144, baseType: !1639, size: 128)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !140, line: 144, size: 128, elements: !1640)
!1640 = !{!1641, !1870}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1639, file: !140, line: 146, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !132, line: 126, size: 1216, elements: !1644)
!1644 = !{!1645, !1654, !1675, !1676, !1677, !1678, !1679, !1852, !1853, !1854}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1643, file: !132, line: 127, baseType: !1646, size: 384)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !132, line: 21, size: 384, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1646, file: !132, line: 22, baseType: !48, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1646, file: !132, line: 23, baseType: !294, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1646, file: !132, line: 24, baseType: !294, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1646, file: !132, line: 25, baseType: !48, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1646, file: !132, line: 26, baseType: !48, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1646, file: !132, line: 27, baseType: !48, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1643, file: !132, line: 128, baseType: !1655, size: 128, offset: 384)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1656, line: 105, size: 128, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1655, file: !1656, line: 110, baseType: !48, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1655, file: !1656, line: 118, baseType: !1660, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1656, line: 95, size: 448, elements: !1662)
!1662 = !{!1663, !1664, !1670, !1671, !1672, !1673, !1674}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1661, file: !1656, line: 96, baseType: !689, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1661, file: !1656, line: 97, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1656, line: 60, baseType: !1667)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1661, file: !1656, line: 98, baseType: !1665, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1661, file: !1656, line: 99, baseType: !852, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1661, file: !1656, line: 100, baseType: !852, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1661, file: !1656, line: 101, baseType: !676, size: 128, align: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1661, file: !1656, line: 102, baseType: !1669, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1643, file: !132, line: 129, baseType: !1018, size: 256, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1643, file: !132, line: 130, baseType: !131, size: 32, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1643, file: !132, line: 131, baseType: !17, size: 32, offset: 800)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1643, file: !132, line: 132, baseType: !48, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1643, file: !132, line: 133, baseType: !1680, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !132, line: 77, size: 192, elements: !1683)
!1683 = !{!1684, !1688, !1848}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1682, file: !132, line: 83, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1592}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1682, file: !132, line: 89, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !140, line: 1184, baseType: !17)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1695, line: 512, size: 896, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1696 = !{!1697, !1815, !1816, !1823, !1830, !1840, !1841, !1842, !1844, !1846}
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !1695, line: 513, baseType: !1698, size: 320)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !1695, line: 513, size: 320, elements: !1699)
!1699 = !{!1700, !1811, !1812, !1813, !1814}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1698, file: !1695, line: 514, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !140, line: 625, size: 1344, elements: !1703)
!1703 = !{!1704, !1713, !1714, !1722, !1729, !1730, !1735, !1736, !1741, !1742, !1745, !1804, !1805, !1806, !1807, !1808, !1809}
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !140, line: 628, baseType: !1705, size: 128)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !140, line: 628, size: 128, elements: !1706)
!1706 = !{!1707, !1712}
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !140, line: 629, baseType: !1708, size: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1705, file: !140, line: 629, size: 128, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1708, file: !140, line: 631, baseType: !48, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1708, file: !140, line: 632, baseType: !48, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1705, file: !140, line: 635, baseType: !676, size: 128, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1702, file: !140, line: 639, baseType: !640, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1702, file: !140, line: 640, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1716, line: 297, baseType: !1717)
!1716 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1716, line: 297, size: 64, elements: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1717, file: !1716, line: 297, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1721, line: 19, baseType: !48)
!1721 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !140, line: 646, baseType: !1723, size: 64, offset: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !140, line: 646, size: 64, elements: !1724)
!1724 = !{!1725, !1728}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1723, file: !140, line: 647, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !140, line: 542, baseType: !48)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1723, file: !140, line: 648, baseType: !1727, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1702, file: !140, line: 666, baseType: !31, size: 32, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1702, file: !140, line: 667, baseType: !1731, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !140, line: 579, size: 320, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !140, line: 580, baseType: !872, size: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1702, file: !140, line: 670, baseType: !852, size: 8, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1702, file: !140, line: 681, baseType: !1737, size: 256, offset: 512)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !140, line: 678, size: 256, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1737, file: !140, line: 679, baseType: !384, size: 192, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1737, file: !140, line: 680, baseType: !48, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1702, file: !140, line: 689, baseType: !106, size: 128, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1702, file: !140, line: 691, baseType: !1743, size: 64, offset: 896)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !140, line: 691, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1702, file: !140, line: 694, baseType: !1746, size: 64, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1695, line: 563, size: 1024, elements: !1749)
!1749 = !{!1750, !1754, !1755, !1759, !1763, !1767, !1768, !1772, !1776, !1780, !1781, !1782, !1786, !1790, !1796, !1800}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1748, file: !1695, line: 564, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1701}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1748, file: !1695, line: 569, baseType: !1751, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1748, file: !1695, line: 571, baseType: !1756, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!31, !1701, !48}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1748, file: !1695, line: 572, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!31, !1701}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1748, file: !1695, line: 578, baseType: !1764, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!31, !1701, !48, !48, !48}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1748, file: !1695, line: 580, baseType: !1689, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1748, file: !1695, line: 581, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1692, !1693, !17}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1748, file: !1695, line: 582, baseType: !1773, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1692, !1693, !48, !48}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1748, file: !1695, line: 584, baseType: !1777, size: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!48, !1701}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1748, file: !1695, line: 588, baseType: !1689, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1748, file: !1695, line: 591, baseType: !1689, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1748, file: !1695, line: 597, baseType: !1783, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!31, !1701, !48, !29, !31, !31}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1748, file: !1695, line: 603, baseType: !1787, size: 64, offset: 768)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!26, !1701}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1748, file: !1695, line: 613, baseType: !1791, size: 64, offset: 832)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!31, !1701, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !341, line: 54, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1748, file: !1695, line: 625, baseType: !1797, size: 64, offset: 896)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1794, !1701, !48}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1748, file: !1695, line: 633, baseType: !1801, size: 64, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1592, !1701, !48}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1702, file: !140, line: 697, baseType: !48, size: 64, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1702, file: !140, line: 699, baseType: !668, size: 64, offset: 1088)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1702, file: !140, line: 700, baseType: !29, size: 64, offset: 1152)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1702, file: !140, line: 711, baseType: !689, size: 64, offset: 1216)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1702, file: !140, line: 717, baseType: !1794, size: 64, offset: 1280)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1702, file: !140, line: 722, baseType: !1810, offset: 1344)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !140, line: 570, elements: !661)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1698, file: !1695, line: 515, baseType: !295, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1698, file: !1695, line: 516, baseType: !48, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1698, file: !1695, line: 517, baseType: !48, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1698, file: !1695, line: 518, baseType: !48, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1694, file: !1695, line: 520, baseType: !139, size: 32, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1694, file: !1695, line: 522, baseType: !1817, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1721, line: 22, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1721, line: 22, size: 64, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1819, file: !1721, line: 22, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1721, line: 15, baseType: !48)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1694, file: !1695, line: 524, baseType: !1824, size: 64, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1716, line: 372, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1716, line: 372, size: 64, elements: !1827)
!1827 = !{!1828}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1826, file: !1716, line: 372, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1721, line: 16, baseType: !48)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !1695, line: 527, baseType: !1831, size: 64, offset: 512)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1694, file: !1695, line: 527, size: 64, elements: !1832)
!1832 = !{!1833, !1839}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1831, file: !1695, line: 528, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1721, line: 21, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1721, line: 21, size: 64, elements: !1836)
!1836 = !{!1837}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1835, file: !1721, line: 21, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1721, line: 14, baseType: !48)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1831, file: !1695, line: 529, baseType: !1818, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1694, file: !1695, line: 534, baseType: !1592, size: 64, offset: 576)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1694, file: !1695, line: 535, baseType: !1592, size: 64, offset: 640)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1694, file: !1695, line: 541, baseType: !1843, size: 64, offset: 704)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1694, file: !1695, line: 545, baseType: !1845, size: 64, offset: 768)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1694, file: !1695, line: 549, baseType: !1847, size: 64, offset: 832)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1716, line: 520, baseType: !1592)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1682, file: !132, line: 100, baseType: !1849, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!31, !1642, !48, !48, !31}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1643, file: !132, line: 134, baseType: !29, size: 64, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1643, file: !132, line: 135, baseType: !31, size: 32, offset: 1024)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !132, line: 136, baseType: !1855, size: 128, offset: 1088)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !132, line: 136, size: 128, elements: !1856)
!1856 = !{!1857, !1863}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1855, file: !132, line: 137, baseType: !1858, size: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1859, line: 6, size: 128, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1858, file: !1859, line: 7, baseType: !392, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1858, file: !1859, line: 8, baseType: !392, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !132, line: 138, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !132, line: 138, elements: !1865)
!1865 = !{!1866, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1864, file: !132, line: 138, baseType: !1867)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1864, file: !132, line: 138, elements: !661)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1864, file: !132, line: 138, baseType: !1869)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, elements: !1083)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1639, file: !140, line: 147, baseType: !29, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1597, file: !140, line: 161, baseType: !676, size: 128, align: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !140, line: 164, baseType: !1873, size: 32, offset: 384)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !140, line: 164, size: 32, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1873, file: !140, line: 169, baseType: !58, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1873, file: !140, line: 177, baseType: !17, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1593, file: !140, line: 181, baseType: !58, size: 32, offset: 416)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !254, line: 309, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1586, file: !254, line: 406, baseType: !1881, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!31, !668, !1884}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !140, line: 293, size: 1536, elements: !1886)
!1886 = !{!1887, !1917, !1931}
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !140, line: 295, baseType: !1888, size: 512)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !140, line: 295, size: 512, elements: !1889)
!1889 = !{!1890, !1916}
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !140, line: 296, baseType: !1891, size: 448)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1888, file: !140, line: 296, size: 448, elements: !1892)
!1892 = !{!1893, !1894, !1903, !1904, !1905, !1914, !1915}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1891, file: !140, line: 298, baseType: !48, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !140, line: 299, baseType: !1895, size: 128, offset: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !140, line: 299, size: 128, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1895, file: !140, line: 300, baseType: !106, size: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !140, line: 302, baseType: !1899, size: 128)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !140, line: 302, size: 128, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1899, file: !140, line: 303, baseType: !29, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1899, file: !140, line: 305, baseType: !17, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1891, file: !140, line: 310, baseType: !1572, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1891, file: !140, line: 311, baseType: !48, size: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !140, line: 312, baseType: !1906, size: 64, offset: 320)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !140, line: 312, size: 64, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1906, file: !140, line: 313, baseType: !29, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1906, file: !140, line: 314, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !140, line: 257, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 255, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1911, file: !140, line: 256, baseType: !48, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1891, file: !140, line: 316, baseType: !58, size: 32, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1891, file: !140, line: 317, baseType: !58, size: 32, offset: 416)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1888, file: !140, line: 323, baseType: !1593, size: 512, align: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !140, line: 325, baseType: !1918, size: 512, offset: 512)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !140, line: 325, size: 512, elements: !1919)
!1919 = !{!1920, !1930}
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !140, line: 326, baseType: !1921, size: 320)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !140, line: 326, size: 320, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1921, file: !140, line: 327, baseType: !48, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1921, file: !140, line: 328, baseType: !48, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1921, file: !140, line: 329, baseType: !48, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1921, file: !140, line: 331, baseType: !58, size: 32, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1921, file: !140, line: 332, baseType: !58, size: 32, offset: 224)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1921, file: !140, line: 333, baseType: !58, size: 32, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1921, file: !140, line: 335, baseType: !17, size: 32, offset: 288)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1918, file: !140, line: 339, baseType: !1593, size: 512, align: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !140, line: 341, baseType: !1932, size: 512, offset: 1024)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !140, line: 341, size: 512, elements: !1933)
!1933 = !{!1934, !1943, !1949}
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !140, line: 342, baseType: !1935, size: 384)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !140, line: 342, size: 384, elements: !1936)
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1935, file: !140, line: 343, baseType: !48, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1935, file: !140, line: 344, baseType: !48, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1935, file: !140, line: 346, baseType: !29, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1935, file: !140, line: 347, baseType: !29, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1935, file: !140, line: 348, baseType: !29, size: 64, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1935, file: !140, line: 349, baseType: !29, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !140, line: 352, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !140, line: 352, size: 256, elements: !1945)
!1945 = !{!1946, !1947, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1944, file: !140, line: 353, baseType: !48, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1944, file: !140, line: 354, baseType: !48, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1944, file: !140, line: 356, baseType: !106, size: 128, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1932, file: !140, line: 359, baseType: !1593, size: 512, align: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1586, file: !254, line: 409, baseType: !1951, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!31, !1572, !1878}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1586, file: !254, line: 412, baseType: !1955, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!852, !1572, !1884}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1586, file: !254, line: 414, baseType: !1959, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !254, line: 310, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1586, file: !254, line: 416, baseType: !1965, size: 64, offset: 320)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!31, !668, !1572, !50, !17, !1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1586, file: !254, line: 419, baseType: !1971, size: 64, offset: 384)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!31, !668, !1572, !50, !17, !17, !1592, !29}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1586, file: !254, line: 424, baseType: !1975, size: 64, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1978, !1572, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !34, line: 131, baseType: !392)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1586, file: !254, line: 425, baseType: !1980, size: 64, offset: 512)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1884, !44, !44}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1586, file: !254, line: 426, baseType: !1984, size: 64, offset: 576)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!852, !1884, !295}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1586, file: !254, line: 427, baseType: !1988, size: 64, offset: 640)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1884}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1586, file: !254, line: 428, baseType: !1992, size: 64, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1373, !1995, !2017}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !254, line: 373, size: 384, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2004, !2005, !2006, !2007}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1996, file: !254, line: 374, baseType: !668, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1996, file: !254, line: 375, baseType: !50, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1996, file: !254, line: 376, baseType: !2001, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !1995, !301}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1996, file: !254, line: 377, baseType: !29, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1996, file: !254, line: 378, baseType: !31, size: 32, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1996, file: !254, line: 379, baseType: !102, size: 16, offset: 288)
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !254, line: 380, baseType: !2008, size: 64, offset: 320)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1996, file: !254, line: 380, size: 64, elements: !2009)
!2009 = !{!2010, !2013}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2008, file: !254, line: 386, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !254, line: 386, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2008, file: !254, line: 395, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!1373, !29}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !254, line: 69, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1586, file: !254, line: 433, baseType: !2020, size: 64, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!31, !1572, !1884, !1884, !155}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1586, file: !254, line: 435, baseType: !2024, size: 64, offset: 832)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!31, !1884}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1586, file: !254, line: 436, baseType: !2028, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!852, !1884, !44, !44}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1586, file: !254, line: 438, baseType: !2032, size: 64, offset: 960)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1884, !2035, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1586, file: !254, line: 439, baseType: !2037, size: 64, offset: 1024)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!31, !1572, !1592}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1586, file: !254, line: 442, baseType: !2041, size: 64, offset: 1088)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!31, !2044, !668, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !254, line: 66, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1586, file: !254, line: 444, baseType: !2048, size: 64, offset: 1152)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !668}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1586, file: !254, line: 445, baseType: !2052, size: 64, offset: 1216)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!31, !1995, !2017}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1573, file: !254, line: 486, baseType: !48, size: 64, offset: 896)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1573, file: !254, line: 487, baseType: !872, size: 320, offset: 960)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1573, file: !254, line: 488, baseType: !2058, size: 32, offset: 1280)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2059, line: 8, baseType: !350)
!2059 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1573, file: !254, line: 489, baseType: !68, size: 32, offset: 1312)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1573, file: !254, line: 490, baseType: !106, size: 128, offset: 1344)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1573, file: !254, line: 491, baseType: !29, size: 64, offset: 1472)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1563, file: !1532, line: 180, baseType: !2064, size: 64, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!1373, !668, !1474, !1562, !940, !50, !44}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1563, file: !1532, line: 182, baseType: !2064, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1563, file: !1532, line: 184, baseType: !2069, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!31, !668, !1474, !1562, !1701}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1551, file: !1532, line: 90, baseType: !2073, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1551, file: !1532, line: 91, baseType: !2075, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1522, file: !1469, line: 120, baseType: !2077, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!2080, !1492}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !163, line: 39, size: 384, elements: !2083)
!2083 = !{!2084, !2085, !2089, !2093, !2101, !2105}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2082, file: !163, line: 40, baseType: !162, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2082, file: !163, line: 41, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!852}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2082, file: !163, line: 42, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!29}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2082, file: !163, line: 43, baseType: !2094, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2097, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !163, line: 19, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2082, file: !163, line: 44, baseType: !2102, size: 64, offset: 256)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2097}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2082, file: !163, line: 45, baseType: !1252, size: 64, offset: 320)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1522, file: !1469, line: 121, baseType: !2107, size: 64, offset: 256)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!2097, !1492}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1522, file: !1469, line: 122, baseType: !2111, size: 64, offset: 320)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !1492, !1043, !1044}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1468, file: !1469, line: 70, baseType: !2115, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2117, line: 190, size: 1152, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2249, !2250, !2251, !2252, !2253, !2256}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2116, file: !2117, line: 191, baseType: !58, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2116, file: !2117, line: 192, baseType: !58, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2116, file: !2117, line: 202, baseType: !2115, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2116, file: !2117, line: 203, baseType: !26, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2116, file: !2117, line: 205, baseType: !384, size: 192, align: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2116, file: !2117, line: 207, baseType: !2097, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2116, file: !2117, line: 208, baseType: !17, size: 32, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !2117, line: 209, baseType: !2127, size: 256, offset: 512)
!2127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2116, file: !2117, line: 209, size: 256, elements: !2128)
!2128 = !{!2129, !2138, !2142}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2127, file: !2117, line: 210, baseType: !2130, size: 256)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2117, line: 153, size: 256, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2137}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2130, file: !2117, line: 154, baseType: !48, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2130, file: !2117, line: 156, baseType: !526, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2130, file: !2117, line: 162, baseType: !2135, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2117, line: 162, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2130, file: !2117, line: 167, baseType: !48, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2127, file: !2117, line: 211, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2117, line: 170, size: 64, elements: !2140)
!2140 = !{!2141}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2139, file: !2117, line: 171, baseType: !2115, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2127, file: !2117, line: 212, baseType: !2143, size: 256)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2117, line: 174, size: 256, elements: !2144)
!2144 = !{!2145, !2244, !2247, !2248}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2143, file: !2117, line: 175, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2117, line: 271, size: 768, elements: !2149)
!2149 = !{!2150, !2208, !2212, !2213, !2214, !2215, !2216, !2220, !2221, !2222, !2223, !2240}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2148, file: !2117, line: 276, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!31, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2117, line: 251, size: 1216, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2155, file: !2117, line: 253, baseType: !2115, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2155, file: !2117, line: 254, baseType: !668, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2155, file: !2117, line: 255, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2162, line: 17, size: 960, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2193, !2194, !2197}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2161, file: !2162, line: 18, baseType: !940, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2161, file: !2162, line: 19, baseType: !44, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2161, file: !2162, line: 20, baseType: !44, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2161, file: !2162, line: 21, baseType: !44, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2161, file: !2162, line: 22, baseType: !44, size: 64, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2161, file: !2162, line: 23, baseType: !50, size: 64, offset: 320)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2161, file: !2162, line: 24, baseType: !50, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2161, file: !2162, line: 25, baseType: !696, size: 256, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2161, file: !2162, line: 26, baseType: !2173, size: 64, offset: 704)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2175)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2162, line: 32, size: 256, elements: !2176)
!2176 = !{!2177, !2181, !2185, !2189}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2175, file: !2162, line: 33, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!29, !2160, !49}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2175, file: !2162, line: 34, baseType: !2182, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !2160, !29}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2175, file: !2162, line: 35, baseType: !2186, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!29, !2160, !29, !49}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2175, file: !2162, line: 36, baseType: !2190, size: 64, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!31, !2160, !29}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2161, file: !2162, line: 27, baseType: !31, size: 32, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2161, file: !2162, line: 28, baseType: !2195, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2161, file: !2162, line: 29, baseType: !29, size: 64, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2155, file: !2117, line: 256, baseType: !29, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2155, file: !2117, line: 259, baseType: !696, size: 256, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2155, file: !2117, line: 260, baseType: !696, size: 256, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2155, file: !2117, line: 261, baseType: !31, size: 32, offset: 768)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2155, file: !2117, line: 262, baseType: !106, size: 128, offset: 832)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2155, file: !2117, line: 263, baseType: !940, size: 64, offset: 960)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2155, file: !2117, line: 265, baseType: !44, size: 64, offset: 1024)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2155, file: !2117, line: 266, baseType: !852, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2155, file: !2117, line: 267, baseType: !852, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2155, file: !2117, line: 268, baseType: !1746, size: 64, offset: 1152)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2148, file: !2117, line: 277, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2154}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2148, file: !2117, line: 290, baseType: !2190, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2148, file: !2117, line: 292, baseType: !2178, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2148, file: !2117, line: 293, baseType: !2186, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2148, file: !2117, line: 294, baseType: !2182, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2148, file: !2117, line: 296, baseType: !2217, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!1373, !2154, !940, !44, !50}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2148, file: !2117, line: 306, baseType: !44, size: 64, offset: 448)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2148, file: !2117, line: 313, baseType: !852, size: 8, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2148, file: !2117, line: 314, baseType: !2217, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2148, file: !2117, line: 317, baseType: !2224, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!2227, !2154, !2229}
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2228, line: 59, baseType: !17)
!2228 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2231, line: 37, size: 128, elements: !2232)
!2231 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2232 = !{!2233, !2239}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2230, file: !2231, line: 38, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2231, line: 31, baseType: !2235)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !668, !2238, !2229}
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2230, file: !2231, line: 39, baseType: !2227, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2148, file: !2117, line: 320, baseType: !2241, size: 64, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!31, !2154, !1701}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2143, file: !2117, line: 176, baseType: !2245, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2117, line: 35, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2143, file: !2117, line: 177, baseType: !50, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2143, file: !2117, line: 178, baseType: !2115, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2116, file: !2117, line: 215, baseType: !29, size: 64, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2116, file: !2117, line: 221, baseType: !392, size: 64, offset: 832)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2116, file: !2117, line: 223, baseType: !35, size: 16, offset: 896)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2116, file: !2117, line: 224, baseType: !33, size: 16, offset: 912)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2116, file: !2117, line: 225, baseType: !2254, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2117, line: 36, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2116, file: !2117, line: 227, baseType: !676, size: 128, align: 64, offset: 1024)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1468, file: !1469, line: 71, baseType: !2258, size: 32, offset: 448)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2259, line: 19, size: 32, elements: !2260)
!2259 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2260 = !{!2261}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2258, file: !2259, line: 20, baseType: !356, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1468, file: !1469, line: 73, baseType: !17, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1468, file: !1469, line: 74, baseType: !17, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1468, file: !1469, line: 75, baseType: !17, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1468, file: !1469, line: 76, baseType: !17, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1468, file: !1469, line: 77, baseType: !17, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1465, file: !125, line: 47, baseType: !1455, size: 64, offset: 512)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1465, file: !125, line: 48, baseType: !1474, size: 64, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1465, file: !125, line: 49, baseType: !2270, size: 64, offset: 640)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !125, line: 49, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1465, file: !125, line: 50, baseType: !1017, size: 64, offset: 704)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1456, file: !125, line: 418, baseType: !2274, size: 64, offset: 1408)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !125, line: 53, size: 448, elements: !2276)
!2276 = !{!2277, !2278, !2283, !2287, !2291, !2295}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2275, file: !125, line: 54, baseType: !1539, size: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2275, file: !125, line: 55, baseType: !2279, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!1373, !2274, !2282, !940}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2275, file: !125, line: 57, baseType: !2284, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!1373, !2274, !2282, !26, !44}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2275, file: !125, line: 59, baseType: !2288, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !1455, !26}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2275, file: !125, line: 60, baseType: !2292, size: 64, offset: 320)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!31, !1455}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2275, file: !125, line: 61, baseType: !2296, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !1455}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1456, file: !125, line: 419, baseType: !26, size: 64, offset: 1472)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1456, file: !125, line: 420, baseType: !26, size: 64, offset: 1536)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1456, file: !125, line: 421, baseType: !1474, size: 64, offset: 1600)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1456, file: !125, line: 424, baseType: !2303, size: 64, offset: 1664)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2305)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !125, line: 424, flags: DIFlagFwdDecl)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1456, file: !125, line: 425, baseType: !2307, size: 64, offset: 1728)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1456, file: !125, line: 426, baseType: !17, size: 32, offset: 1792)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1456, file: !125, line: 435, baseType: !696, size: 256, offset: 1856)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1456, file: !125, line: 437, baseType: !2312, size: 64, offset: 2112)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2314, line: 69, size: 320, elements: !2315)
!2314 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2315 = !{!2316, !2317, !2318, !2335, !2337, !2341, !2342}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2313, file: !2314, line: 70, baseType: !26, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2313, file: !2314, line: 71, baseType: !1455, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2313, file: !2314, line: 72, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2314, line: 47, size: 256, elements: !2322)
!2322 = !{!2323, !2324, !2330, !2334}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !2314, line: 49, baseType: !17, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2321, file: !2314, line: 51, baseType: !2325, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!31, !26, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2313)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2321, file: !2314, line: 53, baseType: !2331, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!31, !940, !2328}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2321, file: !2314, line: 55, baseType: !1252, size: 64, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2313, file: !2314, line: 73, baseType: !2336, size: 16, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2313, file: !2314, line: 74, baseType: !2338, size: 8, offset: 208)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !93, line: 16, baseType: !2339)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !95, line: 20, baseType: !2340)
!2340 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2313, file: !2314, line: 75, baseType: !92, size: 8, offset: 216)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2313, file: !2314, line: 76, baseType: !2343, size: 64, offset: 256)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2313, file: !2314, line: 76, size: 64, elements: !2344)
!2344 = !{!2345, !2346, !2353}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2343, file: !2314, line: 77, baseType: !29, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2343, file: !2314, line: 78, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2349)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2314, line: 86, size: 128, elements: !2350)
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2349, file: !2314, line: 87, baseType: !17, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2349, file: !2314, line: 88, baseType: !940, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2343, file: !2314, line: 79, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2314, line: 92, size: 256, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2362, !2363}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2356, file: !2314, line: 94, baseType: !17, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2356, file: !2314, line: 95, baseType: !17, size: 32, offset: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2356, file: !2314, line: 96, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2356, file: !2314, line: 97, baseType: !2319, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2356, file: !2314, line: 98, baseType: !29, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1456, file: !125, line: 438, baseType: !17, size: 32, offset: 2176)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1456, file: !125, line: 441, baseType: !17, size: 32, offset: 2208)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1456, file: !125, line: 442, baseType: !2303, size: 64, offset: 2240)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1456, file: !125, line: 443, baseType: !2307, size: 64, offset: 2304)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1456, file: !125, line: 444, baseType: !852, size: 8, offset: 2368)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1456, file: !125, line: 451, baseType: !852, size: 8, offset: 2376)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1456, file: !125, line: 454, baseType: !17, size: 32, offset: 2400)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1456, file: !125, line: 455, baseType: !2372, size: 64, offset: 2432)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2374, line: 23, size: 96, elements: !2375)
!2374 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2375 = !{!2376, !2377, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2373, file: !2374, line: 24, baseType: !31, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2373, file: !2374, line: 24, baseType: !31, size: 32, offset: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2373, file: !2374, line: 24, baseType: !31, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1456, file: !125, line: 458, baseType: !2380, size: 64, offset: 2496)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!31}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1456, file: !125, line: 460, baseType: !2384, size: 4032, align: 512, offset: 2560)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2385, size: 4032, elements: !2401)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !125, line: 362, size: 576, elements: !2386)
!2386 = !{!2387, !2388, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2385, file: !125, line: 363, baseType: !29, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2385, file: !125, line: 364, baseType: !17, size: 32, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2385, file: !125, line: 367, baseType: !2390, size: 448, offset: 128)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !125, line: 319, size: 448, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2390, file: !125, line: 320, baseType: !1455, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2390, file: !125, line: 321, baseType: !2394, size: 384, offset: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2395, line: 40, size: 384, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2396 = !{!2397}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2394, file: !2395, line: 41, baseType: !2398, size: 384, align: 64)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 384, align: 64, elements: !2399)
!2399 = !{!2400}
!2400 = !DISubrange(count: 2)
!2401 = !{!2402}
!2402 = !DISubrange(count: 7)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1456, file: !125, line: 463, baseType: !2404, size: 192, offset: 6592)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2405, line: 8, size: 192, elements: !2406)
!2405 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2406 = !{!2407, !2408, !2410}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2404, file: !2405, line: 10, baseType: !17, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2404, file: !2405, line: 11, baseType: !2409, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2404, file: !2405, line: 12, baseType: !2411, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2413, line: 59, size: 48, elements: !2414)
!2413 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2414 = !{!2415, !2418, !2419, !2420, !2421, !2422}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2412, file: !2413, line: 60, baseType: !2416, size: 16)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !93, line: 18, baseType: !2417)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !95, line: 23, baseType: !900)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2412, file: !2413, line: 61, baseType: !2416, size: 16, offset: 16)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2412, file: !2413, line: 63, baseType: !17, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2412, file: !2413, line: 64, baseType: !17, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2412, file: !2413, line: 65, baseType: !17, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2412, file: !2413, line: 66, baseType: !17, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1456, file: !125, line: 465, baseType: !48, size: 64, offset: 6784)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1456, file: !125, line: 469, baseType: !17, size: 32, offset: 6848)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1456, file: !125, line: 470, baseType: !106, size: 128, offset: 6912)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1456, file: !125, line: 471, baseType: !2427, size: 64, offset: 7040)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2429, line: 33, size: 96, elements: !2430)
!2429 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2430 = !{!2431, !2432, !2433, !2434}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2428, file: !2429, line: 37, baseType: !31, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2428, file: !2429, line: 43, baseType: !31, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2428, file: !2429, line: 45, baseType: !35, size: 16, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !2429, line: 47, baseType: !35, size: 16, offset: 80)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1456, file: !125, line: 476, baseType: !2436, size: 64, offset: 7104)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !125, line: 378, size: 256, elements: !2438)
!2438 = !{!2439, !2455, !2456, !2457}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2437, file: !125, line: 379, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2442, line: 204, baseType: !2443)
!2442 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2442, line: 197, size: 192, elements: !2444)
!2444 = !{!2445, !2447, !2448, !2449, !2451, !2453}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2443, file: !2442, line: 198, baseType: !2446, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2442, line: 21, baseType: !351)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2443, file: !2442, line: 199, baseType: !96, size: 8, offset: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2443, file: !2442, line: 200, baseType: !96, size: 8, offset: 40)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2443, file: !2442, line: 201, baseType: !2450, size: 16, offset: 48)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2442, line: 17, baseType: !103)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2443, file: !2442, line: 202, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2442, line: 16, baseType: !393)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2443, file: !2442, line: 203, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2442, line: 22, baseType: !393)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2437, file: !125, line: 380, baseType: !17, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2437, file: !125, line: 381, baseType: !940, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2437, file: !125, line: 382, baseType: !940, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1456, file: !125, line: 477, baseType: !2437, size: 256, offset: 7168)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1456, file: !125, line: 480, baseType: !2460, size: 64, offset: 7424)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !125, line: 480, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1456, file: !125, line: 483, baseType: !2463, size: 64, offset: 7488)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !125, line: 483, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1456, file: !125, line: 488, baseType: !940, size: 64, offset: 7552)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1456, file: !125, line: 492, baseType: !29, size: 64, offset: 7616)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1456, file: !125, line: 493, baseType: !17, size: 32, offset: 7680)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1456, file: !125, line: 495, baseType: !29, size: 64, offset: 7744)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1456, file: !125, line: 496, baseType: !17, size: 32, offset: 7808)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1456, file: !125, line: 499, baseType: !17, size: 32, offset: 7840)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1456, file: !125, line: 500, baseType: !2472, size: 64, offset: 7872)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2474, line: 45, baseType: !2475)
!2474 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1456, file: !125, line: 503, baseType: !17, size: 32, offset: 7936)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1456, file: !125, line: 504, baseType: !2478, size: 64, offset: 8000)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2481, line: 96, size: 192, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2482 = !{!2483, !2484, !2537, !2540}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2480, file: !2481, line: 97, baseType: !17, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2480, file: !2481, line: 98, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2481, line: 24, size: 3072, elements: !2487)
!2487 = !{!2488, !2490, !2491, !2492, !2493, !2506, !2507, !2508, !2509, !2521, !2522, !2523, !2534, !2535, !2536}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2486, file: !2481, line: 26, baseType: !2489, size: 128)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 128, elements: !2399)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2486, file: !2481, line: 27, baseType: !2489, size: 128, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2486, file: !2481, line: 28, baseType: !31, size: 32, offset: 256)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2486, file: !2481, line: 31, baseType: !68, size: 32, align: 512, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2486, file: !2481, line: 32, baseType: !2494, size: 960, offset: 576)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2495, line: 206, size: 960, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2496 = !{!2497, !2498, !2501, !2503, !2504, !2505}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2494, file: !2495, line: 207, baseType: !679, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2494, file: !2495, line: 208, baseType: !2499, size: 256, offset: 64)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2500, size: 256, elements: !753)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2494, file: !2495, line: 209, baseType: !2502, size: 256, offset: 320)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !753)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2494, file: !2495, line: 213, baseType: !301, size: 64, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2494, file: !2495, line: 215, baseType: !1078, size: 256, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2494, file: !2495, line: 216, baseType: !92, size: 8, offset: 896)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2486, file: !2481, line: 33, baseType: !48, size: 64, offset: 1536)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2486, file: !2481, line: 34, baseType: !48, size: 64, offset: 1600)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2486, file: !2481, line: 35, baseType: !852, size: 8, offset: 1664)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2486, file: !2481, line: 36, baseType: !2510, size: 320, offset: 1728)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2511, line: 11, size: 320, elements: !2512)
!2511 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2512 = !{!2513, !2514, !2515, !2520}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2510, file: !2511, line: 16, baseType: !748, size: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2510, file: !2511, line: 17, baseType: !48, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2510, file: !2511, line: 18, baseType: !2516, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{null, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2510, file: !2511, line: 19, baseType: !350, size: 32, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2486, file: !2481, line: 37, baseType: !979, size: 256, offset: 2048)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2486, file: !2481, line: 38, baseType: !676, size: 128, align: 64, offset: 2304)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2486, file: !2481, line: 39, baseType: !2524, size: 64, offset: 2432)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2481, line: 49, size: 768, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2525, file: !2481, line: 50, baseType: !68, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2525, file: !2481, line: 51, baseType: !2502, size: 256, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2525, file: !2481, line: 53, baseType: !2502, size: 256, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2525, file: !2481, line: 54, baseType: !48, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2525, file: !2481, line: 55, baseType: !2524, size: 64, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2525, file: !2481, line: 56, baseType: !31, size: 32, offset: 704)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2525, file: !2481, line: 57, baseType: !31, size: 32, offset: 736)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2486, file: !2481, line: 40, baseType: !48, size: 64, offset: 2496)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2486, file: !2481, line: 42, baseType: !31, size: 32, offset: 2560)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2486, file: !2481, line: 43, baseType: !2479, size: 64, offset: 2624)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2480, file: !2481, line: 99, baseType: !2538, offset: 128)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2539, line: 211, elements: !661)
!2539 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2480, file: !2481, line: 100, baseType: !2541, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2481, line: 63, size: 3008, elements: !2543)
!2543 = !{!2544, !2545, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2575}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2542, file: !2481, line: 64, baseType: !2524, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2542, file: !2481, line: 65, baseType: !2546, size: 192, offset: 64)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2524, size: 192, elements: !732)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2542, file: !2481, line: 67, baseType: !31, size: 32, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2542, file: !2481, line: 68, baseType: !696, size: 256, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2542, file: !2481, line: 69, baseType: !68, size: 32, offset: 576)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2542, file: !2481, line: 70, baseType: !696, size: 256, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2542, file: !2481, line: 71, baseType: !48, size: 64, offset: 896)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2542, file: !2481, line: 72, baseType: !48, size: 64, offset: 960)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2542, file: !2481, line: 73, baseType: !48, size: 64, offset: 1024)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2542, file: !2481, line: 74, baseType: !48, size: 64, offset: 1088)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2542, file: !2481, line: 75, baseType: !48, size: 64, offset: 1152)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2542, file: !2481, line: 76, baseType: !48, size: 64, offset: 1216)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2542, file: !2481, line: 77, baseType: !48, size: 64, offset: 1280)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2542, file: !2481, line: 78, baseType: !48, size: 64, offset: 1344)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2542, file: !2481, line: 79, baseType: !852, size: 8, offset: 1408)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2542, file: !2481, line: 80, baseType: !48, size: 64, offset: 1472)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2542, file: !2481, line: 81, baseType: !696, size: 256, offset: 1536)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2542, file: !2481, line: 82, baseType: !1018, size: 256, offset: 1792)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2542, file: !2481, line: 84, baseType: !58, size: 32, offset: 2048)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2542, file: !2481, line: 87, baseType: !48, size: 64, offset: 2112)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2542, file: !2481, line: 88, baseType: !48, size: 64, offset: 2176)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2542, file: !2481, line: 89, baseType: !2567, size: 704, offset: 2240)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !980, line: 111, size: 704, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2574}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2567, file: !980, line: 112, baseType: !979, size: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2567, file: !980, line: 113, baseType: !2510, size: 320, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2567, file: !980, line: 116, baseType: !2572, size: 64, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !980, line: 18, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2567, file: !980, line: 117, baseType: !31, size: 32, offset: 640)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2542, file: !2481, line: 90, baseType: !2479, size: 64, offset: 2944)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1456, file: !125, line: 515, baseType: !2577, size: 64, offset: 8064)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2579, line: 117, size: 128, elements: !2580)
!2579 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2580 = !{!2581, !2582, !2583}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2578, file: !2579, line: 118, baseType: !864, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2578, file: !2579, line: 119, baseType: !864, size: 32, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2578, file: !2579, line: 120, baseType: !301, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1456, file: !125, line: 516, baseType: !17, size: 32, offset: 8128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1456, file: !125, line: 519, baseType: !17, size: 32, offset: 8160)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1456, file: !125, line: 520, baseType: !2587, size: 64, offset: 8192)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1456, file: !125, line: 523, baseType: !2589, size: 64, offset: 8256)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !169, line: 372, size: 1024, elements: !2592)
!2592 = !{!2593, !2594, !2634, !2694, !2967, !2968, !2969, !2974, !2975, !2976, !2977, !2979, !2982}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2591, file: !169, line: 373, baseType: !106, size: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2591, file: !169, line: 374, baseType: !2595, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !169, line: 291, size: 576, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2601, !2605, !2628, !2632, !2633}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2596, file: !169, line: 292, baseType: !26, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2596, file: !169, line: 293, baseType: !29, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2596, file: !169, line: 295, baseType: !29, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2596, file: !169, line: 297, baseType: !2602, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!31, !2590, !168, !29}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2596, file: !169, line: 299, baseType: !2606, size: 64, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !169, line: 275, size: 320, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2607, file: !169, line: 276, baseType: !26, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !2607, file: !169, line: 277, baseType: !2611, size: 256, offset: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2607, file: !169, line: 277, size: 256, elements: !2612)
!2612 = !{!2613, !2624}
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !169, line: 278, baseType: !2614, size: 256)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !169, line: 278, size: 256, elements: !2615)
!2615 = !{!2616, !2617, !2618, !2619, !2621, !2622, !2623}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2614, file: !169, line: 279, baseType: !26, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2614, file: !169, line: 280, baseType: !2475, size: 32, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2614, file: !169, line: 281, baseType: !2475, size: 32, offset: 96)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2614, file: !169, line: 282, baseType: !2620, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2614, file: !169, line: 283, baseType: !17, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2614, file: !169, line: 284, baseType: !2475, size: 32, offset: 160)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2614, file: !169, line: 285, baseType: !2475, size: 32, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2611, file: !169, line: 287, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!31, !2590}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2596, file: !169, line: 300, baseType: !2629, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!109, !2590}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2596, file: !169, line: 301, baseType: !106, size: 128, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2596, file: !169, line: 302, baseType: !2625, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, scope: !2591, file: !169, line: 375, baseType: !2635, size: 64, offset: 192)
!2635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2591, file: !169, line: 375, size: 64, elements: !2636)
!2636 = !{!2637, !2638}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2635, file: !169, line: 376, baseType: !26, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2635, file: !169, line: 378, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2474, line: 32, size: 640, elements: !2641)
!2641 = !{!2642, !2643, !2655, !2679, !2680, !2681, !2682, !2683, !2687}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2640, file: !2474, line: 33, baseType: !26, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2640, file: !2474, line: 34, baseType: !2644, size: 128, offset: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2579, line: 85, size: 128, elements: !2645)
!2645 = !{!2646, !2647}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2644, file: !2579, line: 86, baseType: !58, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !2579, line: 101, baseType: !2648, size: 64, offset: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !2579, line: 101, size: 64, elements: !2649)
!2649 = !{!2650, !2651, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2648, file: !2579, line: 102, baseType: !48, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2648, file: !2579, line: 103, baseType: !2577, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2648, file: !2579, line: 104, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2579, line: 104, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2640, file: !2474, line: 35, baseType: !2656, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2658, line: 61, size: 128, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2657, file: !2658, line: 62, baseType: !29, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !2658, line: 63, baseType: !2662, size: 64, offset: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2657, file: !2658, line: 63, size: 64, elements: !2663)
!2663 = !{!2664, !2665, !2678}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2662, file: !2658, line: 65, baseType: !48, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2662, file: !2658, line: 66, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2668, line: 169, size: 192, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2667, file: !2668, line: 170, baseType: !2666, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2667, file: !2668, line: 171, baseType: !1455, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2667, file: !2668, line: 172, baseType: !2673, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2658, line: 32, size: 64, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2674, file: !2658, line: 33, baseType: !864, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2674, file: !2658, line: 34, baseType: !864, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2662, file: !2658, line: 67, baseType: !2673, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2640, file: !2474, line: 36, baseType: !29, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2640, file: !2474, line: 37, baseType: !29, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2640, file: !2474, line: 38, baseType: !29, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2640, file: !2474, line: 39, baseType: !2380, size: 64, offset: 448)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2640, file: !2474, line: 40, baseType: !2684, size: 64, offset: 512)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{null}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2640, file: !2474, line: 41, baseType: !2688, size: 64, offset: 576)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2474, line: 26, size: 192, elements: !2690)
!2690 = !{!2691, !2692, !2693}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2689, file: !2474, line: 27, baseType: !29, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2689, file: !2474, line: 28, baseType: !29, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2689, file: !2474, line: 29, baseType: !31, size: 32, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2591, file: !169, line: 380, baseType: !2695, size: 256, offset: 256)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !169, line: 148, size: 256, elements: !2696)
!2696 = !{!2697, !2698, !2699}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2695, file: !169, line: 149, baseType: !748, size: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2695, file: !169, line: 150, baseType: !31, size: 32, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2695, file: !169, line: 151, baseType: !2700, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !169, line: 141, size: 256, elements: !2702)
!2702 = !{!2703, !2964, !2965, !2966}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2701, file: !169, line: 142, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !169, line: 138, baseType: !2705)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!179, !2708, !31, !2963}
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !169, line: 93, size: 67776, elements: !2710)
!2710 = !{!2711, !2912, !2913, !2915, !2916, !2917, !2918, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2945, !2946, !2947, !2948, !2956, !2957, !2958, !2959, !2960, !2961, !2962}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2709, file: !169, line: 94, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !2714, line: 319, size: 2560, elements: !2715)
!2714 = !DIFile(filename: "kernel/trace/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3cded56e3446de300e74751317646ffb")
!2715 = !{!2716, !2717, !2718, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2829, !2830, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2843, !2856, !2857, !2858, !2896, !2899, !2900, !2901, !2902, !2903, !2904}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2713, file: !2714, line: 320, baseType: !106, size: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2713, file: !2714, line: 321, baseType: !940, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2713, file: !2714, line: 322, baseType: !2719, size: 320, offset: 192)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !2714, line: 210, size: 320, elements: !2720)
!2720 = !{!2721, !2722, !2726, !2751, !2752}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2719, file: !2714, line: 211, baseType: !2712, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2719, file: !2714, line: 212, baseType: !2723, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !2725, line: 9, flags: DIFlagFwdDecl)
!2725 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2719, file: !2714, line: 213, baseType: !2727, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array_cpu", file: !2714, line: 183, size: 1024, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2745, !2746, !2750}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !2728, file: !2714, line: 184, baseType: !58, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_page", scope: !2728, file: !2714, line: 185, baseType: !29, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2728, file: !2714, line: 187, baseType: !48, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "saved_latency", scope: !2728, file: !2714, line: 188, baseType: !48, size: 64, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "critical_start", scope: !2728, file: !2714, line: 189, baseType: !48, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "critical_end", scope: !2728, file: !2714, line: 190, baseType: !48, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "critical_sequence", scope: !2728, file: !2714, line: 191, baseType: !48, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nice", scope: !2728, file: !2714, line: 192, baseType: !48, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2728, file: !2714, line: 193, baseType: !48, size: 64, offset: 512)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2728, file: !2714, line: 194, baseType: !48, size: 64, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "skipped_entries", scope: !2728, file: !2714, line: 195, baseType: !48, size: 64, offset: 640)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_timestamp", scope: !2728, file: !2714, line: 196, baseType: !392, size: 64, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2728, file: !2714, line: 197, baseType: !2743, size: 32, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !34, line: 27, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !46, line: 28, baseType: !31)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2728, file: !2714, line: 198, baseType: !825, size: 32, offset: 800)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2728, file: !2714, line: 199, baseType: !2747, size: 128, offset: 832)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2748)
!2748 = !{!2749}
!2749 = !DISubrange(count: 16)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_pid", scope: !2728, file: !2714, line: 204, baseType: !852, size: 8, offset: 960)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "time_start", scope: !2719, file: !2714, line: 214, baseType: !392, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2719, file: !2714, line: 215, baseType: !31, size: 32, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_pids", scope: !2713, file: !2714, line: 346, baseType: !302, size: 64, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_no_pids", scope: !2713, file: !2714, line: 347, baseType: !302, size: 64, offset: 576)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "max_lock", scope: !2713, file: !2714, line: 361, baseType: !80, size: 32, offset: 640)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_disabled", scope: !2713, file: !2714, line: 362, baseType: !31, size: 32, offset: 672)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "stop_count", scope: !2713, file: !2714, line: 369, baseType: !31, size: 32, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "clock_id", scope: !2713, file: !2714, line: 370, baseType: !31, size: 32, offset: 736)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_topts", scope: !2713, file: !2714, line: 371, baseType: !31, size: 32, offset: 768)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "clear_trace", scope: !2713, file: !2714, line: 372, baseType: !852, size: 8, offset: 800)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_percent", scope: !2713, file: !2714, line: 373, baseType: !31, size: 32, offset: 832)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "n_err_log_entries", scope: !2713, file: !2714, line: 374, baseType: !17, size: 32, offset: 864)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "current_trace", scope: !2713, file: !2714, line: 375, baseType: !2764, size: 64, offset: 896)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !2714, line: 556, size: 1216, elements: !2766)
!2766 = !{!2767, !2768, !2772, !2776, !2777, !2778, !2779, !2783, !2784, !2785, !2786, !2790, !2796, !2800, !2804, !2808, !2812, !2813, !2825, !2826, !2827, !2828}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2765, file: !2714, line: 557, baseType: !26, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2765, file: !2714, line: 558, baseType: !2769, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!31, !2712}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2765, file: !2714, line: 559, baseType: !2773, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !2712}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2765, file: !2714, line: 560, baseType: !2773, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2765, file: !2714, line: 561, baseType: !2773, size: 64, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "update_thresh", scope: !2765, file: !2714, line: 562, baseType: !2769, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2765, file: !2714, line: 563, baseType: !2780, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2708}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_open", scope: !2765, file: !2714, line: 564, baseType: !2780, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2765, file: !2714, line: 565, baseType: !2780, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_close", scope: !2765, file: !2714, line: 566, baseType: !2780, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2765, file: !2714, line: 567, baseType: !2787, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!1373, !2708, !668, !940, !44, !49}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2765, file: !2714, line: 570, baseType: !2791, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!1373, !2708, !668, !49, !2794, !44, !17}
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !341, line: 59, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "print_header", scope: !2765, file: !2714, line: 580, baseType: !2797, size: 64, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !2160}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "print_line", scope: !2765, file: !2714, line: 581, baseType: !2801, size: 64, offset: 832)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!179, !2708}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "set_flag", scope: !2765, file: !2714, line: 583, baseType: !2805, size: 64, offset: 896)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!31, !2712, !350, !350, !31}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_changed", scope: !2765, file: !2714, line: 586, baseType: !2809, size: 64, offset: 960)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!31, !2712, !350, !31}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2765, file: !2714, line: 588, baseType: !2764, size: 64, offset: 1024)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2765, file: !2714, line: 589, baseType: !2814, size: 64, offset: 1088)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_flags", file: !2714, line: 519, size: 192, elements: !2816)
!2816 = !{!2817, !2818, !2824}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2815, file: !2714, line: 520, baseType: !350, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2815, file: !2714, line: 521, baseType: !2819, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_opt", file: !2714, line: 510, size: 128, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2820, file: !2714, line: 511, baseType: !26, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !2820, file: !2714, line: 512, baseType: !350, size: 32, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2815, file: !2714, line: 522, baseType: !2764, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2765, file: !2714, line: 590, baseType: !31, size: 32, offset: 1152)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "print_max", scope: !2765, file: !2714, line: 591, baseType: !852, size: 8, offset: 1184)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "allow_instances", scope: !2765, file: !2714, line: 592, baseType: !852, size: 8, offset: 1192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "noboot", scope: !2765, file: !2714, line: 597, baseType: !852, size: 8, offset: 1200)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags", scope: !2713, file: !2714, line: 376, baseType: !17, size: 32, offset: 960)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags_index", scope: !2713, file: !2714, line: 377, baseType: !2831, size: 256, offset: 992)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !2832)
!2832 = !{!2833}
!2833 = !DISubrange(count: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2713, file: !2714, line: 378, baseType: !17, size: 32, offset: 1248)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "start_lock", scope: !2713, file: !2714, line: 379, baseType: !307, size: 32, offset: 1280)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "err_log", scope: !2713, file: !2714, line: 380, baseType: !106, size: 128, offset: 1344)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2713, file: !2714, line: 381, baseType: !1186, size: 64, offset: 1472)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2713, file: !2714, line: 382, baseType: !1186, size: 64, offset: 1536)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dir", scope: !2713, file: !2714, line: 383, baseType: !1186, size: 64, offset: 1600)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "event_dir", scope: !2713, file: !2714, line: 384, baseType: !2841, size: 64, offset: 1664)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !169, line: 659, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !2713, file: !2714, line: 385, baseType: !2844, size: 64, offset: 1728)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_options", file: !2714, line: 220, size: 128, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "tracer", scope: !2845, file: !2714, line: 221, baseType: !2764, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !2845, file: !2714, line: 222, baseType: !2849, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_option_dentry", file: !2714, line: 529, size: 256, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2855}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !2850, file: !2714, line: 530, baseType: !2819, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2850, file: !2714, line: 531, baseType: !2814, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2850, file: !2714, line: 532, baseType: !2712, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2850, file: !2714, line: 533, baseType: !1186, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "systems", scope: !2713, file: !2714, line: 386, baseType: !106, size: 128, offset: 1792)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2713, file: !2714, line: 387, baseType: !106, size: 128, offset: 1920)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "trace_marker_file", scope: !2713, file: !2714, line: 388, baseType: !2859, size: 64, offset: 2048)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !169, line: 655, size: 768, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2872, !2873, !2874, !2891, !2892, !2893, !2894, !2895}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2860, file: !169, line: 656, baseType: !106, size: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !2860, file: !169, line: 657, baseType: !2590, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2860, file: !169, line: 658, baseType: !2865, size: 64, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !2714, line: 1332, size: 128, elements: !2867)
!2867 = !{!2868, !2871}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !2866, file: !2714, line: 1333, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "prog_entry", file: !2714, line: 1330, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "filter_string", scope: !2866, file: !2714, line: 1334, baseType: !940, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !2860, file: !169, line: 659, baseType: !2841, size: 64, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2860, file: !169, line: 660, baseType: !2712, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2860, file: !169, line: 661, baseType: !2875, size: 64, offset: 384)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !2714, line: 1344, size: 384, elements: !2877)
!2877 = !{!2878, !2879, !2887, !2888, !2889, !2890}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2876, file: !2714, line: 1345, baseType: !106, size: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem", scope: !2876, file: !2714, line: 1346, baseType: !2880, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_subsystem", file: !2714, line: 1337, size: 320, elements: !2882)
!2882 = !{!2883, !2884, !2885, !2886}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2881, file: !2714, line: 1338, baseType: !106, size: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2881, file: !2714, line: 1339, baseType: !26, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2881, file: !2714, line: 1340, baseType: !2865, size: 64, offset: 192)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !2881, file: !2714, line: 1341, baseType: !31, size: 32, offset: 256)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2876, file: !2714, line: 1347, baseType: !2712, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !2876, file: !2714, line: 1348, baseType: !2841, size: 64, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !2876, file: !2714, line: 1349, baseType: !31, size: 32, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2876, file: !2714, line: 1350, baseType: !31, size: 32, offset: 352)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !2860, file: !169, line: 662, baseType: !106, size: 128, offset: 448)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2860, file: !169, line: 680, baseType: !48, size: 64, offset: 576)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2860, file: !169, line: 681, baseType: !58, size: 32, offset: 640)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !2860, file: !169, line: 682, baseType: !58, size: 32, offset: 672)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !2860, file: !169, line: 683, baseType: !58, size: 32, offset: 704)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tracing_cpumask", scope: !2713, file: !2714, line: 389, baseType: !2897, size: 64, offset: 2112)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !587, line: 913, baseType: !2898)
!2898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 64, elements: !592)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_cpumask", scope: !2713, file: !2714, line: 391, baseType: !2897, size: 64, offset: 2176)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2713, file: !2714, line: 392, baseType: !31, size: 32, offset: 2240)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ref", scope: !2713, file: !2714, line: 393, baseType: !31, size: 32, offset: 2272)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "no_filter_buffering_ref", scope: !2713, file: !2714, line: 407, baseType: !31, size: 32, offset: 2304)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "hist_vars", scope: !2713, file: !2714, line: 408, baseType: !106, size: 128, offset: 2368)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "last_func_repeats", scope: !2713, file: !2714, line: 412, baseType: !2905, size: 64, offset: 2496)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_func_repeats", file: !2714, line: 307, size: 256, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2906, file: !2714, line: 308, baseType: !48, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ip", scope: !2906, file: !2714, line: 309, baseType: !48, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2906, file: !2714, line: 310, baseType: !48, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ts_last_call", scope: !2906, file: !2714, line: 311, baseType: !392, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2709, file: !169, line: 95, baseType: !2764, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2709, file: !169, line: 96, baseType: !2914, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2709, file: !169, line: 97, baseType: !29, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2709, file: !169, line: 98, baseType: !31, size: 32, offset: 256)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2709, file: !169, line: 99, baseType: !696, size: 256, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2709, file: !169, line: 100, baseType: !2919, size: 64, offset: 576)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2725, line: 10, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2709, file: !169, line: 101, baseType: !48, size: 64, offset: 640)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2709, file: !169, line: 102, baseType: !29, size: 64, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2709, file: !169, line: 103, baseType: !17, size: 32, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2709, file: !169, line: 104, baseType: !940, size: 64, offset: 832)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2709, file: !169, line: 105, baseType: !17, size: 32, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2709, file: !169, line: 106, baseType: !301, size: 64, offset: 960)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2709, file: !169, line: 109, baseType: !2929, size: 33088, offset: 1024)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2930, line: 14, size: 33088, elements: !2931)
!2930 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2931 = !{!2932, !2936, !2943, !2944}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2929, file: !2930, line: 15, baseType: !2933, size: 32768)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2934)
!2934 = !{!2935}
!2935 = !DISubrange(count: 4096)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2929, file: !2930, line: 16, baseType: !2937, size: 192, offset: 32768)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2938, line: 18, size: 192, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2937, file: !2938, line: 19, baseType: !940, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2937, file: !2938, line: 20, baseType: !44, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2937, file: !2938, line: 21, baseType: !44, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2929, file: !2930, line: 17, baseType: !44, size: 64, offset: 32960)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2929, file: !2930, line: 18, baseType: !31, size: 32, offset: 33024)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2709, file: !169, line: 111, baseType: !2897, size: 64, offset: 34112)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2709, file: !169, line: 114, baseType: !852, size: 8, offset: 34176)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2709, file: !169, line: 117, baseType: !2929, size: 33088, offset: 34240)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2709, file: !169, line: 118, baseType: !2949, size: 64, offset: 67328)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !169, line: 79, size: 64, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2950, file: !169, line: 80, baseType: !35, size: 16)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2950, file: !169, line: 81, baseType: !96, size: 8, offset: 16)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2950, file: !169, line: 82, baseType: !96, size: 8, offset: 24)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2950, file: !169, line: 83, baseType: !31, size: 32, offset: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2709, file: !169, line: 119, baseType: !48, size: 64, offset: 67392)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2709, file: !169, line: 120, baseType: !31, size: 32, offset: 67456)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2709, file: !169, line: 121, baseType: !31, size: 32, offset: 67488)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2709, file: !169, line: 122, baseType: !31, size: 32, offset: 67520)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2709, file: !169, line: 123, baseType: !392, size: 64, offset: 67584)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2709, file: !169, line: 125, baseType: !50, size: 64, offset: 67648)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2709, file: !169, line: 126, baseType: !301, size: 64, offset: 67712)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2701, file: !169, line: 143, baseType: !2704, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2701, file: !169, line: 144, baseType: !2704, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2701, file: !169, line: 145, baseType: !2704, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2591, file: !169, line: 381, baseType: !940, size: 64, offset: 512)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2591, file: !169, line: 382, baseType: !2865, size: 64, offset: 576)
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !2591, file: !169, line: 387, baseType: !2970, size: 64, offset: 640)
!2970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2591, file: !169, line: 387, size: 64, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2970, file: !169, line: 388, baseType: !29, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2970, file: !169, line: 389, baseType: !58, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2591, file: !169, line: 391, baseType: !29, size: 64, offset: 704)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2591, file: !169, line: 394, baseType: !31, size: 32, offset: 768)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2591, file: !169, line: 397, baseType: !31, size: 32, offset: 800)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2591, file: !169, line: 398, baseType: !2978, size: 64, offset: 832)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2591, file: !169, line: 399, baseType: !2980, size: 64, offset: 896)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !169, line: 399, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2591, file: !169, line: 401, baseType: !2983, size: 64, offset: 960)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!31, !2590, !2986}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !245, line: 671, size: 8512, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3658, !3659, !3660, !3661, !3667, !3668, !3669, !3670, !3671, !3755, !3756, !3757, !3758, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3894, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3911, !4082, !4083, !4084, !4085, !4355, !4356, !4357}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2987, file: !245, line: 678, baseType: !106, size: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2987, file: !245, line: 684, baseType: !106, size: 128, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2987, file: !245, line: 685, baseType: !106, size: 128, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2987, file: !245, line: 689, baseType: !384, size: 192, align: 64, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2987, file: !245, line: 690, baseType: !392, size: 64, offset: 576)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2987, file: !245, line: 696, baseType: !106, size: 128, offset: 640)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2987, file: !245, line: 698, baseType: !748, size: 128, offset: 768)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2987, file: !245, line: 699, baseType: !106, size: 128, offset: 896)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2987, file: !245, line: 700, baseType: !31, size: 32, offset: 1024)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2987, file: !245, line: 703, baseType: !31, size: 32, offset: 1056)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2987, file: !245, line: 705, baseType: !31, size: 32, offset: 1088)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2987, file: !245, line: 707, baseType: !17, size: 32, offset: 1120)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2987, file: !245, line: 708, baseType: !2986, size: 64, offset: 1152)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2987, file: !245, line: 714, baseType: !3003, size: 64, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !245, line: 302, size: 2432, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3568, !3569, !3570, !3571, !3572, !3576, !3577, !3581, !3585, !3586, !3590, !3594, !3595, !3596, !3600, !3604, !3608, !3609, !3610, !3614, !3615, !3619, !3623, !3624, !3644, !3648, !3649, !3650, !3654}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3004, file: !245, line: 303, baseType: !106, size: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3004, file: !245, line: 305, baseType: !1455, size: 64, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3004, file: !245, line: 306, baseType: !3009, size: 64, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !192, line: 705, size: 5824, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3017, !3018, !3071, !3158, !3159, !3160, !3161, !3162, !3169, !3261, !3274, !3284, !3288, !3290, !3291, !3292, !3296, !3303, !3304, !3307, !3310, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3472, !3473, !3474, !3477, !3480, !3489, !3490, !3491, !3492, !3493, !3494}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3010, file: !192, line: 706, baseType: !1468, size: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3010, file: !192, line: 707, baseType: !3009, size: 64, offset: 512)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3010, file: !192, line: 709, baseType: !3015, size: 64, offset: 576)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !192, line: 37, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3010, file: !192, line: 711, baseType: !26, size: 64, offset: 640)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3010, file: !192, line: 712, baseType: !3019, size: 64, offset: 704)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !192, line: 89, size: 384, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3031, !3036, !3040}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3021, file: !192, line: 90, baseType: !26, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3021, file: !192, line: 91, baseType: !1548, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3021, file: !192, line: 92, baseType: !3026, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!31, !3029, !1504}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3010)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3021, file: !192, line: 93, baseType: !3032, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!940, !3029, !3035, !1043, !1044}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3021, file: !192, line: 95, baseType: !3037, size: 64, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null, !3009}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3021, file: !192, line: 97, baseType: !3041, size: 64, offset: 320)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3043)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !199, line: 286, size: 1472, elements: !3044)
!3044 = !{!3045, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3043, file: !199, line: 287, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!31, !3009}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3043, file: !199, line: 288, baseType: !3037, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3043, file: !199, line: 289, baseType: !3046, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3043, file: !199, line: 290, baseType: !3046, size: 64, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3043, file: !199, line: 291, baseType: !3046, size: 64, offset: 256)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3043, file: !199, line: 292, baseType: !3046, size: 64, offset: 320)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3043, file: !199, line: 293, baseType: !3046, size: 64, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3043, file: !199, line: 294, baseType: !3046, size: 64, offset: 448)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3043, file: !199, line: 295, baseType: !3046, size: 64, offset: 512)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3043, file: !199, line: 296, baseType: !3046, size: 64, offset: 576)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3043, file: !199, line: 297, baseType: !3046, size: 64, offset: 640)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3043, file: !199, line: 298, baseType: !3046, size: 64, offset: 704)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3043, file: !199, line: 299, baseType: !3046, size: 64, offset: 768)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3043, file: !199, line: 300, baseType: !3046, size: 64, offset: 832)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3043, file: !199, line: 301, baseType: !3046, size: 64, offset: 896)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3043, file: !199, line: 302, baseType: !3046, size: 64, offset: 960)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3043, file: !199, line: 303, baseType: !3046, size: 64, offset: 1024)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3043, file: !199, line: 304, baseType: !3046, size: 64, offset: 1088)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3043, file: !199, line: 305, baseType: !3046, size: 64, offset: 1152)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3043, file: !199, line: 306, baseType: !3046, size: 64, offset: 1216)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3043, file: !199, line: 307, baseType: !3046, size: 64, offset: 1280)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3043, file: !199, line: 308, baseType: !3046, size: 64, offset: 1344)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3043, file: !199, line: 309, baseType: !3046, size: 64, offset: 1408)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3010, file: !192, line: 714, baseType: !3072, size: 64, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3075, line: 80, size: 1344, elements: !3076)
!3075 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3076 = !{!3077, !3078, !3079, !3080, !3081, !3082, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3157}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3074, file: !3075, line: 81, baseType: !26, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3074, file: !3075, line: 82, baseType: !26, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3074, file: !3075, line: 83, baseType: !1548, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3074, file: !3075, line: 84, baseType: !1548, size: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3074, file: !3075, line: 85, baseType: !1548, size: 64, offset: 256)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3074, file: !3075, line: 87, baseType: !3083, size: 64, offset: 320)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!31, !3009, !3086}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !186, line: 96, size: 1152, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3092, !3093, !3094, !3095, !3109, !3120, !3121, !3122, !3123, !3124, !3132, !3133, !3134, !3135, !3136, !3137}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3087, file: !186, line: 97, baseType: !26, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3087, file: !186, line: 98, baseType: !3072, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3087, file: !186, line: 100, baseType: !1455, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3087, file: !186, line: 101, baseType: !26, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3087, file: !186, line: 103, baseType: !852, size: 8, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3087, file: !186, line: 104, baseType: !185, size: 32, offset: 288)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3087, file: !186, line: 106, baseType: !3096, size: 64, offset: 320)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3098)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3099, line: 282, size: 1600, elements: !3100)
!3099 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!3100 = !{!3101, !3103, !3104, !3108}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3098, file: !3099, line: 283, baseType: !3102, size: 256)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2832)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3098, file: !3099, line: 284, baseType: !3102, size: 256, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3098, file: !3099, line: 285, baseType: !3105, size: 1024, offset: 512)
!3105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !3106)
!3106 = !{!3107}
!3107 = !DISubrange(count: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3098, file: !3099, line: 286, baseType: !2097, size: 64, offset: 1536)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3087, file: !186, line: 107, baseType: !3110, size: 64, offset: 384)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3112)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3099, line: 217, size: 256, elements: !3113)
!3113 = !{!3114, !3116, !3118, !3119}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3112, file: !3099, line: 218, baseType: !3115, size: 128)
!3115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !2748)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3112, file: !3099, line: 219, baseType: !3117, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3099, line: 15, baseType: !48)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3112, file: !3099, line: 220, baseType: !351, size: 32, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3112, file: !3099, line: 221, baseType: !351, size: 32, offset: 224)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3087, file: !186, line: 109, baseType: !3046, size: 64, offset: 448)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3087, file: !186, line: 110, baseType: !3037, size: 64, offset: 512)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3087, file: !186, line: 111, baseType: !3046, size: 64, offset: 576)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3087, file: !186, line: 112, baseType: !3037, size: 64, offset: 640)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3087, file: !186, line: 113, baseType: !3125, size: 64, offset: 704)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!31, !3009, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !199, line: 60, baseType: !3129)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !199, line: 58, size: 32, elements: !3130)
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3129, file: !199, line: 59, baseType: !31, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3087, file: !186, line: 114, baseType: !3046, size: 64, offset: 768)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3087, file: !186, line: 115, baseType: !1548, size: 64, offset: 832)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3087, file: !186, line: 116, baseType: !1548, size: 64, offset: 896)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3087, file: !186, line: 118, baseType: !3041, size: 64, offset: 960)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3087, file: !186, line: 119, baseType: !3037, size: 64, offset: 1024)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3087, file: !186, line: 121, baseType: !3138, size: 64, offset: 1088)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !186, line: 121, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3074, file: !3075, line: 88, baseType: !3026, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3074, file: !3075, line: 89, baseType: !3046, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3074, file: !3075, line: 90, baseType: !3037, size: 64, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3074, file: !3075, line: 91, baseType: !3037, size: 64, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3074, file: !3075, line: 92, baseType: !3037, size: 64, offset: 640)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3074, file: !3075, line: 94, baseType: !3046, size: 64, offset: 704)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3074, file: !3075, line: 95, baseType: !3046, size: 64, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3074, file: !3075, line: 97, baseType: !3125, size: 64, offset: 832)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3074, file: !3075, line: 98, baseType: !3046, size: 64, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3074, file: !3075, line: 100, baseType: !3046, size: 64, offset: 960)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3074, file: !3075, line: 102, baseType: !3046, size: 64, offset: 1024)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3074, file: !3075, line: 103, baseType: !3037, size: 64, offset: 1088)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3074, file: !3075, line: 105, baseType: !3041, size: 64, offset: 1152)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3074, file: !3075, line: 107, baseType: !3154, size: 64, offset: 1216)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3156)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3075, line: 107, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3074, file: !3075, line: 109, baseType: !852, size: 8, offset: 1280)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3010, file: !192, line: 715, baseType: !3086, size: 64, offset: 832)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3010, file: !192, line: 717, baseType: !29, size: 64, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3010, file: !192, line: 719, baseType: !29, size: 64, offset: 960)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3010, file: !192, line: 721, baseType: !696, size: 256, offset: 1024)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3010, file: !192, line: 725, baseType: !3163, size: 448, offset: 1280)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !192, line: 517, size: 448, elements: !3164)
!3164 = !{!3165, !3166, !3167, !3168}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3163, file: !192, line: 518, baseType: !106, size: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3163, file: !192, line: 519, baseType: !106, size: 128, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3163, file: !192, line: 520, baseType: !106, size: 128, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3163, file: !192, line: 521, baseType: !191, size: 32, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3010, file: !192, line: 726, baseType: !3170, size: 2496, offset: 1728)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !199, line: 663, size: 2496, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3254, !3258}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3170, file: !199, line: 664, baseType: !3128, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3170, file: !199, line: 665, baseType: !17, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3170, file: !199, line: 666, baseType: !17, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3170, file: !199, line: 667, baseType: !852, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3170, file: !199, line: 668, baseType: !852, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3170, file: !199, line: 669, baseType: !852, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3170, file: !199, line: 670, baseType: !852, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3170, file: !199, line: 671, baseType: !852, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3170, file: !199, line: 672, baseType: !852, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3170, file: !199, line: 673, baseType: !852, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3170, file: !199, line: 674, baseType: !852, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3170, file: !199, line: 675, baseType: !350, size: 32, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3170, file: !199, line: 676, baseType: !68, size: 32, offset: 96)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3170, file: !199, line: 678, baseType: !106, size: 128, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3170, file: !199, line: 679, baseType: !1018, size: 256, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3170, file: !199, line: 680, baseType: !3188, size: 64, offset: 512)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3190, line: 43, size: 1536, elements: !3191)
!3190 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3189, file: !3190, line: 44, baseType: !26, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3189, file: !3190, line: 45, baseType: !31, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3189, file: !3190, line: 46, baseType: !106, size: 128, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3189, file: !3190, line: 47, baseType: !68, size: 32, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3189, file: !3190, line: 48, baseType: !3197, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !199, line: 629, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3189, file: !3190, line: 49, baseType: !2510, size: 320, offset: 384)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3189, file: !3190, line: 50, baseType: !48, size: 64, offset: 704)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3189, file: !3190, line: 51, baseType: !467, size: 64, offset: 768)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3189, file: !3190, line: 52, baseType: !467, size: 64, offset: 832)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3189, file: !3190, line: 53, baseType: !467, size: 64, offset: 896)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3189, file: !3190, line: 54, baseType: !467, size: 64, offset: 960)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3189, file: !3190, line: 55, baseType: !467, size: 64, offset: 1024)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3189, file: !3190, line: 56, baseType: !48, size: 64, offset: 1088)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3189, file: !3190, line: 57, baseType: !48, size: 64, offset: 1152)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3189, file: !3190, line: 58, baseType: !48, size: 64, offset: 1216)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3189, file: !3190, line: 59, baseType: !48, size: 64, offset: 1280)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3189, file: !3190, line: 60, baseType: !48, size: 64, offset: 1344)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3189, file: !3190, line: 61, baseType: !3009, size: 64, offset: 1408)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3189, file: !3190, line: 62, baseType: !852, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3189, file: !3190, line: 63, baseType: !852, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3170, file: !199, line: 681, baseType: !852, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3170, file: !199, line: 682, baseType: !852, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3170, file: !199, line: 683, baseType: !852, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3170, file: !199, line: 684, baseType: !17, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3170, file: !199, line: 685, baseType: !17, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3170, file: !199, line: 690, baseType: !459, size: 512, offset: 640)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3170, file: !199, line: 691, baseType: !392, size: 64, offset: 1152)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3170, file: !199, line: 692, baseType: !979, size: 256, offset: 1216)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3170, file: !199, line: 693, baseType: !63, size: 192, offset: 1472)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3170, file: !199, line: 694, baseType: !3197, size: 64, offset: 1664)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3170, file: !199, line: 695, baseType: !58, size: 32, offset: 1728)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3170, file: !199, line: 696, baseType: !58, size: 32, offset: 1760)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3170, file: !199, line: 697, baseType: !17, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3170, file: !199, line: 698, baseType: !17, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3170, file: !199, line: 699, baseType: !17, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3170, file: !199, line: 700, baseType: !17, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3170, file: !199, line: 701, baseType: !17, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3170, file: !199, line: 702, baseType: !17, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3170, file: !199, line: 703, baseType: !852, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3170, file: !199, line: 704, baseType: !17, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3170, file: !199, line: 705, baseType: !17, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3170, file: !199, line: 706, baseType: !17, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3170, file: !199, line: 707, baseType: !17, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3170, file: !199, line: 708, baseType: !17, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3170, file: !199, line: 709, baseType: !17, size: 32, offset: 1824)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3170, file: !199, line: 710, baseType: !198, size: 32, offset: 1856)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3170, file: !199, line: 711, baseType: !206, size: 32, offset: 1888)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3170, file: !199, line: 712, baseType: !206, size: 32, offset: 1920)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3170, file: !199, line: 713, baseType: !31, size: 32, offset: 1952)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3170, file: !199, line: 714, baseType: !31, size: 32, offset: 1984)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3170, file: !199, line: 715, baseType: !392, size: 64, offset: 2048)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3170, file: !199, line: 716, baseType: !392, size: 64, offset: 2112)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3170, file: !199, line: 717, baseType: !392, size: 64, offset: 2176)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3170, file: !199, line: 718, baseType: !392, size: 64, offset: 2240)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3170, file: !199, line: 720, baseType: !3249, size: 64, offset: 2304)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !199, line: 632, size: 64, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3250, file: !199, line: 633, baseType: !68, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3250, file: !199, line: 634, baseType: !17, size: 32, offset: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3170, file: !199, line: 721, baseType: !3255, size: 64, offset: 2368)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{null, !3009, !864}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3170, file: !199, line: 722, baseType: !3259, size: 64, offset: 2432)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !199, line: 722, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3010, file: !192, line: 727, baseType: !3262, size: 64, offset: 4224)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !199, line: 742, size: 1792, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3271, !3272, !3273}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3263, file: !199, line: 743, baseType: !3043, size: 1472)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3263, file: !199, line: 744, baseType: !3046, size: 64, offset: 1472)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3263, file: !199, line: 745, baseType: !3268, size: 64, offset: 1536)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !3009, !852}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3263, file: !199, line: 746, baseType: !3046, size: 64, offset: 1600)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3263, file: !199, line: 747, baseType: !3037, size: 64, offset: 1664)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3263, file: !199, line: 748, baseType: !3037, size: 64, offset: 1728)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3010, file: !192, line: 736, baseType: !3275, size: 128, offset: 4288)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !192, line: 529, size: 128, elements: !3276)
!3276 = !{!3277, !3281}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3275, file: !192, line: 531, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3280, line: 13, flags: DIFlagFwdDecl)
!3280 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3275, file: !192, line: 532, baseType: !3282, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !192, line: 49, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3010, file: !192, line: 738, baseType: !3285, size: 64, offset: 4416)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3287)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !192, line: 738, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3010, file: !192, line: 740, baseType: !3289, size: 64, offset: 4480)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3010, file: !192, line: 741, baseType: !392, size: 64, offset: 4544)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3010, file: !192, line: 746, baseType: !392, size: 64, offset: 4608)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3010, file: !192, line: 747, baseType: !3293, size: 64, offset: 4672)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3295)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !192, line: 747, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3010, file: !192, line: 749, baseType: !3297, size: 64, offset: 4736)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !192, line: 428, size: 128, elements: !3299)
!3299 = !{!3300, !3301, !3302}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3298, file: !192, line: 433, baseType: !17, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3298, file: !192, line: 434, baseType: !17, size: 32, offset: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3298, file: !192, line: 435, baseType: !48, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3010, file: !192, line: 751, baseType: !106, size: 128, offset: 4800)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3010, file: !192, line: 762, baseType: !3305, size: 64, offset: 4928)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !192, line: 762, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3010, file: !192, line: 770, baseType: !3308, offset: 4992)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3309, line: 5, elements: !661)
!3309 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3010, file: !192, line: 772, baseType: !3311, size: 64, offset: 4992)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3313, line: 48, size: 1152, elements: !3314)
!3313 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!3314 = !{!3315, !3316, !3318, !3319, !3422, !3430, !3431, !3432, !3433, !3434, !3435}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3312, file: !3313, line: 49, baseType: !26, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3312, file: !3313, line: 50, baseType: !3317, size: 32, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3313, line: 25, baseType: !350)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3312, file: !3313, line: 51, baseType: !26, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3312, file: !3313, line: 52, baseType: !3320, size: 512, offset: 192)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3321, line: 41, size: 512, elements: !3322)
!3321 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3322 = !{!3323, !3325, !3418, !3419, !3420, !3421}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3320, file: !3321, line: 42, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3320, file: !3321, line: 43, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3328)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3321, line: 125, size: 1408, elements: !3329)
!3329 = !{!3330, !3334, !3338, !3344, !3348, !3349, !3353, !3357, !3361, !3365, !3369, !3370, !3374, !3378, !3382, !3393, !3394, !3395, !3396, !3406, !3410, !3414}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3328, file: !3321, line: 126, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!3324, !3324}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3328, file: !3321, line: 127, baseType: !3335, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !3324}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3328, file: !3321, line: 128, baseType: !3339, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!852, !3342}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3328, file: !3321, line: 129, baseType: !3345, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!2097, !3342, !3029}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3328, file: !3321, line: 131, baseType: !3339, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3328, file: !3321, line: 133, baseType: !3350, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!213, !3342}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3328, file: !3321, line: 134, baseType: !3354, size: 64, offset: 384)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!852, !3342, !26}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3328, file: !3321, line: 136, baseType: !3358, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!31, !3342, !26, !17, !29, !44}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3328, file: !3321, line: 141, baseType: !3362, size: 64, offset: 512)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!31, !3342, !26, !2587, !44}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3328, file: !3321, line: 144, baseType: !3366, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!26, !3342}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3328, file: !3321, line: 145, baseType: !3366, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3328, file: !3321, line: 146, baseType: !3371, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!3324, !3342}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3328, file: !3321, line: 148, baseType: !3375, size: 64, offset: 768)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!3324, !3342, !3324}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3328, file: !3321, line: 151, baseType: !3379, size: 64, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!3324, !3342, !26}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3328, file: !3321, line: 153, baseType: !3383, size: 64, offset: 896)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!31, !3342, !26, !26, !17, !17, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3321, line: 94, size: 640, elements: !3388)
!3388 = !{!3389, !3390, !3391}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3387, file: !3321, line: 95, baseType: !3324, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3387, file: !3321, line: 96, baseType: !17, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3387, file: !3321, line: 97, baseType: !3392, size: 512, offset: 128)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 512, elements: !502)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3328, file: !3321, line: 158, baseType: !3375, size: 64, offset: 960)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3328, file: !3321, line: 161, baseType: !3371, size: 64, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3328, file: !3321, line: 163, baseType: !3331, size: 64, offset: 1088)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3328, file: !3321, line: 164, baseType: !3397, size: 64, offset: 1152)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!31, !3342, !3400}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3321, line: 73, size: 128, elements: !3402)
!3402 = !{!3403, !3404, !3405}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3401, file: !3321, line: 74, baseType: !17, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3401, file: !3321, line: 75, baseType: !17, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3401, file: !3321, line: 76, baseType: !3342, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3328, file: !3321, line: 166, baseType: !3407, size: 64, offset: 1216)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!29, !3324, !31}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3328, file: !3321, line: 167, baseType: !3411, size: 64, offset: 1280)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!31, !3342, !17}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3328, file: !3321, line: 168, baseType: !3415, size: 64, offset: 1344)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!31, !3324}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3320, file: !3321, line: 44, baseType: !3009, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3320, file: !3321, line: 45, baseType: !106, size: 128, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3320, file: !3321, line: 46, baseType: !106, size: 128, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3320, file: !3321, line: 47, baseType: !92, size: 8, offset: 448)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3312, file: !3313, line: 54, baseType: !3423, size: 64, offset: 704)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3313, line: 28, size: 256, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3424, file: !3313, line: 29, baseType: !940, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3424, file: !3313, line: 30, baseType: !31, size: 32, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3424, file: !3313, line: 31, baseType: !29, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3424, file: !3313, line: 32, baseType: !3423, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3312, file: !3313, line: 55, baseType: !3423, size: 64, offset: 768)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3312, file: !3313, line: 56, baseType: !3311, size: 64, offset: 832)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3312, file: !3313, line: 57, baseType: !3311, size: 64, offset: 896)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3312, file: !3313, line: 58, baseType: !3311, size: 64, offset: 960)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3312, file: !3313, line: 62, baseType: !48, size: 64, offset: 1024)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3312, file: !3313, line: 63, baseType: !29, size: 64, offset: 1088)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3010, file: !192, line: 773, baseType: !3324, size: 64, offset: 5056)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3010, file: !192, line: 776, baseType: !31, size: 32, offset: 5120)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3010, file: !192, line: 778, baseType: !1295, size: 32, offset: 5152)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3010, file: !192, line: 779, baseType: !350, size: 32, offset: 5184)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3010, file: !192, line: 781, baseType: !68, size: 32, offset: 5216)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3010, file: !192, line: 782, baseType: !106, size: 128, offset: 5248)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3010, file: !192, line: 784, baseType: !3443, size: 64, offset: 5376)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3446, line: 52, size: 768, elements: !3447)
!3446 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3456, !3460, !3461, !3462, !3463, !3467, !3471}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3445, file: !3446, line: 53, baseType: !26, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3445, file: !3446, line: 55, baseType: !1548, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3445, file: !3446, line: 56, baseType: !1548, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3445, file: !3446, line: 58, baseType: !3026, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3445, file: !3446, line: 59, baseType: !3453, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!940, !3029, !3035}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3445, file: !3446, line: 61, baseType: !3457, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{null, !3443}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3445, file: !3446, line: 62, baseType: !3037, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3445, file: !3446, line: 64, baseType: !3046, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3445, file: !3446, line: 66, baseType: !2080, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3445, file: !3446, line: 67, baseType: !3464, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!2097, !3029}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3445, file: !3446, line: 69, baseType: !3468, size: 64, offset: 640)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3029, !1043, !1044}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3445, file: !3446, line: 71, baseType: !3041, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3010, file: !192, line: 785, baseType: !1548, size: 64, offset: 5440)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3010, file: !192, line: 787, baseType: !3037, size: 64, offset: 5504)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3010, file: !192, line: 788, baseType: !3475, size: 64, offset: 5568)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !192, line: 46, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3010, file: !192, line: 789, baseType: !3478, size: 64, offset: 5632)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !192, line: 48, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3010, file: !192, line: 791, baseType: !3481, size: 64, offset: 5696)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !192, line: 597, size: 128, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3482, file: !192, line: 598, baseType: !219, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3482, file: !192, line: 599, baseType: !228, size: 32, offset: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3482, file: !192, line: 600, baseType: !233, size: 32, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3482, file: !192, line: 601, baseType: !852, size: 8, offset: 96)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3482, file: !192, line: 602, baseType: !852, size: 8, offset: 104)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3010, file: !192, line: 793, baseType: !238, size: 32, offset: 5760)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3010, file: !192, line: 795, baseType: !852, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3010, file: !192, line: 796, baseType: !852, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3010, file: !192, line: 797, baseType: !852, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3010, file: !192, line: 798, baseType: !852, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3010, file: !192, line: 799, baseType: !852, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3004, file: !245, line: 307, baseType: !3009, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3004, file: !245, line: 308, baseType: !1548, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3004, file: !245, line: 309, baseType: !1548, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3004, file: !245, line: 310, baseType: !26, size: 64, offset: 448)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3004, file: !245, line: 311, baseType: !31, size: 32, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3004, file: !245, line: 316, baseType: !31, size: 32, offset: 544)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3004, file: !245, line: 318, baseType: !2409, size: 64, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3004, file: !245, line: 319, baseType: !3503, size: 64, offset: 640)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !245, line: 977, size: 1856, elements: !3505)
!3505 = !{!3506, !3558, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3504, file: !245, line: 978, baseType: !3507, size: 896)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !245, line: 873, size: 896, elements: !3508)
!3508 = !{!3509, !3510, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3507, file: !245, line: 874, baseType: !3003, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3507, file: !245, line: 875, baseType: !3511, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !245, line: 912, size: 1792, elements: !3513)
!3513 = !{!3514, !3515, !3516, !3517, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3512, file: !245, line: 917, baseType: !307, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3512, file: !245, line: 923, baseType: !696, size: 256, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3512, file: !245, line: 925, baseType: !106, size: 128, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3512, file: !245, line: 926, baseType: !3518, size: 128, offset: 448)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !245, line: 901, size: 128, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3518, file: !245, line: 902, baseType: !526, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3518, file: !245, line: 903, baseType: !392, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3512, file: !245, line: 927, baseType: !3518, size: 128, offset: 576)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3512, file: !245, line: 928, baseType: !106, size: 128, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3512, file: !245, line: 930, baseType: !31, size: 32, offset: 832)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3512, file: !245, line: 931, baseType: !31, size: 32, offset: 864)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3512, file: !245, line: 932, baseType: !31, size: 32, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3512, file: !245, line: 934, baseType: !31, size: 32, offset: 928)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3512, file: !245, line: 935, baseType: !31, size: 32, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3512, file: !245, line: 936, baseType: !31, size: 32, offset: 992)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3512, file: !245, line: 937, baseType: !31, size: 32, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3512, file: !245, line: 939, baseType: !356, size: 32, offset: 1056)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3512, file: !245, line: 940, baseType: !339, size: 64, offset: 1088)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3512, file: !245, line: 945, baseType: !392, size: 64, offset: 1152)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3512, file: !245, line: 946, baseType: !392, size: 64, offset: 1216)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3512, file: !245, line: 947, baseType: !392, size: 64, offset: 1280)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3512, file: !245, line: 953, baseType: !3511, size: 64, offset: 1344)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3512, file: !245, line: 954, baseType: !392, size: 64, offset: 1408)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3512, file: !245, line: 955, baseType: !392, size: 64, offset: 1472)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3512, file: !245, line: 956, baseType: !31, size: 32, offset: 1536)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3512, file: !245, line: 958, baseType: !31, size: 32, offset: 1568)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3512, file: !245, line: 960, baseType: !676, size: 128, align: 64, offset: 1600)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3512, file: !245, line: 968, baseType: !3543, size: 64, offset: 1728)
!3543 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3544, line: 12, baseType: !3545)
!3544 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3544, line: 10, size: 64, elements: !3546)
!3546 = !{!3547}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3545, file: !3544, line: 11, baseType: !689, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3507, file: !245, line: 877, baseType: !106, size: 128, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3507, file: !245, line: 879, baseType: !106, size: 128, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3507, file: !245, line: 880, baseType: !106, size: 128, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3507, file: !245, line: 883, baseType: !17, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3507, file: !245, line: 885, baseType: !17, size: 32, offset: 544)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3507, file: !245, line: 886, baseType: !17, size: 32, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3507, file: !245, line: 888, baseType: !58, size: 32, offset: 608)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3507, file: !245, line: 889, baseType: !676, size: 128, align: 64, offset: 640)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3507, file: !245, line: 891, baseType: !29, size: 64, offset: 768)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3507, file: !245, line: 898, baseType: !31, size: 32, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3504, file: !245, line: 979, baseType: !3559, size: 64, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3504, file: !245, line: 981, baseType: !106, size: 128, offset: 960)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3504, file: !245, line: 982, baseType: !31, size: 32, offset: 1088)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3504, file: !245, line: 984, baseType: !31, size: 32, offset: 1120)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3504, file: !245, line: 985, baseType: !31, size: 32, offset: 1152)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3504, file: !245, line: 987, baseType: !307, size: 32, offset: 1184)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3504, file: !245, line: 988, baseType: !459, size: 512, offset: 1216)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3504, file: !245, line: 989, baseType: !467, size: 64, offset: 1728)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3504, file: !245, line: 990, baseType: !17, size: 32, offset: 1792)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3004, file: !245, line: 320, baseType: !58, size: 32, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3004, file: !245, line: 321, baseType: !31, size: 32, offset: 736)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3004, file: !245, line: 322, baseType: !31, size: 32, offset: 768)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3004, file: !245, line: 325, baseType: !17, size: 32, offset: 800)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3004, file: !245, line: 331, baseType: !3573, size: 64, offset: 832)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !3003}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3004, file: !245, line: 332, baseType: !3573, size: 64, offset: 896)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3004, file: !245, line: 350, baseType: !3578, size: 64, offset: 960)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!31, !2986}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3004, file: !245, line: 356, baseType: !3582, size: 64, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{null, !2986, !640}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3004, file: !245, line: 357, baseType: !3582, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3004, file: !245, line: 385, baseType: !3587, size: 64, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!31, !2986, !31}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3004, file: !245, line: 386, baseType: !3591, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !2986, !31}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3004, file: !245, line: 406, baseType: !3591, size: 64, offset: 1280)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3004, file: !245, line: 407, baseType: !3591, size: 64, offset: 1344)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3004, file: !245, line: 415, baseType: !3597, size: 64, offset: 1408)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !2986}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3004, file: !245, line: 427, baseType: !3601, size: 64, offset: 1472)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !3003, !17}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3004, file: !245, line: 436, baseType: !3605, size: 64, offset: 1536)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!31, !3003}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3004, file: !245, line: 443, baseType: !3573, size: 64, offset: 1600)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3004, file: !245, line: 450, baseType: !3578, size: 64, offset: 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3004, file: !245, line: 455, baseType: !3611, size: 64, offset: 1728)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3559, !852}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3004, file: !245, line: 461, baseType: !785, size: 64, offset: 1792)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3004, file: !245, line: 469, baseType: !3616, size: 64, offset: 1856)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !3559, !3559}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3004, file: !245, line: 476, baseType: !3620, size: 64, offset: 1920)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!29, !2986, !1969, !31, !852}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3004, file: !245, line: 483, baseType: !1252, size: 64, offset: 1984)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3004, file: !245, line: 494, baseType: !3625, size: 64, offset: 2048)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!301, !2986, !3628, !48}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !245, line: 1014, size: 448, elements: !3630)
!3630 = !{!3631, !3632, !3635, !3636, !3637, !3638, !3643}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3629, file: !245, line: 1015, baseType: !2986, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3629, file: !245, line: 1016, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !245, line: 641, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3629, file: !245, line: 1017, baseType: !48, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3629, file: !245, line: 1018, baseType: !48, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3629, file: !245, line: 1019, baseType: !392, size: 64, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !3629, file: !245, line: 1020, baseType: !3639, size: 64, offset: 320)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3629, file: !245, line: 1020, size: 64, elements: !3640)
!3640 = !{!3641, !3642}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3639, file: !245, line: 1021, baseType: !29, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3639, file: !245, line: 1022, baseType: !48, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3629, file: !245, line: 1024, baseType: !31, size: 32, offset: 384)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3004, file: !245, line: 506, baseType: !3645, size: 64, offset: 2112)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!31, !109}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3004, file: !245, line: 520, baseType: !3597, size: 64, offset: 2176)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3004, file: !245, line: 530, baseType: !3578, size: 64, offset: 2240)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3004, file: !245, line: 537, baseType: !3651, size: 64, offset: 2304)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!852, !3003, !31}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3004, file: !245, line: 542, baseType: !3655, size: 64, offset: 2368)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!31, !2986, !392}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2987, file: !245, line: 715, baseType: !29, size: 64, offset: 1280)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2987, file: !245, line: 717, baseType: !244, size: 32, offset: 1344)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2987, file: !245, line: 718, baseType: !17, size: 32, offset: 1376)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2987, file: !245, line: 719, baseType: !3662, size: 64, offset: 1408)
!3662 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3663, line: 26, baseType: !3664)
!3663 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3663, line: 24, size: 64, elements: !3665)
!3665 = !{!3666}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3664, file: !3663, line: 25, baseType: !3543, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2987, file: !245, line: 720, baseType: !691, size: 64, offset: 1472)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2987, file: !245, line: 728, baseType: !392, size: 64, offset: 1536)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2987, file: !245, line: 729, baseType: !392, size: 64, offset: 1600)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2987, file: !245, line: 730, baseType: !392, size: 64, offset: 1664)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2987, file: !245, line: 732, baseType: !3672, size: 1088, offset: 1728)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3673, line: 385, size: 1088, elements: !3674)
!3673 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3674 = !{!3675, !3676, !3677, !3678, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3728, !3729, !3736, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3672, file: !3673, line: 390, baseType: !351, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3672, file: !3673, line: 395, baseType: !351, size: 32, offset: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3672, file: !3673, line: 400, baseType: !393, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !3673, line: 402, baseType: !3679, size: 64, offset: 128)
!3679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3672, file: !3673, line: 402, size: 64, elements: !3680)
!3680 = !{!3681, !3682}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3679, file: !3673, line: 403, baseType: !393, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3679, file: !3673, line: 404, baseType: !393, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3672, file: !3673, line: 407, baseType: !393, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3672, file: !3673, line: 408, baseType: !393, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3672, file: !3673, line: 410, baseType: !393, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3672, file: !3673, line: 411, baseType: !393, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3672, file: !3673, line: 412, baseType: !393, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3672, file: !3673, line: 413, baseType: !393, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3672, file: !3673, line: 414, baseType: !393, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3672, file: !3673, line: 415, baseType: !393, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3672, file: !3673, line: 416, baseType: !393, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3672, file: !3673, line: 417, baseType: !393, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3672, file: !3673, line: 418, baseType: !393, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3672, file: !3673, line: 419, baseType: !393, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3672, file: !3673, line: 420, baseType: !393, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3672, file: !3673, line: 421, baseType: !393, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3672, file: !3673, line: 422, baseType: !393, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3672, file: !3673, line: 423, baseType: !393, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3672, file: !3673, line: 424, baseType: !393, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3672, file: !3673, line: 435, baseType: !393, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3672, file: !3673, line: 436, baseType: !393, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3672, file: !3673, line: 437, baseType: !393, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3672, file: !3673, line: 439, baseType: !393, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3672, file: !3673, line: 440, baseType: !393, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3672, file: !3673, line: 442, baseType: !393, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3672, file: !3673, line: 443, baseType: !393, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3672, file: !3673, line: 444, baseType: !393, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3672, file: !3673, line: 445, baseType: !393, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3672, file: !3673, line: 446, baseType: !393, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3672, file: !3673, line: 447, baseType: !393, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3672, file: !3673, line: 448, baseType: !393, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3672, file: !3673, line: 449, baseType: !393, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3672, file: !3673, line: 450, baseType: !393, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3672, file: !3673, line: 451, baseType: !393, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3672, file: !3673, line: 452, baseType: !393, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3672, file: !3673, line: 453, baseType: !393, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3672, file: !3673, line: 454, baseType: !393, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3672, file: !3673, line: 455, baseType: !393, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3672, file: !3673, line: 456, baseType: !393, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3672, file: !3673, line: 457, baseType: !393, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3672, file: !3673, line: 458, baseType: !393, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3672, file: !3673, line: 459, baseType: !393, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !3673, line: 461, baseType: !3724, size: 32, offset: 384)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3672, file: !3673, line: 461, size: 32, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3724, file: !3673, line: 462, baseType: !351, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3724, file: !3673, line: 463, baseType: !351, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3672, file: !3673, line: 466, baseType: !351, size: 32, offset: 416)
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !3673, line: 467, baseType: !3730, size: 64, offset: 448)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3672, file: !3673, line: 467, size: 64, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3730, file: !3673, line: 468, baseType: !393, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3730, file: !3673, line: 469, baseType: !393, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3730, file: !3673, line: 470, baseType: !393, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3730, file: !3673, line: 471, baseType: !393, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !3673, line: 473, baseType: !3737, size: 64, offset: 512)
!3737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3672, file: !3673, line: 473, size: 64, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3737, file: !3673, line: 474, baseType: !393, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3737, file: !3673, line: 475, baseType: !393, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3737, file: !3673, line: 476, baseType: !393, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3737, file: !3673, line: 477, baseType: !393, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3672, file: !3673, line: 479, baseType: !393, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3672, file: !3673, line: 485, baseType: !393, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3672, file: !3673, line: 490, baseType: !351, size: 32, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3672, file: !3673, line: 492, baseType: !865, size: 32, offset: 736)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3672, file: !3673, line: 501, baseType: !393, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3672, file: !3673, line: 506, baseType: !351, size: 32, offset: 832)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3672, file: !3673, line: 507, baseType: !103, size: 16, offset: 864)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3672, file: !3673, line: 508, baseType: !103, size: 16, offset: 880)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3672, file: !3673, line: 509, baseType: !351, size: 32, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3672, file: !3673, line: 510, baseType: !351, size: 32, offset: 928)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3672, file: !3673, line: 518, baseType: !393, size: 64, offset: 960)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3672, file: !3673, line: 520, baseType: !393, size: 64, offset: 1024)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2987, file: !245, line: 733, baseType: !102, size: 16, offset: 2816)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2987, file: !245, line: 734, baseType: !102, size: 16, offset: 2832)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2987, file: !245, line: 735, baseType: !102, size: 16, offset: 2848)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2987, file: !245, line: 736, baseType: !3759, size: 1536, offset: 2880)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !245, line: 155, size: 1536, elements: !3760)
!3760 = !{!3761, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3845, !3846, !3847, !3848}
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !245, line: 157, baseType: !3762, size: 768)
!3762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !245, line: 157, size: 768, elements: !3763)
!3763 = !{!3764, !3783, !3787, !3791, !3796, !3818}
!3764 = !DIDerivedType(tag: DW_TAG_member, scope: !3762, file: !245, line: 158, baseType: !3765, size: 768)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3762, file: !245, line: 158, size: 768, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3782}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3765, file: !245, line: 159, baseType: !392, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3765, file: !245, line: 160, baseType: !392, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3765, file: !245, line: 161, baseType: !48, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3765, file: !245, line: 162, baseType: !48, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3765, file: !245, line: 163, baseType: !31, size: 32, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3765, file: !245, line: 164, baseType: !31, size: 32, offset: 288)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3765, file: !245, line: 165, baseType: !31, size: 32, offset: 320)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3765, file: !245, line: 166, baseType: !31, size: 32, offset: 352)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3765, file: !245, line: 168, baseType: !3776, size: 192, offset: 384)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !245, line: 134, size: 192, elements: !3777)
!3777 = !{!3778, !3779, !3780, !3781}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3776, file: !245, line: 135, baseType: !392, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3776, file: !245, line: 136, baseType: !17, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3776, file: !245, line: 137, baseType: !31, size: 32, offset: 96)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3776, file: !245, line: 138, baseType: !31, size: 32, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3765, file: !245, line: 169, baseType: !3776, size: 192, offset: 576)
!3783 = !DIDerivedType(tag: DW_TAG_member, scope: !3762, file: !245, line: 171, baseType: !3784, size: 512)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3762, file: !245, line: 171, size: 512, elements: !3785)
!3785 = !{!3786}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3784, file: !245, line: 172, baseType: !459, size: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, scope: !3762, file: !245, line: 174, baseType: !3788, size: 128)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3762, file: !245, line: 174, size: 128, elements: !3789)
!3789 = !{!3790}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3788, file: !245, line: 176, baseType: !106, size: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, scope: !3762, file: !245, line: 178, baseType: !3792, size: 128)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3762, file: !245, line: 178, size: 128, elements: !3793)
!3793 = !{!3794, !3795}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3792, file: !245, line: 179, baseType: !392, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3792, file: !245, line: 180, baseType: !392, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, scope: !3762, file: !245, line: 183, baseType: !3797, size: 320)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3762, file: !245, line: 183, size: 320, elements: !3798)
!3798 = !{!3799, !3807}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3797, file: !245, line: 189, baseType: !3800, size: 192)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3801, line: 14, size: 192, elements: !3802)
!3801 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3802 = !{!3803, !3804, !3805, !3806}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3800, file: !3801, line: 15, baseType: !48, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3800, file: !3801, line: 16, baseType: !48, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3800, file: !3801, line: 17, baseType: !92, size: 8, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3800, file: !3801, line: 18, baseType: !92, size: 8, offset: 136)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3797, file: !245, line: 190, baseType: !3808, size: 128, offset: 192)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3809, line: 21, size: 128, elements: !3810)
!3809 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3810 = !{!3811, !3816}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3808, file: !3809, line: 22, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3809, line: 17, size: 64, elements: !3813)
!3813 = !{!3814}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3812, file: !3809, line: 18, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3808, file: !3809, line: 23, baseType: !3817, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, scope: !3762, file: !245, line: 193, baseType: !3819, size: 192)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3762, file: !245, line: 193, size: 192, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3819, file: !245, line: 194, baseType: !92, size: 8)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3819, file: !245, line: 195, baseType: !92, size: 8, offset: 8)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3819, file: !245, line: 196, baseType: !102, size: 16, offset: 16)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3819, file: !245, line: 197, baseType: !392, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3819, file: !245, line: 198, baseType: !392, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3759, file: !245, line: 205, baseType: !339, size: 64, offset: 768)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3759, file: !245, line: 211, baseType: !29, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3759, file: !245, line: 214, baseType: !48, size: 64, offset: 896)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3759, file: !245, line: 223, baseType: !31, size: 32, offset: 960)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3759, file: !245, line: 229, baseType: !3662, size: 64, offset: 1024)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3759, file: !245, line: 234, baseType: !392, size: 64, offset: 1088)
!3832 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !245, line: 236, baseType: !3833, size: 128, offset: 1152)
!3833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !245, line: 236, size: 128, elements: !3834)
!3834 = !{!3835, !3840}
!3835 = !DIDerivedType(tag: DW_TAG_member, scope: !3833, file: !245, line: 237, baseType: !3836, size: 128)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3833, file: !245, line: 237, size: 128, elements: !3837)
!3837 = !{!3838, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3836, file: !245, line: 241, baseType: !392, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3836, file: !245, line: 249, baseType: !3662, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3833, file: !245, line: 251, baseType: !3841, size: 128)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3833, file: !245, line: 251, size: 128, elements: !3842)
!3842 = !{!3843, !3844}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3841, file: !245, line: 252, baseType: !392, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3841, file: !245, line: 253, baseType: !392, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3759, file: !245, line: 261, baseType: !392, size: 64, offset: 1280)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3759, file: !245, line: 262, baseType: !392, size: 64, offset: 1344)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3759, file: !245, line: 268, baseType: !392, size: 64, offset: 1408)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3759, file: !245, line: 269, baseType: !392, size: 64, offset: 1472)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2987, file: !245, line: 738, baseType: !3511, size: 64, offset: 4416)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2987, file: !245, line: 744, baseType: !3559, size: 64, offset: 4480)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2987, file: !245, line: 745, baseType: !689, size: 64, offset: 4544)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2987, file: !245, line: 751, baseType: !691, size: 64, offset: 4608)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2987, file: !245, line: 752, baseType: !691, size: 64, offset: 4672)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2987, file: !245, line: 757, baseType: !696, size: 256, offset: 4736)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2987, file: !245, line: 758, baseType: !106, size: 128, offset: 4992)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2987, file: !245, line: 759, baseType: !2986, size: 64, offset: 5120)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2987, file: !245, line: 761, baseType: !31, size: 32, offset: 5184)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2987, file: !245, line: 762, baseType: !31, size: 32, offset: 5216)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2987, file: !245, line: 764, baseType: !106, size: 128, offset: 5248)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2987, file: !245, line: 765, baseType: !339, size: 64, offset: 5376)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2987, file: !245, line: 768, baseType: !696, size: 256, offset: 5440)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2987, file: !245, line: 769, baseType: !58, size: 32, offset: 5696)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2987, file: !245, line: 771, baseType: !3633, size: 64, offset: 5760)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2987, file: !245, line: 772, baseType: !106, size: 128, offset: 5824)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2987, file: !245, line: 773, baseType: !48, size: 64, offset: 5952)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2987, file: !245, line: 774, baseType: !31, size: 32, offset: 6016)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2987, file: !245, line: 777, baseType: !63, size: 192, offset: 6080)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2987, file: !245, line: 778, baseType: !3869, size: 64, offset: 6272)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !254, line: 1083, size: 384, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3870, file: !254, line: 1084, baseType: !713, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3870, file: !254, line: 1085, baseType: !31, size: 32, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3870, file: !254, line: 1086, baseType: !31, size: 32, offset: 96)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3870, file: !254, line: 1087, baseType: !3869, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3870, file: !254, line: 1088, baseType: !668, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3870, file: !254, line: 1089, baseType: !676, size: 128, align: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2987, file: !245, line: 781, baseType: !17, size: 32, offset: 6336)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2987, file: !245, line: 782, baseType: !17, size: 32, offset: 6368)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2987, file: !245, line: 783, baseType: !17, size: 32, offset: 6400)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2987, file: !245, line: 784, baseType: !17, size: 32, offset: 6432)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2987, file: !245, line: 785, baseType: !48, size: 64, offset: 6464)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2987, file: !245, line: 786, baseType: !309, size: 256, offset: 6528)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2987, file: !245, line: 787, baseType: !676, size: 128, align: 64, offset: 6784)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2987, file: !245, line: 788, baseType: !17, size: 32, offset: 6912)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2987, file: !245, line: 789, baseType: !335, size: 64, offset: 6976)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2987, file: !245, line: 791, baseType: !58, size: 32, offset: 7040)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2987, file: !245, line: 794, baseType: !3889, size: 192, offset: 7104)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !245, line: 579, size: 192, elements: !3890)
!3890 = !{!3891, !3892, !3893}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3889, file: !245, line: 580, baseType: !106, size: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3889, file: !245, line: 581, baseType: !307, size: 32, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3889, file: !245, line: 582, baseType: !17, size: 32, offset: 160)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2987, file: !245, line: 796, baseType: !3895, size: 64, offset: 7296)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !245, line: 585, size: 128, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3896, file: !245, line: 586, baseType: !48, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3896, file: !245, line: 587, baseType: !48, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2987, file: !245, line: 797, baseType: !48, size: 64, offset: 7360)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2987, file: !245, line: 800, baseType: !2986, size: 64, offset: 7424)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2987, file: !245, line: 802, baseType: !3597, size: 64, offset: 7488)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2987, file: !245, line: 803, baseType: !676, size: 128, align: 64, offset: 7552)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2987, file: !245, line: 805, baseType: !764, size: 64, offset: 7680)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2987, file: !245, line: 806, baseType: !392, size: 64, offset: 7744)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2987, file: !245, line: 808, baseType: !691, size: 64, offset: 7808)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2987, file: !245, line: 810, baseType: !3908, size: 64, offset: 7872)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!392}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2987, file: !245, line: 811, baseType: !3912, size: 64, offset: 7936)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !245, line: 605, baseType: !3913)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !2986, !3916, !4021}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !245, line: 1148, size: 2048, align: 512, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3922, !3923, !3928, !3929, !3930, !3935, !3936, !3943, !3964, !3986, !3996, !4014, !4015, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3917, file: !245, line: 1153, baseType: !392, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3917, file: !245, line: 1154, baseType: !392, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3917, file: !245, line: 1155, baseType: !392, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3917, file: !245, line: 1161, baseType: !392, size: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3917, file: !245, line: 1165, baseType: !3924, size: 64, offset: 256)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3917, file: !245, line: 1162, size: 64, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3924, file: !245, line: 1163, baseType: !350, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3924, file: !245, line: 1164, baseType: !350, size: 32, offset: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3917, file: !245, line: 1166, baseType: !392, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3917, file: !245, line: 1167, baseType: !392, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3917, file: !245, line: 1171, baseType: !3931, size: 64, offset: 448)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3917, file: !245, line: 1168, size: 64, elements: !3932)
!3932 = !{!3933, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3931, file: !245, line: 1169, baseType: !350, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3931, file: !245, line: 1170, baseType: !350, size: 32, offset: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3917, file: !245, line: 1177, baseType: !392, size: 64, offset: 512)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3917, file: !245, line: 1178, baseType: !3937, size: 64, offset: 576)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !245, line: 67, size: 64, elements: !3939)
!3939 = !{!3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3938, file: !245, line: 68, baseType: !393, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3938, file: !245, line: 69, baseType: !3942, offset: 64)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, elements: !1083)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3917, file: !245, line: 1179, baseType: !3944, size: 64, offset: 640)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !245, line: 93, size: 256, elements: !3946)
!3946 = !{!3947, !3963}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3945, file: !245, line: 94, baseType: !3948, size: 224)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !245, line: 83, size: 224, elements: !3949)
!3949 = !{!3950, !3956, !3961, !3962}
!3950 = !DIDerivedType(tag: DW_TAG_member, scope: !3948, file: !245, line: 84, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3948, file: !245, line: 84, size: 64, elements: !3952)
!3952 = !{!3953, !3955}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3951, file: !245, line: 85, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3951, file: !245, line: 86, baseType: !48, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3948, file: !245, line: 88, baseType: !3957, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !245, line: 80, baseType: !3958)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!48, !29, !2097, !48, !48}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3948, file: !245, line: 89, baseType: !29, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3948, file: !245, line: 90, baseType: !350, size: 32, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3945, file: !245, line: 95, baseType: !350, size: 32, offset: 224)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3917, file: !245, line: 1180, baseType: !3965, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !245, line: 123, size: 128, elements: !3967)
!3967 = !{!3968, !3969, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3966, file: !245, line: 124, baseType: !393, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3966, file: !245, line: 125, baseType: !393, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3966, file: !245, line: 126, baseType: !3971, offset: 128)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3972, elements: !1083)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3673, line: 1415, size: 192, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3972, file: !3673, line: 1416, baseType: !393, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3972, file: !3673, line: 1417, baseType: !393, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3972, file: !3673, line: 1418, baseType: !393, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3972, file: !3673, line: 1419, baseType: !393, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3972, file: !3673, line: 1420, baseType: !393, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3972, file: !3673, line: 1421, baseType: !393, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3972, file: !3673, line: 1422, baseType: !393, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3972, file: !3673, line: 1423, baseType: !393, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3972, file: !3673, line: 1424, baseType: !393, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3972, file: !3673, line: 1425, baseType: !393, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3972, file: !3673, line: 1426, baseType: !393, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3972, file: !3673, line: 1427, baseType: !393, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3917, file: !245, line: 1181, baseType: !3987, size: 64, offset: 768)
!3987 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3673, line: 1430, size: 64, elements: !3988)
!3988 = !{!3989, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3987, file: !3673, line: 1431, baseType: !393, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, scope: !3987, file: !3673, line: 1433, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3987, file: !3673, line: 1433, size: 64, elements: !3992)
!3992 = !{!3993, !3994, !3995}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3991, file: !3673, line: 1434, baseType: !351, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3991, file: !3673, line: 1435, baseType: !103, size: 16, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3991, file: !3673, line: 1436, baseType: !103, size: 16, offset: 48)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3917, file: !245, line: 1182, baseType: !3997, size: 64, offset: 832)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3673, line: 1267, size: 64, elements: !3998)
!3998 = !{!3999, !4000}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3997, file: !3673, line: 1268, baseType: !393, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !3997, file: !3673, line: 1269, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3673, line: 1269, size: 64, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4001, file: !3673, line: 1270, baseType: !393, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4001, file: !3673, line: 1271, baseType: !393, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4001, file: !3673, line: 1272, baseType: !393, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4001, file: !3673, line: 1273, baseType: !393, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4001, file: !3673, line: 1274, baseType: !393, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4001, file: !3673, line: 1275, baseType: !393, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4001, file: !3673, line: 1276, baseType: !393, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4001, file: !3673, line: 1277, baseType: !393, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4001, file: !3673, line: 1278, baseType: !393, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4001, file: !3673, line: 1279, baseType: !393, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4001, file: !3673, line: 1280, baseType: !393, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3917, file: !245, line: 1183, baseType: !392, size: 64, offset: 896)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3917, file: !245, line: 1185, baseType: !4016, size: 128, offset: 960)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4017, line: 7, size: 128, elements: !4018)
!4017 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4018 = !{!4019, !4020}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4016, file: !4017, line: 8, baseType: !393, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4016, file: !4017, line: 9, baseType: !4021, size: 64, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4023, line: 103, size: 1344, elements: !4024)
!4023 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4053, !4054, !4055}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4022, file: !4023, line: 109, baseType: !48, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4022, file: !4023, line: 110, baseType: !48, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4022, file: !4023, line: 111, baseType: !48, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4022, file: !4023, line: 112, baseType: !48, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4022, file: !4023, line: 113, baseType: !48, size: 64, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4022, file: !4023, line: 114, baseType: !48, size: 64, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4022, file: !4023, line: 117, baseType: !48, size: 64, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4022, file: !4023, line: 118, baseType: !48, size: 64, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4022, file: !4023, line: 119, baseType: !48, size: 64, offset: 512)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4022, file: !4023, line: 120, baseType: !48, size: 64, offset: 576)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4022, file: !4023, line: 121, baseType: !48, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4022, file: !4023, line: 122, baseType: !48, size: 64, offset: 704)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4022, file: !4023, line: 123, baseType: !48, size: 64, offset: 768)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4022, file: !4023, line: 124, baseType: !48, size: 64, offset: 832)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4022, file: !4023, line: 125, baseType: !48, size: 64, offset: 896)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4022, file: !4023, line: 139, baseType: !48, size: 64, offset: 960)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4022, file: !4023, line: 142, baseType: !48, size: 64, offset: 1024)
!4042 = !DIDerivedType(tag: DW_TAG_member, scope: !4022, file: !4023, line: 144, baseType: !4043, size: 64, offset: 1088)
!4043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4022, file: !4023, line: 144, size: 64, elements: !4044)
!4044 = !{!4045, !4046, !4047}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4043, file: !4023, line: 146, baseType: !102, size: 16)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4043, file: !4023, line: 148, baseType: !392, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4043, file: !4023, line: 150, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4023, line: 59, size: 64, elements: !4049)
!4049 = !{!4050, !4051, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4048, file: !4023, line: 61, baseType: !392, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4048, file: !4023, line: 63, baseType: !392, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4048, file: !4023, line: 65, baseType: !392, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4022, file: !4023, line: 153, baseType: !48, size: 64, offset: 1152)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4022, file: !4023, line: 154, baseType: !48, size: 64, offset: 1216)
!4055 = !DIDerivedType(tag: DW_TAG_member, scope: !4022, file: !4023, line: 156, baseType: !4056, size: 64, offset: 1280)
!4056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4022, file: !4023, line: 156, size: 64, elements: !4057)
!4057 = !{!4058, !4059, !4060}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4056, file: !4023, line: 158, baseType: !102, size: 16)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4056, file: !4023, line: 160, baseType: !392, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4056, file: !4023, line: 162, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4023, line: 69, size: 64, elements: !4062)
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4061, file: !4023, line: 71, baseType: !392, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4061, file: !4023, line: 73, baseType: !392, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4061, file: !4023, line: 75, baseType: !392, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4061, file: !4023, line: 77, baseType: !392, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4061, file: !4023, line: 80, baseType: !392, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4061, file: !4023, line: 83, baseType: !392, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4061, file: !4023, line: 86, baseType: !392, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4061, file: !4023, line: 88, baseType: !392, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4061, file: !4023, line: 93, baseType: !392, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4061, file: !4023, line: 100, baseType: !392, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3917, file: !245, line: 1186, baseType: !4016, size: 128, offset: 1088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3917, file: !245, line: 1187, baseType: !392, size: 64, offset: 1216)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3917, file: !245, line: 1189, baseType: !392, size: 64, offset: 1280)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3917, file: !245, line: 1190, baseType: !392, size: 64, offset: 1344)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3917, file: !245, line: 1191, baseType: !392, size: 64, offset: 1408)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3917, file: !245, line: 1192, baseType: !392, size: 64, offset: 1472)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3917, file: !245, line: 1193, baseType: !392, size: 64, offset: 1536)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3917, file: !245, line: 1194, baseType: !392, size: 64, offset: 1600)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3917, file: !245, line: 1195, baseType: !392, size: 64, offset: 1664)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2987, file: !245, line: 812, baseType: !29, size: 64, offset: 8000)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2987, file: !245, line: 820, baseType: !2590, size: 64, offset: 8064)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2987, file: !245, line: 821, baseType: !2865, size: 64, offset: 8128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2987, file: !245, line: 828, baseType: !4086, size: 64, offset: 8192)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !245, line: 1046, size: 1664, elements: !4088)
!4088 = !{!4089, !4347}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4087, file: !245, line: 1047, baseType: !4090, size: 1600)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4091, line: 152, size: 1600, elements: !4092)
!4091 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4092 = !{!4093, !4203, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4346}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4090, file: !4091, line: 154, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4091, line: 389, size: 7872, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4116, !4117, !4121, !4122, !4123, !4124, !4125, !4130, !4146, !4147, !4149, !4150, !4151, !4173, !4174, !4175, !4176, !4182, !4183, !4184, !4185, !4186, !4190, !4193, !4194, !4201}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4095, file: !4091, line: 391, baseType: !4090, size: 1600)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4095, file: !4091, line: 393, baseType: !48, size: 64, offset: 1600)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4095, file: !4091, line: 401, baseType: !31, size: 32, offset: 1664)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4095, file: !4091, line: 404, baseType: !31, size: 32, offset: 1696)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4095, file: !4091, line: 417, baseType: !31, size: 32, offset: 1728)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4095, file: !4091, line: 418, baseType: !31, size: 32, offset: 1760)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4095, file: !4091, line: 419, baseType: !31, size: 32, offset: 1792)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4095, file: !4091, line: 432, baseType: !31, size: 32, offset: 1824)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4095, file: !4091, line: 433, baseType: !31, size: 32, offset: 1856)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4095, file: !4091, line: 434, baseType: !31, size: 32, offset: 1888)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4095, file: !4091, line: 436, baseType: !31, size: 32, offset: 1920)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4095, file: !4091, line: 439, baseType: !17, size: 32, offset: 1952)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4095, file: !4091, line: 441, baseType: !2115, size: 64, offset: 1984)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4095, file: !4091, line: 442, baseType: !4111, size: 448, offset: 2048)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4091, line: 138, size: 448, elements: !4112)
!4112 = !{!4113, !4114, !4115}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4111, file: !4091, line: 140, baseType: !2115, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4111, file: !4091, line: 141, baseType: !48, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4111, file: !4091, line: 142, baseType: !2510, size: 320, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4095, file: !4091, line: 443, baseType: !4111, size: 448, offset: 2496)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4095, file: !4091, line: 446, baseType: !4118, offset: 2944)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4111, elements: !4119)
!4119 = !{!4120}
!4120 = !DISubrange(count: 0)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4095, file: !4091, line: 455, baseType: !102, size: 16, offset: 2944)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4095, file: !4091, line: 456, baseType: !102, size: 16, offset: 2960)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4095, file: !4091, line: 457, baseType: !102, size: 16, offset: 2976)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4095, file: !4091, line: 458, baseType: !102, size: 16, offset: 2992)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4095, file: !4091, line: 461, baseType: !4126, size: 896, offset: 3008)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4127, size: 896, elements: !4128)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4128 = !{!4129}
!4129 = !DISubrange(count: 14)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4095, file: !4091, line: 463, baseType: !4131, size: 64, offset: 3904)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4091, line: 537, size: 41664, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4132, file: !4091, line: 538, baseType: !2135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4132, file: !4091, line: 541, baseType: !17, size: 32, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4132, file: !4091, line: 544, baseType: !31, size: 32, offset: 96)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4132, file: !4091, line: 547, baseType: !106, size: 128, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4132, file: !4091, line: 548, baseType: !676, size: 128, align: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4132, file: !4091, line: 555, baseType: !4095, size: 7872, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4132, file: !4091, line: 558, baseType: !4094, size: 64, offset: 8256)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4132, file: !4091, line: 561, baseType: !58, size: 32, offset: 8320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4132, file: !4091, line: 564, baseType: !17, size: 32, offset: 8352)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4132, file: !4091, line: 567, baseType: !2933, size: 32768, offset: 8384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4132, file: !4091, line: 570, baseType: !4145, size: 512, offset: 41152)
!4145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1511)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4095, file: !4091, line: 469, baseType: !106, size: 128, offset: 3968)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4095, file: !4091, line: 478, baseType: !4148, size: 1792, offset: 4096)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1792, elements: !4128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4095, file: !4091, line: 487, baseType: !4094, size: 64, offset: 5888)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4095, file: !4091, line: 488, baseType: !4094, size: 64, offset: 5952)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4095, file: !4091, line: 491, baseType: !4152, size: 64, offset: 6016)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4091, line: 327, size: 896, elements: !4154)
!4154 = !{!4155, !4158, !4168, !4169, !4170, !4171, !4172}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4153, file: !4091, line: 332, baseType: !4156)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4157, line: 64, elements: !661)
!4157 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4153, file: !4091, line: 333, baseType: !4159, size: 192)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4091, line: 299, size: 192, elements: !4160)
!4160 = !{!4161}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4159, file: !4091, line: 300, baseType: !4162, size: 192)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4163, line: 17, size: 192, elements: !4164)
!4163 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4164 = !{!4165, !4166, !4167}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4162, file: !4163, line: 18, baseType: !392, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4162, file: !4163, line: 19, baseType: !392, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4162, file: !4163, line: 20, baseType: !394, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4153, file: !4091, line: 339, baseType: !4159, size: 192, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4153, file: !4091, line: 347, baseType: !4159, size: 192, offset: 384)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4153, file: !4091, line: 353, baseType: !4159, size: 192, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4153, file: !4091, line: 366, baseType: !4094, size: 64, offset: 768)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4153, file: !4091, line: 367, baseType: !4094, size: 64, offset: 832)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4095, file: !4091, line: 492, baseType: !106, size: 128, offset: 6080)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4095, file: !4091, line: 495, baseType: !4159, size: 192, offset: 6208)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4095, file: !4091, line: 496, baseType: !4159, size: 192, offset: 6400)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4095, file: !4091, line: 497, baseType: !4177, size: 192, offset: 6592)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !341, line: 324, size: 192, elements: !4178)
!4178 = !{!4179, !4180, !4181}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4177, file: !341, line: 326, baseType: !392, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4177, file: !341, line: 327, baseType: !392, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4177, file: !341, line: 328, baseType: !307, size: 32, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4095, file: !4091, line: 503, baseType: !106, size: 128, offset: 6784)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4095, file: !4091, line: 504, baseType: !696, size: 256, offset: 6912)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4095, file: !4091, line: 507, baseType: !63, size: 192, offset: 7168)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4095, file: !4091, line: 510, baseType: !979, size: 256, offset: 7360)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4095, file: !4091, line: 513, baseType: !4187, size: 64, offset: 7616)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4189, line: 214, elements: !661)
!4189 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4095, file: !4091, line: 516, baseType: !4191, offset: 7680)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4192, line: 76, elements: !661)
!4192 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4095, file: !4091, line: 519, baseType: !58, size: 32, offset: 7680)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4095, file: !4091, line: 522, baseType: !4195, size: 128, offset: 7712)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4091, line: 370, size: 128, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4195, file: !4091, line: 372, baseType: !852, size: 8)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4195, file: !4091, line: 375, baseType: !31, size: 32, offset: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4195, file: !4091, line: 380, baseType: !31, size: 32, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4195, file: !4091, line: 386, baseType: !31, size: 32, offset: 96)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4095, file: !4091, line: 529, baseType: !4202, offset: 7872)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4094, elements: !1083)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4090, file: !4091, line: 157, baseType: !4204, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4091, line: 669, size: 1984, elements: !4206)
!4206 = !{!4207, !4211, !4215, !4219, !4220, !4221, !4222, !4226, !4230, !4231, !4237, !4241, !4242, !4243, !4272, !4276, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4329, !4330}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4205, file: !4091, line: 670, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!4127, !4127}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4205, file: !4091, line: 671, baseType: !4212, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!31, !4127}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4205, file: !4091, line: 672, baseType: !4216, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !4127}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4205, file: !4091, line: 673, baseType: !4216, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4205, file: !4091, line: 674, baseType: !4216, size: 64, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4205, file: !4091, line: 675, baseType: !4216, size: 64, offset: 320)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4205, file: !4091, line: 676, baseType: !4223, size: 64, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{null, !4127, !31}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4205, file: !4091, line: 677, baseType: !4227, size: 64, offset: 448)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!31, !2160, !4127}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4205, file: !4091, line: 679, baseType: !4227, size: 64, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4205, file: !4091, line: 682, baseType: !4232, size: 64, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!31, !4235}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4091, line: 30, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4205, file: !4091, line: 683, baseType: !4238, size: 64, offset: 640)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{null, !4235}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4205, file: !4091, line: 684, baseType: !4238, size: 64, offset: 704)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4205, file: !4091, line: 685, baseType: !2684, size: 64, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4205, file: !4091, line: 686, baseType: !4244, size: 64, offset: 832)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!31, !339, !4247}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4091, line: 209, size: 4736, elements: !4249)
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4248, file: !4091, line: 215, baseType: !4126, size: 896)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4248, file: !4091, line: 218, baseType: !356, size: 32, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4248, file: !4091, line: 226, baseType: !4247, size: 64, offset: 960)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4248, file: !4091, line: 229, baseType: !4094, size: 64, offset: 1024)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4248, file: !4091, line: 232, baseType: !31, size: 32, offset: 1088)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4248, file: !4091, line: 241, baseType: !106, size: 128, offset: 1152)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4248, file: !4091, line: 242, baseType: !106, size: 128, offset: 1280)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4248, file: !4091, line: 243, baseType: !106, size: 128, offset: 1408)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4248, file: !4091, line: 246, baseType: !106, size: 128, offset: 1536)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4248, file: !4091, line: 255, baseType: !4148, size: 1792, offset: 1664)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4248, file: !4091, line: 258, baseType: !106, size: 128, offset: 3456)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4248, file: !4091, line: 259, baseType: !106, size: 128, offset: 3584)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4248, file: !4091, line: 265, baseType: !748, size: 128, offset: 3712)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4248, file: !4091, line: 271, baseType: !106, size: 128, offset: 3840)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4248, file: !4091, line: 277, baseType: !106, size: 128, offset: 3968)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4248, file: !4091, line: 278, baseType: !106, size: 128, offset: 4096)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4248, file: !4091, line: 279, baseType: !106, size: 128, offset: 4224)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4248, file: !4091, line: 288, baseType: !4094, size: 64, offset: 4352)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4248, file: !4091, line: 289, baseType: !4094, size: 64, offset: 4416)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4248, file: !4091, line: 290, baseType: !4247, size: 64, offset: 4480)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4248, file: !4091, line: 293, baseType: !852, size: 8, offset: 4544)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4248, file: !4091, line: 296, baseType: !676, size: 128, align: 64, offset: 4608)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4205, file: !4091, line: 688, baseType: !4273, size: 64, offset: 896)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !339, !4247}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4205, file: !4091, line: 689, baseType: !4277, size: 64, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{null, !339}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4205, file: !4091, line: 690, baseType: !4277, size: 64, offset: 1024)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4205, file: !4091, line: 691, baseType: !4277, size: 64, offset: 1088)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4205, file: !4091, line: 692, baseType: !4216, size: 64, offset: 1152)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4205, file: !4091, line: 694, baseType: !852, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4205, file: !4091, line: 707, baseType: !852, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4205, file: !4091, line: 719, baseType: !852, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4205, file: !4091, line: 722, baseType: !31, size: 32, offset: 1248)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4205, file: !4091, line: 723, baseType: !26, size: 64, offset: 1280)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4205, file: !4091, line: 726, baseType: !26, size: 64, offset: 1344)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4205, file: !4091, line: 729, baseType: !4131, size: 64, offset: 1408)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4205, file: !4091, line: 732, baseType: !769, size: 192, offset: 1472)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4205, file: !4091, line: 738, baseType: !106, size: 128, offset: 1664)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4205, file: !4091, line: 744, baseType: !4293, size: 64, offset: 1792)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4091, line: 580, size: 1728, elements: !4295)
!4295 = !{!4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4305, !4306, !4307, !4311, !4315, !4316, !4317, !4318, !4319, !4323, !4327, !4328}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4294, file: !4091, line: 586, baseType: !4145, size: 512)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4294, file: !4091, line: 587, baseType: !48, size: 64, offset: 512)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4294, file: !4091, line: 593, baseType: !44, size: 64, offset: 576)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4294, file: !4091, line: 596, baseType: !17, size: 32, offset: 640)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4294, file: !4091, line: 604, baseType: !17, size: 32, offset: 672)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4294, file: !4091, line: 610, baseType: !4204, size: 64, offset: 704)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4294, file: !4091, line: 611, baseType: !106, size: 128, offset: 768)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4294, file: !4091, line: 612, baseType: !4304, size: 64, offset: 896)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4294, file: !4091, line: 614, baseType: !2151, size: 64, offset: 960)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4294, file: !4091, line: 615, baseType: !2209, size: 64, offset: 1024)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4294, file: !4091, line: 621, baseType: !4308, size: 64, offset: 1088)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!392, !4127, !4293}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4294, file: !4091, line: 625, baseType: !4312, size: 64, offset: 1152)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!403, !4127, !4293}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4294, file: !4091, line: 628, baseType: !2190, size: 64, offset: 1216)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4294, file: !4091, line: 631, baseType: !2178, size: 64, offset: 1280)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4294, file: !4091, line: 632, baseType: !2186, size: 64, offset: 1344)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4294, file: !4091, line: 633, baseType: !2182, size: 64, offset: 1408)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4294, file: !4091, line: 640, baseType: !4320, size: 64, offset: 1472)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!31, !4127, !4293, !392}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4294, file: !4091, line: 645, baseType: !4324, size: 64, offset: 1536)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!31, !4127, !4293, !403}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4294, file: !4091, line: 654, baseType: !2217, size: 64, offset: 1600)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4294, file: !4091, line: 657, baseType: !2224, size: 64, offset: 1664)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4205, file: !4091, line: 745, baseType: !4293, size: 64, offset: 1856)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4205, file: !4091, line: 754, baseType: !17, size: 32, offset: 1920)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4090, file: !4091, line: 160, baseType: !1655, size: 128, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4090, file: !4091, line: 163, baseType: !106, size: 128, offset: 256)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4090, file: !4091, line: 164, baseType: !106, size: 128, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4090, file: !4091, line: 167, baseType: !106, size: 128, offset: 512)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4090, file: !4091, line: 173, baseType: !31, size: 32, offset: 640)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4090, file: !4091, line: 175, baseType: !17, size: 32, offset: 672)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4090, file: !4091, line: 183, baseType: !392, size: 64, offset: 704)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4090, file: !4091, line: 189, baseType: !58, size: 32, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4090, file: !4091, line: 192, baseType: !979, size: 256, offset: 832)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4090, file: !4091, line: 193, baseType: !4341, size: 448, offset: 1088)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !980, line: 120, size: 448, elements: !4342)
!4342 = !{!4343, !4344, !4345}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4341, file: !980, line: 121, baseType: !979, size: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4341, file: !980, line: 122, baseType: !676, size: 128, align: 64, offset: 256)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4341, file: !980, line: 125, baseType: !2572, size: 64, offset: 384)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4090, file: !4091, line: 199, baseType: !4127, size: 64, offset: 1536)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4087, file: !245, line: 1048, baseType: !4348, size: 64, offset: 1600)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !245, line: 1039, size: 256, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4349, file: !245, line: 1040, baseType: !392, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4349, file: !245, line: 1041, baseType: !392, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4349, file: !245, line: 1042, baseType: !392, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4349, file: !245, line: 1043, baseType: !31, size: 32, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2987, file: !245, line: 832, baseType: !29, size: 64, offset: 8256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2987, file: !245, line: 834, baseType: !106, size: 128, offset: 8320)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2987, file: !245, line: 842, baseType: !351, size: 32, offset: 8448)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1456, file: !125, line: 524, baseType: !17, size: 32, offset: 8320)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1456, file: !125, line: 525, baseType: !4360, size: 64, offset: 8384)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4363, line: 28, size: 192, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4364 = !{!4365, !4366, !4367}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4362, file: !4363, line: 29, baseType: !26, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4362, file: !4363, line: 30, baseType: !26, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4362, file: !4363, line: 31, baseType: !48, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1456, file: !125, line: 526, baseType: !17, size: 32, offset: 8448)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1456, file: !125, line: 533, baseType: !29, size: 64, offset: 8512)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1456, file: !125, line: 534, baseType: !17, size: 32, offset: 8576)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1456, file: !125, line: 535, baseType: !296, size: 64, offset: 8640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1456, file: !125, line: 536, baseType: !17, size: 32, offset: 8704)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1456, file: !125, line: 539, baseType: !31, size: 32, offset: 8736)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1456, file: !125, line: 540, baseType: !2673, size: 64, offset: 8768)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1456, file: !125, line: 563, baseType: !106, size: 128, offset: 8832)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1456, file: !125, line: 565, baseType: !106, size: 128, offset: 8960)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1456, file: !125, line: 568, baseType: !2684, size: 64, offset: 9088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1456, file: !125, line: 570, baseType: !58, size: 32, offset: 9152)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1432, file: !254, line: 2382, baseType: !1431, size: 64, offset: 448)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1432, file: !254, line: 2383, baseType: !744, size: 64, offset: 512)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1432, file: !254, line: 2385, baseType: !4382, offset: 576)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2539, line: 206, elements: !661)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1432, file: !254, line: 2386, baseType: !4382, offset: 576)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1432, file: !254, line: 2387, baseType: !4382, offset: 576)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1432, file: !254, line: 2388, baseType: !4386, offset: 576)
!4386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4382, elements: !732)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1432, file: !254, line: 2390, baseType: !4382, offset: 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1432, file: !254, line: 2391, baseType: !4382, offset: 576)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1432, file: !254, line: 2392, baseType: !4382, offset: 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1432, file: !254, line: 2393, baseType: !4382, offset: 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1423, file: !254, line: 1197, baseType: !4392, size: 64, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4394)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !254, line: 2057, size: 1664, elements: !4395)
!4395 = !{!4396, !4400, !4404, !4405, !4409, !4413, !4417, !4418, !4419, !4423, !4427, !4431, !4432, !4433, !4439, !4443, !4444, !4448, !4449, !4450, !4451, !4455, !4459, !4506, !4521, !4522}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4394, file: !254, line: 2058, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!1221, !1422}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4394, file: !254, line: 2059, baseType: !4401, size: 64, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{null, !1221}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4394, file: !254, line: 2060, baseType: !4401, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4394, file: !254, line: 2062, baseType: !4406, size: 64, offset: 192)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{null, !1221, !31}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4394, file: !254, line: 2063, baseType: !4410, size: 64, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!31, !1221, !1878}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4394, file: !254, line: 2064, baseType: !4414, size: 64, offset: 320)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!31, !1221}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4394, file: !254, line: 2065, baseType: !4401, size: 64, offset: 384)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4394, file: !254, line: 2066, baseType: !1451, size: 64, offset: 448)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4394, file: !254, line: 2067, baseType: !4420, size: 64, offset: 512)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!31, !1422, !31}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4394, file: !254, line: 2068, baseType: !4424, size: 64, offset: 576)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!31, !1422, !253}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4394, file: !254, line: 2069, baseType: !4428, size: 64, offset: 640)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!31, !1422}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4394, file: !254, line: 2070, baseType: !4424, size: 64, offset: 704)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4394, file: !254, line: 2071, baseType: !4428, size: 64, offset: 768)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4394, file: !254, line: 2072, baseType: !4434, size: 64, offset: 832)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!31, !1186, !4437}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !254, line: 62, flags: DIFlagFwdDecl)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4394, file: !254, line: 2073, baseType: !4440, size: 64, offset: 896)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!31, !1422, !2409, !940}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4394, file: !254, line: 2074, baseType: !1451, size: 64, offset: 960)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4394, file: !254, line: 2076, baseType: !4445, size: 64, offset: 1024)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!31, !2160, !1186}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4394, file: !254, line: 2077, baseType: !4445, size: 64, offset: 1088)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4394, file: !254, line: 2078, baseType: !4445, size: 64, offset: 1152)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4394, file: !254, line: 2079, baseType: !4445, size: 64, offset: 1216)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4394, file: !254, line: 2081, baseType: !4452, size: 64, offset: 1280)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!1373, !1422, !31, !940, !44, !50}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4394, file: !254, line: 2082, baseType: !4456, size: 64, offset: 1344)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!1373, !1422, !31, !26, !44, !50}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4394, file: !254, line: 2083, baseType: !4460, size: 64, offset: 1408)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!4463, !1221}
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !259, line: 296, size: 1664, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4491, !4492, !4493}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4465, file: !259, line: 297, baseType: !748, size: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4465, file: !259, line: 298, baseType: !106, size: 128, offset: 128)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4465, file: !259, line: 299, baseType: !106, size: 128, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4465, file: !259, line: 300, baseType: !106, size: 128, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4465, file: !259, line: 301, baseType: !696, size: 256, offset: 512)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4465, file: !259, line: 302, baseType: !68, size: 32, offset: 768)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4465, file: !259, line: 303, baseType: !58, size: 32, offset: 800)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4465, file: !259, line: 304, baseType: !1422, size: 64, offset: 832)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4465, file: !259, line: 305, baseType: !4476, size: 64, offset: 896)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !259, line: 68, size: 64, elements: !4477)
!4477 = !{!4478, !4490}
!4478 = !DIDerivedType(tag: DW_TAG_member, scope: !4476, file: !259, line: 69, baseType: !4479, size: 32)
!4479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4476, file: !259, line: 69, size: 32, elements: !4480)
!4480 = !{!4481, !4482, !4483}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4479, file: !259, line: 70, baseType: !825, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4479, file: !259, line: 71, baseType: !833, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4479, file: !259, line: 72, baseType: !4484, size: 32)
!4484 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4485, line: 24, baseType: !4486)
!4485 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4485, line: 22, size: 32, elements: !4487)
!4487 = !{!4488}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4486, file: !4485, line: 23, baseType: !4489, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4485, line: 20, baseType: !831)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4476, file: !259, line: 74, baseType: !258, size: 32, offset: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4465, file: !259, line: 306, baseType: !50, size: 64, offset: 960)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4465, file: !259, line: 307, baseType: !48, size: 64, offset: 1024)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4465, file: !259, line: 308, baseType: !4494, size: 576, offset: 1088)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !259, line: 205, size: 576, elements: !4495)
!4495 = !{!4496, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4494, file: !259, line: 206, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !259, line: 66, baseType: !52)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4494, file: !259, line: 207, baseType: !4497, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4494, file: !259, line: 208, baseType: !4497, size: 64, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4494, file: !259, line: 209, baseType: !4497, size: 64, offset: 192)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4494, file: !259, line: 210, baseType: !4497, size: 64, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4494, file: !259, line: 211, baseType: !4497, size: 64, offset: 320)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4494, file: !259, line: 212, baseType: !4497, size: 64, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4494, file: !259, line: 213, baseType: !888, size: 64, offset: 448)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4494, file: !259, line: 214, baseType: !888, size: 64, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4394, file: !254, line: 2085, baseType: !4507, size: 64, offset: 1472)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!301, !1422, !4510}
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4512, line: 15, size: 256, elements: !4513)
!4512 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4513 = !{!4514, !4515, !4516, !4517, !4518}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4511, file: !4512, line: 16, baseType: !295, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4511, file: !4512, line: 19, baseType: !31, size: 32, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4511, file: !4512, line: 26, baseType: !48, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4511, file: !4512, line: 33, baseType: !48, size: 64, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4511, file: !4512, line: 36, baseType: !4519, size: 64, offset: 192)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !140, line: 33, flags: DIFlagFwdDecl)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4394, file: !254, line: 2087, baseType: !4507, size: 64, offset: 1536)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4394, file: !254, line: 2089, baseType: !1451, size: 64, offset: 1600)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1423, file: !254, line: 1198, baseType: !4524, size: 64, offset: 448)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4526)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !259, line: 324, size: 704, elements: !4527)
!4527 = !{!4528, !4532, !4536, !4540, !4541, !4542, !4543, !4544, !4549, !4554, !4558}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4526, file: !259, line: 325, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!31, !4464}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4526, file: !259, line: 326, baseType: !4533, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!4464, !1422, !31}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4526, file: !259, line: 327, baseType: !4537, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !4464}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4526, file: !259, line: 328, baseType: !4529, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4526, file: !259, line: 329, baseType: !4529, size: 64, offset: 256)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4526, file: !259, line: 330, baseType: !4529, size: 64, offset: 320)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4526, file: !259, line: 331, baseType: !4420, size: 64, offset: 384)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4526, file: !259, line: 334, baseType: !4545, size: 64, offset: 448)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!4548, !1221}
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4526, file: !259, line: 335, baseType: !4550, size: 64, offset: 512)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!31, !1221, !4553}
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4526, file: !259, line: 337, baseType: !4555, size: 64, offset: 576)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!31, !1221, !4548}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4526, file: !259, line: 339, baseType: !4559, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!31, !1422, !4562}
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1423, file: !254, line: 1199, baseType: !4564, size: 64, offset: 512)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4566)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !259, line: 430, size: 704, elements: !4567)
!4567 = !{!4568, !4572, !4573, !4577, !4578, !4579, !4594, !4617, !4621, !4622, !4645}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4566, file: !259, line: 431, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!31, !1422, !31, !31, !1342}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4566, file: !259, line: 432, baseType: !4420, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4566, file: !259, line: 433, baseType: !4574, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!31, !1422, !17}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4566, file: !259, line: 434, baseType: !4574, size: 64, offset: 192)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4566, file: !259, line: 435, baseType: !4420, size: 64, offset: 256)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4566, file: !259, line: 436, baseType: !4580, size: 64, offset: 320)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!31, !1422, !31, !4583}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !259, line: 417, size: 256, elements: !4585)
!4585 = !{!4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4584, file: !259, line: 418, baseType: !31, size: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4584, file: !259, line: 419, baseType: !17, size: 32, offset: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4584, file: !259, line: 420, baseType: !17, size: 32, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4584, file: !259, line: 422, baseType: !17, size: 32, offset: 96)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4584, file: !259, line: 423, baseType: !17, size: 32, offset: 128)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4584, file: !259, line: 424, baseType: !17, size: 32, offset: 160)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4584, file: !259, line: 425, baseType: !17, size: 32, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4584, file: !259, line: 426, baseType: !17, size: 32, offset: 224)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4566, file: !259, line: 437, baseType: !4595, size: 64, offset: 384)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!31, !1422, !4476, !4598}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !259, line: 345, size: 960, elements: !4600)
!4600 = !{!4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4599, file: !259, line: 346, baseType: !31, size: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4599, file: !259, line: 347, baseType: !392, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4599, file: !259, line: 348, baseType: !392, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4599, file: !259, line: 349, baseType: !392, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4599, file: !259, line: 350, baseType: !392, size: 64, offset: 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4599, file: !259, line: 351, baseType: !392, size: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4599, file: !259, line: 352, baseType: !392, size: 64, offset: 384)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4599, file: !259, line: 353, baseType: !403, size: 64, offset: 448)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4599, file: !259, line: 355, baseType: !403, size: 64, offset: 512)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4599, file: !259, line: 356, baseType: !31, size: 32, offset: 576)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4599, file: !259, line: 357, baseType: !31, size: 32, offset: 608)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4599, file: !259, line: 358, baseType: !392, size: 64, offset: 640)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4599, file: !259, line: 359, baseType: !392, size: 64, offset: 704)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4599, file: !259, line: 360, baseType: !392, size: 64, offset: 768)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4599, file: !259, line: 361, baseType: !403, size: 64, offset: 832)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4599, file: !259, line: 362, baseType: !31, size: 32, offset: 896)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4566, file: !259, line: 438, baseType: !4618, size: 64, offset: 448)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!31, !1422, !4562, !4598}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4566, file: !259, line: 440, baseType: !4595, size: 64, offset: 512)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4566, file: !259, line: 441, baseType: !4623, size: 64, offset: 576)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!31, !1422, !4626}
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !259, line: 411, size: 1408, elements: !4628)
!4628 = !{!4629, !4630}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4627, file: !259, line: 412, baseType: !17, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4627, file: !259, line: 413, baseType: !4631, size: 1344, offset: 64)
!4631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4632, size: 1344, elements: !732)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !259, line: 397, size: 448, elements: !4633)
!4633 = !{!4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4644}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4632, file: !259, line: 398, baseType: !17, size: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4632, file: !259, line: 399, baseType: !17, size: 32, offset: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4632, file: !259, line: 401, baseType: !17, size: 32, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4632, file: !259, line: 402, baseType: !17, size: 32, offset: 96)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4632, file: !259, line: 403, baseType: !17, size: 32, offset: 128)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4632, file: !259, line: 404, baseType: !17, size: 32, offset: 160)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4632, file: !259, line: 405, baseType: !17, size: 32, offset: 192)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4632, file: !259, line: 406, baseType: !394, size: 64, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4632, file: !259, line: 407, baseType: !4643, size: 64, offset: 320)
!4643 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !34, line: 132, baseType: !392)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4632, file: !259, line: 408, baseType: !4643, size: 64, offset: 384)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4566, file: !259, line: 442, baseType: !4574, size: 64, offset: 640)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1423, file: !254, line: 1200, baseType: !4647, size: 64, offset: 576)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4649)
!4649 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !254, line: 54, flags: DIFlagFwdDecl)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1423, file: !254, line: 1201, baseType: !48, size: 64, offset: 640)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1423, file: !254, line: 1202, baseType: !48, size: 64, offset: 704)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1423, file: !254, line: 1203, baseType: !48, size: 64, offset: 768)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1423, file: !254, line: 1204, baseType: !1186, size: 64, offset: 832)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1423, file: !254, line: 1205, baseType: !872, size: 320, offset: 896)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1423, file: !254, line: 1206, baseType: !31, size: 32, offset: 1216)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1423, file: !254, line: 1207, baseType: !58, size: 32, offset: 1248)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1423, file: !254, line: 1209, baseType: !29, size: 64, offset: 1280)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1423, file: !254, line: 1211, baseType: !4659, size: 64, offset: 1344)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4662)
!4662 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !254, line: 1211, flags: DIFlagFwdDecl)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1423, file: !254, line: 1223, baseType: !4664, size: 64, offset: 1408)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1198, line: 34, size: 64, elements: !4665)
!4665 = !{!4666}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4664, file: !1198, line: 35, baseType: !1201, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1423, file: !254, line: 1224, baseType: !106, size: 128, offset: 1472)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1423, file: !254, line: 1225, baseType: !4669, size: 64, offset: 1600)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !254, line: 1225, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1423, file: !254, line: 1226, baseType: !4672, size: 64, offset: 1664)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !254, line: 1226, flags: DIFlagFwdDecl)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1423, file: !254, line: 1227, baseType: !4675, size: 64, offset: 1728)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !254, line: 50, flags: DIFlagFwdDecl)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1423, file: !254, line: 1228, baseType: !4678, size: 64, offset: 1792)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !254, line: 1228, flags: DIFlagFwdDecl)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1423, file: !254, line: 1229, baseType: !748, size: 128, offset: 1856)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1423, file: !254, line: 1230, baseType: !17, size: 32, offset: 1984)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1423, file: !254, line: 1231, baseType: !4683, size: 2496, offset: 2048)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !259, line: 521, size: 2496, elements: !4684)
!4684 = !{!4685, !4686, !4687, !4689, !4721}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4683, file: !259, line: 522, baseType: !17, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4683, file: !259, line: 523, baseType: !872, size: 320, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4683, file: !259, line: 524, baseType: !4688, size: 192, offset: 384)
!4688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 192, elements: !732)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4683, file: !259, line: 525, baseType: !4690, size: 1728, offset: 576)
!4690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4691, size: 1728, elements: !732)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !259, line: 222, size: 576, elements: !4692)
!4692 = !{!4693, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4691, file: !259, line: 223, baseType: !4694, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !259, line: 445, size: 256, elements: !4696)
!4696 = !{!4697, !4698, !4711, !4712}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4695, file: !259, line: 446, baseType: !31, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4695, file: !259, line: 447, baseType: !4699, size: 64, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !259, line: 312, size: 512, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4701, file: !259, line: 313, baseType: !4420, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4701, file: !259, line: 314, baseType: !4420, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4701, file: !259, line: 315, baseType: !4420, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4701, file: !259, line: 316, baseType: !4420, size: 64, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4701, file: !259, line: 317, baseType: !4529, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4701, file: !259, line: 318, baseType: !4529, size: 64, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4701, file: !259, line: 319, baseType: !4529, size: 64, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4701, file: !259, line: 320, baseType: !4559, size: 64, offset: 448)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4695, file: !259, line: 448, baseType: !1455, size: 64, offset: 128)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4695, file: !259, line: 449, baseType: !4694, size: 64, offset: 192)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4691, file: !259, line: 224, baseType: !31, size: 32, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4691, file: !259, line: 226, baseType: !106, size: 128, offset: 128)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4691, file: !259, line: 227, baseType: !48, size: 64, offset: 256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4691, file: !259, line: 228, baseType: !17, size: 32, offset: 320)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4691, file: !259, line: 229, baseType: !17, size: 32, offset: 352)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4691, file: !259, line: 230, baseType: !4497, size: 64, offset: 384)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4691, file: !259, line: 231, baseType: !4497, size: 64, offset: 448)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4691, file: !259, line: 232, baseType: !29, size: 64, offset: 512)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4683, file: !259, line: 526, baseType: !4722, size: 192, offset: 2304)
!4722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4699, size: 192, elements: !732)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1423, file: !254, line: 1233, baseType: !4724, size: 2368, offset: 4544)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !254, line: 1184, size: 2368, elements: !4725)
!4725 = !{!4726, !4727, !4728}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4724, file: !254, line: 1185, baseType: !35, size: 16)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4724, file: !254, line: 1186, baseType: !35, size: 16, offset: 16)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4724, file: !254, line: 1187, baseType: !4729, size: 2304, offset: 64)
!4729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4730, size: 2304, elements: !732)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4731, line: 12, size: 768, elements: !4732)
!4731 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4732 = !{!4733, !4741, !4742, !4743, !4744}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4730, file: !4731, line: 13, baseType: !4734, size: 384)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4735, line: 17, size: 384, elements: !4736)
!4735 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4736 = !{!4737, !4738, !4739, !4740}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4734, file: !4735, line: 18, baseType: !31, size: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4734, file: !4735, line: 19, baseType: !31, size: 32, offset: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4734, file: !4735, line: 20, baseType: !63, size: 192, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4734, file: !4735, line: 22, baseType: !676, size: 128, align: 64, offset: 256)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4730, file: !4731, line: 14, baseType: !2361, size: 64, offset: 384)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4730, file: !4731, line: 15, baseType: !335, size: 64, offset: 448)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4730, file: !4731, line: 16, baseType: !63, size: 192, offset: 512)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4730, file: !4731, line: 17, baseType: !58, size: 32, offset: 704)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1423, file: !254, line: 1240, baseType: !29, size: 64, offset: 6912)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1423, file: !254, line: 1243, baseType: !350, size: 32, offset: 6976)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1423, file: !254, line: 1245, baseType: !888, size: 64, offset: 7040)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1423, file: !254, line: 1246, baseType: !888, size: 64, offset: 7104)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1423, file: !254, line: 1248, baseType: !351, size: 32, offset: 7168)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1423, file: !254, line: 1249, baseType: !4751, size: 64, offset: 7232)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !254, line: 634, flags: DIFlagFwdDecl)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1423, file: !254, line: 1252, baseType: !3102, size: 256, offset: 7296)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1423, file: !254, line: 1253, baseType: !4755, size: 128, offset: 7552)
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4756, line: 21, baseType: !4757)
!4756 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4756, line: 19, size: 128, elements: !4758)
!4758 = !{!4759}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4757, file: !4756, line: 20, baseType: !3115, size: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1423, file: !254, line: 1255, baseType: !17, size: 32, offset: 7680)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1423, file: !254, line: 1261, baseType: !696, size: 256, offset: 7744)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1423, file: !254, line: 1267, baseType: !26, size: 64, offset: 8000)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1423, file: !254, line: 1269, baseType: !4764, size: 64, offset: 8064)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4766)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1188, line: 128, size: 1024, align: 512, elements: !4767)
!4767 = !{!4768, !4772, !4773, !4780, !4786, !4790, !4794, !4798, !4799, !4803, !4807, !4812, !4816}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4766, file: !1188, line: 129, baseType: !4769, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!31, !1186, !17}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4766, file: !1188, line: 130, baseType: !4769, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4766, file: !1188, line: 131, baseType: !4774, size: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!31, !4777, !4779}
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4766, file: !1188, line: 132, baseType: !4781, size: 64, offset: 192)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!31, !4777, !17, !26, !4784}
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4766, file: !1188, line: 134, baseType: !4787, size: 64, offset: 256)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!31, !4777}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4766, file: !1188, line: 135, baseType: !4791, size: 64, offset: 320)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!31, !1186}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4766, file: !1188, line: 136, baseType: !4795, size: 64, offset: 384)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{null, !1186}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4766, file: !1188, line: 137, baseType: !4795, size: 64, offset: 448)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4766, file: !1188, line: 138, baseType: !4800, size: 64, offset: 512)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{null, !1186, !1221}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4766, file: !1188, line: 139, baseType: !4804, size: 64, offset: 576)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!940, !1186, !940, !31}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4766, file: !1188, line: 140, baseType: !4808, size: 64, offset: 640)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!1181, !4811}
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4766, file: !1188, line: 141, baseType: !4813, size: 64, offset: 704)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!31, !1342, !852}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4766, file: !1188, line: 142, baseType: !4817, size: 64, offset: 768)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!1186, !1186, !4820}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1423, file: !254, line: 1271, baseType: !4823, size: 448, offset: 8128)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4512, line: 63, size: 448, elements: !4824)
!4824 = !{!4825, !4830, !4831, !4832, !4833, !4834, !4835}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4823, file: !4512, line: 64, baseType: !4826, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!48, !4829, !4510}
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4823, file: !4512, line: 66, baseType: !4826, size: 64, offset: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4823, file: !4512, line: 69, baseType: !301, size: 64, offset: 128)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4823, file: !4512, line: 70, baseType: !31, size: 32, offset: 192)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4823, file: !4512, line: 71, baseType: !17, size: 32, offset: 224)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4823, file: !4512, line: 74, baseType: !106, size: 128, offset: 256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4823, file: !4512, line: 85, baseType: !4836, size: 64, offset: 384)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1423, file: !254, line: 1274, baseType: !689, size: 64, offset: 8576)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1423, file: !254, line: 1280, baseType: !689, size: 64, offset: 8640)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1423, file: !254, line: 1283, baseType: !31, size: 32, offset: 8704)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1423, file: !254, line: 1286, baseType: !2058, size: 32, offset: 8736)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1423, file: !254, line: 1289, baseType: !2572, size: 64, offset: 8768)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1423, file: !254, line: 1290, baseType: !744, size: 64, offset: 8832)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1423, file: !254, line: 1297, baseType: !794, size: 64, offset: 8896)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1423, file: !254, line: 1304, baseType: !4845, size: 64, offset: 8960)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4846, line: 49, size: 64, elements: !4847)
!4846 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4847 = !{!4848}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4845, file: !4846, line: 50, baseType: !4849, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4846, line: 41, size: 512, align: 512, elements: !4851)
!4851 = !{!4852, !4853, !4858}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4850, file: !4846, line: 43, baseType: !68, size: 32)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4850, file: !4846, line: 45, baseType: !4854, size: 192, offset: 64)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4846, line: 29, size: 192, elements: !4855)
!4855 = !{!4856, !4857}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4854, file: !4846, line: 30, baseType: !106, size: 128)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4854, file: !4846, line: 32, baseType: !301, size: 64, offset: 128)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4850, file: !4846, line: 46, baseType: !301, size: 64, offset: 256)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1423, file: !254, line: 1305, baseType: !4845, size: 64, offset: 9024)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1423, file: !254, line: 1306, baseType: !676, size: 128, align: 64, offset: 9088)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1423, file: !254, line: 1307, baseType: !979, size: 256, offset: 9216)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1423, file: !254, line: 1309, baseType: !696, size: 256, offset: 9472)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1423, file: !254, line: 1314, baseType: !31, size: 32, offset: 9728)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1423, file: !254, line: 1317, baseType: !68, size: 32, align: 512, offset: 10240)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1423, file: !254, line: 1318, baseType: !106, size: 128, offset: 10304)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1423, file: !254, line: 1320, baseType: !68, size: 32, offset: 10432)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1423, file: !254, line: 1321, baseType: !106, size: 128, offset: 10496)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1222, file: !254, line: 656, baseType: !1572, size: 64, offset: 512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1222, file: !254, line: 659, baseType: !29, size: 64, offset: 576)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1222, file: !254, line: 663, baseType: !48, size: 64, offset: 640)
!4871 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !254, line: 671, baseType: !4872, size: 32, offset: 704)
!4872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !254, line: 671, size: 32, elements: !4873)
!4873 = !{!4874, !4875}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4872, file: !254, line: 672, baseType: !2620, size: 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4872, file: !254, line: 673, baseType: !17, size: 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1222, file: !254, line: 675, baseType: !1295, size: 32, offset: 736)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1222, file: !254, line: 676, baseType: !50, size: 64, offset: 768)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1222, file: !254, line: 677, baseType: !1331, size: 128, offset: 832)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1222, file: !254, line: 678, baseType: !1331, size: 128, offset: 960)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1222, file: !254, line: 679, baseType: !1331, size: 128, offset: 1088)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1222, file: !254, line: 680, baseType: !68, size: 32, offset: 1216)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1222, file: !254, line: 681, baseType: !35, size: 16, offset: 1248)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1222, file: !254, line: 682, baseType: !92, size: 8, offset: 1264)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1222, file: !254, line: 683, baseType: !92, size: 8, offset: 1272)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1222, file: !254, line: 684, baseType: !4643, size: 64, offset: 1280)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1222, file: !254, line: 691, baseType: !48, size: 64, offset: 1344)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1222, file: !254, line: 692, baseType: !872, size: 320, offset: 1408)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1222, file: !254, line: 694, baseType: !48, size: 64, offset: 1728)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1222, file: !254, line: 695, baseType: !48, size: 64, offset: 1792)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1222, file: !254, line: 697, baseType: !748, size: 128, offset: 1856)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1222, file: !254, line: 698, baseType: !106, size: 128, offset: 1984)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1222, file: !254, line: 707, baseType: !106, size: 128, offset: 2112)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1222, file: !254, line: 708, baseType: !106, size: 128, offset: 2240)
!4894 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !254, line: 709, baseType: !4895, size: 128, offset: 2368)
!4895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !254, line: 709, size: 128, elements: !4896)
!4896 = !{!4897, !4898}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4895, file: !254, line: 710, baseType: !744, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4895, file: !254, line: 711, baseType: !676, size: 128, align: 64)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1222, file: !254, line: 713, baseType: !691, size: 64, offset: 2496)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1222, file: !254, line: 714, baseType: !691, size: 64, offset: 2560)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1222, file: !254, line: 715, baseType: !58, size: 32, offset: 2624)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1222, file: !254, line: 716, baseType: !58, size: 32, offset: 2656)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1222, file: !254, line: 717, baseType: !58, size: 32, offset: 2688)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1222, file: !254, line: 719, baseType: !58, size: 32, offset: 2720)
!4905 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !254, line: 721, baseType: !4906, size: 64, offset: 2752)
!4906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !254, line: 721, size: 64, elements: !4907)
!4907 = !{!4908, !5032}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4906, file: !254, line: 722, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4911)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !254, line: 1914, size: 2112, elements: !4912)
!4912 = !{!4913, !4914, !4918, !4922, !4926, !4927, !4928, !4934, !4947, !4951, !4955, !4956, !4960, !4961, !4965, !4970, !4971, !4975, !4979, !4985, !4986, !4990, !4991, !4995, !4999, !5000, !5005, !5009, !5013, !5017, !5021, !5022, !5028}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4911, file: !254, line: 1915, baseType: !1455, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4911, file: !254, line: 1916, baseType: !4915, size: 64, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!50, !668, !50, !31}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4911, file: !254, line: 1917, baseType: !4919, size: 64, offset: 128)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!1373, !668, !940, !44, !49}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4911, file: !254, line: 1918, baseType: !4923, size: 64, offset: 192)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!1373, !668, !26, !44, !49}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4911, file: !254, line: 1919, baseType: !1992, size: 64, offset: 256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4911, file: !254, line: 1920, baseType: !1992, size: 64, offset: 320)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4911, file: !254, line: 1921, baseType: !4929, size: 64, offset: 384)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!31, !1995, !4932, !17}
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !254, line: 53, flags: DIFlagFwdDecl)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4911, file: !254, line: 1923, baseType: !4935, size: 64, offset: 448)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!31, !668, !4938}
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !254, line: 1858, size: 128, elements: !4940)
!4940 = !{!4941, !4946}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4939, file: !254, line: 1859, baseType: !4942, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !254, line: 1855, baseType: !4943)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!852, !4938, !26, !31, !50, !392, !17}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4939, file: !254, line: 1860, baseType: !50, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4911, file: !254, line: 1924, baseType: !4948, size: 64, offset: 512)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!2227, !668, !2229}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4911, file: !254, line: 1925, baseType: !4952, size: 64, offset: 576)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!301, !668, !17, !48}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4911, file: !254, line: 1926, baseType: !4952, size: 64, offset: 640)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4911, file: !254, line: 1927, baseType: !4957, size: 64, offset: 704)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!31, !668, !1701}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4911, file: !254, line: 1928, baseType: !48, size: 64, offset: 768)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4911, file: !254, line: 1929, baseType: !4962, size: 64, offset: 832)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!31, !1221, !668}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4911, file: !254, line: 1930, baseType: !4966, size: 64, offset: 896)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!31, !668, !4969}
!4969 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !254, line: 1061, baseType: !29)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4911, file: !254, line: 1931, baseType: !4962, size: 64, offset: 960)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4911, file: !254, line: 1932, baseType: !4972, size: 64, offset: 1024)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!31, !668, !50, !50, !31}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4911, file: !254, line: 1933, baseType: !4976, size: 64, offset: 1088)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!31, !31, !668, !31}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4911, file: !254, line: 1934, baseType: !4980, size: 64, offset: 1152)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!31, !668, !31, !4983}
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !254, line: 1063, flags: DIFlagFwdDecl)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4911, file: !254, line: 1935, baseType: !665, size: 64, offset: 1216)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4911, file: !254, line: 1936, baseType: !4987, size: 64, offset: 1280)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!31, !31}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4911, file: !254, line: 1937, baseType: !4980, size: 64, offset: 1344)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4911, file: !254, line: 1938, baseType: !4992, size: 64, offset: 1408)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!1373, !2794, !668, !49, !44, !17}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4911, file: !254, line: 1939, baseType: !4996, size: 64, offset: 1472)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!1373, !668, !49, !2794, !44, !17}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4911, file: !254, line: 1940, baseType: !2048, size: 64, offset: 1536)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4911, file: !254, line: 1941, baseType: !5001, size: 64, offset: 1600)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!31, !668, !31, !5004, !1969}
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4911, file: !254, line: 1942, baseType: !5006, size: 64, offset: 1664)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!301, !668, !31, !50, !50}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4911, file: !254, line: 1944, baseType: !5010, size: 64, offset: 1728)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{null, !2160, !668}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4911, file: !254, line: 1948, baseType: !5014, size: 64, offset: 1792)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!1373, !668, !50, !668, !50, !44, !17}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4911, file: !254, line: 1950, baseType: !5018, size: 64, offset: 1856)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!50, !668, !50, !668, !50, !50, !17}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4911, file: !254, line: 1953, baseType: !4972, size: 64, offset: 1920)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4911, file: !254, line: 1954, baseType: !5023, size: 64, offset: 1984)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!31, !5026, !17}
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !254, line: 1911, flags: DIFlagFwdDecl)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4911, file: !254, line: 1955, baseType: !5029, size: 64, offset: 2048)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!31, !5026, !4932, !17}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4906, file: !254, line: 723, baseType: !4401, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1222, file: !254, line: 725, baseType: !5034, size: 64, offset: 2816)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !254, line: 725, flags: DIFlagFwdDecl)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1222, file: !254, line: 726, baseType: !1573, size: 1536, align: 64, offset: 2880)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1222, file: !254, line: 727, baseType: !106, size: 128, offset: 4416)
!5038 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !254, line: 728, baseType: !5039, size: 64, offset: 4544)
!5039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !254, line: 728, size: 64, elements: !5040)
!5040 = !{!5041, !5042, !5045, !5046}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5039, file: !254, line: 729, baseType: !2794, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5039, file: !254, line: 730, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !254, line: 730, flags: DIFlagFwdDecl)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5039, file: !254, line: 731, baseType: !940, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5039, file: !254, line: 732, baseType: !17, size: 32)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1222, file: !254, line: 735, baseType: !351, size: 32, offset: 4608)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1222, file: !254, line: 738, baseType: !351, size: 32, offset: 4640)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1222, file: !254, line: 739, baseType: !4751, size: 64, offset: 4672)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1222, file: !254, line: 750, baseType: !29, size: 64, offset: 4736)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1187, file: !1188, line: 91, baseType: !2831, size: 256, offset: 448)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1187, file: !1188, line: 94, baseType: !5053, size: 64, offset: 704)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5054, line: 25, size: 64, elements: !5055)
!5054 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5055 = !{!5056}
!5056 = !DIDerivedType(tag: DW_TAG_member, scope: !5053, file: !5054, line: 26, baseType: !5057, size: 64)
!5057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5053, file: !5054, line: 26, size: 64, elements: !5058)
!5058 = !{!5059, !5060}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5057, file: !5054, line: 28, baseType: !393, size: 64, align: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, scope: !5057, file: !5054, line: 30, baseType: !5061, size: 64)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5057, file: !5054, line: 30, size: 64, elements: !5062)
!5062 = !{!5063, !5064}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5061, file: !5054, line: 31, baseType: !68, size: 32)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5061, file: !5054, line: 32, baseType: !31, size: 32, offset: 32)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1187, file: !1188, line: 95, baseType: !4764, size: 64, offset: 768)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1187, file: !1188, line: 96, baseType: !1422, size: 64, offset: 832)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1187, file: !1188, line: 97, baseType: !48, size: 64, offset: 896)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1187, file: !1188, line: 98, baseType: !29, size: 64, offset: 960)
!5069 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1188, line: 100, baseType: !5070, size: 128, offset: 1024)
!5070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1188, line: 100, size: 128, elements: !5071)
!5071 = !{!5072, !5073}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5070, file: !1188, line: 101, baseType: !106, size: 128)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5070, file: !1188, line: 102, baseType: !2238, size: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1187, file: !1188, line: 104, baseType: !106, size: 128, offset: 1152)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1187, file: !1188, line: 105, baseType: !106, size: 128, offset: 1280)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1187, file: !1188, line: 113, baseType: !5077, size: 128, offset: 1408)
!5077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1188, line: 109, size: 128, elements: !5078)
!5078 = !{!5079, !5080, !5081}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5077, file: !1188, line: 110, baseType: !748, size: 128)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5077, file: !1188, line: 111, baseType: !1197, size: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5077, file: !1188, line: 112, baseType: !676, size: 128, align: 64)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1182, file: !1183, line: 72, baseType: !1422, size: 64, offset: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1182, file: !1183, line: 73, baseType: !31, size: 32, offset: 128)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1182, file: !1183, line: 74, baseType: !1260, size: 64, offset: 192)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1177, file: !1178, line: 10, baseType: !1186, size: 64, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !669, file: !254, line: 1015, baseType: !1221, size: 64, offset: 1344)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !669, file: !254, line: 1016, baseType: !4909, size: 64, offset: 1408)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !669, file: !254, line: 1018, baseType: !392, size: 64, offset: 1472)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !669, file: !254, line: 1020, baseType: !29, size: 64, offset: 1536)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !669, file: !254, line: 1023, baseType: !29, size: 64, offset: 1600)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !669, file: !254, line: 1027, baseType: !2978, size: 64, offset: 1664)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !669, file: !254, line: 1029, baseType: !1572, size: 64, offset: 1728)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !669, file: !254, line: 1030, baseType: !2058, size: 32, offset: 1792)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !669, file: !254, line: 1031, baseType: !2058, size: 32, offset: 1824)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !644, file: !140, line: 756, baseType: !48, size: 64, offset: 704)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !644, file: !140, line: 757, baseType: !48, size: 64, offset: 768)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !644, file: !140, line: 760, baseType: !48, size: 64, offset: 832)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !644, file: !140, line: 761, baseType: !48, size: 64, offset: 896)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !644, file: !140, line: 763, baseType: !48, size: 64, offset: 960)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !644, file: !140, line: 764, baseType: !5101, size: 64, offset: 1024)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1716, line: 299, baseType: !5103)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1716, line: 299, size: 64, elements: !5104)
!5104 = !{!5105}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5103, file: !1716, line: 299, baseType: !5106, size: 64)
!5106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1721, line: 18, baseType: !48)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !644, file: !140, line: 773, baseType: !58, size: 32, offset: 1088)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !644, file: !140, line: 785, baseType: !58, size: 32, offset: 1120)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !644, file: !140, line: 795, baseType: !5110, size: 64, offset: 1152)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !140, line: 726, size: 128, elements: !5112)
!5112 = !{!5113, !5114}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5111, file: !140, line: 727, baseType: !392, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !5111, file: !140, line: 728, baseType: !31, size: 32, offset: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !644, file: !140, line: 801, baseType: !48, size: 64, offset: 1216)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !644, file: !140, line: 804, baseType: !689, size: 64, offset: 1280)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !644, file: !140, line: 806, baseType: !31, size: 32, offset: 1344)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !644, file: !140, line: 808, baseType: !68, size: 32, offset: 1376)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !644, file: !140, line: 823, baseType: !872, size: 320, offset: 1408)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !644, file: !140, line: 825, baseType: !106, size: 128, offset: 1728)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !644, file: !140, line: 845, baseType: !31, size: 32, offset: 1856)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !644, file: !140, line: 849, baseType: !48, size: 64, offset: 1920)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !644, file: !140, line: 850, baseType: !48, size: 64, offset: 1984)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !644, file: !140, line: 852, baseType: !48, size: 64, offset: 2048)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !644, file: !140, line: 853, baseType: !48, size: 64, offset: 2112)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !644, file: !140, line: 854, baseType: !691, size: 64, offset: 2176)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !644, file: !140, line: 855, baseType: !48, size: 64, offset: 2240)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !644, file: !140, line: 856, baseType: !48, size: 64, offset: 2304)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !644, file: !140, line: 857, baseType: !48, size: 64, offset: 2368)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !644, file: !140, line: 858, baseType: !48, size: 64, offset: 2432)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !644, file: !140, line: 865, baseType: !514, size: 32, offset: 2496)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !644, file: !140, line: 867, baseType: !68, size: 32, offset: 2528)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !644, file: !140, line: 869, baseType: !48, size: 64, offset: 2560)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !644, file: !140, line: 869, baseType: !48, size: 64, offset: 2624)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !644, file: !140, line: 869, baseType: !48, size: 64, offset: 2688)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !644, file: !140, line: 869, baseType: !48, size: 64, offset: 2752)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !644, file: !140, line: 870, baseType: !48, size: 64, offset: 2816)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !644, file: !140, line: 870, baseType: !48, size: 64, offset: 2880)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !644, file: !140, line: 870, baseType: !48, size: 64, offset: 2944)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !644, file: !140, line: 871, baseType: !48, size: 64, offset: 3008)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !644, file: !140, line: 871, baseType: !48, size: 64, offset: 3072)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !644, file: !140, line: 871, baseType: !48, size: 64, offset: 3136)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !644, file: !140, line: 871, baseType: !48, size: 64, offset: 3200)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !644, file: !140, line: 873, baseType: !5145, size: 3328, offset: 3264)
!5145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 3328, elements: !5146)
!5146 = !{!5147}
!5147 = !DISubrange(count: 52)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !644, file: !140, line: 875, baseType: !5149, size: 1280, offset: 6592)
!5149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 1280, elements: !753)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !644, file: !140, line: 877, baseType: !5151, size: 64, offset: 7872)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !140, line: 877, flags: DIFlagFwdDecl)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !644, file: !140, line: 880, baseType: !5154, size: 1088, offset: 7936)
!5154 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5155, line: 72, baseType: !5156)
!5155 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5155, line: 23, size: 1088, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5165, !5166, !5167, !5168, !5193, !5194, !5195}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5156, file: !5155, line: 28, baseType: !392, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5156, file: !5155, line: 38, baseType: !691, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5156, file: !5155, line: 40, baseType: !48, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5156, file: !5155, line: 43, baseType: !872, size: 320, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5156, file: !5155, line: 44, baseType: !5163, size: 64, offset: 512)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5155, line: 44, flags: DIFlagFwdDecl)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5156, file: !5155, line: 48, baseType: !48, size: 64, offset: 576)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5156, file: !5155, line: 59, baseType: !696, size: 256, offset: 640)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5156, file: !5155, line: 60, baseType: !29, size: 64, offset: 896)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5156, file: !5155, line: 61, baseType: !5169, size: 64, offset: 960)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5171)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5172, line: 13, size: 1216, elements: !5173)
!5172 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5173 = !{!5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5171, file: !5172, line: 14, baseType: !29, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5171, file: !5172, line: 15, baseType: !48, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5171, file: !5172, line: 17, baseType: !48, size: 64, offset: 128)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5171, file: !5172, line: 17, baseType: !48, size: 64, offset: 192)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5171, file: !5172, line: 18, baseType: !48, size: 64, offset: 256)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5171, file: !5172, line: 18, baseType: !48, size: 64, offset: 320)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5171, file: !5172, line: 19, baseType: !2097, size: 64, offset: 384)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5171, file: !5172, line: 21, baseType: !301, size: 64, offset: 448)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5171, file: !5172, line: 23, baseType: !301, size: 64, offset: 512)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5171, file: !5172, line: 24, baseType: !301, size: 64, offset: 576)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5171, file: !5172, line: 25, baseType: !301, size: 64, offset: 640)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5171, file: !5172, line: 26, baseType: !301, size: 64, offset: 704)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5171, file: !5172, line: 27, baseType: !301, size: 64, offset: 768)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5171, file: !5172, line: 28, baseType: !301, size: 64, offset: 832)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5171, file: !5172, line: 29, baseType: !301, size: 64, offset: 896)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5171, file: !5172, line: 30, baseType: !301, size: 64, offset: 960)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5171, file: !5172, line: 31, baseType: !301, size: 64, offset: 1024)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5171, file: !5172, line: 32, baseType: !301, size: 64, offset: 1088)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5171, file: !5172, line: 33, baseType: !301, size: 64, offset: 1152)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5156, file: !5155, line: 63, baseType: !58, size: 32, offset: 1024)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5156, file: !5155, line: 69, baseType: !102, size: 16, offset: 1056)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5156, file: !5155, line: 70, baseType: !2416, size: 16, offset: 1072)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !140, line: 882, baseType: !48, size: 64, offset: 9024)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !644, file: !140, line: 885, baseType: !68, size: 32, offset: 9088)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !644, file: !140, line: 886, baseType: !5199, size: 64, offset: 9152)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !140, line: 732, flags: DIFlagFwdDecl)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !644, file: !140, line: 901, baseType: !794, size: 64, offset: 9216)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !644, file: !140, line: 904, baseType: !668, size: 64, offset: 9280)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !644, file: !140, line: 906, baseType: !5204, size: 64, offset: 9344)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !140, line: 906, flags: DIFlagFwdDecl)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !644, file: !140, line: 930, baseType: !58, size: 32, offset: 9408)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !644, file: !140, line: 933, baseType: !58, size: 32, offset: 9440)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !644, file: !140, line: 935, baseType: !5209, size: 64, offset: 9472)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !271, line: 103, size: 64, elements: !5210)
!5210 = !{!5211}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5209, file: !271, line: 104, baseType: !5212, size: 64)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !271, line: 101, flags: DIFlagFwdDecl)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !644, file: !140, line: 940, baseType: !689, size: 64, offset: 9536)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !644, file: !140, line: 942, baseType: !979, size: 256, offset: 9600)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !641, file: !140, line: 986, baseType: !5217, offset: 10240)
!5217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, elements: !1083)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !340, file: !341, line: 882, baseType: !640, size: 64, offset: 9792)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !340, file: !341, line: 884, baseType: !31, size: 32, offset: 9856)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !340, file: !341, line: 885, baseType: !31, size: 32, offset: 9888)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !340, file: !341, line: 886, baseType: !31, size: 32, offset: 9920)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !340, file: !341, line: 888, baseType: !31, size: 32, offset: 9952)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !340, file: !341, line: 890, baseType: !48, size: 64, offset: 9984)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !340, file: !341, line: 893, baseType: !17, size: 32, offset: 10048)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !340, file: !341, line: 896, baseType: !17, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !340, file: !341, line: 897, baseType: !17, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !340, file: !341, line: 898, baseType: !17, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !340, file: !341, line: 899, baseType: !17, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !340, file: !341, line: 919, baseType: !17, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !340, file: !341, line: 922, baseType: !17, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !340, file: !341, line: 923, baseType: !17, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !340, file: !341, line: 925, baseType: !17, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !340, file: !341, line: 939, baseType: !17, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !340, file: !341, line: 941, baseType: !17, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !340, file: !341, line: 944, baseType: !17, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !340, file: !341, line: 956, baseType: !17, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !340, file: !341, line: 962, baseType: !17, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !340, file: !341, line: 966, baseType: !17, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !340, file: !341, line: 969, baseType: !48, size: 64, offset: 10176)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !340, file: !341, line: 971, baseType: !5241, size: 448, offset: 10240)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !265, line: 25, size: 448, elements: !5242)
!5242 = !{!5243, !5244, !5249}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5241, file: !265, line: 26, baseType: !48, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5241, file: !265, line: 27, baseType: !5245, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!301, !5248}
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, scope: !5241, file: !265, line: 28, baseType: !5250, size: 320, offset: 128)
!5250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5241, file: !265, line: 28, size: 320, elements: !5251)
!5251 = !{!5252, !5262, !5287}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5250, file: !265, line: 37, baseType: !5253, size: 320)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5250, file: !265, line: 30, size: 320, elements: !5254)
!5254 = !{!5255, !5257, !5258, !5259, !5260, !5261}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5253, file: !265, line: 31, baseType: !5256, size: 64)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5253, file: !265, line: 32, baseType: !350, size: 32, offset: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5253, file: !265, line: 33, baseType: !350, size: 32, offset: 96)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5253, file: !265, line: 34, baseType: !350, size: 32, offset: 128)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5253, file: !265, line: 35, baseType: !392, size: 64, offset: 192)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5253, file: !265, line: 36, baseType: !5256, size: 64, offset: 256)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5250, file: !265, line: 47, baseType: !5263, size: 192)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5250, file: !265, line: 39, size: 192, elements: !5264)
!5264 = !{!5265, !5266, !5267, !5286}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5263, file: !265, line: 40, baseType: !506, size: 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5263, file: !265, line: 41, baseType: !264, size: 32, offset: 32)
!5267 = !DIDerivedType(tag: DW_TAG_member, scope: !5263, file: !265, line: 42, baseType: !5268, size: 64, offset: 64)
!5268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5263, file: !265, line: 42, size: 64, elements: !5269)
!5269 = !{!5270, !5278}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5268, file: !265, line: 43, baseType: !5271, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5273, line: 7, size: 128, elements: !5274)
!5273 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5274 = !{!5275, !5277}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5272, file: !5273, line: 8, baseType: !5276, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !46, line: 93, baseType: !52)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5272, file: !5273, line: 9, baseType: !52, size: 64, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5268, file: !265, line: 44, baseType: !5279, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5281, line: 7, size: 64, elements: !5282)
!5281 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5282 = !{!5283, !5285}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5280, file: !5281, line: 8, baseType: !5284, size: 32)
!5284 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5281, line: 5, baseType: !864)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5280, file: !5281, line: 9, baseType: !864, size: 32, offset: 32)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5263, file: !265, line: 46, baseType: !392, size: 64, offset: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5250, file: !265, line: 55, baseType: !5288, size: 256)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5250, file: !265, line: 49, size: 256, elements: !5289)
!5289 = !{!5290, !5298, !5299, !5300, !5301}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5288, file: !265, line: 50, baseType: !5291, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5293, line: 36, size: 64, elements: !5294)
!5293 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5294 = !{!5295, !5296, !5297}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5292, file: !5293, line: 37, baseType: !31, size: 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5292, file: !5293, line: 38, baseType: !900, size: 16, offset: 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5292, file: !5293, line: 39, baseType: !900, size: 16, offset: 48)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5288, file: !265, line: 51, baseType: !31, size: 32, offset: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5288, file: !265, line: 52, baseType: !31, size: 32, offset: 96)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5288, file: !265, line: 53, baseType: !48, size: 64, offset: 128)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5288, file: !265, line: 54, baseType: !48, size: 64, offset: 192)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !340, file: !341, line: 973, baseType: !2743, size: 32, offset: 10688)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !340, file: !341, line: 974, baseType: !2743, size: 32, offset: 10720)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !340, file: !341, line: 978, baseType: !48, size: 64, offset: 10752)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !340, file: !341, line: 987, baseType: !339, size: 64, offset: 10816)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !340, file: !341, line: 990, baseType: !339, size: 64, offset: 10880)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !340, file: !341, line: 995, baseType: !106, size: 128, offset: 10944)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !340, file: !341, line: 996, baseType: !106, size: 128, offset: 11072)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !340, file: !341, line: 997, baseType: !339, size: 64, offset: 11200)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !340, file: !341, line: 1005, baseType: !106, size: 128, offset: 11264)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !340, file: !341, line: 1006, baseType: !106, size: 128, offset: 11392)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !340, file: !341, line: 1009, baseType: !736, size: 64, offset: 11520)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !340, file: !341, line: 1010, baseType: !5314, size: 512, offset: 11584)
!5314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 512, elements: !753)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !340, file: !341, line: 1011, baseType: !106, size: 128, offset: 12096)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !340, file: !341, line: 1012, baseType: !106, size: 128, offset: 12224)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !340, file: !341, line: 1014, baseType: !1017, size: 64, offset: 12352)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !340, file: !341, line: 1017, baseType: !2409, size: 64, offset: 12416)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !340, file: !341, line: 1020, baseType: !2409, size: 64, offset: 12480)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !340, file: !341, line: 1023, baseType: !29, size: 64, offset: 12544)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !340, file: !341, line: 1025, baseType: !392, size: 64, offset: 12608)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !340, file: !341, line: 1026, baseType: !392, size: 64, offset: 12672)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !340, file: !341, line: 1031, baseType: !392, size: 64, offset: 12736)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !340, file: !341, line: 1032, baseType: !4177, size: 192, offset: 12800)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !340, file: !341, line: 1041, baseType: !48, size: 64, offset: 12992)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !340, file: !341, line: 1042, baseType: !48, size: 64, offset: 13056)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !340, file: !341, line: 1045, baseType: !392, size: 64, offset: 13120)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !340, file: !341, line: 1048, baseType: !392, size: 64, offset: 13184)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !340, file: !341, line: 1051, baseType: !48, size: 64, offset: 13248)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !340, file: !341, line: 1052, baseType: !48, size: 64, offset: 13312)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !340, file: !341, line: 1055, baseType: !5332, size: 640, offset: 13376)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5333, line: 132, size: 640, elements: !5334)
!5333 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5334 = !{!5335, !5341, !5342}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5332, file: !5333, line: 133, baseType: !5336, size: 576)
!5336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5337, size: 576, elements: !732)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5333, line: 117, size: 192, elements: !5338)
!5338 = !{!5339, !5340}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5337, file: !5333, line: 118, baseType: !392, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5337, file: !5333, line: 119, baseType: !520, size: 128, offset: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5332, file: !5333, line: 134, baseType: !17, size: 32, offset: 576)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5332, file: !5333, line: 135, baseType: !17, size: 32, offset: 608)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !340, file: !341, line: 1058, baseType: !5344, size: 448, offset: 14016)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5333, line: 144, size: 448, elements: !5345)
!5345 = !{!5346, !5347, !5348}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5344, file: !5333, line: 145, baseType: !676, size: 128, align: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5344, file: !5333, line: 146, baseType: !696, size: 256, offset: 128)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5344, file: !5333, line: 147, baseType: !17, size: 32, offset: 384)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !340, file: !341, line: 1064, baseType: !1090, size: 64, offset: 14464)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !340, file: !341, line: 1067, baseType: !1090, size: 64, offset: 14528)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !340, file: !341, line: 1070, baseType: !1090, size: 64, offset: 14592)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !340, file: !341, line: 1074, baseType: !856, size: 64, offset: 14656)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !340, file: !341, line: 1084, baseType: !2747, size: 128, offset: 14720)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !340, file: !341, line: 1086, baseType: !5355, size: 64, offset: 14848)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !341, line: 55, flags: DIFlagFwdDecl)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !340, file: !341, line: 1089, baseType: !5358, size: 64, offset: 14912)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5359, line: 12, size: 64, elements: !5360)
!5359 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5360 = !{!5361}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5358, file: !5359, line: 13, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5359, line: 8, flags: DIFlagFwdDecl)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !340, file: !341, line: 1090, baseType: !5365, size: 128, offset: 14976)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5366, line: 13, size: 128, elements: !5367)
!5366 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5367 = !{!5368}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5365, file: !5366, line: 14, baseType: !106, size: 128)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !340, file: !341, line: 1097, baseType: !5370, size: 64, offset: 15104)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !341, line: 50, flags: DIFlagFwdDecl)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !340, file: !341, line: 1100, baseType: !5373, size: 64, offset: 15168)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !341, line: 1100, flags: DIFlagFwdDecl)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !340, file: !341, line: 1103, baseType: !5376, size: 64, offset: 15232)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !341, line: 53, flags: DIFlagFwdDecl)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !340, file: !341, line: 1107, baseType: !5379, size: 64, offset: 15296)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5381, line: 31, size: 576, elements: !5382)
!5381 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5382 = !{!5383, !5384, !5387, !5390, !5393, !5394, !5397, !5400, !5401}
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5380, file: !5381, line: 32, baseType: !356, size: 32)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5380, file: !5381, line: 33, baseType: !5385, size: 64, offset: 64)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5381, line: 9, flags: DIFlagFwdDecl)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5380, file: !5381, line: 34, baseType: !5388, size: 64, offset: 128)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5381, line: 10, flags: DIFlagFwdDecl)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5380, file: !5381, line: 35, baseType: !5391, size: 64, offset: 192)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5381, line: 8, flags: DIFlagFwdDecl)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5380, file: !5381, line: 36, baseType: !764, size: 64, offset: 256)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5380, file: !5381, line: 37, baseType: !5395, size: 64, offset: 320)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !858, line: 34, flags: DIFlagFwdDecl)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5380, file: !5381, line: 38, baseType: !5398, size: 64, offset: 384)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5381, line: 38, flags: DIFlagFwdDecl)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5380, file: !5381, line: 39, baseType: !5398, size: 64, offset: 448)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5380, file: !5381, line: 40, baseType: !5402, size: 64, offset: 512)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5404, line: 771, size: 384, elements: !5405)
!5404 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5405 = !{!5406, !5407, !5408, !5409}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5403, file: !5404, line: 772, baseType: !840, size: 192)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5403, file: !5404, line: 773, baseType: !794, size: 64, offset: 192)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5403, file: !5404, line: 774, baseType: !1062, size: 64, offset: 256)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5403, file: !5404, line: 775, baseType: !4247, size: 64, offset: 320)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !340, file: !341, line: 1110, baseType: !5411, size: 64, offset: 15360)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5413, line: 93, size: 8768, elements: !5414)
!5413 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5414 = !{!5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5463, !5472, !5473, !5475, !5476, !5477, !5480, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5518, !5519, !5526, !5536, !5598, !5599, !5602, !5603, !5604, !5605, !5606, !5607}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5412, file: !5413, line: 94, baseType: !356, size: 32)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5412, file: !5413, line: 95, baseType: !58, size: 32, offset: 32)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5412, file: !5413, line: 96, baseType: !31, size: 32, offset: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5412, file: !5413, line: 97, baseType: !31, size: 32, offset: 96)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5412, file: !5413, line: 98, baseType: !106, size: 128, offset: 128)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5412, file: !5413, line: 100, baseType: !63, size: 192, offset: 256)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5412, file: !5413, line: 103, baseType: !339, size: 64, offset: 448)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5412, file: !5413, line: 106, baseType: !5423, size: 192, offset: 512)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5424, line: 32, size: 192, elements: !5425)
!5424 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5425 = !{!5426, !5427}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5423, file: !5424, line: 33, baseType: !106, size: 128)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5423, file: !5424, line: 34, baseType: !5428, size: 64, offset: 128)
!5428 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5429, line: 25, baseType: !5430)
!5429 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5429, line: 23, size: 64, elements: !5431)
!5431 = !{!5432}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5430, file: !5429, line: 24, baseType: !591, size: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5412, file: !5413, line: 109, baseType: !744, size: 64, offset: 704)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5412, file: !5413, line: 112, baseType: !31, size: 32, offset: 768)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5412, file: !5413, line: 114, baseType: !31, size: 32, offset: 800)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5412, file: !5413, line: 115, baseType: !339, size: 64, offset: 832)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5412, file: !5413, line: 118, baseType: !31, size: 32, offset: 896)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5412, file: !5413, line: 119, baseType: !17, size: 32, offset: 928)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5412, file: !5413, line: 121, baseType: !5440, size: 64, offset: 960)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5413, line: 80, size: 448, elements: !5442)
!5442 = !{!5443, !5444, !5450}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5441, file: !5413, line: 81, baseType: !58, size: 32)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5441, file: !5413, line: 82, baseType: !5445, size: 128, offset: 64)
!5445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5413, line: 75, size: 128, elements: !5446)
!5446 = !{!5447, !5448}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5445, file: !5413, line: 76, baseType: !339, size: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5445, file: !5413, line: 77, baseType: !5449, size: 64, offset: 64)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5441, file: !5413, line: 83, baseType: !1018, size: 256, offset: 192)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5412, file: !5413, line: 132, baseType: !17, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5412, file: !5413, line: 133, baseType: !17, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5412, file: !5413, line: 138, baseType: !17, size: 32, offset: 1056)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5412, file: !5413, line: 139, baseType: !106, size: 128, offset: 1088)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5412, file: !5413, line: 142, baseType: !459, size: 512, offset: 1216)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5412, file: !5413, line: 143, baseType: !467, size: 64, offset: 1728)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5412, file: !5413, line: 150, baseType: !5458, size: 256, offset: 1792)
!5458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5459, size: 256, elements: !2399)
!5459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5413, line: 38, size: 128, elements: !5460)
!5460 = !{!5461, !5462}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5459, file: !5413, line: 39, baseType: !392, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5459, file: !5413, line: 40, baseType: !392, size: 64, offset: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5412, file: !5413, line: 156, baseType: !5464, size: 192, offset: 2048)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5413, line: 66, size: 192, elements: !5465)
!5465 = !{!5466}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5464, file: !5413, line: 67, baseType: !5467, size: 192)
!5467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5413, line: 47, size: 192, elements: !5468)
!5468 = !{!5469, !5470, !5471}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5467, file: !5413, line: 48, baseType: !691, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5467, file: !5413, line: 49, baseType: !691, size: 64, offset: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5467, file: !5413, line: 50, baseType: !691, size: 64, offset: 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5412, file: !5413, line: 160, baseType: !5332, size: 640, offset: 2240)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5412, file: !5413, line: 163, baseType: !5474, size: 256, offset: 2880)
!5474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 256, elements: !753)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5412, file: !5413, line: 169, baseType: !736, size: 64, offset: 3136)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5412, file: !5413, line: 172, baseType: !31, size: 32, offset: 3200)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5412, file: !5413, line: 174, baseType: !5478, size: 64, offset: 3264)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5413, line: 174, flags: DIFlagFwdDecl)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5412, file: !5413, line: 185, baseType: !5481, size: 64, offset: 3328)
!5481 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !510, line: 860, baseType: !5482)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 853, size: 64, elements: !5483)
!5483 = !{!5484, !5485}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5482, file: !510, line: 858, baseType: !1192, size: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5482, file: !510, line: 859, baseType: !68, size: 32, offset: 32)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5412, file: !5413, line: 186, baseType: !392, size: 64, offset: 3392)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5412, file: !5413, line: 186, baseType: !392, size: 64, offset: 3456)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5412, file: !5413, line: 186, baseType: !392, size: 64, offset: 3520)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5412, file: !5413, line: 186, baseType: !392, size: 64, offset: 3584)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5412, file: !5413, line: 187, baseType: !392, size: 64, offset: 3648)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5412, file: !5413, line: 188, baseType: !392, size: 64, offset: 3712)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5412, file: !5413, line: 189, baseType: !4177, size: 192, offset: 3776)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5412, file: !5413, line: 190, baseType: !48, size: 64, offset: 3968)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5412, file: !5413, line: 190, baseType: !48, size: 64, offset: 4032)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5412, file: !5413, line: 190, baseType: !48, size: 64, offset: 4096)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5412, file: !5413, line: 190, baseType: !48, size: 64, offset: 4160)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5412, file: !5413, line: 191, baseType: !48, size: 64, offset: 4224)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5412, file: !5413, line: 191, baseType: !48, size: 64, offset: 4288)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5412, file: !5413, line: 191, baseType: !48, size: 64, offset: 4352)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5412, file: !5413, line: 191, baseType: !48, size: 64, offset: 4416)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5412, file: !5413, line: 192, baseType: !48, size: 64, offset: 4480)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5412, file: !5413, line: 192, baseType: !48, size: 64, offset: 4544)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5412, file: !5413, line: 192, baseType: !48, size: 64, offset: 4608)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5412, file: !5413, line: 192, baseType: !48, size: 64, offset: 4672)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5412, file: !5413, line: 193, baseType: !48, size: 64, offset: 4736)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5412, file: !5413, line: 193, baseType: !48, size: 64, offset: 4800)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5412, file: !5413, line: 194, baseType: !5508, size: 448, offset: 4864)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5509, line: 12, size: 448, elements: !5510)
!5509 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5510 = !{!5511, !5512, !5513, !5514, !5515, !5516, !5517}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5508, file: !5509, line: 15, baseType: !392, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5508, file: !5509, line: 17, baseType: !392, size: 64, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5508, file: !5509, line: 19, baseType: !392, size: 64, offset: 128)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5508, file: !5509, line: 21, baseType: !392, size: 64, offset: 192)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5508, file: !5509, line: 29, baseType: !392, size: 64, offset: 256)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5508, file: !5509, line: 35, baseType: !392, size: 64, offset: 320)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5508, file: !5509, line: 44, baseType: !392, size: 64, offset: 384)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5412, file: !5413, line: 202, baseType: !394, size: 64, offset: 5312)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5412, file: !5413, line: 213, baseType: !5520, size: 2048, offset: 5376)
!5520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5521, size: 2048, elements: !2748)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5522, line: 43, size: 128, elements: !5523)
!5522 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5523 = !{!5524, !5525}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5521, file: !5522, line: 44, baseType: !47, size: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5521, file: !5522, line: 45, baseType: !47, size: 64, offset: 64)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5412, file: !5413, line: 216, baseType: !5527, size: 448, offset: 7424)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5413, line: 30, size: 448, elements: !5528)
!5528 = !{!5529, !5530, !5531, !5532, !5533, !5534, !5535}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5527, file: !5413, line: 31, baseType: !31, size: 32)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5527, file: !5413, line: 32, baseType: !301, size: 64, offset: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5527, file: !5413, line: 33, baseType: !48, size: 64, offset: 128)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5527, file: !5413, line: 34, baseType: !392, size: 64, offset: 192)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5527, file: !5413, line: 34, baseType: !392, size: 64, offset: 256)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5527, file: !5413, line: 35, baseType: !48, size: 64, offset: 320)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5527, file: !5413, line: 35, baseType: !48, size: 64, offset: 384)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5412, file: !5413, line: 219, baseType: !5537, size: 64, offset: 7872)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5539, line: 41, size: 3456, elements: !5540)
!5539 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5540 = !{!5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5538, file: !5539, line: 47, baseType: !103, size: 16)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5538, file: !5539, line: 48, baseType: !351, size: 32, offset: 32)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5538, file: !5539, line: 54, baseType: !94, size: 8, offset: 64)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5538, file: !5539, line: 55, baseType: !94, size: 8, offset: 72)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5538, file: !5539, line: 73, baseType: !393, size: 64, align: 64, offset: 128)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5538, file: !5539, line: 74, baseType: !393, size: 64, offset: 192)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5538, file: !5539, line: 81, baseType: !393, size: 64, offset: 256)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5538, file: !5539, line: 82, baseType: !393, size: 64, offset: 320)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5538, file: !5539, line: 85, baseType: !393, size: 64, offset: 384)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5538, file: !5539, line: 86, baseType: !393, size: 64, offset: 448)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5538, file: !5539, line: 94, baseType: !393, size: 64, offset: 512)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5538, file: !5539, line: 102, baseType: !393, size: 64, offset: 576)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5538, file: !5539, line: 107, baseType: !3102, size: 256, offset: 640)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5538, file: !5539, line: 108, baseType: !94, size: 8, align: 64, offset: 896)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5538, file: !5539, line: 110, baseType: !5556, size: 24, offset: 904)
!5556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 24, elements: !732)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5538, file: !5539, line: 111, baseType: !351, size: 32, align: 64, offset: 960)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5538, file: !5539, line: 113, baseType: !351, size: 32, offset: 992)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5538, file: !5539, line: 114, baseType: !351, size: 32, offset: 1024)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5538, file: !5539, line: 115, baseType: !351, size: 32, offset: 1056)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5538, file: !5539, line: 117, baseType: !351, size: 32, offset: 1088)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5538, file: !5539, line: 118, baseType: !393, size: 64, align: 64, offset: 1152)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5538, file: !5539, line: 120, baseType: !393, size: 64, offset: 1216)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5538, file: !5539, line: 121, baseType: !393, size: 64, offset: 1280)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5538, file: !5539, line: 122, baseType: !393, size: 64, offset: 1344)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5538, file: !5539, line: 123, baseType: !393, size: 64, offset: 1408)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5538, file: !5539, line: 133, baseType: !393, size: 64, offset: 1472)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5538, file: !5539, line: 137, baseType: !393, size: 64, offset: 1536)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5538, file: !5539, line: 142, baseType: !393, size: 64, offset: 1600)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5538, file: !5539, line: 143, baseType: !393, size: 64, offset: 1664)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5538, file: !5539, line: 146, baseType: !393, size: 64, offset: 1728)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5538, file: !5539, line: 147, baseType: !393, size: 64, offset: 1792)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5538, file: !5539, line: 148, baseType: !393, size: 64, offset: 1856)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5538, file: !5539, line: 149, baseType: !393, size: 64, offset: 1920)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5538, file: !5539, line: 154, baseType: !393, size: 64, offset: 1984)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5538, file: !5539, line: 155, baseType: !393, size: 64, offset: 2048)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5538, file: !5539, line: 156, baseType: !393, size: 64, offset: 2112)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5538, file: !5539, line: 158, baseType: !393, size: 64, offset: 2176)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5538, file: !5539, line: 159, baseType: !393, size: 64, offset: 2240)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5538, file: !5539, line: 162, baseType: !393, size: 64, offset: 2304)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5538, file: !5539, line: 163, baseType: !393, size: 64, offset: 2368)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5538, file: !5539, line: 164, baseType: !393, size: 64, offset: 2432)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5538, file: !5539, line: 167, baseType: !393, size: 64, offset: 2496)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5538, file: !5539, line: 168, baseType: !393, size: 64, offset: 2560)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5538, file: !5539, line: 171, baseType: !393, size: 64, offset: 2624)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5538, file: !5539, line: 172, baseType: !393, size: 64, offset: 2688)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5538, file: !5539, line: 175, baseType: !393, size: 64, offset: 2752)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5538, file: !5539, line: 178, baseType: !393, size: 64, offset: 2816)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5538, file: !5539, line: 179, baseType: !393, size: 64, offset: 2880)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5538, file: !5539, line: 182, baseType: !351, size: 32, offset: 2944)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5538, file: !5539, line: 186, baseType: !393, size: 64, align: 64, offset: 3008)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5538, file: !5539, line: 194, baseType: !393, size: 64, offset: 3072)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5538, file: !5539, line: 195, baseType: !393, size: 64, offset: 3136)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5538, file: !5539, line: 199, baseType: !393, size: 64, offset: 3200)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5538, file: !5539, line: 200, baseType: !393, size: 64, offset: 3264)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5538, file: !5539, line: 203, baseType: !393, size: 64, offset: 3328)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5538, file: !5539, line: 204, baseType: !393, size: 64, offset: 3392)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5412, file: !5413, line: 222, baseType: !17, size: 32, offset: 7936)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5412, file: !5413, line: 223, baseType: !5600, size: 64, offset: 8000)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5413, line: 223, flags: DIFlagFwdDecl)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5412, file: !5413, line: 230, baseType: !852, size: 8, offset: 8064)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5412, file: !5413, line: 231, baseType: !900, size: 16, offset: 8080)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5412, file: !5413, line: 232, baseType: !900, size: 16, offset: 8096)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5412, file: !5413, line: 234, baseType: !640, size: 64, offset: 8128)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5412, file: !5413, line: 237, baseType: !696, size: 256, offset: 8192)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5412, file: !5413, line: 243, baseType: !872, size: 320, offset: 8448)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !340, file: !341, line: 1111, baseType: !5609, size: 64, offset: 15424)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5413, line: 20, size: 16640, elements: !5611)
!5611 = !{!5612, !5613, !5614, !5615}
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5610, file: !5413, line: 21, baseType: !68, size: 32)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5610, file: !5413, line: 22, baseType: !356, size: 32, offset: 32)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5610, file: !5413, line: 23, baseType: !63, size: 192, offset: 64)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5610, file: !5413, line: 24, baseType: !5616, size: 16384, offset: 256)
!5616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5617, size: 16384, elements: !1511)
!5617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5424, line: 51, size: 256, elements: !5618)
!5618 = !{!5619}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5617, file: !5424, line: 52, baseType: !5620, size: 256)
!5620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5424, line: 37, size: 256, elements: !5621)
!5621 = !{!5622, !5629, !5630, !5634}
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5620, file: !5424, line: 39, baseType: !5623, size: 64)
!5623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5624, line: 83, baseType: !5625)
!5624 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5626, size: 64)
!5626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5624, line: 82, baseType: !5627)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{null, !31}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5620, file: !5424, line: 40, baseType: !48, size: 64, offset: 64)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5620, file: !5424, line: 46, baseType: !5631, size: 64, offset: 128)
!5631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5624, line: 86, baseType: !5632)
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5633, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5624, line: 85, baseType: !2685)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5620, file: !5424, line: 48, baseType: !5428, size: 64, offset: 192)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !340, file: !341, line: 1112, baseType: !5428, size: 64, offset: 15488)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !340, file: !341, line: 1113, baseType: !5428, size: 64, offset: 15552)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !340, file: !341, line: 1115, baseType: !5428, size: 64, offset: 15616)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !340, file: !341, line: 1116, baseType: !5423, size: 192, offset: 15680)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !340, file: !341, line: 1117, baseType: !48, size: 64, offset: 15872)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !340, file: !341, line: 1118, baseType: !44, size: 64, offset: 15936)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !340, file: !341, line: 1119, baseType: !17, size: 32, offset: 16000)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !340, file: !341, line: 1121, baseType: !679, size: 64, offset: 16064)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !340, file: !341, line: 1125, baseType: !5644, size: 64, offset: 16128)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !341, line: 43, flags: DIFlagFwdDecl)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !340, file: !341, line: 1127, baseType: !825, size: 32, offset: 16192)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !340, file: !341, line: 1128, baseType: !17, size: 32, offset: 16224)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !340, file: !341, line: 1130, baseType: !5649, size: 128, offset: 16256)
!5649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5650, line: 37, size: 128, elements: !5651)
!5650 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5651 = !{!5652, !5653, !5654}
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5649, file: !5650, line: 38, baseType: !31, size: 32)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5649, file: !5650, line: 39, baseType: !58, size: 32, offset: 32)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5649, file: !5650, line: 40, baseType: !5655, size: 64, offset: 64)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5650, line: 24, flags: DIFlagFwdDecl)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !340, file: !341, line: 1131, baseType: !5658, size: 256, offset: 16384)
!5658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5659, line: 12, size: 256, elements: !5660)
!5659 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5660 = !{!5661, !5662, !5663, !5664}
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5658, file: !5659, line: 13, baseType: !940, size: 64)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5658, file: !5659, line: 14, baseType: !48, size: 64, offset: 64)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5658, file: !5659, line: 15, baseType: !48, size: 64, offset: 128)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5658, file: !5659, line: 16, baseType: !852, size: 8, offset: 192)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !340, file: !341, line: 1134, baseType: !392, size: 64, offset: 16640)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !340, file: !341, line: 1135, baseType: !392, size: 64, offset: 16704)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !340, file: !341, line: 1138, baseType: !68, size: 32, offset: 16768)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !340, file: !341, line: 1141, baseType: !307, size: 32, offset: 16800)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !340, file: !341, line: 1143, baseType: !5670, size: 64, offset: 16832)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !341, line: 735, size: 64, elements: !5671)
!5671 = !{!5672}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5670, file: !341, line: 736, baseType: !5673, size: 64)
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !340, file: !341, line: 1147, baseType: !523, size: 128, offset: 16896)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !340, file: !341, line: 1149, baseType: !339, size: 64, offset: 17024)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !340, file: !341, line: 1151, baseType: !5677, size: 64, offset: 17088)
!5677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5678, size: 64)
!5678 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !341, line: 1151, flags: DIFlagFwdDecl)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !340, file: !341, line: 1188, baseType: !29, size: 64, offset: 17152)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !340, file: !341, line: 1191, baseType: !5681, size: 64, offset: 17216)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !341, line: 44, flags: DIFlagFwdDecl)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !340, file: !341, line: 1194, baseType: !5684, size: 64, offset: 17280)
!5684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5685, size: 64)
!5685 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !341, line: 45, flags: DIFlagFwdDecl)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !340, file: !341, line: 1197, baseType: !5687, size: 64, offset: 17344)
!5687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5688, size: 64)
!5688 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !341, line: 61, flags: DIFlagFwdDecl)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !340, file: !341, line: 1199, baseType: !5690, size: 64, offset: 17408)
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5692, line: 99, size: 128, elements: !5693)
!5692 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5693 = !{!5694, !5695, !5696}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5691, file: !5692, line: 100, baseType: !689, size: 64)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5691, file: !5692, line: 101, baseType: !58, size: 32, offset: 64)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5691, file: !5692, line: 103, baseType: !35, size: 16, offset: 96)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !340, file: !341, line: 1202, baseType: !5698, size: 64, offset: 17472)
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !341, line: 48, flags: DIFlagFwdDecl)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !340, file: !341, line: 1205, baseType: !48, size: 64, offset: 17536)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !340, file: !341, line: 1206, baseType: !5702, size: 64, offset: 17600)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5424, line: 14, baseType: !5704)
!5704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5424, line: 12, size: 384, elements: !5705)
!5705 = !{!5706}
!5706 = !DIDerivedType(tag: DW_TAG_member, scope: !5704, file: !5424, line: 13, baseType: !5707, size: 384)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5704, file: !5424, line: 13, size: 384, elements: !5708)
!5708 = !{!5709, !5710, !5711, !5712}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5707, file: !5424, line: 13, baseType: !31, size: 32)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5707, file: !5424, line: 13, baseType: !31, size: 32, offset: 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5707, file: !5424, line: 13, baseType: !31, size: 32, offset: 64)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5707, file: !5424, line: 13, baseType: !5713, size: 256, offset: 128)
!5713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5714, line: 37, size: 256, elements: !5715)
!5714 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5715 = !{!5716, !5721, !5734, !5740, !5749, !5776, !5781}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5713, file: !5714, line: 42, baseType: !5717, size: 64)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5713, file: !5714, line: 39, size: 64, elements: !5718)
!5718 = !{!5719, !5720}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5717, file: !5714, line: 40, baseType: !2744, size: 32)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5717, file: !5714, line: 41, baseType: !831, size: 32, offset: 32)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5713, file: !5714, line: 50, baseType: !5722, size: 192)
!5722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5713, file: !5714, line: 45, size: 192, elements: !5723)
!5723 = !{!5724, !5726, !5727, !5733}
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5722, file: !5714, line: 46, baseType: !5725, size: 32)
!5725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !46, line: 95, baseType: !31)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5722, file: !5714, line: 47, baseType: !31, size: 32, offset: 32)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5722, file: !5714, line: 48, baseType: !5728, size: 64, offset: 64)
!5728 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5714, line: 11, baseType: !5729)
!5729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5714, line: 8, size: 64, elements: !5730)
!5730 = !{!5731, !5732}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5729, file: !5714, line: 9, baseType: !31, size: 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5729, file: !5714, line: 10, baseType: !29, size: 64)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5722, file: !5714, line: 49, baseType: !31, size: 32, offset: 128)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5713, file: !5714, line: 57, baseType: !5735, size: 128)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5713, file: !5714, line: 53, size: 128, elements: !5736)
!5736 = !{!5737, !5738, !5739}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5735, file: !5714, line: 54, baseType: !2744, size: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5735, file: !5714, line: 55, baseType: !831, size: 32, offset: 32)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5735, file: !5714, line: 56, baseType: !5728, size: 64, offset: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5713, file: !5714, line: 66, baseType: !5741, size: 256)
!5741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5713, file: !5714, line: 60, size: 256, elements: !5742)
!5742 = !{!5743, !5744, !5745, !5746, !5748}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5741, file: !5714, line: 61, baseType: !2744, size: 32)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5741, file: !5714, line: 62, baseType: !831, size: 32, offset: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5741, file: !5714, line: 63, baseType: !31, size: 32, offset: 64)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5741, file: !5714, line: 64, baseType: !5747, size: 64, offset: 128)
!5747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !46, line: 94, baseType: !1375)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5741, file: !5714, line: 65, baseType: !5747, size: 64, offset: 192)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5713, file: !5714, line: 105, baseType: !5750, size: 256)
!5750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5713, file: !5714, line: 69, size: 256, elements: !5751)
!5751 = !{!5752, !5753}
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5750, file: !5714, line: 70, baseType: !29, size: 64)
!5753 = !DIDerivedType(tag: DW_TAG_member, scope: !5750, file: !5714, line: 79, baseType: !5754, size: 192, offset: 64)
!5754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5750, file: !5714, line: 79, size: 192, elements: !5755)
!5755 = !{!5756, !5757, !5758, !5765, !5770}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5754, file: !5714, line: 81, baseType: !31, size: 32)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5754, file: !5714, line: 86, baseType: !900, size: 16)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5754, file: !5714, line: 92, baseType: !5759, size: 192)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5754, file: !5714, line: 88, size: 192, elements: !5760)
!5760 = !{!5761, !5763, !5764}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5759, file: !5714, line: 89, baseType: !5762, size: 64)
!5762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !502)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5759, file: !5714, line: 90, baseType: !29, size: 64, offset: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5759, file: !5714, line: 91, baseType: !29, size: 64, offset: 128)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5754, file: !5714, line: 97, baseType: !5766, size: 96)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5754, file: !5714, line: 94, size: 96, elements: !5767)
!5767 = !{!5768, !5769}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5766, file: !5714, line: 95, baseType: !5762, size: 64)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5766, file: !5714, line: 96, baseType: !351, size: 32, offset: 64)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5754, file: !5714, line: 103, baseType: !5771, size: 128)
!5771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5754, file: !5714, line: 99, size: 128, elements: !5772)
!5772 = !{!5773, !5774, !5775}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5771, file: !5714, line: 100, baseType: !48, size: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5771, file: !5714, line: 101, baseType: !351, size: 32, offset: 64)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5771, file: !5714, line: 102, baseType: !351, size: 32, offset: 96)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5713, file: !5714, line: 111, baseType: !5777, size: 128)
!5777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5713, file: !5714, line: 108, size: 128, elements: !5778)
!5778 = !{!5779, !5780}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5777, file: !5714, line: 109, baseType: !301, size: 64)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5777, file: !5714, line: 110, baseType: !31, size: 32, offset: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5713, file: !5714, line: 118, baseType: !5782, size: 128)
!5782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5713, file: !5714, line: 114, size: 128, elements: !5783)
!5783 = !{!5784, !5785, !5786}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5782, file: !5714, line: 115, baseType: !29, size: 64)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5782, file: !5714, line: 116, baseType: !31, size: 32, offset: 64)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5782, file: !5714, line: 117, baseType: !17, size: 32, offset: 96)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !340, file: !341, line: 1208, baseType: !5508, size: 448, offset: 17664)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !340, file: !341, line: 1215, baseType: !392, size: 64, offset: 18112)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !340, file: !341, line: 1217, baseType: !392, size: 64, offset: 18176)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !340, file: !341, line: 1219, baseType: !392, size: 64, offset: 18240)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !340, file: !341, line: 1223, baseType: !5792, size: 64, offset: 18304)
!5792 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5793, line: 99, baseType: !5794)
!5793 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5793, line: 99, size: 64, elements: !5795)
!5795 = !{!5796}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5794, file: !5793, line: 99, baseType: !591, size: 64)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !340, file: !341, line: 1225, baseType: !1192, size: 32, offset: 18368)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !340, file: !341, line: 1226, baseType: !31, size: 32, offset: 18400)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !340, file: !341, line: 1227, baseType: !31, size: 32, offset: 18432)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !340, file: !341, line: 1231, baseType: !4247, size: 64, offset: 18496)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !340, file: !341, line: 1233, baseType: !106, size: 128, offset: 18560)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !340, file: !341, line: 1240, baseType: !5803, size: 64, offset: 18688)
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !341, line: 62, flags: DIFlagFwdDecl)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !340, file: !341, line: 1242, baseType: !5806, size: 64, offset: 18752)
!5806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5807, size: 64)
!5807 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !341, line: 1242, flags: DIFlagFwdDecl)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !340, file: !341, line: 1244, baseType: !106, size: 128, offset: 18816)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !340, file: !341, line: 1245, baseType: !5810, size: 64, offset: 18944)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !341, line: 51, flags: DIFlagFwdDecl)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !340, file: !341, line: 1246, baseType: !696, size: 256, offset: 19008)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !340, file: !341, line: 1247, baseType: !17, size: 32, offset: 19264)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !340, file: !341, line: 1250, baseType: !3511, size: 64, offset: 19328)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !340, file: !341, line: 1251, baseType: !696, size: 256, offset: 19392)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !340, file: !341, line: 1252, baseType: !106, size: 128, offset: 19648)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !340, file: !341, line: 1259, baseType: !1794, size: 64, offset: 19776)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !340, file: !341, line: 1260, baseType: !900, size: 16, offset: 19840)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !340, file: !341, line: 1261, baseType: !900, size: 16, offset: 19856)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !340, file: !341, line: 1314, baseType: !5821, size: 64, offset: 19904)
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5823, line: 62, size: 256, align: 256, elements: !5824)
!5823 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5824 = !{!5825, !5826, !5827, !5828, !5829, !5830, !5831}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5822, file: !5823, line: 75, baseType: !351, size: 32)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5822, file: !5823, line: 90, baseType: !351, size: 32, offset: 32)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5822, file: !5823, line: 112, baseType: !393, size: 64, offset: 64)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5822, file: !5823, line: 132, baseType: !351, size: 32, offset: 128)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5822, file: !5823, line: 140, baseType: !351, size: 32, offset: 160)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5822, file: !5823, line: 149, baseType: !351, size: 32, offset: 192)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5822, file: !5823, line: 154, baseType: !5832, offset: 224)
!5832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1083)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !340, file: !341, line: 1315, baseType: !350, size: 32, offset: 19968)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !340, file: !341, line: 1316, baseType: !350, size: 32, offset: 20000)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !340, file: !341, line: 1321, baseType: !48, size: 64, offset: 20032)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !340, file: !341, line: 1325, baseType: !31, size: 32, offset: 20096)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !340, file: !341, line: 1326, baseType: !31, size: 32, offset: 20128)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !340, file: !341, line: 1327, baseType: !31, size: 32, offset: 20160)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !340, file: !341, line: 1328, baseType: !31, size: 32, offset: 20192)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !340, file: !341, line: 1329, baseType: !676, size: 128, align: 64, offset: 20224)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !340, file: !341, line: 1332, baseType: !5842, size: 128, offset: 20352)
!5842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5843, line: 51, size: 128, elements: !5844)
!5843 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5844 = !{!5845, !5850, !5851}
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5842, file: !5843, line: 60, baseType: !5846, size: 64)
!5846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5847, line: 7, size: 64, elements: !5848)
!5847 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5848 = !{!5849}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5846, file: !5847, line: 12, baseType: !588, size: 64)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5842, file: !5843, line: 63, baseType: !852, size: 8, offset: 64)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5842, file: !5843, line: 70, baseType: !852, size: 8, offset: 72)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !340, file: !341, line: 1335, baseType: !2794, size: 64, offset: 20480)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !340, file: !341, line: 1337, baseType: !5854, size: 128, offset: 20544)
!5854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5843, line: 39, size: 128, elements: !5855)
!5855 = !{!5856, !5857, !5858}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5854, file: !5843, line: 40, baseType: !1592, size: 64)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5854, file: !5843, line: 42, baseType: !351, size: 32, offset: 64)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5854, file: !5843, line: 43, baseType: !351, size: 32, offset: 96)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !340, file: !341, line: 1340, baseType: !5860, size: 64, offset: 20672)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !341, line: 69, flags: DIFlagFwdDecl)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !340, file: !341, line: 1351, baseType: !31, size: 32, offset: 20736)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !340, file: !341, line: 1352, baseType: !31, size: 32, offset: 20768)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !340, file: !341, line: 1354, baseType: !48, size: 64, offset: 20800)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !340, file: !341, line: 1364, baseType: !392, size: 64, offset: 20864)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !340, file: !341, line: 1365, baseType: !392, size: 64, offset: 20928)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !340, file: !341, line: 1412, baseType: !48, size: 64, offset: 20992)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !340, file: !341, line: 1453, baseType: !5869, size: 64, offset: 21056)
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5870, size: 64)
!5870 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !341, line: 1453, flags: DIFlagFwdDecl)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !340, file: !341, line: 1457, baseType: !5872, size: 64, offset: 21120)
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !271, line: 61, size: 576, elements: !5874)
!5874 = !{!5875, !5876, !5895, !5898, !5899, !5932, !5942}
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5873, file: !271, line: 62, baseType: !270, size: 32)
!5876 = !DIDerivedType(tag: DW_TAG_member, scope: !5873, file: !271, line: 64, baseType: !5877, size: 192, offset: 64)
!5877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5873, file: !271, line: 64, size: 192, elements: !5878)
!5878 = !{!5879, !5890}
!5879 = !DIDerivedType(tag: DW_TAG_member, scope: !5877, file: !271, line: 65, baseType: !5880, size: 192)
!5880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5877, file: !271, line: 65, size: 192, elements: !5881)
!5881 = !{!5882, !5889}
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5880, file: !271, line: 66, baseType: !5883, size: 128)
!5883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5884, line: 50, size: 128, elements: !5885)
!5884 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5885 = !{!5886, !5887, !5888}
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5883, file: !5884, line: 52, baseType: !48, size: 64)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5883, file: !5884, line: 54, baseType: !17, size: 32, offset: 64)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5883, file: !5884, line: 55, baseType: !17, size: 32, offset: 96)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5880, file: !271, line: 67, baseType: !48, size: 64, offset: 128)
!5890 = !DIDerivedType(tag: DW_TAG_member, scope: !5877, file: !271, line: 70, baseType: !5891, size: 192)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5877, file: !271, line: 70, size: 192, elements: !5892)
!5892 = !{!5893, !5894}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5891, file: !271, line: 71, baseType: !676, size: 128, align: 64)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5891, file: !271, line: 72, baseType: !48, size: 64, offset: 128)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5873, file: !271, line: 76, baseType: !5896, size: 64, offset: 256)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !271, line: 76, flags: DIFlagFwdDecl)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5873, file: !271, line: 77, baseType: !48, size: 64, offset: 320)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5873, file: !271, line: 79, baseType: !5900, size: 64, offset: 384)
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5884, line: 25, size: 256, elements: !5902)
!5902 = !{!5903, !5909, !5913}
!5903 = !DIDerivedType(tag: DW_TAG_member, scope: !5901, file: !5884, line: 26, baseType: !5904, size: 128)
!5904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5901, file: !5884, line: 26, size: 128, elements: !5905)
!5905 = !{!5906, !5908}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5904, file: !5884, line: 27, baseType: !5907, size: 128)
!5907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !2748)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5904, file: !5884, line: 28, baseType: !5907, size: 128)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5901, file: !5884, line: 31, baseType: !5910, size: 64, offset: 128)
!5910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5911, size: 64)
!5911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5912)
!5912 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5884, line: 23, flags: DIFlagFwdDecl)
!5913 = !DIDerivedType(tag: DW_TAG_member, scope: !5901, file: !5884, line: 33, baseType: !5914, size: 64, offset: 192)
!5914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5901, file: !5884, line: 33, size: 64, elements: !5915)
!5915 = !{!5916, !5922, !5927}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5914, file: !5884, line: 38, baseType: !5917, size: 64)
!5917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5914, file: !5884, line: 34, size: 64, elements: !5918)
!5918 = !{!5919, !5920, !5921}
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5917, file: !5884, line: 35, baseType: !864, size: 32)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5917, file: !5884, line: 36, baseType: !92, size: 8, offset: 32)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5917, file: !5884, line: 37, baseType: !92, size: 8, offset: 40)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5914, file: !5884, line: 42, baseType: !5923, size: 16)
!5923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5914, file: !5884, line: 39, size: 16, elements: !5924)
!5924 = !{!5925, !5926}
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5923, file: !5884, line: 40, baseType: !92, size: 8)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5923, file: !5884, line: 41, baseType: !92, size: 8, offset: 8)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5914, file: !5884, line: 46, baseType: !5928, size: 16)
!5928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5914, file: !5884, line: 43, size: 16, elements: !5929)
!5929 = !{!5930, !5931}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5928, file: !5884, line: 44, baseType: !92, size: 8)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5928, file: !5884, line: 45, baseType: !92, size: 8, offset: 8)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5873, file: !271, line: 81, baseType: !5933, size: 64, offset: 448)
!5933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !271, line: 85, size: 384, elements: !5935)
!5935 = !{!5936, !5937, !5938, !5939, !5940, !5941}
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5934, file: !271, line: 86, baseType: !5896, size: 64)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5934, file: !271, line: 87, baseType: !48, size: 64, offset: 64)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5934, file: !271, line: 88, baseType: !48, size: 64, offset: 128)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5934, file: !271, line: 89, baseType: !48, size: 64, offset: 192)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5934, file: !271, line: 90, baseType: !852, size: 8, offset: 256)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5934, file: !271, line: 92, baseType: !5933, size: 64, offset: 320)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5873, file: !271, line: 82, baseType: !17, size: 32, offset: 512)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !340, file: !341, line: 1463, baseType: !5944, offset: 21184)
!5944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !341, line: 739, elements: !661)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !340, file: !341, line: 1470, baseType: !676, size: 128, align: 64, offset: 21184)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !340, file: !341, line: 1471, baseType: !356, size: 32, offset: 21312)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !340, file: !341, line: 1472, baseType: !31, size: 32, offset: 21344)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !340, file: !341, line: 1474, baseType: !339, size: 64, offset: 21376)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !340, file: !341, line: 1475, baseType: !2510, size: 320, offset: 21440)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !340, file: !341, line: 1478, baseType: !5951, size: 64, offset: 21760)
!5951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5952, size: 64)
!5952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5953, line: 49, size: 512, elements: !5954)
!5953 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5954 = !{!5955, !5956, !5957, !5958, !5959, !5960, !5961, !5962, !5964}
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5952, file: !5953, line: 50, baseType: !5951, size: 64)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5952, file: !5953, line: 51, baseType: !29, size: 64, offset: 64)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5952, file: !5953, line: 52, baseType: !48, size: 64, offset: 128)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5952, file: !5953, line: 53, baseType: !48, size: 64, offset: 192)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5952, file: !5953, line: 54, baseType: !1968, size: 64, offset: 256)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5952, file: !5953, line: 56, baseType: !17, size: 32, offset: 320)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5952, file: !5953, line: 58, baseType: !17, size: 32, offset: 352)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5952, file: !5953, line: 59, baseType: !5963, size: 64, offset: 384)
!5963 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !34, line: 159, baseType: !392)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5952, file: !5953, line: 60, baseType: !2097, size: 64, offset: 448)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !340, file: !341, line: 1482, baseType: !356, size: 32, offset: 21824)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !340, file: !341, line: 1489, baseType: !29, size: 64, offset: 21888)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !340, file: !341, line: 1504, baseType: !29, size: 64, offset: 21952)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !340, file: !341, line: 1505, baseType: !393, size: 64, offset: 22016)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !340, file: !341, line: 1506, baseType: !392, size: 64, offset: 22080)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !340, file: !341, line: 1507, baseType: !393, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !340, file: !341, line: 1508, baseType: !393, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !340, file: !341, line: 1509, baseType: !393, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !340, file: !341, line: 1510, baseType: !676, size: 128, align: 64, offset: 22208)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !340, file: !341, line: 1511, baseType: !31, size: 32, offset: 22336)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !340, file: !341, line: 1515, baseType: !5976, size: 64, offset: 22400)
!5976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !318, line: 56, size: 64, elements: !5977)
!5977 = !{!5978}
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5976, file: !318, line: 57, baseType: !321, size: 64)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !340, file: !341, line: 1518, baseType: !5976, size: 64, offset: 22464)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !340, file: !341, line: 1528, baseType: !676, size: 128, align: 64, offset: 22528)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !340, file: !341, line: 1552, baseType: !5982, size: 35328, offset: 23040)
!5982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5983, line: 430, size: 35328, elements: !5984)
!5983 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5984 = !{!5985, !6003, !6004, !6005, !6006, !6007, !6008, !6009, !6010, !6012, !6013, !6014, !6015, !6016, !6017, !6020, !6021, !6022, !6023}
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5982, file: !5983, line: 432, baseType: !5986, size: 192)
!5986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5987, size: 192, elements: !732)
!5987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5988, line: 16, size: 64, elements: !5989)
!5988 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5989 = !{!5990, !5991, !5992, !5993, !5994, !5995, !5996, !5997, !5998, !5999, !6000, !6001, !6002}
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5987, file: !5988, line: 17, baseType: !102, size: 16)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5987, file: !5988, line: 18, baseType: !102, size: 16, offset: 16)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5987, file: !5988, line: 19, baseType: !102, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5987, file: !5988, line: 19, baseType: !102, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5987, file: !5988, line: 19, baseType: !102, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5987, file: !5988, line: 19, baseType: !102, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5987, file: !5988, line: 19, baseType: !102, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5987, file: !5988, line: 20, baseType: !102, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5987, file: !5988, line: 20, baseType: !102, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5987, file: !5988, line: 20, baseType: !102, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5987, file: !5988, line: 20, baseType: !102, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5987, file: !5988, line: 20, baseType: !102, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5987, file: !5988, line: 20, baseType: !102, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5982, file: !5983, line: 436, baseType: !48, size: 64, offset: 192)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5982, file: !5983, line: 440, baseType: !35, size: 16, offset: 256)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5982, file: !5983, line: 441, baseType: !35, size: 16, offset: 272)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5982, file: !5983, line: 442, baseType: !35, size: 16, offset: 288)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5982, file: !5983, line: 443, baseType: !35, size: 16, offset: 304)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5982, file: !5983, line: 447, baseType: !48, size: 64, offset: 320)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5982, file: !5983, line: 448, baseType: !48, size: 64, offset: 384)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5982, file: !5983, line: 459, baseType: !6011, size: 256, offset: 448)
!6011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2986, size: 256, elements: !753)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5982, file: !5983, line: 461, baseType: !48, size: 64, offset: 704)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5982, file: !5983, line: 463, baseType: !48, size: 64, offset: 768)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5982, file: !5983, line: 465, baseType: !48, size: 64, offset: 832)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5982, file: !5983, line: 466, baseType: !48, size: 64, offset: 896)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5982, file: !5983, line: 467, baseType: !48, size: 64, offset: 960)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5982, file: !5983, line: 473, baseType: !6018, size: 64, offset: 1024)
!6018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6019, size: 64)
!6019 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5983, line: 10, flags: DIFlagFwdDecl)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5982, file: !5983, line: 480, baseType: !48, size: 64, offset: 1088)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5982, file: !5983, line: 482, baseType: !17, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5982, file: !5983, line: 491, baseType: !350, size: 32, offset: 1184)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5982, file: !5983, line: 501, baseType: !6024, size: 33792, offset: 1536)
!6024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !6025, line: 448, size: 33792, elements: !6026)
!6025 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!6026 = !{!6027, !6028, !6029, !6137, !6138, !6144, !6145}
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !6024, file: !6025, line: 461, baseType: !17, size: 32)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !6024, file: !6025, line: 468, baseType: !48, size: 64, offset: 64)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !6024, file: !6025, line: 476, baseType: !6030, size: 64, offset: 128)
!6030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6031, size: 64)
!6031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !6025, line: 356, size: 33280, align: 512, elements: !6032)
!6032 = !{!6033, !6034, !6035, !6036, !6037, !6038, !6039, !6040, !6041, !6042}
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6031, file: !6025, line: 358, baseType: !17, size: 32)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !6031, file: !6025, line: 361, baseType: !17, size: 32, offset: 32)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6031, file: !6025, line: 364, baseType: !392, size: 64, offset: 64)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !6031, file: !6025, line: 367, baseType: !392, size: 64, offset: 128)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !6031, file: !6025, line: 370, baseType: !392, size: 64, offset: 192)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !6031, file: !6025, line: 373, baseType: !17, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !6031, file: !6025, line: 376, baseType: !17, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !6031, file: !6025, line: 391, baseType: !17, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !6031, file: !6025, line: 394, baseType: !17, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6031, file: !6025, line: 397, baseType: !6043, size: 32768, offset: 512)
!6043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !6025, line: 348, size: 32768, elements: !6044)
!6044 = !{!6045, !6060, !6097, !6122, !6135}
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !6043, file: !6025, line: 349, baseType: !6046, size: 896)
!6046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !6025, line: 12, size: 896, elements: !6047)
!6047 = !{!6048, !6049, !6050, !6051, !6052, !6053, !6054, !6055, !6059}
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6046, file: !6025, line: 13, baseType: !350, size: 32)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6046, file: !6025, line: 14, baseType: !350, size: 32, offset: 32)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6046, file: !6025, line: 15, baseType: !350, size: 32, offset: 64)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6046, file: !6025, line: 16, baseType: !350, size: 32, offset: 96)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6046, file: !6025, line: 17, baseType: !350, size: 32, offset: 128)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6046, file: !6025, line: 18, baseType: !350, size: 32, offset: 160)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6046, file: !6025, line: 19, baseType: !350, size: 32, offset: 192)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6046, file: !6025, line: 22, baseType: !6056, size: 640, offset: 224)
!6056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 640, elements: !6057)
!6057 = !{!6058}
!6058 = !DISubrange(count: 20)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6046, file: !6025, line: 25, baseType: !350, size: 32, offset: 864)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !6043, file: !6025, line: 350, baseType: !6061, size: 4096, align: 128)
!6061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !6025, line: 34, size: 4096, align: 128, elements: !6062)
!6062 = !{!6063, !6064, !6065, !6066, !6067, !6082, !6083, !6084, !6086, !6088, !6092}
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6061, file: !6025, line: 35, baseType: !102, size: 16)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6061, file: !6025, line: 36, baseType: !102, size: 16, offset: 16)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6061, file: !6025, line: 37, baseType: !102, size: 16, offset: 32)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !6061, file: !6025, line: 38, baseType: !102, size: 16, offset: 48)
!6067 = !DIDerivedType(tag: DW_TAG_member, scope: !6061, file: !6025, line: 39, baseType: !6068, size: 128, offset: 64)
!6068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6061, file: !6025, line: 39, size: 128, elements: !6069)
!6069 = !{!6070, !6075}
!6070 = !DIDerivedType(tag: DW_TAG_member, scope: !6068, file: !6025, line: 40, baseType: !6071, size: 128)
!6071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6068, file: !6025, line: 40, size: 128, elements: !6072)
!6072 = !{!6073, !6074}
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6071, file: !6025, line: 41, baseType: !392, size: 64)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6071, file: !6025, line: 42, baseType: !392, size: 64, offset: 64)
!6075 = !DIDerivedType(tag: DW_TAG_member, scope: !6068, file: !6025, line: 44, baseType: !6076, size: 128)
!6076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6068, file: !6025, line: 44, size: 128, elements: !6077)
!6077 = !{!6078, !6079, !6080, !6081}
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6076, file: !6025, line: 45, baseType: !350, size: 32)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6076, file: !6025, line: 46, baseType: !350, size: 32, offset: 32)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6076, file: !6025, line: 47, baseType: !350, size: 32, offset: 64)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6076, file: !6025, line: 48, baseType: !350, size: 32, offset: 96)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !6061, file: !6025, line: 51, baseType: !350, size: 32, offset: 192)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !6061, file: !6025, line: 52, baseType: !350, size: 32, offset: 224)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6061, file: !6025, line: 55, baseType: !6085, size: 1024, offset: 256)
!6085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 1024, elements: !2832)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !6061, file: !6025, line: 58, baseType: !6087, size: 2048, offset: 1280)
!6087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 2048, elements: !1511)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6061, file: !6025, line: 60, baseType: !6089, size: 384, offset: 3328)
!6089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 384, elements: !6090)
!6090 = !{!6091}
!6091 = !DISubrange(count: 12)
!6092 = !DIDerivedType(tag: DW_TAG_member, scope: !6061, file: !6025, line: 62, baseType: !6093, size: 384, offset: 3712)
!6093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6061, file: !6025, line: 62, size: 384, elements: !6094)
!6094 = !{!6095, !6096}
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6093, file: !6025, line: 63, baseType: !6089, size: 384)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6093, file: !6025, line: 64, baseType: !6089, size: 384)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !6043, file: !6025, line: 351, baseType: !6098, size: 1088)
!6098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !6025, line: 79, size: 1088, elements: !6099)
!6099 = !{!6100, !6101, !6102, !6103, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6121}
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6098, file: !6025, line: 80, baseType: !350, size: 32)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6098, file: !6025, line: 81, baseType: !350, size: 32, offset: 32)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6098, file: !6025, line: 82, baseType: !350, size: 32, offset: 64)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6098, file: !6025, line: 83, baseType: !350, size: 32, offset: 96)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6098, file: !6025, line: 84, baseType: !350, size: 32, offset: 128)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6098, file: !6025, line: 85, baseType: !350, size: 32, offset: 160)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6098, file: !6025, line: 86, baseType: !350, size: 32, offset: 192)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6098, file: !6025, line: 88, baseType: !6056, size: 640, offset: 224)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6098, file: !6025, line: 89, baseType: !92, size: 8, offset: 864)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6098, file: !6025, line: 90, baseType: !92, size: 8, offset: 872)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6098, file: !6025, line: 91, baseType: !92, size: 8, offset: 880)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6098, file: !6025, line: 92, baseType: !92, size: 8, offset: 888)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6098, file: !6025, line: 93, baseType: !92, size: 8, offset: 896)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6098, file: !6025, line: 94, baseType: !92, size: 8, offset: 904)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6098, file: !6025, line: 95, baseType: !6115, size: 64, offset: 960)
!6115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6116, size: 64)
!6116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6117, line: 11, size: 128, elements: !6118)
!6117 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6118 = !{!6119, !6120}
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6116, file: !6117, line: 12, baseType: !301, size: 64)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6116, file: !6117, line: 13, baseType: !4021, size: 64, offset: 64)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6098, file: !6025, line: 96, baseType: !350, size: 32, offset: 1024)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !6043, file: !6025, line: 352, baseType: !6123, size: 4608, align: 512)
!6123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !6025, line: 333, size: 4608, align: 512, elements: !6124)
!6124 = !{!6125, !6126, !6133}
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6123, file: !6025, line: 334, baseType: !6061, size: 4096, align: 128)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6123, file: !6025, line: 335, baseType: !6127, size: 512, offset: 4096)
!6127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !6025, line: 312, size: 512, elements: !6128)
!6128 = !{!6129, !6130, !6131}
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6127, file: !6025, line: 313, baseType: !392, size: 64)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6127, file: !6025, line: 314, baseType: !392, size: 64, offset: 64)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6127, file: !6025, line: 315, baseType: !6132, size: 384, offset: 128)
!6132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 384, elements: !918)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6123, file: !6025, line: 336, baseType: !6134, offset: 4608)
!6134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, elements: !1083)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !6043, file: !6025, line: 353, baseType: !6136, size: 32768)
!6136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32768, elements: !2934)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !6024, file: !6025, line: 484, baseType: !6030, size: 64, offset: 192)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6024, file: !6025, line: 491, baseType: !6139, size: 128, offset: 256)
!6139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !6025, line: 404, size: 128, elements: !6140)
!6140 = !{!6141, !6142, !6143}
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6139, file: !6025, line: 424, baseType: !392, size: 64)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6139, file: !6025, line: 432, baseType: !17, size: 32, offset: 64)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6139, file: !6025, line: 440, baseType: !17, size: 32, offset: 96)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !6024, file: !6025, line: 498, baseType: !6139, size: 128, offset: 384)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !6024, file: !6025, line: 508, baseType: !6031, size: 33280, align: 512, offset: 512)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !303, file: !304, line: 81, baseType: !6147, size: 16384, offset: 320)
!6147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6148, size: 16384, elements: !6160)
!6148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6149, size: 64)
!6149 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "upper_chunk", file: !304, line: 73, size: 16384, elements: !6150)
!6150 = !{!6151, !6152}
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6149, file: !304, line: 74, baseType: !6148, size: 64)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6149, file: !304, line: 75, baseType: !6153, size: 16384)
!6153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6154, size: 16384, elements: !6160)
!6154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6155, size: 64)
!6155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "lower_chunk", file: !304, line: 68, size: 16384, elements: !6156)
!6156 = !{!6157, !6158}
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6155, file: !304, line: 69, baseType: !6154, size: 64)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6155, file: !304, line: 70, baseType: !6159, size: 16384)
!6159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16384, elements: !6160)
!6160 = !{!6161}
!6161 = !DISubrange(count: 256)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "upper_list", scope: !303, file: !304, line: 82, baseType: !6148, size: 64, offset: 16704)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "lower_list", scope: !303, file: !304, line: 83, baseType: !6154, size: 64, offset: 16768)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "free_upper_chunks", scope: !303, file: !304, line: 84, baseType: !31, size: 32, offset: 16832)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "free_lower_chunks", scope: !303, file: !304, line: 85, baseType: !31, size: 32, offset: 16864)
!6166 = !{!0, !7}
!6167 = !{i32 7, !"Dwarf Version", i32 5}
!6168 = !{i32 2, !"Debug Info Version", i32 3}
!6169 = !{i32 1, !"wchar_size", i32 2}
!6170 = !{i32 8, !"cf-protection-branch", i32 1}
!6171 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6172 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6173 = !{i32 1, !"Code Model", i32 2}
!6174 = !{i32 1, !"override-stack-alignment", i32 8}
!6175 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6176 = distinct !DISubprogram(name: "trace_pid_list_is_set", scope: !2, file: !2, line: 129, type: !6177, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6179)
!6177 = !DISubroutineType(types: !6178)
!6178 = !{!852, !302, !17}
!6179 = !{!6180, !6181, !6182, !6183, !6184, !6185, !6186, !6187, !6188, !6189, !6192, !6193, !6196}
!6180 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6176, file: !2, line: 129, type: !302)
!6181 = !DILocalVariable(name: "pid", arg: 2, scope: !6176, file: !2, line: 129, type: !17)
!6182 = !DILocalVariable(name: "upper_chunk", scope: !6176, file: !2, line: 131, type: !6148)
!6183 = !DILocalVariable(name: "lower_chunk", scope: !6176, file: !2, line: 132, type: !6154)
!6184 = !DILocalVariable(name: "flags", scope: !6176, file: !2, line: 133, type: !48)
!6185 = !DILocalVariable(name: "upper1", scope: !6176, file: !2, line: 134, type: !17)
!6186 = !DILocalVariable(name: "upper2", scope: !6176, file: !2, line: 135, type: !17)
!6187 = !DILocalVariable(name: "lower", scope: !6176, file: !2, line: 136, type: !17)
!6188 = !DILocalVariable(name: "ret", scope: !6176, file: !2, line: 137, type: !852)
!6189 = !DILocalVariable(name: "__dummy", scope: !6190, file: !2, line: 145, type: !48)
!6190 = distinct !DILexicalBlock(scope: !6191, file: !2, line: 145, column: 2)
!6191 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 145, column: 2)
!6192 = !DILocalVariable(name: "__dummy2", scope: !6190, file: !2, line: 145, type: !48)
!6193 = !DILocalVariable(name: "__dummy", scope: !6194, file: !2, line: 152, type: !48)
!6194 = distinct !DILexicalBlock(scope: !6195, file: !2, line: 152, column: 2)
!6195 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 152, column: 2)
!6196 = !DILocalVariable(name: "__dummy2", scope: !6194, file: !2, line: 152, type: !48)
!6197 = !DILocation(line: 129, column: 51, scope: !6176)
!6198 = !DILocation(line: 129, column: 74, scope: !6176)
!6199 = !DILocation(line: 131, column: 2, scope: !6176)
!6200 = !DILocation(line: 131, column: 21, scope: !6176)
!6201 = !DILocation(line: 132, column: 2, scope: !6176)
!6202 = !DILocation(line: 132, column: 21, scope: !6176)
!6203 = !DILocation(line: 133, column: 2, scope: !6176)
!6204 = !DILocation(line: 133, column: 16, scope: !6176)
!6205 = !DILocation(line: 134, column: 2, scope: !6176)
!6206 = !DILocation(line: 134, column: 15, scope: !6176)
!6207 = !DILocation(line: 135, column: 2, scope: !6176)
!6208 = !DILocation(line: 135, column: 15, scope: !6176)
!6209 = !DILocation(line: 136, column: 2, scope: !6176)
!6210 = !DILocation(line: 136, column: 15, scope: !6176)
!6211 = !DILocation(line: 137, column: 2, scope: !6176)
!6212 = !DILocation(line: 137, column: 7, scope: !6176)
!6213 = !DILocation(line: 139, column: 7, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 139, column: 6)
!6215 = !DILocation(line: 139, column: 6, scope: !6176)
!6216 = !DILocation(line: 140, column: 3, scope: !6214)
!6217 = !DILocation(line: 142, column: 16, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 142, column: 6)
!6219 = !DILocation(line: 142, column: 6, scope: !6218)
!6220 = !DILocation(line: 142, column: 47, scope: !6218)
!6221 = !DILocation(line: 142, column: 6, scope: !6176)
!6222 = !DILocation(line: 143, column: 3, scope: !6218)
!6223 = !DILocation(line: 145, column: 2, scope: !6176)
!6224 = !DILocation(line: 145, column: 2, scope: !6190)
!6225 = !DILocation(line: 145, column: 2, scope: !6191)
!6226 = !DILocation(line: 146, column: 16, scope: !6176)
!6227 = !DILocation(line: 146, column: 26, scope: !6176)
!6228 = !DILocation(line: 146, column: 32, scope: !6176)
!6229 = !DILocation(line: 146, column: 14, scope: !6176)
!6230 = !DILocation(line: 147, column: 6, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6176, file: !2, line: 147, column: 6)
!6232 = !DILocation(line: 147, column: 6, scope: !6176)
!6233 = !DILocation(line: 148, column: 17, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6231, file: !2, line: 147, column: 19)
!6235 = !DILocation(line: 148, column: 35, scope: !6234)
!6236 = !DILocation(line: 148, column: 15, scope: !6234)
!6237 = !DILocation(line: 149, column: 7, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6234, file: !2, line: 149, column: 7)
!6239 = !DILocation(line: 149, column: 7, scope: !6234)
!6240 = !DILocation(line: 150, column: 10, scope: !6238)
!6241 = !DILocation(line: 150, column: 8, scope: !6238)
!6242 = !DILocation(line: 150, column: 4, scope: !6238)
!6243 = !DILocation(line: 151, column: 2, scope: !6234)
!6244 = !DILocation(line: 152, column: 2, scope: !6176)
!6245 = !DILocation(line: 152, column: 2, scope: !6194)
!6246 = !DILocation(line: 152, column: 2, scope: !6195)
!6247 = !DILocation(line: 154, column: 9, scope: !6176)
!6248 = !{i8 0, i8 2}
!6249 = !DILocation(line: 154, column: 2, scope: !6176)
!6250 = !DILocation(line: 155, column: 1, scope: !6176)
!6251 = distinct !DISubprogram(name: "pid_split", scope: !2, file: !2, line: 93, type: !6252, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6254)
!6252 = !DISubroutineType(types: !6253)
!6253 = !{!31, !17, !2361, !2361, !2361}
!6254 = !{!6255, !6256, !6257, !6258}
!6255 = !DILocalVariable(name: "pid", arg: 1, scope: !6251, file: !2, line: 93, type: !17)
!6256 = !DILocalVariable(name: "upper1", arg: 2, scope: !6251, file: !2, line: 93, type: !2361)
!6257 = !DILocalVariable(name: "upper2", arg: 3, scope: !6251, file: !2, line: 94, type: !2361)
!6258 = !DILocalVariable(name: "lower", arg: 4, scope: !6251, file: !2, line: 94, type: !2361)
!6259 = !DILocation(line: 93, column: 42, scope: !6251)
!6260 = !DILocation(line: 93, column: 61, scope: !6251)
!6261 = !DILocation(line: 94, column: 23, scope: !6251)
!6262 = !DILocation(line: 94, column: 45, scope: !6251)
!6263 = !DILocation(line: 97, column: 2, scope: !6251)
!6264 = !DILocation(line: 97, column: 2, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 97, column: 2)
!6266 = !DILocation(line: 100, column: 6, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 100, column: 6)
!6268 = !DILocation(line: 100, column: 6, scope: !6251)
!6269 = !DILocation(line: 101, column: 3, scope: !6267)
!6270 = !DILocation(line: 103, column: 13, scope: !6251)
!6271 = !DILocation(line: 103, column: 17, scope: !6251)
!6272 = !DILocation(line: 103, column: 34, scope: !6251)
!6273 = !DILocation(line: 103, column: 3, scope: !6251)
!6274 = !DILocation(line: 103, column: 10, scope: !6251)
!6275 = !DILocation(line: 104, column: 13, scope: !6251)
!6276 = !DILocation(line: 104, column: 17, scope: !6251)
!6277 = !DILocation(line: 104, column: 34, scope: !6251)
!6278 = !DILocation(line: 104, column: 3, scope: !6251)
!6279 = !DILocation(line: 104, column: 10, scope: !6251)
!6280 = !DILocation(line: 105, column: 11, scope: !6251)
!6281 = !DILocation(line: 105, column: 15, scope: !6251)
!6282 = !DILocation(line: 105, column: 3, scope: !6251)
!6283 = !DILocation(line: 105, column: 9, scope: !6251)
!6284 = !DILocation(line: 107, column: 2, scope: !6251)
!6285 = !DILocation(line: 108, column: 1, scope: !6251)
!6286 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6287, file: !6287, line: 32, type: !6288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6287 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6288 = !DISubroutineType(types: !6289)
!6289 = !{!48, !6290}
!6290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!6291 = distinct !DISubprogram(name: "const_test_bit", scope: !6292, file: !6292, line: 166, type: !6293, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6298)
!6292 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6293 = !DISubroutineType(types: !6294)
!6294 = !{!852, !48, !6295}
!6295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6296, size: 64)
!6296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6297)
!6297 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!6298 = !{!6299, !6300, !6301, !6302, !6303}
!6299 = !DILocalVariable(name: "nr", arg: 1, scope: !6291, file: !6292, line: 166, type: !48)
!6300 = !DILocalVariable(name: "addr", arg: 2, scope: !6291, file: !6292, line: 166, type: !6295)
!6301 = !DILocalVariable(name: "p", scope: !6291, file: !6292, line: 168, type: !293)
!6302 = !DILocalVariable(name: "mask", scope: !6291, file: !6292, line: 169, type: !48)
!6303 = !DILocalVariable(name: "val", scope: !6291, file: !6292, line: 170, type: !48)
!6304 = !DILocation(line: 166, column: 30, scope: !6291)
!6305 = !DILocation(line: 166, column: 64, scope: !6291)
!6306 = !DILocation(line: 168, column: 2, scope: !6291)
!6307 = !DILocation(line: 168, column: 23, scope: !6291)
!6308 = !DILocation(line: 168, column: 50, scope: !6291)
!6309 = !DILocation(line: 168, column: 57, scope: !6291)
!6310 = !DILocation(line: 168, column: 55, scope: !6291)
!6311 = !DILocation(line: 169, column: 2, scope: !6291)
!6312 = !DILocation(line: 169, column: 16, scope: !6291)
!6313 = !DILocation(line: 169, column: 23, scope: !6291)
!6314 = !DILocation(line: 170, column: 2, scope: !6291)
!6315 = !DILocation(line: 170, column: 16, scope: !6291)
!6316 = !DILocation(line: 170, column: 23, scope: !6291)
!6317 = !DILocation(line: 170, column: 22, scope: !6291)
!6318 = !DILocation(line: 172, column: 12, scope: !6291)
!6319 = !DILocation(line: 172, column: 18, scope: !6291)
!6320 = !DILocation(line: 172, column: 16, scope: !6291)
!6321 = !DILocation(line: 172, column: 10, scope: !6291)
!6322 = !DILocation(line: 172, column: 9, scope: !6291)
!6323 = !DILocation(line: 173, column: 1, scope: !6291)
!6324 = !DILocation(line: 172, column: 2, scope: !6291)
!6325 = distinct !DISubprogram(name: "_test_bit", scope: !6326, file: !6326, line: 139, type: !6293, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6327)
!6326 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6327 = !{!6328, !6329}
!6328 = !DILocalVariable(name: "nr", arg: 1, scope: !6325, file: !6326, line: 139, type: !48)
!6329 = !DILocalVariable(name: "addr", arg: 2, scope: !6325, file: !6326, line: 139, type: !6295)
!6330 = !DILocation(line: 139, column: 25, scope: !6325)
!6331 = !DILocation(line: 139, column: 59, scope: !6325)
!6332 = !DILocation(line: 141, column: 25, scope: !6325)
!6333 = !DILocation(line: 141, column: 32, scope: !6325)
!6334 = !DILocation(line: 141, column: 30, scope: !6325)
!6335 = !DILocation(line: 141, column: 2, scope: !6325)
!6336 = !DILocation(line: 142, column: 23, scope: !6325)
!6337 = !DILocation(line: 142, column: 27, scope: !6325)
!6338 = !DILocation(line: 142, column: 9, scope: !6325)
!6339 = !DILocation(line: 142, column: 2, scope: !6325)
!6340 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6287, file: !6287, line: 43, type: !6341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6341 = !DISubroutineType(types: !6342)
!6342 = !{null, !6290, !48}
!6343 = distinct !DISubprogram(name: "trace_pid_list_set", scope: !2, file: !2, line: 168, type: !6344, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6346)
!6344 = !DISubroutineType(types: !6345)
!6345 = !{!31, !302, !17}
!6346 = !{!6347, !6348, !6349, !6350, !6351, !6352, !6353, !6354, !6355, !6356, !6359, !6360, !6361, !6364}
!6347 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6343, file: !2, line: 168, type: !302)
!6348 = !DILocalVariable(name: "pid", arg: 2, scope: !6343, file: !2, line: 168, type: !17)
!6349 = !DILocalVariable(name: "upper_chunk", scope: !6343, file: !2, line: 170, type: !6148)
!6350 = !DILocalVariable(name: "lower_chunk", scope: !6343, file: !2, line: 171, type: !6154)
!6351 = !DILocalVariable(name: "flags", scope: !6343, file: !2, line: 172, type: !48)
!6352 = !DILocalVariable(name: "upper1", scope: !6343, file: !2, line: 173, type: !17)
!6353 = !DILocalVariable(name: "upper2", scope: !6343, file: !2, line: 174, type: !17)
!6354 = !DILocalVariable(name: "lower", scope: !6343, file: !2, line: 175, type: !17)
!6355 = !DILocalVariable(name: "ret", scope: !6343, file: !2, line: 176, type: !31)
!6356 = !DILocalVariable(name: "__dummy", scope: !6357, file: !2, line: 184, type: !48)
!6357 = distinct !DILexicalBlock(scope: !6358, file: !2, line: 184, column: 2)
!6358 = distinct !DILexicalBlock(scope: !6343, file: !2, line: 184, column: 2)
!6359 = !DILocalVariable(name: "__dummy2", scope: !6357, file: !2, line: 184, type: !48)
!6360 = !DILabel(scope: !6343, name: "out", file: !2, line: 205)
!6361 = !DILocalVariable(name: "__dummy", scope: !6362, file: !2, line: 206, type: !48)
!6362 = distinct !DILexicalBlock(scope: !6363, file: !2, line: 206, column: 2)
!6363 = distinct !DILexicalBlock(scope: !6343, file: !2, line: 206, column: 2)
!6364 = !DILocalVariable(name: "__dummy2", scope: !6362, file: !2, line: 206, type: !48)
!6365 = !DILocation(line: 168, column: 47, scope: !6343)
!6366 = !DILocation(line: 168, column: 70, scope: !6343)
!6367 = !DILocation(line: 170, column: 2, scope: !6343)
!6368 = !DILocation(line: 170, column: 21, scope: !6343)
!6369 = !DILocation(line: 171, column: 2, scope: !6343)
!6370 = !DILocation(line: 171, column: 21, scope: !6343)
!6371 = !DILocation(line: 172, column: 2, scope: !6343)
!6372 = !DILocation(line: 172, column: 16, scope: !6343)
!6373 = !DILocation(line: 173, column: 2, scope: !6343)
!6374 = !DILocation(line: 173, column: 15, scope: !6343)
!6375 = !DILocation(line: 174, column: 2, scope: !6343)
!6376 = !DILocation(line: 174, column: 15, scope: !6343)
!6377 = !DILocation(line: 175, column: 2, scope: !6343)
!6378 = !DILocation(line: 175, column: 15, scope: !6343)
!6379 = !DILocation(line: 176, column: 2, scope: !6343)
!6380 = !DILocation(line: 176, column: 6, scope: !6343)
!6381 = !DILocation(line: 178, column: 7, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6343, file: !2, line: 178, column: 6)
!6383 = !DILocation(line: 178, column: 6, scope: !6343)
!6384 = !DILocation(line: 179, column: 3, scope: !6382)
!6385 = !DILocation(line: 181, column: 16, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6343, file: !2, line: 181, column: 6)
!6387 = !DILocation(line: 181, column: 6, scope: !6386)
!6388 = !DILocation(line: 181, column: 47, scope: !6386)
!6389 = !DILocation(line: 181, column: 6, scope: !6343)
!6390 = !DILocation(line: 182, column: 3, scope: !6386)
!6391 = !DILocation(line: 184, column: 2, scope: !6343)
!6392 = !DILocation(line: 184, column: 2, scope: !6357)
!6393 = !DILocation(line: 184, column: 2, scope: !6358)
!6394 = !DILocation(line: 185, column: 16, scope: !6343)
!6395 = !DILocation(line: 185, column: 26, scope: !6343)
!6396 = !DILocation(line: 185, column: 32, scope: !6343)
!6397 = !DILocation(line: 185, column: 14, scope: !6343)
!6398 = !DILocation(line: 186, column: 7, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6343, file: !2, line: 186, column: 6)
!6400 = !DILocation(line: 186, column: 6, scope: !6343)
!6401 = !DILocation(line: 187, column: 33, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6399, file: !2, line: 186, column: 20)
!6403 = !DILocation(line: 187, column: 17, scope: !6402)
!6404 = !DILocation(line: 187, column: 15, scope: !6402)
!6405 = !DILocation(line: 188, column: 8, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6402, file: !2, line: 188, column: 7)
!6407 = !DILocation(line: 188, column: 7, scope: !6402)
!6408 = !DILocation(line: 189, column: 8, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6406, file: !2, line: 188, column: 21)
!6410 = !DILocation(line: 190, column: 4, scope: !6409)
!6411 = !DILocation(line: 192, column: 29, scope: !6402)
!6412 = !DILocation(line: 192, column: 3, scope: !6402)
!6413 = !DILocation(line: 192, column: 13, scope: !6402)
!6414 = !DILocation(line: 192, column: 19, scope: !6402)
!6415 = !DILocation(line: 192, column: 27, scope: !6402)
!6416 = !DILocation(line: 193, column: 2, scope: !6402)
!6417 = !DILocation(line: 194, column: 16, scope: !6343)
!6418 = !DILocation(line: 194, column: 34, scope: !6343)
!6419 = !DILocation(line: 194, column: 14, scope: !6343)
!6420 = !DILocation(line: 195, column: 7, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6343, file: !2, line: 195, column: 6)
!6422 = !DILocation(line: 195, column: 6, scope: !6343)
!6423 = !DILocation(line: 196, column: 33, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6421, file: !2, line: 195, column: 20)
!6425 = !DILocation(line: 196, column: 17, scope: !6424)
!6426 = !DILocation(line: 196, column: 15, scope: !6424)
!6427 = !DILocation(line: 197, column: 8, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6424, file: !2, line: 197, column: 7)
!6429 = !DILocation(line: 197, column: 7, scope: !6424)
!6430 = !DILocation(line: 198, column: 8, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6428, file: !2, line: 197, column: 21)
!6432 = !DILocation(line: 199, column: 4, scope: !6431)
!6433 = !DILocation(line: 201, column: 31, scope: !6424)
!6434 = !DILocation(line: 201, column: 3, scope: !6424)
!6435 = !DILocation(line: 201, column: 21, scope: !6424)
!6436 = !DILocation(line: 201, column: 29, scope: !6424)
!6437 = !DILocation(line: 202, column: 2, scope: !6424)
!6438 = !DILocation(line: 203, column: 10, scope: !6343)
!6439 = !DILocation(line: 203, column: 17, scope: !6343)
!6440 = !DILocation(line: 203, column: 2, scope: !6343)
!6441 = !DILocation(line: 204, column: 6, scope: !6343)
!6442 = !DILocation(line: 204, column: 2, scope: !6343)
!6443 = !DILocation(line: 205, column: 2, scope: !6343)
!6444 = !DILocation(line: 206, column: 2, scope: !6343)
!6445 = !DILocation(line: 206, column: 2, scope: !6362)
!6446 = !DILocation(line: 206, column: 2, scope: !6363)
!6447 = !DILocation(line: 207, column: 9, scope: !6343)
!6448 = !DILocation(line: 207, column: 2, scope: !6343)
!6449 = !DILocation(line: 208, column: 1, scope: !6343)
!6450 = distinct !DISubprogram(name: "get_upper_chunk", scope: !2, file: !2, line: 36, type: !6451, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6453)
!6451 = !DISubroutineType(types: !6452)
!6452 = !{!6148, !302}
!6453 = !{!6454, !6455, !6456, !6458}
!6454 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6450, file: !2, line: 36, type: !302)
!6455 = !DILocalVariable(name: "chunk", scope: !6450, file: !2, line: 38, type: !6148)
!6456 = !DILocalVariable(name: "__ret_warn_on", scope: !6457, file: !2, line: 48, type: !31)
!6457 = distinct !DILexicalBlock(scope: !6450, file: !2, line: 48, column: 2)
!6458 = !DILocalVariable(name: "__flags", scope: !6459, file: !2, line: 48, type: !31)
!6459 = distinct !DILexicalBlock(scope: !6460, file: !2, line: 48, column: 2)
!6460 = distinct !DILexicalBlock(scope: !6457, file: !2, line: 48, column: 2)
!6461 = !DILocation(line: 36, column: 73, scope: !6450)
!6462 = !DILocation(line: 38, column: 2, scope: !6450)
!6463 = !DILocation(line: 38, column: 21, scope: !6450)
!6464 = !DILocation(line: 40, column: 2, scope: !6450)
!6465 = !DILocation(line: 40, column: 2, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6450, file: !2, line: 40, column: 2)
!6467 = !DILocation(line: 42, column: 7, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6450, file: !2, line: 42, column: 6)
!6469 = !DILocation(line: 42, column: 17, scope: !6468)
!6470 = !DILocation(line: 42, column: 6, scope: !6450)
!6471 = !DILocation(line: 43, column: 3, scope: !6468)
!6472 = !DILocation(line: 45, column: 10, scope: !6450)
!6473 = !DILocation(line: 45, column: 20, scope: !6450)
!6474 = !DILocation(line: 45, column: 8, scope: !6450)
!6475 = !DILocation(line: 46, column: 25, scope: !6450)
!6476 = !DILocation(line: 46, column: 32, scope: !6450)
!6477 = !DILocation(line: 46, column: 2, scope: !6450)
!6478 = !DILocation(line: 46, column: 12, scope: !6450)
!6479 = !DILocation(line: 46, column: 23, scope: !6450)
!6480 = !DILocation(line: 47, column: 2, scope: !6450)
!6481 = !DILocation(line: 47, column: 12, scope: !6450)
!6482 = !DILocation(line: 47, column: 29, scope: !6450)
!6483 = !DILocation(line: 48, column: 2, scope: !6457)
!6484 = !DILocation(line: 48, column: 2, scope: !6460)
!6485 = !DILocation(line: 48, column: 2, scope: !6459)
!6486 = !DILocation(line: 48, column: 2, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6459, file: !2, line: 48, column: 2)
!6488 = !DILocation(line: 48, column: 2, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6459, file: !2, line: 48, column: 2)
!6490 = !{i64 2155812492, i64 2155812521, i64 2155812567, i64 2155812625, i64 2155812679, i64 2155812733, i64 2155812788, i64 2155812819, i64 2155813127, i64 2155813133, i64 2155813180, i64 2155813203, i64 2155813229}
!6491 = !DILocation(line: 48, column: 2, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6459, file: !2, line: 48, column: 2)
!6493 = !DILocation(line: 48, column: 2, scope: !6450)
!6494 = !DILocation(line: 49, column: 2, scope: !6450)
!6495 = !DILocation(line: 49, column: 14, scope: !6450)
!6496 = !DILocation(line: 54, column: 6, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6450, file: !2, line: 54, column: 6)
!6498 = !DILocation(line: 54, column: 16, scope: !6497)
!6499 = !DILocation(line: 54, column: 34, scope: !6497)
!6500 = !DILocation(line: 54, column: 6, scope: !6450)
!6501 = !DILocation(line: 55, column: 19, scope: !6497)
!6502 = !DILocation(line: 55, column: 29, scope: !6497)
!6503 = !DILocation(line: 55, column: 3, scope: !6497)
!6504 = !DILocation(line: 57, column: 9, scope: !6450)
!6505 = !DILocation(line: 57, column: 2, scope: !6450)
!6506 = !DILocation(line: 58, column: 1, scope: !6450)
!6507 = distinct !DISubprogram(name: "get_lower_chunk", scope: !2, file: !2, line: 12, type: !6508, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6510)
!6508 = !DISubroutineType(types: !6509)
!6509 = !{!6154, !302}
!6510 = !{!6511, !6512, !6513, !6515}
!6511 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6507, file: !2, line: 12, type: !302)
!6512 = !DILocalVariable(name: "chunk", scope: !6507, file: !2, line: 14, type: !6154)
!6513 = !DILocalVariable(name: "__ret_warn_on", scope: !6514, file: !2, line: 24, type: !31)
!6514 = distinct !DILexicalBlock(scope: !6507, file: !2, line: 24, column: 2)
!6515 = !DILocalVariable(name: "__flags", scope: !6516, file: !2, line: 24, type: !31)
!6516 = distinct !DILexicalBlock(scope: !6517, file: !2, line: 24, column: 2)
!6517 = distinct !DILexicalBlock(scope: !6514, file: !2, line: 24, column: 2)
!6518 = !DILocation(line: 12, column: 73, scope: !6507)
!6519 = !DILocation(line: 14, column: 2, scope: !6507)
!6520 = !DILocation(line: 14, column: 21, scope: !6507)
!6521 = !DILocation(line: 16, column: 2, scope: !6507)
!6522 = !DILocation(line: 16, column: 2, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6507, file: !2, line: 16, column: 2)
!6524 = !DILocation(line: 18, column: 7, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6507, file: !2, line: 18, column: 6)
!6526 = !DILocation(line: 18, column: 17, scope: !6525)
!6527 = !DILocation(line: 18, column: 6, scope: !6507)
!6528 = !DILocation(line: 19, column: 3, scope: !6525)
!6529 = !DILocation(line: 21, column: 10, scope: !6507)
!6530 = !DILocation(line: 21, column: 20, scope: !6507)
!6531 = !DILocation(line: 21, column: 8, scope: !6507)
!6532 = !DILocation(line: 22, column: 25, scope: !6507)
!6533 = !DILocation(line: 22, column: 32, scope: !6507)
!6534 = !DILocation(line: 22, column: 2, scope: !6507)
!6535 = !DILocation(line: 22, column: 12, scope: !6507)
!6536 = !DILocation(line: 22, column: 23, scope: !6507)
!6537 = !DILocation(line: 23, column: 2, scope: !6507)
!6538 = !DILocation(line: 23, column: 12, scope: !6507)
!6539 = !DILocation(line: 23, column: 29, scope: !6507)
!6540 = !DILocation(line: 24, column: 2, scope: !6514)
!6541 = !DILocation(line: 24, column: 2, scope: !6517)
!6542 = !DILocation(line: 24, column: 2, scope: !6516)
!6543 = !DILocation(line: 24, column: 2, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6516, file: !2, line: 24, column: 2)
!6545 = !DILocation(line: 24, column: 2, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6516, file: !2, line: 24, column: 2)
!6547 = !{i64 2155810712, i64 2155810741, i64 2155810787, i64 2155810845, i64 2155810899, i64 2155810953, i64 2155811008, i64 2155811039, i64 2155811347, i64 2155811353, i64 2155811400, i64 2155811423, i64 2155811449}
!6548 = !DILocation(line: 24, column: 2, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6516, file: !2, line: 24, column: 2)
!6550 = !DILocation(line: 24, column: 2, scope: !6507)
!6551 = !DILocation(line: 25, column: 2, scope: !6507)
!6552 = !DILocation(line: 25, column: 14, scope: !6507)
!6553 = !DILocation(line: 30, column: 6, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6507, file: !2, line: 30, column: 6)
!6555 = !DILocation(line: 30, column: 16, scope: !6554)
!6556 = !DILocation(line: 30, column: 34, scope: !6554)
!6557 = !DILocation(line: 30, column: 6, scope: !6507)
!6558 = !DILocation(line: 31, column: 19, scope: !6554)
!6559 = !DILocation(line: 31, column: 29, scope: !6554)
!6560 = !DILocation(line: 31, column: 3, scope: !6554)
!6561 = !DILocation(line: 33, column: 9, scope: !6507)
!6562 = !DILocation(line: 33, column: 2, scope: !6507)
!6563 = !DILocation(line: 34, column: 1, scope: !6507)
!6564 = distinct !DISubprogram(name: "set_bit", scope: !6565, file: !6565, line: 26, type: !6566, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6569)
!6565 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6566 = !DISubroutineType(types: !6567)
!6567 = !{null, !301, !6568}
!6568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6297, size: 64)
!6569 = !{!6570, !6571}
!6570 = !DILocalVariable(name: "nr", arg: 1, scope: !6564, file: !6565, line: 26, type: !301)
!6571 = !DILocalVariable(name: "addr", arg: 2, scope: !6564, file: !6565, line: 26, type: !6568)
!6572 = !DILocation(line: 26, column: 42, scope: !6564)
!6573 = !DILocation(line: 26, column: 70, scope: !6564)
!6574 = !DILocation(line: 28, column: 26, scope: !6564)
!6575 = !DILocation(line: 28, column: 33, scope: !6564)
!6576 = !DILocation(line: 28, column: 31, scope: !6564)
!6577 = !DILocation(line: 28, column: 2, scope: !6564)
!6578 = !DILocation(line: 29, column: 15, scope: !6564)
!6579 = !DILocation(line: 29, column: 19, scope: !6564)
!6580 = !DILocation(line: 29, column: 2, scope: !6564)
!6581 = !DILocation(line: 30, column: 1, scope: !6564)
!6582 = distinct !DISubprogram(name: "trace_pid_list_clear", scope: !2, file: !2, line: 221, type: !6344, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6583)
!6583 = !{!6584, !6585, !6586, !6587, !6588, !6589, !6590, !6591, !6592, !6595, !6596, !6597, !6600}
!6584 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6582, file: !2, line: 221, type: !302)
!6585 = !DILocalVariable(name: "pid", arg: 2, scope: !6582, file: !2, line: 221, type: !17)
!6586 = !DILocalVariable(name: "upper_chunk", scope: !6582, file: !2, line: 223, type: !6148)
!6587 = !DILocalVariable(name: "lower_chunk", scope: !6582, file: !2, line: 224, type: !6154)
!6588 = !DILocalVariable(name: "flags", scope: !6582, file: !2, line: 225, type: !48)
!6589 = !DILocalVariable(name: "upper1", scope: !6582, file: !2, line: 226, type: !17)
!6590 = !DILocalVariable(name: "upper2", scope: !6582, file: !2, line: 227, type: !17)
!6591 = !DILocalVariable(name: "lower", scope: !6582, file: !2, line: 228, type: !17)
!6592 = !DILocalVariable(name: "__dummy", scope: !6593, file: !2, line: 236, type: !48)
!6593 = distinct !DILexicalBlock(scope: !6594, file: !2, line: 236, column: 2)
!6594 = distinct !DILexicalBlock(scope: !6582, file: !2, line: 236, column: 2)
!6595 = !DILocalVariable(name: "__dummy2", scope: !6593, file: !2, line: 236, type: !48)
!6596 = !DILabel(scope: !6582, name: "out", file: !2, line: 256)
!6597 = !DILocalVariable(name: "__dummy", scope: !6598, file: !2, line: 257, type: !48)
!6598 = distinct !DILexicalBlock(scope: !6599, file: !2, line: 257, column: 2)
!6599 = distinct !DILexicalBlock(scope: !6582, file: !2, line: 257, column: 2)
!6600 = !DILocalVariable(name: "__dummy2", scope: !6598, file: !2, line: 257, type: !48)
!6601 = !DILocation(line: 221, column: 49, scope: !6582)
!6602 = !DILocation(line: 221, column: 72, scope: !6582)
!6603 = !DILocation(line: 223, column: 2, scope: !6582)
!6604 = !DILocation(line: 223, column: 21, scope: !6582)
!6605 = !DILocation(line: 224, column: 2, scope: !6582)
!6606 = !DILocation(line: 224, column: 21, scope: !6582)
!6607 = !DILocation(line: 225, column: 2, scope: !6582)
!6608 = !DILocation(line: 225, column: 16, scope: !6582)
!6609 = !DILocation(line: 226, column: 2, scope: !6582)
!6610 = !DILocation(line: 226, column: 15, scope: !6582)
!6611 = !DILocation(line: 227, column: 2, scope: !6582)
!6612 = !DILocation(line: 227, column: 15, scope: !6582)
!6613 = !DILocation(line: 228, column: 2, scope: !6582)
!6614 = !DILocation(line: 228, column: 15, scope: !6582)
!6615 = !DILocation(line: 230, column: 7, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6582, file: !2, line: 230, column: 6)
!6617 = !DILocation(line: 230, column: 6, scope: !6582)
!6618 = !DILocation(line: 231, column: 3, scope: !6616)
!6619 = !DILocation(line: 233, column: 16, scope: !6620)
!6620 = distinct !DILexicalBlock(scope: !6582, file: !2, line: 233, column: 6)
!6621 = !DILocation(line: 233, column: 6, scope: !6620)
!6622 = !DILocation(line: 233, column: 47, scope: !6620)
!6623 = !DILocation(line: 233, column: 6, scope: !6582)
!6624 = !DILocation(line: 234, column: 3, scope: !6620)
!6625 = !DILocation(line: 236, column: 2, scope: !6582)
!6626 = !DILocation(line: 236, column: 2, scope: !6593)
!6627 = !DILocation(line: 236, column: 2, scope: !6594)
!6628 = !DILocation(line: 237, column: 16, scope: !6582)
!6629 = !DILocation(line: 237, column: 26, scope: !6582)
!6630 = !DILocation(line: 237, column: 32, scope: !6582)
!6631 = !DILocation(line: 237, column: 14, scope: !6582)
!6632 = !DILocation(line: 238, column: 7, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6582, file: !2, line: 238, column: 6)
!6634 = !DILocation(line: 238, column: 6, scope: !6582)
!6635 = !DILocation(line: 239, column: 3, scope: !6633)
!6636 = !DILocation(line: 241, column: 16, scope: !6582)
!6637 = !DILocation(line: 241, column: 34, scope: !6582)
!6638 = !DILocation(line: 241, column: 14, scope: !6582)
!6639 = !DILocation(line: 242, column: 7, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6582, file: !2, line: 242, column: 6)
!6641 = !DILocation(line: 242, column: 6, scope: !6582)
!6642 = !DILocation(line: 243, column: 3, scope: !6640)
!6643 = !DILocation(line: 245, column: 12, scope: !6582)
!6644 = !DILocation(line: 245, column: 19, scope: !6582)
!6645 = !DILocation(line: 245, column: 2, scope: !6582)
!6646 = !DILocation(line: 248, column: 21, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6582, file: !2, line: 248, column: 6)
!6648 = !DILocation(line: 248, column: 6, scope: !6647)
!6649 = !DILocation(line: 248, column: 51, scope: !6647)
!6650 = !DILocation(line: 248, column: 6, scope: !6582)
!6651 = !DILocation(line: 249, column: 19, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6647, file: !2, line: 248, column: 65)
!6653 = !DILocation(line: 249, column: 29, scope: !6652)
!6654 = !DILocation(line: 249, column: 3, scope: !6652)
!6655 = !DILocation(line: 250, column: 3, scope: !6652)
!6656 = !DILocation(line: 250, column: 21, scope: !6652)
!6657 = !DILocation(line: 250, column: 29, scope: !6652)
!6658 = !DILocation(line: 251, column: 19, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6652, file: !2, line: 251, column: 7)
!6660 = !DILocation(line: 251, column: 7, scope: !6659)
!6661 = !DILocation(line: 251, column: 7, scope: !6652)
!6662 = !DILocation(line: 252, column: 20, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6659, file: !2, line: 251, column: 33)
!6664 = !DILocation(line: 252, column: 30, scope: !6663)
!6665 = !DILocation(line: 252, column: 4, scope: !6663)
!6666 = !DILocation(line: 253, column: 4, scope: !6663)
!6667 = !DILocation(line: 253, column: 14, scope: !6663)
!6668 = !DILocation(line: 253, column: 20, scope: !6663)
!6669 = !DILocation(line: 253, column: 28, scope: !6663)
!6670 = !DILocation(line: 254, column: 3, scope: !6663)
!6671 = !DILocation(line: 255, column: 2, scope: !6652)
!6672 = !DILocation(line: 248, column: 54, scope: !6647)
!6673 = !DILocation(line: 256, column: 2, scope: !6582)
!6674 = !DILocation(line: 257, column: 2, scope: !6582)
!6675 = !DILocation(line: 257, column: 2, scope: !6598)
!6676 = !DILocation(line: 257, column: 2, scope: !6599)
!6677 = !DILocation(line: 258, column: 2, scope: !6582)
!6678 = !DILocation(line: 259, column: 1, scope: !6582)
!6679 = distinct !DISubprogram(name: "clear_bit", scope: !6565, file: !6565, line: 39, type: !6566, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6680)
!6680 = !{!6681, !6682}
!6681 = !DILocalVariable(name: "nr", arg: 1, scope: !6679, file: !6565, line: 39, type: !301)
!6682 = !DILocalVariable(name: "addr", arg: 2, scope: !6679, file: !6565, line: 39, type: !6568)
!6683 = !DILocation(line: 39, column: 44, scope: !6679)
!6684 = !DILocation(line: 39, column: 72, scope: !6679)
!6685 = !DILocation(line: 41, column: 26, scope: !6679)
!6686 = !DILocation(line: 41, column: 33, scope: !6679)
!6687 = !DILocation(line: 41, column: 31, scope: !6679)
!6688 = !DILocation(line: 41, column: 2, scope: !6679)
!6689 = !DILocation(line: 42, column: 17, scope: !6679)
!6690 = !DILocation(line: 42, column: 21, scope: !6679)
!6691 = !DILocation(line: 42, column: 2, scope: !6679)
!6692 = !DILocation(line: 43, column: 1, scope: !6679)
!6693 = distinct !DISubprogram(name: "find_first_bit", scope: !6694, file: !6694, line: 200, type: !6695, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6697)
!6694 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6695 = !DISubroutineType(types: !6696)
!6696 = !{!48, !293, !48}
!6697 = !{!6698, !6699, !6700}
!6698 = !DILocalVariable(name: "addr", arg: 1, scope: !6693, file: !6694, line: 200, type: !293)
!6699 = !DILocalVariable(name: "size", arg: 2, scope: !6693, file: !6694, line: 200, type: !48)
!6700 = !DILocalVariable(name: "val", scope: !6701, file: !6694, line: 203, type: !48)
!6701 = distinct !DILexicalBlock(scope: !6702, file: !6694, line: 202, column: 31)
!6702 = distinct !DILexicalBlock(scope: !6693, file: !6694, line: 202, column: 6)
!6703 = !DILocation(line: 200, column: 51, scope: !6693)
!6704 = !DILocation(line: 200, column: 71, scope: !6693)
!6705 = !DILocation(line: 202, column: 6, scope: !6702)
!6706 = !DILocation(line: 202, column: 6, scope: !6693)
!6707 = !DILocation(line: 203, column: 3, scope: !6701)
!6708 = !DILocation(line: 203, column: 17, scope: !6701)
!6709 = !DILocation(line: 203, column: 24, scope: !6701)
!6710 = !DILocation(line: 203, column: 23, scope: !6701)
!6711 = !DILocation(line: 203, column: 31, scope: !6701)
!6712 = !DILocation(line: 203, column: 29, scope: !6701)
!6713 = !DILocation(line: 205, column: 10, scope: !6701)
!6714 = !DILocation(line: 205, column: 16, scope: !6701)
!6715 = !DILocation(line: 205, column: 29, scope: !6701)
!6716 = !DILocation(line: 205, column: 3, scope: !6701)
!6717 = !DILocation(line: 206, column: 2, scope: !6702)
!6718 = !DILocation(line: 208, column: 25, scope: !6693)
!6719 = !DILocation(line: 208, column: 31, scope: !6693)
!6720 = !DILocation(line: 208, column: 9, scope: !6693)
!6721 = !DILocation(line: 208, column: 2, scope: !6693)
!6722 = !DILocation(line: 209, column: 1, scope: !6693)
!6723 = distinct !DISubprogram(name: "put_lower_chunk", scope: !2, file: !2, line: 60, type: !6724, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6726)
!6724 = !DISubroutineType(types: !6725)
!6725 = !{null, !302, !6154}
!6726 = !{!6727, !6728}
!6727 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6723, file: !2, line: 60, type: !302)
!6728 = !DILocalVariable(name: "chunk", arg: 2, scope: !6723, file: !2, line: 61, type: !6154)
!6729 = !DILocation(line: 60, column: 59, scope: !6723)
!6730 = !DILocation(line: 61, column: 27, scope: !6723)
!6731 = !DILocation(line: 63, column: 2, scope: !6723)
!6732 = !DILocation(line: 63, column: 2, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6723, file: !2, line: 63, column: 2)
!6734 = !DILocation(line: 65, column: 16, scope: !6723)
!6735 = !DILocation(line: 65, column: 26, scope: !6723)
!6736 = !DILocation(line: 65, column: 2, scope: !6723)
!6737 = !DILocation(line: 65, column: 14, scope: !6723)
!6738 = !DILocation(line: 66, column: 25, scope: !6723)
!6739 = !DILocation(line: 66, column: 2, scope: !6723)
!6740 = !DILocation(line: 66, column: 12, scope: !6723)
!6741 = !DILocation(line: 66, column: 23, scope: !6723)
!6742 = !DILocation(line: 67, column: 2, scope: !6723)
!6743 = !DILocation(line: 67, column: 12, scope: !6723)
!6744 = !DILocation(line: 67, column: 29, scope: !6723)
!6745 = !DILocation(line: 68, column: 1, scope: !6723)
!6746 = distinct !DISubprogram(name: "upper_empty", scope: !2, file: !2, line: 80, type: !6747, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6749)
!6747 = !DISubroutineType(types: !6748)
!6748 = !{!852, !6148}
!6749 = !{!6750, !6751}
!6750 = !DILocalVariable(name: "chunk", arg: 1, scope: !6746, file: !2, line: 80, type: !6148)
!6751 = !DILocalVariable(name: "bit", scope: !6746, file: !2, line: 88, type: !31)
!6752 = !DILocation(line: 80, column: 51, scope: !6746)
!6753 = !DILocation(line: 88, column: 2, scope: !6746)
!6754 = !DILocation(line: 88, column: 6, scope: !6746)
!6755 = !DILocation(line: 88, column: 44, scope: !6746)
!6756 = !DILocation(line: 88, column: 12, scope: !6746)
!6757 = !DILocation(line: 90, column: 9, scope: !6746)
!6758 = !DILocation(line: 90, column: 13, scope: !6746)
!6759 = !DILocation(line: 91, column: 1, scope: !6746)
!6760 = !DILocation(line: 90, column: 2, scope: !6746)
!6761 = distinct !DISubprogram(name: "put_upper_chunk", scope: !2, file: !2, line: 70, type: !6762, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6764)
!6762 = !DISubroutineType(types: !6763)
!6763 = !{null, !302, !6148}
!6764 = !{!6765, !6766}
!6765 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6761, file: !2, line: 70, type: !302)
!6766 = !DILocalVariable(name: "chunk", arg: 2, scope: !6761, file: !2, line: 71, type: !6148)
!6767 = !DILocation(line: 70, column: 59, scope: !6761)
!6768 = !DILocation(line: 71, column: 27, scope: !6761)
!6769 = !DILocation(line: 73, column: 2, scope: !6761)
!6770 = !DILocation(line: 73, column: 2, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6761, file: !2, line: 73, column: 2)
!6772 = !DILocation(line: 75, column: 16, scope: !6761)
!6773 = !DILocation(line: 75, column: 26, scope: !6761)
!6774 = !DILocation(line: 75, column: 2, scope: !6761)
!6775 = !DILocation(line: 75, column: 14, scope: !6761)
!6776 = !DILocation(line: 76, column: 25, scope: !6761)
!6777 = !DILocation(line: 76, column: 2, scope: !6761)
!6778 = !DILocation(line: 76, column: 12, scope: !6761)
!6779 = !DILocation(line: 76, column: 23, scope: !6761)
!6780 = !DILocation(line: 77, column: 2, scope: !6761)
!6781 = !DILocation(line: 77, column: 12, scope: !6761)
!6782 = !DILocation(line: 77, column: 29, scope: !6761)
!6783 = !DILocation(line: 78, column: 1, scope: !6761)
!6784 = distinct !DISubprogram(name: "trace_pid_list_next", scope: !2, file: !2, line: 273, type: !6785, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6787)
!6785 = !DISubroutineType(types: !6786)
!6786 = !{!31, !302, !17, !2361}
!6787 = !{!6788, !6789, !6790, !6791, !6792, !6793, !6794, !6795, !6796, !6797, !6800, !6801, !6802, !6805}
!6788 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6784, file: !2, line: 273, type: !302)
!6789 = !DILocalVariable(name: "pid", arg: 2, scope: !6784, file: !2, line: 273, type: !17)
!6790 = !DILocalVariable(name: "next", arg: 3, scope: !6784, file: !2, line: 274, type: !2361)
!6791 = !DILocalVariable(name: "upper_chunk", scope: !6784, file: !2, line: 276, type: !6148)
!6792 = !DILocalVariable(name: "lower_chunk", scope: !6784, file: !2, line: 277, type: !6154)
!6793 = !DILocalVariable(name: "flags", scope: !6784, file: !2, line: 278, type: !48)
!6794 = !DILocalVariable(name: "upper1", scope: !6784, file: !2, line: 279, type: !17)
!6795 = !DILocalVariable(name: "upper2", scope: !6784, file: !2, line: 280, type: !17)
!6796 = !DILocalVariable(name: "lower", scope: !6784, file: !2, line: 281, type: !17)
!6797 = !DILocalVariable(name: "__dummy", scope: !6798, file: !2, line: 289, type: !48)
!6798 = distinct !DILexicalBlock(scope: !6799, file: !2, line: 289, column: 2)
!6799 = distinct !DILexicalBlock(scope: !6784, file: !2, line: 289, column: 2)
!6800 = !DILocalVariable(name: "__dummy2", scope: !6798, file: !2, line: 289, type: !48)
!6801 = !DILabel(scope: !6784, name: "found", file: !2, line: 308)
!6802 = !DILocalVariable(name: "__dummy", scope: !6803, file: !2, line: 309, type: !48)
!6803 = distinct !DILexicalBlock(scope: !6804, file: !2, line: 309, column: 2)
!6804 = distinct !DILexicalBlock(scope: !6784, file: !2, line: 309, column: 2)
!6805 = !DILocalVariable(name: "__dummy2", scope: !6803, file: !2, line: 309, type: !48)
!6806 = !DILocation(line: 273, column: 48, scope: !6784)
!6807 = !DILocation(line: 273, column: 71, scope: !6784)
!6808 = !DILocation(line: 274, column: 18, scope: !6784)
!6809 = !DILocation(line: 276, column: 2, scope: !6784)
!6810 = !DILocation(line: 276, column: 21, scope: !6784)
!6811 = !DILocation(line: 277, column: 2, scope: !6784)
!6812 = !DILocation(line: 277, column: 21, scope: !6784)
!6813 = !DILocation(line: 278, column: 2, scope: !6784)
!6814 = !DILocation(line: 278, column: 16, scope: !6784)
!6815 = !DILocation(line: 279, column: 2, scope: !6784)
!6816 = !DILocation(line: 279, column: 15, scope: !6784)
!6817 = !DILocation(line: 280, column: 2, scope: !6784)
!6818 = !DILocation(line: 280, column: 15, scope: !6784)
!6819 = !DILocation(line: 281, column: 2, scope: !6784)
!6820 = !DILocation(line: 281, column: 15, scope: !6784)
!6821 = !DILocation(line: 283, column: 7, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6784, file: !2, line: 283, column: 6)
!6823 = !DILocation(line: 283, column: 6, scope: !6784)
!6824 = !DILocation(line: 284, column: 3, scope: !6822)
!6825 = !DILocation(line: 286, column: 16, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6784, file: !2, line: 286, column: 6)
!6827 = !DILocation(line: 286, column: 6, scope: !6826)
!6828 = !DILocation(line: 286, column: 47, scope: !6826)
!6829 = !DILocation(line: 286, column: 6, scope: !6784)
!6830 = !DILocation(line: 287, column: 3, scope: !6826)
!6831 = !DILocation(line: 289, column: 2, scope: !6784)
!6832 = !DILocation(line: 289, column: 2, scope: !6798)
!6833 = !DILocation(line: 289, column: 2, scope: !6799)
!6834 = !DILocation(line: 290, column: 2, scope: !6784)
!6835 = !DILocation(line: 290, column: 9, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6837, file: !2, line: 290, column: 2)
!6837 = distinct !DILexicalBlock(scope: !6784, file: !2, line: 290, column: 2)
!6838 = !DILocation(line: 290, column: 16, scope: !6836)
!6839 = !DILocation(line: 290, column: 2, scope: !6837)
!6840 = !DILocation(line: 291, column: 17, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6836, file: !2, line: 290, column: 53)
!6842 = !DILocation(line: 291, column: 27, scope: !6841)
!6843 = !DILocation(line: 291, column: 33, scope: !6841)
!6844 = !DILocation(line: 291, column: 15, scope: !6841)
!6845 = !DILocation(line: 293, column: 8, scope: !6846)
!6846 = distinct !DILexicalBlock(scope: !6841, file: !2, line: 293, column: 7)
!6847 = !DILocation(line: 293, column: 7, scope: !6841)
!6848 = !DILocation(line: 294, column: 4, scope: !6846)
!6849 = !DILocation(line: 296, column: 3, scope: !6841)
!6850 = !DILocation(line: 296, column: 10, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6852, file: !2, line: 296, column: 3)
!6852 = distinct !DILexicalBlock(scope: !6841, file: !2, line: 296, column: 3)
!6853 = !DILocation(line: 296, column: 17, scope: !6851)
!6854 = !DILocation(line: 296, column: 3, scope: !6852)
!6855 = !DILocation(line: 297, column: 18, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6851, file: !2, line: 296, column: 53)
!6857 = !DILocation(line: 297, column: 36, scope: !6856)
!6858 = !DILocation(line: 297, column: 16, scope: !6856)
!6859 = !DILocation(line: 298, column: 9, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !6856, file: !2, line: 298, column: 8)
!6861 = !DILocation(line: 298, column: 8, scope: !6856)
!6862 = !DILocation(line: 299, column: 5, scope: !6860)
!6863 = !DILocation(line: 301, column: 26, scope: !6856)
!6864 = !DILocation(line: 302, column: 10, scope: !6856)
!6865 = !DILocation(line: 301, column: 12, scope: !6856)
!6866 = !DILocation(line: 301, column: 10, scope: !6856)
!6867 = !DILocation(line: 303, column: 8, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6856, file: !2, line: 303, column: 8)
!6869 = !DILocation(line: 303, column: 14, scope: !6868)
!6870 = !DILocation(line: 303, column: 8, scope: !6856)
!6871 = !DILocation(line: 304, column: 5, scope: !6868)
!6872 = !DILocation(line: 305, column: 3, scope: !6856)
!6873 = !DILocation(line: 296, column: 38, scope: !6851)
!6874 = !DILocation(line: 296, column: 48, scope: !6851)
!6875 = !DILocation(line: 296, column: 3, scope: !6851)
!6876 = distinct !{!6876, !6854, !6877, !6878, !6879}
!6877 = !DILocation(line: 305, column: 3, scope: !6852)
!6878 = !{!"llvm.loop.mustprogress"}
!6879 = !{!"llvm.loop.unroll.disable"}
!6880 = !DILocation(line: 306, column: 2, scope: !6841)
!6881 = !DILocation(line: 290, column: 37, scope: !6836)
!6882 = !DILocation(line: 290, column: 48, scope: !6836)
!6883 = !DILocation(line: 290, column: 2, scope: !6836)
!6884 = distinct !{!6884, !6839, !6885, !6878, !6879}
!6885 = !DILocation(line: 306, column: 2, scope: !6837)
!6886 = !DILocation(line: 308, column: 2, scope: !6784)
!6887 = !DILocation(line: 309, column: 2, scope: !6784)
!6888 = !DILocation(line: 309, column: 2, scope: !6803)
!6889 = !DILocation(line: 309, column: 2, scope: !6804)
!6890 = !DILocation(line: 310, column: 6, scope: !6891)
!6891 = distinct !DILexicalBlock(scope: !6784, file: !2, line: 310, column: 6)
!6892 = !DILocation(line: 310, column: 13, scope: !6891)
!6893 = !DILocation(line: 310, column: 6, scope: !6784)
!6894 = !DILocation(line: 311, column: 3, scope: !6891)
!6895 = !DILocation(line: 313, column: 19, scope: !6784)
!6896 = !DILocation(line: 313, column: 27, scope: !6784)
!6897 = !DILocation(line: 313, column: 35, scope: !6784)
!6898 = !DILocation(line: 313, column: 10, scope: !6784)
!6899 = !DILocation(line: 313, column: 3, scope: !6784)
!6900 = !DILocation(line: 313, column: 8, scope: !6784)
!6901 = !DILocation(line: 314, column: 2, scope: !6784)
!6902 = !DILocation(line: 315, column: 1, scope: !6784)
!6903 = distinct !DISubprogram(name: "find_next_bit", scope: !6694, file: !6694, line: 54, type: !6904, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6906)
!6904 = !DISubroutineType(types: !6905)
!6905 = !{!48, !293, !48, !48}
!6906 = !{!6907, !6908, !6909, !6910}
!6907 = !DILocalVariable(name: "addr", arg: 1, scope: !6903, file: !6694, line: 54, type: !293)
!6908 = !DILocalVariable(name: "size", arg: 2, scope: !6903, file: !6694, line: 54, type: !48)
!6909 = !DILocalVariable(name: "offset", arg: 3, scope: !6903, file: !6694, line: 55, type: !48)
!6910 = !DILocalVariable(name: "val", scope: !6911, file: !6694, line: 58, type: !48)
!6911 = distinct !DILexicalBlock(scope: !6912, file: !6694, line: 57, column: 31)
!6912 = distinct !DILexicalBlock(scope: !6903, file: !6694, line: 57, column: 6)
!6913 = !DILocation(line: 54, column: 50, scope: !6903)
!6914 = !DILocation(line: 54, column: 70, scope: !6903)
!6915 = !DILocation(line: 55, column: 22, scope: !6903)
!6916 = !DILocation(line: 57, column: 6, scope: !6912)
!6917 = !DILocation(line: 57, column: 6, scope: !6903)
!6918 = !DILocation(line: 58, column: 3, scope: !6911)
!6919 = !DILocation(line: 58, column: 17, scope: !6911)
!6920 = !DILocation(line: 60, column: 7, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6911, file: !6694, line: 60, column: 7)
!6922 = !DILocation(line: 60, column: 7, scope: !6911)
!6923 = !DILocation(line: 61, column: 11, scope: !6921)
!6924 = !DILocation(line: 61, column: 4, scope: !6921)
!6925 = !DILocation(line: 63, column: 10, scope: !6911)
!6926 = !DILocation(line: 63, column: 9, scope: !6911)
!6927 = !DILocation(line: 63, column: 17, scope: !6911)
!6928 = !DILocation(line: 63, column: 15, scope: !6911)
!6929 = !DILocation(line: 63, column: 7, scope: !6911)
!6930 = !DILocation(line: 64, column: 10, scope: !6911)
!6931 = !DILocation(line: 64, column: 16, scope: !6911)
!6932 = !DILocation(line: 64, column: 29, scope: !6911)
!6933 = !DILocation(line: 64, column: 3, scope: !6911)
!6934 = !DILocation(line: 65, column: 2, scope: !6912)
!6935 = !DILocation(line: 67, column: 24, scope: !6903)
!6936 = !DILocation(line: 67, column: 30, scope: !6903)
!6937 = !DILocation(line: 67, column: 36, scope: !6903)
!6938 = !DILocation(line: 67, column: 9, scope: !6903)
!6939 = !DILocation(line: 67, column: 2, scope: !6903)
!6940 = !DILocation(line: 68, column: 1, scope: !6903)
!6941 = distinct !DISubprogram(name: "pid_join", scope: !2, file: !2, line: 110, type: !6942, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6944)
!6942 = !DISubroutineType(types: !6943)
!6943 = !{!17, !17, !17, !17}
!6944 = !{!6945, !6946, !6947}
!6945 = !DILocalVariable(name: "upper1", arg: 1, scope: !6941, file: !2, line: 110, type: !17)
!6946 = !DILocalVariable(name: "upper2", arg: 2, scope: !6941, file: !2, line: 111, type: !17)
!6947 = !DILocalVariable(name: "lower", arg: 3, scope: !6941, file: !2, line: 111, type: !17)
!6948 = !DILocation(line: 110, column: 50, scope: !6941)
!6949 = !DILocation(line: 111, column: 22, scope: !6941)
!6950 = !DILocation(line: 111, column: 43, scope: !6941)
!6951 = !DILocation(line: 113, column: 11, scope: !6941)
!6952 = !DILocation(line: 113, column: 18, scope: !6941)
!6953 = !DILocation(line: 113, column: 32, scope: !6941)
!6954 = !DILocation(line: 114, column: 5, scope: !6941)
!6955 = !DILocation(line: 114, column: 12, scope: !6941)
!6956 = !DILocation(line: 114, column: 26, scope: !6941)
!6957 = !DILocation(line: 113, column: 49, scope: !6941)
!6958 = !DILocation(line: 115, column: 4, scope: !6941)
!6959 = !DILocation(line: 115, column: 10, scope: !6941)
!6960 = !DILocation(line: 114, column: 43, scope: !6941)
!6961 = !DILocation(line: 113, column: 2, scope: !6941)
!6962 = distinct !DISubprogram(name: "trace_pid_list_first", scope: !2, file: !2, line: 327, type: !6963, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6965)
!6963 = !DISubroutineType(types: !6964)
!6964 = !{!31, !302, !2361}
!6965 = !{!6966, !6967}
!6966 = !DILocalVariable(name: "pid_list", arg: 1, scope: !6962, file: !2, line: 327, type: !302)
!6967 = !DILocalVariable(name: "pid", arg: 2, scope: !6962, file: !2, line: 327, type: !2361)
!6968 = !DILocation(line: 327, column: 49, scope: !6962)
!6969 = !DILocation(line: 327, column: 73, scope: !6962)
!6970 = !DILocation(line: 329, column: 29, scope: !6962)
!6971 = !DILocation(line: 329, column: 42, scope: !6962)
!6972 = !DILocation(line: 329, column: 9, scope: !6962)
!6973 = !DILocation(line: 329, column: 2, scope: !6962)
!6974 = distinct !DISubprogram(name: "trace_pid_list_alloc", scope: !2, file: !2, line: 411, type: !6975, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6977)
!6975 = !DISubroutineType(types: !6976)
!6976 = !{!302}
!6977 = !{!6978, !6979, !6980, !6982, !6985, !6989}
!6978 = !DILocalVariable(name: "pid_list", scope: !6974, file: !2, line: 413, type: !302)
!6979 = !DILocalVariable(name: "i", scope: !6974, file: !2, line: 414, type: !31)
!6980 = !DILocalVariable(name: "__ret_warn_on", scope: !6981, file: !2, line: 417, type: !31)
!6981 = distinct !DILexicalBlock(scope: !6974, file: !2, line: 417, column: 2)
!6982 = !DILocalVariable(name: "__flags", scope: !6983, file: !2, line: 417, type: !31)
!6983 = distinct !DILexicalBlock(scope: !6984, file: !2, line: 417, column: 2)
!6984 = distinct !DILexicalBlock(scope: !6981, file: !2, line: 417, column: 2)
!6985 = !DILocalVariable(name: "chunk", scope: !6986, file: !2, line: 428, type: !6148)
!6986 = distinct !DILexicalBlock(scope: !6987, file: !2, line: 427, column: 36)
!6987 = distinct !DILexicalBlock(scope: !6988, file: !2, line: 427, column: 2)
!6988 = distinct !DILexicalBlock(scope: !6974, file: !2, line: 427, column: 2)
!6989 = !DILocalVariable(name: "chunk", scope: !6990, file: !2, line: 439, type: !6154)
!6990 = distinct !DILexicalBlock(scope: !6991, file: !2, line: 438, column: 36)
!6991 = distinct !DILexicalBlock(scope: !6992, file: !2, line: 438, column: 2)
!6992 = distinct !DILexicalBlock(scope: !6974, file: !2, line: 438, column: 2)
!6993 = !DILocation(line: 413, column: 2, scope: !6974)
!6994 = !DILocation(line: 413, column: 25, scope: !6974)
!6995 = !DILocation(line: 414, column: 2, scope: !6974)
!6996 = !DILocation(line: 414, column: 6, scope: !6974)
!6997 = !DILocation(line: 417, column: 2, scope: !6981)
!6998 = !DILocation(line: 417, column: 2, scope: !6984)
!6999 = !DILocation(line: 417, column: 2, scope: !6983)
!7000 = !DILocation(line: 417, column: 2, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6983, file: !2, line: 417, column: 2)
!7002 = !DILocation(line: 417, column: 2, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6983, file: !2, line: 417, column: 2)
!7004 = !{i64 2155825376, i64 2155825405, i64 2155825451, i64 2155825509, i64 2155825563, i64 2155825617, i64 2155825672, i64 2155825703, i64 2155826011, i64 2155826017, i64 2155826064, i64 2155826087, i64 2155826113}
!7005 = !DILocation(line: 417, column: 2, scope: !7006)
!7006 = distinct !DILexicalBlock(scope: !6983, file: !2, line: 417, column: 2)
!7007 = !DILocation(line: 417, column: 2, scope: !6974)
!7008 = !DILocation(line: 419, column: 13, scope: !6974)
!7009 = !DILocation(line: 419, column: 11, scope: !6974)
!7010 = !DILocation(line: 420, column: 7, scope: !7011)
!7011 = distinct !DILexicalBlock(scope: !6974, file: !2, line: 420, column: 6)
!7012 = !DILocation(line: 420, column: 6, scope: !6974)
!7013 = !DILocation(line: 421, column: 3, scope: !7011)
!7014 = !DILocation(line: 423, column: 17, scope: !6974)
!7015 = !DILocation(line: 423, column: 27, scope: !6974)
!7016 = !DILocation(line: 423, column: 2, scope: !6974)
!7017 = !DILocation(line: 425, column: 2, scope: !6974)
!7018 = !DILocation(line: 425, column: 2, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !6974, file: !2, line: 425, column: 2)
!7020 = !DILocation(line: 427, column: 9, scope: !6988)
!7021 = !DILocation(line: 427, column: 7, scope: !6988)
!7022 = !DILocation(line: 427, column: 14, scope: !6987)
!7023 = !DILocation(line: 427, column: 16, scope: !6987)
!7024 = !DILocation(line: 427, column: 2, scope: !6988)
!7025 = !DILocation(line: 428, column: 3, scope: !6986)
!7026 = !DILocation(line: 428, column: 22, scope: !6986)
!7027 = !DILocation(line: 430, column: 11, scope: !6986)
!7028 = !DILocation(line: 430, column: 9, scope: !6986)
!7029 = !DILocation(line: 431, column: 8, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !6986, file: !2, line: 431, column: 7)
!7031 = !DILocation(line: 431, column: 7, scope: !6986)
!7032 = !DILocation(line: 432, column: 4, scope: !7030)
!7033 = !DILocation(line: 433, column: 17, scope: !6986)
!7034 = !DILocation(line: 433, column: 27, scope: !6986)
!7035 = !DILocation(line: 433, column: 3, scope: !6986)
!7036 = !DILocation(line: 433, column: 15, scope: !6986)
!7037 = !DILocation(line: 434, column: 26, scope: !6986)
!7038 = !DILocation(line: 434, column: 3, scope: !6986)
!7039 = !DILocation(line: 434, column: 13, scope: !6986)
!7040 = !DILocation(line: 434, column: 24, scope: !6986)
!7041 = !DILocation(line: 435, column: 3, scope: !6986)
!7042 = !DILocation(line: 435, column: 13, scope: !6986)
!7043 = !DILocation(line: 435, column: 30, scope: !6986)
!7044 = !DILocation(line: 436, column: 2, scope: !6987)
!7045 = !DILocation(line: 436, column: 2, scope: !6986)
!7046 = !DILocation(line: 427, column: 32, scope: !6987)
!7047 = !DILocation(line: 427, column: 2, scope: !6987)
!7048 = distinct !{!7048, !7024, !7049, !6878, !6879}
!7049 = !DILocation(line: 436, column: 2, scope: !6988)
!7050 = !DILocation(line: 438, column: 9, scope: !6992)
!7051 = !DILocation(line: 438, column: 7, scope: !6992)
!7052 = !DILocation(line: 438, column: 14, scope: !6991)
!7053 = !DILocation(line: 438, column: 16, scope: !6991)
!7054 = !DILocation(line: 438, column: 2, scope: !6992)
!7055 = !DILocation(line: 439, column: 3, scope: !6990)
!7056 = !DILocation(line: 439, column: 22, scope: !6990)
!7057 = !DILocation(line: 441, column: 11, scope: !6990)
!7058 = !DILocation(line: 441, column: 9, scope: !6990)
!7059 = !DILocation(line: 442, column: 8, scope: !7060)
!7060 = distinct !DILexicalBlock(scope: !6990, file: !2, line: 442, column: 7)
!7061 = !DILocation(line: 442, column: 7, scope: !6990)
!7062 = !DILocation(line: 443, column: 4, scope: !7060)
!7063 = !DILocation(line: 444, column: 17, scope: !6990)
!7064 = !DILocation(line: 444, column: 27, scope: !6990)
!7065 = !DILocation(line: 444, column: 3, scope: !6990)
!7066 = !DILocation(line: 444, column: 15, scope: !6990)
!7067 = !DILocation(line: 445, column: 26, scope: !6990)
!7068 = !DILocation(line: 445, column: 3, scope: !6990)
!7069 = !DILocation(line: 445, column: 13, scope: !6990)
!7070 = !DILocation(line: 445, column: 24, scope: !6990)
!7071 = !DILocation(line: 446, column: 3, scope: !6990)
!7072 = !DILocation(line: 446, column: 13, scope: !6990)
!7073 = !DILocation(line: 446, column: 30, scope: !6990)
!7074 = !DILocation(line: 447, column: 2, scope: !6991)
!7075 = !DILocation(line: 447, column: 2, scope: !6990)
!7076 = !DILocation(line: 438, column: 32, scope: !6991)
!7077 = !DILocation(line: 438, column: 2, scope: !6991)
!7078 = distinct !{!7078, !7054, !7079, !6878, !6879}
!7079 = !DILocation(line: 447, column: 2, scope: !6992)
!7080 = !DILocation(line: 449, column: 9, scope: !6974)
!7081 = !DILocation(line: 449, column: 2, scope: !6974)
!7082 = !DILocation(line: 450, column: 1, scope: !6974)
!7083 = distinct !DISubprogram(name: "kzalloc", scope: !9, file: !9, line: 719, type: !7084, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7086)
!7084 = !DISubroutineType(types: !7085)
!7085 = !{!29, !44, !295}
!7086 = !{!7087, !7088}
!7087 = !DILocalVariable(name: "size", arg: 1, scope: !7083, file: !9, line: 719, type: !44)
!7088 = !DILocalVariable(name: "flags", arg: 2, scope: !7083, file: !9, line: 719, type: !295)
!7089 = !DILocation(line: 719, column: 52, scope: !7083)
!7090 = !DILocation(line: 719, column: 64, scope: !7083)
!7091 = !DILocation(line: 721, column: 17, scope: !7083)
!7092 = !DILocation(line: 721, column: 23, scope: !7083)
!7093 = !DILocation(line: 721, column: 29, scope: !7083)
!7094 = !DILocation(line: 721, column: 9, scope: !7083)
!7095 = !DILocation(line: 721, column: 2, scope: !7083)
!7096 = distinct !DISubprogram(name: "init_irq_work", scope: !310, file: !310, line: 37, type: !7097, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7099)
!7097 = !DISubroutineType(types: !7098)
!7098 = !{null, !333, !330}
!7099 = !{!7100, !7101}
!7100 = !DILocalVariable(name: "work", arg: 1, scope: !7096, file: !310, line: 37, type: !333)
!7101 = !DILocalVariable(name: "func", arg: 2, scope: !7096, file: !310, line: 37, type: !330)
!7102 = !DILocation(line: 37, column: 37, scope: !7096)
!7103 = !DILocation(line: 37, column: 50, scope: !7096)
!7104 = !DILocation(line: 39, column: 3, scope: !7096)
!7105 = !DILocation(line: 39, column: 10, scope: !7096)
!7106 = !DILocation(line: 40, column: 1, scope: !7096)
!7107 = distinct !DISubprogram(name: "pid_list_refill_irq", scope: !2, file: !2, line: 332, type: !331, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7108)
!7108 = !{!7109, !7110, !7111, !7113, !7114, !7115, !7117, !7119, !7120, !7121, !7122, !7123, !7124, !7126}
!7109 = !DILocalVariable(name: "iwork", arg: 1, scope: !7107, file: !2, line: 332, type: !333)
!7110 = !DILocalVariable(name: "pid_list", scope: !7107, file: !2, line: 334, type: !302)
!7111 = !DILocalVariable(name: "__mptr", scope: !7112, file: !2, line: 334, type: !29)
!7112 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 334, column: 36)
!7113 = !DILocalVariable(name: "upper", scope: !7107, file: !2, line: 336, type: !6148)
!7114 = !DILocalVariable(name: "lower", scope: !7107, file: !2, line: 337, type: !6154)
!7115 = !DILocalVariable(name: "upper_next", scope: !7107, file: !2, line: 338, type: !7116)
!7116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6148, size: 64)
!7117 = !DILocalVariable(name: "lower_next", scope: !7107, file: !2, line: 339, type: !7118)
!7118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6154, size: 64)
!7119 = !DILocalVariable(name: "upper_count", scope: !7107, file: !2, line: 340, type: !31)
!7120 = !DILocalVariable(name: "lower_count", scope: !7107, file: !2, line: 341, type: !31)
!7121 = !DILocalVariable(name: "ucnt", scope: !7107, file: !2, line: 342, type: !31)
!7122 = !DILocalVariable(name: "lcnt", scope: !7107, file: !2, line: 343, type: !31)
!7123 = !DILabel(scope: !7107, name: "again", file: !2, line: 345)
!7124 = !DILocalVariable(name: "chunk", scope: !7125, file: !2, line: 355, type: !6148)
!7125 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 354, column: 28)
!7126 = !DILocalVariable(name: "chunk", scope: !7127, file: !2, line: 366, type: !6154)
!7127 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 365, column: 28)
!7128 = !DILocation(line: 332, column: 50, scope: !7107)
!7129 = !DILocation(line: 334, column: 2, scope: !7107)
!7130 = !DILocation(line: 334, column: 25, scope: !7107)
!7131 = !DILocation(line: 334, column: 36, scope: !7112)
!7132 = !DILocation(line: 334, column: 36, scope: !7107)
!7133 = !DILocation(line: 336, column: 2, scope: !7107)
!7134 = !DILocation(line: 336, column: 21, scope: !7107)
!7135 = !DILocation(line: 337, column: 2, scope: !7107)
!7136 = !DILocation(line: 337, column: 21, scope: !7107)
!7137 = !DILocation(line: 338, column: 2, scope: !7107)
!7138 = !DILocation(line: 338, column: 22, scope: !7107)
!7139 = !DILocation(line: 339, column: 2, scope: !7107)
!7140 = !DILocation(line: 339, column: 22, scope: !7107)
!7141 = !DILocation(line: 340, column: 2, scope: !7107)
!7142 = !DILocation(line: 340, column: 6, scope: !7107)
!7143 = !DILocation(line: 341, column: 2, scope: !7107)
!7144 = !DILocation(line: 341, column: 6, scope: !7107)
!7145 = !DILocation(line: 342, column: 2, scope: !7107)
!7146 = !DILocation(line: 342, column: 6, scope: !7107)
!7147 = !DILocation(line: 343, column: 2, scope: !7107)
!7148 = !DILocation(line: 343, column: 6, scope: !7107)
!7149 = !DILocation(line: 345, column: 2, scope: !7107)
!7150 = !DILocation(line: 346, column: 2, scope: !7107)
!7151 = !DILocation(line: 347, column: 30, scope: !7107)
!7152 = !DILocation(line: 347, column: 40, scope: !7107)
!7153 = !DILocation(line: 347, column: 28, scope: !7107)
!7154 = !DILocation(line: 347, column: 14, scope: !7107)
!7155 = !DILocation(line: 348, column: 30, scope: !7107)
!7156 = !DILocation(line: 348, column: 40, scope: !7107)
!7157 = !DILocation(line: 348, column: 28, scope: !7107)
!7158 = !DILocation(line: 348, column: 14, scope: !7107)
!7159 = !DILocation(line: 349, column: 2, scope: !7107)
!7160 = !DILocation(line: 351, column: 6, scope: !7161)
!7161 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 351, column: 6)
!7162 = !DILocation(line: 351, column: 18, scope: !7161)
!7163 = !DILocation(line: 351, column: 23, scope: !7161)
!7164 = !DILocation(line: 351, column: 26, scope: !7161)
!7165 = !DILocation(line: 351, column: 38, scope: !7161)
!7166 = !DILocation(line: 351, column: 6, scope: !7107)
!7167 = !DILocation(line: 352, column: 3, scope: !7161)
!7168 = !DILocation(line: 354, column: 2, scope: !7107)
!7169 = !DILocation(line: 354, column: 20, scope: !7107)
!7170 = !DILocation(line: 354, column: 23, scope: !7107)
!7171 = !DILocation(line: 355, column: 3, scope: !7125)
!7172 = !DILocation(line: 355, column: 22, scope: !7125)
!7173 = !DILocation(line: 357, column: 11, scope: !7125)
!7174 = !DILocation(line: 357, column: 9, scope: !7125)
!7175 = !DILocation(line: 358, column: 8, scope: !7176)
!7176 = distinct !DILexicalBlock(scope: !7125, file: !2, line: 358, column: 7)
!7177 = !DILocation(line: 358, column: 7, scope: !7125)
!7178 = !DILocation(line: 359, column: 4, scope: !7176)
!7179 = !DILocation(line: 360, column: 17, scope: !7125)
!7180 = !DILocation(line: 360, column: 4, scope: !7125)
!7181 = !DILocation(line: 360, column: 15, scope: !7125)
!7182 = !DILocation(line: 361, column: 17, scope: !7125)
!7183 = !DILocation(line: 361, column: 14, scope: !7125)
!7184 = !DILocation(line: 362, column: 7, scope: !7125)
!7185 = !DILocation(line: 363, column: 2, scope: !7107)
!7186 = distinct !{!7186, !7168, !7185, !6878, !6879}
!7187 = !DILocation(line: 365, column: 2, scope: !7107)
!7188 = !DILocation(line: 365, column: 20, scope: !7107)
!7189 = !DILocation(line: 365, column: 23, scope: !7107)
!7190 = !DILocation(line: 366, column: 3, scope: !7127)
!7191 = !DILocation(line: 366, column: 22, scope: !7127)
!7192 = !DILocation(line: 368, column: 11, scope: !7127)
!7193 = !DILocation(line: 368, column: 9, scope: !7127)
!7194 = !DILocation(line: 369, column: 8, scope: !7195)
!7195 = distinct !DILexicalBlock(scope: !7127, file: !2, line: 369, column: 7)
!7196 = !DILocation(line: 369, column: 7, scope: !7127)
!7197 = !DILocation(line: 370, column: 4, scope: !7195)
!7198 = !DILocation(line: 371, column: 17, scope: !7127)
!7199 = !DILocation(line: 371, column: 4, scope: !7127)
!7200 = !DILocation(line: 371, column: 15, scope: !7127)
!7201 = !DILocation(line: 372, column: 17, scope: !7127)
!7202 = !DILocation(line: 372, column: 14, scope: !7127)
!7203 = !DILocation(line: 373, column: 7, scope: !7127)
!7204 = !DILocation(line: 374, column: 2, scope: !7107)
!7205 = distinct !{!7205, !7187, !7204, !6878, !6879}
!7206 = !DILocation(line: 376, column: 2, scope: !7107)
!7207 = !DILocation(line: 377, column: 6, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 377, column: 6)
!7209 = !DILocation(line: 377, column: 6, scope: !7107)
!7210 = !DILocation(line: 378, column: 17, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7208, file: !2, line: 377, column: 13)
!7212 = !DILocation(line: 378, column: 27, scope: !7211)
!7213 = !DILocation(line: 378, column: 4, scope: !7211)
!7214 = !DILocation(line: 378, column: 15, scope: !7211)
!7215 = !DILocation(line: 379, column: 26, scope: !7211)
!7216 = !DILocation(line: 379, column: 3, scope: !7211)
!7217 = !DILocation(line: 379, column: 13, scope: !7211)
!7218 = !DILocation(line: 379, column: 24, scope: !7211)
!7219 = !DILocation(line: 380, column: 34, scope: !7211)
!7220 = !DILocation(line: 380, column: 3, scope: !7211)
!7221 = !DILocation(line: 380, column: 13, scope: !7211)
!7222 = !DILocation(line: 380, column: 31, scope: !7211)
!7223 = !DILocation(line: 381, column: 2, scope: !7211)
!7224 = !DILocation(line: 382, column: 6, scope: !7225)
!7225 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 382, column: 6)
!7226 = !DILocation(line: 382, column: 6, scope: !7107)
!7227 = !DILocation(line: 383, column: 17, scope: !7228)
!7228 = distinct !DILexicalBlock(scope: !7225, file: !2, line: 382, column: 13)
!7229 = !DILocation(line: 383, column: 27, scope: !7228)
!7230 = !DILocation(line: 383, column: 4, scope: !7228)
!7231 = !DILocation(line: 383, column: 15, scope: !7228)
!7232 = !DILocation(line: 384, column: 26, scope: !7228)
!7233 = !DILocation(line: 384, column: 3, scope: !7228)
!7234 = !DILocation(line: 384, column: 13, scope: !7228)
!7235 = !DILocation(line: 384, column: 24, scope: !7228)
!7236 = !DILocation(line: 385, column: 34, scope: !7228)
!7237 = !DILocation(line: 385, column: 3, scope: !7228)
!7238 = !DILocation(line: 385, column: 13, scope: !7228)
!7239 = !DILocation(line: 385, column: 31, scope: !7228)
!7240 = !DILocation(line: 386, column: 2, scope: !7228)
!7241 = !DILocation(line: 387, column: 2, scope: !7107)
!7242 = !DILocation(line: 394, column: 6, scope: !7243)
!7243 = distinct !DILexicalBlock(scope: !7107, file: !2, line: 394, column: 6)
!7244 = !DILocation(line: 394, column: 18, scope: !7243)
!7245 = !DILocation(line: 394, column: 23, scope: !7243)
!7246 = !DILocation(line: 394, column: 26, scope: !7243)
!7247 = !DILocation(line: 394, column: 38, scope: !7243)
!7248 = !DILocation(line: 394, column: 6, scope: !7107)
!7249 = !DILocation(line: 395, column: 3, scope: !7243)
!7250 = !DILocation(line: 401, column: 2, scope: !7107)
!7251 = !DILocation(line: 402, column: 1, scope: !7107)
!7252 = distinct !DISubprogram(name: "trace_pid_list_free", scope: !2, file: !2, line: 457, type: !7253, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7255)
!7253 = !DISubroutineType(types: !7254)
!7254 = !{null, !302}
!7255 = !{!7256, !7257, !7258, !7259, !7260, !7261, !7263}
!7256 = !DILocalVariable(name: "pid_list", arg: 1, scope: !7252, file: !2, line: 457, type: !302)
!7257 = !DILocalVariable(name: "upper", scope: !7252, file: !2, line: 459, type: !6148)
!7258 = !DILocalVariable(name: "lower", scope: !7252, file: !2, line: 460, type: !6154)
!7259 = !DILocalVariable(name: "i", scope: !7252, file: !2, line: 461, type: !31)
!7260 = !DILocalVariable(name: "j", scope: !7252, file: !2, line: 461, type: !31)
!7261 = !DILocalVariable(name: "chunk", scope: !7262, file: !2, line: 469, type: !6154)
!7262 = distinct !DILexicalBlock(scope: !7252, file: !2, line: 468, column: 31)
!7263 = !DILocalVariable(name: "chunk", scope: !7264, file: !2, line: 477, type: !6148)
!7264 = distinct !DILexicalBlock(scope: !7252, file: !2, line: 476, column: 31)
!7265 = !DILocation(line: 457, column: 49, scope: !7252)
!7266 = !DILocation(line: 459, column: 2, scope: !7252)
!7267 = !DILocation(line: 459, column: 21, scope: !7252)
!7268 = !DILocation(line: 460, column: 2, scope: !7252)
!7269 = !DILocation(line: 460, column: 21, scope: !7252)
!7270 = !DILocation(line: 461, column: 2, scope: !7252)
!7271 = !DILocation(line: 461, column: 6, scope: !7252)
!7272 = !DILocation(line: 461, column: 9, scope: !7252)
!7273 = !DILocation(line: 463, column: 7, scope: !7274)
!7274 = distinct !DILexicalBlock(scope: !7252, file: !2, line: 463, column: 6)
!7275 = !DILocation(line: 463, column: 6, scope: !7252)
!7276 = !DILocation(line: 464, column: 3, scope: !7274)
!7277 = !DILocation(line: 466, column: 17, scope: !7252)
!7278 = !DILocation(line: 466, column: 27, scope: !7252)
!7279 = !DILocation(line: 466, column: 2, scope: !7252)
!7280 = !DILocation(line: 468, column: 2, scope: !7252)
!7281 = !DILocation(line: 468, column: 9, scope: !7252)
!7282 = !DILocation(line: 468, column: 19, scope: !7252)
!7283 = !DILocation(line: 469, column: 3, scope: !7262)
!7284 = !DILocation(line: 469, column: 22, scope: !7262)
!7285 = !DILocation(line: 471, column: 11, scope: !7262)
!7286 = !DILocation(line: 471, column: 21, scope: !7262)
!7287 = !DILocation(line: 471, column: 9, scope: !7262)
!7288 = !DILocation(line: 472, column: 26, scope: !7262)
!7289 = !DILocation(line: 472, column: 36, scope: !7262)
!7290 = !DILocation(line: 472, column: 48, scope: !7262)
!7291 = !DILocation(line: 472, column: 3, scope: !7262)
!7292 = !DILocation(line: 472, column: 13, scope: !7262)
!7293 = !DILocation(line: 472, column: 24, scope: !7262)
!7294 = !DILocation(line: 473, column: 9, scope: !7262)
!7295 = !DILocation(line: 473, column: 3, scope: !7262)
!7296 = !DILocation(line: 474, column: 2, scope: !7252)
!7297 = distinct !{!7297, !7280, !7296, !6878, !6879}
!7298 = !DILocation(line: 476, column: 2, scope: !7252)
!7299 = !DILocation(line: 476, column: 9, scope: !7252)
!7300 = !DILocation(line: 476, column: 19, scope: !7252)
!7301 = !DILocation(line: 477, column: 3, scope: !7264)
!7302 = !DILocation(line: 477, column: 22, scope: !7264)
!7303 = !DILocation(line: 479, column: 11, scope: !7264)
!7304 = !DILocation(line: 479, column: 21, scope: !7264)
!7305 = !DILocation(line: 479, column: 9, scope: !7264)
!7306 = !DILocation(line: 480, column: 26, scope: !7264)
!7307 = !DILocation(line: 480, column: 36, scope: !7264)
!7308 = !DILocation(line: 480, column: 48, scope: !7264)
!7309 = !DILocation(line: 480, column: 3, scope: !7264)
!7310 = !DILocation(line: 480, column: 13, scope: !7264)
!7311 = !DILocation(line: 480, column: 24, scope: !7264)
!7312 = !DILocation(line: 481, column: 9, scope: !7264)
!7313 = !DILocation(line: 481, column: 3, scope: !7264)
!7314 = !DILocation(line: 482, column: 2, scope: !7252)
!7315 = distinct !{!7315, !7298, !7314, !6878, !6879}
!7316 = !DILocation(line: 484, column: 9, scope: !7317)
!7317 = distinct !DILexicalBlock(scope: !7252, file: !2, line: 484, column: 2)
!7318 = !DILocation(line: 484, column: 7, scope: !7317)
!7319 = !DILocation(line: 484, column: 14, scope: !7320)
!7320 = distinct !DILexicalBlock(scope: !7317, file: !2, line: 484, column: 2)
!7321 = !DILocation(line: 484, column: 16, scope: !7320)
!7322 = !DILocation(line: 484, column: 2, scope: !7317)
!7323 = !DILocation(line: 485, column: 11, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !7320, file: !2, line: 484, column: 36)
!7325 = !DILocation(line: 485, column: 21, scope: !7324)
!7326 = !DILocation(line: 485, column: 27, scope: !7324)
!7327 = !DILocation(line: 485, column: 9, scope: !7324)
!7328 = !DILocation(line: 486, column: 7, scope: !7329)
!7329 = distinct !DILexicalBlock(scope: !7324, file: !2, line: 486, column: 7)
!7330 = !DILocation(line: 486, column: 7, scope: !7324)
!7331 = !DILocation(line: 487, column: 11, scope: !7332)
!7332 = distinct !DILexicalBlock(scope: !7333, file: !2, line: 487, column: 4)
!7333 = distinct !DILexicalBlock(scope: !7329, file: !2, line: 486, column: 14)
!7334 = !DILocation(line: 487, column: 9, scope: !7332)
!7335 = !DILocation(line: 487, column: 16, scope: !7336)
!7336 = distinct !DILexicalBlock(scope: !7332, file: !2, line: 487, column: 4)
!7337 = !DILocation(line: 487, column: 18, scope: !7336)
!7338 = !DILocation(line: 487, column: 4, scope: !7332)
!7339 = !DILocation(line: 488, column: 13, scope: !7340)
!7340 = distinct !DILexicalBlock(scope: !7336, file: !2, line: 487, column: 38)
!7341 = !DILocation(line: 488, column: 25, scope: !7340)
!7342 = !DILocation(line: 488, column: 11, scope: !7340)
!7343 = !DILocation(line: 489, column: 11, scope: !7340)
!7344 = !DILocation(line: 489, column: 5, scope: !7340)
!7345 = !DILocation(line: 490, column: 4, scope: !7340)
!7346 = !DILocation(line: 487, column: 34, scope: !7336)
!7347 = !DILocation(line: 487, column: 4, scope: !7336)
!7348 = distinct !{!7348, !7338, !7349, !6878, !6879}
!7349 = !DILocation(line: 490, column: 4, scope: !7332)
!7350 = !DILocation(line: 491, column: 10, scope: !7333)
!7351 = !DILocation(line: 491, column: 4, scope: !7333)
!7352 = !DILocation(line: 492, column: 3, scope: !7333)
!7353 = !DILocation(line: 493, column: 2, scope: !7324)
!7354 = !DILocation(line: 484, column: 32, scope: !7320)
!7355 = !DILocation(line: 484, column: 2, scope: !7320)
!7356 = distinct !{!7356, !7322, !7357, !6878, !6879}
!7357 = !DILocation(line: 493, column: 2, scope: !7317)
!7358 = !DILocation(line: 494, column: 8, scope: !7252)
!7359 = !DILocation(line: 494, column: 2, scope: !7252)
!7360 = !DILocation(line: 495, column: 1, scope: !7252)
!7361 = !DISubprogram(name: "irq_work_sync", scope: !310, file: !310, line: 61, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7362 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !7363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7363 = !DISubroutineType(types: !7364)
!7364 = !{null, !2097}
!7365 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7366, file: !7366, line: 66, type: !7367, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7372)
!7366 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7367 = !DISubroutineType(types: !7368)
!7368 = !{null, !7369, !44}
!7369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7370, size: 64)
!7370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7371)
!7371 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7372 = !{!7373, !7374}
!7373 = !DILocalVariable(name: "v", arg: 1, scope: !7365, file: !7366, line: 66, type: !7369)
!7374 = !DILocalVariable(name: "size", arg: 2, scope: !7365, file: !7366, line: 66, type: !44)
!7375 = !DILocation(line: 66, column: 73, scope: !7365)
!7376 = !DILocation(line: 66, column: 83, scope: !7365)
!7377 = !DILocation(line: 68, column: 19, scope: !7365)
!7378 = !DILocation(line: 68, column: 22, scope: !7365)
!7379 = !DILocation(line: 68, column: 2, scope: !7365)
!7380 = !DILocation(line: 69, column: 2, scope: !7365)
!7381 = !DILocation(line: 70, column: 1, scope: !7365)
!7382 = distinct !DISubprogram(name: "arch_test_bit", scope: !7383, file: !7383, line: 237, type: !6293, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7384)
!7383 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7384 = !{!7385, !7386}
!7385 = !DILocalVariable(name: "nr", arg: 1, scope: !7382, file: !7383, line: 237, type: !48)
!7386 = !DILocalVariable(name: "addr", arg: 2, scope: !7382, file: !7383, line: 237, type: !6295)
!7387 = !DILocation(line: 237, column: 29, scope: !7382)
!7388 = !DILocation(line: 237, column: 63, scope: !7382)
!7389 = !DILocation(line: 239, column: 30, scope: !7382)
!7390 = !DILocation(line: 239, column: 9, scope: !7382)
!7391 = !DILocation(line: 239, column: 54, scope: !7382)
!7392 = !DILocation(line: 239, column: 58, scope: !7382)
!7393 = !DILocation(line: 239, column: 36, scope: !7382)
!7394 = !DILocation(line: 240, column: 26, scope: !7382)
!7395 = !DILocation(line: 240, column: 30, scope: !7382)
!7396 = !DILocation(line: 240, column: 8, scope: !7382)
!7397 = !DILocation(line: 239, column: 2, scope: !7382)
!7398 = distinct !DISubprogram(name: "kasan_check_read", scope: !7399, file: !7399, line: 40, type: !7400, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7402)
!7399 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7400 = !DISubroutineType(types: !7401)
!7401 = !{!852, !7369, !17}
!7402 = !{!7403, !7404}
!7403 = !DILocalVariable(name: "p", arg: 1, scope: !7398, file: !7399, line: 40, type: !7369)
!7404 = !DILocalVariable(name: "size", arg: 2, scope: !7398, file: !7399, line: 40, type: !17)
!7405 = !DILocation(line: 40, column: 58, scope: !7398)
!7406 = !DILocation(line: 40, column: 74, scope: !7398)
!7407 = !DILocation(line: 42, column: 2, scope: !7398)
!7408 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7409, file: !7409, line: 229, type: !7410, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7412)
!7409 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7410 = !DISubroutineType(types: !7411)
!7411 = !{null, !7369, !44, !31}
!7412 = !{!7413, !7414, !7415}
!7413 = !DILocalVariable(name: "ptr", arg: 1, scope: !7408, file: !7409, line: 229, type: !7369)
!7414 = !DILocalVariable(name: "size", arg: 2, scope: !7408, file: !7409, line: 229, type: !44)
!7415 = !DILocalVariable(name: "type", arg: 3, scope: !7408, file: !7409, line: 230, type: !31)
!7416 = !DILocation(line: 229, column: 60, scope: !7408)
!7417 = !DILocation(line: 229, column: 72, scope: !7408)
!7418 = !DILocation(line: 230, column: 15, scope: !7408)
!7419 = !DILocation(line: 230, column: 23, scope: !7408)
!7420 = distinct !DISubprogram(name: "constant_test_bit", scope: !7383, file: !7383, line: 204, type: !7421, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7423)
!7421 = !DISubroutineType(types: !7422)
!7422 = !{!852, !301, !6295}
!7423 = !{!7424, !7425}
!7424 = !DILocalVariable(name: "nr", arg: 1, scope: !7420, file: !7383, line: 204, type: !301)
!7425 = !DILocalVariable(name: "addr", arg: 2, scope: !7420, file: !7383, line: 204, type: !6295)
!7426 = !DILocation(line: 204, column: 52, scope: !7420)
!7427 = !DILocation(line: 204, column: 86, scope: !7420)
!7428 = !DILocation(line: 206, column: 19, scope: !7420)
!7429 = !DILocation(line: 206, column: 22, scope: !7420)
!7430 = !DILocation(line: 206, column: 15, scope: !7420)
!7431 = !DILocation(line: 207, column: 4, scope: !7420)
!7432 = !DILocation(line: 207, column: 9, scope: !7420)
!7433 = !DILocation(line: 207, column: 12, scope: !7420)
!7434 = !DILocation(line: 206, column: 44, scope: !7420)
!7435 = !DILocation(line: 207, column: 37, scope: !7420)
!7436 = !DILocation(line: 206, column: 2, scope: !7420)
!7437 = distinct !DISubprogram(name: "variable_test_bit", scope: !7383, file: !7383, line: 224, type: !7421, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7438)
!7438 = !{!7439, !7440, !7441}
!7439 = !DILocalVariable(name: "nr", arg: 1, scope: !7437, file: !7383, line: 224, type: !301)
!7440 = !DILocalVariable(name: "addr", arg: 2, scope: !7437, file: !7383, line: 224, type: !6295)
!7441 = !DILocalVariable(name: "oldbit", scope: !7437, file: !7383, line: 226, type: !852)
!7442 = !DILocation(line: 224, column: 52, scope: !7437)
!7443 = !DILocation(line: 224, column: 86, scope: !7437)
!7444 = !DILocation(line: 226, column: 2, scope: !7437)
!7445 = !DILocation(line: 226, column: 7, scope: !7437)
!7446 = !DILocation(line: 231, column: 33, scope: !7437)
!7447 = !DILocation(line: 231, column: 46, scope: !7437)
!7448 = !DILocation(line: 228, column: 2, scope: !7437)
!7449 = !{i64 2147976185, i64 2147976259}
!7450 = !DILocation(line: 233, column: 9, scope: !7437)
!7451 = !DILocation(line: 234, column: 1, scope: !7437)
!7452 = !DILocation(line: 233, column: 2, scope: !7437)
!7453 = !DISubprogram(name: "irq_work_queue", scope: !310, file: !310, line: 57, type: !7454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7454 = !DISubroutineType(types: !7455)
!7455 = !{!852, !333}
!7456 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !7366, file: !7366, line: 80, type: !7367, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7457)
!7457 = !{!7458, !7459}
!7458 = !DILocalVariable(name: "v", arg: 1, scope: !7456, file: !7366, line: 80, type: !7369)
!7459 = !DILocalVariable(name: "size", arg: 2, scope: !7456, file: !7366, line: 80, type: !44)
!7460 = !DILocation(line: 80, column: 74, scope: !7456)
!7461 = !DILocation(line: 80, column: 84, scope: !7456)
!7462 = !DILocation(line: 82, column: 20, scope: !7456)
!7463 = !DILocation(line: 82, column: 23, scope: !7456)
!7464 = !DILocation(line: 82, column: 2, scope: !7456)
!7465 = !DILocation(line: 83, column: 2, scope: !7456)
!7466 = !DILocation(line: 84, column: 1, scope: !7456)
!7467 = distinct !DISubprogram(name: "arch_set_bit", scope: !7383, file: !7383, line: 52, type: !6566, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7468)
!7468 = !{!7469, !7470}
!7469 = !DILocalVariable(name: "nr", arg: 1, scope: !7467, file: !7383, line: 52, type: !301)
!7470 = !DILocalVariable(name: "addr", arg: 2, scope: !7467, file: !7383, line: 52, type: !6568)
!7471 = !DILocation(line: 52, column: 19, scope: !7467)
!7472 = !DILocation(line: 52, column: 47, scope: !7467)
!7473 = !DILocation(line: 54, column: 27, scope: !7474)
!7474 = distinct !DILexicalBlock(scope: !7467, file: !7383, line: 54, column: 6)
!7475 = !DILocation(line: 54, column: 6, scope: !7474)
!7476 = !DILocation(line: 54, column: 6, scope: !7467)
!7477 = !DILocation(line: 56, column: 6, scope: !7478)
!7478 = distinct !DILexicalBlock(scope: !7474, file: !7383, line: 54, column: 32)
!7479 = !DILocation(line: 57, column: 12, scope: !7478)
!7480 = !DILocation(line: 55, column: 3, scope: !7478)
!7481 = !{i64 2147962573, i64 2147962612, i64 2147962633, i64 2147962670, i64 2147962693, i64 2147962563}
!7482 = !DILocation(line: 59, column: 2, scope: !7478)
!7483 = !DILocation(line: 61, column: 8, scope: !7484)
!7484 = distinct !DILexicalBlock(scope: !7474, file: !7383, line: 59, column: 9)
!7485 = !DILocation(line: 61, column: 32, scope: !7484)
!7486 = !DILocation(line: 60, column: 3, scope: !7484)
!7487 = !{i64 2147962858, i64 2147962897, i64 2147962918, i64 2147962955, i64 2147962978, i64 2147962848}
!7488 = !DILocation(line: 63, column: 1, scope: !7467)
!7489 = distinct !DISubprogram(name: "kasan_check_write", scope: !7399, file: !7399, line: 44, type: !7400, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7490)
!7490 = !{!7491, !7492}
!7491 = !DILocalVariable(name: "p", arg: 1, scope: !7489, file: !7399, line: 44, type: !7369)
!7492 = !DILocalVariable(name: "size", arg: 2, scope: !7489, file: !7399, line: 44, type: !17)
!7493 = !DILocation(line: 44, column: 59, scope: !7489)
!7494 = !DILocation(line: 44, column: 75, scope: !7489)
!7495 = !DILocation(line: 46, column: 2, scope: !7489)
!7496 = distinct !DISubprogram(name: "arch_clear_bit", scope: !7383, file: !7383, line: 72, type: !6566, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7497)
!7497 = !{!7498, !7499}
!7498 = !DILocalVariable(name: "nr", arg: 1, scope: !7496, file: !7383, line: 72, type: !301)
!7499 = !DILocalVariable(name: "addr", arg: 2, scope: !7496, file: !7383, line: 72, type: !6568)
!7500 = !DILocation(line: 72, column: 21, scope: !7496)
!7501 = !DILocation(line: 72, column: 49, scope: !7496)
!7502 = !DILocation(line: 74, column: 27, scope: !7503)
!7503 = distinct !DILexicalBlock(scope: !7496, file: !7383, line: 74, column: 6)
!7504 = !DILocation(line: 74, column: 6, scope: !7503)
!7505 = !DILocation(line: 74, column: 6, scope: !7496)
!7506 = !DILocation(line: 76, column: 6, scope: !7507)
!7507 = distinct !DILexicalBlock(scope: !7503, file: !7383, line: 74, column: 32)
!7508 = !DILocation(line: 77, column: 13, scope: !7507)
!7509 = !DILocation(line: 77, column: 12, scope: !7507)
!7510 = !DILocation(line: 75, column: 3, scope: !7507)
!7511 = !{i64 2147963861, i64 2147963900, i64 2147963921, i64 2147963958, i64 2147963981, i64 2147963851}
!7512 = !DILocation(line: 78, column: 2, scope: !7507)
!7513 = !DILocation(line: 80, column: 8, scope: !7514)
!7514 = distinct !DILexicalBlock(scope: !7503, file: !7383, line: 78, column: 9)
!7515 = !DILocation(line: 80, column: 32, scope: !7514)
!7516 = !DILocation(line: 79, column: 3, scope: !7514)
!7517 = !{i64 2147964146, i64 2147964185, i64 2147964206, i64 2147964243, i64 2147964266, i64 2147964136}
!7518 = !DILocation(line: 82, column: 1, scope: !7496)
!7519 = distinct !DISubprogram(name: "variable__ffs", scope: !7383, file: !7383, line: 250, type: !7520, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7522)
!7520 = !DISubroutineType(types: !7521)
!7521 = !{!48, !48}
!7522 = !{!7523}
!7523 = !DILocalVariable(name: "word", arg: 1, scope: !7519, file: !7383, line: 250, type: !48)
!7524 = !DILocation(line: 250, column: 66, scope: !7519)
!7525 = !DILocation(line: 254, column: 11, scope: !7519)
!7526 = !DILocation(line: 252, column: 2, scope: !7519)
!7527 = !{i64 474107}
!7528 = !DILocation(line: 255, column: 9, scope: !7519)
!7529 = !DILocation(line: 255, column: 2, scope: !7519)
!7530 = !DISubprogram(name: "_find_first_bit", scope: !6694, file: !6694, line: 21, type: !6695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7531 = !DISubprogram(name: "_find_next_bit", scope: !6694, file: !6694, line: 11, type: !6904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7532 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !7084, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7533)
!7533 = !{!7534, !7535, !7536}
!7534 = !DILocalVariable(name: "size", arg: 1, scope: !7532, file: !9, line: 591, type: !44)
!7535 = !DILocalVariable(name: "flags", arg: 2, scope: !7532, file: !9, line: 591, type: !295)
!7536 = !DILocalVariable(name: "index", scope: !7537, file: !9, line: 594, type: !17)
!7537 = distinct !DILexicalBlock(scope: !7538, file: !9, line: 593, column: 42)
!7538 = distinct !DILexicalBlock(scope: !7532, file: !9, line: 593, column: 6)
!7539 = !DILocation(line: 591, column: 61, scope: !7532)
!7540 = !DILocation(line: 591, column: 73, scope: !7532)
!7541 = !DILocation(line: 593, column: 27, scope: !7538)
!7542 = !DILocation(line: 593, column: 6, scope: !7538)
!7543 = !DILocation(line: 593, column: 33, scope: !7538)
!7544 = !DILocation(line: 593, column: 36, scope: !7538)
!7545 = !DILocation(line: 593, column: 6, scope: !7532)
!7546 = !DILocation(line: 594, column: 3, scope: !7537)
!7547 = !DILocation(line: 594, column: 16, scope: !7537)
!7548 = !DILocation(line: 596, column: 7, scope: !7549)
!7549 = distinct !DILexicalBlock(scope: !7537, file: !9, line: 596, column: 7)
!7550 = !DILocation(line: 596, column: 12, scope: !7549)
!7551 = !DILocation(line: 596, column: 7, scope: !7537)
!7552 = !DILocation(line: 597, column: 25, scope: !7549)
!7553 = !DILocation(line: 597, column: 31, scope: !7549)
!7554 = !DILocation(line: 597, column: 11, scope: !7549)
!7555 = !DILocation(line: 597, column: 4, scope: !7549)
!7556 = !DILocation(line: 599, column: 11, scope: !7537)
!7557 = !DILocation(line: 599, column: 9, scope: !7537)
!7558 = !DILocation(line: 601, column: 33, scope: !7537)
!7559 = !DILocation(line: 601, column: 40, scope: !7537)
!7560 = !DILocation(line: 601, column: 20, scope: !7537)
!7561 = !DILocation(line: 601, column: 5, scope: !7537)
!7562 = !DILocation(line: 601, column: 51, scope: !7537)
!7563 = !DILocation(line: 602, column: 5, scope: !7537)
!7564 = !DILocation(line: 602, column: 12, scope: !7537)
!7565 = !DILocation(line: 600, column: 10, scope: !7537)
!7566 = !DILocation(line: 600, column: 3, scope: !7537)
!7567 = !DILocation(line: 603, column: 2, scope: !7538)
!7568 = !DILocation(line: 604, column: 19, scope: !7532)
!7569 = !DILocation(line: 604, column: 25, scope: !7532)
!7570 = !DILocation(line: 604, column: 9, scope: !7532)
!7571 = !DILocation(line: 604, column: 2, scope: !7532)
!7572 = !DILocation(line: 605, column: 1, scope: !7532)
!7573 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !7084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7574 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !7575, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7577)
!7575 = !DISubroutineType(types: !7576)
!7576 = !{!17, !44, !852}
!7577 = !{!7578, !7579}
!7578 = !DILocalVariable(name: "size", arg: 1, scope: !7574, file: !9, line: 444, type: !44)
!7579 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7574, file: !9, line: 445, type: !852)
!7580 = !DILocation(line: 444, column: 60, scope: !7574)
!7581 = !DILocation(line: 445, column: 16, scope: !7574)
!7582 = !DILocation(line: 447, column: 7, scope: !7583)
!7583 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 447, column: 6)
!7584 = !DILocation(line: 447, column: 6, scope: !7574)
!7585 = !DILocation(line: 448, column: 3, scope: !7583)
!7586 = !DILocation(line: 450, column: 6, scope: !7587)
!7587 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 450, column: 6)
!7588 = !DILocation(line: 450, column: 11, scope: !7587)
!7589 = !DILocation(line: 450, column: 6, scope: !7574)
!7590 = !DILocation(line: 451, column: 3, scope: !7587)
!7591 = !DILocation(line: 453, column: 32, scope: !7592)
!7592 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 453, column: 6)
!7593 = !DILocation(line: 453, column: 37, scope: !7592)
!7594 = !DILocation(line: 453, column: 42, scope: !7592)
!7595 = !DILocation(line: 453, column: 45, scope: !7592)
!7596 = !DILocation(line: 453, column: 50, scope: !7592)
!7597 = !DILocation(line: 453, column: 6, scope: !7574)
!7598 = !DILocation(line: 454, column: 3, scope: !7592)
!7599 = !DILocation(line: 455, column: 32, scope: !7600)
!7600 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 455, column: 6)
!7601 = !DILocation(line: 455, column: 37, scope: !7600)
!7602 = !DILocation(line: 455, column: 43, scope: !7600)
!7603 = !DILocation(line: 455, column: 46, scope: !7600)
!7604 = !DILocation(line: 455, column: 51, scope: !7600)
!7605 = !DILocation(line: 455, column: 6, scope: !7574)
!7606 = !DILocation(line: 456, column: 3, scope: !7600)
!7607 = !DILocation(line: 457, column: 6, scope: !7608)
!7608 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 457, column: 6)
!7609 = !DILocation(line: 457, column: 11, scope: !7608)
!7610 = !DILocation(line: 457, column: 6, scope: !7574)
!7611 = !DILocation(line: 457, column: 26, scope: !7608)
!7612 = !DILocation(line: 458, column: 6, scope: !7613)
!7613 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 458, column: 6)
!7614 = !DILocation(line: 458, column: 11, scope: !7613)
!7615 = !DILocation(line: 458, column: 6, scope: !7574)
!7616 = !DILocation(line: 458, column: 26, scope: !7613)
!7617 = !DILocation(line: 459, column: 6, scope: !7618)
!7618 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 459, column: 6)
!7619 = !DILocation(line: 459, column: 11, scope: !7618)
!7620 = !DILocation(line: 459, column: 6, scope: !7574)
!7621 = !DILocation(line: 459, column: 26, scope: !7618)
!7622 = !DILocation(line: 460, column: 6, scope: !7623)
!7623 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 460, column: 6)
!7624 = !DILocation(line: 460, column: 11, scope: !7623)
!7625 = !DILocation(line: 460, column: 6, scope: !7574)
!7626 = !DILocation(line: 460, column: 26, scope: !7623)
!7627 = !DILocation(line: 461, column: 6, scope: !7628)
!7628 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 461, column: 6)
!7629 = !DILocation(line: 461, column: 11, scope: !7628)
!7630 = !DILocation(line: 461, column: 6, scope: !7574)
!7631 = !DILocation(line: 461, column: 26, scope: !7628)
!7632 = !DILocation(line: 462, column: 6, scope: !7633)
!7633 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 462, column: 6)
!7634 = !DILocation(line: 462, column: 11, scope: !7633)
!7635 = !DILocation(line: 462, column: 6, scope: !7574)
!7636 = !DILocation(line: 462, column: 26, scope: !7633)
!7637 = !DILocation(line: 463, column: 6, scope: !7638)
!7638 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 463, column: 6)
!7639 = !DILocation(line: 463, column: 11, scope: !7638)
!7640 = !DILocation(line: 463, column: 6, scope: !7574)
!7641 = !DILocation(line: 463, column: 26, scope: !7638)
!7642 = !DILocation(line: 464, column: 6, scope: !7643)
!7643 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 464, column: 6)
!7644 = !DILocation(line: 464, column: 11, scope: !7643)
!7645 = !DILocation(line: 464, column: 6, scope: !7574)
!7646 = !DILocation(line: 464, column: 26, scope: !7643)
!7647 = !DILocation(line: 465, column: 6, scope: !7648)
!7648 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 465, column: 6)
!7649 = !DILocation(line: 465, column: 11, scope: !7648)
!7650 = !DILocation(line: 465, column: 6, scope: !7574)
!7651 = !DILocation(line: 465, column: 26, scope: !7648)
!7652 = !DILocation(line: 466, column: 6, scope: !7653)
!7653 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 466, column: 6)
!7654 = !DILocation(line: 466, column: 11, scope: !7653)
!7655 = !DILocation(line: 466, column: 6, scope: !7574)
!7656 = !DILocation(line: 466, column: 26, scope: !7653)
!7657 = !DILocation(line: 467, column: 6, scope: !7658)
!7658 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 467, column: 6)
!7659 = !DILocation(line: 467, column: 11, scope: !7658)
!7660 = !DILocation(line: 467, column: 6, scope: !7574)
!7661 = !DILocation(line: 467, column: 26, scope: !7658)
!7662 = !DILocation(line: 468, column: 6, scope: !7663)
!7663 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 468, column: 6)
!7664 = !DILocation(line: 468, column: 11, scope: !7663)
!7665 = !DILocation(line: 468, column: 6, scope: !7574)
!7666 = !DILocation(line: 468, column: 26, scope: !7663)
!7667 = !DILocation(line: 469, column: 6, scope: !7668)
!7668 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 469, column: 6)
!7669 = !DILocation(line: 469, column: 11, scope: !7668)
!7670 = !DILocation(line: 469, column: 6, scope: !7574)
!7671 = !DILocation(line: 469, column: 26, scope: !7668)
!7672 = !DILocation(line: 470, column: 6, scope: !7673)
!7673 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 470, column: 6)
!7674 = !DILocation(line: 470, column: 11, scope: !7673)
!7675 = !DILocation(line: 470, column: 6, scope: !7574)
!7676 = !DILocation(line: 470, column: 26, scope: !7673)
!7677 = !DILocation(line: 471, column: 6, scope: !7678)
!7678 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 471, column: 6)
!7679 = !DILocation(line: 471, column: 11, scope: !7678)
!7680 = !DILocation(line: 471, column: 6, scope: !7574)
!7681 = !DILocation(line: 471, column: 26, scope: !7678)
!7682 = !DILocation(line: 472, column: 6, scope: !7683)
!7683 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 472, column: 6)
!7684 = !DILocation(line: 472, column: 11, scope: !7683)
!7685 = !DILocation(line: 472, column: 6, scope: !7574)
!7686 = !DILocation(line: 472, column: 26, scope: !7683)
!7687 = !DILocation(line: 473, column: 6, scope: !7688)
!7688 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 473, column: 6)
!7689 = !DILocation(line: 473, column: 11, scope: !7688)
!7690 = !DILocation(line: 473, column: 6, scope: !7574)
!7691 = !DILocation(line: 473, column: 26, scope: !7688)
!7692 = !DILocation(line: 474, column: 6, scope: !7693)
!7693 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 474, column: 6)
!7694 = !DILocation(line: 474, column: 11, scope: !7693)
!7695 = !DILocation(line: 474, column: 6, scope: !7574)
!7696 = !DILocation(line: 474, column: 27, scope: !7693)
!7697 = !DILocation(line: 475, column: 6, scope: !7698)
!7698 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 475, column: 6)
!7699 = !DILocation(line: 475, column: 11, scope: !7698)
!7700 = !DILocation(line: 475, column: 6, scope: !7574)
!7701 = !DILocation(line: 475, column: 32, scope: !7698)
!7702 = !DILocation(line: 477, column: 50, scope: !7703)
!7703 = distinct !DILexicalBlock(scope: !7574, file: !9, line: 477, column: 6)
!7704 = !DILocation(line: 477, column: 6, scope: !7574)
!7705 = !DILocation(line: 478, column: 3, scope: !7703)
!7706 = !DILocation(line: 478, column: 3, scope: !7707)
!7707 = distinct !DILexicalBlock(scope: !7708, file: !9, line: 478, column: 3)
!7708 = distinct !DILexicalBlock(scope: !7703, file: !9, line: 478, column: 3)
!7709 = !{i32 -2142241748}
!7710 = !DILocation(line: 478, column: 3, scope: !7708)
!7711 = !DILocation(line: 480, column: 3, scope: !7703)
!7712 = !DILocation(line: 480, column: 3, scope: !7713)
!7713 = distinct !DILexicalBlock(scope: !7703, file: !9, line: 480, column: 3)
!7714 = !DILocation(line: 480, column: 3, scope: !7715)
!7715 = distinct !DILexicalBlock(scope: !7713, file: !9, line: 480, column: 3)
!7716 = !DILocation(line: 480, column: 3, scope: !7717)
!7717 = distinct !DILexicalBlock(scope: !7713, file: !9, line: 480, column: 3)
!7718 = !{i64 2152725751, i64 2152725780, i64 2152725826, i64 2152725884, i64 2152725938, i64 2152725992, i64 2152726047, i64 2152726078}
!7719 = !DILocation(line: 483, column: 2, scope: !7574)
!7720 = !DILocation(line: 484, column: 1, scope: !7574)
!7721 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !7722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7722 = !DISubroutineType(types: !7723)
!7723 = !{!29, !785, !295, !44}
!7724 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !7725, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7727)
!7725 = !DISubroutineType(types: !7726)
!7726 = !{!282, !295, !48}
!7727 = !{!7728, !7729}
!7728 = !DILocalVariable(name: "flags", arg: 1, scope: !7724, file: !9, line: 401, type: !295)
!7729 = !DILocalVariable(name: "caller", arg: 2, scope: !7724, file: !9, line: 401, type: !48)
!7730 = !DILocation(line: 401, column: 67, scope: !7724)
!7731 = !DILocation(line: 401, column: 88, scope: !7724)
!7732 = !DILocation(line: 407, column: 6, scope: !7733)
!7733 = distinct !DILexicalBlock(scope: !7724, file: !9, line: 407, column: 6)
!7734 = !DILocation(line: 407, column: 6, scope: !7724)
!7735 = !DILocation(line: 413, column: 3, scope: !7733)
!7736 = !DILocation(line: 423, column: 38, scope: !7737)
!7737 = distinct !DILexicalBlock(scope: !7724, file: !9, line: 423, column: 6)
!7738 = !DILocation(line: 423, column: 44, scope: !7737)
!7739 = !DILocation(line: 423, column: 6, scope: !7724)
!7740 = !DILocation(line: 424, column: 3, scope: !7737)
!7741 = !DILocation(line: 426, column: 3, scope: !7742)
!7742 = distinct !DILexicalBlock(scope: !7724, file: !9, line: 425, column: 6)
!7743 = !DILocation(line: 429, column: 1, scope: !7724)
!7744 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !7084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7745 = !DISubprogram(name: "__compiletime_assert_213", scope: !9, file: !9, line: 478, type: !2685, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7746 = !DISubprogram(name: "_raw_spin_lock", scope: !6287, file: !6287, line: 22, type: !7747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7747 = !DISubroutineType(types: !7748)
!7748 = !{null, !6290}
!7749 = !DISubprogram(name: "_raw_spin_unlock", scope: !6287, file: !6287, line: 39, type: !7747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
