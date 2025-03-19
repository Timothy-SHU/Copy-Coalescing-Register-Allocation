; ModuleID = 'crypto/asymmetric_keys/x509_loader.c'
source_filename = "crypto/asymmetric_keys/x509_loader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x509_load_certificate_list: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad x509_load_certificate_list ; .previous"

%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.3, %union.anon.7, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i64 }
%union.anon.7 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.anon.6 = type { i64, i64, ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"asymmetric\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [53 x i8] c"\013Problem loading in-kernel X.509 certificate (%ld)\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [26 x i8] c"\015Loaded X.509 cert '%s'\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [52 x i8] c"\013Problem parsing in-kernel X.509 certificate list\0A\00", align 1, !dbg !17
@__UNIQUE_ID___addressable_x509_load_certificate_list69 = internal global ptr @x509_load_certificate_list, section ".discard.addressable", align 8, !dbg !22
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_x509_load_certificate_list69], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_load_certificate_list(ptr noundef %cert_list, i64 noundef %list_size, ptr noundef %keyring) #0 align 16 !dbg !367 {
entry:
  %retval = alloca i32, align 4
  %cert_list.addr = alloca ptr, align 8
  %list_size.addr = alloca i64, align 8
  %keyring.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %p = alloca ptr, align 8
  %end = alloca ptr, align 8
  %plen = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store ptr %cert_list, ptr %cert_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cert_list.addr, metadata !374, metadata !DIExpression()), !dbg !382
  store i64 %list_size, ptr %list_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list_size.addr, metadata !375, metadata !DIExpression()), !dbg !383
  store ptr %keyring, ptr %keyring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %keyring.addr, metadata !376, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #7, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %key, metadata !377, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %p, metadata !378, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %end, metadata !379, metadata !DIExpression()), !dbg !389
  call void @llvm.lifetime.start.p0(i64 8, ptr %plen) #7, !dbg !390
  call void @llvm.dbg.declare(metadata ptr %plen, metadata !380, metadata !DIExpression()), !dbg !391
  %0 = load ptr, ptr %cert_list.addr, align 8, !dbg !392
  store ptr %0, ptr %p, align 8, !dbg !393
  %1 = load ptr, ptr %p, align 8, !dbg !394
  %2 = load i64, ptr %list_size.addr, align 8, !dbg !395
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !396
  store ptr %add.ptr, ptr %end, align 8, !dbg !397
  br label %while.cond, !dbg !398

while.cond:                                       ; preds = %if.end33, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !399
  %4 = load ptr, ptr %end, align 8, !dbg !400
  %cmp = icmp ult ptr %3, %4, !dbg !401
  br i1 %cmp, label %while.body, label %while.end, !dbg !398

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %end, align 8, !dbg !402
  %6 = load ptr, ptr %p, align 8, !dbg !405
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64, !dbg !406
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64, !dbg !406
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !406
  %cmp1 = icmp slt i64 %sub.ptr.sub, 4, !dbg !407
  br i1 %cmp1, label %if.then, label %if.end, !dbg !408

if.then:                                          ; preds = %while.body
  br label %dodgy_cert, !dbg !409

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %p, align 8, !dbg !410
  %arrayidx = getelementptr i8, ptr %7, i64 0, !dbg !410
  %8 = load i8, ptr %arrayidx, align 1, !dbg !410
  %conv = zext i8 %8 to i32, !dbg !410
  %cmp2 = icmp ne i32 %conv, 48, !dbg !412
  br i1 %cmp2, label %land.lhs.true, label %if.end9, !dbg !413

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %p, align 8, !dbg !414
  %arrayidx4 = getelementptr i8, ptr %9, i64 1, !dbg !414
  %10 = load i8, ptr %arrayidx4, align 1, !dbg !414
  %conv5 = zext i8 %10 to i32, !dbg !414
  %cmp6 = icmp ne i32 %conv5, 130, !dbg !415
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !416

if.then8:                                         ; preds = %land.lhs.true
  br label %dodgy_cert, !dbg !417

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %p, align 8, !dbg !418
  %arrayidx10 = getelementptr i8, ptr %11, i64 2, !dbg !418
  %12 = load i8, ptr %arrayidx10, align 1, !dbg !418
  %conv11 = zext i8 %12 to i32, !dbg !418
  %shl = shl i32 %conv11, 8, !dbg !419
  %13 = load ptr, ptr %p, align 8, !dbg !420
  %arrayidx12 = getelementptr i8, ptr %13, i64 3, !dbg !420
  %14 = load i8, ptr %arrayidx12, align 1, !dbg !420
  %conv13 = zext i8 %14 to i32, !dbg !420
  %or = or i32 %shl, %conv13, !dbg !421
  %conv14 = sext i32 %or to i64, !dbg !422
  store i64 %conv14, ptr %plen, align 8, !dbg !423
  %15 = load i64, ptr %plen, align 8, !dbg !424
  %add = add i64 %15, 4, !dbg !424
  store i64 %add, ptr %plen, align 8, !dbg !424
  %16 = load i64, ptr %plen, align 8, !dbg !425
  %17 = load ptr, ptr %end, align 8, !dbg !427
  %18 = load ptr, ptr %p, align 8, !dbg !428
  %sub.ptr.lhs.cast15 = ptrtoint ptr %17 to i64, !dbg !429
  %sub.ptr.rhs.cast16 = ptrtoint ptr %18 to i64, !dbg !429
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16, !dbg !429
  %cmp18 = icmp ugt i64 %16, %sub.ptr.sub17, !dbg !430
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !431

if.then20:                                        ; preds = %if.end9
  br label %dodgy_cert, !dbg !432

if.end21:                                         ; preds = %if.end9
  %19 = load ptr, ptr %keyring.addr, align 8, !dbg !433
  %call = call ptr @make_key_ref(ptr noundef %19, i1 noundef zeroext true) #8, !dbg !434
  %20 = load ptr, ptr %p, align 8, !dbg !435
  %21 = load i64, ptr %plen, align 8, !dbg !436
  %call22 = call ptr @key_create_or_update(ptr noundef %call, ptr noundef @.str, ptr noundef null, ptr noundef %20, i64 noundef %21, i32 noundef 520290304, i64 noundef 14) #8, !dbg !437
  store ptr %call22, ptr %key, align 8, !dbg !438
  %22 = load ptr, ptr %key, align 8, !dbg !439
  %call23 = call zeroext i1 @IS_ERR(ptr noundef %22) #8, !dbg !441
  br i1 %call23, label %if.then24, label %if.else, !dbg !442

if.then24:                                        ; preds = %if.end21
  br label %do.body, !dbg !443

do.body:                                          ; preds = %if.then24
  br label %do.cond, !dbg !446

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !446

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %key, align 8, !dbg !443
  %call25 = call i64 @PTR_ERR(ptr noundef %23) #8, !dbg !443
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %call25) #9, !dbg !443
  store i32 %call26, ptr %tmp, align 4, !dbg !446
  %24 = load i32, ptr %tmp, align 4, !dbg !443
  br label %if.end33, !dbg !448

if.else:                                          ; preds = %if.end21
  br label %do.body27, !dbg !449

do.body27:                                        ; preds = %if.else
  br label %do.cond28, !dbg !452

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !452

do.end29:                                         ; preds = %do.cond28
  %25 = load ptr, ptr %key, align 8, !dbg !449
  %call31 = call ptr @key_ref_to_ptr(ptr noundef %25) #8, !dbg !449
  %26 = getelementptr inbounds %struct.key, ptr %call31, i32 0, i32 15, !dbg !449
  %description = getelementptr inbounds %struct.anon.6, ptr %26, i32 0, i32 4, !dbg !449
  %27 = load ptr, ptr %description, align 8, !dbg !449
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %27) #9, !dbg !449
  store i32 %call32, ptr %tmp30, align 4, !dbg !452
  %28 = load i32, ptr %tmp30, align 4, !dbg !449
  %29 = load ptr, ptr %key, align 8, !dbg !454
  call void @key_ref_put(ptr noundef %29) #8, !dbg !455
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %do.end
  %30 = load i64, ptr %plen, align 8, !dbg !456
  %31 = load ptr, ptr %p, align 8, !dbg !457
  %add.ptr34 = getelementptr i8, ptr %31, i64 %30, !dbg !457
  store ptr %add.ptr34, ptr %p, align 8, !dbg !457
  br label %while.cond, !dbg !398, !llvm.loop !458

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !462

dodgy_cert:                                       ; preds = %if.then20, %if.then8, %if.then
  call void @llvm.dbg.label(metadata !381), !dbg !463
  br label %do.body35, !dbg !464

do.body35:                                        ; preds = %dodgy_cert
  br label %do.cond36, !dbg !466

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !466

do.end37:                                         ; preds = %do.cond36
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #9, !dbg !464
  store i32 %call39, ptr %tmp38, align 4, !dbg !466
  %32 = load i32, ptr %tmp38, align 4, !dbg !464
  store i32 0, ptr %retval, align 4, !dbg !468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !468

cleanup:                                          ; preds = %do.end37, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %plen) #7, !dbg !469
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !469
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !469
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #7, !dbg !469
  %33 = load i32, ptr %retval, align 4, !dbg !469
  ret i32 %33, !dbg !469
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !470 dso_local ptr @key_create_or_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @make_key_ref(ptr noundef %key, i1 noundef zeroext %possession) #4 align 16 !dbg !473 {
entry:
  %key.addr = alloca ptr, align 8
  %possession.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !477, metadata !DIExpression()), !dbg !479
  %frombool = zext i1 %possession to i8
  store i8 %frombool, ptr %possession.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %possession.addr, metadata !478, metadata !DIExpression()), !dbg !480
  %0 = load ptr, ptr %key.addr, align 8, !dbg !481
  %1 = ptrtoint ptr %0 to i64, !dbg !482
  %2 = load i8, ptr %possession.addr, align 1, !dbg !483, !range !484, !noundef !315
  %tobool = trunc i8 %2 to i1, !dbg !483
  %conv = zext i1 %tobool to i64, !dbg !483
  %or = or i64 %1, %conv, !dbg !485
  %3 = inttoptr i64 %or to ptr, !dbg !486
  ret ptr %3, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !488 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !495
  %1 = ptrtoint ptr %0 to i64, !dbg !495
  %2 = inttoptr i64 %1 to ptr, !dbg !495
  %3 = ptrtoint ptr %2 to i64, !dbg !495
  %cmp = icmp uge i64 %3, -4095, !dbg !495
  %lnot = xor i1 %cmp, true, !dbg !495
  %lnot1 = xor i1 %lnot, true, !dbg !495
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !495
  %conv = sext i32 %lnot.ext to i64, !dbg !495
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !495
  %tobool = icmp ne i64 %expval, 0, !dbg !495
  ret i1 %tobool, !dbg !496
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !497 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !501 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !507
  %1 = ptrtoint ptr %0 to i64, !dbg !508
  ret i64 %1, !dbg !509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_ref_to_ptr(ptr noundef %key_ref) #4 align 16 !dbg !510 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !517
  %1 = ptrtoint ptr %0 to i64, !dbg !518
  %and = and i64 %1, -2, !dbg !519
  %2 = inttoptr i64 %and to ptr, !dbg !520
  ret ptr %2, !dbg !521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @key_ref_put(ptr noundef %key_ref) #4 align 16 !dbg !522 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !526, metadata !DIExpression()), !dbg !527
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !528
  %call = call ptr @key_ref_to_ptr(ptr noundef %0) #8, !dbg !529
  call void @key_put(ptr noundef %call) #8, !dbg !530
  ret void, !dbg !531
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !532 dso_local void @key_put(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "crypto/asymmetric_keys/x509_loader.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d52bc5517d0b6cc3de87a0b89e3d700a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 53)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 26)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 52)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x509_load_certificate_list69", scope: !24, file: !2, line: 58, type: !26, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/asymmetric_keys/.x509_loader.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/asymmetric_keys/x509_key_parser\22 -D KBUILD_BASENAME=\22x509_loader\22 -D KBUILD_MODNAME=\22x509_key_parser\22 -D __KBUILD_MODNAME=kmod_x509_key_parser -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/asymmetric_keys/x509_loader.ll crypto/asymmetric_keys/x509_loader.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !25, globals: !357, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !27, !31, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_ref_t", file: !28, line: 153, baseType: !29)
!28 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "__key_reference_with_attributes", file: !28, line: 153, flags: DIFlagFwdDecl)
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !28, line: 195, size: 1728, elements: !35)
!35 = !{!36, !48, !55, !72, !123, !126, !127, !134, !135, !145, !152, !157, !158, !159, !161, !162, !340, !356}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !34, file: !28, line: 196, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !38, line: 113, baseType: !39)
!38 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !38, line: 111, size: 32, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !39, file: !38, line: 112, baseType: !42, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !43, line: 174, baseType: !44)
!43 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 172, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !44, file: !43, line: 173, baseType: !47, size: 32)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !34, file: !28, line: 197, baseType: !49, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !28, line: 28, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !43, line: 104, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !52, line: 20, baseType: !53)
!52 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !54, line: 26, baseType: !47)
!54 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!55 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !28, line: 198, baseType: !56, size: 192, offset: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !28, line: 198, size: 192, elements: !57)
!57 = !{!58, !64}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !56, file: !28, line: 199, baseType: !59, size: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !43, line: 190, size: 128, elements: !60)
!60 = !{!61, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !43, line: 191, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !59, file: !43, line: 191, baseType: !62, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !56, file: !28, line: 200, baseType: !65, size: 192, align: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !66, line: 5, size: 192, align: 64, elements: !67)
!66 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!67 = !{!68, !69, !71}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !65, file: !66, line: 6, baseType: !31, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !65, file: !66, line: 7, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !65, file: !66, line: 8, baseType: !70, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !34, file: !28, line: 205, baseType: !73, size: 320, offset: 256)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !74, line: 48, size: 320, elements: !75)
!74 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!75 = !{!76, !86, !87, !92, !122}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !73, file: !74, line: 49, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !78, line: 13, baseType: !79)
!78 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !43, line: 181, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 179, size: 64, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !80, file: !43, line: 180, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !52, line: 22, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !54, line: 30, baseType: !85)
!85 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !73, file: !74, line: 55, baseType: !77, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !73, file: !74, line: 57, baseType: !88, size: 32, offset: 128)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !89, line: 15, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !88, file: !89, line: 20, baseType: !42, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !73, file: !74, line: 59, baseType: !93, size: 32, offset: 160)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !94, line: 23, baseType: !95)
!94 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !94, line: 14, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !95, file: !94, line: 15, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !99, line: 44, baseType: !100)
!99 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !99, line: 14, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 15, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 15, size: 32, elements: !104)
!104 = !{!105, !106, !114}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !103, file: !99, line: 16, baseType: !42, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !99, line: 24, baseType: !107, size: 16)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !99, line: 24, size: 16, elements: !108)
!108 = !{!109, !113}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !107, file: !99, line: 25, baseType: !110, size: 8)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !52, line: 17, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !54, line: 21, baseType: !112)
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !107, file: !99, line: 26, baseType: !110, size: 8, offset: 8)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !99, line: 28, baseType: !115, size: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !99, line: 28, size: 32, elements: !116)
!116 = !{!117, !121}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !115, file: !99, line: 29, baseType: !118, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !52, line: 19, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !54, line: 24, baseType: !120)
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !115, file: !99, line: 30, baseType: !118, size: 16, offset: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !73, file: !74, line: 60, baseType: !59, size: 128, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !34, file: !28, line: 206, baseType: !124, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !28, line: 206, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !34, file: !28, line: 207, baseType: !26, size: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !28, line: 208, baseType: !128, size: 64, offset: 704)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !28, line: 208, size: 64, elements: !129)
!129 = !{!130, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !128, file: !28, line: 209, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !132, line: 8, baseType: !84)
!132 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !128, file: !28, line: 210, baseType: !131, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !34, file: !28, line: 212, baseType: !131, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !34, file: !28, line: 213, baseType: !136, size: 32, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !137, line: 23, baseType: !138)
!137 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 21, size: 32, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !138, file: !137, line: 22, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !43, line: 37, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !143, line: 49, baseType: !144)
!143 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!144 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !34, file: !28, line: 214, baseType: !146, size: 32, offset: 864)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !137, line: 28, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 26, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !147, file: !137, line: 27, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !43, line: 38, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !143, line: 50, baseType: !144)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !34, file: !28, line: 215, baseType: !153, size: 32, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !28, line: 31, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !43, line: 110, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !52, line: 21, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !54, line: 27, baseType: !144)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !34, file: !28, line: 216, baseType: !120, size: 16, offset: 928)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !34, file: !28, line: 217, baseType: !120, size: 16, offset: 944)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !34, file: !28, line: 221, baseType: !160, size: 16, offset: 960)
!160 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !28, line: 228, baseType: !31, size: 64, offset: 1024)
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !28, line: 245, baseType: !163, size: 320, offset: 1088)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !28, line: 245, size: 320, elements: !164)
!164 = !{!165, !332}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !163, file: !28, line: 246, baseType: !166, size: 320)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !28, line: 114, size: 320, elements: !167)
!167 = !{!168, !169, !181, !316, !331}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !166, file: !28, line: 116, baseType: !31, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !28, line: 117, baseType: !170, size: 64, offset: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !28, line: 117, size: 64, elements: !171)
!171 = !{!172, !180}
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !28, line: 118, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !28, line: 118, size: 64, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !173, file: !28, line: 120, baseType: !118, size: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !173, file: !28, line: 121, baseType: !177, size: 48, offset: 16)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 6)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !170, file: !28, line: 127, baseType: !31, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !28, line: 129, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !184, line: 64, size: 1344, elements: !185)
!184 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!185 = !{!186, !189, !193, !194, !198, !222, !226, !230, !231, !251, !255, !259, !260, !266, !270, !275, !293, !302, !307, !311, !312}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !184, line: 66, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !183, file: !184, line: 72, baseType: !190, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 61, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !143, line: 72, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !143, line: 16, baseType: !31)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !184, line: 74, baseType: !144, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !183, file: !184, line: 79, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!47, !187}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !183, file: !184, line: 85, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!47, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !184, line: 31, size: 640, elements: !204)
!204 = !{!205, !206, !208, !216, !219, !220, !221}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !203, file: !184, line: 32, baseType: !187, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !203, file: !184, line: 33, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !203, file: !184, line: 34, baseType: !209, size: 256, offset: 128)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !28, line: 134, size: 256, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !209, file: !28, line: 135, baseType: !26, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !209, file: !28, line: 136, baseType: !213, size: 256)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 4)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !203, file: !184, line: 35, baseType: !217, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !203, file: !184, line: 36, baseType: !190, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !203, file: !184, line: 37, baseType: !190, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !203, file: !184, line: 38, baseType: !131, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !183, file: !184, line: 89, baseType: !223, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !202}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !183, file: !184, line: 95, baseType: !227, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!47, !33, !202}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !183, file: !184, line: 102, baseType: !227, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !183, file: !184, line: 108, baseType: !232, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!47, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !184, line: 46, size: 256, elements: !237)
!237 = !{!238, !248, !249, !250}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !236, file: !184, line: 51, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !244, !246}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !43, line: 35, baseType: !243)
!243 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !236, file: !184, line: 54, baseType: !217, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !236, file: !184, line: 55, baseType: !26, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !236, file: !184, line: 56, baseType: !144, size: 32, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !183, file: !184, line: 112, baseType: !252, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !235}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !183, file: !184, line: 117, baseType: !256, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !33}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !183, file: !184, line: 120, baseType: !256, size: 64, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !183, file: !184, line: 123, baseType: !261, size: 64, offset: 768)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !244, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !28, line: 97, flags: DIFlagFwdDecl)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !183, file: !184, line: 132, baseType: !267, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!32, !244, !207, !190}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !183, file: !184, line: 142, baseType: !271, size: 64, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !184, line: 41, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!47, !33, !26}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !183, file: !184, line: 150, baseType: !276, size: 64, offset: 960)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !187}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !28, line: 176, size: 192, elements: !281)
!281 = !{!282, !291, !292}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !280, file: !28, line: 177, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !28, line: 171, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!47, !33, !287, !289, !33}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !280, file: !28, line: 178, baseType: !33, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !280, file: !28, line: 179, baseType: !182, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !183, file: !184, line: 153, baseType: !294, size: 64, offset: 1024)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!47, !297, !300}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !184, line: 17, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !184, line: 16, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !183, file: !184, line: 155, baseType: !303, size: 64, offset: 1088)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!47, !306, !217, !26}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !183, file: !184, line: 157, baseType: !308, size: 64, offset: 1152)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!47, !306, !217, !217}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !183, file: !184, line: 161, baseType: !59, size: 128, offset: 1216)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !183, file: !184, line: 162, baseType: !313, offset: 1344)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !314, line: 206, elements: !315)
!314 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!315 = !{}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !166, file: !28, line: 130, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !28, line: 108, size: 192, elements: !319)
!319 = !{!320, !329, !330}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !318, file: !28, line: 109, baseType: !321, size: 128, align: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !43, line: 232, size: 128, align: 64, elements: !322)
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !43, line: 233, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !321, file: !43, line: 234, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !324}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !318, file: !28, line: 110, baseType: !37, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !318, file: !28, line: 111, baseType: !242, size: 8, offset: 160)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !166, file: !28, line: 131, baseType: !187, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !28, line: 247, baseType: !333, size: 320)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !28, line: 247, size: 320, elements: !334)
!334 = !{!335, !336, !337, !338, !339}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !333, file: !28, line: 248, baseType: !31, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !333, file: !28, line: 249, baseType: !31, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !333, file: !28, line: 250, baseType: !182, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !333, file: !28, line: 251, baseType: !317, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !333, file: !28, line: 252, baseType: !207, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !28, line: 260, baseType: !341, size: 256, offset: 1408)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !28, line: 260, size: 256, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !341, file: !28, line: 261, baseType: !209, size: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !28, line: 262, baseType: !345, size: 256)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !28, line: 262, size: 256, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !345, file: !28, line: 264, baseType: !59, size: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !345, file: !28, line: 265, baseType: !349, size: 128, offset: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !350, line: 22, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!351 = !{!352, !355}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !349, file: !350, line: 23, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !350, line: 23, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !349, file: !350, line: 24, baseType: !31, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !34, file: !28, line: 280, baseType: !279, size: 64, offset: 1664)
!357 = !{!0, !7, !12, !17, !22}
!358 = !{i32 7, !"Dwarf Version", i32 5}
!359 = !{i32 2, !"Debug Info Version", i32 3}
!360 = !{i32 1, !"wchar_size", i32 2}
!361 = !{i32 8, !"cf-protection-branch", i32 1}
!362 = !{i32 4, !"function_return_thunk_extern", i32 1}
!363 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!364 = !{i32 1, !"Code Model", i32 2}
!365 = !{i32 1, !"override-stack-alignment", i32 8}
!366 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!367 = distinct !DISubprogram(name: "x509_load_certificate_list", scope: !2, file: !2, line: 7, type: !368, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !373)
!368 = !DISubroutineType(types: !369)
!369 = !{!47, !370, !372, !244}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381}
!374 = !DILocalVariable(name: "cert_list", arg: 1, scope: !367, file: !2, line: 7, type: !370)
!375 = !DILocalVariable(name: "list_size", arg: 2, scope: !367, file: !2, line: 8, type: !372)
!376 = !DILocalVariable(name: "keyring", arg: 3, scope: !367, file: !2, line: 9, type: !244)
!377 = !DILocalVariable(name: "key", scope: !367, file: !2, line: 11, type: !27)
!378 = !DILocalVariable(name: "p", scope: !367, file: !2, line: 12, type: !370)
!379 = !DILocalVariable(name: "end", scope: !367, file: !2, line: 12, type: !370)
!380 = !DILocalVariable(name: "plen", scope: !367, file: !2, line: 13, type: !190)
!381 = !DILabel(scope: !367, name: "dodgy_cert", file: !2, line: 54)
!382 = !DILocation(line: 7, column: 41, scope: !367)
!383 = !DILocation(line: 8, column: 31, scope: !367)
!384 = !DILocation(line: 9, column: 29, scope: !367)
!385 = !DILocation(line: 11, column: 2, scope: !367)
!386 = !DILocation(line: 11, column: 12, scope: !367)
!387 = !DILocation(line: 12, column: 2, scope: !367)
!388 = !DILocation(line: 12, column: 12, scope: !367)
!389 = !DILocation(line: 12, column: 16, scope: !367)
!390 = !DILocation(line: 13, column: 2, scope: !367)
!391 = !DILocation(line: 13, column: 9, scope: !367)
!392 = !DILocation(line: 15, column: 6, scope: !367)
!393 = !DILocation(line: 15, column: 4, scope: !367)
!394 = !DILocation(line: 16, column: 8, scope: !367)
!395 = !DILocation(line: 16, column: 12, scope: !367)
!396 = !DILocation(line: 16, column: 10, scope: !367)
!397 = !DILocation(line: 16, column: 6, scope: !367)
!398 = !DILocation(line: 17, column: 2, scope: !367)
!399 = !DILocation(line: 17, column: 9, scope: !367)
!400 = !DILocation(line: 17, column: 13, scope: !367)
!401 = !DILocation(line: 17, column: 11, scope: !367)
!402 = !DILocation(line: 21, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 21, column: 7)
!404 = distinct !DILexicalBlock(scope: !367, file: !2, line: 17, column: 18)
!405 = !DILocation(line: 21, column: 13, scope: !403)
!406 = !DILocation(line: 21, column: 11, scope: !403)
!407 = !DILocation(line: 21, column: 15, scope: !403)
!408 = !DILocation(line: 21, column: 7, scope: !404)
!409 = !DILocation(line: 22, column: 4, scope: !403)
!410 = !DILocation(line: 23, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !404, file: !2, line: 23, column: 7)
!412 = !DILocation(line: 23, column: 12, scope: !411)
!413 = !DILocation(line: 23, column: 20, scope: !411)
!414 = !DILocation(line: 24, column: 7, scope: !411)
!415 = !DILocation(line: 24, column: 12, scope: !411)
!416 = !DILocation(line: 23, column: 7, scope: !404)
!417 = !DILocation(line: 25, column: 4, scope: !411)
!418 = !DILocation(line: 26, column: 11, scope: !404)
!419 = !DILocation(line: 26, column: 16, scope: !404)
!420 = !DILocation(line: 26, column: 24, scope: !404)
!421 = !DILocation(line: 26, column: 22, scope: !404)
!422 = !DILocation(line: 26, column: 10, scope: !404)
!423 = !DILocation(line: 26, column: 8, scope: !404)
!424 = !DILocation(line: 27, column: 8, scope: !404)
!425 = !DILocation(line: 28, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !404, file: !2, line: 28, column: 7)
!427 = !DILocation(line: 28, column: 14, scope: !426)
!428 = !DILocation(line: 28, column: 20, scope: !426)
!429 = !DILocation(line: 28, column: 18, scope: !426)
!430 = !DILocation(line: 28, column: 12, scope: !426)
!431 = !DILocation(line: 28, column: 7, scope: !404)
!432 = !DILocation(line: 29, column: 4, scope: !426)
!433 = !DILocation(line: 31, column: 43, scope: !404)
!434 = !DILocation(line: 31, column: 30, scope: !404)
!435 = !DILocation(line: 34, column: 9, scope: !404)
!436 = !DILocation(line: 35, column: 9, scope: !404)
!437 = !DILocation(line: 31, column: 9, scope: !404)
!438 = !DILocation(line: 31, column: 7, scope: !404)
!439 = !DILocation(line: 41, column: 14, scope: !440)
!440 = distinct !DILexicalBlock(scope: !404, file: !2, line: 41, column: 7)
!441 = !DILocation(line: 41, column: 7, scope: !440)
!442 = !DILocation(line: 41, column: 7, scope: !404)
!443 = !DILocation(line: 42, column: 4, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !2, line: 42, column: 4)
!445 = distinct !DILexicalBlock(scope: !440, file: !2, line: 41, column: 20)
!446 = !DILocation(line: 42, column: 4, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !2, line: 42, column: 4)
!448 = !DILocation(line: 44, column: 3, scope: !445)
!449 = !DILocation(line: 45, column: 4, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !2, line: 45, column: 4)
!451 = distinct !DILexicalBlock(scope: !440, file: !2, line: 44, column: 10)
!452 = !DILocation(line: 45, column: 4, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !2, line: 45, column: 4)
!454 = !DILocation(line: 47, column: 16, scope: !451)
!455 = !DILocation(line: 47, column: 4, scope: !451)
!456 = !DILocation(line: 49, column: 8, scope: !404)
!457 = !DILocation(line: 49, column: 5, scope: !404)
!458 = distinct !{!458, !398, !459, !460, !461}
!459 = !DILocation(line: 50, column: 2, scope: !367)
!460 = !{!"llvm.loop.mustprogress"}
!461 = !{!"llvm.loop.unroll.disable"}
!462 = !DILocation(line: 52, column: 2, scope: !367)
!463 = !DILocation(line: 54, column: 1, scope: !367)
!464 = !DILocation(line: 55, column: 2, scope: !465)
!465 = distinct !DILexicalBlock(scope: !367, file: !2, line: 55, column: 2)
!466 = !DILocation(line: 55, column: 2, scope: !467)
!467 = distinct !DILexicalBlock(scope: !465, file: !2, line: 55, column: 2)
!468 = !DILocation(line: 56, column: 2, scope: !367)
!469 = !DILocation(line: 57, column: 1, scope: !367)
!470 = !DISubprogram(name: "key_create_or_update", scope: !28, file: !28, line: 397, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DISubroutineType(types: !472)
!472 = !{!27, !27, !187, !187, !217, !190, !153, !31}
!473 = distinct !DISubprogram(name: "make_key_ref", scope: !28, file: !28, line: 155, type: !474, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !476)
!474 = !DISubroutineType(types: !475)
!475 = !{!27, !244, !242}
!476 = !{!477, !478}
!477 = !DILocalVariable(name: "key", arg: 1, scope: !473, file: !28, line: 155, type: !244)
!478 = !DILocalVariable(name: "possession", arg: 2, scope: !473, file: !28, line: 156, type: !242)
!479 = !DILocation(line: 155, column: 56, scope: !473)
!480 = !DILocation(line: 156, column: 15, scope: !473)
!481 = !DILocation(line: 158, column: 38, scope: !473)
!482 = !DILocation(line: 158, column: 22, scope: !473)
!483 = !DILocation(line: 158, column: 44, scope: !473)
!484 = !{i8 0, i8 2}
!485 = !DILocation(line: 158, column: 42, scope: !473)
!486 = !DILocation(line: 158, column: 9, scope: !473)
!487 = !DILocation(line: 158, column: 2, scope: !473)
!488 = distinct !DISubprogram(name: "IS_ERR", scope: !489, file: !489, line: 59, type: !490, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !492)
!489 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!490 = !DISubroutineType(types: !491)
!491 = !{!242, !217}
!492 = !{!493}
!493 = !DILocalVariable(name: "ptr", arg: 1, scope: !488, file: !489, line: 59, type: !217)
!494 = !DILocation(line: 59, column: 60, scope: !488)
!495 = !DILocation(line: 61, column: 9, scope: !488)
!496 = !DILocation(line: 61, column: 2, scope: !488)
!497 = !DISubprogram(name: "_printk", scope: !498, file: !498, line: 153, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!499 = !DISubroutineType(types: !500)
!500 = !{!47, !187, null}
!501 = distinct !DISubprogram(name: "PTR_ERR", scope: !489, file: !489, line: 49, type: !502, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!32, !217}
!504 = !{!505}
!505 = !DILocalVariable(name: "ptr", arg: 1, scope: !501, file: !489, line: 49, type: !217)
!506 = !DILocation(line: 49, column: 61, scope: !501)
!507 = !DILocation(line: 51, column: 16, scope: !501)
!508 = !DILocation(line: 51, column: 9, scope: !501)
!509 = !DILocation(line: 51, column: 2, scope: !501)
!510 = distinct !DISubprogram(name: "key_ref_to_ptr", scope: !28, file: !28, line: 161, type: !511, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !514)
!511 = !DISubroutineType(types: !512)
!512 = !{!33, !513}
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!514 = !{!515}
!515 = !DILocalVariable(name: "key_ref", arg: 1, scope: !510, file: !28, line: 161, type: !513)
!516 = !DILocation(line: 161, column: 58, scope: !510)
!517 = !DILocation(line: 163, column: 41, scope: !510)
!518 = !DILocation(line: 163, column: 25, scope: !510)
!519 = !DILocation(line: 163, column: 49, scope: !510)
!520 = !DILocation(line: 163, column: 9, scope: !510)
!521 = !DILocation(line: 163, column: 2, scope: !510)
!522 = distinct !DISubprogram(name: "key_ref_put", scope: !28, file: !28, line: 317, type: !523, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !27}
!525 = !{!526}
!526 = !DILocalVariable(name: "key_ref", arg: 1, scope: !522, file: !28, line: 317, type: !27)
!527 = !DILocation(line: 317, column: 42, scope: !522)
!528 = !DILocation(line: 319, column: 25, scope: !522)
!529 = !DILocation(line: 319, column: 10, scope: !522)
!530 = !DILocation(line: 319, column: 2, scope: !522)
!531 = !DILocation(line: 320, column: 1, scope: !522)
!532 = !DISubprogram(name: "key_put", scope: !28, file: !28, line: 302, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
