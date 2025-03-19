; ModuleID = 'lib/seq_buf.c'
source_filename = "lib/seq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_seq_buf_printf: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad seq_buf_printf ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_seq_buf_do_printk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad seq_buf_do_printk ; .previous"

%struct.seq_buf = type { ptr, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"lib/seq_buf.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_seq_buf_printf251 = internal global ptr @seq_buf_printf, section ".discard.addressable", align 8, !dbg !7
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%.*s\00", align 1, !dbg !72
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1, !dbg !77
@__UNIQUE_ID___addressable_seq_buf_do_printk252 = internal global ptr @seq_buf_do_printk, section ".discard.addressable", align 8, !dbg !82
@hex_asc = external dso_local constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s%p: %s\0A\00", align 1, !dbg !84
@.str.4 = private unnamed_addr constant [12 x i8] c"%s%.8x: %s\0A\00", align 1, !dbg !89
@.str.5 = private unnamed_addr constant [24 x i8] c"include/linux/seq_buf.h\00", align 1, !dbg !94
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !100
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !105
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_seq_buf_printf251, ptr @__UNIQUE_ID___addressable_seq_buf_do_printk252], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_print_seq(ptr noundef %m, ptr noundef %s) #0 align 16 !dbg !120 {
entry:
  %m.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3291, metadata !DIExpression()), !dbg !3294
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3292, metadata !DIExpression()), !dbg !3295
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !3296
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3293, metadata !DIExpression()), !dbg !3297
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3298
  %call = call i32 @seq_buf_used(ptr noundef %0) #14, !dbg !3299
  store i32 %call, ptr %len, align 4, !dbg !3297
  %1 = load ptr, ptr %m.addr, align 8, !dbg !3300
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3301
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 0, !dbg !3302
  %3 = load ptr, ptr %buffer, align 8, !dbg !3302
  %4 = load i32, ptr %len, align 4, !dbg !3303
  %conv = zext i32 %4 to i64, !dbg !3303
  %call1 = call i32 @seq_write(ptr noundef %1, ptr noundef %3, i64 noundef %conv) #14, !dbg !3304
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !3305
  ret i32 %call1, !dbg !3306
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_buf_used(ptr noundef %s) #3 align 16 !dbg !3307 {
entry:
  %s.addr = alloca ptr, align 8
  %__UNIQUE_ID___x249 = alloca i64, align 8
  %__UNIQUE_ID___y250 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x249) #13, !dbg !3316
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x249, metadata !3312, metadata !DIExpression()), !dbg !3316
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3316
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !3316
  %1 = load i64, ptr %len, align 8, !dbg !3316
  store i64 %1, ptr %__UNIQUE_ID___x249, align 8, !dbg !3316
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y250) #13, !dbg !3316
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y250, metadata !3314, metadata !DIExpression()), !dbg !3316
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3316
  %size = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 1, !dbg !3316
  %3 = load i64, ptr %size, align 8, !dbg !3316
  store i64 %3, ptr %__UNIQUE_ID___y250, align 8, !dbg !3316
  %4 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !3316
  %5 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !3316
  %cmp = icmp ult i64 %4, %5, !dbg !3316
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3316

cond.true:                                        ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !3316
  br label %cond.end, !dbg !3316

cond.false:                                       ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !3316
  br label %cond.end, !dbg !3316

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !3316
  store i64 %cond, ptr %tmp, align 8, !dbg !3316
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y250) #13, !dbg !3317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x249) #13, !dbg !3317
  %8 = load i64, ptr %tmp, align 8, !dbg !3316
  %conv = trunc i64 %8 to i32, !dbg !3317
  ret i32 %conv, !dbg !3318
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3319 dso_local i32 @seq_write(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_vprintf(ptr noundef %s, ptr noundef %fmt, ptr noundef %args) #0 align 16 !dbg !3324 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3335, metadata !DIExpression()), !dbg !3344
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !3336, metadata !DIExpression()), !dbg !3345
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !3337, metadata !DIExpression()), !dbg !3346
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !3347
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3338, metadata !DIExpression()), !dbg !3348
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3349
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3339, metadata !DIExpression()), !dbg !3349
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3349
  %size = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1, !dbg !3349
  %1 = load i64, ptr %size, align 8, !dbg !3349
  %cmp = icmp eq i64 %1, 0, !dbg !3349
  %lnot = xor i1 %cmp, true, !dbg !3349
  %lnot1 = xor i1 %lnot, true, !dbg !3349
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3349
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3349
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3350
  %tobool = icmp ne i32 %2, 0, !dbg !3350
  %lnot2 = xor i1 %tobool, true, !dbg !3350
  %lnot4 = xor i1 %lnot2, true, !dbg !3350
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3350
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3350
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3350
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3350
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3349

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3350

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3351
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3341, metadata !DIExpression()), !dbg !3351
  store i32 2305, ptr %__flags, align 4, !dbg !3351
  br label %do.body7, !dbg !3351

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3352

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3352

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3351

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3354
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 61, i32 %3, i64 12) #13, !dbg !3354, !srcloc !3356
  br label %do.cond9, !dbg !3354

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3354

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3351

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3357

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3357

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3350
  br label %do.cond14, !dbg !3351

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3351

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3351

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3349
  %tobool16 = icmp ne i32 %4, 0, !dbg !3349
  %lnot17 = xor i1 %tobool16, true, !dbg !3349
  %lnot19 = xor i1 %lnot17, true, !dbg !3349
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3349
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3349
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3349
  store i64 %expval22, ptr %tmp, align 8, !dbg !3350
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3359
  %5 = load i64, ptr %tmp, align 8, !dbg !3349
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3360
  %len23 = getelementptr inbounds %struct.seq_buf, ptr %6, i32 0, i32 2, !dbg !3362
  %7 = load i64, ptr %len23, align 8, !dbg !3362
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3363
  %size24 = getelementptr inbounds %struct.seq_buf, ptr %8, i32 0, i32 1, !dbg !3364
  %9 = load i64, ptr %size24, align 8, !dbg !3364
  %cmp25 = icmp ult i64 %7, %9, !dbg !3365
  br i1 %cmp25, label %if.then27, label %if.end41, !dbg !3366

if.then27:                                        ; preds = %if.end
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3367
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %10, i32 0, i32 0, !dbg !3369
  %11 = load ptr, ptr %buffer, align 8, !dbg !3369
  %12 = load ptr, ptr %s.addr, align 8, !dbg !3370
  %len28 = getelementptr inbounds %struct.seq_buf, ptr %12, i32 0, i32 2, !dbg !3371
  %13 = load i64, ptr %len28, align 8, !dbg !3371
  %add.ptr = getelementptr i8, ptr %11, i64 %13, !dbg !3372
  %14 = load ptr, ptr %s.addr, align 8, !dbg !3373
  %size29 = getelementptr inbounds %struct.seq_buf, ptr %14, i32 0, i32 1, !dbg !3374
  %15 = load i64, ptr %size29, align 8, !dbg !3374
  %16 = load ptr, ptr %s.addr, align 8, !dbg !3375
  %len30 = getelementptr inbounds %struct.seq_buf, ptr %16, i32 0, i32 2, !dbg !3376
  %17 = load i64, ptr %len30, align 8, !dbg !3376
  %sub = sub i64 %15, %17, !dbg !3377
  %18 = load ptr, ptr %fmt.addr, align 8, !dbg !3378
  %19 = load ptr, ptr %args.addr, align 8, !dbg !3379
  %call = call i32 @vsnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef %18, ptr noundef %19) #14, !dbg !3380
  store i32 %call, ptr %len, align 4, !dbg !3381
  %20 = load ptr, ptr %s.addr, align 8, !dbg !3382
  %len31 = getelementptr inbounds %struct.seq_buf, ptr %20, i32 0, i32 2, !dbg !3384
  %21 = load i64, ptr %len31, align 8, !dbg !3384
  %22 = load i32, ptr %len, align 4, !dbg !3385
  %conv32 = sext i32 %22 to i64, !dbg !3385
  %add = add i64 %21, %conv32, !dbg !3386
  %23 = load ptr, ptr %s.addr, align 8, !dbg !3387
  %size33 = getelementptr inbounds %struct.seq_buf, ptr %23, i32 0, i32 1, !dbg !3388
  %24 = load i64, ptr %size33, align 8, !dbg !3388
  %cmp34 = icmp ult i64 %add, %24, !dbg !3389
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !3390

if.then36:                                        ; preds = %if.then27
  %25 = load i32, ptr %len, align 4, !dbg !3391
  %conv37 = sext i32 %25 to i64, !dbg !3391
  %26 = load ptr, ptr %s.addr, align 8, !dbg !3393
  %len38 = getelementptr inbounds %struct.seq_buf, ptr %26, i32 0, i32 2, !dbg !3394
  %27 = load i64, ptr %len38, align 8, !dbg !3395
  %add39 = add i64 %27, %conv37, !dbg !3395
  store i64 %add39, ptr %len38, align 8, !dbg !3395
  store i32 0, ptr %retval, align 4, !dbg !3396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3396

if.end40:                                         ; preds = %if.then27
  br label %if.end41, !dbg !3397

if.end41:                                         ; preds = %if.end40, %if.end
  %28 = load ptr, ptr %s.addr, align 8, !dbg !3398
  call void @seq_buf_set_overflow(ptr noundef %28) #14, !dbg !3399
  store i32 -1, ptr %retval, align 4, !dbg !3400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3400

cleanup:                                          ; preds = %if.end41, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !3401
  %29 = load i32, ptr %retval, align 4, !dbg !3401
  ret i32 %29, !dbg !3401
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3402 dso_local i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_buf_set_overflow(ptr noundef %s) #3 align 16 !dbg !3406 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3410, metadata !DIExpression()), !dbg !3411
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3412
  %size = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1, !dbg !3413
  %1 = load i64, ptr %size, align 8, !dbg !3413
  %add = add i64 %1, 1, !dbg !3414
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3415
  %len = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 2, !dbg !3416
  store i64 %add, ptr %len, align 8, !dbg !3417
  ret void, !dbg !3418
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_printf(ptr noundef %s, ptr noundef %fmt, ...) #0 align 16 !dbg !3419 {
entry:
  %s.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ret = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3423, metadata !DIExpression()), !dbg !3431
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !3424, metadata !DIExpression()), !dbg !3432
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #13, !dbg !3433
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !3425, metadata !DIExpression()), !dbg !3434
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3435
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3430, metadata !DIExpression()), !dbg !3436
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3437
  call void @llvm.va_start(ptr %arraydecay), !dbg !3437
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3438
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !3439
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3440
  %call = call i32 @seq_buf_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay1) #14, !dbg !3441
  store i32 %call, ptr %ret, align 4, !dbg !3442
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3443
  call void @llvm.va_end(ptr %arraydecay2), !dbg !3443
  %2 = load i32, ptr %ret, align 4, !dbg !3444
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #13, !dbg !3445
  ret i32 %2, !dbg !3446
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @seq_buf_do_printk(ptr noundef %s, ptr noundef %lvl) #0 align 16 !dbg !3447 {
entry:
  %s.addr = alloca ptr, align 8
  %lvl.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  %lf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %len3 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3451, metadata !DIExpression()), !dbg !3457
  store ptr %lvl, ptr %lvl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lvl.addr, metadata !3452, metadata !DIExpression()), !dbg !3458
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #13, !dbg !3459
  call void @llvm.dbg.declare(metadata ptr %start, metadata !3453, metadata !DIExpression()), !dbg !3460
  call void @llvm.lifetime.start.p0(i64 8, ptr %lf) #13, !dbg !3459
  call void @llvm.dbg.declare(metadata ptr %lf, metadata !3454, metadata !DIExpression()), !dbg !3461
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3462
  %size = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1, !dbg !3464
  %1 = load i64, ptr %size, align 8, !dbg !3464
  %cmp = icmp eq i64 %1, 0, !dbg !3465
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3466

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3467
  %len = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 2, !dbg !3468
  %3 = load i64, ptr %len, align 8, !dbg !3468
  %cmp1 = icmp eq i64 %3, 0, !dbg !3469
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3470

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3471

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3472
  %call = call ptr @seq_buf_str(ptr noundef %4) #14, !dbg !3473
  store ptr %call, ptr %start, align 8, !dbg !3474
  br label %while.cond, !dbg !3475

while.cond:                                       ; preds = %do.end, %if.end
  %5 = load ptr, ptr %start, align 8, !dbg !3476
  %call2 = call ptr @strchr(ptr noundef %5, i32 noundef 10) #14, !dbg !3477
  store ptr %call2, ptr %lf, align 8, !dbg !3478
  %tobool = icmp ne ptr %call2, null, !dbg !3475
  br i1 %tobool, label %while.body, label %while.end, !dbg !3475

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %len3) #13, !dbg !3479
  call void @llvm.dbg.declare(metadata ptr %len3, metadata !3455, metadata !DIExpression()), !dbg !3480
  %6 = load ptr, ptr %lf, align 8, !dbg !3481
  %7 = load ptr, ptr %start, align 8, !dbg !3482
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64, !dbg !3483
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64, !dbg !3483
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3483
  %add = add i64 %sub.ptr.sub, 1, !dbg !3484
  %conv = trunc i64 %add to i32, !dbg !3481
  store i32 %conv, ptr %len3, align 4, !dbg !3480
  br label %do.body, !dbg !3485

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !3487

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3487

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %lvl.addr, align 8, !dbg !3485
  %9 = load i32, ptr %len3, align 4, !dbg !3485
  %10 = load ptr, ptr %start, align 8, !dbg !3485
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %8, i32 noundef %9, ptr noundef %10) #15, !dbg !3485
  store i32 %call4, ptr %tmp, align 4, !dbg !3487
  %11 = load i32, ptr %tmp, align 4, !dbg !3485
  %12 = load ptr, ptr %lf, align 8, !dbg !3489
  %incdec.ptr = getelementptr i8, ptr %12, i32 1, !dbg !3489
  store ptr %incdec.ptr, ptr %lf, align 8, !dbg !3489
  store ptr %incdec.ptr, ptr %start, align 8, !dbg !3490
  call void @llvm.lifetime.end.p0(i64 4, ptr %len3) #13, !dbg !3491
  br label %while.cond, !dbg !3475, !llvm.loop !3492

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %start, align 8, !dbg !3495
  %14 = load ptr, ptr %s.addr, align 8, !dbg !3497
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %14, i32 0, i32 0, !dbg !3498
  %15 = load ptr, ptr %buffer, align 8, !dbg !3498
  %16 = load ptr, ptr %s.addr, align 8, !dbg !3499
  %len5 = getelementptr inbounds %struct.seq_buf, ptr %16, i32 0, i32 2, !dbg !3500
  %17 = load i64, ptr %len5, align 8, !dbg !3500
  %add.ptr = getelementptr i8, ptr %15, i64 %17, !dbg !3501
  %cmp6 = icmp ult ptr %13, %add.ptr, !dbg !3502
  br i1 %cmp6, label %if.then8, label %if.end14, !dbg !3503

if.then8:                                         ; preds = %while.end
  br label %do.body9, !dbg !3504

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !3506

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3506

do.end11:                                         ; preds = %do.cond10
  %18 = load ptr, ptr %lvl.addr, align 8, !dbg !3504
  %19 = load ptr, ptr %start, align 8, !dbg !3504
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %18, ptr noundef %19) #15, !dbg !3504
  store i32 %call13, ptr %tmp12, align 4, !dbg !3506
  %20 = load i32, ptr %tmp12, align 4, !dbg !3504
  br label %if.end14, !dbg !3508

if.end14:                                         ; preds = %do.end11, %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3509
  br label %cleanup, !dbg !3509

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lf) #13, !dbg !3509
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #13, !dbg !3509
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3509

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_buf_str(ptr noundef %s) #3 align 16 !dbg !3510 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3514, metadata !DIExpression()), !dbg !3521
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3522
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3515, metadata !DIExpression()), !dbg !3522
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3522
  %size = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1, !dbg !3522
  %1 = load i64, ptr %size, align 8, !dbg !3522
  %cmp = icmp eq i64 %1, 0, !dbg !3522
  %lnot = xor i1 %cmp, true, !dbg !3522
  %lnot1 = xor i1 %lnot, true, !dbg !3522
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3522
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3522
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3523
  %tobool = icmp ne i32 %2, 0, !dbg !3523
  %lnot2 = xor i1 %tobool, true, !dbg !3523
  %lnot4 = xor i1 %lnot2, true, !dbg !3523
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3523
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3523
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3523
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3523
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3522

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3523

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3524
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3518, metadata !DIExpression()), !dbg !3524
  store i32 2305, ptr %__flags, align 4, !dbg !3524
  br label %do.body7, !dbg !3524

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3525

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3525

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3524

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3527
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 97, i32 %3, i64 12) #13, !dbg !3527, !srcloc !3529
  br label %do.cond9, !dbg !3527

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3527

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3524

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3530

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3530

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3523
  br label %do.cond14, !dbg !3524

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3524

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3524

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3522
  %tobool16 = icmp ne i32 %4, 0, !dbg !3522
  %lnot17 = xor i1 %tobool16, true, !dbg !3522
  %lnot19 = xor i1 %lnot17, true, !dbg !3522
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3522
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3522
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3522
  store i64 %expval22, ptr %tmp, align 8, !dbg !3523
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3532
  %5 = load i64, ptr %tmp, align 8, !dbg !3522
  %tobool23 = icmp ne i64 %5, 0, !dbg !3532
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !3533

if.then24:                                        ; preds = %if.end
  store ptr @.str.6, ptr %retval, align 8, !dbg !3534
  br label %return, !dbg !3534

if.end25:                                         ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3535
  %call = call i32 @seq_buf_buffer_left(ptr noundef %6) #14, !dbg !3537
  %tobool26 = icmp ne i32 %call, 0, !dbg !3537
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !3538

if.then27:                                        ; preds = %if.end25
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3539
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %7, i32 0, i32 0, !dbg !3540
  %8 = load ptr, ptr %buffer, align 8, !dbg !3540
  %9 = load ptr, ptr %s.addr, align 8, !dbg !3541
  %len = getelementptr inbounds %struct.seq_buf, ptr %9, i32 0, i32 2, !dbg !3542
  %10 = load i64, ptr %len, align 8, !dbg !3542
  %arrayidx = getelementptr i8, ptr %8, i64 %10, !dbg !3539
  store i8 0, ptr %arrayidx, align 1, !dbg !3543
  br label %if.end31, !dbg !3539

if.else:                                          ; preds = %if.end25
  %11 = load ptr, ptr %s.addr, align 8, !dbg !3544
  %buffer28 = getelementptr inbounds %struct.seq_buf, ptr %11, i32 0, i32 0, !dbg !3545
  %12 = load ptr, ptr %buffer28, align 8, !dbg !3545
  %13 = load ptr, ptr %s.addr, align 8, !dbg !3546
  %size29 = getelementptr inbounds %struct.seq_buf, ptr %13, i32 0, i32 1, !dbg !3547
  %14 = load i64, ptr %size29, align 8, !dbg !3547
  %sub = sub i64 %14, 1, !dbg !3548
  %arrayidx30 = getelementptr i8, ptr %12, i64 %sub, !dbg !3544
  store i8 0, ptr %arrayidx30, align 1, !dbg !3549
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %15 = load ptr, ptr %s.addr, align 8, !dbg !3550
  %buffer32 = getelementptr inbounds %struct.seq_buf, ptr %15, i32 0, i32 0, !dbg !3551
  %16 = load ptr, ptr %buffer32, align 8, !dbg !3551
  store ptr %16, ptr %retval, align 8, !dbg !3552
  br label %return, !dbg !3552

return:                                           ; preds = %if.end31, %if.then24
  %17 = load ptr, ptr %retval, align 8, !dbg !3553
  ret ptr %17, !dbg !3553
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3554 dso_local ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3558 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_bprintf(ptr noundef %s, ptr noundef %fmt, ptr noundef %binary) #0 align 16 !dbg !3561 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %binary.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3567, metadata !DIExpression()), !dbg !3577
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !3568, metadata !DIExpression()), !dbg !3578
  store ptr %binary, ptr %binary.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %binary.addr, metadata !3569, metadata !DIExpression()), !dbg !3579
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !3580
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3570, metadata !DIExpression()), !dbg !3581
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3582
  %call = call i32 @seq_buf_buffer_left(ptr noundef %0) #14, !dbg !3583
  store i32 %call, ptr %len, align 4, !dbg !3581
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3584
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3571, metadata !DIExpression()), !dbg !3585
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3586
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3572, metadata !DIExpression()), !dbg !3586
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3586
  %size = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1, !dbg !3586
  %2 = load i64, ptr %size, align 8, !dbg !3586
  %cmp = icmp eq i64 %2, 0, !dbg !3586
  %lnot = xor i1 %cmp, true, !dbg !3586
  %lnot1 = xor i1 %lnot, true, !dbg !3586
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3586
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3586
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3587
  %tobool = icmp ne i32 %3, 0, !dbg !3587
  %lnot2 = xor i1 %tobool, true, !dbg !3587
  %lnot4 = xor i1 %lnot2, true, !dbg !3587
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3587
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3587
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3587
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3587
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3586

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3587

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3574, metadata !DIExpression()), !dbg !3588
  store i32 2305, ptr %__flags, align 4, !dbg !3588
  br label %do.body7, !dbg !3588

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3589

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3589

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3588

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !3591
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 149, i32 %4, i64 12) #13, !dbg !3591, !srcloc !3593
  br label %do.cond9, !dbg !3591

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3591

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3588

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3594

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3594

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3587
  br label %do.cond14, !dbg !3588

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3588

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3588

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3586
  %tobool16 = icmp ne i32 %5, 0, !dbg !3586
  %lnot17 = xor i1 %tobool16, true, !dbg !3586
  %lnot19 = xor i1 %lnot17, true, !dbg !3586
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3586
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3586
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3586
  store i64 %expval22, ptr %tmp, align 8, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3596
  %6 = load i64, ptr %tmp, align 8, !dbg !3586
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3597
  %len23 = getelementptr inbounds %struct.seq_buf, ptr %7, i32 0, i32 2, !dbg !3599
  %8 = load i64, ptr %len23, align 8, !dbg !3599
  %9 = load ptr, ptr %s.addr, align 8, !dbg !3600
  %size24 = getelementptr inbounds %struct.seq_buf, ptr %9, i32 0, i32 1, !dbg !3601
  %10 = load i64, ptr %size24, align 8, !dbg !3601
  %cmp25 = icmp ult i64 %8, %10, !dbg !3602
  br i1 %cmp25, label %if.then27, label %if.end41, !dbg !3603

if.then27:                                        ; preds = %if.end
  %11 = load ptr, ptr %s.addr, align 8, !dbg !3604
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %11, i32 0, i32 0, !dbg !3606
  %12 = load ptr, ptr %buffer, align 8, !dbg !3606
  %13 = load ptr, ptr %s.addr, align 8, !dbg !3607
  %len28 = getelementptr inbounds %struct.seq_buf, ptr %13, i32 0, i32 2, !dbg !3608
  %14 = load i64, ptr %len28, align 8, !dbg !3608
  %add.ptr = getelementptr i8, ptr %12, i64 %14, !dbg !3609
  %15 = load i32, ptr %len, align 4, !dbg !3610
  %conv29 = zext i32 %15 to i64, !dbg !3610
  %16 = load ptr, ptr %fmt.addr, align 8, !dbg !3611
  %17 = load ptr, ptr %binary.addr, align 8, !dbg !3612
  %call30 = call i32 @bstr_printf(ptr noundef %add.ptr, i64 noundef %conv29, ptr noundef %16, ptr noundef %17) #14, !dbg !3613
  store i32 %call30, ptr %ret, align 4, !dbg !3614
  %18 = load ptr, ptr %s.addr, align 8, !dbg !3615
  %len31 = getelementptr inbounds %struct.seq_buf, ptr %18, i32 0, i32 2, !dbg !3617
  %19 = load i64, ptr %len31, align 8, !dbg !3617
  %20 = load i32, ptr %ret, align 4, !dbg !3618
  %conv32 = sext i32 %20 to i64, !dbg !3618
  %add = add i64 %19, %conv32, !dbg !3619
  %21 = load ptr, ptr %s.addr, align 8, !dbg !3620
  %size33 = getelementptr inbounds %struct.seq_buf, ptr %21, i32 0, i32 1, !dbg !3621
  %22 = load i64, ptr %size33, align 8, !dbg !3621
  %cmp34 = icmp ult i64 %add, %22, !dbg !3622
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !3623

if.then36:                                        ; preds = %if.then27
  %23 = load i32, ptr %ret, align 4, !dbg !3624
  %conv37 = sext i32 %23 to i64, !dbg !3624
  %24 = load ptr, ptr %s.addr, align 8, !dbg !3626
  %len38 = getelementptr inbounds %struct.seq_buf, ptr %24, i32 0, i32 2, !dbg !3627
  %25 = load i64, ptr %len38, align 8, !dbg !3628
  %add39 = add i64 %25, %conv37, !dbg !3628
  store i64 %add39, ptr %len38, align 8, !dbg !3628
  store i32 0, ptr %retval, align 4, !dbg !3629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3629

if.end40:                                         ; preds = %if.then27
  br label %if.end41, !dbg !3630

if.end41:                                         ; preds = %if.end40, %if.end
  %26 = load ptr, ptr %s.addr, align 8, !dbg !3631
  call void @seq_buf_set_overflow(ptr noundef %26) #14, !dbg !3632
  store i32 -1, ptr %retval, align 4, !dbg !3633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3633

cleanup:                                          ; preds = %if.end41, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3634
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !3634
  %27 = load i32, ptr %retval, align 4, !dbg !3634
  ret i32 %27, !dbg !3634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_buf_buffer_left(ptr noundef %s) #3 align 16 !dbg !3635 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3637, metadata !DIExpression()), !dbg !3638
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3639
  %call = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %0) #14, !dbg !3641
  br i1 %call, label %if.then, label %if.end, !dbg !3642

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3643
  br label %return, !dbg !3643

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3644
  %size = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1, !dbg !3645
  %2 = load i64, ptr %size, align 8, !dbg !3645
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3646
  %len = getelementptr inbounds %struct.seq_buf, ptr %3, i32 0, i32 2, !dbg !3647
  %4 = load i64, ptr %len, align 8, !dbg !3647
  %sub = sub i64 %2, %4, !dbg !3648
  %conv = trunc i64 %sub to i32, !dbg !3644
  store i32 %conv, ptr %retval, align 4, !dbg !3649
  br label %return, !dbg !3649

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !3650
  ret i32 %5, !dbg !3650
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3651 dso_local i32 @bstr_printf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_puts(ptr noundef %s, ptr noundef %str) #0 align 16 !dbg !3654 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3658, metadata !DIExpression()), !dbg !3666
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3659, metadata !DIExpression()), !dbg !3667
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #13, !dbg !3668
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3660, metadata !DIExpression()), !dbg !3669
  %0 = load ptr, ptr %str.addr, align 8, !dbg !3670
  %call = call i64 @strlen(ptr noundef %0) #14, !dbg !3671
  store i64 %call, ptr %len, align 8, !dbg !3669
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3672
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3661, metadata !DIExpression()), !dbg !3672
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3672
  %size = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1, !dbg !3672
  %2 = load i64, ptr %size, align 8, !dbg !3672
  %cmp = icmp eq i64 %2, 0, !dbg !3672
  %lnot = xor i1 %cmp, true, !dbg !3672
  %lnot1 = xor i1 %lnot, true, !dbg !3672
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3672
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3672
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3673
  %tobool = icmp ne i32 %3, 0, !dbg !3673
  %lnot2 = xor i1 %tobool, true, !dbg !3673
  %lnot4 = xor i1 %lnot2, true, !dbg !3673
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3673
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3673
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3673
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3673
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3672

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3673

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3674
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3663, metadata !DIExpression()), !dbg !3674
  store i32 2305, ptr %__flags, align 4, !dbg !3674
  br label %do.body7, !dbg !3674

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3675

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3675

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3674

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !3677
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 176, i32 %4, i64 12) #13, !dbg !3677, !srcloc !3679
  br label %do.cond9, !dbg !3677

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3677

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3674

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3680

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3680

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3673
  br label %do.cond14, !dbg !3674

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3674

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3674

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3672
  %tobool16 = icmp ne i32 %5, 0, !dbg !3672
  %lnot17 = xor i1 %tobool16, true, !dbg !3672
  %lnot19 = xor i1 %lnot17, true, !dbg !3672
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3672
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3672
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3672
  store i64 %expval22, ptr %tmp, align 8, !dbg !3673
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3682
  %6 = load i64, ptr %tmp, align 8, !dbg !3672
  %7 = load i64, ptr %len, align 8, !dbg !3683
  %add = add i64 %7, 1, !dbg !3683
  store i64 %add, ptr %len, align 8, !dbg !3683
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3684
  %9 = load i64, ptr %len, align 8, !dbg !3686
  %call23 = call zeroext i1 @seq_buf_can_fit(ptr noundef %8, i64 noundef %9) #14, !dbg !3687
  br i1 %call23, label %if.then24, label %if.end28, !dbg !3688

if.then24:                                        ; preds = %if.end
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3689
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %10, i32 0, i32 0, !dbg !3691
  %11 = load ptr, ptr %buffer, align 8, !dbg !3691
  %12 = load ptr, ptr %s.addr, align 8, !dbg !3692
  %len25 = getelementptr inbounds %struct.seq_buf, ptr %12, i32 0, i32 2, !dbg !3693
  %13 = load i64, ptr %len25, align 8, !dbg !3693
  %add.ptr = getelementptr i8, ptr %11, i64 %13, !dbg !3694
  %14 = load ptr, ptr %str.addr, align 8, !dbg !3695
  %15 = load i64, ptr %len, align 8, !dbg !3696
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %14, i64 %15, i1 false), !dbg !3697
  %16 = load i64, ptr %len, align 8, !dbg !3698
  %sub = sub i64 %16, 1, !dbg !3699
  %17 = load ptr, ptr %s.addr, align 8, !dbg !3700
  %len26 = getelementptr inbounds %struct.seq_buf, ptr %17, i32 0, i32 2, !dbg !3701
  %18 = load i64, ptr %len26, align 8, !dbg !3702
  %add27 = add i64 %18, %sub, !dbg !3702
  store i64 %add27, ptr %len26, align 8, !dbg !3702
  store i32 0, ptr %retval, align 4, !dbg !3703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3703

if.end28:                                         ; preds = %if.end
  %19 = load ptr, ptr %s.addr, align 8, !dbg !3704
  call void @seq_buf_set_overflow(ptr noundef %19) #14, !dbg !3705
  store i32 -1, ptr %retval, align 4, !dbg !3706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3706

cleanup:                                          ; preds = %if.end28, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #13, !dbg !3707
  %20 = load i32, ptr %retval, align 4, !dbg !3707
  ret i32 %20, !dbg !3707
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3708 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @seq_buf_can_fit(ptr noundef %s, i64 noundef %len) #0 align 16 !dbg !3711 {
entry:
  %s.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3715, metadata !DIExpression()), !dbg !3717
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3716, metadata !DIExpression()), !dbg !3718
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3719
  %len1 = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !3720
  %1 = load i64, ptr %len1, align 8, !dbg !3720
  %2 = load i64, ptr %len.addr, align 8, !dbg !3721
  %add = add i64 %1, %2, !dbg !3722
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3723
  %size = getelementptr inbounds %struct.seq_buf, ptr %3, i32 0, i32 1, !dbg !3724
  %4 = load i64, ptr %size, align 8, !dbg !3724
  %cmp = icmp ule i64 %add, %4, !dbg !3725
  ret i1 %cmp, !dbg !3726
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_putc(ptr noundef %s, i8 noundef zeroext %c) #0 align 16 !dbg !3727 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3731, metadata !DIExpression()), !dbg !3738
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !3732, metadata !DIExpression()), !dbg !3739
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3740
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3733, metadata !DIExpression()), !dbg !3740
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3740
  %size = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1, !dbg !3740
  %1 = load i64, ptr %size, align 8, !dbg !3740
  %cmp = icmp eq i64 %1, 0, !dbg !3740
  %lnot = xor i1 %cmp, true, !dbg !3740
  %lnot1 = xor i1 %lnot, true, !dbg !3740
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3740
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3740
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3741
  %tobool = icmp ne i32 %2, 0, !dbg !3741
  %lnot2 = xor i1 %tobool, true, !dbg !3741
  %lnot4 = xor i1 %lnot2, true, !dbg !3741
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3741
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3741
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3741
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3741
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3740

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3741

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3742
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3735, metadata !DIExpression()), !dbg !3742
  store i32 2305, ptr %__flags, align 4, !dbg !3742
  br label %do.body7, !dbg !3742

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3743

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3743

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3742

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3745
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 202, i32 %3, i64 12) #13, !dbg !3745, !srcloc !3747
  br label %do.cond9, !dbg !3745

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3745

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3742

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3748

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3748

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3741
  br label %do.cond14, !dbg !3742

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3742

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3742

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3740
  %tobool16 = icmp ne i32 %4, 0, !dbg !3740
  %lnot17 = xor i1 %tobool16, true, !dbg !3740
  %lnot19 = xor i1 %lnot17, true, !dbg !3740
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3740
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3740
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3740
  store i64 %expval22, ptr %tmp, align 8, !dbg !3741
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3750
  %5 = load i64, ptr %tmp, align 8, !dbg !3740
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3751
  %call = call zeroext i1 @seq_buf_can_fit(ptr noundef %6, i64 noundef 1) #14, !dbg !3753
  br i1 %call, label %if.then23, label %if.end24, !dbg !3754

if.then23:                                        ; preds = %if.end
  %7 = load i8, ptr %c.addr, align 1, !dbg !3755
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3757
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %8, i32 0, i32 0, !dbg !3758
  %9 = load ptr, ptr %buffer, align 8, !dbg !3758
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3759
  %len = getelementptr inbounds %struct.seq_buf, ptr %10, i32 0, i32 2, !dbg !3760
  %11 = load i64, ptr %len, align 8, !dbg !3761
  %inc = add i64 %11, 1, !dbg !3761
  store i64 %inc, ptr %len, align 8, !dbg !3761
  %arrayidx = getelementptr i8, ptr %9, i64 %11, !dbg !3757
  store i8 %7, ptr %arrayidx, align 1, !dbg !3762
  store i32 0, ptr %retval, align 4, !dbg !3763
  br label %return, !dbg !3763

if.end24:                                         ; preds = %if.end
  %12 = load ptr, ptr %s.addr, align 8, !dbg !3764
  call void @seq_buf_set_overflow(ptr noundef %12) #14, !dbg !3765
  store i32 -1, ptr %retval, align 4, !dbg !3766
  br label %return, !dbg !3766

return:                                           ; preds = %if.end24, %if.then23
  %13 = load i32, ptr %retval, align 4, !dbg !3767
  ret i32 %13, !dbg !3767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_putmem(ptr noundef %s, ptr noundef %mem, i32 noundef %len) #0 align 16 !dbg !3768 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3772, metadata !DIExpression()), !dbg !3780
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !3773, metadata !DIExpression()), !dbg !3781
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3774, metadata !DIExpression()), !dbg !3782
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3783
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3775, metadata !DIExpression()), !dbg !3783
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3783
  %size = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1, !dbg !3783
  %1 = load i64, ptr %size, align 8, !dbg !3783
  %cmp = icmp eq i64 %1, 0, !dbg !3783
  %lnot = xor i1 %cmp, true, !dbg !3783
  %lnot1 = xor i1 %lnot, true, !dbg !3783
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3783
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3783
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3784
  %tobool = icmp ne i32 %2, 0, !dbg !3784
  %lnot2 = xor i1 %tobool, true, !dbg !3784
  %lnot4 = xor i1 %lnot2, true, !dbg !3784
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3784
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3784
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3784
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3784
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3783

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3784

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3785
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3777, metadata !DIExpression()), !dbg !3785
  store i32 2305, ptr %__flags, align 4, !dbg !3785
  br label %do.body7, !dbg !3785

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3786

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3786

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3785

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3788
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 226, i32 %3, i64 12) #13, !dbg !3788, !srcloc !3790
  br label %do.cond9, !dbg !3788

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3788

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3785

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3791

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3791

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3784
  br label %do.cond14, !dbg !3785

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3785

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3785

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3783
  %tobool16 = icmp ne i32 %4, 0, !dbg !3783
  %lnot17 = xor i1 %tobool16, true, !dbg !3783
  %lnot19 = xor i1 %lnot17, true, !dbg !3783
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3783
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3783
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3783
  store i64 %expval22, ptr %tmp, align 8, !dbg !3784
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3793
  %5 = load i64, ptr %tmp, align 8, !dbg !3783
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3794
  %7 = load i32, ptr %len.addr, align 4, !dbg !3796
  %conv23 = zext i32 %7 to i64, !dbg !3796
  %call = call zeroext i1 @seq_buf_can_fit(ptr noundef %6, i64 noundef %conv23) #14, !dbg !3797
  br i1 %call, label %if.then24, label %if.end29, !dbg !3798

if.then24:                                        ; preds = %if.end
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3799
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %8, i32 0, i32 0, !dbg !3801
  %9 = load ptr, ptr %buffer, align 8, !dbg !3801
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3802
  %len25 = getelementptr inbounds %struct.seq_buf, ptr %10, i32 0, i32 2, !dbg !3803
  %11 = load i64, ptr %len25, align 8, !dbg !3803
  %add.ptr = getelementptr i8, ptr %9, i64 %11, !dbg !3804
  %12 = load ptr, ptr %mem.addr, align 8, !dbg !3805
  %13 = load i32, ptr %len.addr, align 4, !dbg !3806
  %conv26 = zext i32 %13 to i64, !dbg !3806
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %12, i64 %conv26, i1 false), !dbg !3807
  %14 = load i32, ptr %len.addr, align 4, !dbg !3808
  %conv27 = zext i32 %14 to i64, !dbg !3808
  %15 = load ptr, ptr %s.addr, align 8, !dbg !3809
  %len28 = getelementptr inbounds %struct.seq_buf, ptr %15, i32 0, i32 2, !dbg !3810
  %16 = load i64, ptr %len28, align 8, !dbg !3811
  %add = add i64 %16, %conv27, !dbg !3811
  store i64 %add, ptr %len28, align 8, !dbg !3811
  store i32 0, ptr %retval, align 4, !dbg !3812
  br label %return, !dbg !3812

if.end29:                                         ; preds = %if.end
  %17 = load ptr, ptr %s.addr, align 8, !dbg !3813
  call void @seq_buf_set_overflow(ptr noundef %17) #14, !dbg !3814
  store i32 -1, ptr %retval, align 4, !dbg !3815
  br label %return, !dbg !3815

return:                                           ; preds = %if.end29, %if.then24
  %18 = load i32, ptr %retval, align 4, !dbg !3816
  ret i32 %18, !dbg !3816
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_putmem_hex(ptr noundef %s, ptr noundef %mem, i32 noundef %len) #0 align 16 !dbg !3817 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %hex = alloca [17 x i8], align 16
  %data = alloca ptr, align 8
  %start_len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x254 = alloca i32, align 4
  %__UNIQUE_ID___y255 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %__ret_warn_on46 = alloca i32, align 4
  %__flags65 = alloca i32, align 4
  %tmp78 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3819, metadata !DIExpression()), !dbg !3845
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !3820, metadata !DIExpression()), !dbg !3846
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3821, metadata !DIExpression()), !dbg !3847
  call void @llvm.lifetime.start.p0(i64 17, ptr %hex) #13, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %hex, metadata !3822, metadata !DIExpression()), !dbg !3849
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #13, !dbg !3850
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3826, metadata !DIExpression()), !dbg !3851
  %0 = load ptr, ptr %mem.addr, align 8, !dbg !3852
  store ptr %0, ptr %data, align 8, !dbg !3851
  call void @llvm.lifetime.start.p0(i64 4, ptr %start_len) #13, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %start_len, metadata !3827, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3828, metadata !DIExpression()), !dbg !3856
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3829, metadata !DIExpression()), !dbg !3857
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3858
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3830, metadata !DIExpression()), !dbg !3858
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3858
  %size = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1, !dbg !3858
  %2 = load i64, ptr %size, align 8, !dbg !3858
  %cmp = icmp eq i64 %2, 0, !dbg !3858
  %lnot = xor i1 %cmp, true, !dbg !3858
  %lnot1 = xor i1 %lnot, true, !dbg !3858
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3858
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3858
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3859
  %tobool = icmp ne i32 %3, 0, !dbg !3859
  %lnot2 = xor i1 %tobool, true, !dbg !3859
  %lnot4 = xor i1 %lnot2, true, !dbg !3859
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3859
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3859
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3859
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3859
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3858

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3859

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3860
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3832, metadata !DIExpression()), !dbg !3860
  store i32 2305, ptr %__flags, align 4, !dbg !3860
  br label %do.body7, !dbg !3860

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3861

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3861

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3860

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !3863
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 260, i32 %4, i64 12) #13, !dbg !3863, !srcloc !3865
  br label %do.cond9, !dbg !3863

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3863

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3860

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3866

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3866

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3859
  br label %do.cond14, !dbg !3860

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3860

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3860

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3858
  %tobool16 = icmp ne i32 %5, 0, !dbg !3858
  %lnot17 = xor i1 %tobool16, true, !dbg !3858
  %lnot19 = xor i1 %lnot17, true, !dbg !3858
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3858
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3858
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3858
  store i64 %expval22, ptr %tmp, align 8, !dbg !3859
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3868
  %6 = load i64, ptr %tmp, align 8, !dbg !3858
  br label %do.body23, !dbg !3869

do.body23:                                        ; preds = %if.end
  br label %do.cond24, !dbg !3870

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !3870

do.end25:                                         ; preds = %do.cond24
  br label %while.cond, !dbg !3872

while.cond:                                       ; preds = %if.end94, %do.end25
  %7 = load i32, ptr %len.addr, align 4, !dbg !3873
  %tobool26 = icmp ne i32 %7, 0, !dbg !3872
  br i1 %tobool26, label %while.body, label %while.end, !dbg !3872

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x254) #13, !dbg !3874
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x254, metadata !3835, metadata !DIExpression()), !dbg !3874
  %8 = load i32, ptr %len.addr, align 4, !dbg !3874
  store i32 %8, ptr %__UNIQUE_ID___x254, align 4, !dbg !3874
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y255) #13, !dbg !3874
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y255, metadata !3838, metadata !DIExpression()), !dbg !3874
  store i32 8, ptr %__UNIQUE_ID___y255, align 4, !dbg !3874
  %9 = load i32, ptr %__UNIQUE_ID___x254, align 4, !dbg !3874
  %10 = load i32, ptr %__UNIQUE_ID___y255, align 4, !dbg !3874
  %cmp28 = icmp ult i32 %9, %10, !dbg !3874
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !3874

cond.true:                                        ; preds = %while.body
  %11 = load i32, ptr %__UNIQUE_ID___x254, align 4, !dbg !3874
  br label %cond.end, !dbg !3874

cond.false:                                       ; preds = %while.body
  %12 = load i32, ptr %__UNIQUE_ID___y255, align 4, !dbg !3874
  br label %cond.end, !dbg !3874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !3874
  store i32 %cond, ptr %tmp27, align 4, !dbg !3874
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y255) #13, !dbg !3875
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x254) #13, !dbg !3875
  %13 = load i32, ptr %tmp27, align 4, !dbg !3874
  store i32 %13, ptr %start_len, align 4, !dbg !3876
  %14 = load i32, ptr %start_len, align 4, !dbg !3877
  %sub = sub i32 %14, 1, !dbg !3879
  store i32 %sub, ptr %i, align 4, !dbg !3880
  store i32 0, ptr %j, align 4, !dbg !3881
  br label %for.cond, !dbg !3882

for.cond:                                         ; preds = %for.inc, %cond.end
  %15 = load i32, ptr %i, align 4, !dbg !3883
  %cmp30 = icmp sge i32 %15, 0, !dbg !3885
  br i1 %cmp30, label %for.body, label %for.end, !dbg !3886

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %data, align 8, !dbg !3887
  %17 = load i32, ptr %i, align 4, !dbg !3887
  %idxprom = sext i32 %17 to i64, !dbg !3887
  %arrayidx = getelementptr i8, ptr %16, i64 %idxprom, !dbg !3887
  %18 = load i8, ptr %arrayidx, align 1, !dbg !3887
  %conv32 = zext i8 %18 to i32, !dbg !3887
  %and = and i32 %conv32, 240, !dbg !3887
  %shr = ashr i32 %and, 4, !dbg !3887
  %idxprom33 = sext i32 %shr to i64, !dbg !3887
  %arrayidx34 = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom33, !dbg !3887
  %19 = load i8, ptr %arrayidx34, align 1, !dbg !3887
  %20 = load i32, ptr %j, align 4, !dbg !3889
  %inc = add i32 %20, 1, !dbg !3889
  store i32 %inc, ptr %j, align 4, !dbg !3889
  %idxprom35 = sext i32 %20 to i64, !dbg !3890
  %arrayidx36 = getelementptr [17 x i8], ptr %hex, i64 0, i64 %idxprom35, !dbg !3890
  store i8 %19, ptr %arrayidx36, align 1, !dbg !3891
  %21 = load ptr, ptr %data, align 8, !dbg !3892
  %22 = load i32, ptr %i, align 4, !dbg !3892
  %idxprom37 = sext i32 %22 to i64, !dbg !3892
  %arrayidx38 = getelementptr i8, ptr %21, i64 %idxprom37, !dbg !3892
  %23 = load i8, ptr %arrayidx38, align 1, !dbg !3892
  %conv39 = zext i8 %23 to i32, !dbg !3892
  %and40 = and i32 %conv39, 15, !dbg !3892
  %idxprom41 = sext i32 %and40 to i64, !dbg !3892
  %arrayidx42 = getelementptr [0 x i8], ptr @hex_asc, i64 0, i64 %idxprom41, !dbg !3892
  %24 = load i8, ptr %arrayidx42, align 1, !dbg !3892
  %25 = load i32, ptr %j, align 4, !dbg !3893
  %inc43 = add i32 %25, 1, !dbg !3893
  store i32 %inc43, ptr %j, align 4, !dbg !3893
  %idxprom44 = sext i32 %25 to i64, !dbg !3894
  %arrayidx45 = getelementptr [17 x i8], ptr %hex, i64 0, i64 %idxprom44, !dbg !3894
  store i8 %24, ptr %arrayidx45, align 1, !dbg !3895
  br label %for.inc, !dbg !3896

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !3897
  %dec = add i32 %26, -1, !dbg !3897
  store i32 %dec, ptr %i, align 4, !dbg !3897
  br label %for.cond, !dbg !3898, !llvm.loop !3899

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on46) #13, !dbg !3901
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on46, metadata !3839, metadata !DIExpression()), !dbg !3901
  %27 = load i32, ptr %j, align 4, !dbg !3901
  %cmp47 = icmp eq i32 %27, 0, !dbg !3901
  br i1 %cmp47, label %lor.end, label %lor.rhs, !dbg !3901

lor.rhs:                                          ; preds = %for.end
  %28 = load i32, ptr %j, align 4, !dbg !3901
  %div = sdiv i32 %28, 2, !dbg !3901
  %29 = load i32, ptr %len.addr, align 4, !dbg !3901
  %cmp49 = icmp ugt i32 %div, %29, !dbg !3901
  br label %lor.end, !dbg !3901

lor.end:                                          ; preds = %lor.rhs, %for.end
  %30 = phi i1 [ true, %for.end ], [ %cmp49, %lor.rhs ]
  %lnot51 = xor i1 %30, true, !dbg !3901
  %lnot53 = xor i1 %lnot51, true, !dbg !3901
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !3901
  store i32 %lnot.ext54, ptr %__ret_warn_on46, align 4, !dbg !3901
  %31 = load i32, ptr %__ret_warn_on46, align 4, !dbg !3902
  %tobool55 = icmp ne i32 %31, 0, !dbg !3902
  %lnot56 = xor i1 %tobool55, true, !dbg !3902
  %lnot58 = xor i1 %lnot56, true, !dbg !3902
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !3902
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !3902
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !3902
  %tobool62 = icmp ne i64 %expval61, 0, !dbg !3902
  br i1 %tobool62, label %if.then63, label %if.end77, !dbg !3901

if.then63:                                        ; preds = %lor.end
  br label %do.body64, !dbg !3902

do.body64:                                        ; preds = %if.then63
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags65) #13, !dbg !3903
  call void @llvm.dbg.declare(metadata ptr %__flags65, metadata !3842, metadata !DIExpression()), !dbg !3903
  store i32 2307, ptr %__flags65, align 4, !dbg !3903
  br label %do.body66, !dbg !3903

do.body66:                                        ; preds = %do.body64
  br label %do.cond67, !dbg !3904

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !3904

do.end68:                                         ; preds = %do.cond67
  br label %do.body69, !dbg !3903

do.body69:                                        ; preds = %do.end68
  %32 = load i32, ptr %__flags65, align 4, !dbg !3906
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 274, i32 %32, i64 12) #13, !dbg !3906, !srcloc !3908
  br label %do.cond70, !dbg !3906

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !3906

do.end71:                                         ; preds = %do.cond70
  br label %do.body72, !dbg !3903

do.body72:                                        ; preds = %do.end71
  br label %do.cond73, !dbg !3909

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !3909

do.end74:                                         ; preds = %do.cond73
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags65) #13, !dbg !3902
  br label %do.cond75, !dbg !3903

do.cond75:                                        ; preds = %do.end74
  br label %do.end76, !dbg !3903

do.end76:                                         ; preds = %do.cond75
  br label %if.end77, !dbg !3903

if.end77:                                         ; preds = %do.end76, %lor.end
  %33 = load i32, ptr %__ret_warn_on46, align 4, !dbg !3901
  %tobool79 = icmp ne i32 %33, 0, !dbg !3901
  %lnot80 = xor i1 %tobool79, true, !dbg !3901
  %lnot82 = xor i1 %lnot80, true, !dbg !3901
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !3901
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !3901
  %expval85 = call i64 @llvm.expect.i64(i64 %conv84, i64 0), !dbg !3901
  store i64 %expval85, ptr %tmp78, align 8, !dbg !3902
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on46) #13, !dbg !3911
  %34 = load i64, ptr %tmp78, align 8, !dbg !3901
  %tobool86 = icmp ne i64 %34, 0, !dbg !3911
  br i1 %tobool86, label %if.then87, label %if.end88, !dbg !3912

if.then87:                                        ; preds = %if.end77
  br label %while.end, !dbg !3913

if.end88:                                         ; preds = %if.end77
  %35 = load i32, ptr %j, align 4, !dbg !3914
  %inc89 = add i32 %35, 1, !dbg !3914
  store i32 %inc89, ptr %j, align 4, !dbg !3914
  %idxprom90 = sext i32 %35 to i64, !dbg !3915
  %arrayidx91 = getelementptr [17 x i8], ptr %hex, i64 0, i64 %idxprom90, !dbg !3915
  store i8 32, ptr %arrayidx91, align 1, !dbg !3916
  %36 = load ptr, ptr %s.addr, align 8, !dbg !3917
  %arraydecay = getelementptr inbounds [17 x i8], ptr %hex, i64 0, i64 0, !dbg !3918
  %37 = load i32, ptr %j, align 4, !dbg !3919
  %call = call i32 @seq_buf_putmem(ptr noundef %36, ptr noundef %arraydecay, i32 noundef %37) #14, !dbg !3920
  %38 = load ptr, ptr %s.addr, align 8, !dbg !3921
  %call92 = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %38) #14, !dbg !3923
  br i1 %call92, label %if.then93, label %if.end94, !dbg !3924

if.then93:                                        ; preds = %if.end88
  store i32 -1, ptr %retval, align 4, !dbg !3925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3925

if.end94:                                         ; preds = %if.end88
  %39 = load i32, ptr %start_len, align 4, !dbg !3926
  %40 = load i32, ptr %len.addr, align 4, !dbg !3927
  %sub95 = sub i32 %40, %39, !dbg !3927
  store i32 %sub95, ptr %len.addr, align 4, !dbg !3927
  %41 = load i32, ptr %start_len, align 4, !dbg !3928
  %42 = load ptr, ptr %data, align 8, !dbg !3929
  %idx.ext = zext i32 %41 to i64, !dbg !3929
  %add.ptr = getelementptr i8, ptr %42, i64 %idx.ext, !dbg !3929
  store ptr %add.ptr, ptr %data, align 8, !dbg !3929
  br label %while.cond, !dbg !3872, !llvm.loop !3930

while.end:                                        ; preds = %if.then87, %while.cond
  store i32 0, ptr %retval, align 4, !dbg !3932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3932

cleanup:                                          ; preds = %while.end, %if.then93
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !3933
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !3933
  call void @llvm.lifetime.end.p0(i64 4, ptr %start_len) #13, !dbg !3933
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #13, !dbg !3933
  call void @llvm.lifetime.end.p0(i64 17, ptr %hex) #13, !dbg !3933
  %43 = load i32, ptr %retval, align 4, !dbg !3933
  ret i32 %43, !dbg !3933
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @seq_buf_has_overflowed(ptr noundef %s) #3 align 16 !dbg !3934 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3938, metadata !DIExpression()), !dbg !3939
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3940
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !3941
  %1 = load i64, ptr %len, align 8, !dbg !3941
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3942
  %size = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 1, !dbg !3943
  %3 = load i64, ptr %size, align 8, !dbg !3943
  %cmp = icmp ugt i64 %1, %3, !dbg !3944
  ret i1 %cmp, !dbg !3945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_path(ptr noundef %s, ptr noundef %path, ptr noundef %esc) #0 align 16 !dbg !3946 {
entry:
  %s.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %esc.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %size = alloca i64, align 8
  %res = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %p = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3950, metadata !DIExpression()), !dbg !3967
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3951, metadata !DIExpression()), !dbg !3968
  store ptr %esc, ptr %esc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %esc.addr, metadata !3952, metadata !DIExpression()), !dbg !3969
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #13, !dbg !3970
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !3953, metadata !DIExpression()), !dbg !3971
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3954, metadata !DIExpression()), !dbg !3973
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3974
  %call = call i64 @seq_buf_get_buf(ptr noundef %0, ptr noundef %buf) #14, !dbg !3975
  store i64 %call, ptr %size, align 8, !dbg !3973
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #13, !dbg !3976
  call void @llvm.dbg.declare(metadata ptr %res, metadata !3955, metadata !DIExpression()), !dbg !3977
  store i32 -1, ptr %res, align 4, !dbg !3977
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3956, metadata !DIExpression()), !dbg !3978
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3978
  %size1 = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1, !dbg !3978
  %2 = load i64, ptr %size1, align 8, !dbg !3978
  %cmp = icmp eq i64 %2, 0, !dbg !3978
  %lnot = xor i1 %cmp, true, !dbg !3978
  %lnot2 = xor i1 %lnot, true, !dbg !3978
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3978
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3978
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3979
  %tobool = icmp ne i32 %3, 0, !dbg !3979
  %lnot3 = xor i1 %tobool, true, !dbg !3979
  %lnot5 = xor i1 %lnot3, true, !dbg !3979
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3979
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3979
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3979
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3979
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3978

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3979

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3980
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3958, metadata !DIExpression()), !dbg !3980
  store i32 2305, ptr %__flags, align 4, !dbg !3980
  br label %do.body8, !dbg !3980

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3981

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3981

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3980

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !3983
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 306, i32 %4, i64 12) #13, !dbg !3983, !srcloc !3985
  br label %do.cond10, !dbg !3983

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3983

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3980

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3986

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3986

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3979
  br label %do.cond15, !dbg !3980

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3980

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3980

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3978
  %tobool17 = icmp ne i32 %5, 0, !dbg !3978
  %lnot18 = xor i1 %tobool17, true, !dbg !3978
  %lnot20 = xor i1 %lnot18, true, !dbg !3978
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3978
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3978
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3978
  store i64 %expval23, ptr %tmp, align 8, !dbg !3979
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3988
  %6 = load i64, ptr %tmp, align 8, !dbg !3978
  %7 = load i64, ptr %size, align 8, !dbg !3989
  %tobool24 = icmp ne i64 %7, 0, !dbg !3989
  br i1 %tobool24, label %if.then25, label %if.end36, !dbg !3990

if.then25:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !3991
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3961, metadata !DIExpression()), !dbg !3992
  %8 = load ptr, ptr %path.addr, align 8, !dbg !3993
  %9 = load ptr, ptr %buf, align 8, !dbg !3994
  %10 = load i64, ptr %size, align 8, !dbg !3995
  %conv26 = trunc i64 %10 to i32, !dbg !3995
  %call27 = call ptr @d_path(ptr noundef %8, ptr noundef %9, i32 noundef %conv26) #14, !dbg !3996
  store ptr %call27, ptr %p, align 8, !dbg !3992
  %11 = load ptr, ptr %p, align 8, !dbg !3997
  %call28 = call zeroext i1 @IS_ERR(ptr noundef %11) #14, !dbg !3998
  br i1 %call28, label %if.end35, label %if.then29, !dbg !3999

if.then29:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !4000
  call void @llvm.dbg.declare(metadata ptr %end, metadata !3964, metadata !DIExpression()), !dbg !4001
  %12 = load ptr, ptr %buf, align 8, !dbg !4002
  %13 = load ptr, ptr %p, align 8, !dbg !4003
  %14 = load ptr, ptr %esc.addr, align 8, !dbg !4004
  %call30 = call ptr @mangle_path(ptr noundef %12, ptr noundef %13, ptr noundef %14) #14, !dbg !4005
  store ptr %call30, ptr %end, align 8, !dbg !4001
  %15 = load ptr, ptr %end, align 8, !dbg !4006
  %tobool31 = icmp ne ptr %15, null, !dbg !4006
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !4008

if.then32:                                        ; preds = %if.then29
  %16 = load ptr, ptr %end, align 8, !dbg !4009
  %17 = load ptr, ptr %buf, align 8, !dbg !4010
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64, !dbg !4011
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64, !dbg !4011
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4011
  %conv33 = trunc i64 %sub.ptr.sub to i32, !dbg !4009
  store i32 %conv33, ptr %res, align 4, !dbg !4012
  br label %if.end34, !dbg !4013

if.end34:                                         ; preds = %if.then32, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !4014
  br label %if.end35, !dbg !4015

if.end35:                                         ; preds = %if.end34, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !4016
  br label %if.end36, !dbg !4017

if.end36:                                         ; preds = %if.end35, %if.end
  %18 = load ptr, ptr %s.addr, align 8, !dbg !4018
  %19 = load i32, ptr %res, align 4, !dbg !4019
  call void @seq_buf_commit(ptr noundef %18, i32 noundef %19) #14, !dbg !4020
  %20 = load i32, ptr %res, align 4, !dbg !4021
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #13, !dbg !4022
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !4022
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #13, !dbg !4022
  ret i32 %20, !dbg !4023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @seq_buf_get_buf(ptr noundef %s, ptr noundef %bufp) #3 align 16 !dbg !4024 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %bufp.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4029, metadata !DIExpression()), !dbg !4036
  store ptr %bufp, ptr %bufp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bufp.addr, metadata !4030, metadata !DIExpression()), !dbg !4037
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4038
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4031, metadata !DIExpression()), !dbg !4038
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4038
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !4038
  %1 = load i64, ptr %len, align 8, !dbg !4038
  %2 = load ptr, ptr %s.addr, align 8, !dbg !4038
  %size = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 1, !dbg !4038
  %3 = load i64, ptr %size, align 8, !dbg !4038
  %add = add i64 %3, 1, !dbg !4038
  %cmp = icmp ugt i64 %1, %add, !dbg !4038
  %lnot = xor i1 %cmp, true, !dbg !4038
  %lnot1 = xor i1 %lnot, true, !dbg !4038
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4038
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4038
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4039
  %tobool = icmp ne i32 %4, 0, !dbg !4039
  %lnot2 = xor i1 %tobool, true, !dbg !4039
  %lnot4 = xor i1 %lnot2, true, !dbg !4039
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !4039
  %conv = sext i32 %lnot.ext5 to i64, !dbg !4039
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4039
  %tobool6 = icmp ne i64 %expval, 0, !dbg !4039
  br i1 %tobool6, label %if.then, label %if.end, !dbg !4038

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4039

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !4040
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4033, metadata !DIExpression()), !dbg !4040
  store i32 2305, ptr %__flags, align 4, !dbg !4040
  br label %do.body7, !dbg !4040

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !4041

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !4041

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !4040

do.body8:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !4043
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 118, i32 %5, i64 12) #13, !dbg !4043, !srcloc !4045
  br label %do.cond9, !dbg !4043

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4043

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !4040

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !4046

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4046

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !4039
  br label %do.cond14, !dbg !4040

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4040

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !4040

if.end:                                           ; preds = %do.end15, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4038
  %tobool16 = icmp ne i32 %6, 0, !dbg !4038
  %lnot17 = xor i1 %tobool16, true, !dbg !4038
  %lnot19 = xor i1 %lnot17, true, !dbg !4038
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4038
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4038
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !4038
  store i64 %expval22, ptr %tmp, align 8, !dbg !4039
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4048
  %7 = load i64, ptr %tmp, align 8, !dbg !4038
  %8 = load ptr, ptr %s.addr, align 8, !dbg !4049
  %len23 = getelementptr inbounds %struct.seq_buf, ptr %8, i32 0, i32 2, !dbg !4051
  %9 = load i64, ptr %len23, align 8, !dbg !4051
  %10 = load ptr, ptr %s.addr, align 8, !dbg !4052
  %size24 = getelementptr inbounds %struct.seq_buf, ptr %10, i32 0, i32 1, !dbg !4053
  %11 = load i64, ptr %size24, align 8, !dbg !4053
  %cmp25 = icmp ult i64 %9, %11, !dbg !4054
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !4055

if.then27:                                        ; preds = %if.end
  %12 = load ptr, ptr %s.addr, align 8, !dbg !4056
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %12, i32 0, i32 0, !dbg !4058
  %13 = load ptr, ptr %buffer, align 8, !dbg !4058
  %14 = load ptr, ptr %s.addr, align 8, !dbg !4059
  %len28 = getelementptr inbounds %struct.seq_buf, ptr %14, i32 0, i32 2, !dbg !4060
  %15 = load i64, ptr %len28, align 8, !dbg !4060
  %add.ptr = getelementptr i8, ptr %13, i64 %15, !dbg !4061
  %16 = load ptr, ptr %bufp.addr, align 8, !dbg !4062
  store ptr %add.ptr, ptr %16, align 8, !dbg !4063
  %17 = load ptr, ptr %s.addr, align 8, !dbg !4064
  %size29 = getelementptr inbounds %struct.seq_buf, ptr %17, i32 0, i32 1, !dbg !4065
  %18 = load i64, ptr %size29, align 8, !dbg !4065
  %19 = load ptr, ptr %s.addr, align 8, !dbg !4066
  %len30 = getelementptr inbounds %struct.seq_buf, ptr %19, i32 0, i32 2, !dbg !4067
  %20 = load i64, ptr %len30, align 8, !dbg !4067
  %sub = sub i64 %18, %20, !dbg !4068
  store i64 %sub, ptr %retval, align 8, !dbg !4069
  br label %return, !dbg !4069

if.end31:                                         ; preds = %if.end
  %21 = load ptr, ptr %bufp.addr, align 8, !dbg !4070
  store ptr null, ptr %21, align 8, !dbg !4071
  store i64 0, ptr %retval, align 8, !dbg !4072
  br label %return, !dbg !4072

return:                                           ; preds = %if.end31, %if.then27
  %22 = load i64, ptr %retval, align 8, !dbg !4073
  ret i64 %22, !dbg !4073
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4074 dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4077 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4082, metadata !DIExpression()), !dbg !4083
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4084
  %1 = ptrtoint ptr %0 to i64, !dbg !4084
  %2 = inttoptr i64 %1 to ptr, !dbg !4084
  %3 = ptrtoint ptr %2 to i64, !dbg !4084
  %cmp = icmp uge i64 %3, -4095, !dbg !4084
  %lnot = xor i1 %cmp, true, !dbg !4084
  %lnot1 = xor i1 %lnot, true, !dbg !4084
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4084
  %conv = sext i32 %lnot.ext to i64, !dbg !4084
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4084
  %tobool = icmp ne i64 %expval, 0, !dbg !4084
  ret i1 %tobool, !dbg !4085
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4086 dso_local ptr @mangle_path(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_buf_commit(ptr noundef %s, i32 noundef %num) #3 align 16 !dbg !4089 {
entry:
  %s.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4093, metadata !DIExpression()), !dbg !4095
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !4094, metadata !DIExpression()), !dbg !4096
  %0 = load i32, ptr %num.addr, align 4, !dbg !4097
  %cmp = icmp slt i32 %0, 0, !dbg !4099
  br i1 %cmp, label %if.then, label %if.else, !dbg !4100

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !4101
  call void @seq_buf_set_overflow(ptr noundef %1) #14, !dbg !4103
  br label %if.end15, !dbg !4104

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !4105

do.body:                                          ; preds = %if.else
  %2 = load ptr, ptr %s.addr, align 8, !dbg !4107
  %len = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 2, !dbg !4107
  %3 = load i64, ptr %len, align 8, !dbg !4107
  %4 = load i32, ptr %num.addr, align 4, !dbg !4107
  %conv = sext i32 %4 to i64, !dbg !4107
  %add = add i64 %3, %conv, !dbg !4107
  %5 = load ptr, ptr %s.addr, align 8, !dbg !4107
  %size = getelementptr inbounds %struct.seq_buf, ptr %5, i32 0, i32 1, !dbg !4107
  %6 = load i64, ptr %size, align 8, !dbg !4107
  %cmp1 = icmp ugt i64 %add, %6, !dbg !4107
  %lnot = xor i1 %cmp1, true, !dbg !4107
  %lnot3 = xor i1 %lnot, true, !dbg !4107
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4107
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4107
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !4107
  %tobool = icmp ne i64 %expval, 0, !dbg !4107
  br i1 %tobool, label %if.then5, label %if.end, !dbg !4110

if.then5:                                         ; preds = %do.body
  br label %do.body6, !dbg !4107

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !4111

do.body7:                                         ; preds = %do.body6
  br label %do.end, !dbg !4113

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !4111

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 144, i32 0, i64 12) #13, !dbg !4115, !srcloc !4117
  br label %do.end9, !dbg !4115

do.end9:                                          ; preds = %do.body8
  unreachable, !dbg !4111

do.end10:                                         ; No predecessors!
  br label %if.end, !dbg !4111

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !4110

do.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %num.addr, align 4, !dbg !4118
  %conv12 = sext i32 %7 to i64, !dbg !4118
  %8 = load ptr, ptr %s.addr, align 8, !dbg !4119
  %len13 = getelementptr inbounds %struct.seq_buf, ptr %8, i32 0, i32 2, !dbg !4120
  %9 = load i64, ptr %len13, align 8, !dbg !4121
  %add14 = add i64 %9, %conv12, !dbg !4121
  store i64 %add14, ptr %len13, align 8, !dbg !4121
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.then
  ret void, !dbg !4122
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_to_user(ptr noundef %s, ptr noundef %ubuf, i64 noundef %start, i32 noundef %cnt) #0 align 16 !dbg !4123 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %cnt.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4127, metadata !DIExpression()), !dbg !4133
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !4128, metadata !DIExpression()), !dbg !4134
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4129, metadata !DIExpression()), !dbg !4135
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !4130, metadata !DIExpression()), !dbg !4136
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !4137
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4131, metadata !DIExpression()), !dbg !4138
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !4139
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4132, metadata !DIExpression()), !dbg !4140
  %0 = load i32, ptr %cnt.addr, align 4, !dbg !4141
  %tobool = icmp ne i32 %0, 0, !dbg !4141
  br i1 %tobool, label %if.end, label %if.then, !dbg !4143

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4144

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !4145
  %call = call i32 @seq_buf_used(ptr noundef %1) #14, !dbg !4146
  store i32 %call, ptr %len, align 4, !dbg !4147
  %2 = load i32, ptr %len, align 4, !dbg !4148
  %conv = sext i32 %2 to i64, !dbg !4148
  %3 = load i64, ptr %start.addr, align 8, !dbg !4150
  %cmp = icmp ule i64 %conv, %3, !dbg !4151
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4152

if.then2:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !4153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4153

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %start.addr, align 8, !dbg !4154
  %5 = load i32, ptr %len, align 4, !dbg !4155
  %conv4 = sext i32 %5 to i64, !dbg !4155
  %sub = sub i64 %conv4, %4, !dbg !4155
  %conv5 = trunc i64 %sub to i32, !dbg !4155
  store i32 %conv5, ptr %len, align 4, !dbg !4155
  %6 = load i32, ptr %cnt.addr, align 4, !dbg !4156
  %7 = load i32, ptr %len, align 4, !dbg !4158
  %cmp6 = icmp sgt i32 %6, %7, !dbg !4159
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4160

if.then8:                                         ; preds = %if.end3
  %8 = load i32, ptr %len, align 4, !dbg !4161
  store i32 %8, ptr %cnt.addr, align 4, !dbg !4162
  br label %if.end9, !dbg !4163

if.end9:                                          ; preds = %if.then8, %if.end3
  %9 = load ptr, ptr %ubuf.addr, align 8, !dbg !4164
  %10 = load ptr, ptr %s.addr, align 8, !dbg !4165
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %10, i32 0, i32 0, !dbg !4166
  %11 = load ptr, ptr %buffer, align 8, !dbg !4166
  %12 = load i64, ptr %start.addr, align 8, !dbg !4167
  %add.ptr = getelementptr i8, ptr %11, i64 %12, !dbg !4168
  %13 = load i32, ptr %cnt.addr, align 4, !dbg !4169
  %conv10 = sext i32 %13 to i64, !dbg !4169
  %call11 = call i64 @copy_to_user(ptr noundef %9, ptr noundef %add.ptr, i64 noundef %conv10) #14, !dbg !4170
  %conv12 = trunc i64 %call11 to i32, !dbg !4170
  store i32 %conv12, ptr %ret, align 4, !dbg !4171
  %14 = load i32, ptr %ret, align 4, !dbg !4172
  %15 = load i32, ptr %cnt.addr, align 4, !dbg !4174
  %cmp13 = icmp eq i32 %14, %15, !dbg !4175
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !4176

if.then15:                                        ; preds = %if.end9
  store i32 -14, ptr %retval, align 4, !dbg !4177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4177

if.end16:                                         ; preds = %if.end9
  %16 = load i32, ptr %cnt.addr, align 4, !dbg !4178
  %17 = load i32, ptr %ret, align 4, !dbg !4179
  %sub17 = sub i32 %16, %17, !dbg !4180
  store i32 %sub17, ptr %retval, align 4, !dbg !4181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4181

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !4182
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !4182
  %18 = load i32, ptr %retval, align 4, !dbg !4182
  ret i32 %18, !dbg !4182
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #9 align 16 !dbg !4183 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4188, metadata !DIExpression()), !dbg !4191
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4189, metadata !DIExpression()), !dbg !4192
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4190, metadata !DIExpression()), !dbg !4193
  %0 = load ptr, ptr %from.addr, align 8, !dbg !4194
  %1 = load i64, ptr %n.addr, align 8, !dbg !4196
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #14, !dbg !4197
  br i1 %call, label %if.then, label %if.end, !dbg !4198

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4199
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4200
  %4 = load i64, ptr %n.addr, align 8, !dbg !4201
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !4202
  store i64 %call1, ptr %n.addr, align 8, !dbg !4203
  br label %if.end, !dbg !4204

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4205
  ret i64 %5, !dbg !4206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @seq_buf_hex_dump(ptr noundef %s, ptr noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %buf, i64 noundef %len, i1 noundef zeroext %ascii) #0 align 16 !dbg !4207 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %prefix_str.addr = alloca ptr, align 8
  %prefix_type.addr = alloca i32, align 4
  %rowsize.addr = alloca i32, align 4
  %groupsize.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %ascii.addr = alloca i8, align 1
  %ptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %linelen = alloca i32, align 4
  %remaining = alloca i32, align 4
  %linebuf = alloca [131 x i8], align 16
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x256 = alloca i32, align 4
  %__UNIQUE_ID___y257 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4211, metadata !DIExpression()), !dbg !4236
  store ptr %prefix_str, ptr %prefix_str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_str.addr, metadata !4212, metadata !DIExpression()), !dbg !4237
  store i32 %prefix_type, ptr %prefix_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prefix_type.addr, metadata !4213, metadata !DIExpression()), !dbg !4238
  store i32 %rowsize, ptr %rowsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rowsize.addr, metadata !4214, metadata !DIExpression()), !dbg !4239
  store i32 %groupsize, ptr %groupsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %groupsize.addr, metadata !4215, metadata !DIExpression()), !dbg !4240
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4216, metadata !DIExpression()), !dbg !4241
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4217, metadata !DIExpression()), !dbg !4242
  %frombool = zext i1 %ascii to i8
  store i8 %frombool, ptr %ascii.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ascii.addr, metadata !4218, metadata !DIExpression()), !dbg !4243
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #13, !dbg !4244
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !4219, metadata !DIExpression()), !dbg !4245
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4246
  store ptr %0, ptr %ptr, align 8, !dbg !4245
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4222, metadata !DIExpression()), !dbg !4248
  call void @llvm.lifetime.start.p0(i64 4, ptr %linelen) #13, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %linelen, metadata !4223, metadata !DIExpression()), !dbg !4249
  call void @llvm.lifetime.start.p0(i64 4, ptr %remaining) #13, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %remaining, metadata !4224, metadata !DIExpression()), !dbg !4250
  %1 = load i64, ptr %len.addr, align 8, !dbg !4251
  %conv = trunc i64 %1 to i32, !dbg !4251
  store i32 %conv, ptr %remaining, align 4, !dbg !4250
  call void @llvm.lifetime.start.p0(i64 131, ptr %linebuf) #13, !dbg !4252
  call void @llvm.dbg.declare(metadata ptr %linebuf, metadata !4225, metadata !DIExpression()), !dbg !4253
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !4254
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4229, metadata !DIExpression()), !dbg !4255
  %2 = load i32, ptr %rowsize.addr, align 4, !dbg !4256
  %cmp = icmp ne i32 %2, 16, !dbg !4258
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4259

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %rowsize.addr, align 4, !dbg !4260
  %cmp2 = icmp ne i32 %3, 32, !dbg !4261
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4262

if.then:                                          ; preds = %land.lhs.true
  store i32 16, ptr %rowsize.addr, align 4, !dbg !4263
  br label %if.end, !dbg !4264

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, ptr %i, align 4, !dbg !4265
  br label %for.cond, !dbg !4266

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !4267
  %conv4 = sext i32 %4 to i64, !dbg !4267
  %5 = load i64, ptr %len.addr, align 8, !dbg !4268
  %cmp5 = icmp ult i64 %conv4, %5, !dbg !4269
  br i1 %cmp5, label %for.body, label %for.end, !dbg !4270

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x256) #13, !dbg !4271
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x256, metadata !4230, metadata !DIExpression()), !dbg !4271
  %6 = load i32, ptr %remaining, align 4, !dbg !4271
  store i32 %6, ptr %__UNIQUE_ID___x256, align 4, !dbg !4271
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y257) #13, !dbg !4271
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y257, metadata !4235, metadata !DIExpression()), !dbg !4271
  %7 = load i32, ptr %rowsize.addr, align 4, !dbg !4271
  store i32 %7, ptr %__UNIQUE_ID___y257, align 4, !dbg !4271
  %8 = load i32, ptr %__UNIQUE_ID___x256, align 4, !dbg !4271
  %9 = load i32, ptr %__UNIQUE_ID___y257, align 4, !dbg !4271
  %cmp7 = icmp slt i32 %8, %9, !dbg !4271
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !4271

cond.true:                                        ; preds = %for.body
  %10 = load i32, ptr %__UNIQUE_ID___x256, align 4, !dbg !4271
  br label %cond.end, !dbg !4271

cond.false:                                       ; preds = %for.body
  %11 = load i32, ptr %__UNIQUE_ID___y257, align 4, !dbg !4271
  br label %cond.end, !dbg !4271

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !4271
  store i32 %cond, ptr %tmp, align 4, !dbg !4271
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y257) #13, !dbg !4272
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x256) #13, !dbg !4272
  %12 = load i32, ptr %tmp, align 4, !dbg !4271
  store i32 %12, ptr %linelen, align 4, !dbg !4273
  %13 = load i32, ptr %rowsize.addr, align 4, !dbg !4274
  %14 = load i32, ptr %remaining, align 4, !dbg !4275
  %sub = sub i32 %14, %13, !dbg !4275
  store i32 %sub, ptr %remaining, align 4, !dbg !4275
  %15 = load ptr, ptr %ptr, align 8, !dbg !4276
  %16 = load i32, ptr %i, align 4, !dbg !4277
  %idx.ext = sext i32 %16 to i64, !dbg !4278
  %add.ptr = getelementptr i8, ptr %15, i64 %idx.ext, !dbg !4278
  %17 = load i32, ptr %linelen, align 4, !dbg !4279
  %conv9 = sext i32 %17 to i64, !dbg !4279
  %18 = load i32, ptr %rowsize.addr, align 4, !dbg !4280
  %19 = load i32, ptr %groupsize.addr, align 4, !dbg !4281
  %arraydecay = getelementptr inbounds [131 x i8], ptr %linebuf, i64 0, i64 0, !dbg !4282
  %20 = load i8, ptr %ascii.addr, align 1, !dbg !4283, !range !4284, !noundef !879
  %tobool = trunc i8 %20 to i1, !dbg !4283
  %call = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr, i64 noundef %conv9, i32 noundef %18, i32 noundef %19, ptr noundef %arraydecay, i64 noundef 131, i1 noundef zeroext %tobool) #14, !dbg !4285
  %21 = load i32, ptr %prefix_type.addr, align 4, !dbg !4286
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
  ], !dbg !4287

sw.bb:                                            ; preds = %cond.end
  %22 = load ptr, ptr %s.addr, align 8, !dbg !4288
  %23 = load ptr, ptr %prefix_str.addr, align 8, !dbg !4290
  %24 = load ptr, ptr %ptr, align 8, !dbg !4291
  %25 = load i32, ptr %i, align 4, !dbg !4292
  %idx.ext10 = sext i32 %25 to i64, !dbg !4293
  %add.ptr11 = getelementptr i8, ptr %24, i64 %idx.ext10, !dbg !4293
  %arraydecay12 = getelementptr inbounds [131 x i8], ptr %linebuf, i64 0, i64 0, !dbg !4294
  %call13 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %22, ptr noundef @.str.3, ptr noundef %23, ptr noundef %add.ptr11, ptr noundef %arraydecay12) #14, !dbg !4295
  store i32 %call13, ptr %ret, align 4, !dbg !4296
  br label %sw.epilog, !dbg !4297

sw.bb14:                                          ; preds = %cond.end
  %26 = load ptr, ptr %s.addr, align 8, !dbg !4298
  %27 = load ptr, ptr %prefix_str.addr, align 8, !dbg !4299
  %28 = load i32, ptr %i, align 4, !dbg !4300
  %arraydecay15 = getelementptr inbounds [131 x i8], ptr %linebuf, i64 0, i64 0, !dbg !4301
  %call16 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %26, ptr noundef @.str.4, ptr noundef %27, i32 noundef %28, ptr noundef %arraydecay15) #14, !dbg !4302
  store i32 %call16, ptr %ret, align 4, !dbg !4303
  br label %sw.epilog, !dbg !4304

sw.default:                                       ; preds = %cond.end
  %29 = load ptr, ptr %s.addr, align 8, !dbg !4305
  %30 = load ptr, ptr %prefix_str.addr, align 8, !dbg !4306
  %arraydecay17 = getelementptr inbounds [131 x i8], ptr %linebuf, i64 0, i64 0, !dbg !4307
  %call18 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %29, ptr noundef @.str.2, ptr noundef %30, ptr noundef %arraydecay17) #14, !dbg !4308
  store i32 %call18, ptr %ret, align 4, !dbg !4309
  br label %sw.epilog, !dbg !4310

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb
  %31 = load i32, ptr %ret, align 4, !dbg !4311
  %tobool19 = icmp ne i32 %31, 0, !dbg !4311
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4313

if.then20:                                        ; preds = %sw.epilog
  %32 = load i32, ptr %ret, align 4, !dbg !4314
  store i32 %32, ptr %retval, align 4, !dbg !4315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4315

if.end21:                                         ; preds = %sw.epilog
  br label %for.inc, !dbg !4316

for.inc:                                          ; preds = %if.end21
  %33 = load i32, ptr %rowsize.addr, align 4, !dbg !4317
  %34 = load i32, ptr %i, align 4, !dbg !4318
  %add = add i32 %34, %33, !dbg !4318
  store i32 %add, ptr %i, align 4, !dbg !4318
  br label %for.cond, !dbg !4319, !llvm.loop !4320

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4322

cleanup:                                          ; preds = %for.end, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !4323
  call void @llvm.lifetime.end.p0(i64 131, ptr %linebuf) #13, !dbg !4323
  call void @llvm.lifetime.end.p0(i64 4, ptr %remaining) #13, !dbg !4323
  call void @llvm.lifetime.end.p0(i64 4, ptr %linelen) #13, !dbg !4323
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !4323
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #13, !dbg !4323
  %35 = load i32, ptr %retval, align 4, !dbg !4323
  ret i32 %35, !dbg !4323
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4324 dso_local i32 @hex_dump_to_buffer(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #9 align 16 !dbg !4327 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4331, metadata !DIExpression()), !dbg !4341
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4332, metadata !DIExpression()), !dbg !4342
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4333, metadata !DIExpression()), !dbg !4343
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #13, !dbg !4344
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4334, metadata !DIExpression()), !dbg !4345
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4346
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4347
  %conv = trunc i64 %1 to i32, !dbg !4347
  store i32 %conv, ptr %sz, align 4, !dbg !4345
  %2 = load i32, ptr %sz, align 4, !dbg !4348
  %cmp = icmp sge i32 %2, 0, !dbg !4348
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4348

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4348
  %conv2 = sext i32 %3 to i64, !dbg !4348
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4348
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4348
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4350
  %lnot = xor i1 %5, true, !dbg !4348
  %lnot5 = xor i1 %lnot, true, !dbg !4348
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4348
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4348
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4348
  %tobool = icmp ne i64 %expval, 0, !dbg !4348
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4351

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4352
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4355
  br i1 %7, label %if.else, label %if.then7, !dbg !4356

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4357
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4358
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #14, !dbg !4359
  br label %if.end11, !dbg !4359

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4360, !range !4284, !noundef !879
  %tobool8 = trunc i8 %10 to i1, !dbg !4360
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4362

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #14, !dbg !4363, !srcloc !4364
  br label %if.end, !dbg !4363

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #14, !dbg !4365, !srcloc !4366
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4367

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4368
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4335, metadata !DIExpression()), !dbg !4368
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4368
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4368
  %lnot15 = xor i1 %cmp13, true, !dbg !4368
  %lnot17 = xor i1 %lnot15, true, !dbg !4368
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4368
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4368
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4369
  %tobool19 = icmp ne i32 %12, 0, !dbg !4369
  %lnot20 = xor i1 %tobool19, true, !dbg !4369
  %lnot22 = xor i1 %lnot20, true, !dbg !4369
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4369
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4369
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4369
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4369
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4368

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4369

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !4370
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4338, metadata !DIExpression()), !dbg !4370
  store i32 2307, ptr %__flags, align 4, !dbg !4370
  br label %do.body28, !dbg !4370

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4371

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4371

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4370

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4373
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 249, i32 %13, i64 12) #13, !dbg !4373, !srcloc !4375
  br label %do.cond30, !dbg !4373

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4373

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4370

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4376

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4376

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !4369
  br label %do.cond35, !dbg !4370

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4370

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4370

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4368
  %tobool38 = icmp ne i32 %14, 0, !dbg !4368
  %lnot39 = xor i1 %tobool38, true, !dbg !4368
  %lnot41 = xor i1 %lnot39, true, !dbg !4368
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4368
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4368
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4368
  store i64 %expval44, ptr %tmp, align 8, !dbg !4369
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4378
  %15 = load i64, ptr %tmp, align 8, !dbg !4368
  %tobool45 = icmp ne i64 %15, 0, !dbg !4378
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4379

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4380

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4381
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4382
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4383, !range !4284, !noundef !879
  %tobool48 = trunc i8 %18 to i1, !dbg !4383
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #14, !dbg !4384
  store i1 true, ptr %retval, align 1, !dbg !4385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4385

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #13, !dbg !4386
  %19 = load i1, ptr %retval, align 1, !dbg !4386
  ret i1 %19, !dbg !4386
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4387 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !4388 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4392, metadata !DIExpression()), !dbg !4394
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4393, metadata !DIExpression()), !dbg !4395
  %0 = load i32, ptr %size.addr, align 4, !dbg !4396
  %1 = load i64, ptr %count.addr, align 8, !dbg !4398
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #14, !dbg !4399
  ret void, !dbg !4400
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4401 dso_local void @__bad_copy_from() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4402 dso_local void @__bad_copy_to() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !4403 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4407, metadata !DIExpression()), !dbg !4410
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4408, metadata !DIExpression()), !dbg !4411
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4409, metadata !DIExpression()), !dbg !4412
  ret void, !dbg !4413
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4414 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/seq_buf.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f71b4597191a6987e30b7d046190aa85")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_seq_buf_printf251", scope: !9, file: !2, line: 94, type: !68, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.seq_buf.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/seq_buf\22 -D KBUILD_BASENAME=\22seq_buf\22 -D KBUILD_MODNAME=\22seq_buf\22 -D __KBUILD_MODNAME=kmod_seq_buf -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/seq_buf.ll lib/seq_buf.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !67, globals: !71, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !20, !25, !31, !36, !42, !49, !56, !62}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !21, line: 2052, baseType: !13, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!24 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !26, line: 54, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "USRQUOTA", value: 0)
!29 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!30 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !32, line: 65, baseType: !13, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!35 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !37, line: 16, baseType: !13, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "TT_NONE", value: 0)
!40 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!41 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !43, line: 15, baseType: !13, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!46 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!47 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!48 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !50, line: 51, baseType: !13, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!53 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!54 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!55 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 704, baseType: !13, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "DUMP_PREFIX_NONE", value: 0)
!60 = !DIEnumerator(name: "DUMP_PREFIX_ADDRESS", value: 1)
!61 = !DIEnumerator(name: "DUMP_PREFIX_OFFSET", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 10, baseType: !13, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "false", value: 0)
!66 = !DIEnumerator(name: "true", value: 1)
!67 = !{!68, !69, !70}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{!0, !7, !72, !77, !82, !84, !89, !94, !100, !105}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 7)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 6)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_seq_buf_do_printk252", scope: !9, file: !2, line: 124, type: !68, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 410, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 10)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 12)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !96, line: 97, type: !97, isLocal: true, isDefinition: true)
!96 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 24)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !96, line: 98, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !107, line: 249, type: !108, isLocal: true, isDefinition: true)
!107 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 28)
!111 = !{i32 7, !"Dwarf Version", i32 5}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 8, !"cf-protection-branch", i32 1}
!115 = !{i32 4, !"function_return_thunk_extern", i32 1}
!116 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!117 = !{i32 1, !"Code Model", i32 2}
!118 = !{i32 1, !"override-stack-alignment", i32 8}
!119 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!120 = distinct !DISubprogram(name: "seq_buf_print_seq", scope: !2, file: !2, line: 40, type: !121, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3290)
!121 = !DISubroutineType(types: !122)
!122 = !{!70, !123, !3284}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !125, line: 17, size: 960, elements: !126)
!125 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!126 = !{!127, !129, !135, !136, !137, !138, !142, !143, !203, !225, !226, !3283}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !124, file: !125, line: 18, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !124, file: !125, line: 19, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 61, baseType: !132)
!131 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !133, line: 72, baseType: !134)
!133 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !133, line: 16, baseType: !69)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !124, file: !125, line: 20, baseType: !130, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !124, file: !125, line: 21, baseType: !130, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !124, file: !125, line: 22, baseType: !130, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !124, file: !125, line: 23, baseType: !139, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !131, line: 52, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !133, line: 88, baseType: !141)
!141 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !124, file: !125, line: 24, baseType: !139, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !124, file: !125, line: 25, baseType: !144, size: 256, offset: 448)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !145, line: 66, size: 256, elements: !146)
!145 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!146 = !{!147, !158, !192, !197}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !144, file: !145, line: 67, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !149, line: 13, baseType: !150)
!149 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !131, line: 181, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 179, size: 64, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !151, file: !131, line: 180, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !155, line: 22, baseType: !156)
!155 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !157, line: 30, baseType: !141)
!157 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !144, file: !145, line: 68, baseType: !159, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !160, line: 23, baseType: !161)
!160 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !160, line: 14, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !161, file: !160, line: 15, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !165, line: 44, baseType: !166)
!165 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !165, line: 14, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !165, line: 15, baseType: !169, size: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !165, line: 15, size: 32, elements: !170)
!170 = !{!171, !176, !184}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !165, line: 16, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !131, line: 174, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 172, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !173, file: !131, line: 173, baseType: !70, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 24, baseType: !177, size: 16)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 24, size: 16, elements: !178)
!178 = !{!179, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !177, file: !165, line: 25, baseType: !180, size: 8)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !155, line: 17, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !157, line: 21, baseType: !182)
!182 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !177, file: !165, line: 26, baseType: !180, size: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !165, line: 28, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !165, line: 28, size: 32, elements: !186)
!186 = !{!187, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !185, file: !165, line: 29, baseType: !188, size: 16)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !155, line: 19, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !157, line: 24, baseType: !190)
!190 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !185, file: !165, line: 30, baseType: !188, size: 16, offset: 16)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !144, file: !145, line: 70, baseType: !193, size: 32, offset: 96)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !194, line: 15, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !193, file: !194, line: 20, baseType: !172, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !144, file: !145, line: 72, baseType: !198, size: 128, offset: 128)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !131, line: 190, size: 128, elements: !199)
!199 = !{!200, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !131, line: 191, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !198, file: !131, line: 191, baseType: !201, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !124, file: !125, line: 26, baseType: !204, size: 64, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !125, line: 32, size: 256, elements: !207)
!207 = !{!208, !213, !217, !221}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !206, file: !125, line: 33, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!68, !123, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !206, file: !125, line: 34, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !123, !68}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !125, line: 35, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!68, !123, !68, !212}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !206, file: !125, line: 36, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!70, !123, !68}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !124, file: !125, line: 27, baseType: !70, size: 32, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !124, file: !125, line: 28, baseType: !227, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !21, line: 994, size: 1856, align: 64, elements: !230)
!230 = !{!231, !250, !259, !261, !262, !263, !264, !265, !346, !568, !577, !3273, !3274, !3275, !3276, !3277, !3278, !3280, !3281, !3282}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !21, line: 995, baseType: !232, size: 128)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !21, line: 995, size: 128, elements: !233)
!233 = !{!234, !240, !249}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !232, file: !21, line: 996, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !236, line: 60, size: 64, elements: !237)
!236 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !236, line: 61, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !232, file: !21, line: 997, baseType: !241, size: 128, align: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !131, line: 232, size: 128, align: 64, elements: !242)
!242 = !{!243, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !131, line: 233, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !241, file: !131, line: 234, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !244}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !232, file: !21, line: 998, baseType: !13, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !229, file: !21, line: 1005, baseType: !251, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !252, line: 29, baseType: !253)
!252 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !252, line: 17, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !252, line: 18, baseType: !256, size: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !252, line: 18, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !256, file: !252, line: 19, baseType: !161, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !229, file: !21, line: 1006, baseType: !260, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !131, line: 156, baseType: !13)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !229, file: !21, line: 1007, baseType: !148, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !229, file: !21, line: 1008, baseType: !144, size: 256, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !229, file: !21, line: 1009, baseType: !139, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !229, file: !21, line: 1010, baseType: !13, size: 32, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !229, file: !21, line: 1011, baseType: !266, size: 256, offset: 640)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !21, line: 948, size: 256, elements: !267)
!267 = !{!268, !291, !335, !336, !344, !345}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !266, file: !21, line: 949, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !270, line: 34, baseType: !271)
!270 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 25, size: 64, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !271, file: !270, line: 26, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !275, line: 27, baseType: !276)
!275 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !275, line: 13, size: 64, elements: !277)
!277 = !{!278, !290}
!278 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !275, line: 14, baseType: !279, size: 32)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !275, line: 14, size: 32, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !279, file: !275, line: 15, baseType: !172, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !275, line: 16, baseType: !283, size: 32)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !275, line: 16, size: 32, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !283, file: !275, line: 18, baseType: !180, size: 8)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !283, file: !275, line: 19, baseType: !287, size: 24, offset: 8)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 24, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 3)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !276, file: !275, line: 26, baseType: !164, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !266, file: !21, line: 950, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !294)
!294 = !{!295, !301, !302, !303, !316, !317, !324, !325}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !293, file: !12, line: 61, baseType: !296, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !297, line: 113, baseType: !298)
!297 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !297, line: 111, size: 32, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !298, file: !297, line: 112, baseType: !172, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !293, file: !12, line: 62, baseType: !13, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !293, file: !12, line: 63, baseType: !251, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !293, file: !12, line: 65, baseType: !304, size: 256, offset: 128)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 256, elements: !314)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !131, line: 194, size: 64, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !305, file: !131, line: 195, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !131, line: 198, size: 128, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !131, line: 199, baseType: !308, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !309, file: !131, line: 199, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!314 = !{!315}
!315 = !DISubrange(count: 4)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !293, file: !12, line: 66, baseType: !305, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !293, file: !12, line: 68, baseType: !318, size: 192, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !319, line: 41, baseType: !320)
!319 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !319, line: 37, size: 192, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !320, file: !319, line: 38, baseType: !251, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !320, file: !319, line: 39, baseType: !198, size: 128, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !293, file: !12, line: 69, baseType: !241, size: 128, align: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !293, file: !12, line: 70, baseType: !326, offset: 768)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !333)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !327, file: !12, line: 55, baseType: !70, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !327, file: !12, line: 56, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!333 = !{!334}
!334 = !DISubrange(count: -1)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !266, file: !21, line: 951, baseType: !11, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !266, file: !21, line: 952, baseType: !337, size: 32, offset: 160)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !338, line: 23, baseType: !339)
!338 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 21, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !339, file: !338, line: 22, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !131, line: 37, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !133, line: 49, baseType: !13)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !266, file: !21, line: 952, baseType: !337, size: 32, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !266, file: !21, line: 953, baseType: !70, size: 32, offset: 224)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !229, file: !21, line: 1012, baseType: !347, size: 64, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !350, line: 110, size: 1472, elements: !351)
!350 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!351 = !{!352, !353, !354, !361, !362, !363, !364, !365, !366, !367, !368, !377, !378, !379, !380, !381, !382, !513, !514, !515, !516, !517, !548, !551, !555, !563}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !349, file: !350, line: 111, baseType: !148, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !349, file: !350, line: 112, baseType: !337, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !349, file: !350, line: 113, baseType: !355, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !338, line: 28, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 26, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !356, file: !338, line: 27, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !131, line: 38, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !133, line: 50, baseType: !13)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !349, file: !350, line: 114, baseType: !337, size: 32, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !349, file: !350, line: 115, baseType: !355, size: 32, offset: 160)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !349, file: !350, line: 116, baseType: !337, size: 32, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !349, file: !350, line: 117, baseType: !355, size: 32, offset: 224)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !349, file: !350, line: 118, baseType: !337, size: 32, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !349, file: !350, line: 119, baseType: !355, size: 32, offset: 288)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !349, file: !350, line: 120, baseType: !13, size: 32, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !349, file: !350, line: 121, baseType: !369, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !370, line: 24, baseType: !371)
!370 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 24, size: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !371, file: !370, line: 24, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !155, line: 23, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !157, line: 31, baseType: !376)
!376 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !349, file: !350, line: 122, baseType: !369, size: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !349, file: !350, line: 123, baseType: !369, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !349, file: !350, line: 124, baseType: !369, size: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !349, file: !350, line: 125, baseType: !369, size: 64, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !349, file: !350, line: 127, baseType: !182, size: 8, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !349, file: !350, line: 129, baseType: !383, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !385, line: 195, size: 1728, elements: !386)
!385 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!386 = !{!387, !388, !393, !405, !414, !417, !418, !425, !426, !427, !428, !433, !434, !435, !437, !438, !477, !498}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !384, file: !385, line: 196, baseType: !296, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !384, file: !385, line: 197, baseType: !389, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !385, line: 28, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !131, line: 104, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !155, line: 20, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !157, line: 26, baseType: !70)
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !385, line: 198, baseType: !394, size: 192, offset: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !385, line: 198, size: 192, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !394, file: !385, line: 199, baseType: !198, size: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !394, file: !385, line: 200, baseType: !398, size: 192, align: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !399, line: 5, size: 192, align: 64, elements: !400)
!399 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!400 = !{!401, !402, !404}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !398, file: !399, line: 6, baseType: !69, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !398, file: !399, line: 7, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !398, file: !399, line: 8, baseType: !403, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !384, file: !385, line: 205, baseType: !406, size: 320, offset: 256)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !407, line: 48, size: 320, elements: !408)
!407 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!408 = !{!409, !410, !411, !412, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !406, file: !407, line: 49, baseType: !148, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !406, file: !407, line: 55, baseType: !148, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !406, file: !407, line: 57, baseType: !193, size: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !406, file: !407, line: 59, baseType: !159, size: 32, offset: 160)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !406, file: !407, line: 60, baseType: !198, size: 128, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !384, file: !385, line: 206, baseType: !415, size: 64, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !385, line: 206, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !384, file: !385, line: 207, baseType: !68, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !385, line: 208, baseType: !419, size: 64, offset: 704)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !385, line: 208, size: 64, elements: !420)
!420 = !{!421, !424}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !419, file: !385, line: 209, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !423, line: 8, baseType: !156)
!423 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !419, file: !385, line: 210, baseType: !422, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !384, file: !385, line: 212, baseType: !422, size: 64, offset: 768)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !384, file: !385, line: 213, baseType: !337, size: 32, offset: 832)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !384, file: !385, line: 214, baseType: !355, size: 32, offset: 864)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !384, file: !385, line: 215, baseType: !429, size: 32, offset: 896)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !385, line: 31, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 110, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !155, line: 21, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !157, line: 27, baseType: !13)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !384, file: !385, line: 216, baseType: !190, size: 16, offset: 928)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !384, file: !385, line: 217, baseType: !190, size: 16, offset: 944)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !384, file: !385, line: 221, baseType: !436, size: 16, offset: 960)
!436 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !385, line: 228, baseType: !69, size: 64, offset: 1024)
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !385, line: 245, baseType: !439, size: 320, offset: 1088)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !385, line: 245, size: 320, elements: !440)
!440 = !{!441, !469}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !439, file: !385, line: 246, baseType: !442, size: 320)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !385, line: 114, size: 320, elements: !443)
!443 = !{!444, !445, !454, !457, !466}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !442, file: !385, line: 116, baseType: !69, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !385, line: 117, baseType: !446, size: 64, offset: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !385, line: 117, size: 64, elements: !447)
!447 = !{!448, !453}
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !385, line: 118, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !385, line: 118, size: 64, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !449, file: !385, line: 120, baseType: !188, size: 16)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !449, file: !385, line: 121, baseType: !79, size: 48, offset: 16)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !446, file: !385, line: 127, baseType: !69, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !385, line: 129, baseType: !455, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !385, line: 102, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !442, file: !385, line: 130, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !385, line: 108, size: 192, elements: !460)
!460 = !{!461, !462, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !459, file: !385, line: 109, baseType: !241, size: 128, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !459, file: !385, line: 110, baseType: !296, size: 32, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !459, file: !385, line: 111, baseType: !464, size: 8, offset: 160)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !131, line: 35, baseType: !465)
!465 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !442, file: !385, line: 131, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !385, line: 247, baseType: !470, size: 320)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !385, line: 247, size: 320, elements: !471)
!471 = !{!472, !473, !474, !475, !476}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !470, file: !385, line: 248, baseType: !69, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !470, file: !385, line: 249, baseType: !69, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !385, line: 250, baseType: !455, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !470, file: !385, line: 251, baseType: !458, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !470, file: !385, line: 252, baseType: !128, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !385, line: 260, baseType: !478, size: 256, offset: 1408)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !385, line: 260, size: 256, elements: !479)
!479 = !{!480, !486}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !478, file: !385, line: 261, baseType: !481, size: 256)
!481 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !385, line: 134, size: 256, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !481, file: !385, line: 135, baseType: !68, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !481, file: !385, line: 136, baseType: !485, size: 256)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 256, elements: !314)
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !385, line: 262, baseType: !487, size: 256)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !385, line: 262, size: 256, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !487, file: !385, line: 264, baseType: !198, size: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !487, file: !385, line: 265, baseType: !491, size: 128, offset: 128)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !492, line: 22, size: 128, elements: !493)
!492 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!493 = !{!494, !497}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !491, file: !492, line: 23, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !492, line: 23, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !491, file: !492, line: 24, baseType: !69, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !384, file: !385, line: 280, baseType: !499, size: 64, offset: 1664)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !385, line: 176, size: 192, elements: !501)
!501 = !{!502, !511, !512}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !500, file: !385, line: 177, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !385, line: 171, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!70, !383, !507, !509, !383}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !500, file: !385, line: 178, baseType: !383, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !500, file: !385, line: 179, baseType: !455, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !349, file: !350, line: 130, baseType: !383, size: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !349, file: !350, line: 131, baseType: !383, size: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !349, file: !350, line: 132, baseType: !383, size: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !349, file: !350, line: 135, baseType: !68, size: 64, offset: 1024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !349, file: !350, line: 137, baseType: !518, size: 64, offset: 1088)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !520, line: 14, size: 1088, elements: !521)
!520 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!521 = !{!522, !523, !532, !533, !534, !535, !536, !537}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !519, file: !520, line: 15, baseType: !296, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !519, file: !520, line: 17, baseType: !524, size: 320, offset: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !525, line: 22, size: 320, elements: !526)
!525 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!526 = !{!527, !528, !529, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !525, line: 23, baseType: !159, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !524, file: !525, line: 24, baseType: !154, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !524, file: !525, line: 26, baseType: !198, size: 128, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !524, file: !525, line: 28, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !519, file: !520, line: 19, baseType: !69, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !519, file: !520, line: 20, baseType: !148, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !519, file: !520, line: 23, baseType: !309, size: 128, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !519, file: !520, line: 24, baseType: !337, size: 32, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !519, file: !520, line: 29, baseType: !148, size: 64, offset: 704)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !519, file: !520, line: 36, baseType: !538, size: 320, offset: 768)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !539, line: 15, size: 320, elements: !540)
!539 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!540 = !{!541, !542, !543, !544, !545, !546, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !539, line: 16, baseType: !159, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !538, file: !539, line: 18, baseType: !70, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !538, file: !539, line: 19, baseType: !70, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !538, file: !539, line: 20, baseType: !70, size: 32, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !538, file: !539, line: 21, baseType: !70, size: 32, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !538, file: !539, line: 22, baseType: !69, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !539, line: 23, baseType: !69, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !349, file: !350, line: 138, baseType: !549, size: 64, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !338, line: 18, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !349, file: !350, line: 139, baseType: !552, size: 64, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !554, line: 16, flags: DIFlagFwdDecl)
!554 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !349, file: !350, line: 140, baseType: !556, size: 64, offset: 1280)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !350, line: 25, size: 64, elements: !558)
!558 = !{!559, !560, !561}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !557, file: !350, line: 26, baseType: !172, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !557, file: !350, line: 27, baseType: !70, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !557, file: !350, line: 28, baseType: !562, offset: 64)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, elements: !333)
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !350, line: 142, baseType: !564, size: 128, offset: 1344)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !350, line: 142, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !564, file: !350, line: 143, baseType: !70, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !564, file: !350, line: 144, baseType: !241, size: 128, align: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !229, file: !21, line: 1013, baseType: !569, size: 256, offset: 960)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !21, line: 970, size: 256, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !569, file: !21, line: 971, baseType: !69, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !569, file: !21, line: 972, baseType: !13, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !569, file: !21, line: 973, baseType: !13, size: 32, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !569, file: !21, line: 974, baseType: !13, size: 32, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !569, file: !21, line: 975, baseType: !13, size: 32, offset: 160)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !569, file: !21, line: 976, baseType: !139, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !229, file: !21, line: 1014, baseType: !578, size: 128, offset: 1216)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !579, line: 8, size: 128, elements: !580)
!579 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!580 = !{!581, !3272}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !578, file: !579, line: 9, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !584, line: 70, size: 256, elements: !585)
!584 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!585 = !{!586, !3269, !3270, !3271}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !583, file: !584, line: 71, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !589, line: 82, size: 1536, elements: !590)
!589 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!590 = !{!591, !592, !602, !610, !611, !626, !3236, !3238, !3251, !3252, !3253, !3254, !3255, !3261, !3262, !3263}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !588, file: !589, line: 84, baseType: !13, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !588, file: !589, line: 85, baseType: !593, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !594, line: 275, baseType: !595)
!594 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !594, line: 275, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !595, file: !594, line: 275, baseType: !598, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !594, line: 69, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !594, line: 64, size: 32, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !599, file: !594, line: 65, baseType: !13, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !588, file: !589, line: 86, baseType: !603, size: 128, offset: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !604, line: 38, size: 128, elements: !605)
!604 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!605 = !{!606, !608}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !604, line: 39, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !603, file: !604, line: 39, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !588, file: !589, line: 87, baseType: !587, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !588, file: !589, line: 88, baseType: !612, size: 128, offset: 256)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !589, line: 49, size: 128, elements: !613)
!613 = !{!614, !623}
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !589, line: 50, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !589, line: 50, size: 64, elements: !616)
!616 = !{!617, !622}
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !589, line: 51, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !589, line: 51, size: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !618, file: !589, line: 52, baseType: !431, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !618, file: !589, line: 52, baseType: !431, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !615, file: !589, line: 54, baseType: !374, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !589, line: 56, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !588, file: !589, line: 89, baseType: !627, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !21, line: 641, size: 4800, elements: !629)
!629 = !{!630, !632, !633, !634, !635, !636, !637, !640, !641, !837, !2995, !2996, !2997, !2998, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3218, !3221, !3222, !3223, !3232, !3233, !3234, !3235}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !628, file: !21, line: 642, baseType: !631, size: 16)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !131, line: 24, baseType: !190)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !628, file: !21, line: 643, baseType: !190, size: 16, offset: 16)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !628, file: !21, line: 644, baseType: !337, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !628, file: !21, line: 645, baseType: !198, size: 128, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !628, file: !21, line: 646, baseType: !355, size: 32, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !628, file: !21, line: 647, baseType: !13, size: 32, offset: 224)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !628, file: !21, line: 650, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !21, line: 607, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !628, file: !21, line: 651, baseType: !638, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !628, file: !21, line: 654, baseType: !642, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !21, line: 1966, size: 2048, align: 512, elements: !645)
!645 = !{!646, !650, !663, !669, !673, !677, !681, !685, !689, !693, !697, !698, !704, !708, !747, !778, !785, !791, !795, !799, !803, !807, !811, !817, !821}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !644, file: !21, line: 1967, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!587, !627, !587, !13}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !644, file: !21, line: 1968, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!467, !587, !627, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !656, line: 10, size: 128, elements: !657)
!656 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!657 = !{!658, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !655, file: !656, line: 11, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !68}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !655, file: !656, line: 12, baseType: !68, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !644, file: !21, line: 1969, baseType: !664, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!70, !667, !627, !70}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !370, line: 42, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !644, file: !21, line: 1970, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!638, !627, !70, !464}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !644, file: !21, line: 1972, baseType: !674, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!70, !587, !128, !70}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !644, file: !21, line: 1974, baseType: !678, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!70, !667, !627, !587, !631, !464}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !644, file: !21, line: 1976, baseType: !682, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!70, !587, !627, !587}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !644, file: !21, line: 1977, baseType: !686, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!70, !627, !587}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !644, file: !21, line: 1978, baseType: !690, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!70, !667, !627, !587, !467}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !644, file: !21, line: 1980, baseType: !694, size: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!70, !667, !627, !587, !631}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !644, file: !21, line: 1982, baseType: !686, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !644, file: !21, line: 1983, baseType: !699, size: 64, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!70, !667, !627, !587, !631, !702}
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !131, line: 21, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !131, line: 18, baseType: !431)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !644, file: !21, line: 1985, baseType: !705, size: 64, offset: 768)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!70, !667, !627, !587, !627, !587, !13}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !644, file: !21, line: 1987, baseType: !709, size: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!70, !667, !587, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !21, line: 226, size: 640, elements: !714)
!714 = !{!715, !716, !717, !727, !736, !737, !743, !744, !745}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !713, file: !21, line: 227, baseType: !13, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !713, file: !21, line: 228, baseType: !631, size: 16, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !21, line: 241, baseType: !718, size: 32, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !21, line: 241, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !718, file: !21, line: 242, baseType: !337, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !718, file: !21, line: 243, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !723, line: 16, baseType: !724)
!723 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 14, size: 32, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !724, file: !723, line: 15, baseType: !342, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !21, line: 245, baseType: !728, size: 32, offset: 96)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !21, line: 245, size: 32, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !728, file: !21, line: 246, baseType: !355, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !728, file: !21, line: 247, baseType: !732, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !723, line: 20, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 18, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !733, file: !723, line: 19, baseType: !359, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !713, file: !21, line: 249, baseType: !139, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !713, file: !21, line: 250, baseType: !738, size: 128, offset: 192)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !423, line: 13, size: 128, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !738, file: !423, line: 14, baseType: !422, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !738, file: !423, line: 15, baseType: !742, size: 64, offset: 64)
!742 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !713, file: !21, line: 251, baseType: !738, size: 128, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !713, file: !21, line: 252, baseType: !738, size: 128, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !713, file: !21, line: 259, baseType: !746, size: 64, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !644, file: !21, line: 1988, baseType: !748, size: 64, offset: 896)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!70, !667, !751, !753, !431, !13}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !755, line: 22, size: 1280, elements: !756)
!755 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !754, file: !755, line: 23, baseType: !431, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !754, file: !755, line: 24, baseType: !631, size: 16, offset: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !754, file: !755, line: 25, baseType: !13, size: 32, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !754, file: !755, line: 26, baseType: !430, size: 32, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !754, file: !755, line: 27, baseType: !374, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !754, file: !755, line: 28, baseType: !374, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !754, file: !755, line: 41, baseType: !374, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !754, file: !755, line: 42, baseType: !702, size: 32, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !754, file: !755, line: 43, baseType: !702, size: 32, offset: 352)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !754, file: !755, line: 44, baseType: !337, size: 32, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !754, file: !755, line: 45, baseType: !355, size: 32, offset: 416)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !754, file: !755, line: 46, baseType: !139, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !754, file: !755, line: 47, baseType: !738, size: 128, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !754, file: !755, line: 48, baseType: !738, size: 128, offset: 640)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !754, file: !755, line: 49, baseType: !738, size: 128, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !754, file: !755, line: 50, baseType: !738, size: 128, offset: 896)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !754, file: !755, line: 51, baseType: !374, size: 64, offset: 1024)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !754, file: !755, line: 52, baseType: !374, size: 64, offset: 1088)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !754, file: !755, line: 53, baseType: !431, size: 32, offset: 1152)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !754, file: !755, line: 54, baseType: !431, size: 32, offset: 1184)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !754, file: !755, line: 55, baseType: !374, size: 64, offset: 1216)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !644, file: !21, line: 1990, baseType: !779, size: 64, offset: 960)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!782, !587, !128, !130}
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !131, line: 66, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !133, line: 73, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !133, line: 15, baseType: !742)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !644, file: !21, line: 1991, baseType: !786, size: 64, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!70, !627, !789, !374, !374}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !21, line: 55, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !644, file: !21, line: 1993, baseType: !792, size: 64, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!70, !627, !70}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !644, file: !21, line: 1994, baseType: !796, size: 64, offset: 1152)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!70, !627, !587, !746, !13, !631}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !644, file: !21, line: 1997, baseType: !800, size: 64, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!70, !667, !627, !746, !631}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !644, file: !21, line: 1999, baseType: !804, size: 64, offset: 1280)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!638, !667, !587, !70}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !644, file: !21, line: 2001, baseType: !808, size: 64, offset: 1344)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!70, !667, !587, !638, !70}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !644, file: !21, line: 2003, baseType: !812, size: 64, offset: 1408)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!70, !667, !587, !815}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !21, line: 76, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !644, file: !21, line: 2005, baseType: !818, size: 64, offset: 1472)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!70, !587, !815}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !644, file: !21, line: 2006, baseType: !822, size: 64, offset: 1536)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !627}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !21, line: 3192, size: 192, elements: !827)
!827 = !{!828, !836}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !826, file: !21, line: 3193, baseType: !829, size: 128)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !830, line: 296, size: 128, elements: !831)
!830 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!831 = !{!832, !833, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !829, file: !830, line: 297, baseType: !251, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !829, file: !830, line: 299, baseType: !834, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !131, line: 154, baseType: !13)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !829, file: !830, line: 300, baseType: !68, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !826, file: !21, line: 3194, baseType: !431, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !628, file: !21, line: 655, baseType: !838, size: 64, offset: 448)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !21, line: 1190, size: 10752, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !846, !888, !1024, !1064, !1147, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1164, !1168, !1169, !1172, !1175, !1178, !1181, !1182, !1183, !1224, !2868, !2869, !2870, !2871, !2872, !2873, !2876, !2878, !2885, !2886, !2887, !2888, !2947, !2962, !2963, !2964, !2965, !2966, !2969, !2970, !2971, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !839, file: !21, line: 1191, baseType: !198, size: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !839, file: !21, line: 1192, baseType: !702, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !839, file: !21, line: 1193, baseType: !182, size: 8, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !839, file: !21, line: 1194, baseType: !69, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !839, file: !21, line: 1195, baseType: !139, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !839, file: !21, line: 1196, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !21, line: 2366, size: 576, elements: !849)
!849 = !{!850, !851, !852, !858, !862, !866, !870, !874, !875, !876, !880, !881, !882, !884, !885, !886, !887}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !848, file: !21, line: 2367, baseType: !467, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !848, file: !21, line: 2368, baseType: !70, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !848, file: !21, line: 2376, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!70, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !584, line: 21, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !848, file: !21, line: 2377, baseType: !859, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !21, line: 75, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !848, file: !21, line: 2378, baseType: !863, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!587, !847, !70, !467, !68}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !848, file: !21, line: 2380, baseType: !867, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !838}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !848, file: !21, line: 2381, baseType: !871, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !873, line: 103, flags: DIFlagFwdDecl)
!873 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !21, line: 2382, baseType: !847, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !848, file: !21, line: 2383, baseType: !305, size: 64, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !848, file: !21, line: 2385, baseType: !877, offset: 576)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !878, line: 206, elements: !879)
!878 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!879 = !{}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !848, file: !21, line: 2386, baseType: !877, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !848, file: !21, line: 2387, baseType: !877, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !848, file: !21, line: 2388, baseType: !883, offset: 576)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, elements: !288)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !848, file: !21, line: 2390, baseType: !877, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !848, file: !21, line: 2391, baseType: !877, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !848, file: !21, line: 2392, baseType: !877, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !848, file: !21, line: 2393, baseType: !877, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !839, file: !21, line: 1197, baseType: !889, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !21, line: 2057, size: 1664, elements: !892)
!892 = !{!893, !897, !901, !902, !906, !912, !916, !917, !918, !922, !926, !930, !931, !932, !938, !943, !944, !948, !949, !950, !951, !955, !959, !1006, !1022, !1023}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !891, file: !21, line: 2058, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!627, !838}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !891, file: !21, line: 2059, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !627}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !891, file: !21, line: 2060, baseType: !898, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !891, file: !21, line: 2062, baseType: !903, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !627, !70}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !891, file: !21, line: 2063, baseType: !907, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!70, !627, !910}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !21, line: 309, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !891, file: !21, line: 2064, baseType: !913, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!70, !627}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !891, file: !21, line: 2065, baseType: !898, size: 64, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !891, file: !21, line: 2066, baseType: !867, size: 64, offset: 448)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !891, file: !21, line: 2067, baseType: !919, size: 64, offset: 512)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!70, !838, !70}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !891, file: !21, line: 2068, baseType: !923, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!70, !838, !20}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !891, file: !21, line: 2069, baseType: !927, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!70, !838}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !891, file: !21, line: 2070, baseType: !923, size: 64, offset: 704)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !891, file: !21, line: 2071, baseType: !927, size: 64, offset: 768)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !891, file: !21, line: 2072, baseType: !933, size: 64, offset: 832)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!70, !587, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !21, line: 62, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !891, file: !21, line: 2073, baseType: !939, size: 64, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!70, !838, !942, !128}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !891, file: !21, line: 2074, baseType: !867, size: 64, offset: 960)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !891, file: !21, line: 2076, baseType: !945, size: 64, offset: 1024)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!70, !123, !587}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !891, file: !21, line: 2077, baseType: !945, size: 64, offset: 1088)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !891, file: !21, line: 2078, baseType: !945, size: 64, offset: 1152)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !891, file: !21, line: 2079, baseType: !945, size: 64, offset: 1216)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !891, file: !21, line: 2081, baseType: !952, size: 64, offset: 1280)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!782, !838, !70, !128, !130, !139}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !891, file: !21, line: 2082, baseType: !956, size: 64, offset: 1344)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!782, !838, !70, !467, !130, !139}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !891, file: !21, line: 2083, baseType: !960, size: 64, offset: 1408)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!963, !627}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !26, line: 296, size: 1664, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972, !973, !974, !975, !991, !992, !993}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !965, file: !26, line: 297, baseType: !309, size: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !965, file: !26, line: 298, baseType: !198, size: 128, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !965, file: !26, line: 299, baseType: !198, size: 128, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !965, file: !26, line: 300, baseType: !198, size: 128, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !965, file: !26, line: 301, baseType: !144, size: 256, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !965, file: !26, line: 302, baseType: !251, size: 32, offset: 768)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !965, file: !26, line: 303, baseType: !172, size: 32, offset: 800)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !965, file: !26, line: 304, baseType: !838, size: 64, offset: 832)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !965, file: !26, line: 305, baseType: !976, size: 64, offset: 896)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !26, line: 68, size: 64, elements: !977)
!977 = !{!978, !990}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !26, line: 69, baseType: !979, size: 32)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !26, line: 69, size: 32, elements: !980)
!980 = !{!981, !982, !983}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !979, file: !26, line: 70, baseType: !337, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !979, file: !26, line: 71, baseType: !355, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !979, file: !26, line: 72, baseType: !984, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !985, line: 24, baseType: !986)
!985 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !985, line: 22, size: 32, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !986, file: !985, line: 23, baseType: !989, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !985, line: 20, baseType: !343)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !976, file: !26, line: 74, baseType: !25, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !965, file: !26, line: 306, baseType: !139, size: 64, offset: 960)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !965, file: !26, line: 307, baseType: !69, size: 64, offset: 1024)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !965, file: !26, line: 308, baseType: !994, size: 576, offset: 1088)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !26, line: 205, size: 576, elements: !995)
!995 = !{!996, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !994, file: !26, line: 206, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !26, line: 66, baseType: !141)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !994, file: !26, line: 207, baseType: !997, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !994, file: !26, line: 208, baseType: !997, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !994, file: !26, line: 209, baseType: !997, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !994, file: !26, line: 210, baseType: !997, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !994, file: !26, line: 211, baseType: !997, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !994, file: !26, line: 212, baseType: !997, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !994, file: !26, line: 213, baseType: !422, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !994, file: !26, line: 214, baseType: !422, size: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !891, file: !21, line: 2085, baseType: !1007, size: 64, offset: 1472)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!742, !838, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1012, line: 15, size: 256, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1013 = !{!1014, !1015, !1016, !1017, !1018}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1011, file: !1012, line: 16, baseType: !834, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1011, file: !1012, line: 19, baseType: !70, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1011, file: !1012, line: 26, baseType: !69, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1011, file: !1012, line: 33, baseType: !69, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1011, file: !1012, line: 36, baseType: !1019, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1021, line: 33, flags: DIFlagFwdDecl)
!1021 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !891, file: !21, line: 2087, baseType: !1007, size: 64, offset: 1536)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !891, file: !21, line: 2089, baseType: !867, size: 64, offset: 1600)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !839, file: !21, line: 1198, baseType: !1025, size: 64, offset: 448)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !26, line: 324, size: 704, elements: !1028)
!1028 = !{!1029, !1033, !1037, !1041, !1042, !1043, !1044, !1045, !1050, !1055, !1059}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1027, file: !26, line: 325, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!70, !964}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1027, file: !26, line: 326, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!964, !838, !70}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1027, file: !26, line: 327, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !964}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1027, file: !26, line: 328, baseType: !1030, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1027, file: !26, line: 329, baseType: !1030, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1027, file: !26, line: 330, baseType: !1030, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1027, file: !26, line: 331, baseType: !919, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1027, file: !26, line: 334, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1049, !627}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1027, file: !26, line: 335, baseType: !1051, size: 64, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!70, !627, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1027, file: !26, line: 337, baseType: !1056, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!70, !627, !1049}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1027, file: !26, line: 339, baseType: !1060, size: 64, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!70, !838, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !839, file: !21, line: 1199, baseType: !1065, size: 64, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !26, line: 430, size: 704, elements: !1068)
!1068 = !{!1069, !1073, !1074, !1078, !1079, !1080, !1095, !1118, !1122, !1123, !1146}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1067, file: !26, line: 431, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!70, !838, !70, !70, !751}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1067, file: !26, line: 432, baseType: !919, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1067, file: !26, line: 433, baseType: !1075, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!70, !838, !13}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1067, file: !26, line: 434, baseType: !1075, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1067, file: !26, line: 435, baseType: !919, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1067, file: !26, line: 436, baseType: !1081, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!70, !838, !70, !1084}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !26, line: 417, size: 256, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1085, file: !26, line: 418, baseType: !70, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1085, file: !26, line: 419, baseType: !13, size: 32, offset: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1085, file: !26, line: 420, baseType: !13, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1085, file: !26, line: 422, baseType: !13, size: 32, offset: 96)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1085, file: !26, line: 423, baseType: !13, size: 32, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1085, file: !26, line: 424, baseType: !13, size: 32, offset: 160)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1085, file: !26, line: 425, baseType: !13, size: 32, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1085, file: !26, line: 426, baseType: !13, size: 32, offset: 224)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1067, file: !26, line: 437, baseType: !1096, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!70, !838, !976, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !26, line: 345, size: 960, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1100, file: !26, line: 346, baseType: !70, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1100, file: !26, line: 347, baseType: !374, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1100, file: !26, line: 348, baseType: !374, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1100, file: !26, line: 349, baseType: !374, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1100, file: !26, line: 350, baseType: !374, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1100, file: !26, line: 351, baseType: !374, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1100, file: !26, line: 352, baseType: !374, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1100, file: !26, line: 353, baseType: !154, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1100, file: !26, line: 355, baseType: !154, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1100, file: !26, line: 356, baseType: !70, size: 32, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1100, file: !26, line: 357, baseType: !70, size: 32, offset: 608)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1100, file: !26, line: 358, baseType: !374, size: 64, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1100, file: !26, line: 359, baseType: !374, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1100, file: !26, line: 360, baseType: !374, size: 64, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1100, file: !26, line: 361, baseType: !154, size: 64, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1100, file: !26, line: 362, baseType: !70, size: 32, offset: 896)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1067, file: !26, line: 438, baseType: !1119, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!70, !838, !1063, !1099}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1067, file: !26, line: 440, baseType: !1096, size: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1067, file: !26, line: 441, baseType: !1124, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!70, !838, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !26, line: 411, size: 1408, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1128, file: !26, line: 412, baseType: !13, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1128, file: !26, line: 413, baseType: !1132, size: 1344, offset: 64)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 1344, elements: !288)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !26, line: 397, size: 448, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1145}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !26, line: 398, baseType: !13, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1133, file: !26, line: 399, baseType: !13, size: 32, offset: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1133, file: !26, line: 401, baseType: !13, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1133, file: !26, line: 402, baseType: !13, size: 32, offset: 96)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1133, file: !26, line: 403, baseType: !13, size: 32, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1133, file: !26, line: 404, baseType: !13, size: 32, offset: 160)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1133, file: !26, line: 405, baseType: !13, size: 32, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1133, file: !26, line: 406, baseType: !376, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1133, file: !26, line: 407, baseType: !1144, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !131, line: 132, baseType: !374)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1133, file: !26, line: 408, baseType: !1144, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1067, file: !26, line: 442, baseType: !1075, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !839, file: !21, line: 1200, baseType: !1148, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !21, line: 54, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !839, file: !21, line: 1201, baseType: !69, size: 64, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !839, file: !21, line: 1202, baseType: !69, size: 64, offset: 704)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !839, file: !21, line: 1203, baseType: !69, size: 64, offset: 768)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !839, file: !21, line: 1204, baseType: !587, size: 64, offset: 832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !839, file: !21, line: 1205, baseType: !406, size: 320, offset: 896)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !839, file: !21, line: 1206, baseType: !70, size: 32, offset: 1216)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !839, file: !21, line: 1207, baseType: !172, size: 32, offset: 1248)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !839, file: !21, line: 1209, baseType: !68, size: 64, offset: 1280)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !839, file: !21, line: 1211, baseType: !1160, size: 64, offset: 1344)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !21, line: 1211, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !839, file: !21, line: 1223, baseType: !1165, size: 64, offset: 1408)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !604, line: 34, size: 64, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1165, file: !604, line: 35, baseType: !607, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !839, file: !21, line: 1224, baseType: !198, size: 128, offset: 1472)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !839, file: !21, line: 1225, baseType: !1170, size: 64, offset: 1600)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !21, line: 1225, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !839, file: !21, line: 1226, baseType: !1173, size: 64, offset: 1664)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !21, line: 1226, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !839, file: !21, line: 1227, baseType: !1176, size: 64, offset: 1728)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !21, line: 50, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !839, file: !21, line: 1228, baseType: !1179, size: 64, offset: 1792)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !21, line: 1228, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !839, file: !21, line: 1229, baseType: !309, size: 128, offset: 1856)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !839, file: !21, line: 1230, baseType: !13, size: 32, offset: 1984)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !839, file: !21, line: 1231, baseType: !1184, size: 2496, offset: 2048)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !26, line: 521, size: 2496, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1190, !1222}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !26, line: 522, baseType: !13, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1184, file: !26, line: 523, baseType: !406, size: 320, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1184, file: !26, line: 524, baseType: !1189, size: 192, offset: 384)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 192, elements: !288)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1184, file: !26, line: 525, baseType: !1191, size: 1728, offset: 576)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, size: 1728, elements: !288)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !26, line: 222, size: 576, elements: !1193)
!1193 = !{!1194, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1192, file: !26, line: 223, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !26, line: 445, size: 256, elements: !1197)
!1197 = !{!1198, !1199, !1212, !1213}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1196, file: !26, line: 446, baseType: !70, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1196, file: !26, line: 447, baseType: !1200, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !26, line: 312, size: 512, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1202, file: !26, line: 313, baseType: !919, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1202, file: !26, line: 314, baseType: !919, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1202, file: !26, line: 315, baseType: !919, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1202, file: !26, line: 316, baseType: !919, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1202, file: !26, line: 317, baseType: !1030, size: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1202, file: !26, line: 318, baseType: !1030, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1202, file: !26, line: 319, baseType: !1030, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1202, file: !26, line: 320, baseType: !1060, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1196, file: !26, line: 448, baseType: !871, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1196, file: !26, line: 449, baseType: !1195, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1192, file: !26, line: 224, baseType: !70, size: 32, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1192, file: !26, line: 226, baseType: !198, size: 128, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1192, file: !26, line: 227, baseType: !69, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1192, file: !26, line: 228, baseType: !13, size: 32, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1192, file: !26, line: 229, baseType: !13, size: 32, offset: 352)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1192, file: !26, line: 230, baseType: !997, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1192, file: !26, line: 231, baseType: !997, size: 64, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1192, file: !26, line: 232, baseType: !68, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1184, file: !26, line: 526, baseType: !1223, size: 192, offset: 2304)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 192, elements: !288)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !839, file: !21, line: 1233, baseType: !1225, size: 2368, offset: 4544)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !21, line: 1184, size: 2368, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1225, file: !21, line: 1185, baseType: !190, size: 16)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1225, file: !21, line: 1186, baseType: !190, size: 16, offset: 16)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1225, file: !21, line: 1187, baseType: !1230, size: 2304, offset: 64)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 2304, elements: !288)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1232, line: 12, size: 768, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1233 = !{!1234, !1242, !1244, !2866, !2867}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1231, file: !1232, line: 13, baseType: !1235, size: 384)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1236, line: 17, size: 384, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1237 = !{!1238, !1239, !1240, !1241}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1235, file: !1236, line: 18, baseType: !70, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1235, file: !1236, line: 19, baseType: !70, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1235, file: !1236, line: 20, baseType: !318, size: 192, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1235, file: !1236, line: 22, baseType: !241, size: 128, align: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1231, file: !1232, line: 14, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1231, file: !1232, line: 15, baseType: !1245, size: 64, offset: 448)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1246, line: 16, size: 64, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1245, file: !1246, line: 17, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1251, line: 746, size: 58368, elements: !1252)
!1251 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1252 = !{!1253, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1333, !1344, !1439, !1443, !1446, !1477, !1478, !1479, !1480, !1489, !1491, !1492, !1493, !1494, !1495, !1496, !1507, !1508, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1525, !1526, !1533, !1534, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1758, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1773, !1774, !1775, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1817, !1823, !1824, !1825, !1826, !1827, !1831, !1834, !1841, !1846, !1849, !1852, !1855, !1858, !1998, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2040, !2041, !2042, !2051, !2059, !2060, !2061, !2062, !2063, !2068, !2069, !2070, !2073, !2074, !2077, !2080, !2083, !2091, !2094, !2095, !2181, !2182, !2183, !2184, !2185, !2191, !2192, !2193, !2194, !2197, !2198, !2201, !2204, !2205, !2208, !2209, !2210, !2213, !2214, !2215, !2218, !2219, !2220, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2252, !2255, !2524, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2536, !2608, !2610, !2611, !2612, !2613, !2614, !2626, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2643, !2644, !2645}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1250, file: !1251, line: 752, baseType: !1254, size: 192)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1255, line: 56, size: 192, elements: !1256)
!1255 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1256 = !{!1257, !1258, !1259, !1260}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !1255, line: 57, baseType: !69, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1254, file: !1255, line: 58, baseType: !69, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1254, file: !1255, line: 59, baseType: !431, size: 32, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1254, file: !1255, line: 61, baseType: !431, size: 32, offset: 160)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1250, file: !1251, line: 754, baseType: !13, size: 32, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1250, file: !1251, line: 767, baseType: !68, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1250, file: !1251, line: 768, baseType: !296, size: 32, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1250, file: !1251, line: 770, baseType: !13, size: 32, offset: 352)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1250, file: !1251, line: 771, baseType: !13, size: 32, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1250, file: !1251, line: 774, baseType: !70, size: 32, offset: 416)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1250, file: !1251, line: 775, baseType: !1268, size: 128, offset: 448)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1269, line: 58, size: 128, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1270 = !{!1271, !1272, !1277, !1278}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1268, file: !1269, line: 59, baseType: !235, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !1269, line: 60, baseType: !1273, size: 32, offset: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !1269, line: 60, size: 32, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1273, file: !1269, line: 61, baseType: !13, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1273, file: !1269, line: 62, baseType: !172, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1268, file: !1269, line: 65, baseType: !188, size: 16, offset: 96)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1268, file: !1269, line: 65, baseType: !188, size: 16, offset: 112)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1250, file: !1251, line: 776, baseType: !13, size: 32, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1250, file: !1251, line: 777, baseType: !69, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1250, file: !1251, line: 778, baseType: !1249, size: 64, offset: 704)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1250, file: !1251, line: 787, baseType: !70, size: 32, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1250, file: !1251, line: 788, baseType: !70, size: 32, offset: 800)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1250, file: !1251, line: 790, baseType: !70, size: 32, offset: 832)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1250, file: !1251, line: 792, baseType: !70, size: 32, offset: 864)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1250, file: !1251, line: 793, baseType: !70, size: 32, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1250, file: !1251, line: 794, baseType: !70, size: 32, offset: 928)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1250, file: !1251, line: 795, baseType: !13, size: 32, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1250, file: !1251, line: 797, baseType: !1290, size: 2048, offset: 1024)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1251, line: 551, size: 2048, elements: !1291)
!1291 = !{!1292, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1312, !1315, !1316, !1317}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1290, file: !1251, line: 553, baseType: !1293, size: 128)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1251, line: 411, size: 128, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1293, file: !1251, line: 412, baseType: !69, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1293, file: !1251, line: 413, baseType: !431, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1290, file: !1251, line: 554, baseType: !398, size: 192, align: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1290, file: !1251, line: 555, baseType: !374, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1290, file: !1251, line: 556, baseType: !374, size: 64, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1290, file: !1251, line: 558, baseType: !198, size: 128, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1290, file: !1251, line: 559, baseType: !13, size: 32, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1290, file: !1251, line: 561, baseType: !374, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1290, file: !1251, line: 562, baseType: !374, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1290, file: !1251, line: 563, baseType: !374, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1290, file: !1251, line: 564, baseType: !374, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1290, file: !1251, line: 565, baseType: !154, size: 64, offset: 896)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1290, file: !1251, line: 566, baseType: !374, size: 64, offset: 960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1290, file: !1251, line: 568, baseType: !374, size: 64, offset: 1024)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1290, file: !1251, line: 571, baseType: !70, size: 32, offset: 1088)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1290, file: !1251, line: 572, baseType: !1311, size: 64, offset: 1152)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1290, file: !1251, line: 574, baseType: !1313, size: 64, offset: 1216)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1251, line: 49, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1290, file: !1251, line: 576, baseType: !1313, size: 64, offset: 1280)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1290, file: !1251, line: 578, baseType: !69, size: 64, offset: 1344)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1290, file: !1251, line: 588, baseType: !1318, size: 512, align: 512, offset: 1536)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1251, line: 497, size: 512, align: 512, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1318, file: !1251, line: 498, baseType: !374, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1318, file: !1251, line: 499, baseType: !374, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1318, file: !1251, line: 500, baseType: !374, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1318, file: !1251, line: 501, baseType: !431, size: 32, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1318, file: !1251, line: 502, baseType: !431, size: 32, offset: 224)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1318, file: !1251, line: 503, baseType: !69, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1318, file: !1251, line: 504, baseType: !69, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1318, file: !1251, line: 505, baseType: !69, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1318, file: !1251, line: 506, baseType: !1329, size: 64, align: 64, offset: 448)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1251, line: 445, size: 64, align: 64, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1329, file: !1251, line: 446, baseType: !13, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1329, file: !1251, line: 447, baseType: !13, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1250, file: !1251, line: 798, baseType: !1334, size: 384, offset: 3072)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1251, line: 592, size: 384, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1334, file: !1251, line: 593, baseType: !198, size: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1334, file: !1251, line: 594, baseType: !69, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1334, file: !1251, line: 595, baseType: !69, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1334, file: !1251, line: 596, baseType: !13, size: 32, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1334, file: !1251, line: 597, baseType: !190, size: 16, offset: 288)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1334, file: !1251, line: 598, baseType: !190, size: 16, offset: 304)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1334, file: !1251, line: 600, baseType: !1343, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1250, file: !1251, line: 799, baseType: !1345, size: 1792, offset: 3456)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1251, line: 610, size: 1792, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1436, !1437}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1345, file: !1251, line: 611, baseType: !398, size: 192, align: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1345, file: !1251, line: 618, baseType: !374, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1345, file: !1251, line: 619, baseType: !374, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1345, file: !1251, line: 620, baseType: !374, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1345, file: !1251, line: 621, baseType: !374, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1345, file: !1251, line: 622, baseType: !374, size: 64, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1345, file: !1251, line: 629, baseType: !154, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1345, file: !1251, line: 630, baseType: !374, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1345, file: !1251, line: 631, baseType: !13, size: 32, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1345, file: !1251, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1345, file: !1251, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1345, file: !1251, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1345, file: !1251, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1345, file: !1251, line: 662, baseType: !1361, size: 512, offset: 704)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !1362)
!1362 = !{!1363, !1371, !1372, !1377, !1432, !1433, !1434, !1435}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1361, file: !32, line: 119, baseType: !1364, size: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1365, line: 9, size: 256, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1364, file: !1365, line: 10, baseType: !398, size: 192, align: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1364, file: !1365, line: 11, baseType: !1369, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1370, line: 29, baseType: !154)
!1370 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1361, file: !32, line: 120, baseType: !1369, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1361, file: !32, line: 121, baseType: !1373, size: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!31, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1361, file: !32, line: 122, baseType: !1378, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !1380)
!1380 = !{!1381, !1406, !1407, !1410, !1415, !1416, !1427, !1431}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1379, file: !32, line: 160, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 215, size: 4608, align: 512, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !32, line: 216, baseType: !159, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1383, file: !32, line: 217, baseType: !13, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1383, file: !32, line: 218, baseType: !13, size: 32, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1383, file: !32, line: 219, baseType: !13, size: 32, offset: 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1383, file: !32, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1383, file: !32, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1383, file: !32, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1383, file: !32, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1383, file: !32, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1383, file: !32, line: 226, baseType: !13, size: 32, offset: 160)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1383, file: !32, line: 227, baseType: !190, size: 16, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1383, file: !32, line: 228, baseType: !190, size: 16, offset: 208)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1383, file: !32, line: 229, baseType: !13, size: 32, offset: 224)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1383, file: !32, line: 235, baseType: !1369, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1383, file: !32, line: 236, baseType: !1376, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1383, file: !32, line: 237, baseType: !1369, size: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1383, file: !32, line: 238, baseType: !1376, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1383, file: !32, line: 239, baseType: !1403, size: 4096, align: 512, offset: 512)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 4096, align: 512, elements: !1404)
!1404 = !{!1405}
!1405 = !DISubrange(count: 8)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1379, file: !32, line: 161, baseType: !13, size: 32, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1379, file: !32, line: 162, baseType: !1408, size: 32, offset: 96)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !131, line: 32, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !133, line: 96, baseType: !70)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1379, file: !32, line: 163, baseType: !1411, size: 32, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !594, line: 274, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !594, line: 274, size: 32, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1412, file: !594, line: 274, baseType: !598, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1379, file: !32, line: 164, baseType: !1376, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1379, file: !32, line: 165, baseType: !1417, size: 128, offset: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1365, line: 14, size: 128, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1417, file: !1365, line: 15, baseType: !1420, size: 128)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !399, line: 26, size: 128, elements: !1421)
!1421 = !{!1422, !1426}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1420, file: !399, line: 27, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !399, line: 12, size: 64, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1423, file: !399, line: 13, baseType: !403, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1420, file: !399, line: 28, baseType: !403, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1379, file: !32, line: 166, baseType: !1428, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1369}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1379, file: !32, line: 167, baseType: !1369, size: 64, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1361, file: !32, line: 123, baseType: !180, size: 8, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1361, file: !32, line: 124, baseType: !180, size: 8, offset: 456)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1361, file: !32, line: 125, baseType: !180, size: 8, offset: 464)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1361, file: !32, line: 126, baseType: !180, size: 8, offset: 472)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1345, file: !1251, line: 671, baseType: !1361, size: 512, offset: 1216)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1345, file: !1251, line: 679, baseType: !1438, size: 64, offset: 1728)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1250, file: !1251, line: 800, baseType: !1440, size: 64, offset: 5248)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1251, line: 800, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1250, file: !1251, line: 809, baseType: !1444, size: 64, offset: 5312)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1251, line: 70, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1250, file: !1251, line: 825, baseType: !1447, size: 2048, align: 512, offset: 5632)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1251, line: 509, size: 2048, align: 512, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1447, file: !1251, line: 511, baseType: !374, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1447, file: !1251, line: 512, baseType: !374, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1447, file: !1251, line: 513, baseType: !374, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1447, file: !1251, line: 514, baseType: !374, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1447, file: !1251, line: 515, baseType: !374, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1447, file: !1251, line: 516, baseType: !374, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1447, file: !1251, line: 518, baseType: !374, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1447, file: !1251, line: 519, baseType: !374, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1447, file: !1251, line: 520, baseType: !154, size: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1447, file: !1251, line: 522, baseType: !374, size: 64, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1447, file: !1251, line: 523, baseType: !374, size: 64, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1447, file: !1251, line: 524, baseType: !154, size: 64, offset: 704)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1447, file: !1251, line: 526, baseType: !154, size: 64, offset: 768)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1447, file: !1251, line: 527, baseType: !374, size: 64, offset: 832)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1447, file: !1251, line: 529, baseType: !374, size: 64, offset: 896)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1447, file: !1251, line: 530, baseType: !374, size: 64, offset: 960)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1447, file: !1251, line: 531, baseType: !374, size: 64, offset: 1024)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1447, file: !1251, line: 532, baseType: !374, size: 64, offset: 1088)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1447, file: !1251, line: 533, baseType: !374, size: 64, offset: 1152)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1447, file: !1251, line: 535, baseType: !374, size: 64, offset: 1216)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1447, file: !1251, line: 536, baseType: !374, size: 64, offset: 1280)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1447, file: !1251, line: 537, baseType: !374, size: 64, offset: 1344)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1447, file: !1251, line: 538, baseType: !374, size: 64, offset: 1408)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1447, file: !1251, line: 539, baseType: !374, size: 64, offset: 1472)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1447, file: !1251, line: 540, baseType: !374, size: 64, offset: 1536)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1447, file: !1251, line: 541, baseType: !374, size: 64, offset: 1600)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1447, file: !1251, line: 542, baseType: !374, size: 64, offset: 1664)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1447, file: !1251, line: 543, baseType: !374, size: 64, offset: 1728)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1250, file: !1251, line: 833, baseType: !13, size: 32, offset: 7680)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1250, file: !1251, line: 836, baseType: !13, size: 32, offset: 7712)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1250, file: !1251, line: 837, baseType: !70, size: 32, offset: 7744)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1250, file: !1251, line: 838, baseType: !1481, size: 64, offset: 7808)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1484, line: 19, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1484, line: 19, size: 64, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1485, file: !1484, line: 19, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !103)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1250, file: !1251, line: 839, baseType: !1490, size: 64, offset: 7872)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1250, file: !1251, line: 840, baseType: !1483, size: 64, offset: 7936)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1250, file: !1251, line: 841, baseType: !68, size: 64, offset: 8000)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1250, file: !1251, line: 843, baseType: !190, size: 16, offset: 8064)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1250, file: !1251, line: 845, baseType: !190, size: 16, offset: 8080)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1250, file: !1251, line: 848, baseType: !70, size: 32, offset: 8096)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1250, file: !1251, line: 849, baseType: !1497, size: 32, offset: 8128)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1251, line: 718, size: 32, elements: !1498)
!1498 = !{!1499, !1506}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1497, file: !1251, line: 724, baseType: !1500, size: 32)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1497, file: !1251, line: 719, size: 32, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1500, file: !1251, line: 720, baseType: !180, size: 8)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1500, file: !1251, line: 721, baseType: !180, size: 8, offset: 8)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1500, file: !1251, line: 722, baseType: !180, size: 8, offset: 16)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1500, file: !1251, line: 723, baseType: !180, size: 8, offset: 24)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1497, file: !1251, line: 725, baseType: !431, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1250, file: !1251, line: 850, baseType: !198, size: 128, offset: 8192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1250, file: !1251, line: 851, baseType: !1509, size: 64, offset: 8320)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1251, line: 60, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1250, file: !1251, line: 855, baseType: !69, size: 64, offset: 8384)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1250, file: !1251, line: 856, baseType: !180, size: 8, offset: 8448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1250, file: !1251, line: 857, baseType: !180, size: 8, offset: 8456)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1250, file: !1251, line: 858, baseType: !70, size: 32, offset: 8480)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1250, file: !1251, line: 859, baseType: !198, size: 128, offset: 8512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1250, file: !1251, line: 860, baseType: !70, size: 32, offset: 8640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1250, file: !1251, line: 861, baseType: !198, size: 128, offset: 8704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1250, file: !1251, line: 873, baseType: !1519, size: 256, offset: 8832)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1251, line: 376, size: 256, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1519, file: !1251, line: 381, baseType: !69, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1519, file: !1251, line: 384, baseType: !376, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1519, file: !1251, line: 389, baseType: !376, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1519, file: !1251, line: 392, baseType: !376, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1250, file: !1251, line: 875, baseType: !198, size: 128, offset: 9088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1250, file: !1251, line: 877, baseType: !1527, size: 320, offset: 9216)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1528, line: 86, size: 320, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1527, file: !1528, line: 87, baseType: !70, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1527, file: !1528, line: 88, baseType: !198, size: 128, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1527, file: !1528, line: 89, baseType: !198, size: 128, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1250, file: !1251, line: 878, baseType: !398, size: 192, align: 64, offset: 9536)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1250, file: !1251, line: 881, baseType: !1535, size: 64, offset: 9728)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1021, line: 733, size: 10240, elements: !1537)
!1537 = !{!1538, !1677}
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1021, line: 734, baseType: !1539, size: 10240)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !1021, line: 734, size: 10240, elements: !1540)
!1540 = !{!1541, !1545, !1558, !1562, !1563, !1564, !1565, !1566, !1567, !1576, !1577, !1578, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1617, !1619, !1622, !1646, !1647, !1648, !1651, !1652, !1653, !1656, !1657, !1658, !1664, !1665}
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1021, line: 739, baseType: !1542, size: 512, align: 512)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !1021, line: 739, size: 512, align: 512, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1542, file: !1021, line: 747, baseType: !172, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1539, file: !1021, line: 750, baseType: !1546, size: 128, offset: 512)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1547, line: 218, size: 128, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1548 = !{!1549, !1556, !1557}
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 219, baseType: !1550, size: 32)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 219, size: 32, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1550, file: !1547, line: 220, baseType: !251, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1550, file: !1547, line: 221, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1547, line: 197, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1547, line: 197, elements: !879)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1546, file: !1547, line: 223, baseType: !13, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1546, file: !1547, line: 224, baseType: !68, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1539, file: !1021, line: 752, baseType: !1559, size: 64, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!69, !746, !69, !69, !69, !69}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1539, file: !1021, line: 756, baseType: !69, size: 64, offset: 704)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1539, file: !1021, line: 757, baseType: !69, size: 64, offset: 768)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1539, file: !1021, line: 760, baseType: !69, size: 64, offset: 832)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1539, file: !1021, line: 761, baseType: !69, size: 64, offset: 896)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1539, file: !1021, line: 763, baseType: !69, size: 64, offset: 960)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1539, file: !1021, line: 764, baseType: !1568, size: 64, offset: 1024)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1570, line: 299, baseType: !1571)
!1570 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1570, line: 299, size: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1571, file: !1570, line: 299, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1575, line: 18, baseType: !69)
!1575 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1539, file: !1021, line: 773, baseType: !172, size: 32, offset: 1088)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1539, file: !1021, line: 785, baseType: !172, size: 32, offset: 1120)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1539, file: !1021, line: 795, baseType: !1579, size: 64, offset: 1152)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1021, line: 726, size: 128, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1580, file: !1021, line: 727, baseType: !374, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1580, file: !1021, line: 728, baseType: !70, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1539, file: !1021, line: 801, baseType: !69, size: 64, offset: 1216)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1539, file: !1021, line: 804, baseType: !148, size: 64, offset: 1280)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1539, file: !1021, line: 806, baseType: !70, size: 32, offset: 1344)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1539, file: !1021, line: 808, baseType: !251, size: 32, offset: 1376)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1539, file: !1021, line: 823, baseType: !406, size: 320, offset: 1408)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1539, file: !1021, line: 825, baseType: !198, size: 128, offset: 1728)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1539, file: !1021, line: 845, baseType: !70, size: 32, offset: 1856)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1539, file: !1021, line: 849, baseType: !69, size: 64, offset: 1920)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1539, file: !1021, line: 850, baseType: !69, size: 64, offset: 1984)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1539, file: !1021, line: 852, baseType: !69, size: 64, offset: 2048)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1539, file: !1021, line: 853, baseType: !69, size: 64, offset: 2112)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1539, file: !1021, line: 854, baseType: !150, size: 64, offset: 2176)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1539, file: !1021, line: 855, baseType: !69, size: 64, offset: 2240)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1539, file: !1021, line: 856, baseType: !69, size: 64, offset: 2304)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1539, file: !1021, line: 857, baseType: !69, size: 64, offset: 2368)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1539, file: !1021, line: 858, baseType: !69, size: 64, offset: 2432)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1539, file: !1021, line: 865, baseType: !598, size: 32, offset: 2496)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1539, file: !1021, line: 867, baseType: !251, size: 32, offset: 2528)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1539, file: !1021, line: 869, baseType: !69, size: 64, offset: 2560)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1539, file: !1021, line: 869, baseType: !69, size: 64, offset: 2624)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1539, file: !1021, line: 869, baseType: !69, size: 64, offset: 2688)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1539, file: !1021, line: 869, baseType: !69, size: 64, offset: 2752)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1539, file: !1021, line: 870, baseType: !69, size: 64, offset: 2816)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1539, file: !1021, line: 870, baseType: !69, size: 64, offset: 2880)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1539, file: !1021, line: 870, baseType: !69, size: 64, offset: 2944)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1539, file: !1021, line: 871, baseType: !69, size: 64, offset: 3008)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1539, file: !1021, line: 871, baseType: !69, size: 64, offset: 3072)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1539, file: !1021, line: 871, baseType: !69, size: 64, offset: 3136)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1539, file: !1021, line: 871, baseType: !69, size: 64, offset: 3200)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1539, file: !1021, line: 873, baseType: !1614, size: 3328, offset: 3264)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 3328, elements: !1615)
!1615 = !{!1616}
!1616 = !DISubrange(count: 52)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1539, file: !1021, line: 875, baseType: !1618, size: 1280, offset: 6592)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 1280, elements: !314)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1539, file: !1021, line: 877, baseType: !1620, size: 64, offset: 7872)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1021, line: 877, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1539, file: !1021, line: 880, baseType: !1623, size: 1088, offset: 7936)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1624, line: 72, baseType: !1625)
!1624 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1624, line: 23, size: 1088, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1634, !1635, !1636, !1637, !1641, !1642, !1643}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1625, file: !1624, line: 28, baseType: !374, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1625, file: !1624, line: 38, baseType: !150, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1625, file: !1624, line: 40, baseType: !69, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1625, file: !1624, line: 43, baseType: !406, size: 320, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1625, file: !1624, line: 44, baseType: !1632, size: 64, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1624, line: 44, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1625, file: !1624, line: 48, baseType: !69, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1625, file: !1624, line: 59, baseType: !144, size: 256, offset: 640)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1625, file: !1624, line: 60, baseType: !68, size: 64, offset: 896)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1625, file: !1624, line: 61, baseType: !1638, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1624, line: 61, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1625, file: !1624, line: 63, baseType: !172, size: 32, offset: 1024)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1625, file: !1624, line: 69, baseType: !188, size: 16, offset: 1056)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1625, file: !1624, line: 70, baseType: !1644, size: 16, offset: 1072)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !155, line: 18, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !157, line: 23, baseType: !436)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !1021, line: 882, baseType: !69, size: 64, offset: 9024)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1539, file: !1021, line: 885, baseType: !251, size: 32, offset: 9088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1539, file: !1021, line: 886, baseType: !1649, size: 64, offset: 9152)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1021, line: 732, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1539, file: !1021, line: 901, baseType: !549, size: 64, offset: 9216)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1539, file: !1021, line: 904, baseType: !746, size: 64, offset: 9280)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1539, file: !1021, line: 906, baseType: !1654, size: 64, offset: 9344)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1021, line: 906, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1539, file: !1021, line: 930, baseType: !172, size: 32, offset: 9408)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1539, file: !1021, line: 933, baseType: !172, size: 32, offset: 9440)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1539, file: !1021, line: 935, baseType: !1659, size: 64, offset: 9472)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !50, line: 103, size: 64, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1659, file: !50, line: 104, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !50, line: 101, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1539, file: !1021, line: 940, baseType: !148, size: 64, offset: 9536)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1539, file: !1021, line: 942, baseType: !1666, size: 256, offset: 9600)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1667, line: 98, size: 256, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1668 = !{!1669, !1670, !1671}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1666, file: !1667, line: 99, baseType: !148, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1666, file: !1667, line: 100, baseType: !198, size: 128, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1666, file: !1667, line: 101, baseType: !1672, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1667, line: 21, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1536, file: !1021, line: 986, baseType: !1678, offset: 10240)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, elements: !333)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1250, file: !1251, line: 882, baseType: !1535, size: 64, offset: 9792)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1250, file: !1251, line: 884, baseType: !70, size: 32, offset: 9856)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1250, file: !1251, line: 885, baseType: !70, size: 32, offset: 9888)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1250, file: !1251, line: 886, baseType: !70, size: 32, offset: 9920)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1250, file: !1251, line: 888, baseType: !70, size: 32, offset: 9952)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1250, file: !1251, line: 890, baseType: !69, size: 64, offset: 9984)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1250, file: !1251, line: 893, baseType: !13, size: 32, offset: 10048)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1250, file: !1251, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1250, file: !1251, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1250, file: !1251, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1250, file: !1251, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1250, file: !1251, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1250, file: !1251, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1250, file: !1251, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1250, file: !1251, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1250, file: !1251, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1250, file: !1251, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1250, file: !1251, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1250, file: !1251, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1250, file: !1251, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1250, file: !1251, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1250, file: !1251, line: 969, baseType: !69, size: 64, offset: 10176)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1250, file: !1251, line: 971, baseType: !1702, size: 448, offset: 10240)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 448, elements: !1703)
!1703 = !{!1704, !1705, !1710}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1702, file: !37, line: 26, baseType: !69, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1702, file: !37, line: 27, baseType: !1706, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!742, !1709}
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !37, line: 28, baseType: !1711, size: 320, offset: 128)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !37, line: 28, size: 320, elements: !1712)
!1712 = !{!1713, !1723, !1748}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1711, file: !37, line: 37, baseType: !1714, size: 320)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1711, file: !37, line: 30, size: 320, elements: !1715)
!1715 = !{!1716, !1718, !1719, !1720, !1721, !1722}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1714, file: !37, line: 31, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1714, file: !37, line: 32, baseType: !431, size: 32, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !37, line: 33, baseType: !431, size: 32, offset: 96)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1714, file: !37, line: 34, baseType: !431, size: 32, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1714, file: !37, line: 35, baseType: !374, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1714, file: !37, line: 36, baseType: !1717, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1711, file: !37, line: 47, baseType: !1724, size: 192)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1711, file: !37, line: 39, size: 192, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1747}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1724, file: !37, line: 40, baseType: !1408, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1724, file: !37, line: 41, baseType: !36, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !37, line: 42, baseType: !1729, size: 64, offset: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1724, file: !37, line: 42, size: 64, elements: !1730)
!1730 = !{!1731, !1739}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1729, file: !37, line: 43, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1734, line: 7, size: 128, elements: !1735)
!1734 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1735 = !{!1736, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1733, file: !1734, line: 8, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !133, line: 93, baseType: !141)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1733, file: !1734, line: 9, baseType: !141, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1729, file: !37, line: 44, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1742, line: 7, size: 64, elements: !1743)
!1742 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1743 = !{!1744, !1746}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1741, file: !1742, line: 8, baseType: !1745, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1742, line: 5, baseType: !391)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1741, file: !1742, line: 9, baseType: !391, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1724, file: !37, line: 46, baseType: !374, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1711, file: !37, line: 55, baseType: !1749, size: 256)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1711, file: !37, line: 49, size: 256, elements: !1750)
!1750 = !{!1751, !1754, !1755, !1756, !1757}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1749, file: !37, line: 50, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1749, file: !37, line: 51, baseType: !70, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1749, file: !37, line: 52, baseType: !70, size: 32, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1749, file: !37, line: 53, baseType: !69, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1749, file: !37, line: 54, baseType: !69, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1250, file: !1251, line: 973, baseType: !1759, size: 32, offset: 10688)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !131, line: 27, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !133, line: 28, baseType: !70)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1250, file: !1251, line: 974, baseType: !1759, size: 32, offset: 10720)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1250, file: !1251, line: 978, baseType: !69, size: 64, offset: 10752)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1250, file: !1251, line: 987, baseType: !1249, size: 64, offset: 10816)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1250, file: !1251, line: 990, baseType: !1249, size: 64, offset: 10880)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1250, file: !1251, line: 995, baseType: !198, size: 128, offset: 10944)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1250, file: !1251, line: 996, baseType: !198, size: 128, offset: 11072)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1250, file: !1251, line: 997, baseType: !1249, size: 64, offset: 11200)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1250, file: !1251, line: 1005, baseType: !198, size: 128, offset: 11264)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1250, file: !1251, line: 1006, baseType: !198, size: 128, offset: 11392)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1250, file: !1251, line: 1009, baseType: !292, size: 64, offset: 11520)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1250, file: !1251, line: 1010, baseType: !1772, size: 512, offset: 11584)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 512, elements: !314)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1250, file: !1251, line: 1011, baseType: !198, size: 128, offset: 12096)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1250, file: !1251, line: 1012, baseType: !198, size: 128, offset: 12224)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1250, file: !1251, line: 1014, baseType: !1776, size: 64, offset: 12352)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1778, line: 26, size: 256, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1777, file: !1778, line: 27, baseType: !13, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1777, file: !1778, line: 28, baseType: !1782, size: 192, offset: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1783, line: 43, size: 192, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !1783, line: 44, baseType: !159, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1782, file: !1783, line: 45, baseType: !198, size: 128, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1250, file: !1251, line: 1017, baseType: !942, size: 64, offset: 12416)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1250, file: !1251, line: 1020, baseType: !942, size: 64, offset: 12480)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1250, file: !1251, line: 1023, baseType: !68, size: 64, offset: 12544)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1250, file: !1251, line: 1025, baseType: !374, size: 64, offset: 12608)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1250, file: !1251, line: 1026, baseType: !374, size: 64, offset: 12672)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1250, file: !1251, line: 1031, baseType: !374, size: 64, offset: 12736)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1250, file: !1251, line: 1032, baseType: !1794, size: 192, offset: 12800)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1251, line: 324, size: 192, elements: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1794, file: !1251, line: 326, baseType: !374, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1794, file: !1251, line: 327, baseType: !374, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1794, file: !1251, line: 328, baseType: !159, size: 32, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1250, file: !1251, line: 1041, baseType: !69, size: 64, offset: 12992)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1250, file: !1251, line: 1042, baseType: !69, size: 64, offset: 13056)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1250, file: !1251, line: 1045, baseType: !374, size: 64, offset: 13120)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1250, file: !1251, line: 1048, baseType: !374, size: 64, offset: 13184)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1250, file: !1251, line: 1051, baseType: !69, size: 64, offset: 13248)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1250, file: !1251, line: 1052, baseType: !69, size: 64, offset: 13312)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1250, file: !1251, line: 1055, baseType: !1806, size: 640, offset: 13376)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1807, line: 132, size: 640, elements: !1808)
!1807 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1808 = !{!1809, !1815, !1816}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1806, file: !1807, line: 133, baseType: !1810, size: 576)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1811, size: 576, elements: !288)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1807, line: 117, size: 192, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1811, file: !1807, line: 118, baseType: !374, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1811, file: !1807, line: 119, baseType: !1417, size: 128, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1806, file: !1807, line: 134, baseType: !13, size: 32, offset: 576)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1806, file: !1807, line: 135, baseType: !13, size: 32, offset: 608)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1250, file: !1251, line: 1058, baseType: !1818, size: 448, offset: 14016)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1807, line: 144, size: 448, elements: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1818, file: !1807, line: 145, baseType: !241, size: 128, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1818, file: !1807, line: 146, baseType: !144, size: 256, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1818, file: !1807, line: 147, baseType: !13, size: 32, offset: 384)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1250, file: !1251, line: 1064, baseType: !347, size: 64, offset: 14464)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1250, file: !1251, line: 1067, baseType: !347, size: 64, offset: 14528)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1250, file: !1251, line: 1070, baseType: !347, size: 64, offset: 14592)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1250, file: !1251, line: 1074, baseType: !383, size: 64, offset: 14656)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1250, file: !1251, line: 1084, baseType: !1828, size: 128, offset: 14720)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1829)
!1829 = !{!1830}
!1830 = !DISubrange(count: 16)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1250, file: !1251, line: 1086, baseType: !1832, size: 64, offset: 14848)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1251, line: 55, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1250, file: !1251, line: 1089, baseType: !1835, size: 64, offset: 14912)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1836, line: 12, size: 64, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1835, file: !1836, line: 13, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1836, line: 8, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1250, file: !1251, line: 1090, baseType: !1842, size: 128, offset: 14976)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1843, line: 13, size: 128, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1844 = !{!1845}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1842, file: !1843, line: 14, baseType: !198, size: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1250, file: !1251, line: 1097, baseType: !1847, size: 64, offset: 15104)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1251, line: 50, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1250, file: !1251, line: 1100, baseType: !1850, size: 64, offset: 15168)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1251, line: 1100, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1250, file: !1251, line: 1103, baseType: !1853, size: 64, offset: 15232)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1251, line: 53, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1250, file: !1251, line: 1107, baseType: !1856, size: 64, offset: 15296)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1251, line: 56, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1250, file: !1251, line: 1110, baseType: !1859, size: 64, offset: 15360)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1861, line: 93, size: 8768, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1912, !1921, !1922, !1924, !1925, !1926, !1929, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1967, !1968, !1975, !1985, !1988, !1989, !1992, !1993, !1994, !1995, !1996, !1997}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1860, file: !1861, line: 94, baseType: !296, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1860, file: !1861, line: 95, baseType: !172, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1860, file: !1861, line: 96, baseType: !70, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1860, file: !1861, line: 97, baseType: !70, size: 32, offset: 96)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1860, file: !1861, line: 98, baseType: !198, size: 128, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1860, file: !1861, line: 100, baseType: !318, size: 192, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1860, file: !1861, line: 103, baseType: !1249, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1860, file: !1861, line: 106, baseType: !1871, size: 192, offset: 512)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !554, line: 32, size: 192, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1871, file: !554, line: 33, baseType: !198, size: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1871, file: !554, line: 34, baseType: !1875, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1876, line: 25, baseType: !1877)
!1876 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1876, line: 23, size: 64, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1877, file: !1876, line: 24, baseType: !1488, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1860, file: !1861, line: 109, baseType: !305, size: 64, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1860, file: !1861, line: 112, baseType: !70, size: 32, offset: 768)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1860, file: !1861, line: 114, baseType: !70, size: 32, offset: 800)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1860, file: !1861, line: 115, baseType: !1249, size: 64, offset: 832)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1860, file: !1861, line: 118, baseType: !70, size: 32, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1860, file: !1861, line: 119, baseType: !13, size: 32, offset: 928)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1860, file: !1861, line: 121, baseType: !1887, size: 64, offset: 960)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1861, line: 80, size: 448, elements: !1889)
!1889 = !{!1890, !1891, !1897}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1888, file: !1861, line: 81, baseType: !172, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1888, file: !1861, line: 82, baseType: !1892, size: 128, offset: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1861, line: 75, size: 128, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1892, file: !1861, line: 76, baseType: !1249, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1892, file: !1861, line: 77, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1888, file: !1861, line: 83, baseType: !1777, size: 256, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1860, file: !1861, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1860, file: !1861, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1860, file: !1861, line: 138, baseType: !13, size: 32, offset: 1056)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1860, file: !1861, line: 139, baseType: !198, size: 128, offset: 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1860, file: !1861, line: 142, baseType: !1361, size: 512, offset: 1216)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1860, file: !1861, line: 143, baseType: !1369, size: 64, offset: 1728)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1860, file: !1861, line: 150, baseType: !1905, size: 256, offset: 1792)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1906, size: 256, elements: !1910)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1861, line: 38, size: 128, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1906, file: !1861, line: 39, baseType: !374, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1906, file: !1861, line: 40, baseType: !374, size: 64, offset: 64)
!1910 = !{!1911}
!1911 = !DISubrange(count: 2)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1860, file: !1861, line: 156, baseType: !1913, size: 192, offset: 2048)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1861, line: 66, size: 192, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1913, file: !1861, line: 67, baseType: !1916, size: 192)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1861, line: 47, size: 192, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1916, file: !1861, line: 48, baseType: !150, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1916, file: !1861, line: 49, baseType: !150, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1916, file: !1861, line: 50, baseType: !150, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1860, file: !1861, line: 160, baseType: !1806, size: 640, offset: 2240)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1860, file: !1861, line: 163, baseType: !1923, size: 256, offset: 2880)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !314)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1860, file: !1861, line: 169, baseType: !292, size: 64, offset: 3136)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1860, file: !1861, line: 172, baseType: !70, size: 32, offset: 3200)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1860, file: !1861, line: 174, baseType: !1927, size: 64, offset: 3264)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1861, line: 174, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1860, file: !1861, line: 185, baseType: !1930, size: 64, offset: 3328)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !594, line: 860, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !594, line: 853, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1931, file: !594, line: 858, baseType: !593, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1931, file: !594, line: 859, baseType: !251, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1860, file: !1861, line: 186, baseType: !374, size: 64, offset: 3392)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1860, file: !1861, line: 186, baseType: !374, size: 64, offset: 3456)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1860, file: !1861, line: 186, baseType: !374, size: 64, offset: 3520)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1860, file: !1861, line: 186, baseType: !374, size: 64, offset: 3584)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1860, file: !1861, line: 187, baseType: !374, size: 64, offset: 3648)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1860, file: !1861, line: 188, baseType: !374, size: 64, offset: 3712)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1860, file: !1861, line: 189, baseType: !1794, size: 192, offset: 3776)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1860, file: !1861, line: 190, baseType: !69, size: 64, offset: 3968)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1860, file: !1861, line: 190, baseType: !69, size: 64, offset: 4032)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1860, file: !1861, line: 190, baseType: !69, size: 64, offset: 4096)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1860, file: !1861, line: 190, baseType: !69, size: 64, offset: 4160)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1860, file: !1861, line: 191, baseType: !69, size: 64, offset: 4224)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1860, file: !1861, line: 191, baseType: !69, size: 64, offset: 4288)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1860, file: !1861, line: 191, baseType: !69, size: 64, offset: 4352)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1860, file: !1861, line: 191, baseType: !69, size: 64, offset: 4416)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1860, file: !1861, line: 192, baseType: !69, size: 64, offset: 4480)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1860, file: !1861, line: 192, baseType: !69, size: 64, offset: 4544)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1860, file: !1861, line: 192, baseType: !69, size: 64, offset: 4608)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1860, file: !1861, line: 192, baseType: !69, size: 64, offset: 4672)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1860, file: !1861, line: 193, baseType: !69, size: 64, offset: 4736)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1860, file: !1861, line: 193, baseType: !69, size: 64, offset: 4800)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1860, file: !1861, line: 194, baseType: !1957, size: 448, offset: 4864)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1958, line: 12, size: 448, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965, !1966}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1957, file: !1958, line: 15, baseType: !374, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1957, file: !1958, line: 17, baseType: !374, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1957, file: !1958, line: 19, baseType: !374, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1957, file: !1958, line: 21, baseType: !374, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1957, file: !1958, line: 29, baseType: !374, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1957, file: !1958, line: 35, baseType: !374, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1957, file: !1958, line: 44, baseType: !374, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1860, file: !1861, line: 202, baseType: !376, size: 64, offset: 5312)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1860, file: !1861, line: 213, baseType: !1969, size: 2048, offset: 5376)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1970, size: 2048, elements: !1829)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1971, line: 43, size: 128, elements: !1972)
!1971 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1970, file: !1971, line: 44, baseType: !134, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1970, file: !1971, line: 45, baseType: !134, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1860, file: !1861, line: 216, baseType: !1976, size: 448, offset: 7424)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1861, line: 30, size: 448, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1976, file: !1861, line: 31, baseType: !70, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1976, file: !1861, line: 32, baseType: !742, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1976, file: !1861, line: 33, baseType: !69, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1976, file: !1861, line: 34, baseType: !374, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1976, file: !1861, line: 34, baseType: !374, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1976, file: !1861, line: 35, baseType: !69, size: 64, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1976, file: !1861, line: 35, baseType: !69, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1860, file: !1861, line: 219, baseType: !1986, size: 64, offset: 7872)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1861, line: 219, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1860, file: !1861, line: 222, baseType: !13, size: 32, offset: 7936)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1860, file: !1861, line: 223, baseType: !1990, size: 64, offset: 8000)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1861, line: 223, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1860, file: !1861, line: 230, baseType: !464, size: 8, offset: 8064)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1860, file: !1861, line: 231, baseType: !436, size: 16, offset: 8080)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1860, file: !1861, line: 232, baseType: !436, size: 16, offset: 8096)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1860, file: !1861, line: 234, baseType: !1535, size: 64, offset: 8128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1860, file: !1861, line: 237, baseType: !144, size: 256, offset: 8192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1860, file: !1861, line: 243, baseType: !406, size: 320, offset: 8448)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1250, file: !1251, line: 1111, baseType: !1999, size: 64, offset: 15424)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1861, line: 20, size: 16640, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2005}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2000, file: !1861, line: 21, baseType: !251, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2000, file: !1861, line: 22, baseType: !296, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2000, file: !1861, line: 23, baseType: !318, size: 192, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2000, file: !1861, line: 24, baseType: !2006, size: 16384, offset: 256)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2007, size: 16384, elements: !2027)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !554, line: 51, size: 256, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2007, file: !554, line: 52, baseType: !2010, size: 256)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !554, line: 37, size: 256, elements: !2011)
!2011 = !{!2012, !2019, !2020, !2026}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2010, file: !554, line: 39, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2014, line: 83, baseType: !2015)
!2014 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2014, line: 82, baseType: !2017)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !70}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2010, file: !554, line: 40, baseType: !69, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2010, file: !554, line: 46, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2014, line: 86, baseType: !2022)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2014, line: 85, baseType: !2024)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2010, file: !554, line: 48, baseType: !1875, size: 64, offset: 192)
!2027 = !{!2028}
!2028 = !DISubrange(count: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1250, file: !1251, line: 1112, baseType: !1875, size: 64, offset: 15488)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1250, file: !1251, line: 1113, baseType: !1875, size: 64, offset: 15552)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1250, file: !1251, line: 1115, baseType: !1875, size: 64, offset: 15616)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1250, file: !1251, line: 1116, baseType: !1871, size: 192, offset: 15680)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1250, file: !1251, line: 1117, baseType: !69, size: 64, offset: 15872)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1250, file: !1251, line: 1118, baseType: !130, size: 64, offset: 15936)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1250, file: !1251, line: 1119, baseType: !13, size: 32, offset: 16000)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1250, file: !1251, line: 1121, baseType: !244, size: 64, offset: 16064)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1250, file: !1251, line: 1125, baseType: !2038, size: 64, offset: 16128)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1251, line: 43, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1250, file: !1251, line: 1127, baseType: !337, size: 32, offset: 16192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1250, file: !1251, line: 1128, baseType: !13, size: 32, offset: 16224)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1250, file: !1251, line: 1130, baseType: !2043, size: 128, offset: 16256)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2044, line: 37, size: 128, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2043, file: !2044, line: 38, baseType: !70, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2043, file: !2044, line: 39, baseType: !172, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2043, file: !2044, line: 40, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2044, line: 24, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1250, file: !1251, line: 1131, baseType: !2052, size: 256, offset: 16384)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2053, line: 12, size: 256, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2054 = !{!2055, !2056, !2057, !2058}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2052, file: !2053, line: 13, baseType: !128, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2052, file: !2053, line: 14, baseType: !69, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2052, file: !2053, line: 15, baseType: !69, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2052, file: !2053, line: 16, baseType: !464, size: 8, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1250, file: !1251, line: 1134, baseType: !374, size: 64, offset: 16640)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1250, file: !1251, line: 1135, baseType: !374, size: 64, offset: 16704)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1250, file: !1251, line: 1138, baseType: !251, size: 32, offset: 16768)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1250, file: !1251, line: 1141, baseType: !159, size: 32, offset: 16800)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1250, file: !1251, line: 1143, baseType: !2064, size: 64, offset: 16832)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1251, line: 735, size: 64, elements: !2065)
!2065 = !{!2066}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2064, file: !1251, line: 736, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1250, file: !1251, line: 1147, baseType: !1420, size: 128, offset: 16896)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1250, file: !1251, line: 1149, baseType: !1249, size: 64, offset: 17024)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1250, file: !1251, line: 1151, baseType: !2071, size: 64, offset: 17088)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1251, line: 1151, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1250, file: !1251, line: 1188, baseType: !68, size: 64, offset: 17152)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1250, file: !1251, line: 1191, baseType: !2075, size: 64, offset: 17216)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1251, line: 44, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1250, file: !1251, line: 1194, baseType: !2078, size: 64, offset: 17280)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1251, line: 45, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1250, file: !1251, line: 1197, baseType: !2081, size: 64, offset: 17344)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1251, line: 61, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1250, file: !1251, line: 1199, baseType: !2084, size: 64, offset: 17408)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2086, line: 99, size: 128, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2085, file: !2086, line: 100, baseType: !148, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2085, file: !2086, line: 101, baseType: !172, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2085, file: !2086, line: 103, baseType: !190, size: 16, offset: 96)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1250, file: !1251, line: 1202, baseType: !2092, size: 64, offset: 17472)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1251, line: 48, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1250, file: !1251, line: 1205, baseType: !69, size: 64, offset: 17536)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1250, file: !1251, line: 1206, baseType: !2096, size: 64, offset: 17600)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !554, line: 14, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !554, line: 12, size: 384, elements: !2099)
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2098, file: !554, line: 13, baseType: !2101, size: 384)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !554, line: 13, size: 384, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2101, file: !554, line: 13, baseType: !70, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2101, file: !554, line: 13, baseType: !70, size: 32, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2101, file: !554, line: 13, baseType: !70, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2101, file: !554, line: 13, baseType: !2107, size: 256, offset: 128)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2108, line: 37, size: 256, elements: !2109)
!2108 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2109 = !{!2110, !2115, !2128, !2134, !2143, !2170, !2175}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2107, file: !2108, line: 42, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 39, size: 64, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2111, file: !2108, line: 40, baseType: !1760, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2111, file: !2108, line: 41, baseType: !343, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2107, file: !2108, line: 50, baseType: !2116, size: 192)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 45, size: 192, elements: !2117)
!2117 = !{!2118, !2120, !2121, !2127}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2116, file: !2108, line: 46, baseType: !2119, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !133, line: 95, baseType: !70)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2116, file: !2108, line: 47, baseType: !70, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2116, file: !2108, line: 48, baseType: !2122, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2108, line: 11, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2108, line: 8, size: 64, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2123, file: !2108, line: 9, baseType: !70, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2123, file: !2108, line: 10, baseType: !68, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2116, file: !2108, line: 49, baseType: !70, size: 32, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2107, file: !2108, line: 57, baseType: !2129, size: 128)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 53, size: 128, elements: !2130)
!2130 = !{!2131, !2132, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2129, file: !2108, line: 54, baseType: !1760, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2129, file: !2108, line: 55, baseType: !343, size: 32, offset: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2129, file: !2108, line: 56, baseType: !2122, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2107, file: !2108, line: 66, baseType: !2135, size: 256)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 60, size: 256, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2140, !2142}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2135, file: !2108, line: 61, baseType: !1760, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2135, file: !2108, line: 62, baseType: !343, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2135, file: !2108, line: 63, baseType: !70, size: 32, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2135, file: !2108, line: 64, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !133, line: 94, baseType: !784)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2135, file: !2108, line: 65, baseType: !2141, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2107, file: !2108, line: 105, baseType: !2144, size: 256)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 69, size: 256, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2144, file: !2108, line: 70, baseType: !68, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, scope: !2144, file: !2108, line: 79, baseType: !2148, size: 192, offset: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2144, file: !2108, line: 79, size: 192, elements: !2149)
!2149 = !{!2150, !2151, !2152, !2159, !2164}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2148, file: !2108, line: 81, baseType: !70, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2148, file: !2108, line: 86, baseType: !436, size: 16)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2148, file: !2108, line: 92, baseType: !2153, size: 192)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !2108, line: 88, size: 192, elements: !2154)
!2154 = !{!2155, !2157, !2158}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2153, file: !2108, line: 89, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1404)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2153, file: !2108, line: 90, baseType: !68, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2153, file: !2108, line: 91, baseType: !68, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2148, file: !2108, line: 97, baseType: !2160, size: 96)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !2108, line: 94, size: 96, elements: !2161)
!2161 = !{!2162, !2163}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2160, file: !2108, line: 95, baseType: !2156, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2160, file: !2108, line: 96, baseType: !432, size: 32, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2148, file: !2108, line: 103, baseType: !2165, size: 128)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !2108, line: 99, size: 128, elements: !2166)
!2166 = !{!2167, !2168, !2169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2165, file: !2108, line: 100, baseType: !69, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2165, file: !2108, line: 101, baseType: !432, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2165, file: !2108, line: 102, baseType: !432, size: 32, offset: 96)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2107, file: !2108, line: 111, baseType: !2171, size: 128)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 108, size: 128, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2171, file: !2108, line: 109, baseType: !742, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2171, file: !2108, line: 110, baseType: !70, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2107, file: !2108, line: 118, baseType: !2176, size: 128)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2107, file: !2108, line: 114, size: 128, elements: !2177)
!2177 = !{!2178, !2179, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2176, file: !2108, line: 115, baseType: !68, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2176, file: !2108, line: 116, baseType: !70, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2176, file: !2108, line: 117, baseType: !13, size: 32, offset: 96)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1250, file: !1251, line: 1208, baseType: !1957, size: 448, offset: 17664)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1250, file: !1251, line: 1215, baseType: !374, size: 64, offset: 18112)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1250, file: !1251, line: 1217, baseType: !374, size: 64, offset: 18176)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1250, file: !1251, line: 1219, baseType: !374, size: 64, offset: 18240)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1250, file: !1251, line: 1223, baseType: !2186, size: 64, offset: 18304)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2187, line: 99, baseType: !2188)
!2187 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2187, line: 99, size: 64, elements: !2189)
!2189 = !{!2190}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2188, file: !2187, line: 99, baseType: !1488, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1250, file: !1251, line: 1225, baseType: !593, size: 32, offset: 18368)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1250, file: !1251, line: 1226, baseType: !70, size: 32, offset: 18400)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1250, file: !1251, line: 1227, baseType: !70, size: 32, offset: 18432)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1250, file: !1251, line: 1231, baseType: !2195, size: 64, offset: 18496)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1251, line: 1231, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1250, file: !1251, line: 1233, baseType: !198, size: 128, offset: 18560)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1250, file: !1251, line: 1240, baseType: !2199, size: 64, offset: 18688)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1251, line: 62, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1250, file: !1251, line: 1242, baseType: !2202, size: 64, offset: 18752)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1251, line: 1242, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1250, file: !1251, line: 1244, baseType: !198, size: 128, offset: 18816)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1250, file: !1251, line: 1245, baseType: !2206, size: 64, offset: 18944)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1251, line: 51, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1250, file: !1251, line: 1246, baseType: !144, size: 256, offset: 19008)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1250, file: !1251, line: 1247, baseType: !13, size: 32, offset: 19264)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1250, file: !1251, line: 1250, baseType: !2211, size: 64, offset: 19328)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1251, line: 57, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1250, file: !1251, line: 1251, baseType: !144, size: 256, offset: 19392)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1250, file: !1251, line: 1252, baseType: !198, size: 128, offset: 19648)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1250, file: !1251, line: 1259, baseType: !2216, size: 64, offset: 19776)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1251, line: 54, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1250, file: !1251, line: 1260, baseType: !436, size: 16, offset: 19840)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1250, file: !1251, line: 1261, baseType: !436, size: 16, offset: 19856)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1250, file: !1251, line: 1314, baseType: !2221, size: 64, offset: 19904)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2223, line: 62, size: 256, align: 256, elements: !2224)
!2223 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2222, file: !2223, line: 75, baseType: !432, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2222, file: !2223, line: 90, baseType: !432, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2222, file: !2223, line: 112, baseType: !375, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !2223, line: 132, baseType: !432, size: 32, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2222, file: !2223, line: 140, baseType: !432, size: 32, offset: 160)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2222, file: !2223, line: 149, baseType: !432, size: 32, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2222, file: !2223, line: 154, baseType: !2232, offset: 224)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !333)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1250, file: !1251, line: 1315, baseType: !431, size: 32, offset: 19968)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1250, file: !1251, line: 1316, baseType: !431, size: 32, offset: 20000)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1250, file: !1251, line: 1321, baseType: !69, size: 64, offset: 20032)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1250, file: !1251, line: 1325, baseType: !70, size: 32, offset: 20096)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1250, file: !1251, line: 1326, baseType: !70, size: 32, offset: 20128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1250, file: !1251, line: 1327, baseType: !70, size: 32, offset: 20160)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1250, file: !1251, line: 1328, baseType: !70, size: 32, offset: 20192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1250, file: !1251, line: 1329, baseType: !241, size: 128, align: 64, offset: 20224)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1250, file: !1251, line: 1332, baseType: !2242, size: 128, offset: 20352)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2243, line: 51, size: 128, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2244 = !{!2245, !2250, !2251}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2242, file: !2243, line: 60, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2247, line: 7, size: 64, elements: !2248)
!2247 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2248 = !{!2249}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2246, file: !2247, line: 12, baseType: !1485, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2242, file: !2243, line: 63, baseType: !464, size: 8, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2242, file: !2243, line: 70, baseType: !464, size: 8, offset: 72)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1250, file: !1251, line: 1335, baseType: !2253, size: 64, offset: 20480)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1251, line: 59, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1250, file: !1251, line: 1337, baseType: !2256, size: 128, offset: 20544)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2243, line: 39, size: 128, elements: !2257)
!2257 = !{!2258, !2522, !2523}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2256, file: !2243, line: 40, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1021, line: 74, size: 512, align: 128, elements: !2261)
!2261 = !{!2262, !2263, !2516, !2521}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2260, file: !1021, line: 75, baseType: !69, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !1021, line: 83, baseType: !2264, size: 320, offset: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2260, file: !1021, line: 83, size: 320, elements: !2265)
!2265 = !{!2266, !2490, !2504, !2508, !2515}
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !1021, line: 84, baseType: !2267, size: 320)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2264, file: !1021, line: 84, size: 320, elements: !2268)
!2268 = !{!2269, !2280, !2484, !2489}
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !1021, line: 90, baseType: !2270, size: 128)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2267, file: !1021, line: 90, size: 128, elements: !2271)
!2271 = !{!2272, !2273, !2278, !2279}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2270, file: !1021, line: 91, baseType: !198, size: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !1021, line: 94, baseType: !2274, size: 128)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !1021, line: 94, size: 128, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2274, file: !1021, line: 96, baseType: !68, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2274, file: !1021, line: 98, baseType: !13, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2270, file: !1021, line: 102, baseType: !198, size: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2270, file: !1021, line: 103, baseType: !198, size: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2267, file: !1021, line: 106, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !21, line: 472, size: 1536, align: 64, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2476, !2477, !2478, !2481, !2482, !2483}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2282, file: !21, line: 473, baseType: !627, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2282, file: !21, line: 474, baseType: !829, size: 128, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2282, file: !21, line: 475, baseType: !406, size: 320, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2282, file: !21, line: 476, baseType: !834, size: 32, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2282, file: !21, line: 477, baseType: !172, size: 32, offset: 544)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2282, file: !21, line: 482, baseType: !1420, size: 128, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2282, file: !21, line: 483, baseType: !69, size: 64, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2282, file: !21, line: 484, baseType: !69, size: 64, offset: 768)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2282, file: !21, line: 485, baseType: !2293, size: 64, offset: 832)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2295)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !21, line: 404, size: 1280, elements: !2296)
!2296 = !{!2297, !2301, !2371, !2375, !2379, !2385, !2391, !2395, !2400, !2404, !2408, !2412, !2440, !2444, !2448, !2452, !2457, !2461, !2468, !2472}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2295, file: !21, line: 405, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!70, !2259, !910}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2295, file: !21, line: 406, baseType: !2302, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!70, !746, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1021, line: 293, size: 1536, elements: !2307)
!2307 = !{!2308, !2338, !2352}
!2308 = !DIDerivedType(tag: DW_TAG_member, scope: !2306, file: !1021, line: 295, baseType: !2309, size: 512)
!2309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !1021, line: 295, size: 512, elements: !2310)
!2310 = !{!2311, !2337}
!2311 = !DIDerivedType(tag: DW_TAG_member, scope: !2309, file: !1021, line: 296, baseType: !2312, size: 448)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !1021, line: 296, size: 448, elements: !2313)
!2313 = !{!2314, !2315, !2324, !2325, !2326, !2335, !2336}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !1021, line: 298, baseType: !69, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, scope: !2312, file: !1021, line: 299, baseType: !2316, size: 128, offset: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2312, file: !1021, line: 299, size: 128, elements: !2317)
!2317 = !{!2318, !2319}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2316, file: !1021, line: 300, baseType: !198, size: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2316, file: !1021, line: 302, baseType: !2320, size: 128)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2316, file: !1021, line: 302, size: 128, elements: !2321)
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2320, file: !1021, line: 303, baseType: !68, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2320, file: !1021, line: 305, baseType: !13, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2312, file: !1021, line: 310, baseType: !2281, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2312, file: !1021, line: 311, baseType: !69, size: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, scope: !2312, file: !1021, line: 312, baseType: !2327, size: 64, offset: 320)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2312, file: !1021, line: 312, size: 64, elements: !2328)
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2327, file: !1021, line: 313, baseType: !68, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2327, file: !1021, line: 314, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1021, line: 257, baseType: !2332)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1021, line: 255, size: 64, elements: !2333)
!2333 = !{!2334}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2332, file: !1021, line: 256, baseType: !69, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2312, file: !1021, line: 316, baseType: !172, size: 32, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2312, file: !1021, line: 317, baseType: !172, size: 32, offset: 416)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2309, file: !1021, line: 323, baseType: !2260, size: 512, align: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, scope: !2306, file: !1021, line: 325, baseType: !2339, size: 512, offset: 512)
!2339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !1021, line: 325, size: 512, elements: !2340)
!2340 = !{!2341, !2351}
!2341 = !DIDerivedType(tag: DW_TAG_member, scope: !2339, file: !1021, line: 326, baseType: !2342, size: 320)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2339, file: !1021, line: 326, size: 320, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2342, file: !1021, line: 327, baseType: !69, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2342, file: !1021, line: 328, baseType: !69, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2342, file: !1021, line: 329, baseType: !69, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2342, file: !1021, line: 331, baseType: !172, size: 32, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2342, file: !1021, line: 332, baseType: !172, size: 32, offset: 224)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2342, file: !1021, line: 333, baseType: !172, size: 32, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2342, file: !1021, line: 335, baseType: !13, size: 32, offset: 288)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2339, file: !1021, line: 339, baseType: !2260, size: 512, align: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2306, file: !1021, line: 341, baseType: !2353, size: 512, offset: 1024)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !1021, line: 341, size: 512, elements: !2354)
!2354 = !{!2355, !2364, !2370}
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2353, file: !1021, line: 342, baseType: !2356, size: 384)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !1021, line: 342, size: 384, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2363}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2356, file: !1021, line: 343, baseType: !69, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2356, file: !1021, line: 344, baseType: !69, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2356, file: !1021, line: 346, baseType: !68, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2356, file: !1021, line: 347, baseType: !68, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2356, file: !1021, line: 348, baseType: !68, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2356, file: !1021, line: 349, baseType: !68, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !2353, file: !1021, line: 352, baseType: !2365, size: 256)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !1021, line: 352, size: 256, elements: !2366)
!2366 = !{!2367, !2368, !2369}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2365, file: !1021, line: 353, baseType: !69, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2365, file: !1021, line: 354, baseType: !69, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2365, file: !1021, line: 356, baseType: !198, size: 128, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2353, file: !1021, line: 359, baseType: !2260, size: 512, align: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2295, file: !21, line: 409, baseType: !2372, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!70, !2281, !910}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2295, file: !21, line: 412, baseType: !2376, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!464, !2281, !2305}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2295, file: !21, line: 414, baseType: !2380, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !21, line: 310, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2295, file: !21, line: 416, baseType: !2386, size: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!70, !746, !2281, !139, !13, !2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2295, file: !21, line: 419, baseType: !2392, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!70, !746, !2281, !139, !13, !13, !2259, !68}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2295, file: !21, line: 424, baseType: !2396, size: 64, offset: 448)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!2399, !2281, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !131, line: 131, baseType: !374)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2295, file: !21, line: 425, baseType: !2401, size: 64, offset: 512)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !2305, !130, !130}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2295, file: !21, line: 426, baseType: !2405, size: 64, offset: 576)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!464, !2305, !834}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2295, file: !21, line: 427, baseType: !2409, size: 64, offset: 640)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2305}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2295, file: !21, line: 428, baseType: !2413, size: 64, offset: 704)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!782, !2416, !2438}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !21, line: 373, size: 384, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2425, !2426, !2427, !2428}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2417, file: !21, line: 374, baseType: !746, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2417, file: !21, line: 375, baseType: !139, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2417, file: !21, line: 376, baseType: !2422, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2416, !742}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2417, file: !21, line: 377, baseType: !68, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2417, file: !21, line: 378, baseType: !70, size: 32, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2417, file: !21, line: 379, baseType: !188, size: 16, offset: 288)
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !21, line: 380, baseType: !2429, size: 64, offset: 320)
!2429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2417, file: !21, line: 380, size: 64, elements: !2430)
!2430 = !{!2431, !2434}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2429, file: !21, line: 386, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !21, line: 386, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2429, file: !21, line: 395, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!782, !68}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !21, line: 69, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2295, file: !21, line: 433, baseType: !2441, size: 64, offset: 768)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!70, !2281, !2305, !2305, !42}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2295, file: !21, line: 435, baseType: !2445, size: 64, offset: 832)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!70, !2305}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2295, file: !21, line: 436, baseType: !2449, size: 64, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!464, !2305, !130, !130}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2295, file: !21, line: 438, baseType: !2453, size: 64, offset: 960)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2305, !2456, !2456}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2295, file: !21, line: 439, baseType: !2458, size: 64, offset: 1024)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!70, !2281, !2259}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2295, file: !21, line: 442, baseType: !2462, size: 64, offset: 1088)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!70, !2465, !746, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !21, line: 66, flags: DIFlagFwdDecl)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2295, file: !21, line: 444, baseType: !2469, size: 64, offset: 1152)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !746}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2295, file: !21, line: 445, baseType: !2473, size: 64, offset: 1216)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!70, !2416, !2438}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2282, file: !21, line: 486, baseType: !69, size: 64, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2282, file: !21, line: 487, baseType: !406, size: 320, offset: 960)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2282, file: !21, line: 488, baseType: !2479, size: 32, offset: 1280)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2480, line: 8, baseType: !431)
!2480 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2282, file: !21, line: 489, baseType: !251, size: 32, offset: 1312)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2282, file: !21, line: 490, baseType: !198, size: 128, offset: 1344)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2282, file: !21, line: 491, baseType: !68, size: 64, offset: 1472)
!2484 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !1021, line: 107, baseType: !2485, size: 64, offset: 192)
!2485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2267, file: !1021, line: 107, size: 64, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2485, file: !1021, line: 108, baseType: !69, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2485, file: !1021, line: 109, baseType: !69, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2267, file: !1021, line: 117, baseType: !69, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !1021, line: 119, baseType: !2491, size: 320)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2264, file: !1021, line: 119, size: 320, elements: !2492)
!2492 = !{!2493, !2494, !2497, !2498, !2499}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2491, file: !1021, line: 124, baseType: !69, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2491, file: !1021, line: 125, baseType: !2495, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1021, line: 125, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2491, file: !1021, line: 126, baseType: !69, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2491, file: !1021, line: 127, baseType: !69, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, scope: !2491, file: !1021, line: 128, baseType: !2500, size: 64, offset: 256)
!2500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2491, file: !1021, line: 128, size: 64, elements: !2501)
!2501 = !{!2502, !2503}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2500, file: !1021, line: 133, baseType: !69, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2500, file: !1021, line: 138, baseType: !148, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !1021, line: 141, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2264, file: !1021, line: 141, size: 64, elements: !2506)
!2506 = !{!2507}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2505, file: !1021, line: 142, baseType: !69, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !1021, line: 144, baseType: !2509, size: 128)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2264, file: !1021, line: 144, size: 128, elements: !2510)
!2510 = !{!2511, !2514}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2509, file: !1021, line: 146, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1021, line: 146, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2509, file: !1021, line: 147, baseType: !68, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2264, file: !1021, line: 161, baseType: !241, size: 128, align: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !1021, line: 164, baseType: !2517, size: 32, offset: 384)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2260, file: !1021, line: 164, size: 32, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2517, file: !1021, line: 169, baseType: !172, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2517, file: !1021, line: 177, baseType: !13, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2260, file: !1021, line: 181, baseType: !172, size: 32, offset: 416)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2256, file: !2243, line: 42, baseType: !432, size: 32, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2256, file: !2243, line: 43, baseType: !432, size: 32, offset: 96)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1250, file: !1251, line: 1340, baseType: !2525, size: 64, offset: 20672)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1251, line: 69, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1250, file: !1251, line: 1351, baseType: !70, size: 32, offset: 20736)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1250, file: !1251, line: 1352, baseType: !70, size: 32, offset: 20768)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1250, file: !1251, line: 1354, baseType: !69, size: 64, offset: 20800)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1250, file: !1251, line: 1364, baseType: !374, size: 64, offset: 20864)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1250, file: !1251, line: 1365, baseType: !374, size: 64, offset: 20928)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1250, file: !1251, line: 1412, baseType: !69, size: 64, offset: 20992)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1250, file: !1251, line: 1453, baseType: !2534, size: 64, offset: 21056)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1251, line: 1453, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1250, file: !1251, line: 1457, baseType: !2537, size: 64, offset: 21120)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !50, line: 61, size: 576, elements: !2539)
!2539 = !{!2540, !2541, !2560, !2563, !2564, !2597, !2607}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2538, file: !50, line: 62, baseType: !49, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2538, file: !50, line: 64, baseType: !2542, size: 192, offset: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2538, file: !50, line: 64, size: 192, elements: !2543)
!2543 = !{!2544, !2555}
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !2542, file: !50, line: 65, baseType: !2545, size: 192)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2542, file: !50, line: 65, size: 192, elements: !2546)
!2546 = !{!2547, !2554}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2545, file: !50, line: 66, baseType: !2548, size: 128)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2549, line: 50, size: 128, elements: !2550)
!2549 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2550 = !{!2551, !2552, !2553}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2548, file: !2549, line: 52, baseType: !69, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2548, file: !2549, line: 54, baseType: !13, size: 32, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2548, file: !2549, line: 55, baseType: !13, size: 32, offset: 96)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2545, file: !50, line: 67, baseType: !69, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2542, file: !50, line: 70, baseType: !2556, size: 192)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2542, file: !50, line: 70, size: 192, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2556, file: !50, line: 71, baseType: !241, size: 128, align: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2556, file: !50, line: 72, baseType: !69, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2538, file: !50, line: 76, baseType: !2561, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !50, line: 76, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2538, file: !50, line: 77, baseType: !69, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2538, file: !50, line: 79, baseType: !2565, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2549, line: 25, size: 256, elements: !2567)
!2567 = !{!2568, !2574, !2578}
!2568 = !DIDerivedType(tag: DW_TAG_member, scope: !2566, file: !2549, line: 26, baseType: !2569, size: 128)
!2569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2566, file: !2549, line: 26, size: 128, elements: !2570)
!2570 = !{!2571, !2573}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2569, file: !2549, line: 27, baseType: !2572, size: 128)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 128, elements: !1829)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2569, file: !2549, line: 28, baseType: !2572, size: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2566, file: !2549, line: 31, baseType: !2575, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2577)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2549, line: 23, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !2566, file: !2549, line: 33, baseType: !2579, size: 64, offset: 192)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2566, file: !2549, line: 33, size: 64, elements: !2580)
!2580 = !{!2581, !2587, !2592}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2579, file: !2549, line: 38, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2579, file: !2549, line: 34, size: 64, elements: !2583)
!2583 = !{!2584, !2585, !2586}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2582, file: !2549, line: 35, baseType: !391, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2582, file: !2549, line: 36, baseType: !180, size: 8, offset: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2582, file: !2549, line: 37, baseType: !180, size: 8, offset: 40)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2579, file: !2549, line: 42, baseType: !2588, size: 16)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2579, file: !2549, line: 39, size: 16, elements: !2589)
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2588, file: !2549, line: 40, baseType: !180, size: 8)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2588, file: !2549, line: 41, baseType: !180, size: 8, offset: 8)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2579, file: !2549, line: 46, baseType: !2593, size: 16)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2579, file: !2549, line: 43, size: 16, elements: !2594)
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2593, file: !2549, line: 44, baseType: !180, size: 8)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2593, file: !2549, line: 45, baseType: !180, size: 8, offset: 8)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2538, file: !50, line: 81, baseType: !2598, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !50, line: 85, size: 384, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2599, file: !50, line: 86, baseType: !2561, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2599, file: !50, line: 87, baseType: !69, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2599, file: !50, line: 88, baseType: !69, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2599, file: !50, line: 89, baseType: !69, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2599, file: !50, line: 90, baseType: !464, size: 8, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2599, file: !50, line: 92, baseType: !2598, size: 64, offset: 320)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2538, file: !50, line: 82, baseType: !13, size: 32, offset: 512)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1250, file: !1251, line: 1463, baseType: !2609, offset: 21184)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1251, line: 739, elements: !879)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1250, file: !1251, line: 1470, baseType: !241, size: 128, align: 64, offset: 21184)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1250, file: !1251, line: 1471, baseType: !296, size: 32, offset: 21312)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1250, file: !1251, line: 1472, baseType: !70, size: 32, offset: 21344)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1250, file: !1251, line: 1474, baseType: !1249, size: 64, offset: 21376)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1250, file: !1251, line: 1475, baseType: !2615, size: 320, offset: 21440)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2616, line: 11, size: 320, elements: !2617)
!2616 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2617 = !{!2618, !2619, !2620, !2625}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2615, file: !2616, line: 16, baseType: !309, size: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2615, file: !2616, line: 17, baseType: !69, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2615, file: !2616, line: 18, baseType: !2621, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2624}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2615, file: !2616, line: 19, baseType: !431, size: 32, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1250, file: !1251, line: 1478, baseType: !2627, size: 64, offset: 21760)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1251, line: 1478, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1250, file: !1251, line: 1482, baseType: !296, size: 32, offset: 21824)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1250, file: !1251, line: 1489, baseType: !68, size: 64, offset: 21888)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1250, file: !1251, line: 1504, baseType: !68, size: 64, offset: 21952)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1250, file: !1251, line: 1505, baseType: !375, size: 64, offset: 22016)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1250, file: !1251, line: 1506, baseType: !374, size: 64, offset: 22080)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1250, file: !1251, line: 1507, baseType: !375, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1250, file: !1251, line: 1508, baseType: !375, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1250, file: !1251, line: 1509, baseType: !375, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1250, file: !1251, line: 1510, baseType: !241, size: 128, align: 64, offset: 22208)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1250, file: !1251, line: 1511, baseType: !70, size: 32, offset: 22336)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1250, file: !1251, line: 1515, baseType: !2640, size: 64, offset: 22400)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !236, line: 56, size: 64, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2640, file: !236, line: 57, baseType: !239, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1250, file: !1251, line: 1518, baseType: !2640, size: 64, offset: 22464)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1250, file: !1251, line: 1528, baseType: !241, size: 128, align: 64, offset: 22528)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1250, file: !1251, line: 1552, baseType: !2646, size: 35328, offset: 23040)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2647, line: 430, size: 35328, elements: !2648)
!2647 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2648 = !{!2649, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2678, !2679, !2680, !2681, !2682, !2683, !2686, !2687, !2688, !2689}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2646, file: !2647, line: 432, baseType: !2650, size: 192)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2651, size: 192, elements: !288)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2652, line: 16, size: 64, elements: !2653)
!2652 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2651, file: !2652, line: 17, baseType: !188, size: 16)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2651, file: !2652, line: 18, baseType: !188, size: 16, offset: 16)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2651, file: !2652, line: 19, baseType: !188, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2651, file: !2652, line: 19, baseType: !188, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2651, file: !2652, line: 19, baseType: !188, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2651, file: !2652, line: 19, baseType: !188, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2651, file: !2652, line: 19, baseType: !188, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2651, file: !2652, line: 20, baseType: !188, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2651, file: !2652, line: 20, baseType: !188, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2651, file: !2652, line: 20, baseType: !188, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2651, file: !2652, line: 20, baseType: !188, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2651, file: !2652, line: 20, baseType: !188, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2651, file: !2652, line: 20, baseType: !188, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2646, file: !2647, line: 436, baseType: !69, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2646, file: !2647, line: 440, baseType: !190, size: 16, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2646, file: !2647, line: 441, baseType: !190, size: 16, offset: 272)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2646, file: !2647, line: 442, baseType: !190, size: 16, offset: 288)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2646, file: !2647, line: 443, baseType: !190, size: 16, offset: 304)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2646, file: !2647, line: 447, baseType: !69, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2646, file: !2647, line: 448, baseType: !69, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2646, file: !2647, line: 459, baseType: !2675, size: 256, offset: 448)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2676, size: 256, elements: !314)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2647, line: 428, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2646, file: !2647, line: 461, baseType: !69, size: 64, offset: 704)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2646, file: !2647, line: 463, baseType: !69, size: 64, offset: 768)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2646, file: !2647, line: 465, baseType: !69, size: 64, offset: 832)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2646, file: !2647, line: 466, baseType: !69, size: 64, offset: 896)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2646, file: !2647, line: 467, baseType: !69, size: 64, offset: 960)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2646, file: !2647, line: 473, baseType: !2684, size: 64, offset: 1024)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2647, line: 10, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2646, file: !2647, line: 480, baseType: !69, size: 64, offset: 1088)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2646, file: !2647, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2646, file: !2647, line: 491, baseType: !431, size: 32, offset: 1184)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2646, file: !2647, line: 501, baseType: !2690, size: 33792, offset: 1536)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2691, line: 448, size: 33792, elements: !2692)
!2691 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2692 = !{!2693, !2694, !2695, !2857, !2858, !2864, !2865}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2690, file: !2691, line: 461, baseType: !13, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2690, file: !2691, line: 468, baseType: !69, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2690, file: !2691, line: 476, baseType: !2696, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2691, line: 356, size: 33280, align: 512, elements: !2698)
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2697, file: !2691, line: 358, baseType: !13, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2697, file: !2691, line: 361, baseType: !13, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2697, file: !2691, line: 364, baseType: !374, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2697, file: !2691, line: 367, baseType: !374, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2697, file: !2691, line: 370, baseType: !374, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2697, file: !2691, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2697, file: !2691, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2697, file: !2691, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2697, file: !2691, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2697, file: !2691, line: 397, baseType: !2709, size: 32768, offset: 512)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2691, line: 348, size: 32768, elements: !2710)
!2710 = !{!2711, !2726, !2763, !2840, !2853}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2709, file: !2691, line: 349, baseType: !2712, size: 896)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2691, line: 12, size: 896, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2725}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2712, file: !2691, line: 13, baseType: !431, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2712, file: !2691, line: 14, baseType: !431, size: 32, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2712, file: !2691, line: 15, baseType: !431, size: 32, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2712, file: !2691, line: 16, baseType: !431, size: 32, offset: 96)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2712, file: !2691, line: 17, baseType: !431, size: 32, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2712, file: !2691, line: 18, baseType: !431, size: 32, offset: 160)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2712, file: !2691, line: 19, baseType: !431, size: 32, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2712, file: !2691, line: 22, baseType: !2722, size: 640, offset: 224)
!2722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 640, elements: !2723)
!2723 = !{!2724}
!2724 = !DISubrange(count: 20)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2712, file: !2691, line: 25, baseType: !431, size: 32, offset: 864)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2709, file: !2691, line: 350, baseType: !2727, size: 4096, align: 128)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2691, line: 34, size: 4096, align: 128, elements: !2728)
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2748, !2749, !2750, !2754, !2756, !2758}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2727, file: !2691, line: 35, baseType: !188, size: 16)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2727, file: !2691, line: 36, baseType: !188, size: 16, offset: 16)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2727, file: !2691, line: 37, baseType: !188, size: 16, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2727, file: !2691, line: 38, baseType: !188, size: 16, offset: 48)
!2733 = !DIDerivedType(tag: DW_TAG_member, scope: !2727, file: !2691, line: 39, baseType: !2734, size: 128, offset: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2727, file: !2691, line: 39, size: 128, elements: !2735)
!2735 = !{!2736, !2741}
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !2734, file: !2691, line: 40, baseType: !2737, size: 128)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2691, line: 40, size: 128, elements: !2738)
!2738 = !{!2739, !2740}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2737, file: !2691, line: 41, baseType: !374, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2737, file: !2691, line: 42, baseType: !374, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2734, file: !2691, line: 44, baseType: !2742, size: 128)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2691, line: 44, size: 128, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2747}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2742, file: !2691, line: 45, baseType: !431, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2742, file: !2691, line: 46, baseType: !431, size: 32, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2742, file: !2691, line: 47, baseType: !431, size: 32, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2742, file: !2691, line: 48, baseType: !431, size: 32, offset: 96)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2727, file: !2691, line: 51, baseType: !431, size: 32, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2727, file: !2691, line: 52, baseType: !431, size: 32, offset: 224)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2727, file: !2691, line: 55, baseType: !2751, size: 1024, offset: 256)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 1024, elements: !2752)
!2752 = !{!2753}
!2753 = !DISubrange(count: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2727, file: !2691, line: 58, baseType: !2755, size: 2048, offset: 1280)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 2048, elements: !2027)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2727, file: !2691, line: 60, baseType: !2757, size: 384, offset: 3328)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 384, elements: !92)
!2758 = !DIDerivedType(tag: DW_TAG_member, scope: !2727, file: !2691, line: 62, baseType: !2759, size: 384, offset: 3712)
!2759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2727, file: !2691, line: 62, size: 384, elements: !2760)
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2759, file: !2691, line: 63, baseType: !2757, size: 384)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2759, file: !2691, line: 64, baseType: !2757, size: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2709, file: !2691, line: 351, baseType: !2764, size: 1088)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2691, line: 79, size: 1088, elements: !2765)
!2765 = !{!2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2839}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2764, file: !2691, line: 80, baseType: !431, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2764, file: !2691, line: 81, baseType: !431, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2764, file: !2691, line: 82, baseType: !431, size: 32, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2764, file: !2691, line: 83, baseType: !431, size: 32, offset: 96)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2764, file: !2691, line: 84, baseType: !431, size: 32, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2764, file: !2691, line: 85, baseType: !431, size: 32, offset: 160)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2764, file: !2691, line: 86, baseType: !431, size: 32, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2764, file: !2691, line: 88, baseType: !2722, size: 640, offset: 224)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2764, file: !2691, line: 89, baseType: !180, size: 8, offset: 864)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2764, file: !2691, line: 90, baseType: !180, size: 8, offset: 872)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2764, file: !2691, line: 91, baseType: !180, size: 8, offset: 880)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2764, file: !2691, line: 92, baseType: !180, size: 8, offset: 888)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2764, file: !2691, line: 93, baseType: !180, size: 8, offset: 896)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2764, file: !2691, line: 94, baseType: !180, size: 8, offset: 904)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2764, file: !2691, line: 95, baseType: !2781, size: 64, offset: 960)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2783, line: 11, size: 128, elements: !2784)
!2783 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2782, file: !2783, line: 12, baseType: !742, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2782, file: !2783, line: 13, baseType: !2787, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2789, line: 103, size: 1344, elements: !2790)
!2789 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2819, !2820, !2821}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2788, file: !2789, line: 109, baseType: !69, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2788, file: !2789, line: 110, baseType: !69, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2788, file: !2789, line: 111, baseType: !69, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2788, file: !2789, line: 112, baseType: !69, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2788, file: !2789, line: 113, baseType: !69, size: 64, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2788, file: !2789, line: 114, baseType: !69, size: 64, offset: 320)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2788, file: !2789, line: 117, baseType: !69, size: 64, offset: 384)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2788, file: !2789, line: 118, baseType: !69, size: 64, offset: 448)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2788, file: !2789, line: 119, baseType: !69, size: 64, offset: 512)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2788, file: !2789, line: 120, baseType: !69, size: 64, offset: 576)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2788, file: !2789, line: 121, baseType: !69, size: 64, offset: 640)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2788, file: !2789, line: 122, baseType: !69, size: 64, offset: 704)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2788, file: !2789, line: 123, baseType: !69, size: 64, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2788, file: !2789, line: 124, baseType: !69, size: 64, offset: 832)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2788, file: !2789, line: 125, baseType: !69, size: 64, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2788, file: !2789, line: 139, baseType: !69, size: 64, offset: 960)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2788, file: !2789, line: 142, baseType: !69, size: 64, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_member, scope: !2788, file: !2789, line: 144, baseType: !2809, size: 64, offset: 1088)
!2809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2788, file: !2789, line: 144, size: 64, elements: !2810)
!2810 = !{!2811, !2812, !2813}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2809, file: !2789, line: 146, baseType: !188, size: 16)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2809, file: !2789, line: 148, baseType: !374, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2809, file: !2789, line: 150, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2789, line: 59, size: 64, elements: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2814, file: !2789, line: 61, baseType: !374, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2814, file: !2789, line: 63, baseType: !374, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2814, file: !2789, line: 65, baseType: !374, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2788, file: !2789, line: 153, baseType: !69, size: 64, offset: 1152)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2788, file: !2789, line: 154, baseType: !69, size: 64, offset: 1216)
!2821 = !DIDerivedType(tag: DW_TAG_member, scope: !2788, file: !2789, line: 156, baseType: !2822, size: 64, offset: 1280)
!2822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2788, file: !2789, line: 156, size: 64, elements: !2823)
!2823 = !{!2824, !2825, !2826}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2822, file: !2789, line: 158, baseType: !188, size: 16)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2822, file: !2789, line: 160, baseType: !374, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2822, file: !2789, line: 162, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2789, line: 69, size: 64, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2827, file: !2789, line: 71, baseType: !374, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2827, file: !2789, line: 73, baseType: !374, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2827, file: !2789, line: 75, baseType: !374, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2827, file: !2789, line: 77, baseType: !374, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2827, file: !2789, line: 80, baseType: !374, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2827, file: !2789, line: 83, baseType: !374, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2827, file: !2789, line: 86, baseType: !374, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2827, file: !2789, line: 88, baseType: !374, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2827, file: !2789, line: 93, baseType: !374, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2827, file: !2789, line: 100, baseType: !374, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2764, file: !2691, line: 96, baseType: !431, size: 32, offset: 1024)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2709, file: !2691, line: 352, baseType: !2841, size: 4608, align: 512)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2691, line: 333, size: 4608, align: 512, elements: !2842)
!2842 = !{!2843, !2844, !2851}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2841, file: !2691, line: 334, baseType: !2727, size: 4096, align: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2841, file: !2691, line: 335, baseType: !2845, size: 512, offset: 4096)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2691, line: 312, size: 512, elements: !2846)
!2846 = !{!2847, !2848, !2849}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2845, file: !2691, line: 313, baseType: !374, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2845, file: !2691, line: 314, baseType: !374, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2845, file: !2691, line: 315, baseType: !2850, size: 384, offset: 128)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 384, elements: !80)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2841, file: !2691, line: 336, baseType: !2852, offset: 4608)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !333)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2709, file: !2691, line: 353, baseType: !2854, size: 32768)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 32768, elements: !2855)
!2855 = !{!2856}
!2856 = !DISubrange(count: 4096)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2690, file: !2691, line: 484, baseType: !2696, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2690, file: !2691, line: 491, baseType: !2859, size: 128, offset: 256)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2691, line: 404, size: 128, elements: !2860)
!2860 = !{!2861, !2862, !2863}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2859, file: !2691, line: 424, baseType: !374, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2859, file: !2691, line: 432, baseType: !13, size: 32, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2859, file: !2691, line: 440, baseType: !13, size: 32, offset: 96)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2690, file: !2691, line: 498, baseType: !2859, size: 128, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2690, file: !2691, line: 508, baseType: !2697, size: 33280, align: 512, offset: 512)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1231, file: !1232, line: 16, baseType: !318, size: 192, offset: 512)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1231, file: !1232, line: 17, baseType: !172, size: 32, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !839, file: !21, line: 1240, baseType: !68, size: 64, offset: 6912)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !839, file: !21, line: 1243, baseType: !431, size: 32, offset: 6976)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !839, file: !21, line: 1245, baseType: !422, size: 64, offset: 7040)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !839, file: !21, line: 1246, baseType: !422, size: 64, offset: 7104)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !839, file: !21, line: 1248, baseType: !432, size: 32, offset: 7168)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !839, file: !21, line: 1249, baseType: !2874, size: 64, offset: 7232)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !21, line: 634, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !839, file: !21, line: 1252, baseType: !2877, size: 256, offset: 7296)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2752)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !839, file: !21, line: 1253, baseType: !2879, size: 128, offset: 7552)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2880, line: 21, baseType: !2881)
!2880 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2880, line: 19, size: 128, elements: !2882)
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2881, file: !2880, line: 20, baseType: !2884, size: 128)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !1829)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !839, file: !21, line: 1255, baseType: !13, size: 32, offset: 7680)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !839, file: !21, line: 1261, baseType: !144, size: 256, offset: 7744)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !839, file: !21, line: 1267, baseType: !467, size: 64, offset: 8000)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !839, file: !21, line: 1269, baseType: !2889, size: 64, offset: 8064)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !589, line: 128, size: 1024, align: 512, elements: !2892)
!2892 = !{!2893, !2897, !2898, !2905, !2911, !2915, !2919, !2923, !2924, !2928, !2932, !2937, !2941}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2891, file: !589, line: 129, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!70, !587, !13}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2891, file: !589, line: 130, baseType: !2894, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2891, file: !589, line: 131, baseType: !2899, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!70, !2902, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2891, file: !589, line: 132, baseType: !2906, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!70, !2902, !13, !467, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2891, file: !589, line: 134, baseType: !2912, size: 64, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!70, !2902}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2891, file: !589, line: 135, baseType: !2916, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!70, !587}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2891, file: !589, line: 136, baseType: !2920, size: 64, offset: 384)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !587}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2891, file: !589, line: 137, baseType: !2920, size: 64, offset: 448)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2891, file: !589, line: 138, baseType: !2925, size: 64, offset: 512)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !587, !627}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2891, file: !589, line: 139, baseType: !2929, size: 64, offset: 576)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!128, !587, !128, !70}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2891, file: !589, line: 140, baseType: !2933, size: 64, offset: 640)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!582, !2936}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2891, file: !589, line: 141, baseType: !2938, size: 64, offset: 704)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!70, !751, !464}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2891, file: !589, line: 142, baseType: !2942, size: 64, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!587, !587, !2945}
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !839, file: !21, line: 1271, baseType: !2948, size: 448, offset: 8128)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1012, line: 63, size: 448, elements: !2949)
!2949 = !{!2950, !2955, !2956, !2957, !2958, !2959, !2960}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2948, file: !1012, line: 64, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!69, !2954, !1010}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2948, file: !1012, line: 66, baseType: !2951, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2948, file: !1012, line: 69, baseType: !742, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2948, file: !1012, line: 70, baseType: !70, size: 32, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2948, file: !1012, line: 71, baseType: !13, size: 32, offset: 224)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2948, file: !1012, line: 74, baseType: !198, size: 128, offset: 256)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2948, file: !1012, line: 85, baseType: !2961, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !839, file: !21, line: 1274, baseType: !148, size: 64, offset: 8576)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !839, file: !21, line: 1280, baseType: !148, size: 64, offset: 8640)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !839, file: !21, line: 1283, baseType: !70, size: 32, offset: 8704)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !839, file: !21, line: 1286, baseType: !2479, size: 32, offset: 8736)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !839, file: !21, line: 1289, baseType: !2967, size: 64, offset: 8768)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1667, line: 18, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !839, file: !21, line: 1290, baseType: !305, size: 64, offset: 8832)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !839, file: !21, line: 1297, baseType: !549, size: 64, offset: 8896)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !839, file: !21, line: 1304, baseType: !2972, size: 64, offset: 8960)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2973, line: 49, size: 64, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2972, file: !2973, line: 50, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2973, line: 41, size: 512, align: 512, elements: !2978)
!2978 = !{!2979, !2980, !2985}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2977, file: !2973, line: 43, baseType: !251, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2977, file: !2973, line: 45, baseType: !2981, size: 192, offset: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2973, line: 29, size: 192, elements: !2982)
!2982 = !{!2983, !2984}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2981, file: !2973, line: 30, baseType: !198, size: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2981, file: !2973, line: 32, baseType: !742, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2977, file: !2973, line: 46, baseType: !742, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !839, file: !21, line: 1305, baseType: !2972, size: 64, offset: 9024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !839, file: !21, line: 1306, baseType: !241, size: 128, align: 64, offset: 9088)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !839, file: !21, line: 1307, baseType: !1666, size: 256, offset: 9216)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !839, file: !21, line: 1309, baseType: !144, size: 256, offset: 9472)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !839, file: !21, line: 1314, baseType: !70, size: 32, offset: 9728)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !839, file: !21, line: 1317, baseType: !251, size: 32, align: 512, offset: 10240)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !839, file: !21, line: 1318, baseType: !198, size: 128, offset: 10304)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !839, file: !21, line: 1320, baseType: !251, size: 32, offset: 10432)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !839, file: !21, line: 1321, baseType: !198, size: 128, offset: 10496)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !628, file: !21, line: 656, baseType: !2281, size: 64, offset: 512)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !628, file: !21, line: 659, baseType: !68, size: 64, offset: 576)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !628, file: !21, line: 663, baseType: !69, size: 64, offset: 640)
!2998 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !21, line: 671, baseType: !2999, size: 32, offset: 704)
!2999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !21, line: 671, size: 32, elements: !3000)
!3000 = !{!3001, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2999, file: !21, line: 672, baseType: !3002, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2999, file: !21, line: 673, baseType: !13, size: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !628, file: !21, line: 675, baseType: !702, size: 32, offset: 736)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !628, file: !21, line: 676, baseType: !139, size: 64, offset: 768)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !628, file: !21, line: 677, baseType: !738, size: 128, offset: 832)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !628, file: !21, line: 678, baseType: !738, size: 128, offset: 960)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !628, file: !21, line: 679, baseType: !738, size: 128, offset: 1088)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !628, file: !21, line: 680, baseType: !251, size: 32, offset: 1216)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !628, file: !21, line: 681, baseType: !190, size: 16, offset: 1248)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !628, file: !21, line: 682, baseType: !180, size: 8, offset: 1264)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !628, file: !21, line: 683, baseType: !180, size: 8, offset: 1272)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !628, file: !21, line: 684, baseType: !1144, size: 64, offset: 1280)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !628, file: !21, line: 691, baseType: !69, size: 64, offset: 1344)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !628, file: !21, line: 692, baseType: !406, size: 320, offset: 1408)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !628, file: !21, line: 694, baseType: !69, size: 64, offset: 1728)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !628, file: !21, line: 695, baseType: !69, size: 64, offset: 1792)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !628, file: !21, line: 697, baseType: !309, size: 128, offset: 1856)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !628, file: !21, line: 698, baseType: !198, size: 128, offset: 1984)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !628, file: !21, line: 707, baseType: !198, size: 128, offset: 2112)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !628, file: !21, line: 708, baseType: !198, size: 128, offset: 2240)
!3022 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !21, line: 709, baseType: !3023, size: 128, offset: 2368)
!3023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !21, line: 709, size: 128, elements: !3024)
!3024 = !{!3025, !3026}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3023, file: !21, line: 710, baseType: !305, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3023, file: !21, line: 711, baseType: !241, size: 128, align: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !628, file: !21, line: 713, baseType: !150, size: 64, offset: 2496)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !628, file: !21, line: 714, baseType: !150, size: 64, offset: 2560)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !628, file: !21, line: 715, baseType: !172, size: 32, offset: 2624)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !628, file: !21, line: 716, baseType: !172, size: 32, offset: 2656)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !628, file: !21, line: 717, baseType: !172, size: 32, offset: 2688)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !628, file: !21, line: 719, baseType: !172, size: 32, offset: 2720)
!3033 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !21, line: 721, baseType: !3034, size: 64, offset: 2752)
!3034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !21, line: 721, size: 64, elements: !3035)
!3035 = !{!3036, !3217}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3034, file: !21, line: 722, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3039)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !21, line: 1914, size: 2112, elements: !3040)
!3040 = !{!3041, !3042, !3046, !3050, !3054, !3055, !3056, !3062, !3075, !3083, !3087, !3088, !3145, !3146, !3150, !3155, !3156, !3160, !3164, !3170, !3171, !3175, !3176, !3180, !3184, !3185, !3190, !3194, !3198, !3202, !3206, !3207, !3213}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3039, file: !21, line: 1915, baseType: !871, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3039, file: !21, line: 1916, baseType: !3043, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!139, !746, !139, !70}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3039, file: !21, line: 1917, baseType: !3047, size: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!782, !746, !128, !130, !212}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3039, file: !21, line: 1918, baseType: !3051, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!782, !746, !467, !130, !212}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3039, file: !21, line: 1919, baseType: !2413, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3039, file: !21, line: 1920, baseType: !2413, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3039, file: !21, line: 1921, baseType: !3057, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!70, !2416, !3060, !13}
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !21, line: 53, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3039, file: !21, line: 1923, baseType: !3063, size: 64, offset: 448)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!70, !746, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !21, line: 1858, size: 128, elements: !3068)
!3068 = !{!3069, !3074}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3067, file: !21, line: 1859, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !21, line: 1855, baseType: !3071)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!464, !3066, !467, !70, !139, !374, !13}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3067, file: !21, line: 1860, baseType: !139, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3039, file: !21, line: 1924, baseType: !3076, size: 64, offset: 512)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!3079, !746, !3081}
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3080, line: 59, baseType: !13)
!3080 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !21, line: 61, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3039, file: !21, line: 1925, baseType: !3084, size: 64, offset: 576)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!742, !746, !13, !69}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3039, file: !21, line: 1926, baseType: !3084, size: 64, offset: 640)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3039, file: !21, line: 1927, baseType: !3089, size: 64, offset: 704)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!70, !746, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1021, line: 625, size: 1344, elements: !3094)
!3094 = !{!3095, !3104, !3105, !3111, !3118, !3119, !3124, !3125, !3130, !3131, !3134, !3138, !3139, !3140, !3141, !3142, !3143}
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !1021, line: 628, baseType: !3096, size: 128)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !1021, line: 628, size: 128, elements: !3097)
!3097 = !{!3098, !3103}
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !1021, line: 629, baseType: !3099, size: 128)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3096, file: !1021, line: 629, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3099, file: !1021, line: 631, baseType: !69, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3099, file: !1021, line: 632, baseType: !69, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3096, file: !1021, line: 635, baseType: !241, size: 128, align: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3093, file: !1021, line: 639, baseType: !1535, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3093, file: !1021, line: 640, baseType: !3106, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1570, line: 297, baseType: !3107)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1570, line: 297, size: 64, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3107, file: !1570, line: 297, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1575, line: 19, baseType: !69)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !1021, line: 646, baseType: !3112, size: 64, offset: 256)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !1021, line: 646, size: 64, elements: !3113)
!3113 = !{!3114, !3117}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3112, file: !1021, line: 647, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1021, line: 542, baseType: !69)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3112, file: !1021, line: 648, baseType: !3116, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3093, file: !1021, line: 666, baseType: !70, size: 32, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3093, file: !1021, line: 667, baseType: !3120, size: 64, offset: 384)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1021, line: 579, size: 320, elements: !3122)
!3122 = !{!3123}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3121, file: !1021, line: 580, baseType: !406, size: 320)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3093, file: !1021, line: 670, baseType: !464, size: 8, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3093, file: !1021, line: 681, baseType: !3126, size: 256, offset: 512)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3093, file: !1021, line: 678, size: 256, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3126, file: !1021, line: 679, baseType: !398, size: 192, align: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3126, file: !1021, line: 680, baseType: !69, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3093, file: !1021, line: 689, baseType: !198, size: 128, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3093, file: !1021, line: 691, baseType: !3132, size: 64, offset: 896)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1021, line: 691, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3093, file: !1021, line: 694, baseType: !3135, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3137)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1021, line: 694, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3093, file: !1021, line: 697, baseType: !69, size: 64, offset: 1024)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3093, file: !1021, line: 699, baseType: !746, size: 64, offset: 1088)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3093, file: !1021, line: 700, baseType: !68, size: 64, offset: 1152)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3093, file: !1021, line: 711, baseType: !148, size: 64, offset: 1216)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3093, file: !1021, line: 717, baseType: !2216, size: 64, offset: 1280)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3093, file: !1021, line: 722, baseType: !3144, offset: 1344)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1021, line: 570, elements: !879)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3039, file: !21, line: 1928, baseType: !69, size: 64, offset: 768)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3039, file: !21, line: 1929, baseType: !3147, size: 64, offset: 832)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!70, !627, !746}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3039, file: !21, line: 1930, baseType: !3151, size: 64, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!70, !746, !3154}
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !21, line: 1061, baseType: !68)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3039, file: !21, line: 1931, baseType: !3147, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3039, file: !21, line: 1932, baseType: !3157, size: 64, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!70, !746, !139, !139, !70}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3039, file: !21, line: 1933, baseType: !3161, size: 64, offset: 1088)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!70, !70, !746, !70}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3039, file: !21, line: 1934, baseType: !3165, size: 64, offset: 1152)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!70, !746, !70, !3168}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !21, line: 1063, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3039, file: !21, line: 1935, baseType: !1559, size: 64, offset: 1216)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3039, file: !21, line: 1936, baseType: !3172, size: 64, offset: 1280)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!70, !70}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3039, file: !21, line: 1937, baseType: !3165, size: 64, offset: 1344)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3039, file: !21, line: 1938, baseType: !3177, size: 64, offset: 1408)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!782, !2253, !746, !212, !130, !13}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3039, file: !21, line: 1939, baseType: !3181, size: 64, offset: 1472)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!782, !746, !212, !2253, !130, !13}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3039, file: !21, line: 1940, baseType: !2469, size: 64, offset: 1536)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3039, file: !21, line: 1941, baseType: !3186, size: 64, offset: 1600)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!70, !746, !70, !3189, !2390}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3039, file: !21, line: 1942, baseType: !3191, size: 64, offset: 1664)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!742, !746, !70, !139, !139}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3039, file: !21, line: 1944, baseType: !3195, size: 64, offset: 1728)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !123, !746}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3039, file: !21, line: 1948, baseType: !3199, size: 64, offset: 1792)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!782, !746, !139, !746, !139, !130, !13}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3039, file: !21, line: 1950, baseType: !3203, size: 64, offset: 1856)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!139, !746, !139, !746, !139, !139, !13}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3039, file: !21, line: 1953, baseType: !3157, size: 64, offset: 1920)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3039, file: !21, line: 1954, baseType: !3208, size: 64, offset: 1984)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!70, !3211, !13}
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !21, line: 1911, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3039, file: !21, line: 1955, baseType: !3214, size: 64, offset: 2048)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!70, !3211, !3060, !13}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3034, file: !21, line: 723, baseType: !898, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !628, file: !21, line: 725, baseType: !3219, size: 64, offset: 2816)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !21, line: 725, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !628, file: !21, line: 726, baseType: !2282, size: 1536, align: 64, offset: 2880)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !628, file: !21, line: 727, baseType: !198, size: 128, offset: 4416)
!3223 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !21, line: 728, baseType: !3224, size: 64, offset: 4544)
!3224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !21, line: 728, size: 64, elements: !3225)
!3225 = !{!3226, !3227, !3230, !3231}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3224, file: !21, line: 729, baseType: !2253, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3224, file: !21, line: 730, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !21, line: 730, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3224, file: !21, line: 731, baseType: !128, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3224, file: !21, line: 732, baseType: !13, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !628, file: !21, line: 735, baseType: !432, size: 32, offset: 4608)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !628, file: !21, line: 738, baseType: !432, size: 32, offset: 4640)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !628, file: !21, line: 739, baseType: !2874, size: 64, offset: 4672)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !628, file: !21, line: 750, baseType: !68, size: 64, offset: 4736)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !588, file: !589, line: 91, baseType: !3237, size: 256, offset: 448)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !2752)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !588, file: !589, line: 94, baseType: !3239, size: 64, offset: 704)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3240, line: 25, size: 64, elements: !3241)
!3240 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3241 = !{!3242}
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !3239, file: !3240, line: 26, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3239, file: !3240, line: 26, size: 64, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3243, file: !3240, line: 28, baseType: !375, size: 64, align: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, scope: !3243, file: !3240, line: 30, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3243, file: !3240, line: 30, size: 64, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3247, file: !3240, line: 31, baseType: !251, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3247, file: !3240, line: 32, baseType: !70, size: 32, offset: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !588, file: !589, line: 95, baseType: !2889, size: 64, offset: 768)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !588, file: !589, line: 96, baseType: !838, size: 64, offset: 832)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !588, file: !589, line: 97, baseType: !69, size: 64, offset: 896)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !588, file: !589, line: 98, baseType: !68, size: 64, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !589, line: 100, baseType: !3256, size: 128, offset: 1024)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !589, line: 100, size: 128, elements: !3257)
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3256, file: !589, line: 101, baseType: !198, size: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3256, file: !589, line: 102, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !588, file: !589, line: 104, baseType: !198, size: 128, offset: 1152)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !588, file: !589, line: 105, baseType: !198, size: 128, offset: 1280)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !588, file: !589, line: 113, baseType: !3264, size: 128, offset: 1408)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !589, line: 109, size: 128, elements: !3265)
!3265 = !{!3266, !3267, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3264, file: !589, line: 110, baseType: !309, size: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3264, file: !589, line: 111, baseType: !603, size: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3264, file: !589, line: 112, baseType: !241, size: 128, align: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !583, file: !584, line: 72, baseType: !838, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !583, file: !584, line: 73, baseType: !70, size: 32, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !583, file: !584, line: 74, baseType: !667, size: 64, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !578, file: !579, line: 10, baseType: !587, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !229, file: !21, line: 1015, baseType: !627, size: 64, offset: 1344)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !229, file: !21, line: 1016, baseType: !3037, size: 64, offset: 1408)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !229, file: !21, line: 1018, baseType: !374, size: 64, offset: 1472)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !229, file: !21, line: 1020, baseType: !68, size: 64, offset: 1536)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !229, file: !21, line: 1023, baseType: !68, size: 64, offset: 1600)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !229, file: !21, line: 1027, baseType: !3279, size: 64, offset: 1664)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !229, file: !21, line: 1029, baseType: !2281, size: 64, offset: 1728)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !229, file: !21, line: 1030, baseType: !2479, size: 32, offset: 1792)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !229, file: !21, line: 1031, baseType: !2479, size: 32, offset: 1824)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !124, file: !125, line: 29, baseType: !68, size: 64, offset: 896)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !96, line: 18, size: 192, elements: !3286)
!3286 = !{!3287, !3288, !3289}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3285, file: !96, line: 19, baseType: !128, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3285, file: !96, line: 20, baseType: !130, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3285, file: !96, line: 21, baseType: !130, size: 64, offset: 128)
!3290 = !{!3291, !3292, !3293}
!3291 = !DILocalVariable(name: "m", arg: 1, scope: !120, file: !2, line: 40, type: !123)
!3292 = !DILocalVariable(name: "s", arg: 2, scope: !120, file: !2, line: 40, type: !3284)
!3293 = !DILocalVariable(name: "len", scope: !120, file: !2, line: 42, type: !13)
!3294 = !DILocation(line: 40, column: 40, scope: !120)
!3295 = !DILocation(line: 40, column: 59, scope: !120)
!3296 = !DILocation(line: 42, column: 2, scope: !120)
!3297 = !DILocation(line: 42, column: 15, scope: !120)
!3298 = !DILocation(line: 42, column: 34, scope: !120)
!3299 = !DILocation(line: 42, column: 21, scope: !120)
!3300 = !DILocation(line: 44, column: 19, scope: !120)
!3301 = !DILocation(line: 44, column: 22, scope: !120)
!3302 = !DILocation(line: 44, column: 25, scope: !120)
!3303 = !DILocation(line: 44, column: 33, scope: !120)
!3304 = !DILocation(line: 44, column: 9, scope: !120)
!3305 = !DILocation(line: 45, column: 1, scope: !120)
!3306 = !DILocation(line: 44, column: 2, scope: !120)
!3307 = distinct !DISubprogram(name: "seq_buf_used", scope: !96, file: !96, line: 74, type: !3308, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!13, !3284}
!3310 = !{!3311, !3312, !3314}
!3311 = !DILocalVariable(name: "s", arg: 1, scope: !3307, file: !96, line: 74, type: !3284)
!3312 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !3313, file: !96, line: 76, type: !130)
!3313 = distinct !DILexicalBlock(scope: !3307, file: !96, line: 76, column: 9)
!3314 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !3313, file: !96, line: 76, type: !130)
!3315 = !DILocation(line: 74, column: 57, scope: !3307)
!3316 = !DILocation(line: 76, column: 9, scope: !3313)
!3317 = !DILocation(line: 76, column: 9, scope: !3307)
!3318 = !DILocation(line: 76, column: 2, scope: !3307)
!3319 = !DISubprogram(name: "seq_write", scope: !125, file: !125, line: 114, type: !3320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!70, !123, !3322, !130}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3324 = distinct !DISubprogram(name: "seq_buf_vprintf", scope: !2, file: !2, line: 57, type: !3325, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3334)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!70, !3284, !467, !3327}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3328, file: !2, line: 45, baseType: !13, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3328, file: !2, line: 45, baseType: !13, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3328, file: !2, line: 45, baseType: !68, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3328, file: !2, line: 45, baseType: !68, size: 64, offset: 128)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3341}
!3335 = !DILocalVariable(name: "s", arg: 1, scope: !3324, file: !2, line: 57, type: !3284)
!3336 = !DILocalVariable(name: "fmt", arg: 2, scope: !3324, file: !2, line: 57, type: !467)
!3337 = !DILocalVariable(name: "args", arg: 3, scope: !3324, file: !2, line: 57, type: !3327)
!3338 = !DILocalVariable(name: "len", scope: !3324, file: !2, line: 59, type: !70)
!3339 = !DILocalVariable(name: "__ret_warn_on", scope: !3340, file: !2, line: 61, type: !70)
!3340 = distinct !DILexicalBlock(scope: !3324, file: !2, line: 61, column: 2)
!3341 = !DILocalVariable(name: "__flags", scope: !3342, file: !2, line: 61, type: !70)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !2, line: 61, column: 2)
!3343 = distinct !DILexicalBlock(scope: !3340, file: !2, line: 61, column: 2)
!3344 = !DILocation(line: 57, column: 37, scope: !3324)
!3345 = !DILocation(line: 57, column: 52, scope: !3324)
!3346 = !DILocation(line: 57, column: 65, scope: !3324)
!3347 = !DILocation(line: 59, column: 2, scope: !3324)
!3348 = !DILocation(line: 59, column: 6, scope: !3324)
!3349 = !DILocation(line: 61, column: 2, scope: !3340)
!3350 = !DILocation(line: 61, column: 2, scope: !3343)
!3351 = !DILocation(line: 61, column: 2, scope: !3342)
!3352 = !DILocation(line: 61, column: 2, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3342, file: !2, line: 61, column: 2)
!3354 = !DILocation(line: 61, column: 2, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3342, file: !2, line: 61, column: 2)
!3356 = !{i64 2153411252, i64 2153411281, i64 2153411327, i64 2153411385, i64 2153411439, i64 2153411493, i64 2153411548, i64 2153411579, i64 2153411887, i64 2153411893, i64 2153411940, i64 2153411963, i64 2153411989}
!3357 = !DILocation(line: 61, column: 2, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3342, file: !2, line: 61, column: 2)
!3359 = !DILocation(line: 61, column: 2, scope: !3324)
!3360 = !DILocation(line: 63, column: 6, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3324, file: !2, line: 63, column: 6)
!3362 = !DILocation(line: 63, column: 9, scope: !3361)
!3363 = !DILocation(line: 63, column: 15, scope: !3361)
!3364 = !DILocation(line: 63, column: 18, scope: !3361)
!3365 = !DILocation(line: 63, column: 13, scope: !3361)
!3366 = !DILocation(line: 63, column: 6, scope: !3324)
!3367 = !DILocation(line: 64, column: 19, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 63, column: 24)
!3369 = !DILocation(line: 64, column: 22, scope: !3368)
!3370 = !DILocation(line: 64, column: 31, scope: !3368)
!3371 = !DILocation(line: 64, column: 34, scope: !3368)
!3372 = !DILocation(line: 64, column: 29, scope: !3368)
!3373 = !DILocation(line: 64, column: 39, scope: !3368)
!3374 = !DILocation(line: 64, column: 42, scope: !3368)
!3375 = !DILocation(line: 64, column: 49, scope: !3368)
!3376 = !DILocation(line: 64, column: 52, scope: !3368)
!3377 = !DILocation(line: 64, column: 47, scope: !3368)
!3378 = !DILocation(line: 64, column: 57, scope: !3368)
!3379 = !DILocation(line: 64, column: 62, scope: !3368)
!3380 = !DILocation(line: 64, column: 9, scope: !3368)
!3381 = !DILocation(line: 64, column: 7, scope: !3368)
!3382 = !DILocation(line: 65, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3368, file: !2, line: 65, column: 7)
!3384 = !DILocation(line: 65, column: 10, scope: !3383)
!3385 = !DILocation(line: 65, column: 16, scope: !3383)
!3386 = !DILocation(line: 65, column: 14, scope: !3383)
!3387 = !DILocation(line: 65, column: 22, scope: !3383)
!3388 = !DILocation(line: 65, column: 25, scope: !3383)
!3389 = !DILocation(line: 65, column: 20, scope: !3383)
!3390 = !DILocation(line: 65, column: 7, scope: !3368)
!3391 = !DILocation(line: 66, column: 14, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3383, file: !2, line: 65, column: 31)
!3393 = !DILocation(line: 66, column: 4, scope: !3392)
!3394 = !DILocation(line: 66, column: 7, scope: !3392)
!3395 = !DILocation(line: 66, column: 11, scope: !3392)
!3396 = !DILocation(line: 67, column: 4, scope: !3392)
!3397 = !DILocation(line: 69, column: 2, scope: !3368)
!3398 = !DILocation(line: 70, column: 23, scope: !3324)
!3399 = !DILocation(line: 70, column: 2, scope: !3324)
!3400 = !DILocation(line: 71, column: 2, scope: !3324)
!3401 = !DILocation(line: 72, column: 1, scope: !3324)
!3402 = !DISubprogram(name: "vsnprintf", scope: !3403, file: !3403, line: 13, type: !3404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3403 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!70, !128, !130, !467, !3327}
!3406 = distinct !DISubprogram(name: "seq_buf_set_overflow", scope: !96, file: !96, line: 56, type: !3407, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3284}
!3409 = !{!3410}
!3410 = !DILocalVariable(name: "s", arg: 1, scope: !3406, file: !96, line: 56, type: !3284)
!3411 = !DILocation(line: 56, column: 38, scope: !3406)
!3412 = !DILocation(line: 58, column: 11, scope: !3406)
!3413 = !DILocation(line: 58, column: 14, scope: !3406)
!3414 = !DILocation(line: 58, column: 19, scope: !3406)
!3415 = !DILocation(line: 58, column: 2, scope: !3406)
!3416 = !DILocation(line: 58, column: 5, scope: !3406)
!3417 = !DILocation(line: 58, column: 9, scope: !3406)
!3418 = !DILocation(line: 59, column: 1, scope: !3406)
!3419 = distinct !DISubprogram(name: "seq_buf_printf", scope: !2, file: !2, line: 83, type: !3420, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!70, !3284, !467, null}
!3422 = !{!3423, !3424, !3425, !3430}
!3423 = !DILocalVariable(name: "s", arg: 1, scope: !3419, file: !2, line: 83, type: !3284)
!3424 = !DILocalVariable(name: "fmt", arg: 2, scope: !3419, file: !2, line: 83, type: !467)
!3425 = !DILocalVariable(name: "ap", scope: !3419, file: !2, line: 85, type: !3426)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3427, line: 5, baseType: !3428)
!3427 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !3429)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3328, size: 192, elements: !103)
!3430 = !DILocalVariable(name: "ret", scope: !3419, file: !2, line: 86, type: !70)
!3431 = !DILocation(line: 83, column: 36, scope: !3419)
!3432 = !DILocation(line: 83, column: 51, scope: !3419)
!3433 = !DILocation(line: 85, column: 2, scope: !3419)
!3434 = !DILocation(line: 85, column: 10, scope: !3419)
!3435 = !DILocation(line: 86, column: 2, scope: !3419)
!3436 = !DILocation(line: 86, column: 6, scope: !3419)
!3437 = !DILocation(line: 88, column: 2, scope: !3419)
!3438 = !DILocation(line: 89, column: 24, scope: !3419)
!3439 = !DILocation(line: 89, column: 27, scope: !3419)
!3440 = !DILocation(line: 89, column: 32, scope: !3419)
!3441 = !DILocation(line: 89, column: 8, scope: !3419)
!3442 = !DILocation(line: 89, column: 6, scope: !3419)
!3443 = !DILocation(line: 90, column: 2, scope: !3419)
!3444 = !DILocation(line: 92, column: 9, scope: !3419)
!3445 = !DILocation(line: 93, column: 1, scope: !3419)
!3446 = !DILocation(line: 92, column: 2, scope: !3419)
!3447 = distinct !DISubprogram(name: "seq_buf_do_printk", scope: !2, file: !2, line: 105, type: !3448, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !3284, !467}
!3450 = !{!3451, !3452, !3453, !3454, !3455}
!3451 = !DILocalVariable(name: "s", arg: 1, scope: !3447, file: !2, line: 105, type: !3284)
!3452 = !DILocalVariable(name: "lvl", arg: 2, scope: !3447, file: !2, line: 105, type: !467)
!3453 = !DILocalVariable(name: "start", scope: !3447, file: !2, line: 107, type: !467)
!3454 = !DILocalVariable(name: "lf", scope: !3447, file: !2, line: 107, type: !467)
!3455 = !DILocalVariable(name: "len", scope: !3456, file: !2, line: 114, type: !70)
!3456 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 113, column: 37)
!3457 = !DILocation(line: 105, column: 40, scope: !3447)
!3458 = !DILocation(line: 105, column: 55, scope: !3447)
!3459 = !DILocation(line: 107, column: 2, scope: !3447)
!3460 = !DILocation(line: 107, column: 14, scope: !3447)
!3461 = !DILocation(line: 107, column: 22, scope: !3447)
!3462 = !DILocation(line: 109, column: 6, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 109, column: 6)
!3464 = !DILocation(line: 109, column: 9, scope: !3463)
!3465 = !DILocation(line: 109, column: 14, scope: !3463)
!3466 = !DILocation(line: 109, column: 19, scope: !3463)
!3467 = !DILocation(line: 109, column: 22, scope: !3463)
!3468 = !DILocation(line: 109, column: 25, scope: !3463)
!3469 = !DILocation(line: 109, column: 29, scope: !3463)
!3470 = !DILocation(line: 109, column: 6, scope: !3447)
!3471 = !DILocation(line: 110, column: 3, scope: !3463)
!3472 = !DILocation(line: 112, column: 22, scope: !3447)
!3473 = !DILocation(line: 112, column: 10, scope: !3447)
!3474 = !DILocation(line: 112, column: 8, scope: !3447)
!3475 = !DILocation(line: 113, column: 2, scope: !3447)
!3476 = !DILocation(line: 113, column: 22, scope: !3447)
!3477 = !DILocation(line: 113, column: 15, scope: !3447)
!3478 = !DILocation(line: 113, column: 13, scope: !3447)
!3479 = !DILocation(line: 114, column: 3, scope: !3456)
!3480 = !DILocation(line: 114, column: 7, scope: !3456)
!3481 = !DILocation(line: 114, column: 13, scope: !3456)
!3482 = !DILocation(line: 114, column: 18, scope: !3456)
!3483 = !DILocation(line: 114, column: 16, scope: !3456)
!3484 = !DILocation(line: 114, column: 24, scope: !3456)
!3485 = !DILocation(line: 116, column: 3, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3456, file: !2, line: 116, column: 3)
!3487 = !DILocation(line: 116, column: 3, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3486, file: !2, line: 116, column: 3)
!3489 = !DILocation(line: 117, column: 11, scope: !3456)
!3490 = !DILocation(line: 117, column: 9, scope: !3456)
!3491 = !DILocation(line: 118, column: 2, scope: !3447)
!3492 = distinct !{!3492, !3475, !3491, !3493, !3494}
!3493 = !{!"llvm.loop.mustprogress"}
!3494 = !{!"llvm.loop.unroll.disable"}
!3495 = !DILocation(line: 121, column: 6, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 121, column: 6)
!3497 = !DILocation(line: 121, column: 14, scope: !3496)
!3498 = !DILocation(line: 121, column: 17, scope: !3496)
!3499 = !DILocation(line: 121, column: 26, scope: !3496)
!3500 = !DILocation(line: 121, column: 29, scope: !3496)
!3501 = !DILocation(line: 121, column: 24, scope: !3496)
!3502 = !DILocation(line: 121, column: 12, scope: !3496)
!3503 = !DILocation(line: 121, column: 6, scope: !3447)
!3504 = !DILocation(line: 122, column: 3, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3496, file: !2, line: 122, column: 3)
!3506 = !DILocation(line: 122, column: 3, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3505, file: !2, line: 122, column: 3)
!3508 = !DILocation(line: 122, column: 3, scope: !3496)
!3509 = !DILocation(line: 123, column: 1, scope: !3447)
!3510 = distinct !DISubprogram(name: "seq_buf_str", scope: !96, file: !96, line: 95, type: !3511, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!467, !3284}
!3513 = !{!3514, !3515, !3518}
!3514 = !DILocalVariable(name: "s", arg: 1, scope: !3510, file: !96, line: 95, type: !3284)
!3515 = !DILocalVariable(name: "__ret_warn_on", scope: !3516, file: !96, line: 97, type: !70)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !96, line: 97, column: 6)
!3517 = distinct !DILexicalBlock(scope: !3510, file: !96, line: 97, column: 6)
!3518 = !DILocalVariable(name: "__flags", scope: !3519, file: !96, line: 97, type: !70)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !96, line: 97, column: 6)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !96, line: 97, column: 6)
!3521 = !DILocation(line: 95, column: 55, scope: !3510)
!3522 = !DILocation(line: 97, column: 6, scope: !3516)
!3523 = !DILocation(line: 97, column: 6, scope: !3520)
!3524 = !DILocation(line: 97, column: 6, scope: !3519)
!3525 = !DILocation(line: 97, column: 6, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3519, file: !96, line: 97, column: 6)
!3527 = !DILocation(line: 97, column: 6, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3519, file: !96, line: 97, column: 6)
!3529 = !{i64 2153406788, i64 2153406817, i64 2153406863, i64 2153406921, i64 2153406975, i64 2153407029, i64 2153407084, i64 2153407115, i64 2153407423, i64 2153407429, i64 2153407476, i64 2153407499, i64 2153407525}
!3530 = !DILocation(line: 97, column: 6, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3519, file: !96, line: 97, column: 6)
!3532 = !DILocation(line: 97, column: 6, scope: !3517)
!3533 = !DILocation(line: 97, column: 6, scope: !3510)
!3534 = !DILocation(line: 98, column: 3, scope: !3517)
!3535 = !DILocation(line: 100, column: 26, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3510, file: !96, line: 100, column: 6)
!3537 = !DILocation(line: 100, column: 6, scope: !3536)
!3538 = !DILocation(line: 100, column: 6, scope: !3510)
!3539 = !DILocation(line: 101, column: 3, scope: !3536)
!3540 = !DILocation(line: 101, column: 6, scope: !3536)
!3541 = !DILocation(line: 101, column: 13, scope: !3536)
!3542 = !DILocation(line: 101, column: 16, scope: !3536)
!3543 = !DILocation(line: 101, column: 21, scope: !3536)
!3544 = !DILocation(line: 103, column: 3, scope: !3536)
!3545 = !DILocation(line: 103, column: 6, scope: !3536)
!3546 = !DILocation(line: 103, column: 13, scope: !3536)
!3547 = !DILocation(line: 103, column: 16, scope: !3536)
!3548 = !DILocation(line: 103, column: 21, scope: !3536)
!3549 = !DILocation(line: 103, column: 26, scope: !3536)
!3550 = !DILocation(line: 105, column: 9, scope: !3510)
!3551 = !DILocation(line: 105, column: 12, scope: !3510)
!3552 = !DILocation(line: 105, column: 2, scope: !3510)
!3553 = !DILocation(line: 106, column: 1, scope: !3510)
!3554 = !DISubprogram(name: "strchr", scope: !3555, file: !3555, line: 100, type: !3556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3555 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!128, !467, !70}
!3558 = !DISubprogram(name: "_printk", scope: !57, file: !57, line: 153, type: !3559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!70, !467, null}
!3561 = distinct !DISubprogram(name: "seq_buf_bprintf", scope: !2, file: !2, line: 144, type: !3562, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3566)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!70, !3284, !467, !3564}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3574}
!3567 = !DILocalVariable(name: "s", arg: 1, scope: !3561, file: !2, line: 144, type: !3284)
!3568 = !DILocalVariable(name: "fmt", arg: 2, scope: !3561, file: !2, line: 144, type: !467)
!3569 = !DILocalVariable(name: "binary", arg: 3, scope: !3561, file: !2, line: 144, type: !3564)
!3570 = !DILocalVariable(name: "len", scope: !3561, file: !2, line: 146, type: !13)
!3571 = !DILocalVariable(name: "ret", scope: !3561, file: !2, line: 147, type: !70)
!3572 = !DILocalVariable(name: "__ret_warn_on", scope: !3573, file: !2, line: 149, type: !70)
!3573 = distinct !DILexicalBlock(scope: !3561, file: !2, line: 149, column: 2)
!3574 = !DILocalVariable(name: "__flags", scope: !3575, file: !2, line: 149, type: !70)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !2, line: 149, column: 2)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !2, line: 149, column: 2)
!3577 = !DILocation(line: 144, column: 37, scope: !3561)
!3578 = !DILocation(line: 144, column: 52, scope: !3561)
!3579 = !DILocation(line: 144, column: 68, scope: !3561)
!3580 = !DILocation(line: 146, column: 2, scope: !3561)
!3581 = !DILocation(line: 146, column: 15, scope: !3561)
!3582 = !DILocation(line: 146, column: 41, scope: !3561)
!3583 = !DILocation(line: 146, column: 21, scope: !3561)
!3584 = !DILocation(line: 147, column: 2, scope: !3561)
!3585 = !DILocation(line: 147, column: 6, scope: !3561)
!3586 = !DILocation(line: 149, column: 2, scope: !3573)
!3587 = !DILocation(line: 149, column: 2, scope: !3576)
!3588 = !DILocation(line: 149, column: 2, scope: !3575)
!3589 = !DILocation(line: 149, column: 2, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3575, file: !2, line: 149, column: 2)
!3591 = !DILocation(line: 149, column: 2, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3575, file: !2, line: 149, column: 2)
!3593 = !{i64 2153416748, i64 2153416777, i64 2153416823, i64 2153416881, i64 2153416935, i64 2153416989, i64 2153417044, i64 2153417075, i64 2153417383, i64 2153417389, i64 2153417436, i64 2153417459, i64 2153417485}
!3594 = !DILocation(line: 149, column: 2, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3575, file: !2, line: 149, column: 2)
!3596 = !DILocation(line: 149, column: 2, scope: !3561)
!3597 = !DILocation(line: 151, column: 6, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3561, file: !2, line: 151, column: 6)
!3599 = !DILocation(line: 151, column: 9, scope: !3598)
!3600 = !DILocation(line: 151, column: 15, scope: !3598)
!3601 = !DILocation(line: 151, column: 18, scope: !3598)
!3602 = !DILocation(line: 151, column: 13, scope: !3598)
!3603 = !DILocation(line: 151, column: 6, scope: !3561)
!3604 = !DILocation(line: 152, column: 21, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3598, file: !2, line: 151, column: 24)
!3606 = !DILocation(line: 152, column: 24, scope: !3605)
!3607 = !DILocation(line: 152, column: 33, scope: !3605)
!3608 = !DILocation(line: 152, column: 36, scope: !3605)
!3609 = !DILocation(line: 152, column: 31, scope: !3605)
!3610 = !DILocation(line: 152, column: 41, scope: !3605)
!3611 = !DILocation(line: 152, column: 46, scope: !3605)
!3612 = !DILocation(line: 152, column: 51, scope: !3605)
!3613 = !DILocation(line: 152, column: 9, scope: !3605)
!3614 = !DILocation(line: 152, column: 7, scope: !3605)
!3615 = !DILocation(line: 153, column: 7, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3605, file: !2, line: 153, column: 7)
!3617 = !DILocation(line: 153, column: 10, scope: !3616)
!3618 = !DILocation(line: 153, column: 16, scope: !3616)
!3619 = !DILocation(line: 153, column: 14, scope: !3616)
!3620 = !DILocation(line: 153, column: 22, scope: !3616)
!3621 = !DILocation(line: 153, column: 25, scope: !3616)
!3622 = !DILocation(line: 153, column: 20, scope: !3616)
!3623 = !DILocation(line: 153, column: 7, scope: !3605)
!3624 = !DILocation(line: 154, column: 14, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 153, column: 31)
!3626 = !DILocation(line: 154, column: 4, scope: !3625)
!3627 = !DILocation(line: 154, column: 7, scope: !3625)
!3628 = !DILocation(line: 154, column: 11, scope: !3625)
!3629 = !DILocation(line: 155, column: 4, scope: !3625)
!3630 = !DILocation(line: 157, column: 2, scope: !3605)
!3631 = !DILocation(line: 158, column: 23, scope: !3561)
!3632 = !DILocation(line: 158, column: 2, scope: !3561)
!3633 = !DILocation(line: 159, column: 2, scope: !3561)
!3634 = !DILocation(line: 160, column: 1, scope: !3561)
!3635 = distinct !DISubprogram(name: "seq_buf_buffer_left", scope: !96, file: !96, line: 65, type: !3308, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3636)
!3636 = !{!3637}
!3637 = !DILocalVariable(name: "s", arg: 1, scope: !3635, file: !96, line: 65, type: !3284)
!3638 = !DILocation(line: 65, column: 37, scope: !3635)
!3639 = !DILocation(line: 67, column: 29, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3635, file: !96, line: 67, column: 6)
!3641 = !DILocation(line: 67, column: 6, scope: !3640)
!3642 = !DILocation(line: 67, column: 6, scope: !3635)
!3643 = !DILocation(line: 68, column: 3, scope: !3640)
!3644 = !DILocation(line: 70, column: 9, scope: !3635)
!3645 = !DILocation(line: 70, column: 12, scope: !3635)
!3646 = !DILocation(line: 70, column: 19, scope: !3635)
!3647 = !DILocation(line: 70, column: 22, scope: !3635)
!3648 = !DILocation(line: 70, column: 17, scope: !3635)
!3649 = !DILocation(line: 70, column: 2, scope: !3635)
!3650 = !DILocation(line: 71, column: 1, scope: !3635)
!3651 = !DISubprogram(name: "bstr_printf", scope: !3555, file: !3555, line: 241, type: !3652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!70, !128, !130, !467, !3564}
!3654 = distinct !DISubprogram(name: "seq_buf_puts", scope: !2, file: !2, line: 172, type: !3655, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!70, !3284, !467}
!3657 = !{!3658, !3659, !3660, !3661, !3663}
!3658 = !DILocalVariable(name: "s", arg: 1, scope: !3654, file: !2, line: 172, type: !3284)
!3659 = !DILocalVariable(name: "str", arg: 2, scope: !3654, file: !2, line: 172, type: !467)
!3660 = !DILocalVariable(name: "len", scope: !3654, file: !2, line: 174, type: !130)
!3661 = !DILocalVariable(name: "__ret_warn_on", scope: !3662, file: !2, line: 176, type: !70)
!3662 = distinct !DILexicalBlock(scope: !3654, file: !2, line: 176, column: 2)
!3663 = !DILocalVariable(name: "__flags", scope: !3664, file: !2, line: 176, type: !70)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !2, line: 176, column: 2)
!3665 = distinct !DILexicalBlock(scope: !3662, file: !2, line: 176, column: 2)
!3666 = !DILocation(line: 172, column: 34, scope: !3654)
!3667 = !DILocation(line: 172, column: 49, scope: !3654)
!3668 = !DILocation(line: 174, column: 2, scope: !3654)
!3669 = !DILocation(line: 174, column: 9, scope: !3654)
!3670 = !DILocation(line: 174, column: 22, scope: !3654)
!3671 = !DILocation(line: 174, column: 15, scope: !3654)
!3672 = !DILocation(line: 176, column: 2, scope: !3662)
!3673 = !DILocation(line: 176, column: 2, scope: !3665)
!3674 = !DILocation(line: 176, column: 2, scope: !3664)
!3675 = !DILocation(line: 176, column: 2, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 176, column: 2)
!3677 = !DILocation(line: 176, column: 2, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 176, column: 2)
!3679 = !{i64 2153418237, i64 2153418266, i64 2153418312, i64 2153418370, i64 2153418424, i64 2153418478, i64 2153418533, i64 2153418564, i64 2153418872, i64 2153418878, i64 2153418925, i64 2153418948, i64 2153418974}
!3680 = !DILocation(line: 176, column: 2, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 176, column: 2)
!3682 = !DILocation(line: 176, column: 2, scope: !3654)
!3683 = !DILocation(line: 179, column: 6, scope: !3654)
!3684 = !DILocation(line: 181, column: 22, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3654, file: !2, line: 181, column: 6)
!3686 = !DILocation(line: 181, column: 25, scope: !3685)
!3687 = !DILocation(line: 181, column: 6, scope: !3685)
!3688 = !DILocation(line: 181, column: 6, scope: !3654)
!3689 = !DILocation(line: 182, column: 10, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3685, file: !2, line: 181, column: 31)
!3691 = !DILocation(line: 182, column: 13, scope: !3690)
!3692 = !DILocation(line: 182, column: 22, scope: !3690)
!3693 = !DILocation(line: 182, column: 25, scope: !3690)
!3694 = !DILocation(line: 182, column: 20, scope: !3690)
!3695 = !DILocation(line: 182, column: 30, scope: !3690)
!3696 = !DILocation(line: 182, column: 35, scope: !3690)
!3697 = !DILocation(line: 182, column: 3, scope: !3690)
!3698 = !DILocation(line: 184, column: 13, scope: !3690)
!3699 = !DILocation(line: 184, column: 17, scope: !3690)
!3700 = !DILocation(line: 184, column: 3, scope: !3690)
!3701 = !DILocation(line: 184, column: 6, scope: !3690)
!3702 = !DILocation(line: 184, column: 10, scope: !3690)
!3703 = !DILocation(line: 185, column: 3, scope: !3690)
!3704 = !DILocation(line: 187, column: 23, scope: !3654)
!3705 = !DILocation(line: 187, column: 2, scope: !3654)
!3706 = !DILocation(line: 188, column: 2, scope: !3654)
!3707 = !DILocation(line: 189, column: 1, scope: !3654)
!3708 = !DISubprogram(name: "strlen", scope: !3555, file: !3555, line: 128, type: !3709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!69, !467}
!3711 = distinct !DISubprogram(name: "seq_buf_can_fit", scope: !2, file: !2, line: 28, type: !3712, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!464, !3284, !130}
!3714 = !{!3715, !3716}
!3715 = !DILocalVariable(name: "s", arg: 1, scope: !3711, file: !2, line: 28, type: !3284)
!3716 = !DILocalVariable(name: "len", arg: 2, scope: !3711, file: !2, line: 28, type: !130)
!3717 = !DILocation(line: 28, column: 45, scope: !3711)
!3718 = !DILocation(line: 28, column: 55, scope: !3711)
!3719 = !DILocation(line: 30, column: 9, scope: !3711)
!3720 = !DILocation(line: 30, column: 12, scope: !3711)
!3721 = !DILocation(line: 30, column: 18, scope: !3711)
!3722 = !DILocation(line: 30, column: 16, scope: !3711)
!3723 = !DILocation(line: 30, column: 25, scope: !3711)
!3724 = !DILocation(line: 30, column: 28, scope: !3711)
!3725 = !DILocation(line: 30, column: 22, scope: !3711)
!3726 = !DILocation(line: 30, column: 2, scope: !3711)
!3727 = distinct !DISubprogram(name: "seq_buf_putc", scope: !2, file: !2, line: 200, type: !3728, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!70, !3284, !182}
!3730 = !{!3731, !3732, !3733, !3735}
!3731 = !DILocalVariable(name: "s", arg: 1, scope: !3727, file: !2, line: 200, type: !3284)
!3732 = !DILocalVariable(name: "c", arg: 2, scope: !3727, file: !2, line: 200, type: !182)
!3733 = !DILocalVariable(name: "__ret_warn_on", scope: !3734, file: !2, line: 202, type: !70)
!3734 = distinct !DILexicalBlock(scope: !3727, file: !2, line: 202, column: 2)
!3735 = !DILocalVariable(name: "__flags", scope: !3736, file: !2, line: 202, type: !70)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !2, line: 202, column: 2)
!3737 = distinct !DILexicalBlock(scope: !3734, file: !2, line: 202, column: 2)
!3738 = !DILocation(line: 200, column: 34, scope: !3727)
!3739 = !DILocation(line: 200, column: 51, scope: !3727)
!3740 = !DILocation(line: 202, column: 2, scope: !3734)
!3741 = !DILocation(line: 202, column: 2, scope: !3737)
!3742 = !DILocation(line: 202, column: 2, scope: !3736)
!3743 = !DILocation(line: 202, column: 2, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3736, file: !2, line: 202, column: 2)
!3745 = !DILocation(line: 202, column: 2, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3736, file: !2, line: 202, column: 2)
!3747 = !{i64 2153419726, i64 2153419755, i64 2153419801, i64 2153419859, i64 2153419913, i64 2153419967, i64 2153420022, i64 2153420053, i64 2153420361, i64 2153420367, i64 2153420414, i64 2153420437, i64 2153420463}
!3748 = !DILocation(line: 202, column: 2, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3736, file: !2, line: 202, column: 2)
!3750 = !DILocation(line: 202, column: 2, scope: !3727)
!3751 = !DILocation(line: 204, column: 22, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3727, file: !2, line: 204, column: 6)
!3753 = !DILocation(line: 204, column: 6, scope: !3752)
!3754 = !DILocation(line: 204, column: 6, scope: !3727)
!3755 = !DILocation(line: 205, column: 25, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3752, file: !2, line: 204, column: 29)
!3757 = !DILocation(line: 205, column: 3, scope: !3756)
!3758 = !DILocation(line: 205, column: 6, scope: !3756)
!3759 = !DILocation(line: 205, column: 13, scope: !3756)
!3760 = !DILocation(line: 205, column: 16, scope: !3756)
!3761 = !DILocation(line: 205, column: 19, scope: !3756)
!3762 = !DILocation(line: 205, column: 23, scope: !3756)
!3763 = !DILocation(line: 206, column: 3, scope: !3756)
!3764 = !DILocation(line: 208, column: 23, scope: !3727)
!3765 = !DILocation(line: 208, column: 2, scope: !3727)
!3766 = !DILocation(line: 209, column: 2, scope: !3727)
!3767 = !DILocation(line: 210, column: 1, scope: !3727)
!3768 = distinct !DISubprogram(name: "seq_buf_putmem", scope: !2, file: !2, line: 224, type: !3769, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!70, !3284, !3322, !13}
!3771 = !{!3772, !3773, !3774, !3775, !3777}
!3772 = !DILocalVariable(name: "s", arg: 1, scope: !3768, file: !2, line: 224, type: !3284)
!3773 = !DILocalVariable(name: "mem", arg: 2, scope: !3768, file: !2, line: 224, type: !3322)
!3774 = !DILocalVariable(name: "len", arg: 3, scope: !3768, file: !2, line: 224, type: !13)
!3775 = !DILocalVariable(name: "__ret_warn_on", scope: !3776, file: !2, line: 226, type: !70)
!3776 = distinct !DILexicalBlock(scope: !3768, file: !2, line: 226, column: 2)
!3777 = !DILocalVariable(name: "__flags", scope: !3778, file: !2, line: 226, type: !70)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !2, line: 226, column: 2)
!3779 = distinct !DILexicalBlock(scope: !3776, file: !2, line: 226, column: 2)
!3780 = !DILocation(line: 224, column: 36, scope: !3768)
!3781 = !DILocation(line: 224, column: 51, scope: !3768)
!3782 = !DILocation(line: 224, column: 69, scope: !3768)
!3783 = !DILocation(line: 226, column: 2, scope: !3776)
!3784 = !DILocation(line: 226, column: 2, scope: !3779)
!3785 = !DILocation(line: 226, column: 2, scope: !3778)
!3786 = !DILocation(line: 226, column: 2, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3778, file: !2, line: 226, column: 2)
!3788 = !DILocation(line: 226, column: 2, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3778, file: !2, line: 226, column: 2)
!3790 = !{i64 2153421215, i64 2153421244, i64 2153421290, i64 2153421348, i64 2153421402, i64 2153421456, i64 2153421511, i64 2153421542, i64 2153421850, i64 2153421856, i64 2153421903, i64 2153421926, i64 2153421952}
!3791 = !DILocation(line: 226, column: 2, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3778, file: !2, line: 226, column: 2)
!3793 = !DILocation(line: 226, column: 2, scope: !3768)
!3794 = !DILocation(line: 228, column: 22, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3768, file: !2, line: 228, column: 6)
!3796 = !DILocation(line: 228, column: 25, scope: !3795)
!3797 = !DILocation(line: 228, column: 6, scope: !3795)
!3798 = !DILocation(line: 228, column: 6, scope: !3768)
!3799 = !DILocation(line: 229, column: 10, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3795, file: !2, line: 228, column: 31)
!3801 = !DILocation(line: 229, column: 13, scope: !3800)
!3802 = !DILocation(line: 229, column: 22, scope: !3800)
!3803 = !DILocation(line: 229, column: 25, scope: !3800)
!3804 = !DILocation(line: 229, column: 20, scope: !3800)
!3805 = !DILocation(line: 229, column: 30, scope: !3800)
!3806 = !DILocation(line: 229, column: 35, scope: !3800)
!3807 = !DILocation(line: 229, column: 3, scope: !3800)
!3808 = !DILocation(line: 230, column: 13, scope: !3800)
!3809 = !DILocation(line: 230, column: 3, scope: !3800)
!3810 = !DILocation(line: 230, column: 6, scope: !3800)
!3811 = !DILocation(line: 230, column: 10, scope: !3800)
!3812 = !DILocation(line: 231, column: 3, scope: !3800)
!3813 = !DILocation(line: 233, column: 23, scope: !3768)
!3814 = !DILocation(line: 233, column: 2, scope: !3768)
!3815 = !DILocation(line: 234, column: 2, scope: !3768)
!3816 = !DILocation(line: 235, column: 1, scope: !3768)
!3817 = distinct !DISubprogram(name: "seq_buf_putmem_hex", scope: !2, file: !2, line: 252, type: !3769, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3818)
!3818 = !{!3819, !3820, !3821, !3822, !3826, !3827, !3828, !3829, !3830, !3832, !3835, !3838, !3839, !3842}
!3819 = !DILocalVariable(name: "s", arg: 1, scope: !3817, file: !2, line: 252, type: !3284)
!3820 = !DILocalVariable(name: "mem", arg: 2, scope: !3817, file: !2, line: 252, type: !3322)
!3821 = !DILocalVariable(name: "len", arg: 3, scope: !3817, file: !2, line: 253, type: !13)
!3822 = !DILocalVariable(name: "hex", scope: !3817, file: !2, line: 255, type: !3823)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 136, elements: !3824)
!3824 = !{!3825}
!3825 = !DISubrange(count: 17)
!3826 = !DILocalVariable(name: "data", scope: !3817, file: !2, line: 256, type: !624)
!3827 = !DILocalVariable(name: "start_len", scope: !3817, file: !2, line: 257, type: !13)
!3828 = !DILocalVariable(name: "i", scope: !3817, file: !2, line: 258, type: !70)
!3829 = !DILocalVariable(name: "j", scope: !3817, file: !2, line: 258, type: !70)
!3830 = !DILocalVariable(name: "__ret_warn_on", scope: !3831, file: !2, line: 260, type: !70)
!3831 = distinct !DILexicalBlock(scope: !3817, file: !2, line: 260, column: 2)
!3832 = !DILocalVariable(name: "__flags", scope: !3833, file: !2, line: 260, type: !70)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !2, line: 260, column: 2)
!3834 = distinct !DILexicalBlock(scope: !3831, file: !2, line: 260, column: 2)
!3835 = !DILocalVariable(name: "__UNIQUE_ID___x254", scope: !3836, file: !2, line: 265, type: !13)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !2, line: 265, column: 15)
!3837 = distinct !DILexicalBlock(scope: !3817, file: !2, line: 264, column: 14)
!3838 = !DILocalVariable(name: "__UNIQUE_ID___y255", scope: !3836, file: !2, line: 265, type: !13)
!3839 = !DILocalVariable(name: "__ret_warn_on", scope: !3840, file: !2, line: 274, type: !70)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !2, line: 274, column: 7)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !2, line: 274, column: 7)
!3842 = !DILocalVariable(name: "__flags", scope: !3843, file: !2, line: 274, type: !70)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !2, line: 274, column: 7)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !2, line: 274, column: 7)
!3845 = !DILocation(line: 252, column: 40, scope: !3817)
!3846 = !DILocation(line: 252, column: 55, scope: !3817)
!3847 = !DILocation(line: 253, column: 23, scope: !3817)
!3848 = !DILocation(line: 255, column: 2, scope: !3817)
!3849 = !DILocation(line: 255, column: 16, scope: !3817)
!3850 = !DILocation(line: 256, column: 2, scope: !3817)
!3851 = !DILocation(line: 256, column: 23, scope: !3817)
!3852 = !DILocation(line: 256, column: 30, scope: !3817)
!3853 = !DILocation(line: 257, column: 2, scope: !3817)
!3854 = !DILocation(line: 257, column: 15, scope: !3817)
!3855 = !DILocation(line: 258, column: 2, scope: !3817)
!3856 = !DILocation(line: 258, column: 6, scope: !3817)
!3857 = !DILocation(line: 258, column: 9, scope: !3817)
!3858 = !DILocation(line: 260, column: 2, scope: !3831)
!3859 = !DILocation(line: 260, column: 2, scope: !3834)
!3860 = !DILocation(line: 260, column: 2, scope: !3833)
!3861 = !DILocation(line: 260, column: 2, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3833, file: !2, line: 260, column: 2)
!3863 = !DILocation(line: 260, column: 2, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3833, file: !2, line: 260, column: 2)
!3865 = !{i64 2153422732, i64 2153422761, i64 2153422807, i64 2153422865, i64 2153422919, i64 2153422973, i64 2153423028, i64 2153423059, i64 2153423367, i64 2153423373, i64 2153423420, i64 2153423443, i64 2153423469}
!3866 = !DILocation(line: 260, column: 2, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3833, file: !2, line: 260, column: 2)
!3868 = !DILocation(line: 260, column: 2, scope: !3817)
!3869 = !DILocation(line: 262, column: 2, scope: !3817)
!3870 = !DILocation(line: 262, column: 2, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3817, file: !2, line: 262, column: 2)
!3872 = !DILocation(line: 264, column: 2, scope: !3817)
!3873 = !DILocation(line: 264, column: 9, scope: !3817)
!3874 = !DILocation(line: 265, column: 15, scope: !3836)
!3875 = !DILocation(line: 265, column: 15, scope: !3837)
!3876 = !DILocation(line: 265, column: 13, scope: !3837)
!3877 = !DILocation(line: 269, column: 12, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3837, file: !2, line: 269, column: 3)
!3879 = !DILocation(line: 269, column: 21, scope: !3878)
!3880 = !DILocation(line: 269, column: 10, scope: !3878)
!3881 = !DILocation(line: 269, column: 27, scope: !3878)
!3882 = !DILocation(line: 269, column: 8, scope: !3878)
!3883 = !DILocation(line: 269, column: 32, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3878, file: !2, line: 269, column: 3)
!3885 = !DILocation(line: 269, column: 34, scope: !3884)
!3886 = !DILocation(line: 269, column: 3, scope: !3878)
!3887 = !DILocation(line: 271, column: 15, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3884, file: !2, line: 269, column: 45)
!3889 = !DILocation(line: 271, column: 9, scope: !3888)
!3890 = !DILocation(line: 271, column: 4, scope: !3888)
!3891 = !DILocation(line: 271, column: 13, scope: !3888)
!3892 = !DILocation(line: 272, column: 15, scope: !3888)
!3893 = !DILocation(line: 272, column: 9, scope: !3888)
!3894 = !DILocation(line: 272, column: 4, scope: !3888)
!3895 = !DILocation(line: 272, column: 13, scope: !3888)
!3896 = !DILocation(line: 273, column: 3, scope: !3888)
!3897 = !DILocation(line: 269, column: 41, scope: !3884)
!3898 = !DILocation(line: 269, column: 3, scope: !3884)
!3899 = distinct !{!3899, !3886, !3900, !3493, !3494}
!3900 = !DILocation(line: 273, column: 3, scope: !3878)
!3901 = !DILocation(line: 274, column: 7, scope: !3840)
!3902 = !DILocation(line: 274, column: 7, scope: !3844)
!3903 = !DILocation(line: 274, column: 7, scope: !3843)
!3904 = !DILocation(line: 274, column: 7, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 274, column: 7)
!3906 = !DILocation(line: 274, column: 7, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 274, column: 7)
!3908 = !{i64 2153432753, i64 2153432782, i64 2153432828, i64 2153432886, i64 2153432940, i64 2153432994, i64 2153433049, i64 2153433080, i64 2153433388, i64 2153433394, i64 2153433441, i64 2153433464, i64 2153433490}
!3909 = !DILocation(line: 274, column: 7, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 274, column: 7)
!3911 = !DILocation(line: 274, column: 7, scope: !3841)
!3912 = !DILocation(line: 274, column: 7, scope: !3837)
!3913 = !DILocation(line: 275, column: 4, scope: !3841)
!3914 = !DILocation(line: 278, column: 8, scope: !3837)
!3915 = !DILocation(line: 278, column: 3, scope: !3837)
!3916 = !DILocation(line: 278, column: 12, scope: !3837)
!3917 = !DILocation(line: 280, column: 18, scope: !3837)
!3918 = !DILocation(line: 280, column: 21, scope: !3837)
!3919 = !DILocation(line: 280, column: 26, scope: !3837)
!3920 = !DILocation(line: 280, column: 3, scope: !3837)
!3921 = !DILocation(line: 281, column: 30, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3837, file: !2, line: 281, column: 7)
!3923 = !DILocation(line: 281, column: 7, scope: !3922)
!3924 = !DILocation(line: 281, column: 7, scope: !3837)
!3925 = !DILocation(line: 282, column: 4, scope: !3922)
!3926 = !DILocation(line: 284, column: 10, scope: !3837)
!3927 = !DILocation(line: 284, column: 7, scope: !3837)
!3928 = !DILocation(line: 285, column: 11, scope: !3837)
!3929 = !DILocation(line: 285, column: 8, scope: !3837)
!3930 = distinct !{!3930, !3872, !3931, !3493, !3494}
!3931 = !DILocation(line: 286, column: 2, scope: !3817)
!3932 = !DILocation(line: 287, column: 2, scope: !3817)
!3933 = !DILocation(line: 288, column: 1, scope: !3817)
!3934 = distinct !DISubprogram(name: "seq_buf_has_overflowed", scope: !96, file: !96, line: 50, type: !3935, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!464, !3284}
!3937 = !{!3938}
!3938 = !DILocalVariable(name: "s", arg: 1, scope: !3934, file: !96, line: 50, type: !3284)
!3939 = !DILocation(line: 50, column: 40, scope: !3934)
!3940 = !DILocation(line: 52, column: 9, scope: !3934)
!3941 = !DILocation(line: 52, column: 12, scope: !3934)
!3942 = !DILocation(line: 52, column: 18, scope: !3934)
!3943 = !DILocation(line: 52, column: 21, scope: !3934)
!3944 = !DILocation(line: 52, column: 16, scope: !3934)
!3945 = !DILocation(line: 52, column: 2, scope: !3934)
!3946 = distinct !DISubprogram(name: "seq_buf_path", scope: !2, file: !2, line: 300, type: !3947, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!70, !3284, !751, !467}
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955, !3956, !3958, !3961, !3964}
!3950 = !DILocalVariable(name: "s", arg: 1, scope: !3946, file: !2, line: 300, type: !3284)
!3951 = !DILocalVariable(name: "path", arg: 2, scope: !3946, file: !2, line: 300, type: !751)
!3952 = !DILocalVariable(name: "esc", arg: 3, scope: !3946, file: !2, line: 300, type: !467)
!3953 = !DILocalVariable(name: "buf", scope: !3946, file: !2, line: 302, type: !128)
!3954 = !DILocalVariable(name: "size", scope: !3946, file: !2, line: 303, type: !130)
!3955 = !DILocalVariable(name: "res", scope: !3946, file: !2, line: 304, type: !70)
!3956 = !DILocalVariable(name: "__ret_warn_on", scope: !3957, file: !2, line: 306, type: !70)
!3957 = distinct !DILexicalBlock(scope: !3946, file: !2, line: 306, column: 2)
!3958 = !DILocalVariable(name: "__flags", scope: !3959, file: !2, line: 306, type: !70)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !2, line: 306, column: 2)
!3960 = distinct !DILexicalBlock(scope: !3957, file: !2, line: 306, column: 2)
!3961 = !DILocalVariable(name: "p", scope: !3962, file: !2, line: 309, type: !128)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !2, line: 308, column: 12)
!3963 = distinct !DILexicalBlock(scope: !3946, file: !2, line: 308, column: 6)
!3964 = !DILocalVariable(name: "end", scope: !3965, file: !2, line: 311, type: !128)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !2, line: 310, column: 19)
!3966 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 310, column: 7)
!3967 = !DILocation(line: 300, column: 34, scope: !3946)
!3968 = !DILocation(line: 300, column: 56, scope: !3946)
!3969 = !DILocation(line: 300, column: 74, scope: !3946)
!3970 = !DILocation(line: 302, column: 2, scope: !3946)
!3971 = !DILocation(line: 302, column: 8, scope: !3946)
!3972 = !DILocation(line: 303, column: 2, scope: !3946)
!3973 = !DILocation(line: 303, column: 9, scope: !3946)
!3974 = !DILocation(line: 303, column: 32, scope: !3946)
!3975 = !DILocation(line: 303, column: 16, scope: !3946)
!3976 = !DILocation(line: 304, column: 2, scope: !3946)
!3977 = !DILocation(line: 304, column: 6, scope: !3946)
!3978 = !DILocation(line: 306, column: 2, scope: !3957)
!3979 = !DILocation(line: 306, column: 2, scope: !3960)
!3980 = !DILocation(line: 306, column: 2, scope: !3959)
!3981 = !DILocation(line: 306, column: 2, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3959, file: !2, line: 306, column: 2)
!3983 = !DILocation(line: 306, column: 2, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3959, file: !2, line: 306, column: 2)
!3985 = !{i64 2153434242, i64 2153434271, i64 2153434317, i64 2153434375, i64 2153434429, i64 2153434483, i64 2153434538, i64 2153434569, i64 2153434877, i64 2153434883, i64 2153434930, i64 2153434953, i64 2153434979}
!3986 = !DILocation(line: 306, column: 2, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3959, file: !2, line: 306, column: 2)
!3988 = !DILocation(line: 306, column: 2, scope: !3946)
!3989 = !DILocation(line: 308, column: 6, scope: !3963)
!3990 = !DILocation(line: 308, column: 6, scope: !3946)
!3991 = !DILocation(line: 309, column: 3, scope: !3962)
!3992 = !DILocation(line: 309, column: 9, scope: !3962)
!3993 = !DILocation(line: 309, column: 20, scope: !3962)
!3994 = !DILocation(line: 309, column: 26, scope: !3962)
!3995 = !DILocation(line: 309, column: 31, scope: !3962)
!3996 = !DILocation(line: 309, column: 13, scope: !3962)
!3997 = !DILocation(line: 310, column: 15, scope: !3966)
!3998 = !DILocation(line: 310, column: 8, scope: !3966)
!3999 = !DILocation(line: 310, column: 7, scope: !3962)
!4000 = !DILocation(line: 311, column: 4, scope: !3965)
!4001 = !DILocation(line: 311, column: 10, scope: !3965)
!4002 = !DILocation(line: 311, column: 28, scope: !3965)
!4003 = !DILocation(line: 311, column: 33, scope: !3965)
!4004 = !DILocation(line: 311, column: 36, scope: !3965)
!4005 = !DILocation(line: 311, column: 16, scope: !3965)
!4006 = !DILocation(line: 312, column: 8, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3965, file: !2, line: 312, column: 8)
!4008 = !DILocation(line: 312, column: 8, scope: !3965)
!4009 = !DILocation(line: 313, column: 11, scope: !4007)
!4010 = !DILocation(line: 313, column: 17, scope: !4007)
!4011 = !DILocation(line: 313, column: 15, scope: !4007)
!4012 = !DILocation(line: 313, column: 9, scope: !4007)
!4013 = !DILocation(line: 313, column: 5, scope: !4007)
!4014 = !DILocation(line: 314, column: 3, scope: !3966)
!4015 = !DILocation(line: 314, column: 3, scope: !3965)
!4016 = !DILocation(line: 315, column: 2, scope: !3963)
!4017 = !DILocation(line: 315, column: 2, scope: !3962)
!4018 = !DILocation(line: 316, column: 17, scope: !3946)
!4019 = !DILocation(line: 316, column: 20, scope: !3946)
!4020 = !DILocation(line: 316, column: 2, scope: !3946)
!4021 = !DILocation(line: 318, column: 9, scope: !3946)
!4022 = !DILocation(line: 319, column: 1, scope: !3946)
!4023 = !DILocation(line: 318, column: 2, scope: !3946)
!4024 = distinct !DISubprogram(name: "seq_buf_get_buf", scope: !96, file: !96, line: 116, type: !4025, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4028)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!130, !3284, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!4028 = !{!4029, !4030, !4031, !4033}
!4029 = !DILocalVariable(name: "s", arg: 1, scope: !4024, file: !96, line: 116, type: !3284)
!4030 = !DILocalVariable(name: "bufp", arg: 2, scope: !4024, file: !96, line: 116, type: !4027)
!4031 = !DILocalVariable(name: "__ret_warn_on", scope: !4032, file: !96, line: 118, type: !70)
!4032 = distinct !DILexicalBlock(scope: !4024, file: !96, line: 118, column: 2)
!4033 = !DILocalVariable(name: "__flags", scope: !4034, file: !96, line: 118, type: !70)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !96, line: 118, column: 2)
!4035 = distinct !DILexicalBlock(scope: !4032, file: !96, line: 118, column: 2)
!4036 = !DILocation(line: 116, column: 54, scope: !4024)
!4037 = !DILocation(line: 116, column: 64, scope: !4024)
!4038 = !DILocation(line: 118, column: 2, scope: !4032)
!4039 = !DILocation(line: 118, column: 2, scope: !4035)
!4040 = !DILocation(line: 118, column: 2, scope: !4034)
!4041 = !DILocation(line: 118, column: 2, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4034, file: !96, line: 118, column: 2)
!4043 = !DILocation(line: 118, column: 2, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4034, file: !96, line: 118, column: 2)
!4045 = !{i64 2153408459, i64 2153408488, i64 2153408534, i64 2153408592, i64 2153408646, i64 2153408700, i64 2153408755, i64 2153408786, i64 2153409094, i64 2153409100, i64 2153409147, i64 2153409170, i64 2153409196}
!4046 = !DILocation(line: 118, column: 2, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4034, file: !96, line: 118, column: 2)
!4048 = !DILocation(line: 118, column: 2, scope: !4024)
!4049 = !DILocation(line: 120, column: 6, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4024, file: !96, line: 120, column: 6)
!4051 = !DILocation(line: 120, column: 9, scope: !4050)
!4052 = !DILocation(line: 120, column: 15, scope: !4050)
!4053 = !DILocation(line: 120, column: 18, scope: !4050)
!4054 = !DILocation(line: 120, column: 13, scope: !4050)
!4055 = !DILocation(line: 120, column: 6, scope: !4024)
!4056 = !DILocation(line: 121, column: 11, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4050, file: !96, line: 120, column: 24)
!4058 = !DILocation(line: 121, column: 14, scope: !4057)
!4059 = !DILocation(line: 121, column: 23, scope: !4057)
!4060 = !DILocation(line: 121, column: 26, scope: !4057)
!4061 = !DILocation(line: 121, column: 21, scope: !4057)
!4062 = !DILocation(line: 121, column: 4, scope: !4057)
!4063 = !DILocation(line: 121, column: 9, scope: !4057)
!4064 = !DILocation(line: 122, column: 10, scope: !4057)
!4065 = !DILocation(line: 122, column: 13, scope: !4057)
!4066 = !DILocation(line: 122, column: 20, scope: !4057)
!4067 = !DILocation(line: 122, column: 23, scope: !4057)
!4068 = !DILocation(line: 122, column: 18, scope: !4057)
!4069 = !DILocation(line: 122, column: 3, scope: !4057)
!4070 = !DILocation(line: 125, column: 3, scope: !4024)
!4071 = !DILocation(line: 125, column: 8, scope: !4024)
!4072 = !DILocation(line: 126, column: 2, scope: !4024)
!4073 = !DILocation(line: 127, column: 1, scope: !4024)
!4074 = !DISubprogram(name: "d_path", scope: !589, file: !589, line: 296, type: !4075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!128, !751, !128, !70}
!4077 = distinct !DISubprogram(name: "IS_ERR", scope: !4078, file: !4078, line: 59, type: !4079, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4081)
!4078 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!464, !3322}
!4081 = !{!4082}
!4082 = !DILocalVariable(name: "ptr", arg: 1, scope: !4077, file: !4078, line: 59, type: !3322)
!4083 = !DILocation(line: 59, column: 60, scope: !4077)
!4084 = !DILocation(line: 61, column: 9, scope: !4077)
!4085 = !DILocation(line: 61, column: 2, scope: !4077)
!4086 = !DISubprogram(name: "mangle_path", scope: !125, file: !125, line: 108, type: !4087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!128, !128, !467, !467}
!4089 = distinct !DISubprogram(name: "seq_buf_commit", scope: !96, file: !96, line: 138, type: !4090, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4092)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !3284, !70}
!4092 = !{!4093, !4094}
!4093 = !DILocalVariable(name: "s", arg: 1, scope: !4089, file: !96, line: 138, type: !3284)
!4094 = !DILocalVariable(name: "num", arg: 2, scope: !4089, file: !96, line: 138, type: !70)
!4095 = !DILocation(line: 138, column: 51, scope: !4089)
!4096 = !DILocation(line: 138, column: 58, scope: !4089)
!4097 = !DILocation(line: 140, column: 6, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4089, file: !96, line: 140, column: 6)
!4099 = !DILocation(line: 140, column: 10, scope: !4098)
!4100 = !DILocation(line: 140, column: 6, scope: !4089)
!4101 = !DILocation(line: 141, column: 24, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4098, file: !96, line: 140, column: 15)
!4103 = !DILocation(line: 141, column: 3, scope: !4102)
!4104 = !DILocation(line: 142, column: 2, scope: !4102)
!4105 = !DILocation(line: 144, column: 3, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4098, file: !96, line: 142, column: 9)
!4107 = !DILocation(line: 144, column: 3, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !96, line: 144, column: 3)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !96, line: 144, column: 3)
!4110 = !DILocation(line: 144, column: 3, scope: !4109)
!4111 = !DILocation(line: 144, column: 3, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4108, file: !96, line: 144, column: 3)
!4113 = !DILocation(line: 144, column: 3, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4112, file: !96, line: 144, column: 3)
!4115 = !DILocation(line: 144, column: 3, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4112, file: !96, line: 144, column: 3)
!4117 = !{i64 2153409916, i64 2153409945, i64 2153409991, i64 2153410049, i64 2153410103, i64 2153410157, i64 2153410212, i64 2153410243}
!4118 = !DILocation(line: 145, column: 13, scope: !4106)
!4119 = !DILocation(line: 145, column: 3, scope: !4106)
!4120 = !DILocation(line: 145, column: 6, scope: !4106)
!4121 = !DILocation(line: 145, column: 10, scope: !4106)
!4122 = !DILocation(line: 147, column: 1, scope: !4089)
!4123 = distinct !DISubprogram(name: "seq_buf_to_user", scope: !2, file: !2, line: 342, type: !4124, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!70, !3284, !128, !130, !70}
!4126 = !{!4127, !4128, !4129, !4130, !4131, !4132}
!4127 = !DILocalVariable(name: "s", arg: 1, scope: !4123, file: !2, line: 342, type: !3284)
!4128 = !DILocalVariable(name: "ubuf", arg: 2, scope: !4123, file: !2, line: 342, type: !128)
!4129 = !DILocalVariable(name: "start", arg: 3, scope: !4123, file: !2, line: 342, type: !130)
!4130 = !DILocalVariable(name: "cnt", arg: 4, scope: !4123, file: !2, line: 342, type: !70)
!4131 = !DILocalVariable(name: "len", scope: !4123, file: !2, line: 344, type: !70)
!4132 = !DILocalVariable(name: "ret", scope: !4123, file: !2, line: 345, type: !70)
!4133 = !DILocation(line: 342, column: 37, scope: !4123)
!4134 = !DILocation(line: 342, column: 53, scope: !4123)
!4135 = !DILocation(line: 342, column: 66, scope: !4123)
!4136 = !DILocation(line: 342, column: 77, scope: !4123)
!4137 = !DILocation(line: 344, column: 2, scope: !4123)
!4138 = !DILocation(line: 344, column: 6, scope: !4123)
!4139 = !DILocation(line: 345, column: 2, scope: !4123)
!4140 = !DILocation(line: 345, column: 6, scope: !4123)
!4141 = !DILocation(line: 347, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4123, file: !2, line: 347, column: 6)
!4143 = !DILocation(line: 347, column: 6, scope: !4123)
!4144 = !DILocation(line: 348, column: 3, scope: !4142)
!4145 = !DILocation(line: 350, column: 21, scope: !4123)
!4146 = !DILocation(line: 350, column: 8, scope: !4123)
!4147 = !DILocation(line: 350, column: 6, scope: !4123)
!4148 = !DILocation(line: 352, column: 6, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4123, file: !2, line: 352, column: 6)
!4150 = !DILocation(line: 352, column: 13, scope: !4149)
!4151 = !DILocation(line: 352, column: 10, scope: !4149)
!4152 = !DILocation(line: 352, column: 6, scope: !4123)
!4153 = !DILocation(line: 353, column: 3, scope: !4149)
!4154 = !DILocation(line: 355, column: 9, scope: !4123)
!4155 = !DILocation(line: 355, column: 6, scope: !4123)
!4156 = !DILocation(line: 356, column: 6, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4123, file: !2, line: 356, column: 6)
!4158 = !DILocation(line: 356, column: 12, scope: !4157)
!4159 = !DILocation(line: 356, column: 10, scope: !4157)
!4160 = !DILocation(line: 356, column: 6, scope: !4123)
!4161 = !DILocation(line: 357, column: 9, scope: !4157)
!4162 = !DILocation(line: 357, column: 7, scope: !4157)
!4163 = !DILocation(line: 357, column: 3, scope: !4157)
!4164 = !DILocation(line: 358, column: 21, scope: !4123)
!4165 = !DILocation(line: 358, column: 27, scope: !4123)
!4166 = !DILocation(line: 358, column: 30, scope: !4123)
!4167 = !DILocation(line: 358, column: 39, scope: !4123)
!4168 = !DILocation(line: 358, column: 37, scope: !4123)
!4169 = !DILocation(line: 358, column: 46, scope: !4123)
!4170 = !DILocation(line: 358, column: 8, scope: !4123)
!4171 = !DILocation(line: 358, column: 6, scope: !4123)
!4172 = !DILocation(line: 359, column: 6, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4123, file: !2, line: 359, column: 6)
!4174 = !DILocation(line: 359, column: 13, scope: !4173)
!4175 = !DILocation(line: 359, column: 10, scope: !4173)
!4176 = !DILocation(line: 359, column: 6, scope: !4123)
!4177 = !DILocation(line: 360, column: 3, scope: !4173)
!4178 = !DILocation(line: 362, column: 9, scope: !4123)
!4179 = !DILocation(line: 362, column: 15, scope: !4123)
!4180 = !DILocation(line: 362, column: 13, scope: !4123)
!4181 = !DILocation(line: 362, column: 2, scope: !4123)
!4182 = !DILocation(line: 363, column: 1, scope: !4123)
!4183 = distinct !DISubprogram(name: "copy_to_user", scope: !4184, file: !4184, line: 188, type: !4185, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4187)
!4184 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!69, !68, !3322, !69}
!4187 = !{!4188, !4189, !4190}
!4188 = !DILocalVariable(name: "to", arg: 1, scope: !4183, file: !4184, line: 188, type: !68)
!4189 = !DILocalVariable(name: "from", arg: 2, scope: !4183, file: !4184, line: 188, type: !3322)
!4190 = !DILocalVariable(name: "n", arg: 3, scope: !4183, file: !4184, line: 188, type: !69)
!4191 = !DILocation(line: 188, column: 27, scope: !4183)
!4192 = !DILocation(line: 188, column: 43, scope: !4183)
!4193 = !DILocation(line: 188, column: 63, scope: !4183)
!4194 = !DILocation(line: 190, column: 22, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4183, file: !4184, line: 190, column: 6)
!4196 = !DILocation(line: 190, column: 28, scope: !4195)
!4197 = !DILocation(line: 190, column: 6, scope: !4195)
!4198 = !DILocation(line: 190, column: 6, scope: !4183)
!4199 = !DILocation(line: 191, column: 21, scope: !4195)
!4200 = !DILocation(line: 191, column: 25, scope: !4195)
!4201 = !DILocation(line: 191, column: 31, scope: !4195)
!4202 = !DILocation(line: 191, column: 7, scope: !4195)
!4203 = !DILocation(line: 191, column: 5, scope: !4195)
!4204 = !DILocation(line: 191, column: 3, scope: !4195)
!4205 = !DILocation(line: 192, column: 9, scope: !4183)
!4206 = !DILocation(line: 192, column: 2, scope: !4183)
!4207 = distinct !DISubprogram(name: "seq_buf_hex_dump", scope: !2, file: !2, line: 389, type: !4208, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4210)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!70, !3284, !467, !70, !70, !70, !3322, !130, !464}
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4222, !4223, !4224, !4225, !4229, !4230, !4235}
!4211 = !DILocalVariable(name: "s", arg: 1, scope: !4207, file: !2, line: 389, type: !3284)
!4212 = !DILocalVariable(name: "prefix_str", arg: 2, scope: !4207, file: !2, line: 389, type: !467)
!4213 = !DILocalVariable(name: "prefix_type", arg: 3, scope: !4207, file: !2, line: 389, type: !70)
!4214 = !DILocalVariable(name: "rowsize", arg: 4, scope: !4207, file: !2, line: 390, type: !70)
!4215 = !DILocalVariable(name: "groupsize", arg: 5, scope: !4207, file: !2, line: 390, type: !70)
!4216 = !DILocalVariable(name: "buf", arg: 6, scope: !4207, file: !2, line: 391, type: !3322)
!4217 = !DILocalVariable(name: "len", arg: 7, scope: !4207, file: !2, line: 391, type: !130)
!4218 = !DILocalVariable(name: "ascii", arg: 8, scope: !4207, file: !2, line: 391, type: !464)
!4219 = !DILocalVariable(name: "ptr", scope: !4207, file: !2, line: 393, type: !4220)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!4222 = !DILocalVariable(name: "i", scope: !4207, file: !2, line: 394, type: !70)
!4223 = !DILocalVariable(name: "linelen", scope: !4207, file: !2, line: 394, type: !70)
!4224 = !DILocalVariable(name: "remaining", scope: !4207, file: !2, line: 394, type: !70)
!4225 = !DILocalVariable(name: "linebuf", scope: !4207, file: !2, line: 395, type: !4226)
!4226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1048, elements: !4227)
!4227 = !{!4228}
!4228 = !DISubrange(count: 131)
!4229 = !DILocalVariable(name: "ret", scope: !4207, file: !2, line: 396, type: !70)
!4230 = !DILocalVariable(name: "__UNIQUE_ID___x256", scope: !4231, file: !2, line: 402, type: !70)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !2, line: 402, column: 13)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !2, line: 401, column: 37)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !2, line: 401, column: 2)
!4234 = distinct !DILexicalBlock(scope: !4207, file: !2, line: 401, column: 2)
!4235 = !DILocalVariable(name: "__UNIQUE_ID___y257", scope: !4231, file: !2, line: 402, type: !70)
!4236 = !DILocation(line: 389, column: 38, scope: !4207)
!4237 = !DILocation(line: 389, column: 53, scope: !4207)
!4238 = !DILocation(line: 389, column: 69, scope: !4207)
!4239 = !DILocation(line: 390, column: 12, scope: !4207)
!4240 = !DILocation(line: 390, column: 25, scope: !4207)
!4241 = !DILocation(line: 391, column: 20, scope: !4207)
!4242 = !DILocation(line: 391, column: 32, scope: !4207)
!4243 = !DILocation(line: 391, column: 42, scope: !4207)
!4244 = !DILocation(line: 393, column: 2, scope: !4207)
!4245 = !DILocation(line: 393, column: 12, scope: !4207)
!4246 = !DILocation(line: 393, column: 18, scope: !4207)
!4247 = !DILocation(line: 394, column: 2, scope: !4207)
!4248 = !DILocation(line: 394, column: 6, scope: !4207)
!4249 = !DILocation(line: 394, column: 9, scope: !4207)
!4250 = !DILocation(line: 394, column: 18, scope: !4207)
!4251 = !DILocation(line: 394, column: 30, scope: !4207)
!4252 = !DILocation(line: 395, column: 2, scope: !4207)
!4253 = !DILocation(line: 395, column: 16, scope: !4207)
!4254 = !DILocation(line: 396, column: 2, scope: !4207)
!4255 = !DILocation(line: 396, column: 6, scope: !4207)
!4256 = !DILocation(line: 398, column: 6, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4207, file: !2, line: 398, column: 6)
!4258 = !DILocation(line: 398, column: 14, scope: !4257)
!4259 = !DILocation(line: 398, column: 20, scope: !4257)
!4260 = !DILocation(line: 398, column: 23, scope: !4257)
!4261 = !DILocation(line: 398, column: 31, scope: !4257)
!4262 = !DILocation(line: 398, column: 6, scope: !4207)
!4263 = !DILocation(line: 399, column: 11, scope: !4257)
!4264 = !DILocation(line: 399, column: 3, scope: !4257)
!4265 = !DILocation(line: 401, column: 9, scope: !4234)
!4266 = !DILocation(line: 401, column: 7, scope: !4234)
!4267 = !DILocation(line: 401, column: 14, scope: !4233)
!4268 = !DILocation(line: 401, column: 18, scope: !4233)
!4269 = !DILocation(line: 401, column: 16, scope: !4233)
!4270 = !DILocation(line: 401, column: 2, scope: !4234)
!4271 = !DILocation(line: 402, column: 13, scope: !4231)
!4272 = !DILocation(line: 402, column: 13, scope: !4232)
!4273 = !DILocation(line: 402, column: 11, scope: !4232)
!4274 = !DILocation(line: 403, column: 16, scope: !4232)
!4275 = !DILocation(line: 403, column: 13, scope: !4232)
!4276 = !DILocation(line: 405, column: 22, scope: !4232)
!4277 = !DILocation(line: 405, column: 28, scope: !4232)
!4278 = !DILocation(line: 405, column: 26, scope: !4232)
!4279 = !DILocation(line: 405, column: 31, scope: !4232)
!4280 = !DILocation(line: 405, column: 40, scope: !4232)
!4281 = !DILocation(line: 405, column: 49, scope: !4232)
!4282 = !DILocation(line: 406, column: 8, scope: !4232)
!4283 = !DILocation(line: 406, column: 34, scope: !4232)
!4284 = !{i8 0, i8 2}
!4285 = !DILocation(line: 405, column: 3, scope: !4232)
!4286 = !DILocation(line: 408, column: 11, scope: !4232)
!4287 = !DILocation(line: 408, column: 3, scope: !4232)
!4288 = !DILocation(line: 410, column: 25, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4232, file: !2, line: 408, column: 24)
!4290 = !DILocation(line: 411, column: 11, scope: !4289)
!4291 = !DILocation(line: 411, column: 23, scope: !4289)
!4292 = !DILocation(line: 411, column: 29, scope: !4289)
!4293 = !DILocation(line: 411, column: 27, scope: !4289)
!4294 = !DILocation(line: 411, column: 32, scope: !4289)
!4295 = !DILocation(line: 410, column: 10, scope: !4289)
!4296 = !DILocation(line: 410, column: 8, scope: !4289)
!4297 = !DILocation(line: 412, column: 4, scope: !4289)
!4298 = !DILocation(line: 414, column: 25, scope: !4289)
!4299 = !DILocation(line: 415, column: 11, scope: !4289)
!4300 = !DILocation(line: 415, column: 23, scope: !4289)
!4301 = !DILocation(line: 415, column: 26, scope: !4289)
!4302 = !DILocation(line: 414, column: 10, scope: !4289)
!4303 = !DILocation(line: 414, column: 8, scope: !4289)
!4304 = !DILocation(line: 416, column: 4, scope: !4289)
!4305 = !DILocation(line: 418, column: 25, scope: !4289)
!4306 = !DILocation(line: 418, column: 38, scope: !4289)
!4307 = !DILocation(line: 418, column: 50, scope: !4289)
!4308 = !DILocation(line: 418, column: 10, scope: !4289)
!4309 = !DILocation(line: 418, column: 8, scope: !4289)
!4310 = !DILocation(line: 419, column: 4, scope: !4289)
!4311 = !DILocation(line: 421, column: 7, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4232, file: !2, line: 421, column: 7)
!4313 = !DILocation(line: 421, column: 7, scope: !4232)
!4314 = !DILocation(line: 422, column: 11, scope: !4312)
!4315 = !DILocation(line: 422, column: 4, scope: !4312)
!4316 = !DILocation(line: 423, column: 2, scope: !4232)
!4317 = !DILocation(line: 401, column: 28, scope: !4233)
!4318 = !DILocation(line: 401, column: 25, scope: !4233)
!4319 = !DILocation(line: 401, column: 2, scope: !4233)
!4320 = distinct !{!4320, !4270, !4321, !3493, !3494}
!4321 = !DILocation(line: 423, column: 2, scope: !4234)
!4322 = !DILocation(line: 424, column: 2, scope: !4207)
!4323 = !DILocation(line: 425, column: 1, scope: !4207)
!4324 = !DISubprogram(name: "hex_dump_to_buffer", scope: !57, file: !57, line: 709, type: !4325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!70, !3322, !130, !70, !70, !128, !130, !464}
!4327 = distinct !DISubprogram(name: "check_copy_size", scope: !107, file: !107, line: 237, type: !4328, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!464, !3322, !130, !464}
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4338}
!4331 = !DILocalVariable(name: "addr", arg: 1, scope: !4327, file: !107, line: 237, type: !3322)
!4332 = !DILocalVariable(name: "bytes", arg: 2, scope: !4327, file: !107, line: 237, type: !130)
!4333 = !DILocalVariable(name: "is_source", arg: 3, scope: !4327, file: !107, line: 237, type: !464)
!4334 = !DILocalVariable(name: "sz", scope: !4327, file: !107, line: 239, type: !70)
!4335 = !DILocalVariable(name: "__ret_warn_on", scope: !4336, file: !107, line: 249, type: !70)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !107, line: 249, column: 6)
!4337 = distinct !DILexicalBlock(scope: !4327, file: !107, line: 249, column: 6)
!4338 = !DILocalVariable(name: "__flags", scope: !4339, file: !107, line: 249, type: !70)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !107, line: 249, column: 6)
!4340 = distinct !DILexicalBlock(scope: !4336, file: !107, line: 249, column: 6)
!4341 = !DILocation(line: 237, column: 29, scope: !4327)
!4342 = !DILocation(line: 237, column: 42, scope: !4327)
!4343 = !DILocation(line: 237, column: 54, scope: !4327)
!4344 = !DILocation(line: 239, column: 2, scope: !4327)
!4345 = !DILocation(line: 239, column: 6, scope: !4327)
!4346 = !DILocation(line: 239, column: 33, scope: !4327)
!4347 = !DILocation(line: 239, column: 11, scope: !4327)
!4348 = !DILocation(line: 240, column: 6, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4327, file: !107, line: 240, column: 6)
!4350 = !DILocation(line: 0, scope: !4349)
!4351 = !DILocation(line: 240, column: 6, scope: !4327)
!4352 = !DILocation(line: 241, column: 29, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !107, line: 241, column: 7)
!4354 = distinct !DILexicalBlock(scope: !4349, file: !107, line: 240, column: 39)
!4355 = !DILocation(line: 241, column: 8, scope: !4353)
!4356 = !DILocation(line: 241, column: 7, scope: !4354)
!4357 = !DILocation(line: 242, column: 18, scope: !4353)
!4358 = !DILocation(line: 242, column: 22, scope: !4353)
!4359 = !DILocation(line: 242, column: 4, scope: !4353)
!4360 = !DILocation(line: 243, column: 12, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4353, file: !107, line: 243, column: 12)
!4362 = !DILocation(line: 243, column: 12, scope: !4353)
!4363 = !DILocation(line: 244, column: 4, scope: !4361)
!4364 = !{i32 1629708}
!4365 = !DILocation(line: 246, column: 4, scope: !4361)
!4366 = !{i32 1629737}
!4367 = !DILocation(line: 247, column: 3, scope: !4354)
!4368 = !DILocation(line: 249, column: 6, scope: !4336)
!4369 = !DILocation(line: 249, column: 6, scope: !4340)
!4370 = !DILocation(line: 249, column: 6, scope: !4339)
!4371 = !DILocation(line: 249, column: 6, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4339, file: !107, line: 249, column: 6)
!4373 = !DILocation(line: 249, column: 6, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4339, file: !107, line: 249, column: 6)
!4375 = !{i64 2149600631, i64 2149600660, i64 2149600706, i64 2149600764, i64 2149600818, i64 2149600872, i64 2149600927, i64 2149600958, i64 2149601266, i64 2149601272, i64 2149601319, i64 2149601342, i64 2149601368}
!4376 = !DILocation(line: 249, column: 6, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4339, file: !107, line: 249, column: 6)
!4378 = !DILocation(line: 249, column: 6, scope: !4337)
!4379 = !DILocation(line: 249, column: 6, scope: !4327)
!4380 = !DILocation(line: 250, column: 3, scope: !4337)
!4381 = !DILocation(line: 251, column: 20, scope: !4327)
!4382 = !DILocation(line: 251, column: 26, scope: !4327)
!4383 = !DILocation(line: 251, column: 33, scope: !4327)
!4384 = !DILocation(line: 251, column: 2, scope: !4327)
!4385 = !DILocation(line: 252, column: 2, scope: !4327)
!4386 = !DILocation(line: 253, column: 1, scope: !4327)
!4387 = !DISubprogram(name: "_copy_to_user", scope: !4184, file: !4184, line: 176, type: !4185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4388 = distinct !DISubprogram(name: "copy_overflow", scope: !107, file: !107, line: 230, type: !4389, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4391)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{null, !70, !69}
!4391 = !{!4392, !4393}
!4392 = !DILocalVariable(name: "size", arg: 1, scope: !4388, file: !107, line: 230, type: !70)
!4393 = !DILocalVariable(name: "count", arg: 2, scope: !4388, file: !107, line: 230, type: !69)
!4394 = !DILocation(line: 230, column: 38, scope: !4388)
!4395 = !DILocation(line: 230, column: 58, scope: !4388)
!4396 = !DILocation(line: 233, column: 19, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4388, file: !107, line: 232, column: 6)
!4398 = !DILocation(line: 233, column: 25, scope: !4397)
!4399 = !DILocation(line: 233, column: 3, scope: !4397)
!4400 = !DILocation(line: 234, column: 1, scope: !4388)
!4401 = !DISubprogram(name: "__bad_copy_from", scope: !107, file: !107, line: 224, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4402 = !DISubprogram(name: "__bad_copy_to", scope: !107, file: !107, line: 226, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4403 = distinct !DISubprogram(name: "check_object_size", scope: !107, file: !107, line: 218, type: !4404, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4406)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{null, !3322, !69, !464}
!4406 = !{!4407, !4408, !4409}
!4407 = !DILocalVariable(name: "ptr", arg: 1, scope: !4403, file: !107, line: 218, type: !3322)
!4408 = !DILocalVariable(name: "n", arg: 2, scope: !4403, file: !107, line: 218, type: !69)
!4409 = !DILocalVariable(name: "to_user", arg: 3, scope: !4403, file: !107, line: 219, type: !464)
!4410 = !DILocation(line: 218, column: 50, scope: !4403)
!4411 = !DILocation(line: 218, column: 69, scope: !4403)
!4412 = !DILocation(line: 219, column: 15, scope: !4403)
!4413 = !DILocation(line: 220, column: 3, scope: !4403)
!4414 = !DISubprogram(name: "__copy_overflow", scope: !107, file: !107, line: 228, type: !4389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
