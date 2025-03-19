; ModuleID = 'kernel/trace/trace_seq.c'
source_filename = "kernel/trace/trace_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_printf: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_printf ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_bitmask: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_bitmask ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_vprintf: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_vprintf ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_bprintf: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_bprintf ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_puts: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_puts ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_putc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_putc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_putmem: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_putmem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_putmem_hex: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_putmem_hex ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_path: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_path ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_to_user: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_to_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_hex_dump: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_hex_dump ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_trace_seq_acquire: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad trace_seq_acquire ; .previous"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i64, i32 }
%struct.seq_buf = type { ptr, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@__UNIQUE_ID___addressable_trace_seq_printf251 = internal global ptr @trace_seq_printf, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"%*pb\00", align 1, !dbg !53
@__UNIQUE_ID___addressable_trace_seq_bitmask252 = internal global ptr @trace_seq_bitmask, section ".discard.addressable", align 8, !dbg !59
@__UNIQUE_ID___addressable_trace_seq_vprintf253 = internal global ptr @trace_seq_vprintf, section ".discard.addressable", align 8, !dbg !61
@__UNIQUE_ID___addressable_trace_seq_bprintf254 = internal global ptr @trace_seq_bprintf, section ".discard.addressable", align 8, !dbg !63
@__UNIQUE_ID___addressable_trace_seq_puts255 = internal global ptr @trace_seq_puts, section ".discard.addressable", align 8, !dbg !65
@__UNIQUE_ID___addressable_trace_seq_putc256 = internal global ptr @trace_seq_putc, section ".discard.addressable", align 8, !dbg !67
@__UNIQUE_ID___addressable_trace_seq_putmem257 = internal global ptr @trace_seq_putmem, section ".discard.addressable", align 8, !dbg !69
@__UNIQUE_ID___addressable_trace_seq_putmem_hex258 = internal global ptr @trace_seq_putmem_hex, section ".discard.addressable", align 8, !dbg !71
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !73
@__UNIQUE_ID___addressable_trace_seq_path259 = internal global ptr @trace_seq_path, section ".discard.addressable", align 8, !dbg !78
@__UNIQUE_ID___addressable_trace_seq_to_user260 = internal global ptr @trace_seq_to_user, section ".discard.addressable", align 8, !dbg !80
@__UNIQUE_ID___addressable_trace_seq_hex_dump261 = internal global ptr @trace_seq_hex_dump, section ".discard.addressable", align 8, !dbg !82
@.str.2 = private unnamed_addr constant [25 x i8] c"kernel/trace/trace_seq.c\00", align 1, !dbg !84
@__UNIQUE_ID___addressable_trace_seq_acquire262 = internal global ptr @trace_seq_acquire, section ".discard.addressable", align 8, !dbg !89
@.str.3 = private unnamed_addr constant [24 x i8] c"include/linux/seq_buf.h\00", align 1, !dbg !91
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable_trace_seq_printf251, ptr @__UNIQUE_ID___addressable_trace_seq_bitmask252, ptr @__UNIQUE_ID___addressable_trace_seq_vprintf253, ptr @__UNIQUE_ID___addressable_trace_seq_bprintf254, ptr @__UNIQUE_ID___addressable_trace_seq_puts255, ptr @__UNIQUE_ID___addressable_trace_seq_putc256, ptr @__UNIQUE_ID___addressable_trace_seq_putmem257, ptr @__UNIQUE_ID___addressable_trace_seq_putmem_hex258, ptr @__UNIQUE_ID___addressable_trace_seq_path259, ptr @__UNIQUE_ID___addressable_trace_seq_to_user260, ptr @__UNIQUE_ID___addressable_trace_seq_hex_dump261, ptr @__UNIQUE_ID___addressable_trace_seq_acquire262], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_print_seq(ptr noundef %m, ptr noundef %s) #0 align 16 !dbg !106 {
entry:
  %m.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3292, metadata !DIExpression()), !dbg !3295
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3293, metadata !DIExpression()), !dbg !3296
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !3297
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3294, metadata !DIExpression()), !dbg !3298
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3299
  call void @__trace_seq_init(ptr noundef %0) #8, !dbg !3300
  %1 = load ptr, ptr %m.addr, align 8, !dbg !3301
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3302
  %seq = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 1, !dbg !3303
  %call = call i32 @seq_buf_print_seq(ptr noundef %1, ptr noundef %seq) #8, !dbg !3304
  store i32 %call, ptr %ret, align 4, !dbg !3305
  %3 = load i32, ptr %ret, align 4, !dbg !3306
  %tobool = icmp ne i32 %3, 0, !dbg !3306
  br i1 %tobool, label %if.end, label %if.then, !dbg !3308

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3309
  call void @trace_seq_init(ptr noundef %4) #8, !dbg !3310
  br label %if.end, !dbg !3310

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %ret, align 4, !dbg !3311
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !3312
  ret i32 %5, !dbg !3313
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__trace_seq_init(ptr noundef %s) #3 align 16 !dbg !3314 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3318, metadata !DIExpression()), !dbg !3319
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3320
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3320
  %size = getelementptr inbounds %struct.seq_buf, ptr %seq, i32 0, i32 1, !dbg !3320
  %1 = load i64, ptr %size, align 8, !dbg !3320
  %tobool = icmp ne i64 %1, 0, !dbg !3320
  %lnot = xor i1 %tobool, true, !dbg !3320
  %lnot1 = xor i1 %lnot, true, !dbg !3320
  %lnot2 = xor i1 %lnot1, true, !dbg !3320
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3320
  %conv = sext i32 %lnot.ext to i64, !dbg !3320
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3320
  %tobool3 = icmp ne i64 %expval, 0, !dbg !3320
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3322

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3323
  call void @trace_seq_init(ptr noundef %2) #8, !dbg !3324
  br label %if.end, !dbg !3324

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3325
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3326 dso_local i32 @seq_buf_print_seq(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_seq_init(ptr noundef %s) #3 align 16 !dbg !3330 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3332, metadata !DIExpression()), !dbg !3333
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3334
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3335
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3336
  %buffer = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 0, !dbg !3337
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %buffer, i64 0, i64 0, !dbg !3336
  call void @seq_buf_init(ptr noundef %seq, ptr noundef %arraydecay, i32 noundef 4096) #8, !dbg !3338
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3339
  %full = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 3, !dbg !3340
  store i32 0, ptr %full, align 8, !dbg !3341
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3342
  %readpos = getelementptr inbounds %struct.trace_seq, ptr %3, i32 0, i32 2, !dbg !3343
  store i64 0, ptr %readpos, align 8, !dbg !3344
  ret void, !dbg !3345
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_seq_printf(ptr noundef %s, ptr noundef %fmt, ...) #0 align 16 !dbg !3346 {
entry:
  %s.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %save_len = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3350, metadata !DIExpression()), !dbg !3364
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !3351, metadata !DIExpression()), !dbg !3365
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_len) #7, !dbg !3366
  call void @llvm.dbg.declare(metadata ptr %save_len, metadata !3352, metadata !DIExpression()), !dbg !3367
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3368
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3369
  %len = getelementptr inbounds %struct.seq_buf, ptr %seq, i32 0, i32 2, !dbg !3370
  %1 = load i64, ptr %len, align 8, !dbg !3370
  %conv = trunc i64 %1 to i32, !dbg !3368
  store i32 %conv, ptr %save_len, align 4, !dbg !3367
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #7, !dbg !3371
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !3353, metadata !DIExpression()), !dbg !3372
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3373
  %full = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 3, !dbg !3375
  %3 = load i32, ptr %full, align 8, !dbg !3375
  %tobool = icmp ne i32 %3, 0, !dbg !3373
  br i1 %tobool, label %if.then, label %if.end, !dbg !3376

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3377

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3378
  call void @__trace_seq_init(ptr noundef %4) #8, !dbg !3379
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3380
  call void @llvm.va_start(ptr %arraydecay), !dbg !3380
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3381
  %seq1 = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 1, !dbg !3382
  %6 = load ptr, ptr %fmt.addr, align 8, !dbg !3383
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3384
  %call = call i32 @seq_buf_vprintf(ptr noundef %seq1, ptr noundef %6, ptr noundef %arraydecay2) #8, !dbg !3385
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3386
  call void @llvm.va_end(ptr %arraydecay3), !dbg !3386
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3387
  %seq4 = getelementptr inbounds %struct.trace_seq, ptr %7, i32 0, i32 1, !dbg !3387
  %call5 = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %seq4) #8, !dbg !3387
  %lnot = xor i1 %call5, true, !dbg !3387
  %lnot6 = xor i1 %lnot, true, !dbg !3387
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !3387
  %conv7 = sext i32 %lnot.ext to i64, !dbg !3387
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3387
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3387
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !3389

if.then9:                                         ; preds = %if.end
  %8 = load i32, ptr %save_len, align 4, !dbg !3390
  %conv10 = zext i32 %8 to i64, !dbg !3390
  %9 = load ptr, ptr %s.addr, align 8, !dbg !3392
  %seq11 = getelementptr inbounds %struct.trace_seq, ptr %9, i32 0, i32 1, !dbg !3393
  %len12 = getelementptr inbounds %struct.seq_buf, ptr %seq11, i32 0, i32 2, !dbg !3394
  store i64 %conv10, ptr %len12, align 8, !dbg !3395
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3396
  %full13 = getelementptr inbounds %struct.trace_seq, ptr %10, i32 0, i32 3, !dbg !3397
  store i32 1, ptr %full13, align 8, !dbg !3398
  br label %if.end14, !dbg !3399

if.end14:                                         ; preds = %if.then9, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3400
  br label %cleanup, !dbg !3400

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #7, !dbg !3400
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_len) #7, !dbg !3400
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3400

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3401 dso_local i32 @seq_buf_vprintf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @seq_buf_has_overflowed(ptr noundef %s) #3 align 16 !dbg !3405 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3409, metadata !DIExpression()), !dbg !3410
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3411
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !3412
  %1 = load i64, ptr %len, align 8, !dbg !3412
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3413
  %size = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 1, !dbg !3414
  %3 = load i64, ptr %size, align 8, !dbg !3414
  %cmp = icmp ugt i64 %1, %3, !dbg !3415
  ret i1 %cmp, !dbg !3416
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_seq_bitmask(ptr noundef %s, ptr noundef %maskp, i32 noundef %nmaskbits) #0 align 16 !dbg !3417 {
entry:
  %s.addr = alloca ptr, align 8
  %maskp.addr = alloca ptr, align 8
  %nmaskbits.addr = alloca i32, align 4
  %save_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3423, metadata !DIExpression()), !dbg !3427
  store ptr %maskp, ptr %maskp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maskp.addr, metadata !3424, metadata !DIExpression()), !dbg !3428
  store i32 %nmaskbits, ptr %nmaskbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nmaskbits.addr, metadata !3425, metadata !DIExpression()), !dbg !3429
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_len) #7, !dbg !3430
  call void @llvm.dbg.declare(metadata ptr %save_len, metadata !3426, metadata !DIExpression()), !dbg !3431
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3432
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3433
  %len = getelementptr inbounds %struct.seq_buf, ptr %seq, i32 0, i32 2, !dbg !3434
  %1 = load i64, ptr %len, align 8, !dbg !3434
  %conv = trunc i64 %1 to i32, !dbg !3432
  store i32 %conv, ptr %save_len, align 4, !dbg !3431
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3435
  %full = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 3, !dbg !3437
  %3 = load i32, ptr %full, align 8, !dbg !3437
  %tobool = icmp ne i32 %3, 0, !dbg !3435
  br i1 %tobool, label %if.then, label %if.end, !dbg !3438

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3439

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3440
  call void @__trace_seq_init(ptr noundef %4) #8, !dbg !3441
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3442
  %seq1 = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 1, !dbg !3443
  %6 = load i32, ptr %nmaskbits.addr, align 4, !dbg !3444
  %7 = load ptr, ptr %maskp.addr, align 8, !dbg !3445
  %call = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %seq1, ptr noundef @.str, i32 noundef %6, ptr noundef %7) #8, !dbg !3446
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3447
  %seq2 = getelementptr inbounds %struct.trace_seq, ptr %8, i32 0, i32 1, !dbg !3447
  %call3 = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %seq2) #8, !dbg !3447
  %lnot = xor i1 %call3, true, !dbg !3447
  %lnot4 = xor i1 %lnot, true, !dbg !3447
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3447
  %conv5 = sext i32 %lnot.ext to i64, !dbg !3447
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !3447
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3447
  br i1 %tobool6, label %if.then7, label %if.end12, !dbg !3449

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %save_len, align 4, !dbg !3450
  %conv8 = zext i32 %9 to i64, !dbg !3450
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3452
  %seq9 = getelementptr inbounds %struct.trace_seq, ptr %10, i32 0, i32 1, !dbg !3453
  %len10 = getelementptr inbounds %struct.seq_buf, ptr %seq9, i32 0, i32 2, !dbg !3454
  store i64 %conv8, ptr %len10, align 8, !dbg !3455
  %11 = load ptr, ptr %s.addr, align 8, !dbg !3456
  %full11 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 3, !dbg !3457
  store i32 1, ptr %full11, align 8, !dbg !3458
  br label %if.end12, !dbg !3459

if.end12:                                         ; preds = %if.then7, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3460
  br label %cleanup, !dbg !3460

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_len) #7, !dbg !3460
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3460

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3461 dso_local i32 @seq_buf_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_seq_vprintf(ptr noundef %s, ptr noundef %fmt, ptr noundef %args) #0 align 16 !dbg !3464 {
entry:
  %s.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %save_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3468, metadata !DIExpression()), !dbg !3472
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !3469, metadata !DIExpression()), !dbg !3473
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !3470, metadata !DIExpression()), !dbg !3474
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_len) #7, !dbg !3475
  call void @llvm.dbg.declare(metadata ptr %save_len, metadata !3471, metadata !DIExpression()), !dbg !3476
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3477
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3478
  %len = getelementptr inbounds %struct.seq_buf, ptr %seq, i32 0, i32 2, !dbg !3479
  %1 = load i64, ptr %len, align 8, !dbg !3479
  %conv = trunc i64 %1 to i32, !dbg !3477
  store i32 %conv, ptr %save_len, align 4, !dbg !3476
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3480
  %full = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 3, !dbg !3482
  %3 = load i32, ptr %full, align 8, !dbg !3482
  %tobool = icmp ne i32 %3, 0, !dbg !3480
  br i1 %tobool, label %if.then, label %if.end, !dbg !3483

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3484

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3485
  call void @__trace_seq_init(ptr noundef %4) #8, !dbg !3486
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3487
  %seq1 = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 1, !dbg !3488
  %6 = load ptr, ptr %fmt.addr, align 8, !dbg !3489
  %7 = load ptr, ptr %args.addr, align 8, !dbg !3490
  %call = call i32 @seq_buf_vprintf(ptr noundef %seq1, ptr noundef %6, ptr noundef %7) #8, !dbg !3491
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3492
  %seq2 = getelementptr inbounds %struct.trace_seq, ptr %8, i32 0, i32 1, !dbg !3492
  %call3 = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %seq2) #8, !dbg !3492
  %lnot = xor i1 %call3, true, !dbg !3492
  %lnot4 = xor i1 %lnot, true, !dbg !3492
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3492
  %conv5 = sext i32 %lnot.ext to i64, !dbg !3492
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !3492
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3492
  br i1 %tobool6, label %if.then7, label %if.end12, !dbg !3494

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %save_len, align 4, !dbg !3495
  %conv8 = zext i32 %9 to i64, !dbg !3495
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3497
  %seq9 = getelementptr inbounds %struct.trace_seq, ptr %10, i32 0, i32 1, !dbg !3498
  %len10 = getelementptr inbounds %struct.seq_buf, ptr %seq9, i32 0, i32 2, !dbg !3499
  store i64 %conv8, ptr %len10, align 8, !dbg !3500
  %11 = load ptr, ptr %s.addr, align 8, !dbg !3501
  %full11 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 3, !dbg !3502
  store i32 1, ptr %full11, align 8, !dbg !3503
  br label %if.end12, !dbg !3504

if.end12:                                         ; preds = %if.then7, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3505
  br label %cleanup, !dbg !3505

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_len) #7, !dbg !3505
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3505

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_seq_bprintf(ptr noundef %s, ptr noundef %fmt, ptr noundef %binary) #0 align 16 !dbg !3506 {
entry:
  %s.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %binary.addr = alloca ptr, align 8
  %save_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3512, metadata !DIExpression()), !dbg !3516
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !3513, metadata !DIExpression()), !dbg !3517
  store ptr %binary, ptr %binary.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %binary.addr, metadata !3514, metadata !DIExpression()), !dbg !3518
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_len) #7, !dbg !3519
  call void @llvm.dbg.declare(metadata ptr %save_len, metadata !3515, metadata !DIExpression()), !dbg !3520
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3521
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3522
  %len = getelementptr inbounds %struct.seq_buf, ptr %seq, i32 0, i32 2, !dbg !3523
  %1 = load i64, ptr %len, align 8, !dbg !3523
  %conv = trunc i64 %1 to i32, !dbg !3521
  store i32 %conv, ptr %save_len, align 4, !dbg !3520
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3524
  %full = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 3, !dbg !3526
  %3 = load i32, ptr %full, align 8, !dbg !3526
  %tobool = icmp ne i32 %3, 0, !dbg !3524
  br i1 %tobool, label %if.then, label %if.end, !dbg !3527

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3528

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3529
  call void @__trace_seq_init(ptr noundef %4) #8, !dbg !3530
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3531
  %seq1 = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 1, !dbg !3532
  %6 = load ptr, ptr %fmt.addr, align 8, !dbg !3533
  %7 = load ptr, ptr %binary.addr, align 8, !dbg !3534
  %call = call i32 @seq_buf_bprintf(ptr noundef %seq1, ptr noundef %6, ptr noundef %7) #8, !dbg !3535
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3536
  %seq2 = getelementptr inbounds %struct.trace_seq, ptr %8, i32 0, i32 1, !dbg !3536
  %call3 = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %seq2) #8, !dbg !3536
  %lnot = xor i1 %call3, true, !dbg !3536
  %lnot4 = xor i1 %lnot, true, !dbg !3536
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3536
  %conv5 = sext i32 %lnot.ext to i64, !dbg !3536
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !3536
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3536
  br i1 %tobool6, label %if.then7, label %if.end12, !dbg !3538

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %save_len, align 4, !dbg !3539
  %conv8 = zext i32 %9 to i64, !dbg !3539
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3541
  %seq9 = getelementptr inbounds %struct.trace_seq, ptr %10, i32 0, i32 1, !dbg !3542
  %len10 = getelementptr inbounds %struct.seq_buf, ptr %seq9, i32 0, i32 2, !dbg !3543
  store i64 %conv8, ptr %len10, align 8, !dbg !3544
  %11 = load ptr, ptr %s.addr, align 8, !dbg !3545
  %full11 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 3, !dbg !3546
  store i32 1, ptr %full11, align 8, !dbg !3547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3548

if.end12:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3549
  br label %cleanup, !dbg !3549

cleanup:                                          ; preds = %if.end12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_len) #7, !dbg !3549
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3549

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3550 dso_local i32 @seq_buf_bprintf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_seq_puts(ptr noundef %s, ptr noundef %str) #0 align 16 !dbg !3553 {
entry:
  %s.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3557, metadata !DIExpression()), !dbg !3560
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3558, metadata !DIExpression()), !dbg !3561
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !3562
  call void @llvm.dbg.declare(metadata ptr %len, metadata !3559, metadata !DIExpression()), !dbg !3563
  %0 = load ptr, ptr %str.addr, align 8, !dbg !3564
  %call = call i64 @strlen(ptr noundef %0) #8, !dbg !3565
  %conv = trunc i64 %call to i32, !dbg !3565
  store i32 %conv, ptr %len, align 4, !dbg !3563
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3566
  %full = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 3, !dbg !3568
  %2 = load i32, ptr %full, align 8, !dbg !3568
  %tobool = icmp ne i32 %2, 0, !dbg !3566
  br i1 %tobool, label %if.then, label %if.end, !dbg !3569

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3570

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3571
  call void @__trace_seq_init(ptr noundef %3) #8, !dbg !3572
  %4 = load i32, ptr %len, align 4, !dbg !3573
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3575
  %seq = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 1, !dbg !3575
  %call1 = call i32 @seq_buf_buffer_left(ptr noundef %seq) #8, !dbg !3575
  %cmp = icmp ugt i32 %4, %call1, !dbg !3576
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3577

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3578
  %full4 = getelementptr inbounds %struct.trace_seq, ptr %6, i32 0, i32 3, !dbg !3580
  store i32 1, ptr %full4, align 8, !dbg !3581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3582

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3583
  %seq6 = getelementptr inbounds %struct.trace_seq, ptr %7, i32 0, i32 1, !dbg !3584
  %8 = load ptr, ptr %str.addr, align 8, !dbg !3585
  %9 = load i32, ptr %len, align 4, !dbg !3586
  %call7 = call i32 @seq_buf_putmem(ptr noundef %seq6, ptr noundef %8, i32 noundef %9) #8, !dbg !3587
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3588
  br label %cleanup, !dbg !3588

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !3588
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3588

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3589 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_buf_buffer_left(ptr noundef %s) #3 align 16 !dbg !3593 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3597, metadata !DIExpression()), !dbg !3598
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3599
  %call = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %0) #8, !dbg !3601
  br i1 %call, label %if.then, label %if.end, !dbg !3602

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3603
  br label %return, !dbg !3603

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3604
  %size = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1, !dbg !3605
  %2 = load i64, ptr %size, align 8, !dbg !3605
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3606
  %len = getelementptr inbounds %struct.seq_buf, ptr %3, i32 0, i32 2, !dbg !3607
  %4 = load i64, ptr %len, align 8, !dbg !3607
  %sub = sub i64 %2, %4, !dbg !3608
  %conv = trunc i64 %sub to i32, !dbg !3604
  store i32 %conv, ptr %retval, align 4, !dbg !3609
  br label %return, !dbg !3609

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !3610
  ret i32 %5, !dbg !3610
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3611 dso_local i32 @seq_buf_putmem(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_seq_putc(ptr noundef %s, i8 noundef zeroext %c) #0 align 16 !dbg !3616 {
entry:
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3620, metadata !DIExpression()), !dbg !3622
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !3621, metadata !DIExpression()), !dbg !3623
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3624
  %full = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 3, !dbg !3626
  %1 = load i32, ptr %full, align 8, !dbg !3626
  %tobool = icmp ne i32 %1, 0, !dbg !3624
  br i1 %tobool, label %if.then, label %if.end, !dbg !3627

if.then:                                          ; preds = %entry
  br label %return, !dbg !3628

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3629
  call void @__trace_seq_init(ptr noundef %2) #8, !dbg !3630
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3631
  %seq = getelementptr inbounds %struct.trace_seq, ptr %3, i32 0, i32 1, !dbg !3631
  %call = call i32 @seq_buf_buffer_left(ptr noundef %seq) #8, !dbg !3631
  %cmp = icmp ult i32 %call, 1, !dbg !3633
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !3634

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3635
  %full2 = getelementptr inbounds %struct.trace_seq, ptr %4, i32 0, i32 3, !dbg !3637
  store i32 1, ptr %full2, align 8, !dbg !3638
  br label %return, !dbg !3639

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3640
  %seq4 = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 1, !dbg !3641
  %6 = load i8, ptr %c.addr, align 1, !dbg !3642
  %call5 = call i32 @seq_buf_putc(ptr noundef %seq4, i8 noundef zeroext %6) #8, !dbg !3643
  br label %return, !dbg !3644

return:                                           ; preds = %if.end3, %if.then1, %if.then
  ret void, !dbg !3644
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3645 dso_local i32 @seq_buf_putc(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_seq_putmem(ptr noundef %s, ptr noundef %mem, i32 noundef %len) #0 align 16 !dbg !3648 {
entry:
  %s.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3652, metadata !DIExpression()), !dbg !3655
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !3653, metadata !DIExpression()), !dbg !3656
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3654, metadata !DIExpression()), !dbg !3657
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3658
  %full = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 3, !dbg !3660
  %1 = load i32, ptr %full, align 8, !dbg !3660
  %tobool = icmp ne i32 %1, 0, !dbg !3658
  br i1 %tobool, label %if.then, label %if.end, !dbg !3661

if.then:                                          ; preds = %entry
  br label %return, !dbg !3662

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3663
  call void @__trace_seq_init(ptr noundef %2) #8, !dbg !3664
  %3 = load i32, ptr %len.addr, align 4, !dbg !3665
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3667
  %seq = getelementptr inbounds %struct.trace_seq, ptr %4, i32 0, i32 1, !dbg !3667
  %call = call i32 @seq_buf_buffer_left(ptr noundef %seq) #8, !dbg !3667
  %cmp = icmp ugt i32 %3, %call, !dbg !3668
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !3669

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3670
  %full2 = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 3, !dbg !3672
  store i32 1, ptr %full2, align 8, !dbg !3673
  br label %return, !dbg !3674

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3675
  %seq4 = getelementptr inbounds %struct.trace_seq, ptr %6, i32 0, i32 1, !dbg !3676
  %7 = load ptr, ptr %mem.addr, align 8, !dbg !3677
  %8 = load i32, ptr %len.addr, align 4, !dbg !3678
  %call5 = call i32 @seq_buf_putmem(ptr noundef %seq4, ptr noundef %7, i32 noundef %8) #8, !dbg !3679
  br label %return, !dbg !3680

return:                                           ; preds = %if.end3, %if.then1, %if.then
  ret void, !dbg !3680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_seq_putmem_hex(ptr noundef %s, ptr noundef %mem, i32 noundef %len) #0 align 16 !dbg !3681 {
entry:
  %s.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %save_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3683, metadata !DIExpression()), !dbg !3687
  store ptr %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !3684, metadata !DIExpression()), !dbg !3688
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3685, metadata !DIExpression()), !dbg !3689
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_len) #7, !dbg !3690
  call void @llvm.dbg.declare(metadata ptr %save_len, metadata !3686, metadata !DIExpression()), !dbg !3691
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3692
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3693
  %len1 = getelementptr inbounds %struct.seq_buf, ptr %seq, i32 0, i32 2, !dbg !3694
  %1 = load i64, ptr %len1, align 8, !dbg !3694
  %conv = trunc i64 %1 to i32, !dbg !3692
  store i32 %conv, ptr %save_len, align 4, !dbg !3691
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3695
  %full = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 3, !dbg !3697
  %3 = load i32, ptr %full, align 8, !dbg !3697
  %tobool = icmp ne i32 %3, 0, !dbg !3695
  br i1 %tobool, label %if.then, label %if.end, !dbg !3698

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3699

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3700
  call void @__trace_seq_init(ptr noundef %4) #8, !dbg !3701
  %5 = load i32, ptr %len.addr, align 4, !dbg !3702
  %mul = mul i32 %5, 2, !dbg !3704
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3705
  %seq2 = getelementptr inbounds %struct.trace_seq, ptr %6, i32 0, i32 1, !dbg !3705
  %call = call i32 @seq_buf_buffer_left(ptr noundef %seq2) #8, !dbg !3705
  %cmp = icmp ugt i32 %mul, %call, !dbg !3706
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3707

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3708
  %full5 = getelementptr inbounds %struct.trace_seq, ptr %7, i32 0, i32 3, !dbg !3710
  store i32 1, ptr %full5, align 8, !dbg !3711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3712

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3713
  %seq7 = getelementptr inbounds %struct.trace_seq, ptr %8, i32 0, i32 1, !dbg !3714
  %9 = load ptr, ptr %mem.addr, align 8, !dbg !3715
  %10 = load i32, ptr %len.addr, align 4, !dbg !3716
  %call8 = call i32 @seq_buf_putmem_hex(ptr noundef %seq7, ptr noundef %9, i32 noundef %10) #8, !dbg !3717
  %11 = load ptr, ptr %s.addr, align 8, !dbg !3718
  %seq9 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 1, !dbg !3718
  %call10 = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %seq9) #8, !dbg !3718
  %lnot = xor i1 %call10, true, !dbg !3718
  %lnot11 = xor i1 %lnot, true, !dbg !3718
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !3718
  %conv12 = sext i32 %lnot.ext to i64, !dbg !3718
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !3718
  %tobool13 = icmp ne i64 %expval, 0, !dbg !3718
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !3720

if.then14:                                        ; preds = %if.end6
  %12 = load i32, ptr %save_len, align 4, !dbg !3721
  %conv15 = zext i32 %12 to i64, !dbg !3721
  %13 = load ptr, ptr %s.addr, align 8, !dbg !3723
  %seq16 = getelementptr inbounds %struct.trace_seq, ptr %13, i32 0, i32 1, !dbg !3724
  %len17 = getelementptr inbounds %struct.seq_buf, ptr %seq16, i32 0, i32 2, !dbg !3725
  store i64 %conv15, ptr %len17, align 8, !dbg !3726
  %14 = load ptr, ptr %s.addr, align 8, !dbg !3727
  %full18 = getelementptr inbounds %struct.trace_seq, ptr %14, i32 0, i32 3, !dbg !3728
  store i32 1, ptr %full18, align 8, !dbg !3729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3730

if.end19:                                         ; preds = %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3731
  br label %cleanup, !dbg !3731

cleanup:                                          ; preds = %if.end19, %if.then14, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_len) #7, !dbg !3731
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3731

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3732 dso_local i32 @seq_buf_putmem_hex(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_seq_path(ptr noundef %s, ptr noundef %path) #0 align 16 !dbg !3733 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %save_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3737, metadata !DIExpression()), !dbg !3740
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3738, metadata !DIExpression()), !dbg !3741
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_len) #7, !dbg !3742
  call void @llvm.dbg.declare(metadata ptr %save_len, metadata !3739, metadata !DIExpression()), !dbg !3743
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3744
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3745
  %len = getelementptr inbounds %struct.seq_buf, ptr %seq, i32 0, i32 2, !dbg !3746
  %1 = load i64, ptr %len, align 8, !dbg !3746
  %conv = trunc i64 %1 to i32, !dbg !3744
  store i32 %conv, ptr %save_len, align 4, !dbg !3743
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3747
  %full = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 3, !dbg !3749
  %3 = load i32, ptr %full, align 8, !dbg !3749
  %tobool = icmp ne i32 %3, 0, !dbg !3747
  br i1 %tobool, label %if.then, label %if.end, !dbg !3750

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3751

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3752
  call void @__trace_seq_init(ptr noundef %4) #8, !dbg !3753
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3754
  %seq1 = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 1, !dbg !3754
  %call = call i32 @seq_buf_buffer_left(ptr noundef %seq1) #8, !dbg !3754
  %cmp = icmp ult i32 %call, 1, !dbg !3756
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3757

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3758
  %full4 = getelementptr inbounds %struct.trace_seq, ptr %6, i32 0, i32 3, !dbg !3760
  store i32 1, ptr %full4, align 8, !dbg !3761
  store i32 0, ptr %retval, align 4, !dbg !3762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3762

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3763
  %seq6 = getelementptr inbounds %struct.trace_seq, ptr %7, i32 0, i32 1, !dbg !3764
  %8 = load ptr, ptr %path.addr, align 8, !dbg !3765
  %call7 = call i32 @seq_buf_path(ptr noundef %seq6, ptr noundef %8, ptr noundef @.str.1) #8, !dbg !3766
  %9 = load ptr, ptr %s.addr, align 8, !dbg !3767
  %seq8 = getelementptr inbounds %struct.trace_seq, ptr %9, i32 0, i32 1, !dbg !3767
  %call9 = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %seq8) #8, !dbg !3767
  %lnot = xor i1 %call9, true, !dbg !3767
  %lnot10 = xor i1 %lnot, true, !dbg !3767
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !3767
  %conv11 = sext i32 %lnot.ext to i64, !dbg !3767
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !3767
  %tobool12 = icmp ne i64 %expval, 0, !dbg !3767
  br i1 %tobool12, label %if.then13, label %if.end18, !dbg !3769

if.then13:                                        ; preds = %if.end5
  %10 = load i32, ptr %save_len, align 4, !dbg !3770
  %conv14 = zext i32 %10 to i64, !dbg !3770
  %11 = load ptr, ptr %s.addr, align 8, !dbg !3772
  %seq15 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 1, !dbg !3773
  %len16 = getelementptr inbounds %struct.seq_buf, ptr %seq15, i32 0, i32 2, !dbg !3774
  store i64 %conv14, ptr %len16, align 8, !dbg !3775
  %12 = load ptr, ptr %s.addr, align 8, !dbg !3776
  %full17 = getelementptr inbounds %struct.trace_seq, ptr %12, i32 0, i32 3, !dbg !3777
  store i32 1, ptr %full17, align 8, !dbg !3778
  store i32 0, ptr %retval, align 4, !dbg !3779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3779

if.end18:                                         ; preds = %if.end5
  store i32 1, ptr %retval, align 4, !dbg !3780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3780

cleanup:                                          ; preds = %if.end18, %if.then13, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_len) #7, !dbg !3781
  %13 = load i32, ptr %retval, align 4, !dbg !3781
  ret i32 %13, !dbg !3781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3782 dso_local i32 @seq_buf_path(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_seq_to_user(ptr noundef %s, ptr noundef %ubuf, i32 noundef %cnt) #0 align 16 !dbg !3785 {
entry:
  %s.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %cnt.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3789, metadata !DIExpression()), !dbg !3793
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !3790, metadata !DIExpression()), !dbg !3794
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !3791, metadata !DIExpression()), !dbg !3795
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !3796
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3792, metadata !DIExpression()), !dbg !3797
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3798
  call void @__trace_seq_init(ptr noundef %0) #8, !dbg !3799
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3800
  %seq = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, !dbg !3801
  %2 = load ptr, ptr %ubuf.addr, align 8, !dbg !3802
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3803
  %readpos = getelementptr inbounds %struct.trace_seq, ptr %3, i32 0, i32 2, !dbg !3804
  %4 = load i64, ptr %readpos, align 8, !dbg !3804
  %5 = load i32, ptr %cnt.addr, align 4, !dbg !3805
  %call = call i32 @seq_buf_to_user(ptr noundef %seq, ptr noundef %2, i64 noundef %4, i32 noundef %5) #8, !dbg !3806
  store i32 %call, ptr %ret, align 4, !dbg !3807
  %6 = load i32, ptr %ret, align 4, !dbg !3808
  %cmp = icmp sgt i32 %6, 0, !dbg !3810
  br i1 %cmp, label %if.then, label %if.end, !dbg !3811

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !3812
  %conv = sext i32 %7 to i64, !dbg !3812
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3813
  %readpos1 = getelementptr inbounds %struct.trace_seq, ptr %8, i32 0, i32 2, !dbg !3814
  %9 = load i64, ptr %readpos1, align 8, !dbg !3815
  %add = add i64 %9, %conv, !dbg !3815
  store i64 %add, ptr %readpos1, align 8, !dbg !3815
  br label %if.end, !dbg !3813

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %ret, align 4, !dbg !3816
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !3817
  ret i32 %10, !dbg !3818
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3819 dso_local i32 @seq_buf_to_user(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @trace_seq_hex_dump(ptr noundef %s, ptr noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %buf, i64 noundef %len, i1 noundef zeroext %ascii) #0 align 16 !dbg !3822 {
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
  %save_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3826, metadata !DIExpression()), !dbg !3835
  store ptr %prefix_str, ptr %prefix_str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_str.addr, metadata !3827, metadata !DIExpression()), !dbg !3836
  store i32 %prefix_type, ptr %prefix_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prefix_type.addr, metadata !3828, metadata !DIExpression()), !dbg !3837
  store i32 %rowsize, ptr %rowsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rowsize.addr, metadata !3829, metadata !DIExpression()), !dbg !3838
  store i32 %groupsize, ptr %groupsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %groupsize.addr, metadata !3830, metadata !DIExpression()), !dbg !3839
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3831, metadata !DIExpression()), !dbg !3840
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3832, metadata !DIExpression()), !dbg !3841
  %frombool = zext i1 %ascii to i8
  store i8 %frombool, ptr %ascii.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ascii.addr, metadata !3833, metadata !DIExpression()), !dbg !3842
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_len) #7, !dbg !3843
  call void @llvm.dbg.declare(metadata ptr %save_len, metadata !3834, metadata !DIExpression()), !dbg !3844
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3845
  %seq = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, !dbg !3846
  %len1 = getelementptr inbounds %struct.seq_buf, ptr %seq, i32 0, i32 2, !dbg !3847
  %1 = load i64, ptr %len1, align 8, !dbg !3847
  %conv = trunc i64 %1 to i32, !dbg !3845
  store i32 %conv, ptr %save_len, align 4, !dbg !3844
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3848
  %full = getelementptr inbounds %struct.trace_seq, ptr %2, i32 0, i32 3, !dbg !3850
  %3 = load i32, ptr %full, align 8, !dbg !3850
  %tobool = icmp ne i32 %3, 0, !dbg !3848
  br i1 %tobool, label %if.then, label %if.end, !dbg !3851

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3852

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3853
  call void @__trace_seq_init(ptr noundef %4) #8, !dbg !3854
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3855
  %seq2 = getelementptr inbounds %struct.trace_seq, ptr %5, i32 0, i32 1, !dbg !3855
  %call = call i32 @seq_buf_buffer_left(ptr noundef %seq2) #8, !dbg !3855
  %cmp = icmp ult i32 %call, 1, !dbg !3857
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3858

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !3859
  %full5 = getelementptr inbounds %struct.trace_seq, ptr %6, i32 0, i32 3, !dbg !3861
  store i32 1, ptr %full5, align 8, !dbg !3862
  store i32 0, ptr %retval, align 4, !dbg !3863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3863

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3864
  %seq7 = getelementptr inbounds %struct.trace_seq, ptr %7, i32 0, i32 1, !dbg !3865
  %8 = load ptr, ptr %prefix_str.addr, align 8, !dbg !3866
  %9 = load i32, ptr %prefix_type.addr, align 4, !dbg !3867
  %10 = load i32, ptr %rowsize.addr, align 4, !dbg !3868
  %11 = load i32, ptr %groupsize.addr, align 4, !dbg !3869
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !3870
  %13 = load i64, ptr %len.addr, align 8, !dbg !3871
  %14 = load i8, ptr %ascii.addr, align 1, !dbg !3872, !range !3873, !noundef !870
  %tobool8 = trunc i8 %14 to i1, !dbg !3872
  %call9 = call i32 @seq_buf_hex_dump(ptr noundef %seq7, ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, i1 noundef zeroext %tobool8) #8, !dbg !3874
  %15 = load ptr, ptr %s.addr, align 8, !dbg !3875
  %seq10 = getelementptr inbounds %struct.trace_seq, ptr %15, i32 0, i32 1, !dbg !3875
  %call11 = call zeroext i1 @seq_buf_has_overflowed(ptr noundef %seq10) #8, !dbg !3875
  %lnot = xor i1 %call11, true, !dbg !3875
  %lnot12 = xor i1 %lnot, true, !dbg !3875
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !3875
  %conv13 = sext i32 %lnot.ext to i64, !dbg !3875
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !3875
  %tobool14 = icmp ne i64 %expval, 0, !dbg !3875
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !3877

if.then15:                                        ; preds = %if.end6
  %16 = load i32, ptr %save_len, align 4, !dbg !3878
  %conv16 = zext i32 %16 to i64, !dbg !3878
  %17 = load ptr, ptr %s.addr, align 8, !dbg !3880
  %seq17 = getelementptr inbounds %struct.trace_seq, ptr %17, i32 0, i32 1, !dbg !3881
  %len18 = getelementptr inbounds %struct.seq_buf, ptr %seq17, i32 0, i32 2, !dbg !3882
  store i64 %conv16, ptr %len18, align 8, !dbg !3883
  %18 = load ptr, ptr %s.addr, align 8, !dbg !3884
  %full19 = getelementptr inbounds %struct.trace_seq, ptr %18, i32 0, i32 3, !dbg !3885
  store i32 1, ptr %full19, align 8, !dbg !3886
  store i32 0, ptr %retval, align 4, !dbg !3887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3887

if.end20:                                         ; preds = %if.end6
  store i32 1, ptr %retval, align 4, !dbg !3888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3888

cleanup:                                          ; preds = %if.end20, %if.then15, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_len) #7, !dbg !3889
  %19 = load i32, ptr %retval, align 4, !dbg !3889
  ret i32 %19, !dbg !3889
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3890 dso_local i32 @seq_buf_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @trace_seq_acquire(ptr noundef %s, i32 noundef %len) #0 align 16 !dbg !3893 {
entry:
  %s.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3897, metadata !DIExpression()), !dbg !3906
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3898, metadata !DIExpression()), !dbg !3907
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !3908
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3899, metadata !DIExpression()), !dbg !3909
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3910
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #8, !dbg !3911
  store ptr %call, ptr %ret, align 8, !dbg !3909
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !3912
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3900, metadata !DIExpression()), !dbg !3912
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3912
  %seq = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, !dbg !3912
  %call1 = call i32 @seq_buf_buffer_left(ptr noundef %seq) #8, !dbg !3912
  %2 = load i32, ptr %len.addr, align 4, !dbg !3912
  %cmp = icmp ult i32 %call1, %2, !dbg !3912
  %lnot = xor i1 %cmp, true, !dbg !3912
  %lnot2 = xor i1 %lnot, true, !dbg !3912
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3912
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3912
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3913
  %tobool = icmp ne i32 %3, 0, !dbg !3913
  %lnot3 = xor i1 %tobool, true, !dbg !3913
  %lnot5 = xor i1 %lnot3, true, !dbg !3913
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3913
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3913
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3913
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3913
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3912

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3913

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !3914
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3903, metadata !DIExpression()), !dbg !3914
  store i32 2307, ptr %__flags, align 4, !dbg !3914
  br label %do.body8, !dbg !3914

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3915

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3915

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3914

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !3917
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 428, i32 %4, i64 12) #7, !dbg !3917, !srcloc !3919
  br label %do.cond10, !dbg !3917

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3917

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3914

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3920

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3920

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !3913
  br label %do.cond15, !dbg !3914

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3914

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3914

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3912
  %tobool17 = icmp ne i32 %5, 0, !dbg !3912
  %lnot18 = xor i1 %tobool17, true, !dbg !3912
  %lnot20 = xor i1 %lnot18, true, !dbg !3912
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3912
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3912
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3912
  store i64 %expval23, ptr %tmp, align 8, !dbg !3913
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !3922
  %6 = load i64, ptr %tmp, align 8, !dbg !3912
  %tobool24 = icmp ne i64 %6, 0, !dbg !3922
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !3923

if.then25:                                        ; preds = %if.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !3924
  %seq26 = getelementptr inbounds %struct.trace_seq, ptr %7, i32 0, i32 1, !dbg !3925
  %8 = load i32, ptr %len.addr, align 4, !dbg !3926
  call void @seq_buf_commit(ptr noundef %seq26, i32 noundef %8) #8, !dbg !3927
  br label %if.end27, !dbg !3927

if.end27:                                         ; preds = %if.then25, %if.end
  %9 = load ptr, ptr %ret, align 8, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !3929
  ret ptr %9, !dbg !3930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @trace_seq_buffer_ptr(ptr noundef %s) #3 align 16 !dbg !3931 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3935, metadata !DIExpression()), !dbg !3936
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3937
  %buffer = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 0, !dbg !3938
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %buffer, i64 0, i64 0, !dbg !3937
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3939
  %seq = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, !dbg !3940
  %call = call i32 @seq_buf_used(ptr noundef %seq) #8, !dbg !3941
  %idx.ext = zext i32 %call to i64, !dbg !3942
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !3942
  ret ptr %add.ptr, !dbg !3943
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_buf_commit(ptr noundef %s, i32 noundef %num) #3 align 16 !dbg !3944 {
entry:
  %s.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3948, metadata !DIExpression()), !dbg !3950
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !3949, metadata !DIExpression()), !dbg !3951
  %0 = load i32, ptr %num.addr, align 4, !dbg !3952
  %cmp = icmp slt i32 %0, 0, !dbg !3954
  br i1 %cmp, label %if.then, label %if.else, !dbg !3955

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3956
  call void @seq_buf_set_overflow(ptr noundef %1) #8, !dbg !3958
  br label %if.end15, !dbg !3959

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !3960

do.body:                                          ; preds = %if.else
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3962
  %len = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 2, !dbg !3962
  %3 = load i64, ptr %len, align 8, !dbg !3962
  %4 = load i32, ptr %num.addr, align 4, !dbg !3962
  %conv = sext i32 %4 to i64, !dbg !3962
  %add = add i64 %3, %conv, !dbg !3962
  %5 = load ptr, ptr %s.addr, align 8, !dbg !3962
  %size = getelementptr inbounds %struct.seq_buf, ptr %5, i32 0, i32 1, !dbg !3962
  %6 = load i64, ptr %size, align 8, !dbg !3962
  %cmp1 = icmp ugt i64 %add, %6, !dbg !3962
  %lnot = xor i1 %cmp1, true, !dbg !3962
  %lnot3 = xor i1 %lnot, true, !dbg !3962
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3962
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3962
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !3962
  %tobool = icmp ne i64 %expval, 0, !dbg !3962
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3965

if.then5:                                         ; preds = %do.body
  br label %do.body6, !dbg !3962

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !3966

do.body7:                                         ; preds = %do.body6
  br label %do.end, !dbg !3968

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !3966

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 144, i32 0, i64 12) #7, !dbg !3970, !srcloc !3972
  br label %do.end9, !dbg !3970

do.end9:                                          ; preds = %do.body8
  unreachable, !dbg !3966

do.end10:                                         ; No predecessors!
  br label %if.end, !dbg !3966

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !3965

do.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %num.addr, align 4, !dbg !3973
  %conv12 = sext i32 %7 to i64, !dbg !3973
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3974
  %len13 = getelementptr inbounds %struct.seq_buf, ptr %8, i32 0, i32 2, !dbg !3975
  %9 = load i64, ptr %len13, align 8, !dbg !3976
  %add14 = add i64 %9, %conv12, !dbg !3976
  store i64 %add14, ptr %len13, align 8, !dbg !3976
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.then
  ret void, !dbg !3977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_buf_init(ptr noundef %s, ptr noundef %buf, i32 noundef %size) #3 align 16 !dbg !3978 {
entry:
  %s.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3982, metadata !DIExpression()), !dbg !3985
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3983, metadata !DIExpression()), !dbg !3986
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3984, metadata !DIExpression()), !dbg !3987
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3988
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3989
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 0, !dbg !3990
  store ptr %0, ptr %buffer, align 8, !dbg !3991
  %2 = load i32, ptr %size.addr, align 4, !dbg !3992
  %conv = zext i32 %2 to i64, !dbg !3992
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3993
  %size1 = getelementptr inbounds %struct.seq_buf, ptr %3, i32 0, i32 1, !dbg !3994
  store i64 %conv, ptr %size1, align 8, !dbg !3995
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3996
  call void @seq_buf_clear(ptr noundef %4) #8, !dbg !3997
  ret void, !dbg !3998
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_buf_clear(ptr noundef %s) #3 align 16 !dbg !3999 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4003, metadata !DIExpression()), !dbg !4004
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4005
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !4006
  store i64 0, ptr %len, align 8, !dbg !4007
  %1 = load ptr, ptr %s.addr, align 8, !dbg !4008
  %size = getelementptr inbounds %struct.seq_buf, ptr %1, i32 0, i32 1, !dbg !4010
  %2 = load i64, ptr %size, align 8, !dbg !4010
  %tobool = icmp ne i64 %2, 0, !dbg !4008
  br i1 %tobool, label %if.then, label %if.end, !dbg !4011

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !4012
  %buffer = getelementptr inbounds %struct.seq_buf, ptr %3, i32 0, i32 0, !dbg !4013
  %4 = load ptr, ptr %buffer, align 8, !dbg !4013
  %arrayidx = getelementptr i8, ptr %4, i64 0, !dbg !4012
  store i8 0, ptr %arrayidx, align 1, !dbg !4014
  br label %if.end, !dbg !4012

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4015
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_buf_used(ptr noundef %s) #3 align 16 !dbg !4016 {
entry:
  %s.addr = alloca ptr, align 8
  %__UNIQUE_ID___x249 = alloca i64, align 8
  %__UNIQUE_ID___y250 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4018, metadata !DIExpression()), !dbg !4022
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x249) #7, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x249, metadata !4019, metadata !DIExpression()), !dbg !4023
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4023
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !4023
  %1 = load i64, ptr %len, align 8, !dbg !4023
  store i64 %1, ptr %__UNIQUE_ID___x249, align 8, !dbg !4023
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y250) #7, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y250, metadata !4021, metadata !DIExpression()), !dbg !4023
  %2 = load ptr, ptr %s.addr, align 8, !dbg !4023
  %size = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 1, !dbg !4023
  %3 = load i64, ptr %size, align 8, !dbg !4023
  store i64 %3, ptr %__UNIQUE_ID___y250, align 8, !dbg !4023
  %4 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !4023
  %5 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !4023
  %cmp = icmp ult i64 %4, %5, !dbg !4023
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4023

cond.true:                                        ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !4023
  br label %cond.end, !dbg !4023

cond.false:                                       ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !4023
  br label %cond.end, !dbg !4023

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !4023
  store i64 %cond, ptr %tmp, align 8, !dbg !4023
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y250) #7, !dbg !4024
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x249) #7, !dbg !4024
  %8 = load i64, ptr %tmp, align 8, !dbg !4023
  %conv = trunc i64 %8 to i32, !dbg !4024
  ret i32 %conv, !dbg !4025
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_buf_set_overflow(ptr noundef %s) #3 align 16 !dbg !4026 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4028, metadata !DIExpression()), !dbg !4029
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4030
  %size = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 1, !dbg !4031
  %1 = load i64, ptr %size, align 8, !dbg !4031
  %add = add i64 %1, 1, !dbg !4032
  %2 = load ptr, ptr %s.addr, align 8, !dbg !4033
  %len = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 2, !dbg !4034
  store i64 %add, ptr %len, align 8, !dbg !4035
  ret void, !dbg !4036
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_printf251", scope: !2, file: !3, line: 101, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/trace/.trace_seq.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/trace/trace_seq\22 -D KBUILD_BASENAME=\22trace_seq\22 -D KBUILD_MODNAME=\22trace_seq\22 -D __KBUILD_MODNAME=kmod_trace_seq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/trace/trace_seq.ll kernel/trace/trace_seq.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !52, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/trace/trace_seq.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b20e87561bdc09c38030d67042a8bc4e")
!4 = !{!5, !14, !19, !25, !30, !36, !43}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !15, line: 2052, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!18 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !20, line: 54, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "USRQUOTA", value: 0)
!23 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!24 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !37, line: 15, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!40 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!41 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !{!0, !53, !59, !61, !63, !65, !67, !69, !71, !73, !78, !80, !82, !84, !89, !91}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 40, elements: !57)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !{!58}
!58 = !DISubrange(count: 5)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_bitmask252", scope: !2, file: !3, line: 128, type: !51, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_vprintf253", scope: !2, file: !3, line: 159, type: !51, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_bprintf254", scope: !2, file: !3, line: 194, type: !51, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_puts255", scope: !2, file: !3, line: 222, type: !51, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_putc256", scope: !2, file: !3, line: 248, type: !51, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_putmem257", scope: !2, file: !3, line: 274, type: !51, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_putmem_hex258", scope: !2, file: !3, line: 311, type: !51, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 16, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 2)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_path259", scope: !2, file: !3, line: 349, type: !51, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_to_user260", scope: !2, file: !3, line: 380, type: !51, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_hex_dump261", scope: !2, file: !3, line: 410, type: !51, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 200, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 25)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_trace_seq_acquire262", scope: !2, file: !3, line: 433, type: !51, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !93, line: 144, type: !94, isLocal: true, isDefinition: true)
!93 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 192, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 24)
!97 = !{i32 7, !"Dwarf Version", i32 5}
!98 = !{i32 2, !"Debug Info Version", i32 3}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 8, !"cf-protection-branch", i32 1}
!101 = !{i32 4, !"function_return_thunk_extern", i32 1}
!102 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!103 = !{i32 1, !"Code Model", i32 2}
!104 = !{i32 1, !"override-stack-alignment", i32 8}
!105 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!106 = distinct !DISubprogram(name: "trace_print_seq", scope: !3, file: !3, line: 51, type: !107, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3291)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !110, !3277}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !112, line: 17, size: 960, elements: !113)
!112 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!113 = !{!114, !116, !123, !124, !125, !126, !130, !131, !191, !213, !214, !3276}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !111, file: !112, line: 18, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !111, file: !112, line: 19, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 61, baseType: !119)
!118 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !120, line: 72, baseType: !121)
!120 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !120, line: 16, baseType: !122)
!122 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !111, file: !112, line: 20, baseType: !117, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !111, file: !112, line: 21, baseType: !117, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !111, file: !112, line: 22, baseType: !117, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !111, file: !112, line: 23, baseType: !127, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !118, line: 52, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !120, line: 88, baseType: !129)
!129 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !111, file: !112, line: 24, baseType: !127, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !111, file: !112, line: 25, baseType: !132, size: 256, offset: 448)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !133, line: 66, size: 256, elements: !134)
!133 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!134 = !{!135, !146, !180, !185}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !132, file: !133, line: 67, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !137, line: 13, baseType: !138)
!137 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !118, line: 181, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 179, size: 64, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !139, file: !118, line: 180, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !143, line: 22, baseType: !144)
!143 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !145, line: 30, baseType: !129)
!145 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !132, file: !133, line: 68, baseType: !147, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !148, line: 23, baseType: !149)
!148 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !148, line: 14, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !149, file: !148, line: 15, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !153, line: 44, baseType: !154)
!153 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !153, line: 14, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !153, line: 15, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !153, line: 15, size: 32, elements: !158)
!158 = !{!159, !164, !172}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !157, file: !153, line: 16, baseType: !160, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !118, line: 174, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 172, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !161, file: !118, line: 173, baseType: !109, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !153, line: 24, baseType: !165, size: 16)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !153, line: 24, size: 16, elements: !166)
!166 = !{!167, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !165, file: !153, line: 25, baseType: !168, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !143, line: 17, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !145, line: 21, baseType: !170)
!170 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !165, file: !153, line: 26, baseType: !168, size: 8, offset: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !153, line: 28, baseType: !173, size: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !153, line: 28, size: 32, elements: !174)
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !173, file: !153, line: 29, baseType: !176, size: 16)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !143, line: 19, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !145, line: 24, baseType: !178)
!178 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !173, file: !153, line: 30, baseType: !176, size: 16, offset: 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !132, file: !133, line: 70, baseType: !181, size: 32, offset: 96)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !182, line: 15, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !181, file: !182, line: 20, baseType: !160, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !132, file: !133, line: 72, baseType: !186, size: 128, offset: 128)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !118, line: 190, size: 128, elements: !187)
!187 = !{!188, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !118, line: 191, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !186, file: !118, line: 191, baseType: !189, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !111, file: !112, line: 26, baseType: !192, size: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !112, line: 32, size: 256, elements: !195)
!195 = !{!196, !201, !205, !209}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !194, file: !112, line: 33, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!51, !110, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !194, file: !112, line: 34, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !110, !51}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !112, line: 35, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!51, !110, !51, !200}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !194, file: !112, line: 36, baseType: !210, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!109, !110, !51}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !111, file: !112, line: 27, baseType: !109, size: 32, offset: 768)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !111, file: !112, line: 28, baseType: !215, size: 64, offset: 832)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !218)
!218 = !{!219, !238, !247, !249, !250, !251, !252, !253, !334, !559, !568, !3266, !3267, !3268, !3269, !3270, !3271, !3273, !3274, !3275}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !15, line: 995, baseType: !220, size: 128)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !15, line: 995, size: 128, elements: !221)
!221 = !{!222, !228, !237}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !220, file: !15, line: 996, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !224, line: 60, size: 64, elements: !225)
!224 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !224, line: 61, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !220, file: !15, line: 997, baseType: !229, size: 128, align: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !118, line: 232, size: 128, align: 64, elements: !230)
!230 = !{!231, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !118, line: 233, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !229, file: !118, line: 234, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !232}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !220, file: !15, line: 998, baseType: !7, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !217, file: !15, line: 1005, baseType: !239, size: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !240, line: 29, baseType: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !240, line: 17, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !240, line: 18, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !240, line: 18, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !244, file: !240, line: 19, baseType: !149, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !217, file: !15, line: 1006, baseType: !248, size: 32, offset: 160)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !118, line: 156, baseType: !7)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !217, file: !15, line: 1007, baseType: !136, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !217, file: !15, line: 1008, baseType: !132, size: 256, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !217, file: !15, line: 1009, baseType: !127, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !217, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !217, file: !15, line: 1011, baseType: !254, size: 256, offset: 640)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !255)
!255 = !{!256, !279, !323, !324, !332, !333}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !254, file: !15, line: 949, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !258, line: 34, baseType: !259)
!258 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 25, size: 64, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !259, file: !258, line: 26, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !263, line: 27, baseType: !264)
!263 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !263, line: 13, size: 64, elements: !265)
!265 = !{!266, !278}
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !263, line: 14, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !263, line: 14, size: 32, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !267, file: !263, line: 15, baseType: !160, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !267, file: !263, line: 16, baseType: !271, size: 32)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !263, line: 16, size: 32, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !271, file: !263, line: 18, baseType: !168, size: 8)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !271, file: !263, line: 19, baseType: !275, size: 24, offset: 8)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 24, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 3)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !264, file: !263, line: 26, baseType: !152, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !254, file: !15, line: 950, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !282)
!282 = !{!283, !289, !290, !291, !304, !305, !312, !313}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !281, file: !6, line: 61, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !285, line: 113, baseType: !286)
!285 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !285, line: 111, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !286, file: !285, line: 112, baseType: !160, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !281, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !281, file: !6, line: 63, baseType: !239, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !281, file: !6, line: 65, baseType: !292, size: 256, offset: 128)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !302)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !118, line: 194, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !293, file: !118, line: 195, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !118, line: 198, size: 128, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !118, line: 199, baseType: !296, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !297, file: !118, line: 199, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!302 = !{!303}
!303 = !DISubrange(count: 4)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !281, file: !6, line: 66, baseType: !293, size: 64, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !281, file: !6, line: 68, baseType: !306, size: 192, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !307, line: 41, baseType: !308)
!307 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !307, line: 37, size: 192, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !308, file: !307, line: 38, baseType: !239, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !308, file: !307, line: 39, baseType: !186, size: 128, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !281, file: !6, line: 69, baseType: !229, size: 128, align: 64, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !281, file: !6, line: 70, baseType: !314, offset: 768)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !321)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !315, file: !6, line: 55, baseType: !109, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !315, file: !6, line: 56, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!321 = !{!322}
!322 = !DISubrange(count: -1)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !254, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !254, file: !15, line: 952, baseType: !325, size: 32, offset: 160)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !326, line: 23, baseType: !327)
!326 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 21, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !327, file: !326, line: 22, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !118, line: 37, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !120, line: 49, baseType: !7)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !254, file: !15, line: 952, baseType: !325, size: 32, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !254, file: !15, line: 953, baseType: !109, size: 32, offset: 224)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !217, file: !15, line: 1012, baseType: !335, size: 64, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !338, line: 110, size: 1472, elements: !339)
!338 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!339 = !{!340, !341, !342, !349, !350, !351, !352, !353, !354, !355, !356, !365, !366, !367, !368, !369, !370, !504, !505, !506, !507, !508, !539, !542, !546, !554}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !337, file: !338, line: 111, baseType: !136, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !337, file: !338, line: 112, baseType: !325, size: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !337, file: !338, line: 113, baseType: !343, size: 32, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !326, line: 28, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 26, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !344, file: !326, line: 27, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !118, line: 38, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !120, line: 50, baseType: !7)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !337, file: !338, line: 114, baseType: !325, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !337, file: !338, line: 115, baseType: !343, size: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !337, file: !338, line: 116, baseType: !325, size: 32, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !337, file: !338, line: 117, baseType: !343, size: 32, offset: 224)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !337, file: !338, line: 118, baseType: !325, size: 32, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !337, file: !338, line: 119, baseType: !343, size: 32, offset: 288)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !337, file: !338, line: 120, baseType: !7, size: 32, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !337, file: !338, line: 121, baseType: !357, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !358, line: 24, baseType: !359)
!358 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 24, size: 64, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !359, file: !358, line: 24, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !143, line: 23, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !145, line: 31, baseType: !364)
!364 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !337, file: !338, line: 122, baseType: !357, size: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !337, file: !338, line: 123, baseType: !357, size: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !337, file: !338, line: 124, baseType: !357, size: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !337, file: !338, line: 125, baseType: !357, size: 64, offset: 640)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !337, file: !338, line: 127, baseType: !170, size: 8, offset: 704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !337, file: !338, line: 129, baseType: !371, size: 64, offset: 768)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !373, line: 195, size: 1728, elements: !374)
!373 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!374 = !{!375, !376, !381, !393, !402, !405, !406, !413, !414, !415, !416, !421, !422, !423, !425, !426, !468, !489}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !372, file: !373, line: 196, baseType: !284, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !372, file: !373, line: 197, baseType: !377, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !373, line: 28, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !118, line: 104, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !143, line: 20, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !145, line: 26, baseType: !109)
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !373, line: 198, baseType: !382, size: 192, offset: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !373, line: 198, size: 192, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !382, file: !373, line: 199, baseType: !186, size: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !382, file: !373, line: 200, baseType: !386, size: 192, align: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !387, line: 5, size: 192, align: 64, elements: !388)
!387 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!388 = !{!389, !390, !392}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !386, file: !387, line: 6, baseType: !122, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !386, file: !387, line: 7, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !386, file: !387, line: 8, baseType: !391, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !372, file: !373, line: 205, baseType: !394, size: 320, offset: 256)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !395, line: 48, size: 320, elements: !396)
!395 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!396 = !{!397, !398, !399, !400, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !394, file: !395, line: 49, baseType: !136, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !394, file: !395, line: 55, baseType: !136, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !394, file: !395, line: 57, baseType: !181, size: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !394, file: !395, line: 59, baseType: !147, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !394, file: !395, line: 60, baseType: !186, size: 128, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !372, file: !373, line: 206, baseType: !403, size: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !373, line: 206, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !372, file: !373, line: 207, baseType: !51, size: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !373, line: 208, baseType: !407, size: 64, offset: 704)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !373, line: 208, size: 64, elements: !408)
!408 = !{!409, !412}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !407, file: !373, line: 209, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !411, line: 8, baseType: !144)
!411 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!412 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !407, file: !373, line: 210, baseType: !410, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !372, file: !373, line: 212, baseType: !410, size: 64, offset: 768)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !372, file: !373, line: 213, baseType: !325, size: 32, offset: 832)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !372, file: !373, line: 214, baseType: !343, size: 32, offset: 864)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !372, file: !373, line: 215, baseType: !417, size: 32, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !373, line: 31, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !118, line: 110, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !143, line: 21, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !145, line: 27, baseType: !7)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !372, file: !373, line: 216, baseType: !178, size: 16, offset: 928)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !372, file: !373, line: 217, baseType: !178, size: 16, offset: 944)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !372, file: !373, line: 221, baseType: !424, size: 16, offset: 960)
!424 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !373, line: 228, baseType: !122, size: 64, offset: 1024)
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !373, line: 245, baseType: !427, size: 320, offset: 1088)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !373, line: 245, size: 320, elements: !428)
!428 = !{!429, !460}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !427, file: !373, line: 246, baseType: !430, size: 320)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !373, line: 114, size: 320, elements: !431)
!431 = !{!432, !433, !445, !448, !457}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !430, file: !373, line: 116, baseType: !122, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !373, line: 117, baseType: !434, size: 64, offset: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !373, line: 117, size: 64, elements: !435)
!435 = !{!436, !444}
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !373, line: 118, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !373, line: 118, size: 64, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !437, file: !373, line: 120, baseType: !176, size: 16)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !437, file: !373, line: 121, baseType: !441, size: 48, offset: 16)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 48, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 6)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !434, file: !373, line: 127, baseType: !122, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !373, line: 129, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !373, line: 102, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !430, file: !373, line: 130, baseType: !449, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !373, line: 108, size: 192, elements: !451)
!451 = !{!452, !453, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !450, file: !373, line: 109, baseType: !229, size: 128, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !450, file: !373, line: 110, baseType: !284, size: 32, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !450, file: !373, line: 111, baseType: !455, size: 8, offset: 160)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !118, line: 35, baseType: !456)
!456 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !430, file: !373, line: 131, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !373, line: 247, baseType: !461, size: 320)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !373, line: 247, size: 320, elements: !462)
!462 = !{!463, !464, !465, !466, !467}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !461, file: !373, line: 248, baseType: !122, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !461, file: !373, line: 249, baseType: !122, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !373, line: 250, baseType: !446, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !461, file: !373, line: 251, baseType: !449, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !461, file: !373, line: 252, baseType: !115, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !373, line: 260, baseType: !469, size: 256, offset: 1408)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !373, line: 260, size: 256, elements: !470)
!470 = !{!471, !477}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !469, file: !373, line: 261, baseType: !472, size: 256)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !373, line: 134, size: 256, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !472, file: !373, line: 135, baseType: !51, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !472, file: !373, line: 136, baseType: !476, size: 256)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !302)
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !373, line: 262, baseType: !478, size: 256)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !373, line: 262, size: 256, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !478, file: !373, line: 264, baseType: !186, size: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !478, file: !373, line: 265, baseType: !482, size: 128, offset: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !483, line: 22, size: 128, elements: !484)
!483 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!484 = !{!485, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !482, file: !483, line: 23, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !483, line: 23, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !482, file: !483, line: 24, baseType: !122, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !372, file: !373, line: 280, baseType: !490, size: 64, offset: 1664)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !373, line: 176, size: 192, elements: !492)
!492 = !{!493, !502, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !491, file: !373, line: 177, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !373, line: 171, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!109, !371, !498, !500, !371}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !491, file: !373, line: 178, baseType: !371, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !491, file: !373, line: 179, baseType: !446, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !337, file: !338, line: 130, baseType: !371, size: 64, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !337, file: !338, line: 131, baseType: !371, size: 64, offset: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !337, file: !338, line: 132, baseType: !371, size: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !337, file: !338, line: 135, baseType: !51, size: 64, offset: 1024)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !337, file: !338, line: 137, baseType: !509, size: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !511, line: 14, size: 1088, elements: !512)
!511 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!512 = !{!513, !514, !523, !524, !525, !526, !527, !528}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !510, file: !511, line: 15, baseType: !284, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !510, file: !511, line: 17, baseType: !515, size: 320, offset: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !516, line: 22, size: 320, elements: !517)
!516 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !515, file: !516, line: 23, baseType: !147, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !515, file: !516, line: 24, baseType: !142, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !515, file: !516, line: 26, baseType: !186, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !515, file: !516, line: 28, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !510, file: !511, line: 19, baseType: !122, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !510, file: !511, line: 20, baseType: !136, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !510, file: !511, line: 23, baseType: !297, size: 128, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !510, file: !511, line: 24, baseType: !325, size: 32, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !510, file: !511, line: 29, baseType: !136, size: 64, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !510, file: !511, line: 36, baseType: !529, size: 320, offset: 768)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !530, line: 15, size: 320, elements: !531)
!530 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!531 = !{!532, !533, !534, !535, !536, !537, !538}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !529, file: !530, line: 16, baseType: !147, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !529, file: !530, line: 18, baseType: !109, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !529, file: !530, line: 19, baseType: !109, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !529, file: !530, line: 20, baseType: !109, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !529, file: !530, line: 21, baseType: !109, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !529, file: !530, line: 22, baseType: !122, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !530, line: 23, baseType: !122, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !337, file: !338, line: 138, baseType: !540, size: 64, offset: 1152)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !326, line: 18, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !337, file: !338, line: 139, baseType: !543, size: 64, offset: 1216)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !545, line: 16, flags: DIFlagFwdDecl)
!545 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!546 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !337, file: !338, line: 140, baseType: !547, size: 64, offset: 1280)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !338, line: 25, size: 64, elements: !549)
!549 = !{!550, !551, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !548, file: !338, line: 26, baseType: !160, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !548, file: !338, line: 27, baseType: !109, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !548, file: !338, line: 28, baseType: !553, offset: 64)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, elements: !321)
!554 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !338, line: 142, baseType: !555, size: 128, offset: 1344)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !338, line: 142, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !555, file: !338, line: 143, baseType: !109, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !555, file: !338, line: 144, baseType: !229, size: 128, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !217, file: !15, line: 1013, baseType: !560, size: 256, offset: 960)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !560, file: !15, line: 971, baseType: !122, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !560, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !560, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !560, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !560, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !560, file: !15, line: 976, baseType: !127, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !217, file: !15, line: 1014, baseType: !569, size: 128, offset: 1216)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !570, line: 8, size: 128, elements: !571)
!570 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!571 = !{!572, !3265}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !569, file: !570, line: 9, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !575, line: 70, size: 256, elements: !576)
!575 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!576 = !{!577, !3262, !3263, !3264}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !574, file: !575, line: 71, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !580, line: 82, size: 1536, elements: !581)
!580 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!581 = !{!582, !583, !593, !601, !602, !617, !3229, !3231, !3244, !3245, !3246, !3247, !3248, !3254, !3255, !3256}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !579, file: !580, line: 84, baseType: !7, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !579, file: !580, line: 85, baseType: !584, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !585, line: 275, baseType: !586)
!585 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !585, line: 275, size: 32, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !586, file: !585, line: 275, baseType: !589, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !585, line: 69, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !585, line: 64, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !590, file: !585, line: 65, baseType: !7, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !579, file: !580, line: 86, baseType: !594, size: 128, offset: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !595, line: 38, size: 128, elements: !596)
!595 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!596 = !{!597, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !595, line: 39, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !594, file: !595, line: 39, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !579, file: !580, line: 87, baseType: !578, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !579, file: !580, line: 88, baseType: !603, size: 128, offset: 256)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !580, line: 49, size: 128, elements: !604)
!604 = !{!605, !614}
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !580, line: 50, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !603, file: !580, line: 50, size: 64, elements: !607)
!607 = !{!608, !613}
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !580, line: 51, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !606, file: !580, line: 51, size: 64, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !609, file: !580, line: 52, baseType: !419, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !609, file: !580, line: 52, baseType: !419, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !606, file: !580, line: 54, baseType: !362, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !603, file: !580, line: 56, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !579, file: !580, line: 89, baseType: !618, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !620)
!620 = !{!621, !623, !624, !625, !626, !627, !628, !631, !632, !828, !2988, !2989, !2990, !2991, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3211, !3214, !3215, !3216, !3225, !3226, !3227, !3228}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !619, file: !15, line: 642, baseType: !622, size: 16)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !118, line: 24, baseType: !178)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !619, file: !15, line: 643, baseType: !178, size: 16, offset: 16)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !619, file: !15, line: 644, baseType: !325, size: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !619, file: !15, line: 645, baseType: !186, size: 128, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !619, file: !15, line: 646, baseType: !343, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !619, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !619, file: !15, line: 650, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !619, file: !15, line: 651, baseType: !629, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !619, file: !15, line: 654, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !636)
!636 = !{!637, !641, !654, !660, !664, !668, !672, !676, !680, !684, !688, !689, !695, !699, !738, !769, !776, !782, !786, !790, !794, !798, !802, !808, !812}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !635, file: !15, line: 1967, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!578, !618, !578, !7}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !635, file: !15, line: 1968, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!458, !578, !618, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !647, line: 10, size: 128, elements: !648)
!647 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!648 = !{!649, !653}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !646, file: !647, line: 11, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !51}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !646, file: !647, line: 12, baseType: !51, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !635, file: !15, line: 1969, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!109, !658, !618, !109}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !358, line: 42, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !635, file: !15, line: 1970, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!629, !618, !109, !455}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !635, file: !15, line: 1972, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!109, !578, !115, !109}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !635, file: !15, line: 1974, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!109, !658, !618, !578, !622, !455}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !635, file: !15, line: 1976, baseType: !673, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!109, !578, !618, !578}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !635, file: !15, line: 1977, baseType: !677, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!109, !618, !578}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !635, file: !15, line: 1978, baseType: !681, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!109, !658, !618, !578, !458}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !635, file: !15, line: 1980, baseType: !685, size: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!109, !658, !618, !578, !622}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !635, file: !15, line: 1982, baseType: !677, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !635, file: !15, line: 1983, baseType: !690, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!109, !658, !618, !578, !622, !693}
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !118, line: 21, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !118, line: 18, baseType: !419)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !635, file: !15, line: 1985, baseType: !696, size: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!109, !658, !618, !578, !618, !578, !7}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !635, file: !15, line: 1987, baseType: !700, size: 64, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!109, !658, !578, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !705)
!705 = !{!706, !707, !708, !718, !727, !728, !734, !735, !736}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !704, file: !15, line: 227, baseType: !7, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !704, file: !15, line: 228, baseType: !622, size: 16, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !15, line: 241, baseType: !709, size: 32, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !15, line: 241, size: 32, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !709, file: !15, line: 242, baseType: !325, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !709, file: !15, line: 243, baseType: !713, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !714, line: 16, baseType: !715)
!714 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !714, line: 14, size: 32, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !715, file: !714, line: 15, baseType: !330, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !15, line: 245, baseType: !719, size: 32, offset: 96)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !15, line: 245, size: 32, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !719, file: !15, line: 246, baseType: !343, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !719, file: !15, line: 247, baseType: !723, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !714, line: 20, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !714, line: 18, size: 32, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !724, file: !714, line: 19, baseType: !347, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !704, file: !15, line: 249, baseType: !127, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !704, file: !15, line: 250, baseType: !729, size: 128, offset: 192)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !411, line: 13, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !729, file: !411, line: 14, baseType: !410, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !729, file: !411, line: 15, baseType: !733, size: 64, offset: 64)
!733 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !704, file: !15, line: 251, baseType: !729, size: 128, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !704, file: !15, line: 252, baseType: !729, size: 128, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !704, file: !15, line: 259, baseType: !737, size: 64, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !635, file: !15, line: 1988, baseType: !739, size: 64, offset: 896)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!109, !658, !742, !744, !419, !7}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !746, line: 22, size: 1280, elements: !747)
!746 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !745, file: !746, line: 23, baseType: !419, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !745, file: !746, line: 24, baseType: !622, size: 16, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !745, file: !746, line: 25, baseType: !7, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !745, file: !746, line: 26, baseType: !418, size: 32, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !745, file: !746, line: 27, baseType: !362, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !745, file: !746, line: 28, baseType: !362, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !745, file: !746, line: 41, baseType: !362, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !745, file: !746, line: 42, baseType: !693, size: 32, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !745, file: !746, line: 43, baseType: !693, size: 32, offset: 352)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !745, file: !746, line: 44, baseType: !325, size: 32, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !745, file: !746, line: 45, baseType: !343, size: 32, offset: 416)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !745, file: !746, line: 46, baseType: !127, size: 64, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !745, file: !746, line: 47, baseType: !729, size: 128, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !745, file: !746, line: 48, baseType: !729, size: 128, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !745, file: !746, line: 49, baseType: !729, size: 128, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !745, file: !746, line: 50, baseType: !729, size: 128, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !745, file: !746, line: 51, baseType: !362, size: 64, offset: 1024)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !745, file: !746, line: 52, baseType: !362, size: 64, offset: 1088)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !745, file: !746, line: 53, baseType: !419, size: 32, offset: 1152)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !745, file: !746, line: 54, baseType: !419, size: 32, offset: 1184)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !745, file: !746, line: 55, baseType: !362, size: 64, offset: 1216)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !635, file: !15, line: 1990, baseType: !770, size: 64, offset: 960)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !578, !115, !117}
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !118, line: 66, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !120, line: 73, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !120, line: 15, baseType: !733)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !635, file: !15, line: 1991, baseType: !777, size: 64, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!109, !618, !780, !362, !362}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !635, file: !15, line: 1993, baseType: !783, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!109, !618, !109}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !635, file: !15, line: 1994, baseType: !787, size: 64, offset: 1152)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!109, !618, !578, !737, !7, !622}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !635, file: !15, line: 1997, baseType: !791, size: 64, offset: 1216)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!109, !658, !618, !737, !622}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !635, file: !15, line: 1999, baseType: !795, size: 64, offset: 1280)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!629, !658, !578, !109}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !635, file: !15, line: 2001, baseType: !799, size: 64, offset: 1344)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!109, !658, !578, !629, !109}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !635, file: !15, line: 2003, baseType: !803, size: 64, offset: 1408)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!109, !658, !578, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !635, file: !15, line: 2005, baseType: !809, size: 64, offset: 1472)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!109, !578, !806}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !635, file: !15, line: 2006, baseType: !813, size: 64, offset: 1536)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!816, !618}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !818)
!818 = !{!819, !827}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !817, file: !15, line: 3193, baseType: !820, size: 128)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !821, line: 296, size: 128, elements: !822)
!821 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!822 = !{!823, !824, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !820, file: !821, line: 297, baseType: !239, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !820, file: !821, line: 299, baseType: !825, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !118, line: 154, baseType: !7)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !820, file: !821, line: 300, baseType: !51, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !817, file: !15, line: 3194, baseType: !419, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !619, file: !15, line: 655, baseType: !829, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !831)
!831 = !{!832, !833, !834, !835, !836, !837, !879, !1015, !1055, !1138, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1155, !1159, !1160, !1163, !1166, !1169, !1172, !1173, !1174, !1215, !2861, !2862, !2863, !2864, !2865, !2866, !2869, !2871, !2878, !2879, !2880, !2881, !2940, !2955, !2956, !2957, !2958, !2959, !2962, !2963, !2964, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !830, file: !15, line: 1191, baseType: !186, size: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !830, file: !15, line: 1192, baseType: !693, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !830, file: !15, line: 1193, baseType: !170, size: 8, offset: 160)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !830, file: !15, line: 1194, baseType: !122, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !830, file: !15, line: 1195, baseType: !127, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !830, file: !15, line: 1196, baseType: !838, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !840)
!840 = !{!841, !842, !843, !849, !853, !857, !861, !865, !866, !867, !871, !872, !873, !875, !876, !877, !878}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !839, file: !15, line: 2367, baseType: !458, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !839, file: !15, line: 2368, baseType: !109, size: 32, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !839, file: !15, line: 2376, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!109, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !575, line: 21, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !839, file: !15, line: 2377, baseType: !850, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !839, file: !15, line: 2378, baseType: !854, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!578, !838, !109, !458, !51}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !839, file: !15, line: 2380, baseType: !858, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !829}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !839, file: !15, line: 2381, baseType: !862, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !864, line: 103, flags: DIFlagFwdDecl)
!864 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !839, file: !15, line: 2382, baseType: !838, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !839, file: !15, line: 2383, baseType: !293, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !839, file: !15, line: 2385, baseType: !868, offset: 576)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !869, line: 206, elements: !870)
!869 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!870 = !{}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !839, file: !15, line: 2386, baseType: !868, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !839, file: !15, line: 2387, baseType: !868, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !839, file: !15, line: 2388, baseType: !874, offset: 576)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, elements: !276)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !839, file: !15, line: 2390, baseType: !868, offset: 576)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !839, file: !15, line: 2391, baseType: !868, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !839, file: !15, line: 2392, baseType: !868, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !839, file: !15, line: 2393, baseType: !868, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !830, file: !15, line: 1197, baseType: !880, size: 64, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !883)
!883 = !{!884, !888, !892, !893, !897, !903, !907, !908, !909, !913, !917, !921, !922, !923, !929, !934, !935, !939, !940, !941, !942, !946, !950, !997, !1013, !1014}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !882, file: !15, line: 2058, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!618, !829}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !882, file: !15, line: 2059, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !618}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !882, file: !15, line: 2060, baseType: !889, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !882, file: !15, line: 2062, baseType: !894, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !618, !109}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !882, file: !15, line: 2063, baseType: !898, size: 64, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!109, !618, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !882, file: !15, line: 2064, baseType: !904, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!109, !618}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !882, file: !15, line: 2065, baseType: !889, size: 64, offset: 384)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !882, file: !15, line: 2066, baseType: !858, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !882, file: !15, line: 2067, baseType: !910, size: 64, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!109, !829, !109}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !882, file: !15, line: 2068, baseType: !914, size: 64, offset: 576)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!109, !829, !14}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !882, file: !15, line: 2069, baseType: !918, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!109, !829}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !882, file: !15, line: 2070, baseType: !914, size: 64, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !882, file: !15, line: 2071, baseType: !918, size: 64, offset: 768)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !882, file: !15, line: 2072, baseType: !924, size: 64, offset: 832)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!109, !578, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !882, file: !15, line: 2073, baseType: !930, size: 64, offset: 896)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!109, !829, !933, !115}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !882, file: !15, line: 2074, baseType: !858, size: 64, offset: 960)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !882, file: !15, line: 2076, baseType: !936, size: 64, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!109, !110, !578}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !882, file: !15, line: 2077, baseType: !936, size: 64, offset: 1088)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !882, file: !15, line: 2078, baseType: !936, size: 64, offset: 1152)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !882, file: !15, line: 2079, baseType: !936, size: 64, offset: 1216)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !882, file: !15, line: 2081, baseType: !943, size: 64, offset: 1280)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!773, !829, !109, !115, !117, !127}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !882, file: !15, line: 2082, baseType: !947, size: 64, offset: 1344)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!773, !829, !109, !458, !117, !127}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !882, file: !15, line: 2083, baseType: !951, size: 64, offset: 1408)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!954, !618}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !957)
!957 = !{!958, !959, !960, !961, !962, !963, !964, !965, !966, !982, !983, !984}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !956, file: !20, line: 297, baseType: !297, size: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !956, file: !20, line: 298, baseType: !186, size: 128, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !956, file: !20, line: 299, baseType: !186, size: 128, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !956, file: !20, line: 300, baseType: !186, size: 128, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !956, file: !20, line: 301, baseType: !132, size: 256, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !956, file: !20, line: 302, baseType: !239, size: 32, offset: 768)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !956, file: !20, line: 303, baseType: !160, size: 32, offset: 800)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !956, file: !20, line: 304, baseType: !829, size: 64, offset: 832)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !956, file: !20, line: 305, baseType: !967, size: 64, offset: 896)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !968)
!968 = !{!969, !981}
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !20, line: 69, baseType: !970, size: 32)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !20, line: 69, size: 32, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !970, file: !20, line: 70, baseType: !325, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !970, file: !20, line: 71, baseType: !343, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !970, file: !20, line: 72, baseType: !975, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !976, line: 24, baseType: !977)
!976 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !976, line: 22, size: 32, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !977, file: !976, line: 23, baseType: !980, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !976, line: 20, baseType: !331)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !967, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !956, file: !20, line: 306, baseType: !127, size: 64, offset: 960)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !956, file: !20, line: 307, baseType: !122, size: 64, offset: 1024)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !956, file: !20, line: 308, baseType: !985, size: 576, offset: 1088)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !986)
!986 = !{!987, !989, !990, !991, !992, !993, !994, !995, !996}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !985, file: !20, line: 206, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !129)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !985, file: !20, line: 207, baseType: !988, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !985, file: !20, line: 208, baseType: !988, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !985, file: !20, line: 209, baseType: !988, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !985, file: !20, line: 210, baseType: !988, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !985, file: !20, line: 211, baseType: !988, size: 64, offset: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !985, file: !20, line: 212, baseType: !988, size: 64, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !985, file: !20, line: 213, baseType: !410, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !985, file: !20, line: 214, baseType: !410, size: 64, offset: 512)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !882, file: !15, line: 2085, baseType: !998, size: 64, offset: 1472)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!733, !829, !1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1003, line: 15, size: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1004 = !{!1005, !1006, !1007, !1008, !1009}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1002, file: !1003, line: 16, baseType: !825, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1002, file: !1003, line: 19, baseType: !109, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1002, file: !1003, line: 26, baseType: !122, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1002, file: !1003, line: 33, baseType: !122, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1002, file: !1003, line: 36, baseType: !1010, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1012, line: 33, flags: DIFlagFwdDecl)
!1012 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !882, file: !15, line: 2087, baseType: !998, size: 64, offset: 1536)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !882, file: !15, line: 2089, baseType: !858, size: 64, offset: 1600)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !830, file: !15, line: 1198, baseType: !1016, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !1019)
!1019 = !{!1020, !1024, !1028, !1032, !1033, !1034, !1035, !1036, !1041, !1046, !1050}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1018, file: !20, line: 325, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!109, !955}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1018, file: !20, line: 326, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!955, !829, !109}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1018, file: !20, line: 327, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !955}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1018, file: !20, line: 328, baseType: !1021, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1018, file: !20, line: 329, baseType: !1021, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1018, file: !20, line: 330, baseType: !1021, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1018, file: !20, line: 331, baseType: !910, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1018, file: !20, line: 334, baseType: !1037, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!1040, !618}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1018, file: !20, line: 335, baseType: !1042, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!109, !618, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1018, file: !20, line: 337, baseType: !1047, size: 64, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!109, !618, !1040}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1018, file: !20, line: 339, baseType: !1051, size: 64, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!109, !829, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !830, file: !15, line: 1199, baseType: !1056, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !1059)
!1059 = !{!1060, !1064, !1065, !1069, !1070, !1071, !1086, !1109, !1113, !1114, !1137}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1058, file: !20, line: 431, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!109, !829, !109, !109, !742}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1058, file: !20, line: 432, baseType: !910, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1058, file: !20, line: 433, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!109, !829, !7}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1058, file: !20, line: 434, baseType: !1066, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1058, file: !20, line: 435, baseType: !910, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1058, file: !20, line: 436, baseType: !1072, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!109, !829, !109, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1076, file: !20, line: 418, baseType: !109, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1076, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1076, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1076, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1076, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1076, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1076, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1076, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1058, file: !20, line: 437, baseType: !1087, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!109, !829, !967, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1091, file: !20, line: 346, baseType: !109, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1091, file: !20, line: 347, baseType: !362, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1091, file: !20, line: 348, baseType: !362, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1091, file: !20, line: 349, baseType: !362, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1091, file: !20, line: 350, baseType: !362, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1091, file: !20, line: 351, baseType: !362, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1091, file: !20, line: 352, baseType: !362, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1091, file: !20, line: 353, baseType: !142, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1091, file: !20, line: 355, baseType: !142, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1091, file: !20, line: 356, baseType: !109, size: 32, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1091, file: !20, line: 357, baseType: !109, size: 32, offset: 608)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1091, file: !20, line: 358, baseType: !362, size: 64, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1091, file: !20, line: 359, baseType: !362, size: 64, offset: 704)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1091, file: !20, line: 360, baseType: !362, size: 64, offset: 768)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1091, file: !20, line: 361, baseType: !142, size: 64, offset: 832)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1091, file: !20, line: 362, baseType: !109, size: 32, offset: 896)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1058, file: !20, line: 438, baseType: !1110, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!109, !829, !1054, !1090}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1058, file: !20, line: 440, baseType: !1087, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1058, file: !20, line: 441, baseType: !1115, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!109, !829, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1119, file: !20, line: 412, baseType: !7, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1119, file: !20, line: 413, baseType: !1123, size: 1344, offset: 64)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1124, size: 1344, elements: !276)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1136}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1124, file: !20, line: 398, baseType: !7, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1124, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1124, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1124, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1124, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1124, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1124, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1124, file: !20, line: 406, baseType: !364, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1124, file: !20, line: 407, baseType: !1135, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !118, line: 132, baseType: !362)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1124, file: !20, line: 408, baseType: !1135, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1058, file: !20, line: 442, baseType: !1066, size: 64, offset: 640)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !830, file: !15, line: 1200, baseType: !1139, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !830, file: !15, line: 1201, baseType: !122, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !830, file: !15, line: 1202, baseType: !122, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !830, file: !15, line: 1203, baseType: !122, size: 64, offset: 768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !830, file: !15, line: 1204, baseType: !578, size: 64, offset: 832)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !830, file: !15, line: 1205, baseType: !394, size: 320, offset: 896)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !830, file: !15, line: 1206, baseType: !109, size: 32, offset: 1216)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !830, file: !15, line: 1207, baseType: !160, size: 32, offset: 1248)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !830, file: !15, line: 1209, baseType: !51, size: 64, offset: 1280)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !830, file: !15, line: 1211, baseType: !1151, size: 64, offset: 1344)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1154)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !830, file: !15, line: 1223, baseType: !1156, size: 64, offset: 1408)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !595, line: 34, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1156, file: !595, line: 35, baseType: !598, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !830, file: !15, line: 1224, baseType: !186, size: 128, offset: 1472)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !830, file: !15, line: 1225, baseType: !1161, size: 64, offset: 1600)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !830, file: !15, line: 1226, baseType: !1164, size: 64, offset: 1664)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !830, file: !15, line: 1227, baseType: !1167, size: 64, offset: 1728)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !830, file: !15, line: 1228, baseType: !1170, size: 64, offset: 1792)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !830, file: !15, line: 1229, baseType: !297, size: 128, offset: 1856)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !830, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !830, file: !15, line: 1231, baseType: !1175, size: 2496, offset: 2048)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1181, !1213}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1175, file: !20, line: 522, baseType: !7, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1175, file: !20, line: 523, baseType: !394, size: 320, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1175, file: !20, line: 524, baseType: !1180, size: 192, offset: 384)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 192, elements: !276)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1175, file: !20, line: 525, baseType: !1182, size: 1728, offset: 576)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 1728, elements: !276)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1184)
!1184 = !{!1185, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1183, file: !20, line: 223, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1188)
!1188 = !{!1189, !1190, !1203, !1204}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1187, file: !20, line: 446, baseType: !109, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1187, file: !20, line: 447, baseType: !1191, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1193, file: !20, line: 313, baseType: !910, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1193, file: !20, line: 314, baseType: !910, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1193, file: !20, line: 315, baseType: !910, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1193, file: !20, line: 316, baseType: !910, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1193, file: !20, line: 317, baseType: !1021, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1193, file: !20, line: 318, baseType: !1021, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1193, file: !20, line: 319, baseType: !1021, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1193, file: !20, line: 320, baseType: !1051, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1187, file: !20, line: 448, baseType: !862, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1187, file: !20, line: 449, baseType: !1186, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1183, file: !20, line: 224, baseType: !109, size: 32, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1183, file: !20, line: 226, baseType: !186, size: 128, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1183, file: !20, line: 227, baseType: !122, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1183, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1183, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1183, file: !20, line: 230, baseType: !988, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1183, file: !20, line: 231, baseType: !988, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1183, file: !20, line: 232, baseType: !51, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1175, file: !20, line: 526, baseType: !1214, size: 192, offset: 2304)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 192, elements: !276)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !830, file: !15, line: 1233, baseType: !1216, size: 2368, offset: 4544)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1216, file: !15, line: 1185, baseType: !178, size: 16)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1216, file: !15, line: 1186, baseType: !178, size: 16, offset: 16)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1216, file: !15, line: 1187, baseType: !1221, size: 2304, offset: 64)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 2304, elements: !276)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1223, line: 12, size: 768, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1224 = !{!1225, !1233, !1235, !2859, !2860}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1222, file: !1223, line: 13, baseType: !1226, size: 384)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1227, line: 17, size: 384, elements: !1228)
!1227 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1228 = !{!1229, !1230, !1231, !1232}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1226, file: !1227, line: 18, baseType: !109, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1226, file: !1227, line: 19, baseType: !109, size: 32, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1226, file: !1227, line: 20, baseType: !306, size: 192, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1226, file: !1227, line: 22, baseType: !229, size: 128, align: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1222, file: !1223, line: 14, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1222, file: !1223, line: 15, baseType: !1236, size: 64, offset: 448)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1237, line: 16, size: 64, elements: !1238)
!1237 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1236, file: !1237, line: 17, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1242, line: 746, size: 58368, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1243 = !{!1244, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1324, !1335, !1430, !1434, !1437, !1468, !1469, !1470, !1471, !1482, !1484, !1485, !1486, !1487, !1488, !1489, !1500, !1501, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1518, !1519, !1526, !1527, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1751, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1766, !1767, !1768, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1810, !1816, !1817, !1818, !1819, !1820, !1824, !1827, !1834, !1839, !1842, !1845, !1848, !1851, !1989, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2031, !2032, !2033, !2042, !2050, !2051, !2052, !2053, !2054, !2059, !2060, !2061, !2064, !2065, !2068, !2071, !2074, !2082, !2085, !2086, !2172, !2173, !2174, !2175, !2176, !2182, !2183, !2184, !2185, !2188, !2189, !2192, !2195, !2196, !2199, !2200, !2201, !2204, !2205, !2206, !2209, !2210, !2211, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2243, !2246, !2515, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2527, !2599, !2601, !2602, !2603, !2604, !2605, !2617, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2634, !2635, !2636}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1241, file: !1242, line: 752, baseType: !1245, size: 192)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1246, line: 56, size: 192, elements: !1247)
!1246 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1247 = !{!1248, !1249, !1250, !1251}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !1246, line: 57, baseType: !122, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1245, file: !1246, line: 58, baseType: !122, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1245, file: !1246, line: 59, baseType: !419, size: 32, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1245, file: !1246, line: 61, baseType: !419, size: 32, offset: 160)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1241, file: !1242, line: 754, baseType: !7, size: 32, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1241, file: !1242, line: 767, baseType: !51, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1241, file: !1242, line: 768, baseType: !284, size: 32, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !1242, line: 770, baseType: !7, size: 32, offset: 352)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1241, file: !1242, line: 771, baseType: !7, size: 32, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1241, file: !1242, line: 774, baseType: !109, size: 32, offset: 416)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1241, file: !1242, line: 775, baseType: !1259, size: 128, offset: 448)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1260, line: 58, size: 128, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1261 = !{!1262, !1263, !1268, !1269}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1259, file: !1260, line: 59, baseType: !223, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !1260, line: 60, baseType: !1264, size: 32, offset: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !1260, line: 60, size: 32, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1264, file: !1260, line: 61, baseType: !7, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1264, file: !1260, line: 62, baseType: !160, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1259, file: !1260, line: 65, baseType: !176, size: 16, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1259, file: !1260, line: 65, baseType: !176, size: 16, offset: 112)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1241, file: !1242, line: 776, baseType: !7, size: 32, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1241, file: !1242, line: 777, baseType: !122, size: 64, offset: 640)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1241, file: !1242, line: 778, baseType: !1240, size: 64, offset: 704)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1241, file: !1242, line: 787, baseType: !109, size: 32, offset: 768)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1241, file: !1242, line: 788, baseType: !109, size: 32, offset: 800)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1241, file: !1242, line: 790, baseType: !109, size: 32, offset: 832)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1241, file: !1242, line: 792, baseType: !109, size: 32, offset: 864)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1241, file: !1242, line: 793, baseType: !109, size: 32, offset: 896)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1241, file: !1242, line: 794, baseType: !109, size: 32, offset: 928)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1241, file: !1242, line: 795, baseType: !7, size: 32, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1241, file: !1242, line: 797, baseType: !1281, size: 2048, offset: 1024)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1242, line: 551, size: 2048, elements: !1282)
!1282 = !{!1283, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1303, !1306, !1307, !1308}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1281, file: !1242, line: 553, baseType: !1284, size: 128)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1242, line: 411, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1284, file: !1242, line: 412, baseType: !122, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1284, file: !1242, line: 413, baseType: !419, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1281, file: !1242, line: 554, baseType: !386, size: 192, align: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1281, file: !1242, line: 555, baseType: !362, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1281, file: !1242, line: 556, baseType: !362, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1281, file: !1242, line: 558, baseType: !186, size: 128, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1281, file: !1242, line: 559, baseType: !7, size: 32, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1281, file: !1242, line: 561, baseType: !362, size: 64, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1281, file: !1242, line: 562, baseType: !362, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1281, file: !1242, line: 563, baseType: !362, size: 64, offset: 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1281, file: !1242, line: 564, baseType: !362, size: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1281, file: !1242, line: 565, baseType: !142, size: 64, offset: 896)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1281, file: !1242, line: 566, baseType: !362, size: 64, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1281, file: !1242, line: 568, baseType: !362, size: 64, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1281, file: !1242, line: 571, baseType: !109, size: 32, offset: 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1281, file: !1242, line: 572, baseType: !1302, size: 64, offset: 1152)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1281, file: !1242, line: 574, baseType: !1304, size: 64, offset: 1216)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1242, line: 49, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1281, file: !1242, line: 576, baseType: !1304, size: 64, offset: 1280)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1281, file: !1242, line: 578, baseType: !122, size: 64, offset: 1344)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1281, file: !1242, line: 588, baseType: !1309, size: 512, align: 512, offset: 1536)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1242, line: 497, size: 512, align: 512, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1309, file: !1242, line: 498, baseType: !362, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1309, file: !1242, line: 499, baseType: !362, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1309, file: !1242, line: 500, baseType: !362, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1309, file: !1242, line: 501, baseType: !419, size: 32, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1309, file: !1242, line: 502, baseType: !419, size: 32, offset: 224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1309, file: !1242, line: 503, baseType: !122, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1309, file: !1242, line: 504, baseType: !122, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1309, file: !1242, line: 505, baseType: !122, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1309, file: !1242, line: 506, baseType: !1320, size: 64, align: 64, offset: 448)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1242, line: 445, size: 64, align: 64, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1320, file: !1242, line: 446, baseType: !7, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1320, file: !1242, line: 447, baseType: !7, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1241, file: !1242, line: 798, baseType: !1325, size: 384, offset: 3072)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1242, line: 592, size: 384, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1325, file: !1242, line: 593, baseType: !186, size: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1325, file: !1242, line: 594, baseType: !122, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1325, file: !1242, line: 595, baseType: !122, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1325, file: !1242, line: 596, baseType: !7, size: 32, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1325, file: !1242, line: 597, baseType: !178, size: 16, offset: 288)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1325, file: !1242, line: 598, baseType: !178, size: 16, offset: 304)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1325, file: !1242, line: 600, baseType: !1334, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1241, file: !1242, line: 799, baseType: !1336, size: 1792, offset: 3456)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1242, line: 610, size: 1792, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1427, !1428}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1336, file: !1242, line: 611, baseType: !386, size: 192, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1336, file: !1242, line: 618, baseType: !362, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1336, file: !1242, line: 619, baseType: !362, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1336, file: !1242, line: 620, baseType: !362, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1336, file: !1242, line: 621, baseType: !362, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1336, file: !1242, line: 622, baseType: !362, size: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1336, file: !1242, line: 629, baseType: !142, size: 64, offset: 512)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1336, file: !1242, line: 630, baseType: !362, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1336, file: !1242, line: 631, baseType: !7, size: 32, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1336, file: !1242, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1336, file: !1242, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1336, file: !1242, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1336, file: !1242, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1336, file: !1242, line: 662, baseType: !1352, size: 512, offset: 704)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1353)
!1353 = !{!1354, !1362, !1363, !1368, !1423, !1424, !1425, !1426}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1352, file: !26, line: 119, baseType: !1355, size: 256)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1356, line: 9, size: 256, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1355, file: !1356, line: 10, baseType: !386, size: 192, align: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1355, file: !1356, line: 11, baseType: !1360, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1361, line: 29, baseType: !142)
!1361 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1352, file: !26, line: 120, baseType: !1360, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1352, file: !26, line: 121, baseType: !1364, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!25, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1352, file: !26, line: 122, baseType: !1369, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1371)
!1371 = !{!1372, !1397, !1398, !1401, !1406, !1407, !1418, !1422}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1370, file: !26, line: 160, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1374, file: !26, line: 216, baseType: !147, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1374, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1374, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1374, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1374, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1374, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1374, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1374, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1374, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1374, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1374, file: !26, line: 227, baseType: !178, size: 16, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1374, file: !26, line: 228, baseType: !178, size: 16, offset: 208)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1374, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1374, file: !26, line: 235, baseType: !1360, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1374, file: !26, line: 236, baseType: !1367, size: 64, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1374, file: !26, line: 237, baseType: !1360, size: 64, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1374, file: !26, line: 238, baseType: !1367, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1374, file: !26, line: 239, baseType: !1394, size: 4096, align: 512, offset: 512)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1370, size: 4096, align: 512, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 8)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1370, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1370, file: !26, line: 162, baseType: !1399, size: 32, offset: 96)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !118, line: 32, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !120, line: 96, baseType: !109)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1370, file: !26, line: 163, baseType: !1402, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !585, line: 274, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !585, line: 274, size: 32, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1403, file: !585, line: 274, baseType: !589, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1370, file: !26, line: 164, baseType: !1367, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1370, file: !26, line: 165, baseType: !1408, size: 128, offset: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1356, line: 14, size: 128, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1408, file: !1356, line: 15, baseType: !1411, size: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !387, line: 26, size: 128, elements: !1412)
!1412 = !{!1413, !1417}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1411, file: !387, line: 27, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !387, line: 12, size: 64, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1414, file: !387, line: 13, baseType: !391, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1411, file: !387, line: 28, baseType: !391, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1370, file: !26, line: 166, baseType: !1419, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1360}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1370, file: !26, line: 167, baseType: !1360, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1352, file: !26, line: 123, baseType: !168, size: 8, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1352, file: !26, line: 124, baseType: !168, size: 8, offset: 456)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1352, file: !26, line: 125, baseType: !168, size: 8, offset: 464)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1352, file: !26, line: 126, baseType: !168, size: 8, offset: 472)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1336, file: !1242, line: 671, baseType: !1352, size: 512, offset: 1216)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1336, file: !1242, line: 679, baseType: !1429, size: 64, offset: 1728)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1241, file: !1242, line: 800, baseType: !1431, size: 64, offset: 5248)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1242, line: 800, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1241, file: !1242, line: 809, baseType: !1435, size: 64, offset: 5312)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1242, line: 70, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1241, file: !1242, line: 825, baseType: !1438, size: 2048, align: 512, offset: 5632)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1242, line: 509, size: 2048, align: 512, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1438, file: !1242, line: 511, baseType: !362, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1438, file: !1242, line: 512, baseType: !362, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1438, file: !1242, line: 513, baseType: !362, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1438, file: !1242, line: 514, baseType: !362, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1438, file: !1242, line: 515, baseType: !362, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1438, file: !1242, line: 516, baseType: !362, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1438, file: !1242, line: 518, baseType: !362, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1438, file: !1242, line: 519, baseType: !362, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1438, file: !1242, line: 520, baseType: !142, size: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1438, file: !1242, line: 522, baseType: !362, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1438, file: !1242, line: 523, baseType: !362, size: 64, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1438, file: !1242, line: 524, baseType: !142, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1438, file: !1242, line: 526, baseType: !142, size: 64, offset: 768)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1438, file: !1242, line: 527, baseType: !362, size: 64, offset: 832)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1438, file: !1242, line: 529, baseType: !362, size: 64, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1438, file: !1242, line: 530, baseType: !362, size: 64, offset: 960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1438, file: !1242, line: 531, baseType: !362, size: 64, offset: 1024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1438, file: !1242, line: 532, baseType: !362, size: 64, offset: 1088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1438, file: !1242, line: 533, baseType: !362, size: 64, offset: 1152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1438, file: !1242, line: 535, baseType: !362, size: 64, offset: 1216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1438, file: !1242, line: 536, baseType: !362, size: 64, offset: 1280)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1438, file: !1242, line: 537, baseType: !362, size: 64, offset: 1344)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1438, file: !1242, line: 538, baseType: !362, size: 64, offset: 1408)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1438, file: !1242, line: 539, baseType: !362, size: 64, offset: 1472)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1438, file: !1242, line: 540, baseType: !362, size: 64, offset: 1536)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1438, file: !1242, line: 541, baseType: !362, size: 64, offset: 1600)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1438, file: !1242, line: 542, baseType: !362, size: 64, offset: 1664)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1438, file: !1242, line: 543, baseType: !362, size: 64, offset: 1728)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1241, file: !1242, line: 833, baseType: !7, size: 32, offset: 7680)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1241, file: !1242, line: 836, baseType: !7, size: 32, offset: 7712)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1241, file: !1242, line: 837, baseType: !109, size: 32, offset: 7744)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1241, file: !1242, line: 838, baseType: !1472, size: 64, offset: 7808)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1475, line: 19, baseType: !1476)
!1475 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1475, line: 19, size: 64, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1476, file: !1475, line: 19, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !1480)
!1480 = !{!1481}
!1481 = !DISubrange(count: 1)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1241, file: !1242, line: 839, baseType: !1483, size: 64, offset: 7872)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1241, file: !1242, line: 840, baseType: !1474, size: 64, offset: 7936)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1241, file: !1242, line: 841, baseType: !51, size: 64, offset: 8000)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1241, file: !1242, line: 843, baseType: !178, size: 16, offset: 8064)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1241, file: !1242, line: 845, baseType: !178, size: 16, offset: 8080)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1241, file: !1242, line: 848, baseType: !109, size: 32, offset: 8096)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1241, file: !1242, line: 849, baseType: !1490, size: 32, offset: 8128)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1242, line: 718, size: 32, elements: !1491)
!1491 = !{!1492, !1499}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1490, file: !1242, line: 724, baseType: !1493, size: 32)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !1242, line: 719, size: 32, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1493, file: !1242, line: 720, baseType: !168, size: 8)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1493, file: !1242, line: 721, baseType: !168, size: 8, offset: 8)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1493, file: !1242, line: 722, baseType: !168, size: 8, offset: 16)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1493, file: !1242, line: 723, baseType: !168, size: 8, offset: 24)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1490, file: !1242, line: 725, baseType: !419, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1241, file: !1242, line: 850, baseType: !186, size: 128, offset: 8192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1241, file: !1242, line: 851, baseType: !1502, size: 64, offset: 8320)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1242, line: 60, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1241, file: !1242, line: 855, baseType: !122, size: 64, offset: 8384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1241, file: !1242, line: 856, baseType: !168, size: 8, offset: 8448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1241, file: !1242, line: 857, baseType: !168, size: 8, offset: 8456)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1241, file: !1242, line: 858, baseType: !109, size: 32, offset: 8480)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1241, file: !1242, line: 859, baseType: !186, size: 128, offset: 8512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1241, file: !1242, line: 860, baseType: !109, size: 32, offset: 8640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1241, file: !1242, line: 861, baseType: !186, size: 128, offset: 8704)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1241, file: !1242, line: 873, baseType: !1512, size: 256, offset: 8832)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1242, line: 376, size: 256, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1512, file: !1242, line: 381, baseType: !122, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1512, file: !1242, line: 384, baseType: !364, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1512, file: !1242, line: 389, baseType: !364, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1512, file: !1242, line: 392, baseType: !364, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1241, file: !1242, line: 875, baseType: !186, size: 128, offset: 9088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1241, file: !1242, line: 877, baseType: !1520, size: 320, offset: 9216)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1521, line: 86, size: 320, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1520, file: !1521, line: 87, baseType: !109, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1520, file: !1521, line: 88, baseType: !186, size: 128, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1520, file: !1521, line: 89, baseType: !186, size: 128, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1241, file: !1242, line: 878, baseType: !386, size: 192, align: 64, offset: 9536)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1241, file: !1242, line: 881, baseType: !1528, size: 64, offset: 9728)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1012, line: 733, size: 10240, elements: !1530)
!1530 = !{!1531, !1670}
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1012, line: 734, baseType: !1532, size: 10240)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !1012, line: 734, size: 10240, elements: !1533)
!1533 = !{!1534, !1538, !1551, !1555, !1556, !1557, !1558, !1559, !1560, !1569, !1570, !1571, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1610, !1612, !1615, !1639, !1640, !1641, !1644, !1645, !1646, !1649, !1650, !1651, !1657, !1658}
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1012, line: 739, baseType: !1535, size: 512, align: 512)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1532, file: !1012, line: 739, size: 512, align: 512, elements: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1535, file: !1012, line: 747, baseType: !160, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1532, file: !1012, line: 750, baseType: !1539, size: 128, offset: 512)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1540, line: 218, size: 128, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1541 = !{!1542, !1549, !1550}
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1540, line: 219, baseType: !1543, size: 32)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1540, line: 219, size: 32, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1543, file: !1540, line: 220, baseType: !239, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1543, file: !1540, line: 221, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1540, line: 197, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1540, line: 197, elements: !870)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1539, file: !1540, line: 223, baseType: !7, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1539, file: !1540, line: 224, baseType: !51, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1532, file: !1012, line: 752, baseType: !1552, size: 64, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!122, !737, !122, !122, !122, !122}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1532, file: !1012, line: 756, baseType: !122, size: 64, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1532, file: !1012, line: 757, baseType: !122, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1532, file: !1012, line: 760, baseType: !122, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1532, file: !1012, line: 761, baseType: !122, size: 64, offset: 896)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1532, file: !1012, line: 763, baseType: !122, size: 64, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1532, file: !1012, line: 764, baseType: !1561, size: 64, offset: 1024)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1563, line: 299, baseType: !1564)
!1563 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1563, line: 299, size: 64, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1564, file: !1563, line: 299, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1568, line: 18, baseType: !122)
!1568 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1532, file: !1012, line: 773, baseType: !160, size: 32, offset: 1088)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1532, file: !1012, line: 785, baseType: !160, size: 32, offset: 1120)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1532, file: !1012, line: 795, baseType: !1572, size: 64, offset: 1152)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1012, line: 726, size: 128, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1573, file: !1012, line: 727, baseType: !362, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1573, file: !1012, line: 728, baseType: !109, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1532, file: !1012, line: 801, baseType: !122, size: 64, offset: 1216)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1532, file: !1012, line: 804, baseType: !136, size: 64, offset: 1280)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1532, file: !1012, line: 806, baseType: !109, size: 32, offset: 1344)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1532, file: !1012, line: 808, baseType: !239, size: 32, offset: 1376)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1532, file: !1012, line: 823, baseType: !394, size: 320, offset: 1408)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1532, file: !1012, line: 825, baseType: !186, size: 128, offset: 1728)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1532, file: !1012, line: 845, baseType: !109, size: 32, offset: 1856)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1532, file: !1012, line: 849, baseType: !122, size: 64, offset: 1920)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1532, file: !1012, line: 850, baseType: !122, size: 64, offset: 1984)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1532, file: !1012, line: 852, baseType: !122, size: 64, offset: 2048)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1532, file: !1012, line: 853, baseType: !122, size: 64, offset: 2112)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1532, file: !1012, line: 854, baseType: !138, size: 64, offset: 2176)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1532, file: !1012, line: 855, baseType: !122, size: 64, offset: 2240)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1532, file: !1012, line: 856, baseType: !122, size: 64, offset: 2304)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1532, file: !1012, line: 857, baseType: !122, size: 64, offset: 2368)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1532, file: !1012, line: 858, baseType: !122, size: 64, offset: 2432)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1532, file: !1012, line: 865, baseType: !589, size: 32, offset: 2496)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1532, file: !1012, line: 867, baseType: !239, size: 32, offset: 2528)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1532, file: !1012, line: 869, baseType: !122, size: 64, offset: 2560)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1532, file: !1012, line: 869, baseType: !122, size: 64, offset: 2624)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1532, file: !1012, line: 869, baseType: !122, size: 64, offset: 2688)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1532, file: !1012, line: 869, baseType: !122, size: 64, offset: 2752)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1532, file: !1012, line: 870, baseType: !122, size: 64, offset: 2816)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1532, file: !1012, line: 870, baseType: !122, size: 64, offset: 2880)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1532, file: !1012, line: 870, baseType: !122, size: 64, offset: 2944)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1532, file: !1012, line: 871, baseType: !122, size: 64, offset: 3008)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1532, file: !1012, line: 871, baseType: !122, size: 64, offset: 3072)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1532, file: !1012, line: 871, baseType: !122, size: 64, offset: 3136)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1532, file: !1012, line: 871, baseType: !122, size: 64, offset: 3200)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1532, file: !1012, line: 873, baseType: !1607, size: 3328, offset: 3264)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 3328, elements: !1608)
!1608 = !{!1609}
!1609 = !DISubrange(count: 52)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1532, file: !1012, line: 875, baseType: !1611, size: 1280, offset: 6592)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 1280, elements: !302)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1532, file: !1012, line: 877, baseType: !1613, size: 64, offset: 7872)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1012, line: 877, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1532, file: !1012, line: 880, baseType: !1616, size: 1088, offset: 7936)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1617, line: 72, baseType: !1618)
!1617 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1617, line: 23, size: 1088, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1627, !1628, !1629, !1630, !1634, !1635, !1636}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1618, file: !1617, line: 28, baseType: !362, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1618, file: !1617, line: 38, baseType: !138, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1618, file: !1617, line: 40, baseType: !122, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1618, file: !1617, line: 43, baseType: !394, size: 320, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1618, file: !1617, line: 44, baseType: !1625, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1617, line: 44, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1618, file: !1617, line: 48, baseType: !122, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1618, file: !1617, line: 59, baseType: !132, size: 256, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1618, file: !1617, line: 60, baseType: !51, size: 64, offset: 896)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1618, file: !1617, line: 61, baseType: !1631, size: 64, offset: 960)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1617, line: 61, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1618, file: !1617, line: 63, baseType: !160, size: 32, offset: 1024)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1618, file: !1617, line: 69, baseType: !176, size: 16, offset: 1056)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1618, file: !1617, line: 70, baseType: !1637, size: 16, offset: 1072)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !143, line: 18, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !145, line: 23, baseType: !424)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1532, file: !1012, line: 882, baseType: !122, size: 64, offset: 9024)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1532, file: !1012, line: 885, baseType: !239, size: 32, offset: 9088)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1532, file: !1012, line: 886, baseType: !1642, size: 64, offset: 9152)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1012, line: 732, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1532, file: !1012, line: 901, baseType: !540, size: 64, offset: 9216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1532, file: !1012, line: 904, baseType: !737, size: 64, offset: 9280)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1532, file: !1012, line: 906, baseType: !1647, size: 64, offset: 9344)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1012, line: 906, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1532, file: !1012, line: 930, baseType: !160, size: 32, offset: 9408)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1532, file: !1012, line: 933, baseType: !160, size: 32, offset: 9440)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1532, file: !1012, line: 935, baseType: !1652, size: 64, offset: 9472)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1652, file: !44, line: 104, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1532, file: !1012, line: 940, baseType: !136, size: 64, offset: 9536)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1532, file: !1012, line: 942, baseType: !1659, size: 256, offset: 9600)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1660, line: 98, size: 256, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1661 = !{!1662, !1663, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1659, file: !1660, line: 99, baseType: !136, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1659, file: !1660, line: 100, baseType: !186, size: 128, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1659, file: !1660, line: 101, baseType: !1665, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1660, line: 21, baseType: !1666)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1529, file: !1012, line: 986, baseType: !1671, offset: 10240)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, elements: !321)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1241, file: !1242, line: 882, baseType: !1528, size: 64, offset: 9792)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1241, file: !1242, line: 884, baseType: !109, size: 32, offset: 9856)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1241, file: !1242, line: 885, baseType: !109, size: 32, offset: 9888)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1241, file: !1242, line: 886, baseType: !109, size: 32, offset: 9920)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1241, file: !1242, line: 888, baseType: !109, size: 32, offset: 9952)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1241, file: !1242, line: 890, baseType: !122, size: 64, offset: 9984)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1241, file: !1242, line: 893, baseType: !7, size: 32, offset: 10048)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1241, file: !1242, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1241, file: !1242, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1241, file: !1242, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1241, file: !1242, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1241, file: !1242, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1241, file: !1242, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1241, file: !1242, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1241, file: !1242, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1241, file: !1242, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1241, file: !1242, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1241, file: !1242, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1241, file: !1242, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1241, file: !1242, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1241, file: !1242, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1241, file: !1242, line: 969, baseType: !122, size: 64, offset: 10176)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1241, file: !1242, line: 971, baseType: !1695, size: 448, offset: 10240)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1696)
!1696 = !{!1697, !1698, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1695, file: !31, line: 26, baseType: !122, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1695, file: !31, line: 27, baseType: !1699, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!733, !1702}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !31, line: 28, baseType: !1704, size: 320, offset: 128)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1695, file: !31, line: 28, size: 320, elements: !1705)
!1705 = !{!1706, !1716, !1741}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1704, file: !31, line: 37, baseType: !1707, size: 320)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !31, line: 30, size: 320, elements: !1708)
!1708 = !{!1709, !1711, !1712, !1713, !1714, !1715}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1707, file: !31, line: 31, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1707, file: !31, line: 32, baseType: !419, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1707, file: !31, line: 33, baseType: !419, size: 32, offset: 96)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1707, file: !31, line: 34, baseType: !419, size: 32, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1707, file: !31, line: 35, baseType: !362, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1707, file: !31, line: 36, baseType: !1710, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1704, file: !31, line: 47, baseType: !1717, size: 192)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !31, line: 39, size: 192, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1740}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1717, file: !31, line: 40, baseType: !1399, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1717, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !31, line: 42, baseType: !1722, size: 64, offset: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1717, file: !31, line: 42, size: 64, elements: !1723)
!1723 = !{!1724, !1732}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1722, file: !31, line: 43, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1727, line: 7, size: 128, elements: !1728)
!1727 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1728 = !{!1729, !1731}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1726, file: !1727, line: 8, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !120, line: 93, baseType: !129)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1726, file: !1727, line: 9, baseType: !129, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1722, file: !31, line: 44, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1735, line: 7, size: 64, elements: !1736)
!1735 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1736 = !{!1737, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1734, file: !1735, line: 8, baseType: !1738, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1735, line: 5, baseType: !379)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1734, file: !1735, line: 9, baseType: !379, size: 32, offset: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1717, file: !31, line: 46, baseType: !362, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1704, file: !31, line: 55, baseType: !1742, size: 256)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !31, line: 49, size: 256, elements: !1743)
!1743 = !{!1744, !1747, !1748, !1749, !1750}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1742, file: !31, line: 50, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1742, file: !31, line: 51, baseType: !109, size: 32, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1742, file: !31, line: 52, baseType: !109, size: 32, offset: 96)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1742, file: !31, line: 53, baseType: !122, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1742, file: !31, line: 54, baseType: !122, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1241, file: !1242, line: 973, baseType: !1752, size: 32, offset: 10688)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !118, line: 27, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !120, line: 28, baseType: !109)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1241, file: !1242, line: 974, baseType: !1752, size: 32, offset: 10720)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1241, file: !1242, line: 978, baseType: !122, size: 64, offset: 10752)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1241, file: !1242, line: 987, baseType: !1240, size: 64, offset: 10816)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1241, file: !1242, line: 990, baseType: !1240, size: 64, offset: 10880)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1241, file: !1242, line: 995, baseType: !186, size: 128, offset: 10944)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1241, file: !1242, line: 996, baseType: !186, size: 128, offset: 11072)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1241, file: !1242, line: 997, baseType: !1240, size: 64, offset: 11200)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1241, file: !1242, line: 1005, baseType: !186, size: 128, offset: 11264)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1241, file: !1242, line: 1006, baseType: !186, size: 128, offset: 11392)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1241, file: !1242, line: 1009, baseType: !280, size: 64, offset: 11520)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1241, file: !1242, line: 1010, baseType: !1765, size: 512, offset: 11584)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 512, elements: !302)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1241, file: !1242, line: 1011, baseType: !186, size: 128, offset: 12096)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1241, file: !1242, line: 1012, baseType: !186, size: 128, offset: 12224)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1241, file: !1242, line: 1014, baseType: !1769, size: 64, offset: 12352)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1771, line: 26, size: 256, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1770, file: !1771, line: 27, baseType: !7, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1770, file: !1771, line: 28, baseType: !1775, size: 192, offset: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1776, line: 43, size: 192, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1775, file: !1776, line: 44, baseType: !147, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1775, file: !1776, line: 45, baseType: !186, size: 128, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1241, file: !1242, line: 1017, baseType: !933, size: 64, offset: 12416)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1241, file: !1242, line: 1020, baseType: !933, size: 64, offset: 12480)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1241, file: !1242, line: 1023, baseType: !51, size: 64, offset: 12544)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1241, file: !1242, line: 1025, baseType: !362, size: 64, offset: 12608)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1241, file: !1242, line: 1026, baseType: !362, size: 64, offset: 12672)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1241, file: !1242, line: 1031, baseType: !362, size: 64, offset: 12736)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1241, file: !1242, line: 1032, baseType: !1787, size: 192, offset: 12800)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1242, line: 324, size: 192, elements: !1788)
!1788 = !{!1789, !1790, !1791}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1787, file: !1242, line: 326, baseType: !362, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1787, file: !1242, line: 327, baseType: !362, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1787, file: !1242, line: 328, baseType: !147, size: 32, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1241, file: !1242, line: 1041, baseType: !122, size: 64, offset: 12992)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1241, file: !1242, line: 1042, baseType: !122, size: 64, offset: 13056)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1241, file: !1242, line: 1045, baseType: !362, size: 64, offset: 13120)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1241, file: !1242, line: 1048, baseType: !362, size: 64, offset: 13184)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1241, file: !1242, line: 1051, baseType: !122, size: 64, offset: 13248)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1241, file: !1242, line: 1052, baseType: !122, size: 64, offset: 13312)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1241, file: !1242, line: 1055, baseType: !1799, size: 640, offset: 13376)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1800, line: 132, size: 640, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1801 = !{!1802, !1808, !1809}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1799, file: !1800, line: 133, baseType: !1803, size: 576)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, size: 576, elements: !276)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1800, line: 117, size: 192, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1804, file: !1800, line: 118, baseType: !362, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1804, file: !1800, line: 119, baseType: !1408, size: 128, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1799, file: !1800, line: 134, baseType: !7, size: 32, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1799, file: !1800, line: 135, baseType: !7, size: 32, offset: 608)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1241, file: !1242, line: 1058, baseType: !1811, size: 448, offset: 14016)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1800, line: 144, size: 448, elements: !1812)
!1812 = !{!1813, !1814, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1811, file: !1800, line: 145, baseType: !229, size: 128, align: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1811, file: !1800, line: 146, baseType: !132, size: 256, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1811, file: !1800, line: 147, baseType: !7, size: 32, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1241, file: !1242, line: 1064, baseType: !335, size: 64, offset: 14464)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1241, file: !1242, line: 1067, baseType: !335, size: 64, offset: 14528)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1241, file: !1242, line: 1070, baseType: !335, size: 64, offset: 14592)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1241, file: !1242, line: 1074, baseType: !371, size: 64, offset: 14656)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1241, file: !1242, line: 1084, baseType: !1821, size: 128, offset: 14720)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 128, elements: !1822)
!1822 = !{!1823}
!1823 = !DISubrange(count: 16)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1241, file: !1242, line: 1086, baseType: !1825, size: 64, offset: 14848)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1242, line: 55, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1241, file: !1242, line: 1089, baseType: !1828, size: 64, offset: 14912)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1829, line: 12, size: 64, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1830 = !{!1831}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1828, file: !1829, line: 13, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1829, line: 8, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1241, file: !1242, line: 1090, baseType: !1835, size: 128, offset: 14976)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1836, line: 13, size: 128, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1835, file: !1836, line: 14, baseType: !186, size: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1241, file: !1242, line: 1097, baseType: !1840, size: 64, offset: 15104)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1242, line: 50, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1241, file: !1242, line: 1100, baseType: !1843, size: 64, offset: 15168)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1242, line: 1100, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1241, file: !1242, line: 1103, baseType: !1846, size: 64, offset: 15232)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1242, line: 53, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1241, file: !1242, line: 1107, baseType: !1849, size: 64, offset: 15296)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1242, line: 56, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1241, file: !1242, line: 1110, baseType: !1852, size: 64, offset: 15360)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1854, line: 93, size: 8768, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1903, !1912, !1913, !1915, !1916, !1917, !1920, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1958, !1959, !1966, !1976, !1979, !1980, !1983, !1984, !1985, !1986, !1987, !1988}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1853, file: !1854, line: 94, baseType: !284, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1853, file: !1854, line: 95, baseType: !160, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1853, file: !1854, line: 96, baseType: !109, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1853, file: !1854, line: 97, baseType: !109, size: 32, offset: 96)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1853, file: !1854, line: 98, baseType: !186, size: 128, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1853, file: !1854, line: 100, baseType: !306, size: 192, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1853, file: !1854, line: 103, baseType: !1240, size: 64, offset: 448)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1853, file: !1854, line: 106, baseType: !1864, size: 192, offset: 512)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !545, line: 32, size: 192, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1864, file: !545, line: 33, baseType: !186, size: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1864, file: !545, line: 34, baseType: !1868, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1869, line: 25, baseType: !1870)
!1869 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1869, line: 23, size: 64, elements: !1871)
!1871 = !{!1872}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1870, file: !1869, line: 24, baseType: !1479, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1853, file: !1854, line: 109, baseType: !293, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1853, file: !1854, line: 112, baseType: !109, size: 32, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1853, file: !1854, line: 114, baseType: !109, size: 32, offset: 800)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1853, file: !1854, line: 115, baseType: !1240, size: 64, offset: 832)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1853, file: !1854, line: 118, baseType: !109, size: 32, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1853, file: !1854, line: 119, baseType: !7, size: 32, offset: 928)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1853, file: !1854, line: 121, baseType: !1880, size: 64, offset: 960)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1854, line: 80, size: 448, elements: !1882)
!1882 = !{!1883, !1884, !1890}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1881, file: !1854, line: 81, baseType: !160, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1881, file: !1854, line: 82, baseType: !1885, size: 128, offset: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1854, line: 75, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1885, file: !1854, line: 76, baseType: !1240, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1885, file: !1854, line: 77, baseType: !1889, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1881, file: !1854, line: 83, baseType: !1770, size: 256, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1853, file: !1854, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1853, file: !1854, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1853, file: !1854, line: 138, baseType: !7, size: 32, offset: 1056)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1853, file: !1854, line: 139, baseType: !186, size: 128, offset: 1088)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1853, file: !1854, line: 142, baseType: !1352, size: 512, offset: 1216)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1853, file: !1854, line: 143, baseType: !1360, size: 64, offset: 1728)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1853, file: !1854, line: 150, baseType: !1898, size: 256, offset: 1792)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, size: 256, elements: !76)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1854, line: 38, size: 128, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1899, file: !1854, line: 39, baseType: !362, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1899, file: !1854, line: 40, baseType: !362, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1853, file: !1854, line: 156, baseType: !1904, size: 192, offset: 2048)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1854, line: 66, size: 192, elements: !1905)
!1905 = !{!1906}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1904, file: !1854, line: 67, baseType: !1907, size: 192)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1854, line: 47, size: 192, elements: !1908)
!1908 = !{!1909, !1910, !1911}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1907, file: !1854, line: 48, baseType: !138, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1907, file: !1854, line: 49, baseType: !138, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1907, file: !1854, line: 50, baseType: !138, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1853, file: !1854, line: 160, baseType: !1799, size: 640, offset: 2240)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1853, file: !1854, line: 163, baseType: !1914, size: 256, offset: 2880)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 256, elements: !302)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1853, file: !1854, line: 169, baseType: !280, size: 64, offset: 3136)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1853, file: !1854, line: 172, baseType: !109, size: 32, offset: 3200)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1853, file: !1854, line: 174, baseType: !1918, size: 64, offset: 3264)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1854, line: 174, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1853, file: !1854, line: 185, baseType: !1921, size: 64, offset: 3328)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !585, line: 860, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !585, line: 853, size: 64, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1922, file: !585, line: 858, baseType: !584, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1922, file: !585, line: 859, baseType: !239, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1853, file: !1854, line: 186, baseType: !362, size: 64, offset: 3392)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1853, file: !1854, line: 186, baseType: !362, size: 64, offset: 3456)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1853, file: !1854, line: 186, baseType: !362, size: 64, offset: 3520)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1853, file: !1854, line: 186, baseType: !362, size: 64, offset: 3584)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1853, file: !1854, line: 187, baseType: !362, size: 64, offset: 3648)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1853, file: !1854, line: 188, baseType: !362, size: 64, offset: 3712)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1853, file: !1854, line: 189, baseType: !1787, size: 192, offset: 3776)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1853, file: !1854, line: 190, baseType: !122, size: 64, offset: 3968)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1853, file: !1854, line: 190, baseType: !122, size: 64, offset: 4032)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1853, file: !1854, line: 190, baseType: !122, size: 64, offset: 4096)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1853, file: !1854, line: 190, baseType: !122, size: 64, offset: 4160)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1853, file: !1854, line: 191, baseType: !122, size: 64, offset: 4224)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1853, file: !1854, line: 191, baseType: !122, size: 64, offset: 4288)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1853, file: !1854, line: 191, baseType: !122, size: 64, offset: 4352)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1853, file: !1854, line: 191, baseType: !122, size: 64, offset: 4416)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1853, file: !1854, line: 192, baseType: !122, size: 64, offset: 4480)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1853, file: !1854, line: 192, baseType: !122, size: 64, offset: 4544)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1853, file: !1854, line: 192, baseType: !122, size: 64, offset: 4608)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1853, file: !1854, line: 192, baseType: !122, size: 64, offset: 4672)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1853, file: !1854, line: 193, baseType: !122, size: 64, offset: 4736)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1853, file: !1854, line: 193, baseType: !122, size: 64, offset: 4800)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1853, file: !1854, line: 194, baseType: !1948, size: 448, offset: 4864)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1949, line: 12, size: 448, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1948, file: !1949, line: 15, baseType: !362, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1948, file: !1949, line: 17, baseType: !362, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1948, file: !1949, line: 19, baseType: !362, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1948, file: !1949, line: 21, baseType: !362, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1948, file: !1949, line: 29, baseType: !362, size: 64, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1948, file: !1949, line: 35, baseType: !362, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1948, file: !1949, line: 44, baseType: !362, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1853, file: !1854, line: 202, baseType: !364, size: 64, offset: 5312)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1853, file: !1854, line: 213, baseType: !1960, size: 2048, offset: 5376)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1961, size: 2048, elements: !1822)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1962, line: 43, size: 128, elements: !1963)
!1962 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1961, file: !1962, line: 44, baseType: !121, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1961, file: !1962, line: 45, baseType: !121, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1853, file: !1854, line: 216, baseType: !1967, size: 448, offset: 7424)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1854, line: 30, size: 448, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1967, file: !1854, line: 31, baseType: !109, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1967, file: !1854, line: 32, baseType: !733, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1967, file: !1854, line: 33, baseType: !122, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1967, file: !1854, line: 34, baseType: !362, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1967, file: !1854, line: 34, baseType: !362, size: 64, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1967, file: !1854, line: 35, baseType: !122, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1967, file: !1854, line: 35, baseType: !122, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1853, file: !1854, line: 219, baseType: !1977, size: 64, offset: 7872)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1854, line: 219, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1853, file: !1854, line: 222, baseType: !7, size: 32, offset: 7936)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1853, file: !1854, line: 223, baseType: !1981, size: 64, offset: 8000)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1854, line: 223, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1853, file: !1854, line: 230, baseType: !455, size: 8, offset: 8064)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1853, file: !1854, line: 231, baseType: !424, size: 16, offset: 8080)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1853, file: !1854, line: 232, baseType: !424, size: 16, offset: 8096)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1853, file: !1854, line: 234, baseType: !1528, size: 64, offset: 8128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1853, file: !1854, line: 237, baseType: !132, size: 256, offset: 8192)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1853, file: !1854, line: 243, baseType: !394, size: 320, offset: 8448)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1241, file: !1242, line: 1111, baseType: !1990, size: 64, offset: 15424)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1854, line: 20, size: 16640, elements: !1992)
!1992 = !{!1993, !1994, !1995, !1996}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1991, file: !1854, line: 21, baseType: !239, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1991, file: !1854, line: 22, baseType: !284, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1991, file: !1854, line: 23, baseType: !306, size: 192, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1991, file: !1854, line: 24, baseType: !1997, size: 16384, offset: 256)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1998, size: 16384, elements: !2018)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !545, line: 51, size: 256, elements: !1999)
!1999 = !{!2000}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1998, file: !545, line: 52, baseType: !2001, size: 256)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !545, line: 37, size: 256, elements: !2002)
!2002 = !{!2003, !2010, !2011, !2017}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2001, file: !545, line: 39, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2005, line: 83, baseType: !2006)
!2005 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2005, line: 82, baseType: !2008)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !109}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2001, file: !545, line: 40, baseType: !122, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2001, file: !545, line: 46, baseType: !2012, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2005, line: 86, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2005, line: 85, baseType: !2015)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2001, file: !545, line: 48, baseType: !1868, size: 64, offset: 192)
!2018 = !{!2019}
!2019 = !DISubrange(count: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1241, file: !1242, line: 1112, baseType: !1868, size: 64, offset: 15488)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1241, file: !1242, line: 1113, baseType: !1868, size: 64, offset: 15552)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1241, file: !1242, line: 1115, baseType: !1868, size: 64, offset: 15616)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1241, file: !1242, line: 1116, baseType: !1864, size: 192, offset: 15680)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1241, file: !1242, line: 1117, baseType: !122, size: 64, offset: 15872)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1241, file: !1242, line: 1118, baseType: !117, size: 64, offset: 15936)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1241, file: !1242, line: 1119, baseType: !7, size: 32, offset: 16000)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1241, file: !1242, line: 1121, baseType: !232, size: 64, offset: 16064)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1241, file: !1242, line: 1125, baseType: !2029, size: 64, offset: 16128)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1242, line: 43, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1241, file: !1242, line: 1127, baseType: !325, size: 32, offset: 16192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1241, file: !1242, line: 1128, baseType: !7, size: 32, offset: 16224)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1241, file: !1242, line: 1130, baseType: !2034, size: 128, offset: 16256)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2035, line: 37, size: 128, elements: !2036)
!2035 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2036 = !{!2037, !2038, !2039}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2034, file: !2035, line: 38, baseType: !109, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2034, file: !2035, line: 39, baseType: !160, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2034, file: !2035, line: 40, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2035, line: 24, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1241, file: !1242, line: 1131, baseType: !2043, size: 256, offset: 16384)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2044, line: 12, size: 256, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2045 = !{!2046, !2047, !2048, !2049}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2043, file: !2044, line: 13, baseType: !115, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2043, file: !2044, line: 14, baseType: !122, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2043, file: !2044, line: 15, baseType: !122, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2043, file: !2044, line: 16, baseType: !455, size: 8, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1241, file: !1242, line: 1134, baseType: !362, size: 64, offset: 16640)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1241, file: !1242, line: 1135, baseType: !362, size: 64, offset: 16704)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1241, file: !1242, line: 1138, baseType: !239, size: 32, offset: 16768)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1241, file: !1242, line: 1141, baseType: !147, size: 32, offset: 16800)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1241, file: !1242, line: 1143, baseType: !2055, size: 64, offset: 16832)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1242, line: 735, size: 64, elements: !2056)
!2056 = !{!2057}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2055, file: !1242, line: 736, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1241, file: !1242, line: 1147, baseType: !1411, size: 128, offset: 16896)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1241, file: !1242, line: 1149, baseType: !1240, size: 64, offset: 17024)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1241, file: !1242, line: 1151, baseType: !2062, size: 64, offset: 17088)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1242, line: 1151, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1241, file: !1242, line: 1188, baseType: !51, size: 64, offset: 17152)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1241, file: !1242, line: 1191, baseType: !2066, size: 64, offset: 17216)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1242, line: 44, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1241, file: !1242, line: 1194, baseType: !2069, size: 64, offset: 17280)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1242, line: 45, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1241, file: !1242, line: 1197, baseType: !2072, size: 64, offset: 17344)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1242, line: 61, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1241, file: !1242, line: 1199, baseType: !2075, size: 64, offset: 17408)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2077, line: 99, size: 128, elements: !2078)
!2077 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2078 = !{!2079, !2080, !2081}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2076, file: !2077, line: 100, baseType: !136, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2076, file: !2077, line: 101, baseType: !160, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2076, file: !2077, line: 103, baseType: !178, size: 16, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1241, file: !1242, line: 1202, baseType: !2083, size: 64, offset: 17472)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1242, line: 48, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1241, file: !1242, line: 1205, baseType: !122, size: 64, offset: 17536)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1241, file: !1242, line: 1206, baseType: !2087, size: 64, offset: 17600)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !545, line: 14, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !545, line: 12, size: 384, elements: !2090)
!2090 = !{!2091}
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !2089, file: !545, line: 13, baseType: !2092, size: 384)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2089, file: !545, line: 13, size: 384, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2092, file: !545, line: 13, baseType: !109, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2092, file: !545, line: 13, baseType: !109, size: 32, offset: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2092, file: !545, line: 13, baseType: !109, size: 32, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2092, file: !545, line: 13, baseType: !2098, size: 256, offset: 128)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2099, line: 37, size: 256, elements: !2100)
!2099 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2100 = !{!2101, !2106, !2119, !2125, !2134, !2161, !2166}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2098, file: !2099, line: 42, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2099, line: 39, size: 64, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2102, file: !2099, line: 40, baseType: !1753, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2102, file: !2099, line: 41, baseType: !331, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2098, file: !2099, line: 50, baseType: !2107, size: 192)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2099, line: 45, size: 192, elements: !2108)
!2108 = !{!2109, !2111, !2112, !2118}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2107, file: !2099, line: 46, baseType: !2110, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !120, line: 95, baseType: !109)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2107, file: !2099, line: 47, baseType: !109, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2107, file: !2099, line: 48, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2099, line: 11, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2099, line: 8, size: 64, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2114, file: !2099, line: 9, baseType: !109, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2114, file: !2099, line: 10, baseType: !51, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2107, file: !2099, line: 49, baseType: !109, size: 32, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2098, file: !2099, line: 57, baseType: !2120, size: 128)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2099, line: 53, size: 128, elements: !2121)
!2121 = !{!2122, !2123, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2120, file: !2099, line: 54, baseType: !1753, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2120, file: !2099, line: 55, baseType: !331, size: 32, offset: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2120, file: !2099, line: 56, baseType: !2113, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2098, file: !2099, line: 66, baseType: !2126, size: 256)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2099, line: 60, size: 256, elements: !2127)
!2127 = !{!2128, !2129, !2130, !2131, !2133}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2126, file: !2099, line: 61, baseType: !1753, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2126, file: !2099, line: 62, baseType: !331, size: 32, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2126, file: !2099, line: 63, baseType: !109, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2126, file: !2099, line: 64, baseType: !2132, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !120, line: 94, baseType: !775)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2126, file: !2099, line: 65, baseType: !2132, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2098, file: !2099, line: 105, baseType: !2135, size: 256)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2099, line: 69, size: 256, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2135, file: !2099, line: 70, baseType: !51, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !2099, line: 79, baseType: !2139, size: 192, offset: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !2099, line: 79, size: 192, elements: !2140)
!2140 = !{!2141, !2142, !2143, !2150, !2155}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2139, file: !2099, line: 81, baseType: !109, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2139, file: !2099, line: 86, baseType: !424, size: 16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2139, file: !2099, line: 92, baseType: !2144, size: 192)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2099, line: 88, size: 192, elements: !2145)
!2145 = !{!2146, !2148, !2149}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2144, file: !2099, line: 89, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64, elements: !1395)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2144, file: !2099, line: 90, baseType: !51, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2144, file: !2099, line: 91, baseType: !51, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2139, file: !2099, line: 97, baseType: !2151, size: 96)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2099, line: 94, size: 96, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2151, file: !2099, line: 95, baseType: !2147, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2151, file: !2099, line: 96, baseType: !420, size: 32, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2139, file: !2099, line: 103, baseType: !2156, size: 128)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2099, line: 99, size: 128, elements: !2157)
!2157 = !{!2158, !2159, !2160}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2156, file: !2099, line: 100, baseType: !122, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2156, file: !2099, line: 101, baseType: !420, size: 32, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2156, file: !2099, line: 102, baseType: !420, size: 32, offset: 96)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2098, file: !2099, line: 111, baseType: !2162, size: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2099, line: 108, size: 128, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2162, file: !2099, line: 109, baseType: !733, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2162, file: !2099, line: 110, baseType: !109, size: 32, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2098, file: !2099, line: 118, baseType: !2167, size: 128)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2098, file: !2099, line: 114, size: 128, elements: !2168)
!2168 = !{!2169, !2170, !2171}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2167, file: !2099, line: 115, baseType: !51, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2167, file: !2099, line: 116, baseType: !109, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2167, file: !2099, line: 117, baseType: !7, size: 32, offset: 96)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1241, file: !1242, line: 1208, baseType: !1948, size: 448, offset: 17664)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1241, file: !1242, line: 1215, baseType: !362, size: 64, offset: 18112)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1241, file: !1242, line: 1217, baseType: !362, size: 64, offset: 18176)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1241, file: !1242, line: 1219, baseType: !362, size: 64, offset: 18240)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1241, file: !1242, line: 1223, baseType: !2177, size: 64, offset: 18304)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2178, line: 99, baseType: !2179)
!2178 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2178, line: 99, size: 64, elements: !2180)
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2179, file: !2178, line: 99, baseType: !1479, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1241, file: !1242, line: 1225, baseType: !584, size: 32, offset: 18368)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1241, file: !1242, line: 1226, baseType: !109, size: 32, offset: 18400)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1241, file: !1242, line: 1227, baseType: !109, size: 32, offset: 18432)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1241, file: !1242, line: 1231, baseType: !2186, size: 64, offset: 18496)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1242, line: 1231, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1241, file: !1242, line: 1233, baseType: !186, size: 128, offset: 18560)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1241, file: !1242, line: 1240, baseType: !2190, size: 64, offset: 18688)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1242, line: 62, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1241, file: !1242, line: 1242, baseType: !2193, size: 64, offset: 18752)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1242, line: 1242, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1241, file: !1242, line: 1244, baseType: !186, size: 128, offset: 18816)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1241, file: !1242, line: 1245, baseType: !2197, size: 64, offset: 18944)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1242, line: 51, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1241, file: !1242, line: 1246, baseType: !132, size: 256, offset: 19008)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1241, file: !1242, line: 1247, baseType: !7, size: 32, offset: 19264)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1241, file: !1242, line: 1250, baseType: !2202, size: 64, offset: 19328)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1242, line: 57, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1241, file: !1242, line: 1251, baseType: !132, size: 256, offset: 19392)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1241, file: !1242, line: 1252, baseType: !186, size: 128, offset: 19648)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1241, file: !1242, line: 1259, baseType: !2207, size: 64, offset: 19776)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1242, line: 54, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1241, file: !1242, line: 1260, baseType: !424, size: 16, offset: 19840)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1241, file: !1242, line: 1261, baseType: !424, size: 16, offset: 19856)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1241, file: !1242, line: 1314, baseType: !2212, size: 64, offset: 19904)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2214, line: 62, size: 256, align: 256, elements: !2215)
!2214 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2213, file: !2214, line: 75, baseType: !420, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2213, file: !2214, line: 90, baseType: !420, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2213, file: !2214, line: 112, baseType: !363, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2213, file: !2214, line: 132, baseType: !420, size: 32, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2213, file: !2214, line: 140, baseType: !420, size: 32, offset: 160)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2213, file: !2214, line: 149, baseType: !420, size: 32, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2213, file: !2214, line: 154, baseType: !2223, offset: 224)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, elements: !321)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1241, file: !1242, line: 1315, baseType: !419, size: 32, offset: 19968)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1241, file: !1242, line: 1316, baseType: !419, size: 32, offset: 20000)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1241, file: !1242, line: 1321, baseType: !122, size: 64, offset: 20032)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1241, file: !1242, line: 1325, baseType: !109, size: 32, offset: 20096)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1241, file: !1242, line: 1326, baseType: !109, size: 32, offset: 20128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1241, file: !1242, line: 1327, baseType: !109, size: 32, offset: 20160)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1241, file: !1242, line: 1328, baseType: !109, size: 32, offset: 20192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1241, file: !1242, line: 1329, baseType: !229, size: 128, align: 64, offset: 20224)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1241, file: !1242, line: 1332, baseType: !2233, size: 128, offset: 20352)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2234, line: 51, size: 128, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2235 = !{!2236, !2241, !2242}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2233, file: !2234, line: 60, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2238, line: 7, size: 64, elements: !2239)
!2238 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2239 = !{!2240}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2237, file: !2238, line: 12, baseType: !1476, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2233, file: !2234, line: 63, baseType: !455, size: 8, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2233, file: !2234, line: 70, baseType: !455, size: 8, offset: 72)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1241, file: !1242, line: 1335, baseType: !2244, size: 64, offset: 20480)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1242, line: 59, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1241, file: !1242, line: 1337, baseType: !2247, size: 128, offset: 20544)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2234, line: 39, size: 128, elements: !2248)
!2248 = !{!2249, !2513, !2514}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2247, file: !2234, line: 40, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1012, line: 74, size: 512, align: 128, elements: !2252)
!2252 = !{!2253, !2254, !2507, !2512}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2251, file: !1012, line: 75, baseType: !122, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !1012, line: 83, baseType: !2255, size: 320, offset: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !1012, line: 83, size: 320, elements: !2256)
!2256 = !{!2257, !2481, !2495, !2499, !2506}
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !1012, line: 84, baseType: !2258, size: 320)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2255, file: !1012, line: 84, size: 320, elements: !2259)
!2259 = !{!2260, !2271, !2475, !2480}
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !1012, line: 90, baseType: !2261, size: 128)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2258, file: !1012, line: 90, size: 128, elements: !2262)
!2262 = !{!2263, !2264, !2269, !2270}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2261, file: !1012, line: 91, baseType: !186, size: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !1012, line: 94, baseType: !2265, size: 128)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2261, file: !1012, line: 94, size: 128, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2265, file: !1012, line: 96, baseType: !51, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2265, file: !1012, line: 98, baseType: !7, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2261, file: !1012, line: 102, baseType: !186, size: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2261, file: !1012, line: 103, baseType: !186, size: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2258, file: !1012, line: 106, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2467, !2468, !2469, !2472, !2473, !2474}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2273, file: !15, line: 473, baseType: !618, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2273, file: !15, line: 474, baseType: !820, size: 128, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2273, file: !15, line: 475, baseType: !394, size: 320, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2273, file: !15, line: 476, baseType: !825, size: 32, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2273, file: !15, line: 477, baseType: !160, size: 32, offset: 544)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2273, file: !15, line: 482, baseType: !1411, size: 128, offset: 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2273, file: !15, line: 483, baseType: !122, size: 64, offset: 704)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2273, file: !15, line: 484, baseType: !122, size: 64, offset: 768)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2273, file: !15, line: 485, baseType: !2284, size: 64, offset: 832)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2287)
!2287 = !{!2288, !2292, !2362, !2366, !2370, !2376, !2382, !2386, !2391, !2395, !2399, !2403, !2431, !2435, !2439, !2443, !2448, !2452, !2459, !2463}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2286, file: !15, line: 405, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!109, !2250, !901}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2286, file: !15, line: 406, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!109, !737, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1012, line: 293, size: 1536, elements: !2298)
!2298 = !{!2299, !2329, !2343}
!2299 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !1012, line: 295, baseType: !2300, size: 512)
!2300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2297, file: !1012, line: 295, size: 512, elements: !2301)
!2301 = !{!2302, !2328}
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !1012, line: 296, baseType: !2303, size: 448)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2300, file: !1012, line: 296, size: 448, elements: !2304)
!2304 = !{!2305, !2306, !2315, !2316, !2317, !2326, !2327}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2303, file: !1012, line: 298, baseType: !122, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !1012, line: 299, baseType: !2307, size: 128, offset: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2303, file: !1012, line: 299, size: 128, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2307, file: !1012, line: 300, baseType: !186, size: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2307, file: !1012, line: 302, baseType: !2311, size: 128)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2307, file: !1012, line: 302, size: 128, elements: !2312)
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2311, file: !1012, line: 303, baseType: !51, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2311, file: !1012, line: 305, baseType: !7, size: 32, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2303, file: !1012, line: 310, baseType: !2272, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2303, file: !1012, line: 311, baseType: !122, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !1012, line: 312, baseType: !2318, size: 64, offset: 320)
!2318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2303, file: !1012, line: 312, size: 64, elements: !2319)
!2319 = !{!2320, !2321}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2318, file: !1012, line: 313, baseType: !51, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2318, file: !1012, line: 314, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1012, line: 257, baseType: !2323)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1012, line: 255, size: 64, elements: !2324)
!2324 = !{!2325}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2323, file: !1012, line: 256, baseType: !122, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2303, file: !1012, line: 316, baseType: !160, size: 32, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2303, file: !1012, line: 317, baseType: !160, size: 32, offset: 416)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2300, file: !1012, line: 323, baseType: !2251, size: 512, align: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !1012, line: 325, baseType: !2330, size: 512, offset: 512)
!2330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2297, file: !1012, line: 325, size: 512, elements: !2331)
!2331 = !{!2332, !2342}
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2330, file: !1012, line: 326, baseType: !2333, size: 320)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2330, file: !1012, line: 326, size: 320, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2333, file: !1012, line: 327, baseType: !122, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2333, file: !1012, line: 328, baseType: !122, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2333, file: !1012, line: 329, baseType: !122, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2333, file: !1012, line: 331, baseType: !160, size: 32, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2333, file: !1012, line: 332, baseType: !160, size: 32, offset: 224)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2333, file: !1012, line: 333, baseType: !160, size: 32, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2333, file: !1012, line: 335, baseType: !7, size: 32, offset: 288)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2330, file: !1012, line: 339, baseType: !2251, size: 512, align: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !1012, line: 341, baseType: !2344, size: 512, offset: 1024)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2297, file: !1012, line: 341, size: 512, elements: !2345)
!2345 = !{!2346, !2355, !2361}
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !1012, line: 342, baseType: !2347, size: 384)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !1012, line: 342, size: 384, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352, !2353, !2354}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2347, file: !1012, line: 343, baseType: !122, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2347, file: !1012, line: 344, baseType: !122, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2347, file: !1012, line: 346, baseType: !51, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2347, file: !1012, line: 347, baseType: !51, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2347, file: !1012, line: 348, baseType: !51, size: 64, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2347, file: !1012, line: 349, baseType: !51, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !1012, line: 352, baseType: !2356, size: 256)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !1012, line: 352, size: 256, elements: !2357)
!2357 = !{!2358, !2359, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2356, file: !1012, line: 353, baseType: !122, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2356, file: !1012, line: 354, baseType: !122, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2356, file: !1012, line: 356, baseType: !186, size: 128, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2344, file: !1012, line: 359, baseType: !2251, size: 512, align: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2286, file: !15, line: 409, baseType: !2363, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!109, !2272, !901}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2286, file: !15, line: 412, baseType: !2367, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!455, !2272, !2296}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2286, file: !15, line: 414, baseType: !2371, size: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2286, file: !15, line: 416, baseType: !2377, size: 64, offset: 320)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!109, !737, !2272, !127, !7, !2380, !2381}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2286, file: !15, line: 419, baseType: !2383, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!109, !737, !2272, !127, !7, !7, !2250, !51}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2286, file: !15, line: 424, baseType: !2387, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2390, !2272, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !118, line: 131, baseType: !362)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2286, file: !15, line: 425, baseType: !2392, size: 64, offset: 512)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2296, !117, !117}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2286, file: !15, line: 426, baseType: !2396, size: 64, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!455, !2296, !825}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2286, file: !15, line: 427, baseType: !2400, size: 64, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !2296}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2286, file: !15, line: 428, baseType: !2404, size: 64, offset: 704)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!773, !2407, !2429}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2416, !2417, !2418, !2419}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2408, file: !15, line: 374, baseType: !737, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2408, file: !15, line: 375, baseType: !127, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2408, file: !15, line: 376, baseType: !2413, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2407, !733}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2408, file: !15, line: 377, baseType: !51, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2408, file: !15, line: 378, baseType: !109, size: 32, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2408, file: !15, line: 379, baseType: !176, size: 16, offset: 288)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2408, file: !15, line: 380, baseType: !2420, size: 64, offset: 320)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2408, file: !15, line: 380, size: 64, elements: !2421)
!2421 = !{!2422, !2425}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2420, file: !15, line: 386, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2420, file: !15, line: 395, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!773, !51}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2286, file: !15, line: 433, baseType: !2432, size: 64, offset: 768)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!109, !2272, !2296, !2296, !36}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2286, file: !15, line: 435, baseType: !2436, size: 64, offset: 832)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!109, !2296}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2286, file: !15, line: 436, baseType: !2440, size: 64, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!455, !2296, !117, !117}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2286, file: !15, line: 438, baseType: !2444, size: 64, offset: 960)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !2296, !2447, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2286, file: !15, line: 439, baseType: !2449, size: 64, offset: 1024)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!109, !2272, !2250}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2286, file: !15, line: 442, baseType: !2453, size: 64, offset: 1088)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!109, !2456, !737, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2286, file: !15, line: 444, baseType: !2460, size: 64, offset: 1152)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !737}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2286, file: !15, line: 445, baseType: !2464, size: 64, offset: 1216)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!109, !2407, !2429}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !15, line: 486, baseType: !122, size: 64, offset: 896)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2273, file: !15, line: 487, baseType: !394, size: 320, offset: 960)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2273, file: !15, line: 488, baseType: !2470, size: 32, offset: 1280)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2471, line: 8, baseType: !419)
!2471 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2273, file: !15, line: 489, baseType: !239, size: 32, offset: 1312)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2273, file: !15, line: 490, baseType: !186, size: 128, offset: 1344)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2273, file: !15, line: 491, baseType: !51, size: 64, offset: 1472)
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !1012, line: 107, baseType: !2476, size: 64, offset: 192)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2258, file: !1012, line: 107, size: 64, elements: !2477)
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2476, file: !1012, line: 108, baseType: !122, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2476, file: !1012, line: 109, baseType: !122, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2258, file: !1012, line: 117, baseType: !122, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !1012, line: 119, baseType: !2482, size: 320)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2255, file: !1012, line: 119, size: 320, elements: !2483)
!2483 = !{!2484, !2485, !2488, !2489, !2490}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2482, file: !1012, line: 124, baseType: !122, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2482, file: !1012, line: 125, baseType: !2486, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1012, line: 125, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2482, file: !1012, line: 126, baseType: !122, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2482, file: !1012, line: 127, baseType: !122, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !1012, line: 128, baseType: !2491, size: 64, offset: 256)
!2491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2482, file: !1012, line: 128, size: 64, elements: !2492)
!2492 = !{!2493, !2494}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2491, file: !1012, line: 133, baseType: !122, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2491, file: !1012, line: 138, baseType: !136, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !1012, line: 141, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2255, file: !1012, line: 141, size: 64, elements: !2497)
!2497 = !{!2498}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2496, file: !1012, line: 142, baseType: !122, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !1012, line: 144, baseType: !2500, size: 128)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2255, file: !1012, line: 144, size: 128, elements: !2501)
!2501 = !{!2502, !2505}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2500, file: !1012, line: 146, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1012, line: 146, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2500, file: !1012, line: 147, baseType: !51, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2255, file: !1012, line: 161, baseType: !229, size: 128, align: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !1012, line: 164, baseType: !2508, size: 32, offset: 384)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !1012, line: 164, size: 32, elements: !2509)
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2508, file: !1012, line: 169, baseType: !160, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2508, file: !1012, line: 177, baseType: !7, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2251, file: !1012, line: 181, baseType: !160, size: 32, offset: 416)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2247, file: !2234, line: 42, baseType: !420, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2247, file: !2234, line: 43, baseType: !420, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1241, file: !1242, line: 1340, baseType: !2516, size: 64, offset: 20672)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1242, line: 69, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1241, file: !1242, line: 1351, baseType: !109, size: 32, offset: 20736)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1241, file: !1242, line: 1352, baseType: !109, size: 32, offset: 20768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1241, file: !1242, line: 1354, baseType: !122, size: 64, offset: 20800)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1241, file: !1242, line: 1364, baseType: !362, size: 64, offset: 20864)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1241, file: !1242, line: 1365, baseType: !362, size: 64, offset: 20928)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1241, file: !1242, line: 1412, baseType: !122, size: 64, offset: 20992)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1241, file: !1242, line: 1453, baseType: !2525, size: 64, offset: 21056)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1242, line: 1453, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1241, file: !1242, line: 1457, baseType: !2528, size: 64, offset: 21120)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2530)
!2530 = !{!2531, !2532, !2551, !2554, !2555, !2588, !2598}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2529, file: !44, line: 62, baseType: !43, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, scope: !2529, file: !44, line: 64, baseType: !2533, size: 192, offset: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2529, file: !44, line: 64, size: 192, elements: !2534)
!2534 = !{!2535, !2546}
!2535 = !DIDerivedType(tag: DW_TAG_member, scope: !2533, file: !44, line: 65, baseType: !2536, size: 192)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2533, file: !44, line: 65, size: 192, elements: !2537)
!2537 = !{!2538, !2545}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2536, file: !44, line: 66, baseType: !2539, size: 128)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2540, line: 50, size: 128, elements: !2541)
!2540 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2539, file: !2540, line: 52, baseType: !122, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2539, file: !2540, line: 54, baseType: !7, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2539, file: !2540, line: 55, baseType: !7, size: 32, offset: 96)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2536, file: !44, line: 67, baseType: !122, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, scope: !2533, file: !44, line: 70, baseType: !2547, size: 192)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2533, file: !44, line: 70, size: 192, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2547, file: !44, line: 71, baseType: !229, size: 128, align: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2547, file: !44, line: 72, baseType: !122, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2529, file: !44, line: 76, baseType: !2552, size: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2529, file: !44, line: 77, baseType: !122, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2529, file: !44, line: 79, baseType: !2556, size: 64, offset: 384)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2540, line: 25, size: 256, elements: !2558)
!2558 = !{!2559, !2565, !2569}
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !2540, line: 26, baseType: !2560, size: 128)
!2560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !2540, line: 26, size: 128, elements: !2561)
!2561 = !{!2562, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2560, file: !2540, line: 27, baseType: !2563, size: 128)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !1822)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2560, file: !2540, line: 28, baseType: !2563, size: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2557, file: !2540, line: 31, baseType: !2566, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2568)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2540, line: 23, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !2540, line: 33, baseType: !2570, size: 64, offset: 192)
!2570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !2540, line: 33, size: 64, elements: !2571)
!2571 = !{!2572, !2578, !2583}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2570, file: !2540, line: 38, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2570, file: !2540, line: 34, size: 64, elements: !2574)
!2574 = !{!2575, !2576, !2577}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2573, file: !2540, line: 35, baseType: !379, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2573, file: !2540, line: 36, baseType: !168, size: 8, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2573, file: !2540, line: 37, baseType: !168, size: 8, offset: 40)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2570, file: !2540, line: 42, baseType: !2579, size: 16)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2570, file: !2540, line: 39, size: 16, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2579, file: !2540, line: 40, baseType: !168, size: 8)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2579, file: !2540, line: 41, baseType: !168, size: 8, offset: 8)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2570, file: !2540, line: 46, baseType: !2584, size: 16)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2570, file: !2540, line: 43, size: 16, elements: !2585)
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2584, file: !2540, line: 44, baseType: !168, size: 8)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2584, file: !2540, line: 45, baseType: !168, size: 8, offset: 8)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2529, file: !44, line: 81, baseType: !2589, size: 64, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2590, file: !44, line: 86, baseType: !2552, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2590, file: !44, line: 87, baseType: !122, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2590, file: !44, line: 88, baseType: !122, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2590, file: !44, line: 89, baseType: !122, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2590, file: !44, line: 90, baseType: !455, size: 8, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2590, file: !44, line: 92, baseType: !2589, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2529, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1241, file: !1242, line: 1463, baseType: !2600, offset: 21184)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1242, line: 739, elements: !870)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1241, file: !1242, line: 1470, baseType: !229, size: 128, align: 64, offset: 21184)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1241, file: !1242, line: 1471, baseType: !284, size: 32, offset: 21312)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1241, file: !1242, line: 1472, baseType: !109, size: 32, offset: 21344)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1241, file: !1242, line: 1474, baseType: !1240, size: 64, offset: 21376)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1241, file: !1242, line: 1475, baseType: !2606, size: 320, offset: 21440)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2607, line: 11, size: 320, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2608 = !{!2609, !2610, !2611, !2616}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2606, file: !2607, line: 16, baseType: !297, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2606, file: !2607, line: 17, baseType: !122, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2606, file: !2607, line: 18, baseType: !2612, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !2615}
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2606, file: !2607, line: 19, baseType: !419, size: 32, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1241, file: !1242, line: 1478, baseType: !2618, size: 64, offset: 21760)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1242, line: 1478, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1241, file: !1242, line: 1482, baseType: !284, size: 32, offset: 21824)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1241, file: !1242, line: 1489, baseType: !51, size: 64, offset: 21888)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1241, file: !1242, line: 1504, baseType: !51, size: 64, offset: 21952)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1241, file: !1242, line: 1505, baseType: !363, size: 64, offset: 22016)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1241, file: !1242, line: 1506, baseType: !362, size: 64, offset: 22080)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1241, file: !1242, line: 1507, baseType: !363, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1241, file: !1242, line: 1508, baseType: !363, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1241, file: !1242, line: 1509, baseType: !363, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1241, file: !1242, line: 1510, baseType: !229, size: 128, align: 64, offset: 22208)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1241, file: !1242, line: 1511, baseType: !109, size: 32, offset: 22336)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1241, file: !1242, line: 1515, baseType: !2631, size: 64, offset: 22400)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !224, line: 56, size: 64, elements: !2632)
!2632 = !{!2633}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2631, file: !224, line: 57, baseType: !227, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1241, file: !1242, line: 1518, baseType: !2631, size: 64, offset: 22464)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1241, file: !1242, line: 1528, baseType: !229, size: 128, align: 64, offset: 22528)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1241, file: !1242, line: 1552, baseType: !2637, size: 35328, offset: 23040)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2638, line: 430, size: 35328, elements: !2639)
!2638 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2639 = !{!2640, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2669, !2670, !2671, !2672, !2673, !2674, !2677, !2678, !2679, !2680}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2637, file: !2638, line: 432, baseType: !2641, size: 192)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2642, size: 192, elements: !276)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2643, line: 16, size: 64, elements: !2644)
!2643 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2642, file: !2643, line: 17, baseType: !176, size: 16)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2642, file: !2643, line: 18, baseType: !176, size: 16, offset: 16)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2642, file: !2643, line: 19, baseType: !176, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2642, file: !2643, line: 19, baseType: !176, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2642, file: !2643, line: 19, baseType: !176, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2642, file: !2643, line: 19, baseType: !176, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2642, file: !2643, line: 19, baseType: !176, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2642, file: !2643, line: 20, baseType: !176, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2642, file: !2643, line: 20, baseType: !176, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2642, file: !2643, line: 20, baseType: !176, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2642, file: !2643, line: 20, baseType: !176, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2642, file: !2643, line: 20, baseType: !176, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2642, file: !2643, line: 20, baseType: !176, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2637, file: !2638, line: 436, baseType: !122, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2637, file: !2638, line: 440, baseType: !178, size: 16, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2637, file: !2638, line: 441, baseType: !178, size: 16, offset: 272)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2637, file: !2638, line: 442, baseType: !178, size: 16, offset: 288)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2637, file: !2638, line: 443, baseType: !178, size: 16, offset: 304)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2637, file: !2638, line: 447, baseType: !122, size: 64, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2637, file: !2638, line: 448, baseType: !122, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2637, file: !2638, line: 459, baseType: !2666, size: 256, offset: 448)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2667, size: 256, elements: !302)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2638, line: 428, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2637, file: !2638, line: 461, baseType: !122, size: 64, offset: 704)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2637, file: !2638, line: 463, baseType: !122, size: 64, offset: 768)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2637, file: !2638, line: 465, baseType: !122, size: 64, offset: 832)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2637, file: !2638, line: 466, baseType: !122, size: 64, offset: 896)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2637, file: !2638, line: 467, baseType: !122, size: 64, offset: 960)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2637, file: !2638, line: 473, baseType: !2675, size: 64, offset: 1024)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2638, line: 10, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2637, file: !2638, line: 480, baseType: !122, size: 64, offset: 1088)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2637, file: !2638, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2637, file: !2638, line: 491, baseType: !419, size: 32, offset: 1184)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2637, file: !2638, line: 501, baseType: !2681, size: 33792, offset: 1536)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2682, line: 448, size: 33792, elements: !2683)
!2682 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2683 = !{!2684, !2685, !2686, !2850, !2851, !2857, !2858}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2681, file: !2682, line: 461, baseType: !7, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2681, file: !2682, line: 468, baseType: !122, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2681, file: !2682, line: 476, baseType: !2687, size: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2682, line: 356, size: 33280, align: 512, elements: !2689)
!2689 = !{!2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2688, file: !2682, line: 358, baseType: !7, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2688, file: !2682, line: 361, baseType: !7, size: 32, offset: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2688, file: !2682, line: 364, baseType: !362, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2688, file: !2682, line: 367, baseType: !362, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2688, file: !2682, line: 370, baseType: !362, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2688, file: !2682, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2688, file: !2682, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2688, file: !2682, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2688, file: !2682, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2688, file: !2682, line: 397, baseType: !2700, size: 32768, offset: 512)
!2700 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2682, line: 348, size: 32768, elements: !2701)
!2701 = !{!2702, !2717, !2756, !2833, !2846}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2700, file: !2682, line: 349, baseType: !2703, size: 896)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2682, line: 12, size: 896, elements: !2704)
!2704 = !{!2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2716}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2703, file: !2682, line: 13, baseType: !419, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2703, file: !2682, line: 14, baseType: !419, size: 32, offset: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2703, file: !2682, line: 15, baseType: !419, size: 32, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2703, file: !2682, line: 16, baseType: !419, size: 32, offset: 96)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2703, file: !2682, line: 17, baseType: !419, size: 32, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2703, file: !2682, line: 18, baseType: !419, size: 32, offset: 160)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2703, file: !2682, line: 19, baseType: !419, size: 32, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2703, file: !2682, line: 22, baseType: !2713, size: 640, offset: 224)
!2713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 640, elements: !2714)
!2714 = !{!2715}
!2715 = !DISubrange(count: 20)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2703, file: !2682, line: 25, baseType: !419, size: 32, offset: 864)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2700, file: !2682, line: 350, baseType: !2718, size: 4096, align: 128)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2682, line: 34, size: 4096, align: 128, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2739, !2740, !2741, !2745, !2747, !2751}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2718, file: !2682, line: 35, baseType: !176, size: 16)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2718, file: !2682, line: 36, baseType: !176, size: 16, offset: 16)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2718, file: !2682, line: 37, baseType: !176, size: 16, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2718, file: !2682, line: 38, baseType: !176, size: 16, offset: 48)
!2724 = !DIDerivedType(tag: DW_TAG_member, scope: !2718, file: !2682, line: 39, baseType: !2725, size: 128, offset: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2718, file: !2682, line: 39, size: 128, elements: !2726)
!2726 = !{!2727, !2732}
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2725, file: !2682, line: 40, baseType: !2728, size: 128)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2725, file: !2682, line: 40, size: 128, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2728, file: !2682, line: 41, baseType: !362, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2728, file: !2682, line: 42, baseType: !362, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2725, file: !2682, line: 44, baseType: !2733, size: 128)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2725, file: !2682, line: 44, size: 128, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2733, file: !2682, line: 45, baseType: !419, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2733, file: !2682, line: 46, baseType: !419, size: 32, offset: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2733, file: !2682, line: 47, baseType: !419, size: 32, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2733, file: !2682, line: 48, baseType: !419, size: 32, offset: 96)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2718, file: !2682, line: 51, baseType: !419, size: 32, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2718, file: !2682, line: 52, baseType: !419, size: 32, offset: 224)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2718, file: !2682, line: 55, baseType: !2742, size: 1024, offset: 256)
!2742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 1024, elements: !2743)
!2743 = !{!2744}
!2744 = !DISubrange(count: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2718, file: !2682, line: 58, baseType: !2746, size: 2048, offset: 1280)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 2048, elements: !2018)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2718, file: !2682, line: 60, baseType: !2748, size: 384, offset: 3328)
!2748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 384, elements: !2749)
!2749 = !{!2750}
!2750 = !DISubrange(count: 12)
!2751 = !DIDerivedType(tag: DW_TAG_member, scope: !2718, file: !2682, line: 62, baseType: !2752, size: 384, offset: 3712)
!2752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2718, file: !2682, line: 62, size: 384, elements: !2753)
!2753 = !{!2754, !2755}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2752, file: !2682, line: 63, baseType: !2748, size: 384)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2752, file: !2682, line: 64, baseType: !2748, size: 384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2700, file: !2682, line: 351, baseType: !2757, size: 1088)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2682, line: 79, size: 1088, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2832}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2757, file: !2682, line: 80, baseType: !419, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2757, file: !2682, line: 81, baseType: !419, size: 32, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2757, file: !2682, line: 82, baseType: !419, size: 32, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2757, file: !2682, line: 83, baseType: !419, size: 32, offset: 96)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2757, file: !2682, line: 84, baseType: !419, size: 32, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2757, file: !2682, line: 85, baseType: !419, size: 32, offset: 160)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2757, file: !2682, line: 86, baseType: !419, size: 32, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2757, file: !2682, line: 88, baseType: !2713, size: 640, offset: 224)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2757, file: !2682, line: 89, baseType: !168, size: 8, offset: 864)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2757, file: !2682, line: 90, baseType: !168, size: 8, offset: 872)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2757, file: !2682, line: 91, baseType: !168, size: 8, offset: 880)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2757, file: !2682, line: 92, baseType: !168, size: 8, offset: 888)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2757, file: !2682, line: 93, baseType: !168, size: 8, offset: 896)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2757, file: !2682, line: 94, baseType: !168, size: 8, offset: 904)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2757, file: !2682, line: 95, baseType: !2774, size: 64, offset: 960)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2776, line: 11, size: 128, elements: !2777)
!2776 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2777 = !{!2778, !2779}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2775, file: !2776, line: 12, baseType: !733, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2775, file: !2776, line: 13, baseType: !2780, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2782, line: 103, size: 1344, elements: !2783)
!2782 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2812, !2813, !2814}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2781, file: !2782, line: 109, baseType: !122, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2781, file: !2782, line: 110, baseType: !122, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2781, file: !2782, line: 111, baseType: !122, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2781, file: !2782, line: 112, baseType: !122, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2781, file: !2782, line: 113, baseType: !122, size: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2781, file: !2782, line: 114, baseType: !122, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2781, file: !2782, line: 117, baseType: !122, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2781, file: !2782, line: 118, baseType: !122, size: 64, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2781, file: !2782, line: 119, baseType: !122, size: 64, offset: 512)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2781, file: !2782, line: 120, baseType: !122, size: 64, offset: 576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2781, file: !2782, line: 121, baseType: !122, size: 64, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2781, file: !2782, line: 122, baseType: !122, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2781, file: !2782, line: 123, baseType: !122, size: 64, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2781, file: !2782, line: 124, baseType: !122, size: 64, offset: 832)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2781, file: !2782, line: 125, baseType: !122, size: 64, offset: 896)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2781, file: !2782, line: 139, baseType: !122, size: 64, offset: 960)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2781, file: !2782, line: 142, baseType: !122, size: 64, offset: 1024)
!2801 = !DIDerivedType(tag: DW_TAG_member, scope: !2781, file: !2782, line: 144, baseType: !2802, size: 64, offset: 1088)
!2802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2781, file: !2782, line: 144, size: 64, elements: !2803)
!2803 = !{!2804, !2805, !2806}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2802, file: !2782, line: 146, baseType: !176, size: 16)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2802, file: !2782, line: 148, baseType: !362, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2802, file: !2782, line: 150, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2782, line: 59, size: 64, elements: !2808)
!2808 = !{!2809, !2810, !2811}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2807, file: !2782, line: 61, baseType: !362, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2807, file: !2782, line: 63, baseType: !362, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2807, file: !2782, line: 65, baseType: !362, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2781, file: !2782, line: 153, baseType: !122, size: 64, offset: 1152)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2781, file: !2782, line: 154, baseType: !122, size: 64, offset: 1216)
!2814 = !DIDerivedType(tag: DW_TAG_member, scope: !2781, file: !2782, line: 156, baseType: !2815, size: 64, offset: 1280)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2781, file: !2782, line: 156, size: 64, elements: !2816)
!2816 = !{!2817, !2818, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2815, file: !2782, line: 158, baseType: !176, size: 16)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2815, file: !2782, line: 160, baseType: !362, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2815, file: !2782, line: 162, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2782, line: 69, size: 64, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2820, file: !2782, line: 71, baseType: !362, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2820, file: !2782, line: 73, baseType: !362, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2820, file: !2782, line: 75, baseType: !362, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2820, file: !2782, line: 77, baseType: !362, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2820, file: !2782, line: 80, baseType: !362, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2820, file: !2782, line: 83, baseType: !362, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2820, file: !2782, line: 86, baseType: !362, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2820, file: !2782, line: 88, baseType: !362, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2820, file: !2782, line: 93, baseType: !362, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2820, file: !2782, line: 100, baseType: !362, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2757, file: !2682, line: 96, baseType: !419, size: 32, offset: 1024)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2700, file: !2682, line: 352, baseType: !2834, size: 4608, align: 512)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2682, line: 333, size: 4608, align: 512, elements: !2835)
!2835 = !{!2836, !2837, !2844}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2834, file: !2682, line: 334, baseType: !2718, size: 4096, align: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2834, file: !2682, line: 335, baseType: !2838, size: 512, offset: 4096)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2682, line: 312, size: 512, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2838, file: !2682, line: 313, baseType: !362, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2838, file: !2682, line: 314, baseType: !362, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2838, file: !2682, line: 315, baseType: !2843, size: 384, offset: 128)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 384, elements: !442)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2834, file: !2682, line: 336, baseType: !2845, offset: 4608)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !321)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2700, file: !2682, line: 353, baseType: !2847, size: 32768)
!2847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 32768, elements: !2848)
!2848 = !{!2849}
!2849 = !DISubrange(count: 4096)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2681, file: !2682, line: 484, baseType: !2687, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2681, file: !2682, line: 491, baseType: !2852, size: 128, offset: 256)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2682, line: 404, size: 128, elements: !2853)
!2853 = !{!2854, !2855, !2856}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2852, file: !2682, line: 424, baseType: !362, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2852, file: !2682, line: 432, baseType: !7, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2852, file: !2682, line: 440, baseType: !7, size: 32, offset: 96)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2681, file: !2682, line: 498, baseType: !2852, size: 128, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2681, file: !2682, line: 508, baseType: !2688, size: 33280, align: 512, offset: 512)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1222, file: !1223, line: 16, baseType: !306, size: 192, offset: 512)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1222, file: !1223, line: 17, baseType: !160, size: 32, offset: 704)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !830, file: !15, line: 1240, baseType: !51, size: 64, offset: 6912)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !830, file: !15, line: 1243, baseType: !419, size: 32, offset: 6976)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !830, file: !15, line: 1245, baseType: !410, size: 64, offset: 7040)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !830, file: !15, line: 1246, baseType: !410, size: 64, offset: 7104)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !830, file: !15, line: 1248, baseType: !420, size: 32, offset: 7168)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !830, file: !15, line: 1249, baseType: !2867, size: 64, offset: 7232)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !830, file: !15, line: 1252, baseType: !2870, size: 256, offset: 7296)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !2743)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !830, file: !15, line: 1253, baseType: !2872, size: 128, offset: 7552)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2873, line: 21, baseType: !2874)
!2873 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2873, line: 19, size: 128, elements: !2875)
!2875 = !{!2876}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2874, file: !2873, line: 20, baseType: !2877, size: 128)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 128, elements: !1822)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !830, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !830, file: !15, line: 1261, baseType: !132, size: 256, offset: 7744)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !830, file: !15, line: 1267, baseType: !458, size: 64, offset: 8000)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !830, file: !15, line: 1269, baseType: !2882, size: 64, offset: 8064)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2884)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !580, line: 128, size: 1024, align: 512, elements: !2885)
!2885 = !{!2886, !2890, !2891, !2898, !2904, !2908, !2912, !2916, !2917, !2921, !2925, !2930, !2934}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2884, file: !580, line: 129, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!109, !578, !7}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2884, file: !580, line: 130, baseType: !2887, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2884, file: !580, line: 131, baseType: !2892, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!109, !2895, !2897}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2884, file: !580, line: 132, baseType: !2899, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!109, !2895, !7, !458, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2884, file: !580, line: 134, baseType: !2905, size: 64, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!109, !2895}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2884, file: !580, line: 135, baseType: !2909, size: 64, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!109, !578}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2884, file: !580, line: 136, baseType: !2913, size: 64, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !578}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2884, file: !580, line: 137, baseType: !2913, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2884, file: !580, line: 138, baseType: !2918, size: 64, offset: 512)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !578, !618}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2884, file: !580, line: 139, baseType: !2922, size: 64, offset: 576)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!115, !578, !115, !109}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2884, file: !580, line: 140, baseType: !2926, size: 64, offset: 640)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!573, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2884, file: !580, line: 141, baseType: !2931, size: 64, offset: 704)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!109, !742, !455}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2884, file: !580, line: 142, baseType: !2935, size: 64, offset: 768)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!578, !578, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !830, file: !15, line: 1271, baseType: !2941, size: 448, offset: 8128)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1003, line: 63, size: 448, elements: !2942)
!2942 = !{!2943, !2948, !2949, !2950, !2951, !2952, !2953}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2941, file: !1003, line: 64, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!122, !2947, !1001}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2941, file: !1003, line: 66, baseType: !2944, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2941, file: !1003, line: 69, baseType: !733, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2941, file: !1003, line: 70, baseType: !109, size: 32, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2941, file: !1003, line: 71, baseType: !7, size: 32, offset: 224)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2941, file: !1003, line: 74, baseType: !186, size: 128, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2941, file: !1003, line: 85, baseType: !2954, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !830, file: !15, line: 1274, baseType: !136, size: 64, offset: 8576)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !830, file: !15, line: 1280, baseType: !136, size: 64, offset: 8640)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !830, file: !15, line: 1283, baseType: !109, size: 32, offset: 8704)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !830, file: !15, line: 1286, baseType: !2470, size: 32, offset: 8736)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !830, file: !15, line: 1289, baseType: !2960, size: 64, offset: 8768)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1660, line: 18, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !830, file: !15, line: 1290, baseType: !293, size: 64, offset: 8832)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !830, file: !15, line: 1297, baseType: !540, size: 64, offset: 8896)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !830, file: !15, line: 1304, baseType: !2965, size: 64, offset: 8960)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2966, line: 49, size: 64, elements: !2967)
!2966 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2967 = !{!2968}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2965, file: !2966, line: 50, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2966, line: 41, size: 512, align: 512, elements: !2971)
!2971 = !{!2972, !2973, !2978}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2970, file: !2966, line: 43, baseType: !239, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2970, file: !2966, line: 45, baseType: !2974, size: 192, offset: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2966, line: 29, size: 192, elements: !2975)
!2975 = !{!2976, !2977}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2974, file: !2966, line: 30, baseType: !186, size: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2974, file: !2966, line: 32, baseType: !733, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2970, file: !2966, line: 46, baseType: !733, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !830, file: !15, line: 1305, baseType: !2965, size: 64, offset: 9024)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !830, file: !15, line: 1306, baseType: !229, size: 128, align: 64, offset: 9088)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !830, file: !15, line: 1307, baseType: !1659, size: 256, offset: 9216)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !830, file: !15, line: 1309, baseType: !132, size: 256, offset: 9472)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !830, file: !15, line: 1314, baseType: !109, size: 32, offset: 9728)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !830, file: !15, line: 1317, baseType: !239, size: 32, align: 512, offset: 10240)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !830, file: !15, line: 1318, baseType: !186, size: 128, offset: 10304)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !830, file: !15, line: 1320, baseType: !239, size: 32, offset: 10432)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !830, file: !15, line: 1321, baseType: !186, size: 128, offset: 10496)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !619, file: !15, line: 656, baseType: !2272, size: 64, offset: 512)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !619, file: !15, line: 659, baseType: !51, size: 64, offset: 576)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !619, file: !15, line: 663, baseType: !122, size: 64, offset: 640)
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !15, line: 671, baseType: !2992, size: 32, offset: 704)
!2992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !15, line: 671, size: 32, elements: !2993)
!2993 = !{!2994, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2992, file: !15, line: 672, baseType: !2995, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2992, file: !15, line: 673, baseType: !7, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !619, file: !15, line: 675, baseType: !693, size: 32, offset: 736)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !619, file: !15, line: 676, baseType: !127, size: 64, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !619, file: !15, line: 677, baseType: !729, size: 128, offset: 832)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !619, file: !15, line: 678, baseType: !729, size: 128, offset: 960)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !619, file: !15, line: 679, baseType: !729, size: 128, offset: 1088)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !619, file: !15, line: 680, baseType: !239, size: 32, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !619, file: !15, line: 681, baseType: !178, size: 16, offset: 1248)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !619, file: !15, line: 682, baseType: !168, size: 8, offset: 1264)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !619, file: !15, line: 683, baseType: !168, size: 8, offset: 1272)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !619, file: !15, line: 684, baseType: !1135, size: 64, offset: 1280)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !619, file: !15, line: 691, baseType: !122, size: 64, offset: 1344)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !619, file: !15, line: 692, baseType: !394, size: 320, offset: 1408)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !619, file: !15, line: 694, baseType: !122, size: 64, offset: 1728)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !619, file: !15, line: 695, baseType: !122, size: 64, offset: 1792)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !619, file: !15, line: 697, baseType: !297, size: 128, offset: 1856)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !619, file: !15, line: 698, baseType: !186, size: 128, offset: 1984)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !619, file: !15, line: 707, baseType: !186, size: 128, offset: 2112)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !619, file: !15, line: 708, baseType: !186, size: 128, offset: 2240)
!3015 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !15, line: 709, baseType: !3016, size: 128, offset: 2368)
!3016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !15, line: 709, size: 128, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3016, file: !15, line: 710, baseType: !293, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3016, file: !15, line: 711, baseType: !229, size: 128, align: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !619, file: !15, line: 713, baseType: !138, size: 64, offset: 2496)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !619, file: !15, line: 714, baseType: !138, size: 64, offset: 2560)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !619, file: !15, line: 715, baseType: !160, size: 32, offset: 2624)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !619, file: !15, line: 716, baseType: !160, size: 32, offset: 2656)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !619, file: !15, line: 717, baseType: !160, size: 32, offset: 2688)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !619, file: !15, line: 719, baseType: !160, size: 32, offset: 2720)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !15, line: 721, baseType: !3027, size: 64, offset: 2752)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !15, line: 721, size: 64, elements: !3028)
!3028 = !{!3029, !3210}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3027, file: !15, line: 722, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !3033)
!3033 = !{!3034, !3035, !3039, !3043, !3047, !3048, !3049, !3055, !3068, !3076, !3080, !3081, !3138, !3139, !3143, !3148, !3149, !3153, !3157, !3163, !3164, !3168, !3169, !3173, !3177, !3178, !3183, !3187, !3191, !3195, !3199, !3200, !3206}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3032, file: !15, line: 1915, baseType: !862, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3032, file: !15, line: 1916, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!127, !737, !127, !109}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3032, file: !15, line: 1917, baseType: !3040, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!773, !737, !115, !117, !200}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3032, file: !15, line: 1918, baseType: !3044, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!773, !737, !458, !117, !200}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3032, file: !15, line: 1919, baseType: !2404, size: 64, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3032, file: !15, line: 1920, baseType: !2404, size: 64, offset: 320)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3032, file: !15, line: 1921, baseType: !3050, size: 64, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!109, !2407, !3053, !7}
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3032, file: !15, line: 1923, baseType: !3056, size: 64, offset: 448)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!109, !737, !3059}
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3061)
!3061 = !{!3062, !3067}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3060, file: !15, line: 1859, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!455, !3059, !458, !109, !127, !362, !7}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3060, file: !15, line: 1860, baseType: !127, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3032, file: !15, line: 1924, baseType: !3069, size: 64, offset: 512)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!3072, !737, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3073, line: 59, baseType: !7)
!3073 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !15, line: 61, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3032, file: !15, line: 1925, baseType: !3077, size: 64, offset: 576)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!733, !737, !7, !122}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3032, file: !15, line: 1926, baseType: !3077, size: 64, offset: 640)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3032, file: !15, line: 1927, baseType: !3082, size: 64, offset: 704)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!109, !737, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1012, line: 625, size: 1344, elements: !3087)
!3087 = !{!3088, !3097, !3098, !3104, !3111, !3112, !3117, !3118, !3123, !3124, !3127, !3131, !3132, !3133, !3134, !3135, !3136}
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !3086, file: !1012, line: 628, baseType: !3089, size: 128)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3086, file: !1012, line: 628, size: 128, elements: !3090)
!3090 = !{!3091, !3096}
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !1012, line: 629, baseType: !3092, size: 128)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !1012, line: 629, size: 128, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3092, file: !1012, line: 631, baseType: !122, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3092, file: !1012, line: 632, baseType: !122, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3089, file: !1012, line: 635, baseType: !229, size: 128, align: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3086, file: !1012, line: 639, baseType: !1528, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3086, file: !1012, line: 640, baseType: !3099, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1563, line: 297, baseType: !3100)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1563, line: 297, size: 64, elements: !3101)
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3100, file: !1563, line: 297, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1568, line: 19, baseType: !122)
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !3086, file: !1012, line: 646, baseType: !3105, size: 64, offset: 256)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3086, file: !1012, line: 646, size: 64, elements: !3106)
!3106 = !{!3107, !3110}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3105, file: !1012, line: 647, baseType: !3108, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3109)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1012, line: 542, baseType: !122)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3105, file: !1012, line: 648, baseType: !3109, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3086, file: !1012, line: 666, baseType: !109, size: 32, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3086, file: !1012, line: 667, baseType: !3113, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1012, line: 579, size: 320, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3114, file: !1012, line: 580, baseType: !394, size: 320)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3086, file: !1012, line: 670, baseType: !455, size: 8, offset: 448)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3086, file: !1012, line: 681, baseType: !3119, size: 256, offset: 512)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3086, file: !1012, line: 678, size: 256, elements: !3120)
!3120 = !{!3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3119, file: !1012, line: 679, baseType: !386, size: 192, align: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3119, file: !1012, line: 680, baseType: !122, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3086, file: !1012, line: 689, baseType: !186, size: 128, offset: 768)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3086, file: !1012, line: 691, baseType: !3125, size: 64, offset: 896)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1012, line: 691, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3086, file: !1012, line: 694, baseType: !3128, size: 64, offset: 960)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3130)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1012, line: 694, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3086, file: !1012, line: 697, baseType: !122, size: 64, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3086, file: !1012, line: 699, baseType: !737, size: 64, offset: 1088)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3086, file: !1012, line: 700, baseType: !51, size: 64, offset: 1152)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3086, file: !1012, line: 711, baseType: !136, size: 64, offset: 1216)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3086, file: !1012, line: 717, baseType: !2207, size: 64, offset: 1280)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3086, file: !1012, line: 722, baseType: !3137, offset: 1344)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1012, line: 570, elements: !870)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3032, file: !15, line: 1928, baseType: !122, size: 64, offset: 768)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3032, file: !15, line: 1929, baseType: !3140, size: 64, offset: 832)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!109, !618, !737}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3032, file: !15, line: 1930, baseType: !3144, size: 64, offset: 896)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!109, !737, !3147}
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !51)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3032, file: !15, line: 1931, baseType: !3140, size: 64, offset: 960)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3032, file: !15, line: 1932, baseType: !3150, size: 64, offset: 1024)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!109, !737, !127, !127, !109}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3032, file: !15, line: 1933, baseType: !3154, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!109, !109, !737, !109}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3032, file: !15, line: 1934, baseType: !3158, size: 64, offset: 1152)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!109, !737, !109, !3161}
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3032, file: !15, line: 1935, baseType: !1552, size: 64, offset: 1216)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3032, file: !15, line: 1936, baseType: !3165, size: 64, offset: 1280)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!109, !109}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3032, file: !15, line: 1937, baseType: !3158, size: 64, offset: 1344)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3032, file: !15, line: 1938, baseType: !3170, size: 64, offset: 1408)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!773, !2244, !737, !200, !117, !7}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3032, file: !15, line: 1939, baseType: !3174, size: 64, offset: 1472)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!773, !737, !200, !2244, !117, !7}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3032, file: !15, line: 1940, baseType: !2460, size: 64, offset: 1536)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3032, file: !15, line: 1941, baseType: !3179, size: 64, offset: 1600)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!109, !737, !109, !3182, !2381}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3032, file: !15, line: 1942, baseType: !3184, size: 64, offset: 1664)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!733, !737, !109, !127, !127}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3032, file: !15, line: 1944, baseType: !3188, size: 64, offset: 1728)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !110, !737}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3032, file: !15, line: 1948, baseType: !3192, size: 64, offset: 1792)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!773, !737, !127, !737, !127, !117, !7}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3032, file: !15, line: 1950, baseType: !3196, size: 64, offset: 1856)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!127, !737, !127, !737, !127, !127, !7}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3032, file: !15, line: 1953, baseType: !3150, size: 64, offset: 1920)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3032, file: !15, line: 1954, baseType: !3201, size: 64, offset: 1984)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!109, !3204, !7}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3032, file: !15, line: 1955, baseType: !3207, size: 64, offset: 2048)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!109, !3204, !3053, !7}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3027, file: !15, line: 723, baseType: !889, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !619, file: !15, line: 725, baseType: !3212, size: 64, offset: 2816)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !619, file: !15, line: 726, baseType: !2273, size: 1536, align: 64, offset: 2880)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !619, file: !15, line: 727, baseType: !186, size: 128, offset: 4416)
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !15, line: 728, baseType: !3217, size: 64, offset: 4544)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !15, line: 728, size: 64, elements: !3218)
!3218 = !{!3219, !3220, !3223, !3224}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3217, file: !15, line: 729, baseType: !2244, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3217, file: !15, line: 730, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3217, file: !15, line: 731, baseType: !115, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3217, file: !15, line: 732, baseType: !7, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !619, file: !15, line: 735, baseType: !420, size: 32, offset: 4608)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !619, file: !15, line: 738, baseType: !420, size: 32, offset: 4640)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !619, file: !15, line: 739, baseType: !2867, size: 64, offset: 4672)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !619, file: !15, line: 750, baseType: !51, size: 64, offset: 4736)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !579, file: !580, line: 91, baseType: !3230, size: 256, offset: 448)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !2743)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !579, file: !580, line: 94, baseType: !3232, size: 64, offset: 704)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3233, line: 25, size: 64, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3234 = !{!3235}
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !3233, line: 26, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3232, file: !3233, line: 26, size: 64, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3236, file: !3233, line: 28, baseType: !363, size: 64, align: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !3233, line: 30, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !3233, line: 30, size: 64, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3240, file: !3233, line: 31, baseType: !239, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3240, file: !3233, line: 32, baseType: !109, size: 32, offset: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !579, file: !580, line: 95, baseType: !2882, size: 64, offset: 768)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !579, file: !580, line: 96, baseType: !829, size: 64, offset: 832)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !579, file: !580, line: 97, baseType: !122, size: 64, offset: 896)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !579, file: !580, line: 98, baseType: !51, size: 64, offset: 960)
!3248 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !580, line: 100, baseType: !3249, size: 128, offset: 1024)
!3249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !580, line: 100, size: 128, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3249, file: !580, line: 101, baseType: !186, size: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3249, file: !580, line: 102, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !579, file: !580, line: 104, baseType: !186, size: 128, offset: 1152)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !579, file: !580, line: 105, baseType: !186, size: 128, offset: 1280)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !579, file: !580, line: 113, baseType: !3257, size: 128, offset: 1408)
!3257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !580, line: 109, size: 128, elements: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3257, file: !580, line: 110, baseType: !297, size: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3257, file: !580, line: 111, baseType: !594, size: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3257, file: !580, line: 112, baseType: !229, size: 128, align: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !574, file: !575, line: 72, baseType: !829, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !574, file: !575, line: 73, baseType: !109, size: 32, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !574, file: !575, line: 74, baseType: !658, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !569, file: !570, line: 10, baseType: !578, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !217, file: !15, line: 1015, baseType: !618, size: 64, offset: 1344)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !217, file: !15, line: 1016, baseType: !3030, size: 64, offset: 1408)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !217, file: !15, line: 1018, baseType: !362, size: 64, offset: 1472)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !217, file: !15, line: 1020, baseType: !51, size: 64, offset: 1536)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !217, file: !15, line: 1023, baseType: !51, size: 64, offset: 1600)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !217, file: !15, line: 1027, baseType: !3272, size: 64, offset: 1664)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !217, file: !15, line: 1029, baseType: !2272, size: 64, offset: 1728)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !217, file: !15, line: 1030, baseType: !2470, size: 32, offset: 1792)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !217, file: !15, line: 1031, baseType: !2470, size: 32, offset: 1824)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !111, file: !112, line: 29, baseType: !51, size: 64, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3279, line: 14, size: 33088, elements: !3280)
!3279 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3280 = !{!3281, !3283, !3289, !3290}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3278, file: !3279, line: 15, baseType: !3282, size: 32768)
!3282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 32768, elements: !2848)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3278, file: !3279, line: 16, baseType: !3284, size: 192, offset: 32768)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !93, line: 18, size: 192, elements: !3285)
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3284, file: !93, line: 19, baseType: !115, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3284, file: !93, line: 20, baseType: !117, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3284, file: !93, line: 21, baseType: !117, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3278, file: !3279, line: 17, baseType: !117, size: 64, offset: 32960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3278, file: !3279, line: 18, baseType: !109, size: 32, offset: 33024)
!3291 = !{!3292, !3293, !3294}
!3292 = !DILocalVariable(name: "m", arg: 1, scope: !106, file: !3, line: 51, type: !110)
!3293 = !DILocalVariable(name: "s", arg: 2, scope: !106, file: !3, line: 51, type: !3277)
!3294 = !DILocalVariable(name: "ret", scope: !106, file: !3, line: 53, type: !109)
!3295 = !DILocation(line: 51, column: 38, scope: !106)
!3296 = !DILocation(line: 51, column: 59, scope: !106)
!3297 = !DILocation(line: 53, column: 2, scope: !106)
!3298 = !DILocation(line: 53, column: 6, scope: !106)
!3299 = !DILocation(line: 55, column: 19, scope: !106)
!3300 = !DILocation(line: 55, column: 2, scope: !106)
!3301 = !DILocation(line: 57, column: 26, scope: !106)
!3302 = !DILocation(line: 57, column: 30, scope: !106)
!3303 = !DILocation(line: 57, column: 33, scope: !106)
!3304 = !DILocation(line: 57, column: 8, scope: !106)
!3305 = !DILocation(line: 57, column: 6, scope: !106)
!3306 = !DILocation(line: 64, column: 7, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !106, file: !3, line: 64, column: 6)
!3308 = !DILocation(line: 64, column: 6, scope: !106)
!3309 = !DILocation(line: 65, column: 18, scope: !3307)
!3310 = !DILocation(line: 65, column: 3, scope: !3307)
!3311 = !DILocation(line: 67, column: 9, scope: !106)
!3312 = !DILocation(line: 68, column: 1, scope: !106)
!3313 = !DILocation(line: 67, column: 2, scope: !106)
!3314 = distinct !DISubprogram(name: "__trace_seq_init", scope: !3, file: !3, line: 36, type: !3315, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !3277}
!3317 = !{!3318}
!3318 = !DILocalVariable(name: "s", arg: 1, scope: !3314, file: !3, line: 36, type: !3277)
!3319 = !DILocation(line: 36, column: 55, scope: !3314)
!3320 = !DILocation(line: 38, column: 6, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 38, column: 6)
!3322 = !DILocation(line: 38, column: 6, scope: !3314)
!3323 = !DILocation(line: 39, column: 18, scope: !3321)
!3324 = !DILocation(line: 39, column: 3, scope: !3321)
!3325 = !DILocation(line: 40, column: 1, scope: !3314)
!3326 = !DISubprogram(name: "seq_buf_print_seq", scope: !93, file: !93, line: 153, type: !3327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!109, !110, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3330 = distinct !DISubprogram(name: "trace_seq_init", scope: !3279, file: !3279, line: 22, type: !3315, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3331)
!3331 = !{!3332}
!3332 = !DILocalVariable(name: "s", arg: 1, scope: !3330, file: !3279, line: 22, type: !3277)
!3333 = !DILocation(line: 22, column: 34, scope: !3330)
!3334 = !DILocation(line: 24, column: 16, scope: !3330)
!3335 = !DILocation(line: 24, column: 19, scope: !3330)
!3336 = !DILocation(line: 24, column: 24, scope: !3330)
!3337 = !DILocation(line: 24, column: 27, scope: !3330)
!3338 = !DILocation(line: 24, column: 2, scope: !3330)
!3339 = !DILocation(line: 25, column: 2, scope: !3330)
!3340 = !DILocation(line: 25, column: 5, scope: !3330)
!3341 = !DILocation(line: 25, column: 10, scope: !3330)
!3342 = !DILocation(line: 26, column: 2, scope: !3330)
!3343 = !DILocation(line: 26, column: 5, scope: !3330)
!3344 = !DILocation(line: 26, column: 13, scope: !3330)
!3345 = !DILocation(line: 27, column: 1, scope: !3330)
!3346 = distinct !DISubprogram(name: "trace_seq_printf", scope: !3, file: !3, line: 81, type: !3347, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{null, !3277, !458, null}
!3349 = !{!3350, !3351, !3352, !3353}
!3350 = !DILocalVariable(name: "s", arg: 1, scope: !3346, file: !3, line: 81, type: !3277)
!3351 = !DILocalVariable(name: "fmt", arg: 2, scope: !3346, file: !3, line: 81, type: !458)
!3352 = !DILocalVariable(name: "save_len", scope: !3346, file: !3, line: 83, type: !7)
!3353 = !DILocalVariable(name: "ap", scope: !3346, file: !3, line: 84, type: !3354)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3355, line: 5, baseType: !3356)
!3355 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !3357)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3358, size: 192, elements: !1480)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3358, file: !3, line: 84, baseType: !7, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3358, file: !3, line: 84, baseType: !7, size: 32, offset: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3358, file: !3, line: 84, baseType: !51, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3358, file: !3, line: 84, baseType: !51, size: 64, offset: 128)
!3364 = !DILocation(line: 81, column: 41, scope: !3346)
!3365 = !DILocation(line: 81, column: 56, scope: !3346)
!3366 = !DILocation(line: 83, column: 2, scope: !3346)
!3367 = !DILocation(line: 83, column: 15, scope: !3346)
!3368 = !DILocation(line: 83, column: 26, scope: !3346)
!3369 = !DILocation(line: 83, column: 29, scope: !3346)
!3370 = !DILocation(line: 83, column: 33, scope: !3346)
!3371 = !DILocation(line: 84, column: 2, scope: !3346)
!3372 = !DILocation(line: 84, column: 10, scope: !3346)
!3373 = !DILocation(line: 86, column: 6, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 86, column: 6)
!3375 = !DILocation(line: 86, column: 9, scope: !3374)
!3376 = !DILocation(line: 86, column: 6, scope: !3346)
!3377 = !DILocation(line: 87, column: 3, scope: !3374)
!3378 = !DILocation(line: 89, column: 19, scope: !3346)
!3379 = !DILocation(line: 89, column: 2, scope: !3346)
!3380 = !DILocation(line: 91, column: 2, scope: !3346)
!3381 = !DILocation(line: 92, column: 19, scope: !3346)
!3382 = !DILocation(line: 92, column: 22, scope: !3346)
!3383 = !DILocation(line: 92, column: 27, scope: !3346)
!3384 = !DILocation(line: 92, column: 32, scope: !3346)
!3385 = !DILocation(line: 92, column: 2, scope: !3346)
!3386 = !DILocation(line: 93, column: 2, scope: !3346)
!3387 = !DILocation(line: 96, column: 6, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 96, column: 6)
!3389 = !DILocation(line: 96, column: 6, scope: !3346)
!3390 = !DILocation(line: 97, column: 16, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 96, column: 49)
!3392 = !DILocation(line: 97, column: 3, scope: !3391)
!3393 = !DILocation(line: 97, column: 6, scope: !3391)
!3394 = !DILocation(line: 97, column: 10, scope: !3391)
!3395 = !DILocation(line: 97, column: 14, scope: !3391)
!3396 = !DILocation(line: 98, column: 3, scope: !3391)
!3397 = !DILocation(line: 98, column: 6, scope: !3391)
!3398 = !DILocation(line: 98, column: 11, scope: !3391)
!3399 = !DILocation(line: 99, column: 2, scope: !3391)
!3400 = !DILocation(line: 100, column: 1, scope: !3346)
!3401 = !DISubprogram(name: "seq_buf_vprintf", scope: !93, file: !93, line: 152, type: !3402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!109, !3329, !458, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3405 = distinct !DISubprogram(name: "seq_buf_has_overflowed", scope: !93, file: !93, line: 50, type: !3406, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!455, !3329}
!3408 = !{!3409}
!3409 = !DILocalVariable(name: "s", arg: 1, scope: !3405, file: !93, line: 50, type: !3329)
!3410 = !DILocation(line: 50, column: 40, scope: !3405)
!3411 = !DILocation(line: 52, column: 9, scope: !3405)
!3412 = !DILocation(line: 52, column: 12, scope: !3405)
!3413 = !DILocation(line: 52, column: 18, scope: !3405)
!3414 = !DILocation(line: 52, column: 21, scope: !3405)
!3415 = !DILocation(line: 52, column: 16, scope: !3405)
!3416 = !DILocation(line: 52, column: 2, scope: !3405)
!3417 = distinct !DISubprogram(name: "trace_seq_bitmask", scope: !3, file: !3, line: 111, type: !3418, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3422)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !3277, !3420, !109}
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!3422 = !{!3423, !3424, !3425, !3426}
!3423 = !DILocalVariable(name: "s", arg: 1, scope: !3417, file: !3, line: 111, type: !3277)
!3424 = !DILocalVariable(name: "maskp", arg: 2, scope: !3417, file: !3, line: 111, type: !3420)
!3425 = !DILocalVariable(name: "nmaskbits", arg: 3, scope: !3417, file: !3, line: 112, type: !109)
!3426 = !DILocalVariable(name: "save_len", scope: !3417, file: !3, line: 114, type: !7)
!3427 = !DILocation(line: 111, column: 42, scope: !3417)
!3428 = !DILocation(line: 111, column: 66, scope: !3417)
!3429 = !DILocation(line: 112, column: 13, scope: !3417)
!3430 = !DILocation(line: 114, column: 2, scope: !3417)
!3431 = !DILocation(line: 114, column: 15, scope: !3417)
!3432 = !DILocation(line: 114, column: 26, scope: !3417)
!3433 = !DILocation(line: 114, column: 29, scope: !3417)
!3434 = !DILocation(line: 114, column: 33, scope: !3417)
!3435 = !DILocation(line: 116, column: 6, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 116, column: 6)
!3437 = !DILocation(line: 116, column: 9, scope: !3436)
!3438 = !DILocation(line: 116, column: 6, scope: !3417)
!3439 = !DILocation(line: 117, column: 3, scope: !3436)
!3440 = !DILocation(line: 119, column: 19, scope: !3417)
!3441 = !DILocation(line: 119, column: 2, scope: !3417)
!3442 = !DILocation(line: 121, column: 18, scope: !3417)
!3443 = !DILocation(line: 121, column: 21, scope: !3417)
!3444 = !DILocation(line: 121, column: 34, scope: !3417)
!3445 = !DILocation(line: 121, column: 45, scope: !3417)
!3446 = !DILocation(line: 121, column: 2, scope: !3417)
!3447 = !DILocation(line: 123, column: 6, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 123, column: 6)
!3449 = !DILocation(line: 123, column: 6, scope: !3417)
!3450 = !DILocation(line: 124, column: 16, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 123, column: 49)
!3452 = !DILocation(line: 124, column: 3, scope: !3451)
!3453 = !DILocation(line: 124, column: 6, scope: !3451)
!3454 = !DILocation(line: 124, column: 10, scope: !3451)
!3455 = !DILocation(line: 124, column: 14, scope: !3451)
!3456 = !DILocation(line: 125, column: 3, scope: !3451)
!3457 = !DILocation(line: 125, column: 6, scope: !3451)
!3458 = !DILocation(line: 125, column: 11, scope: !3451)
!3459 = !DILocation(line: 126, column: 2, scope: !3451)
!3460 = !DILocation(line: 127, column: 1, scope: !3417)
!3461 = !DISubprogram(name: "seq_buf_printf", scope: !93, file: !93, line: 150, type: !3462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!109, !3329, !458, null}
!3464 = distinct !DISubprogram(name: "trace_seq_vprintf", scope: !3, file: !3, line: 142, type: !3465, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{null, !3277, !458, !3404}
!3467 = !{!3468, !3469, !3470, !3471}
!3468 = !DILocalVariable(name: "s", arg: 1, scope: !3464, file: !3, line: 142, type: !3277)
!3469 = !DILocalVariable(name: "fmt", arg: 2, scope: !3464, file: !3, line: 142, type: !458)
!3470 = !DILocalVariable(name: "args", arg: 3, scope: !3464, file: !3, line: 142, type: !3404)
!3471 = !DILocalVariable(name: "save_len", scope: !3464, file: !3, line: 144, type: !7)
!3472 = !DILocation(line: 142, column: 42, scope: !3464)
!3473 = !DILocation(line: 142, column: 57, scope: !3464)
!3474 = !DILocation(line: 142, column: 70, scope: !3464)
!3475 = !DILocation(line: 144, column: 2, scope: !3464)
!3476 = !DILocation(line: 144, column: 15, scope: !3464)
!3477 = !DILocation(line: 144, column: 26, scope: !3464)
!3478 = !DILocation(line: 144, column: 29, scope: !3464)
!3479 = !DILocation(line: 144, column: 33, scope: !3464)
!3480 = !DILocation(line: 146, column: 6, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 146, column: 6)
!3482 = !DILocation(line: 146, column: 9, scope: !3481)
!3483 = !DILocation(line: 146, column: 6, scope: !3464)
!3484 = !DILocation(line: 147, column: 3, scope: !3481)
!3485 = !DILocation(line: 149, column: 19, scope: !3464)
!3486 = !DILocation(line: 149, column: 2, scope: !3464)
!3487 = !DILocation(line: 151, column: 19, scope: !3464)
!3488 = !DILocation(line: 151, column: 22, scope: !3464)
!3489 = !DILocation(line: 151, column: 27, scope: !3464)
!3490 = !DILocation(line: 151, column: 32, scope: !3464)
!3491 = !DILocation(line: 151, column: 2, scope: !3464)
!3492 = !DILocation(line: 154, column: 6, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 154, column: 6)
!3494 = !DILocation(line: 154, column: 6, scope: !3464)
!3495 = !DILocation(line: 155, column: 16, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 154, column: 49)
!3497 = !DILocation(line: 155, column: 3, scope: !3496)
!3498 = !DILocation(line: 155, column: 6, scope: !3496)
!3499 = !DILocation(line: 155, column: 10, scope: !3496)
!3500 = !DILocation(line: 155, column: 14, scope: !3496)
!3501 = !DILocation(line: 156, column: 3, scope: !3496)
!3502 = !DILocation(line: 156, column: 6, scope: !3496)
!3503 = !DILocation(line: 156, column: 11, scope: !3496)
!3504 = !DILocation(line: 157, column: 2, scope: !3496)
!3505 = !DILocation(line: 158, column: 1, scope: !3464)
!3506 = distinct !DISubprogram(name: "trace_seq_bprintf", scope: !3, file: !3, line: 176, type: !3507, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3511)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3277, !458, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!3511 = !{!3512, !3513, !3514, !3515}
!3512 = !DILocalVariable(name: "s", arg: 1, scope: !3506, file: !3, line: 176, type: !3277)
!3513 = !DILocalVariable(name: "fmt", arg: 2, scope: !3506, file: !3, line: 176, type: !458)
!3514 = !DILocalVariable(name: "binary", arg: 3, scope: !3506, file: !3, line: 176, type: !3509)
!3515 = !DILocalVariable(name: "save_len", scope: !3506, file: !3, line: 178, type: !7)
!3516 = !DILocation(line: 176, column: 42, scope: !3506)
!3517 = !DILocation(line: 176, column: 57, scope: !3506)
!3518 = !DILocation(line: 176, column: 73, scope: !3506)
!3519 = !DILocation(line: 178, column: 2, scope: !3506)
!3520 = !DILocation(line: 178, column: 15, scope: !3506)
!3521 = !DILocation(line: 178, column: 26, scope: !3506)
!3522 = !DILocation(line: 178, column: 29, scope: !3506)
!3523 = !DILocation(line: 178, column: 33, scope: !3506)
!3524 = !DILocation(line: 180, column: 6, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 180, column: 6)
!3526 = !DILocation(line: 180, column: 9, scope: !3525)
!3527 = !DILocation(line: 180, column: 6, scope: !3506)
!3528 = !DILocation(line: 181, column: 3, scope: !3525)
!3529 = !DILocation(line: 183, column: 19, scope: !3506)
!3530 = !DILocation(line: 183, column: 2, scope: !3506)
!3531 = !DILocation(line: 185, column: 19, scope: !3506)
!3532 = !DILocation(line: 185, column: 22, scope: !3506)
!3533 = !DILocation(line: 185, column: 27, scope: !3506)
!3534 = !DILocation(line: 185, column: 32, scope: !3506)
!3535 = !DILocation(line: 185, column: 2, scope: !3506)
!3536 = !DILocation(line: 188, column: 6, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 188, column: 6)
!3538 = !DILocation(line: 188, column: 6, scope: !3506)
!3539 = !DILocation(line: 189, column: 16, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 188, column: 49)
!3541 = !DILocation(line: 189, column: 3, scope: !3540)
!3542 = !DILocation(line: 189, column: 6, scope: !3540)
!3543 = !DILocation(line: 189, column: 10, scope: !3540)
!3544 = !DILocation(line: 189, column: 14, scope: !3540)
!3545 = !DILocation(line: 190, column: 3, scope: !3540)
!3546 = !DILocation(line: 190, column: 6, scope: !3540)
!3547 = !DILocation(line: 190, column: 11, scope: !3540)
!3548 = !DILocation(line: 191, column: 3, scope: !3540)
!3549 = !DILocation(line: 193, column: 1, scope: !3506)
!3550 = !DISubprogram(name: "seq_buf_bprintf", scope: !93, file: !93, line: 168, type: !3551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!109, !3329, !458, !3509}
!3553 = distinct !DISubprogram(name: "trace_seq_puts", scope: !3, file: !3, line: 206, type: !3554, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !3277, !458}
!3556 = !{!3557, !3558, !3559}
!3557 = !DILocalVariable(name: "s", arg: 1, scope: !3553, file: !3, line: 206, type: !3277)
!3558 = !DILocalVariable(name: "str", arg: 2, scope: !3553, file: !3, line: 206, type: !458)
!3559 = !DILocalVariable(name: "len", scope: !3553, file: !3, line: 208, type: !7)
!3560 = !DILocation(line: 206, column: 39, scope: !3553)
!3561 = !DILocation(line: 206, column: 54, scope: !3553)
!3562 = !DILocation(line: 208, column: 2, scope: !3553)
!3563 = !DILocation(line: 208, column: 15, scope: !3553)
!3564 = !DILocation(line: 208, column: 28, scope: !3553)
!3565 = !DILocation(line: 208, column: 21, scope: !3553)
!3566 = !DILocation(line: 210, column: 6, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 210, column: 6)
!3568 = !DILocation(line: 210, column: 9, scope: !3567)
!3569 = !DILocation(line: 210, column: 6, scope: !3553)
!3570 = !DILocation(line: 211, column: 3, scope: !3567)
!3571 = !DILocation(line: 213, column: 19, scope: !3553)
!3572 = !DILocation(line: 213, column: 2, scope: !3553)
!3573 = !DILocation(line: 215, column: 6, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 215, column: 6)
!3575 = !DILocation(line: 215, column: 12, scope: !3574)
!3576 = !DILocation(line: 215, column: 10, scope: !3574)
!3577 = !DILocation(line: 215, column: 6, scope: !3553)
!3578 = !DILocation(line: 216, column: 3, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 215, column: 35)
!3580 = !DILocation(line: 216, column: 6, scope: !3579)
!3581 = !DILocation(line: 216, column: 11, scope: !3579)
!3582 = !DILocation(line: 217, column: 3, scope: !3579)
!3583 = !DILocation(line: 220, column: 18, scope: !3553)
!3584 = !DILocation(line: 220, column: 21, scope: !3553)
!3585 = !DILocation(line: 220, column: 26, scope: !3553)
!3586 = !DILocation(line: 220, column: 31, scope: !3553)
!3587 = !DILocation(line: 220, column: 2, scope: !3553)
!3588 = !DILocation(line: 221, column: 1, scope: !3553)
!3589 = !DISubprogram(name: "strlen", scope: !3590, file: !3590, line: 128, type: !3591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3590 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!122, !458}
!3593 = distinct !DISubprogram(name: "seq_buf_buffer_left", scope: !93, file: !93, line: 65, type: !3594, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3596)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!7, !3329}
!3596 = !{!3597}
!3597 = !DILocalVariable(name: "s", arg: 1, scope: !3593, file: !93, line: 65, type: !3329)
!3598 = !DILocation(line: 65, column: 37, scope: !3593)
!3599 = !DILocation(line: 67, column: 29, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3593, file: !93, line: 67, column: 6)
!3601 = !DILocation(line: 67, column: 6, scope: !3600)
!3602 = !DILocation(line: 67, column: 6, scope: !3593)
!3603 = !DILocation(line: 68, column: 3, scope: !3600)
!3604 = !DILocation(line: 70, column: 9, scope: !3593)
!3605 = !DILocation(line: 70, column: 12, scope: !3593)
!3606 = !DILocation(line: 70, column: 19, scope: !3593)
!3607 = !DILocation(line: 70, column: 22, scope: !3593)
!3608 = !DILocation(line: 70, column: 17, scope: !3593)
!3609 = !DILocation(line: 70, column: 2, scope: !3593)
!3610 = !DILocation(line: 71, column: 1, scope: !3593)
!3611 = !DISubprogram(name: "seq_buf_putmem", scope: !93, file: !93, line: 158, type: !3612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!109, !3329, !3614, !7}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3616 = distinct !DISubprogram(name: "trace_seq_putc", scope: !3, file: !3, line: 234, type: !3617, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !3277, !170}
!3619 = !{!3620, !3621}
!3620 = !DILocalVariable(name: "s", arg: 1, scope: !3616, file: !3, line: 234, type: !3277)
!3621 = !DILocalVariable(name: "c", arg: 2, scope: !3616, file: !3, line: 234, type: !170)
!3622 = !DILocation(line: 234, column: 39, scope: !3616)
!3623 = !DILocation(line: 234, column: 56, scope: !3616)
!3624 = !DILocation(line: 236, column: 6, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 236, column: 6)
!3626 = !DILocation(line: 236, column: 9, scope: !3625)
!3627 = !DILocation(line: 236, column: 6, scope: !3616)
!3628 = !DILocation(line: 237, column: 3, scope: !3625)
!3629 = !DILocation(line: 239, column: 19, scope: !3616)
!3630 = !DILocation(line: 239, column: 2, scope: !3616)
!3631 = !DILocation(line: 241, column: 6, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 241, column: 6)
!3633 = !DILocation(line: 241, column: 28, scope: !3632)
!3634 = !DILocation(line: 241, column: 6, scope: !3616)
!3635 = !DILocation(line: 242, column: 3, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 241, column: 33)
!3637 = !DILocation(line: 242, column: 6, scope: !3636)
!3638 = !DILocation(line: 242, column: 11, scope: !3636)
!3639 = !DILocation(line: 243, column: 3, scope: !3636)
!3640 = !DILocation(line: 246, column: 16, scope: !3616)
!3641 = !DILocation(line: 246, column: 19, scope: !3616)
!3642 = !DILocation(line: 246, column: 24, scope: !3616)
!3643 = !DILocation(line: 246, column: 2, scope: !3616)
!3644 = !DILocation(line: 247, column: 1, scope: !3616)
!3645 = !DISubprogram(name: "seq_buf_putc", scope: !93, file: !93, line: 157, type: !3646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!109, !3329, !170}
!3648 = distinct !DISubprogram(name: "trace_seq_putmem", scope: !3, file: !3, line: 260, type: !3649, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3651)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3277, !3614, !7}
!3651 = !{!3652, !3653, !3654}
!3652 = !DILocalVariable(name: "s", arg: 1, scope: !3648, file: !3, line: 260, type: !3277)
!3653 = !DILocalVariable(name: "mem", arg: 2, scope: !3648, file: !3, line: 260, type: !3614)
!3654 = !DILocalVariable(name: "len", arg: 3, scope: !3648, file: !3, line: 260, type: !7)
!3655 = !DILocation(line: 260, column: 41, scope: !3648)
!3656 = !DILocation(line: 260, column: 56, scope: !3648)
!3657 = !DILocation(line: 260, column: 74, scope: !3648)
!3658 = !DILocation(line: 262, column: 6, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 262, column: 6)
!3660 = !DILocation(line: 262, column: 9, scope: !3659)
!3661 = !DILocation(line: 262, column: 6, scope: !3648)
!3662 = !DILocation(line: 263, column: 3, scope: !3659)
!3663 = !DILocation(line: 265, column: 19, scope: !3648)
!3664 = !DILocation(line: 265, column: 2, scope: !3648)
!3665 = !DILocation(line: 267, column: 6, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 267, column: 6)
!3667 = !DILocation(line: 267, column: 12, scope: !3666)
!3668 = !DILocation(line: 267, column: 10, scope: !3666)
!3669 = !DILocation(line: 267, column: 6, scope: !3648)
!3670 = !DILocation(line: 268, column: 3, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 267, column: 35)
!3672 = !DILocation(line: 268, column: 6, scope: !3671)
!3673 = !DILocation(line: 268, column: 11, scope: !3671)
!3674 = !DILocation(line: 269, column: 3, scope: !3671)
!3675 = !DILocation(line: 272, column: 18, scope: !3648)
!3676 = !DILocation(line: 272, column: 21, scope: !3648)
!3677 = !DILocation(line: 272, column: 26, scope: !3648)
!3678 = !DILocation(line: 272, column: 31, scope: !3648)
!3679 = !DILocation(line: 272, column: 2, scope: !3648)
!3680 = !DILocation(line: 273, column: 1, scope: !3648)
!3681 = distinct !DISubprogram(name: "trace_seq_putmem_hex", scope: !3, file: !3, line: 286, type: !3649, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3682)
!3682 = !{!3683, !3684, !3685, !3686}
!3683 = !DILocalVariable(name: "s", arg: 1, scope: !3681, file: !3, line: 286, type: !3277)
!3684 = !DILocalVariable(name: "mem", arg: 2, scope: !3681, file: !3, line: 286, type: !3614)
!3685 = !DILocalVariable(name: "len", arg: 3, scope: !3681, file: !3, line: 287, type: !7)
!3686 = !DILocalVariable(name: "save_len", scope: !3681, file: !3, line: 289, type: !7)
!3687 = !DILocation(line: 286, column: 45, scope: !3681)
!3688 = !DILocation(line: 286, column: 60, scope: !3681)
!3689 = !DILocation(line: 287, column: 18, scope: !3681)
!3690 = !DILocation(line: 289, column: 2, scope: !3681)
!3691 = !DILocation(line: 289, column: 15, scope: !3681)
!3692 = !DILocation(line: 289, column: 26, scope: !3681)
!3693 = !DILocation(line: 289, column: 29, scope: !3681)
!3694 = !DILocation(line: 289, column: 33, scope: !3681)
!3695 = !DILocation(line: 291, column: 6, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 291, column: 6)
!3697 = !DILocation(line: 291, column: 9, scope: !3696)
!3698 = !DILocation(line: 291, column: 6, scope: !3681)
!3699 = !DILocation(line: 292, column: 3, scope: !3696)
!3700 = !DILocation(line: 294, column: 19, scope: !3681)
!3701 = !DILocation(line: 294, column: 2, scope: !3681)
!3702 = !DILocation(line: 297, column: 6, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 297, column: 6)
!3704 = !DILocation(line: 297, column: 10, scope: !3703)
!3705 = !DILocation(line: 297, column: 16, scope: !3703)
!3706 = !DILocation(line: 297, column: 14, scope: !3703)
!3707 = !DILocation(line: 297, column: 6, scope: !3681)
!3708 = !DILocation(line: 298, column: 3, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 297, column: 39)
!3710 = !DILocation(line: 298, column: 6, scope: !3709)
!3711 = !DILocation(line: 298, column: 11, scope: !3709)
!3712 = !DILocation(line: 299, column: 3, scope: !3709)
!3713 = !DILocation(line: 303, column: 22, scope: !3681)
!3714 = !DILocation(line: 303, column: 25, scope: !3681)
!3715 = !DILocation(line: 303, column: 30, scope: !3681)
!3716 = !DILocation(line: 303, column: 35, scope: !3681)
!3717 = !DILocation(line: 303, column: 2, scope: !3681)
!3718 = !DILocation(line: 305, column: 6, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 305, column: 6)
!3720 = !DILocation(line: 305, column: 6, scope: !3681)
!3721 = !DILocation(line: 306, column: 16, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 305, column: 49)
!3723 = !DILocation(line: 306, column: 3, scope: !3722)
!3724 = !DILocation(line: 306, column: 6, scope: !3722)
!3725 = !DILocation(line: 306, column: 10, scope: !3722)
!3726 = !DILocation(line: 306, column: 14, scope: !3722)
!3727 = !DILocation(line: 307, column: 3, scope: !3722)
!3728 = !DILocation(line: 307, column: 6, scope: !3722)
!3729 = !DILocation(line: 307, column: 11, scope: !3722)
!3730 = !DILocation(line: 308, column: 3, scope: !3722)
!3731 = !DILocation(line: 310, column: 1, scope: !3681)
!3732 = !DISubprogram(name: "seq_buf_putmem_hex", scope: !93, file: !93, line: 159, type: !3612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3733 = distinct !DISubprogram(name: "trace_seq_path", scope: !3, file: !3, line: 325, type: !3734, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!109, !3277, !742}
!3736 = !{!3737, !3738, !3739}
!3737 = !DILocalVariable(name: "s", arg: 1, scope: !3733, file: !3, line: 325, type: !3277)
!3738 = !DILocalVariable(name: "path", arg: 2, scope: !3733, file: !3, line: 325, type: !742)
!3739 = !DILocalVariable(name: "save_len", scope: !3733, file: !3, line: 327, type: !7)
!3740 = !DILocation(line: 325, column: 38, scope: !3733)
!3741 = !DILocation(line: 325, column: 60, scope: !3733)
!3742 = !DILocation(line: 327, column: 2, scope: !3733)
!3743 = !DILocation(line: 327, column: 15, scope: !3733)
!3744 = !DILocation(line: 327, column: 26, scope: !3733)
!3745 = !DILocation(line: 327, column: 29, scope: !3733)
!3746 = !DILocation(line: 327, column: 33, scope: !3733)
!3747 = !DILocation(line: 329, column: 6, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 329, column: 6)
!3749 = !DILocation(line: 329, column: 9, scope: !3748)
!3750 = !DILocation(line: 329, column: 6, scope: !3733)
!3751 = !DILocation(line: 330, column: 3, scope: !3748)
!3752 = !DILocation(line: 332, column: 19, scope: !3733)
!3753 = !DILocation(line: 332, column: 2, scope: !3733)
!3754 = !DILocation(line: 334, column: 6, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 334, column: 6)
!3756 = !DILocation(line: 334, column: 28, scope: !3755)
!3757 = !DILocation(line: 334, column: 6, scope: !3733)
!3758 = !DILocation(line: 335, column: 3, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 334, column: 33)
!3760 = !DILocation(line: 335, column: 6, scope: !3759)
!3761 = !DILocation(line: 335, column: 11, scope: !3759)
!3762 = !DILocation(line: 336, column: 3, scope: !3759)
!3763 = !DILocation(line: 339, column: 16, scope: !3733)
!3764 = !DILocation(line: 339, column: 19, scope: !3733)
!3765 = !DILocation(line: 339, column: 24, scope: !3733)
!3766 = !DILocation(line: 339, column: 2, scope: !3733)
!3767 = !DILocation(line: 341, column: 6, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 341, column: 6)
!3769 = !DILocation(line: 341, column: 6, scope: !3733)
!3770 = !DILocation(line: 342, column: 16, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 341, column: 49)
!3772 = !DILocation(line: 342, column: 3, scope: !3771)
!3773 = !DILocation(line: 342, column: 6, scope: !3771)
!3774 = !DILocation(line: 342, column: 10, scope: !3771)
!3775 = !DILocation(line: 342, column: 14, scope: !3771)
!3776 = !DILocation(line: 343, column: 3, scope: !3771)
!3777 = !DILocation(line: 343, column: 6, scope: !3771)
!3778 = !DILocation(line: 343, column: 11, scope: !3771)
!3779 = !DILocation(line: 344, column: 3, scope: !3771)
!3780 = !DILocation(line: 347, column: 2, scope: !3733)
!3781 = !DILocation(line: 348, column: 1, scope: !3733)
!3782 = !DISubprogram(name: "seq_buf_path", scope: !93, file: !93, line: 161, type: !3783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!109, !3329, !742, !458}
!3785 = distinct !DISubprogram(name: "trace_seq_to_user", scope: !3, file: !3, line: 371, type: !3786, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!109, !3277, !115, !109}
!3788 = !{!3789, !3790, !3791, !3792}
!3789 = !DILocalVariable(name: "s", arg: 1, scope: !3785, file: !3, line: 371, type: !3277)
!3790 = !DILocalVariable(name: "ubuf", arg: 2, scope: !3785, file: !3, line: 371, type: !115)
!3791 = !DILocalVariable(name: "cnt", arg: 3, scope: !3785, file: !3, line: 371, type: !109)
!3792 = !DILocalVariable(name: "ret", scope: !3785, file: !3, line: 373, type: !109)
!3793 = !DILocation(line: 371, column: 41, scope: !3785)
!3794 = !DILocation(line: 371, column: 57, scope: !3785)
!3795 = !DILocation(line: 371, column: 67, scope: !3785)
!3796 = !DILocation(line: 373, column: 2, scope: !3785)
!3797 = !DILocation(line: 373, column: 6, scope: !3785)
!3798 = !DILocation(line: 374, column: 19, scope: !3785)
!3799 = !DILocation(line: 374, column: 2, scope: !3785)
!3800 = !DILocation(line: 375, column: 25, scope: !3785)
!3801 = !DILocation(line: 375, column: 28, scope: !3785)
!3802 = !DILocation(line: 375, column: 33, scope: !3785)
!3803 = !DILocation(line: 375, column: 39, scope: !3785)
!3804 = !DILocation(line: 375, column: 42, scope: !3785)
!3805 = !DILocation(line: 375, column: 51, scope: !3785)
!3806 = !DILocation(line: 375, column: 8, scope: !3785)
!3807 = !DILocation(line: 375, column: 6, scope: !3785)
!3808 = !DILocation(line: 376, column: 6, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 376, column: 6)
!3810 = !DILocation(line: 376, column: 10, scope: !3809)
!3811 = !DILocation(line: 376, column: 6, scope: !3785)
!3812 = !DILocation(line: 377, column: 17, scope: !3809)
!3813 = !DILocation(line: 377, column: 3, scope: !3809)
!3814 = !DILocation(line: 377, column: 6, scope: !3809)
!3815 = !DILocation(line: 377, column: 14, scope: !3809)
!3816 = !DILocation(line: 378, column: 9, scope: !3785)
!3817 = !DILocation(line: 379, column: 1, scope: !3785)
!3818 = !DILocation(line: 378, column: 2, scope: !3785)
!3819 = !DISubprogram(name: "seq_buf_to_user", scope: !93, file: !93, line: 154, type: !3820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!109, !3329, !115, !117, !109}
!3822 = distinct !DISubprogram(name: "trace_seq_hex_dump", scope: !3, file: !3, line: 382, type: !3823, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!109, !3277, !458, !109, !109, !109, !3614, !117, !455}
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834}
!3826 = !DILocalVariable(name: "s", arg: 1, scope: !3822, file: !3, line: 382, type: !3277)
!3827 = !DILocalVariable(name: "prefix_str", arg: 2, scope: !3822, file: !3, line: 382, type: !458)
!3828 = !DILocalVariable(name: "prefix_type", arg: 3, scope: !3822, file: !3, line: 383, type: !109)
!3829 = !DILocalVariable(name: "rowsize", arg: 4, scope: !3822, file: !3, line: 383, type: !109)
!3830 = !DILocalVariable(name: "groupsize", arg: 5, scope: !3822, file: !3, line: 383, type: !109)
!3831 = !DILocalVariable(name: "buf", arg: 6, scope: !3822, file: !3, line: 384, type: !3614)
!3832 = !DILocalVariable(name: "len", arg: 7, scope: !3822, file: !3, line: 384, type: !117)
!3833 = !DILocalVariable(name: "ascii", arg: 8, scope: !3822, file: !3, line: 384, type: !455)
!3834 = !DILocalVariable(name: "save_len", scope: !3822, file: !3, line: 386, type: !7)
!3835 = !DILocation(line: 382, column: 42, scope: !3822)
!3836 = !DILocation(line: 382, column: 57, scope: !3822)
!3837 = !DILocation(line: 383, column: 14, scope: !3822)
!3838 = !DILocation(line: 383, column: 31, scope: !3822)
!3839 = !DILocation(line: 383, column: 44, scope: !3822)
!3840 = !DILocation(line: 384, column: 22, scope: !3822)
!3841 = !DILocation(line: 384, column: 34, scope: !3822)
!3842 = !DILocation(line: 384, column: 44, scope: !3822)
!3843 = !DILocation(line: 386, column: 2, scope: !3822)
!3844 = !DILocation(line: 386, column: 15, scope: !3822)
!3845 = !DILocation(line: 386, column: 26, scope: !3822)
!3846 = !DILocation(line: 386, column: 29, scope: !3822)
!3847 = !DILocation(line: 386, column: 33, scope: !3822)
!3848 = !DILocation(line: 388, column: 6, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 388, column: 6)
!3850 = !DILocation(line: 388, column: 9, scope: !3849)
!3851 = !DILocation(line: 388, column: 6, scope: !3822)
!3852 = !DILocation(line: 389, column: 3, scope: !3849)
!3853 = !DILocation(line: 391, column: 19, scope: !3822)
!3854 = !DILocation(line: 391, column: 2, scope: !3822)
!3855 = !DILocation(line: 393, column: 6, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 393, column: 6)
!3857 = !DILocation(line: 393, column: 28, scope: !3856)
!3858 = !DILocation(line: 393, column: 6, scope: !3822)
!3859 = !DILocation(line: 394, column: 3, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 393, column: 33)
!3861 = !DILocation(line: 394, column: 6, scope: !3860)
!3862 = !DILocation(line: 394, column: 11, scope: !3860)
!3863 = !DILocation(line: 395, column: 3, scope: !3860)
!3864 = !DILocation(line: 398, column: 21, scope: !3822)
!3865 = !DILocation(line: 398, column: 24, scope: !3822)
!3866 = !DILocation(line: 398, column: 30, scope: !3822)
!3867 = !DILocation(line: 399, column: 6, scope: !3822)
!3868 = !DILocation(line: 399, column: 19, scope: !3822)
!3869 = !DILocation(line: 399, column: 28, scope: !3822)
!3870 = !DILocation(line: 400, column: 6, scope: !3822)
!3871 = !DILocation(line: 400, column: 11, scope: !3822)
!3872 = !DILocation(line: 400, column: 16, scope: !3822)
!3873 = !{i8 0, i8 2}
!3874 = !DILocation(line: 398, column: 2, scope: !3822)
!3875 = !DILocation(line: 402, column: 6, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 402, column: 6)
!3877 = !DILocation(line: 402, column: 6, scope: !3822)
!3878 = !DILocation(line: 403, column: 16, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 402, column: 49)
!3880 = !DILocation(line: 403, column: 3, scope: !3879)
!3881 = !DILocation(line: 403, column: 6, scope: !3879)
!3882 = !DILocation(line: 403, column: 10, scope: !3879)
!3883 = !DILocation(line: 403, column: 14, scope: !3879)
!3884 = !DILocation(line: 404, column: 3, scope: !3879)
!3885 = !DILocation(line: 404, column: 6, scope: !3879)
!3886 = !DILocation(line: 404, column: 11, scope: !3879)
!3887 = !DILocation(line: 405, column: 3, scope: !3879)
!3888 = !DILocation(line: 408, column: 2, scope: !3822)
!3889 = !DILocation(line: 409, column: 1, scope: !3822)
!3890 = !DISubprogram(name: "seq_buf_hex_dump", scope: !93, file: !93, line: 162, type: !3891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!109, !3329, !458, !109, !109, !109, !3614, !117, !455}
!3893 = distinct !DISubprogram(name: "trace_seq_acquire", scope: !3, file: !3, line: 424, type: !3894, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!115, !3277, !7}
!3896 = !{!3897, !3898, !3899, !3900, !3903}
!3897 = !DILocalVariable(name: "s", arg: 1, scope: !3893, file: !3, line: 424, type: !3277)
!3898 = !DILocalVariable(name: "len", arg: 2, scope: !3893, file: !3, line: 424, type: !7)
!3899 = !DILocalVariable(name: "ret", scope: !3893, file: !3, line: 426, type: !115)
!3900 = !DILocalVariable(name: "__ret_warn_on", scope: !3901, file: !3, line: 428, type: !109)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 428, column: 7)
!3902 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 428, column: 6)
!3903 = !DILocalVariable(name: "__flags", scope: !3904, file: !3, line: 428, type: !109)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 428, column: 7)
!3905 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 428, column: 7)
!3906 = !DILocation(line: 424, column: 43, scope: !3893)
!3907 = !DILocation(line: 424, column: 59, scope: !3893)
!3908 = !DILocation(line: 426, column: 2, scope: !3893)
!3909 = !DILocation(line: 426, column: 8, scope: !3893)
!3910 = !DILocation(line: 426, column: 35, scope: !3893)
!3911 = !DILocation(line: 426, column: 14, scope: !3893)
!3912 = !DILocation(line: 428, column: 7, scope: !3901)
!3913 = !DILocation(line: 428, column: 7, scope: !3905)
!3914 = !DILocation(line: 428, column: 7, scope: !3904)
!3915 = !DILocation(line: 428, column: 7, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 428, column: 7)
!3917 = !DILocation(line: 428, column: 7, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 428, column: 7)
!3919 = !{i64 2153437341, i64 2153437370, i64 2153437416, i64 2153437474, i64 2153437528, i64 2153437582, i64 2153437637, i64 2153437668, i64 2153437976, i64 2153437982, i64 2153438029, i64 2153438052, i64 2153438078}
!3920 = !DILocation(line: 428, column: 7, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 428, column: 7)
!3922 = !DILocation(line: 428, column: 7, scope: !3902)
!3923 = !DILocation(line: 428, column: 6, scope: !3893)
!3924 = !DILocation(line: 429, column: 19, scope: !3902)
!3925 = !DILocation(line: 429, column: 22, scope: !3902)
!3926 = !DILocation(line: 429, column: 27, scope: !3902)
!3927 = !DILocation(line: 429, column: 3, scope: !3902)
!3928 = !DILocation(line: 431, column: 9, scope: !3893)
!3929 = !DILocation(line: 432, column: 1, scope: !3893)
!3930 = !DILocation(line: 431, column: 2, scope: !3893)
!3931 = distinct !DISubprogram(name: "trace_seq_buffer_ptr", scope: !3279, file: !3279, line: 57, type: !3932, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!115, !3277}
!3934 = !{!3935}
!3935 = !DILocalVariable(name: "s", arg: 1, scope: !3931, file: !3279, line: 57, type: !3277)
!3936 = !DILocation(line: 57, column: 40, scope: !3931)
!3937 = !DILocation(line: 59, column: 9, scope: !3931)
!3938 = !DILocation(line: 59, column: 12, scope: !3931)
!3939 = !DILocation(line: 59, column: 35, scope: !3931)
!3940 = !DILocation(line: 59, column: 38, scope: !3931)
!3941 = !DILocation(line: 59, column: 21, scope: !3931)
!3942 = !DILocation(line: 59, column: 19, scope: !3931)
!3943 = !DILocation(line: 59, column: 2, scope: !3931)
!3944 = distinct !DISubprogram(name: "seq_buf_commit", scope: !93, file: !93, line: 138, type: !3945, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3329, !109}
!3947 = !{!3948, !3949}
!3948 = !DILocalVariable(name: "s", arg: 1, scope: !3944, file: !93, line: 138, type: !3329)
!3949 = !DILocalVariable(name: "num", arg: 2, scope: !3944, file: !93, line: 138, type: !109)
!3950 = !DILocation(line: 138, column: 51, scope: !3944)
!3951 = !DILocation(line: 138, column: 58, scope: !3944)
!3952 = !DILocation(line: 140, column: 6, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3944, file: !93, line: 140, column: 6)
!3954 = !DILocation(line: 140, column: 10, scope: !3953)
!3955 = !DILocation(line: 140, column: 6, scope: !3944)
!3956 = !DILocation(line: 141, column: 24, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3953, file: !93, line: 140, column: 15)
!3958 = !DILocation(line: 141, column: 3, scope: !3957)
!3959 = !DILocation(line: 142, column: 2, scope: !3957)
!3960 = !DILocation(line: 144, column: 3, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3953, file: !93, line: 142, column: 9)
!3962 = !DILocation(line: 144, column: 3, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !93, line: 144, column: 3)
!3964 = distinct !DILexicalBlock(scope: !3961, file: !93, line: 144, column: 3)
!3965 = !DILocation(line: 144, column: 3, scope: !3964)
!3966 = !DILocation(line: 144, column: 3, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !93, line: 144, column: 3)
!3968 = !DILocation(line: 144, column: 3, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3967, file: !93, line: 144, column: 3)
!3970 = !DILocation(line: 144, column: 3, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3967, file: !93, line: 144, column: 3)
!3972 = !{i64 2153414647, i64 2153414676, i64 2153414722, i64 2153414780, i64 2153414834, i64 2153414888, i64 2153414943, i64 2153414974}
!3973 = !DILocation(line: 145, column: 13, scope: !3961)
!3974 = !DILocation(line: 145, column: 3, scope: !3961)
!3975 = !DILocation(line: 145, column: 6, scope: !3961)
!3976 = !DILocation(line: 145, column: 10, scope: !3961)
!3977 = !DILocation(line: 147, column: 1, scope: !3944)
!3978 = distinct !DISubprogram(name: "seq_buf_init", scope: !93, file: !93, line: 38, type: !3979, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !3329, !115, !7}
!3981 = !{!3982, !3983, !3984}
!3982 = !DILocalVariable(name: "s", arg: 1, scope: !3978, file: !93, line: 38, type: !3329)
!3983 = !DILocalVariable(name: "buf", arg: 2, scope: !3978, file: !93, line: 38, type: !115)
!3984 = !DILocalVariable(name: "size", arg: 3, scope: !3978, file: !93, line: 38, type: !7)
!3985 = !DILocation(line: 38, column: 30, scope: !3978)
!3986 = !DILocation(line: 38, column: 39, scope: !3978)
!3987 = !DILocation(line: 38, column: 57, scope: !3978)
!3988 = !DILocation(line: 40, column: 14, scope: !3978)
!3989 = !DILocation(line: 40, column: 2, scope: !3978)
!3990 = !DILocation(line: 40, column: 5, scope: !3978)
!3991 = !DILocation(line: 40, column: 12, scope: !3978)
!3992 = !DILocation(line: 41, column: 12, scope: !3978)
!3993 = !DILocation(line: 41, column: 2, scope: !3978)
!3994 = !DILocation(line: 41, column: 5, scope: !3978)
!3995 = !DILocation(line: 41, column: 10, scope: !3978)
!3996 = !DILocation(line: 42, column: 16, scope: !3978)
!3997 = !DILocation(line: 42, column: 2, scope: !3978)
!3998 = !DILocation(line: 43, column: 1, scope: !3978)
!3999 = distinct !DISubprogram(name: "seq_buf_clear", scope: !93, file: !93, line: 30, type: !4000, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !3329}
!4002 = !{!4003}
!4003 = !DILocalVariable(name: "s", arg: 1, scope: !3999, file: !93, line: 30, type: !3329)
!4004 = !DILocation(line: 30, column: 50, scope: !3999)
!4005 = !DILocation(line: 32, column: 2, scope: !3999)
!4006 = !DILocation(line: 32, column: 5, scope: !3999)
!4007 = !DILocation(line: 32, column: 9, scope: !3999)
!4008 = !DILocation(line: 33, column: 6, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3999, file: !93, line: 33, column: 6)
!4010 = !DILocation(line: 33, column: 9, scope: !4009)
!4011 = !DILocation(line: 33, column: 6, scope: !3999)
!4012 = !DILocation(line: 34, column: 3, scope: !4009)
!4013 = !DILocation(line: 34, column: 6, scope: !4009)
!4014 = !DILocation(line: 34, column: 16, scope: !4009)
!4015 = !DILocation(line: 35, column: 1, scope: !3999)
!4016 = distinct !DISubprogram(name: "seq_buf_used", scope: !93, file: !93, line: 74, type: !3594, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4017)
!4017 = !{!4018, !4019, !4021}
!4018 = !DILocalVariable(name: "s", arg: 1, scope: !4016, file: !93, line: 74, type: !3329)
!4019 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !4020, file: !93, line: 76, type: !117)
!4020 = distinct !DILexicalBlock(scope: !4016, file: !93, line: 76, column: 9)
!4021 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !4020, file: !93, line: 76, type: !117)
!4022 = !DILocation(line: 74, column: 57, scope: !4016)
!4023 = !DILocation(line: 76, column: 9, scope: !4020)
!4024 = !DILocation(line: 76, column: 9, scope: !4016)
!4025 = !DILocation(line: 76, column: 2, scope: !4016)
!4026 = distinct !DISubprogram(name: "seq_buf_set_overflow", scope: !93, file: !93, line: 56, type: !4000, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4027)
!4027 = !{!4028}
!4028 = !DILocalVariable(name: "s", arg: 1, scope: !4026, file: !93, line: 56, type: !3329)
!4029 = !DILocation(line: 56, column: 38, scope: !4026)
!4030 = !DILocation(line: 58, column: 11, scope: !4026)
!4031 = !DILocation(line: 58, column: 14, scope: !4026)
!4032 = !DILocation(line: 58, column: 19, scope: !4026)
!4033 = !DILocation(line: 58, column: 2, scope: !4026)
!4034 = !DILocation(line: 58, column: 5, scope: !4026)
!4035 = !DILocation(line: 58, column: 9, scope: !4026)
!4036 = !DILocation(line: 59, column: 1, scope: !4026)
