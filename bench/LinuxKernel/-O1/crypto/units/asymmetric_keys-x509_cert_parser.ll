; ModuleID = 'crypto/asymmetric_keys/x509_cert_parser.c'
source_filename = "crypto/asymmetric_keys/x509_cert_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x509_free_certificate: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad x509_free_certificate ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x509_cert_parse: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad x509_cert_parse ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x509_decode_time: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad x509_decode_time ; .previous"

%struct.asn1_decoder = type opaque
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8 }
%struct.x509_parse_context = type { ptr, i64, ptr, i64, ptr, i64, i32, i32, i32, i8, i8, i8, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr, i64 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_x509_free_certificate120 = internal global ptr @x509_free_certificate, section ".discard.addressable", align 8, !dbg !0
@x509_decoder = external dso_local constant %struct.asn1_decoder, align 1
@x509_akid_decoder = external dso_local constant %struct.asn1_decoder, align 1
@.str = private unnamed_addr constant [44 x i8] c"\014X.509: Couldn't decode AuthKeyIdentifier\0A\00", align 1, !dbg !173
@__UNIQUE_ID___addressable_x509_cert_parse121 = internal global ptr @x509_cert_parse, section ".discard.addressable", align 8, !dbg !179
@.str.1 = private unnamed_addr constant [4 x i8] c"md4\00", align 1, !dbg !181
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1, !dbg !186
@.str.3 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1, !dbg !191
@.str.4 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1, !dbg !196
@.str.5 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1, !dbg !198
@.str.6 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1, !dbg !200
@.str.7 = private unnamed_addr constant [12 x i8] c"streebog256\00", align 1, !dbg !202
@.str.8 = private unnamed_addr constant [12 x i8] c"streebog512\00", align 1, !dbg !207
@.str.9 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1, !dbg !209
@.str.10 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1, !dbg !211
@.str.11 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1, !dbg !213
@.str.12 = private unnamed_addr constant [7 x i8] c"ecrdsa\00", align 1, !dbg !218
@.str.13 = private unnamed_addr constant [4 x i8] c"raw\00", align 1, !dbg !220
@.str.14 = private unnamed_addr constant [4 x i8] c"sm2\00", align 1, !dbg !222
@.str.15 = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1, !dbg !224
@.str.16 = private unnamed_addr constant [5 x i8] c"x962\00", align 1, !dbg !226
@.str.17 = private unnamed_addr constant [77 x i8] c"\014X.509: signatureAlgorithm (%u) differs from tbsCertificate.signature (%u)\0A\00", align 1, !dbg !228
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !233
@.str.19 = private unnamed_addr constant [16 x i8] c"ecdsa-nist-p192\00", align 1, !dbg !238
@.str.20 = private unnamed_addr constant [16 x i8] c"ecdsa-nist-p256\00", align 1, !dbg !243
@.str.21 = private unnamed_addr constant [16 x i8] c"ecdsa-nist-p384\00", align 1, !dbg !245
@x509_decode_time.month_lengths = internal constant [12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", align 1, !dbg !247
@__UNIQUE_ID___addressable_x509_decode_time122 = internal global ptr @x509_decode_time, section ".discard.addressable", align 8, !dbg !333
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.22 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !335
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_x509_free_certificate120, ptr @__UNIQUE_ID___addressable_x509_cert_parse121, ptr @__UNIQUE_ID___addressable_x509_decode_time122], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @x509_free_certificate(ptr noundef %cert) #0 align 16 !dbg !349 {
entry:
  %cert.addr = alloca ptr, align 8
  store ptr %cert, ptr %cert.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cert.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load ptr, ptr %cert.addr, align 8, !dbg !432
  %tobool = icmp ne ptr %0, null, !dbg !432
  br i1 %tobool, label %if.then, label %if.end, !dbg !434

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cert.addr, align 8, !dbg !435
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 2, !dbg !437
  %2 = load ptr, ptr %pub, align 8, !dbg !437
  call void @public_key_free(ptr noundef %2) #16, !dbg !438
  %3 = load ptr, ptr %cert.addr, align 8, !dbg !439
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 3, !dbg !440
  %4 = load ptr, ptr %sig, align 8, !dbg !440
  call void @public_key_signature_free(ptr noundef %4) #16, !dbg !441
  %5 = load ptr, ptr %cert.addr, align 8, !dbg !442
  %issuer = getelementptr inbounds %struct.x509_certificate, ptr %5, i32 0, i32 4, !dbg !443
  %6 = load ptr, ptr %issuer, align 8, !dbg !443
  call void @kfree(ptr noundef %6) #16, !dbg !444
  %7 = load ptr, ptr %cert.addr, align 8, !dbg !445
  %subject = getelementptr inbounds %struct.x509_certificate, ptr %7, i32 0, i32 5, !dbg !446
  %8 = load ptr, ptr %subject, align 8, !dbg !446
  call void @kfree(ptr noundef %8) #16, !dbg !447
  %9 = load ptr, ptr %cert.addr, align 8, !dbg !448
  %id = getelementptr inbounds %struct.x509_certificate, ptr %9, i32 0, i32 6, !dbg !449
  %10 = load ptr, ptr %id, align 8, !dbg !449
  call void @kfree(ptr noundef %10) #16, !dbg !450
  %11 = load ptr, ptr %cert.addr, align 8, !dbg !451
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %11, i32 0, i32 7, !dbg !452
  %12 = load ptr, ptr %skid, align 8, !dbg !452
  call void @kfree(ptr noundef %12) #16, !dbg !453
  %13 = load ptr, ptr %cert.addr, align 8, !dbg !454
  call void @kfree(ptr noundef %13) #16, !dbg !455
  br label %if.end, !dbg !456

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !457
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !458 dso_local void @public_key_free(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !461 dso_local void @public_key_signature_free(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !464 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @x509_cert_parse(ptr noundef %data, i64 noundef %datalen) #0 align 16 !dbg !467 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i64, align 8
  %cert = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %kid = alloca ptr, align 8
  %ret = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !471, metadata !DIExpression()), !dbg !504
  store i64 %datalen, ptr %datalen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datalen.addr, metadata !472, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 8, ptr %cert) #17, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %cert, metadata !473, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !474, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 8, ptr %kid) #17, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %kid, metadata !499, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !500, metadata !DIExpression()), !dbg !513
  store i64 -12, ptr %ret, align 8, !dbg !514
  %call = call noalias ptr @kzalloc(i64 noundef 168, i32 noundef 3264) #18, !dbg !515
  store ptr %call, ptr %cert, align 8, !dbg !516
  %0 = load ptr, ptr %cert, align 8, !dbg !517
  %tobool = icmp ne ptr %0, null, !dbg !517
  br i1 %tobool, label %if.end, label %if.then, !dbg !519

if.then:                                          ; preds = %entry
  br label %error_no_cert, !dbg !520

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #18, !dbg !521
  %1 = load ptr, ptr %cert, align 8, !dbg !522
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 2, !dbg !523
  store ptr %call1, ptr %pub, align 8, !dbg !524
  %2 = load ptr, ptr %cert, align 8, !dbg !525
  %pub2 = getelementptr inbounds %struct.x509_certificate, ptr %2, i32 0, i32 2, !dbg !527
  %3 = load ptr, ptr %pub2, align 8, !dbg !527
  %tobool3 = icmp ne ptr %3, null, !dbg !525
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !528

if.then4:                                         ; preds = %if.end
  br label %error_no_ctx, !dbg !529

if.end5:                                          ; preds = %if.end
  %call6 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !530
  %4 = load ptr, ptr %cert, align 8, !dbg !531
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 3, !dbg !532
  store ptr %call6, ptr %sig, align 8, !dbg !533
  %5 = load ptr, ptr %cert, align 8, !dbg !534
  %sig7 = getelementptr inbounds %struct.x509_certificate, ptr %5, i32 0, i32 3, !dbg !536
  %6 = load ptr, ptr %sig7, align 8, !dbg !536
  %tobool8 = icmp ne ptr %6, null, !dbg !534
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !537

if.then9:                                         ; preds = %if.end5
  br label %error_no_ctx, !dbg !538

if.end10:                                         ; preds = %if.end5
  %call11 = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #18, !dbg !539
  store ptr %call11, ptr %ctx, align 8, !dbg !540
  %7 = load ptr, ptr %ctx, align 8, !dbg !541
  %tobool12 = icmp ne ptr %7, null, !dbg !541
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !543

if.then13:                                        ; preds = %if.end10
  br label %error_no_ctx, !dbg !544

if.end14:                                         ; preds = %if.end10
  %8 = load ptr, ptr %cert, align 8, !dbg !545
  %9 = load ptr, ptr %ctx, align 8, !dbg !546
  %cert15 = getelementptr inbounds %struct.x509_parse_context, ptr %9, i32 0, i32 0, !dbg !547
  store ptr %8, ptr %cert15, align 8, !dbg !548
  %10 = load ptr, ptr %data.addr, align 8, !dbg !549
  %11 = ptrtoint ptr %10 to i64, !dbg !550
  %12 = load ptr, ptr %ctx, align 8, !dbg !551
  %data16 = getelementptr inbounds %struct.x509_parse_context, ptr %12, i32 0, i32 1, !dbg !552
  store i64 %11, ptr %data16, align 8, !dbg !553
  %13 = load ptr, ptr %ctx, align 8, !dbg !554
  %14 = load ptr, ptr %data.addr, align 8, !dbg !555
  %15 = load i64, ptr %datalen.addr, align 8, !dbg !556
  %call17 = call i32 @asn1_ber_decoder(ptr noundef @x509_decoder, ptr noundef %13, ptr noundef %14, i64 noundef %15) #16, !dbg !557
  %conv = sext i32 %call17 to i64, !dbg !557
  store i64 %conv, ptr %ret, align 8, !dbg !558
  %16 = load i64, ptr %ret, align 8, !dbg !559
  %cmp = icmp slt i64 %16, 0, !dbg !561
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !562

if.then19:                                        ; preds = %if.end14
  br label %error_decode, !dbg !563

if.end20:                                         ; preds = %if.end14
  %17 = load ptr, ptr %ctx, align 8, !dbg !564
  %raw_akid = getelementptr inbounds %struct.x509_parse_context, ptr %17, i32 0, i32 16, !dbg !566
  %18 = load ptr, ptr %raw_akid, align 8, !dbg !566
  %tobool21 = icmp ne ptr %18, null, !dbg !564
  br i1 %tobool21, label %if.then22, label %if.end33, !dbg !567

if.then22:                                        ; preds = %if.end20
  store i32 0, ptr %tmp, align 4, !dbg !568
  %19 = load i32, ptr %tmp, align 4, !dbg !572
  %20 = load ptr, ptr %ctx, align 8, !dbg !573
  %21 = load ptr, ptr %ctx, align 8, !dbg !574
  %raw_akid23 = getelementptr inbounds %struct.x509_parse_context, ptr %21, i32 0, i32 16, !dbg !575
  %22 = load ptr, ptr %raw_akid23, align 8, !dbg !575
  %23 = load ptr, ptr %ctx, align 8, !dbg !576
  %raw_akid_size = getelementptr inbounds %struct.x509_parse_context, ptr %23, i32 0, i32 15, !dbg !577
  %24 = load i32, ptr %raw_akid_size, align 8, !dbg !577
  %conv24 = zext i32 %24 to i64, !dbg !576
  %call25 = call i32 @asn1_ber_decoder(ptr noundef @x509_akid_decoder, ptr noundef %20, ptr noundef %22, i64 noundef %conv24) #16, !dbg !578
  %conv26 = sext i32 %call25 to i64, !dbg !578
  store i64 %conv26, ptr %ret, align 8, !dbg !579
  %25 = load i64, ptr %ret, align 8, !dbg !580
  %cmp27 = icmp slt i64 %25, 0, !dbg !582
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !583

if.then29:                                        ; preds = %if.then22
  br label %do.body, !dbg !584

do.body:                                          ; preds = %if.then29
  br label %do.cond, !dbg !587

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !587

do.end:                                           ; preds = %do.cond
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #19, !dbg !584
  store i32 %call31, ptr %tmp30, align 4, !dbg !587
  %26 = load i32, ptr %tmp30, align 4, !dbg !584
  br label %error_decode, !dbg !589

if.end32:                                         ; preds = %if.then22
  br label %if.end33, !dbg !590

if.end33:                                         ; preds = %if.end32, %if.end20
  store i64 -12, ptr %ret, align 8, !dbg !591
  %27 = load ptr, ptr %ctx, align 8, !dbg !592
  %key = getelementptr inbounds %struct.x509_parse_context, ptr %27, i32 0, i32 2, !dbg !593
  %28 = load ptr, ptr %key, align 8, !dbg !593
  %29 = load ptr, ptr %ctx, align 8, !dbg !594
  %key_size = getelementptr inbounds %struct.x509_parse_context, ptr %29, i32 0, i32 3, !dbg !595
  %30 = load i64, ptr %key_size, align 8, !dbg !595
  %call34 = call ptr @kmemdup(ptr noundef %28, i64 noundef %30, i32 noundef 3264) #20, !dbg !596
  %31 = load ptr, ptr %cert, align 8, !dbg !597
  %pub35 = getelementptr inbounds %struct.x509_certificate, ptr %31, i32 0, i32 2, !dbg !598
  %32 = load ptr, ptr %pub35, align 8, !dbg !598
  %key36 = getelementptr inbounds %struct.public_key, ptr %32, i32 0, i32 0, !dbg !599
  store ptr %call34, ptr %key36, align 8, !dbg !600
  %33 = load ptr, ptr %cert, align 8, !dbg !601
  %pub37 = getelementptr inbounds %struct.x509_certificate, ptr %33, i32 0, i32 2, !dbg !603
  %34 = load ptr, ptr %pub37, align 8, !dbg !603
  %key38 = getelementptr inbounds %struct.public_key, ptr %34, i32 0, i32 0, !dbg !604
  %35 = load ptr, ptr %key38, align 8, !dbg !604
  %tobool39 = icmp ne ptr %35, null, !dbg !601
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !605

if.then40:                                        ; preds = %if.end33
  br label %error_decode, !dbg !606

if.end41:                                         ; preds = %if.end33
  %36 = load ptr, ptr %ctx, align 8, !dbg !607
  %key_size42 = getelementptr inbounds %struct.x509_parse_context, ptr %36, i32 0, i32 3, !dbg !608
  %37 = load i64, ptr %key_size42, align 8, !dbg !608
  %conv43 = trunc i64 %37 to i32, !dbg !607
  %38 = load ptr, ptr %cert, align 8, !dbg !609
  %pub44 = getelementptr inbounds %struct.x509_certificate, ptr %38, i32 0, i32 2, !dbg !610
  %39 = load ptr, ptr %pub44, align 8, !dbg !610
  %keylen = getelementptr inbounds %struct.public_key, ptr %39, i32 0, i32 1, !dbg !611
  store i32 %conv43, ptr %keylen, align 8, !dbg !612
  %40 = load ptr, ptr %ctx, align 8, !dbg !613
  %params = getelementptr inbounds %struct.x509_parse_context, ptr %40, i32 0, i32 4, !dbg !614
  %41 = load ptr, ptr %params, align 8, !dbg !614
  %42 = load ptr, ptr %ctx, align 8, !dbg !615
  %params_size = getelementptr inbounds %struct.x509_parse_context, ptr %42, i32 0, i32 5, !dbg !616
  %43 = load i64, ptr %params_size, align 8, !dbg !616
  %call45 = call ptr @kmemdup(ptr noundef %41, i64 noundef %43, i32 noundef 3264) #20, !dbg !617
  %44 = load ptr, ptr %cert, align 8, !dbg !618
  %pub46 = getelementptr inbounds %struct.x509_certificate, ptr %44, i32 0, i32 2, !dbg !619
  %45 = load ptr, ptr %pub46, align 8, !dbg !619
  %params47 = getelementptr inbounds %struct.public_key, ptr %45, i32 0, i32 3, !dbg !620
  store ptr %call45, ptr %params47, align 8, !dbg !621
  %46 = load ptr, ptr %cert, align 8, !dbg !622
  %pub48 = getelementptr inbounds %struct.x509_certificate, ptr %46, i32 0, i32 2, !dbg !624
  %47 = load ptr, ptr %pub48, align 8, !dbg !624
  %params49 = getelementptr inbounds %struct.public_key, ptr %47, i32 0, i32 3, !dbg !625
  %48 = load ptr, ptr %params49, align 8, !dbg !625
  %tobool50 = icmp ne ptr %48, null, !dbg !622
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !626

if.then51:                                        ; preds = %if.end41
  br label %error_decode, !dbg !627

if.end52:                                         ; preds = %if.end41
  %49 = load ptr, ptr %ctx, align 8, !dbg !628
  %params_size53 = getelementptr inbounds %struct.x509_parse_context, ptr %49, i32 0, i32 5, !dbg !629
  %50 = load i64, ptr %params_size53, align 8, !dbg !629
  %conv54 = trunc i64 %50 to i32, !dbg !628
  %51 = load ptr, ptr %cert, align 8, !dbg !630
  %pub55 = getelementptr inbounds %struct.x509_certificate, ptr %51, i32 0, i32 2, !dbg !631
  %52 = load ptr, ptr %pub55, align 8, !dbg !631
  %paramlen = getelementptr inbounds %struct.public_key, ptr %52, i32 0, i32 4, !dbg !632
  store i32 %conv54, ptr %paramlen, align 8, !dbg !633
  %53 = load ptr, ptr %ctx, align 8, !dbg !634
  %key_algo = getelementptr inbounds %struct.x509_parse_context, ptr %53, i32 0, i32 6, !dbg !635
  %54 = load i32, ptr %key_algo, align 8, !dbg !635
  %55 = load ptr, ptr %cert, align 8, !dbg !636
  %pub56 = getelementptr inbounds %struct.x509_certificate, ptr %55, i32 0, i32 2, !dbg !637
  %56 = load ptr, ptr %pub56, align 8, !dbg !637
  %algo = getelementptr inbounds %struct.public_key, ptr %56, i32 0, i32 2, !dbg !638
  store i32 %54, ptr %algo, align 4, !dbg !639
  %57 = load ptr, ptr %cert, align 8, !dbg !640
  %call57 = call i32 @x509_get_sig_params(ptr noundef %57) #16, !dbg !641
  %conv58 = sext i32 %call57 to i64, !dbg !641
  store i64 %conv58, ptr %ret, align 8, !dbg !642
  %58 = load i64, ptr %ret, align 8, !dbg !643
  %cmp59 = icmp slt i64 %58, 0, !dbg !645
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !646

if.then61:                                        ; preds = %if.end52
  br label %error_decode, !dbg !647

if.end62:                                         ; preds = %if.end52
  %59 = load ptr, ptr %cert, align 8, !dbg !648
  %raw_serial = getelementptr inbounds %struct.x509_certificate, ptr %59, i32 0, i32 14, !dbg !649
  %60 = load ptr, ptr %raw_serial, align 8, !dbg !649
  %61 = load ptr, ptr %cert, align 8, !dbg !650
  %raw_serial_size = getelementptr inbounds %struct.x509_certificate, ptr %61, i32 0, i32 15, !dbg !651
  %62 = load i32, ptr %raw_serial_size, align 8, !dbg !651
  %conv63 = zext i32 %62 to i64, !dbg !650
  %63 = load ptr, ptr %cert, align 8, !dbg !652
  %raw_issuer = getelementptr inbounds %struct.x509_certificate, ptr %63, i32 0, i32 17, !dbg !653
  %64 = load ptr, ptr %raw_issuer, align 8, !dbg !653
  %65 = load ptr, ptr %cert, align 8, !dbg !654
  %raw_issuer_size = getelementptr inbounds %struct.x509_certificate, ptr %65, i32 0, i32 16, !dbg !655
  %66 = load i32, ptr %raw_issuer_size, align 4, !dbg !655
  %conv64 = zext i32 %66 to i64, !dbg !654
  %call65 = call ptr @asymmetric_key_generate_id(ptr noundef %60, i64 noundef %conv63, ptr noundef %64, i64 noundef %conv64) #16, !dbg !656
  store ptr %call65, ptr %kid, align 8, !dbg !657
  %67 = load ptr, ptr %kid, align 8, !dbg !658
  %call66 = call zeroext i1 @IS_ERR(ptr noundef %67) #16, !dbg !660
  br i1 %call66, label %if.then67, label %if.end69, !dbg !661

if.then67:                                        ; preds = %if.end62
  %68 = load ptr, ptr %kid, align 8, !dbg !662
  %call68 = call i64 @PTR_ERR(ptr noundef %68) #16, !dbg !664
  store i64 %call68, ptr %ret, align 8, !dbg !665
  br label %error_decode, !dbg !666

if.end69:                                         ; preds = %if.end62
  %69 = load ptr, ptr %kid, align 8, !dbg !667
  %70 = load ptr, ptr %cert, align 8, !dbg !668
  %id = getelementptr inbounds %struct.x509_certificate, ptr %70, i32 0, i32 6, !dbg !669
  store ptr %69, ptr %id, align 8, !dbg !670
  %71 = load ptr, ptr %cert, align 8, !dbg !671
  %call70 = call i32 @x509_check_for_self_signed(ptr noundef %71) #16, !dbg !672
  %conv71 = sext i32 %call70 to i64, !dbg !672
  store i64 %conv71, ptr %ret, align 8, !dbg !673
  %72 = load i64, ptr %ret, align 8, !dbg !674
  %cmp72 = icmp slt i64 %72, 0, !dbg !676
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !677

if.then74:                                        ; preds = %if.end69
  br label %error_decode, !dbg !678

if.end75:                                         ; preds = %if.end69
  %73 = load ptr, ptr %ctx, align 8, !dbg !679
  call void @kfree(ptr noundef %73) #16, !dbg !680
  %74 = load ptr, ptr %cert, align 8, !dbg !681
  store ptr %74, ptr %retval, align 8, !dbg !682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !682

error_decode:                                     ; preds = %if.then74, %if.then67, %if.then61, %if.then51, %if.then40, %do.end, %if.then19
  call void @llvm.dbg.label(metadata !501), !dbg !683
  %75 = load ptr, ptr %ctx, align 8, !dbg !684
  call void @kfree(ptr noundef %75) #16, !dbg !685
  br label %error_no_ctx, !dbg !685

error_no_ctx:                                     ; preds = %error_decode, %if.then13, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !502), !dbg !686
  %76 = load ptr, ptr %cert, align 8, !dbg !687
  call void @x509_free_certificate(ptr noundef %76) #16, !dbg !688
  br label %error_no_cert, !dbg !688

error_no_cert:                                    ; preds = %error_no_ctx, %if.then
  call void @llvm.dbg.label(metadata !503), !dbg !689
  %77 = load i64, ptr %ret, align 8, !dbg !690
  %call76 = call ptr @ERR_PTR(i64 noundef %77) #16, !dbg !691
  store ptr %call76, ptr %retval, align 8, !dbg !692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !692

cleanup:                                          ; preds = %error_no_cert, %if.end75
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %kid) #17, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %cert) #17, !dbg !693
  %78 = load ptr, ptr %retval, align 8, !dbg !693
  ret ptr %78, !dbg !693
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !694 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !698, metadata !DIExpression()), !dbg !700
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !699, metadata !DIExpression()), !dbg !701
  %0 = load i64, ptr %size.addr, align 8, !dbg !702
  %1 = load i32, ptr %flags.addr, align 4, !dbg !703
  %or = or i32 %1, 256, !dbg !704
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !705
  ret ptr %call, !dbg !706
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !707 dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !714 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !718 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !722 dso_local i32 @x509_get_sig_params(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !725 dso_local ptr @asymmetric_key_generate_id(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !728 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !733, metadata !DIExpression()), !dbg !734
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !735
  %1 = ptrtoint ptr %0 to i64, !dbg !735
  %2 = inttoptr i64 %1 to ptr, !dbg !735
  %3 = ptrtoint ptr %2 to i64, !dbg !735
  %cmp = icmp uge i64 %3, -4095, !dbg !735
  %lnot = xor i1 %cmp, true, !dbg !735
  %lnot1 = xor i1 %lnot, true, !dbg !735
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !735
  %conv = sext i32 %lnot.ext to i64, !dbg !735
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !735
  %tobool = icmp ne i64 %expval, 0, !dbg !735
  ret i1 %tobool, !dbg !736
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #7 align 16 !dbg !737 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !741, metadata !DIExpression()), !dbg !742
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !743
  %1 = ptrtoint ptr %0 to i64, !dbg !744
  ret i64 %1, !dbg !745
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !746 dso_local i32 @x509_check_for_self_signed(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #7 align 16 !dbg !747 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !751, metadata !DIExpression()), !dbg !752
  %0 = load i64, ptr %error.addr, align 8, !dbg !753
  %1 = inttoptr i64 %0 to ptr, !dbg !754
  ret ptr %1, !dbg !755
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_OID(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !756 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %buffer = alloca [50 x i8], align 16
  %tmp = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !760, metadata !DIExpression()), !dbg !772
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !761, metadata !DIExpression()), !dbg !773
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !762, metadata !DIExpression()), !dbg !774
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !763, metadata !DIExpression()), !dbg !775
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !764, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !777
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !765, metadata !DIExpression()), !dbg !778
  %0 = load ptr, ptr %context.addr, align 8, !dbg !779
  store ptr %0, ptr %ctx, align 8, !dbg !778
  %1 = load ptr, ptr %value.addr, align 8, !dbg !780
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !781
  %call = call i32 @look_up_OID(ptr noundef %1, i64 noundef %2) #16, !dbg !782
  %3 = load ptr, ptr %ctx, align 8, !dbg !783
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %3, i32 0, i32 7, !dbg !784
  store i32 %call, ptr %last_oid, align 4, !dbg !785
  %4 = load ptr, ptr %ctx, align 8, !dbg !786
  %last_oid1 = getelementptr inbounds %struct.x509_parse_context, ptr %4, i32 0, i32 7, !dbg !787
  %5 = load i32, ptr %last_oid1, align 4, !dbg !787
  %cmp = icmp eq i32 %5, 99, !dbg !788
  br i1 %cmp, label %if.then, label %if.end, !dbg !789

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr %buffer) #17, !dbg !790
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !766, metadata !DIExpression()), !dbg !791
  %6 = load ptr, ptr %value.addr, align 8, !dbg !792
  %7 = load i64, ptr %vlen.addr, align 8, !dbg !793
  %arraydecay = getelementptr inbounds [50 x i8], ptr %buffer, i64 0, i64 0, !dbg !794
  %call2 = call i32 @sprint_oid(ptr noundef %6, i64 noundef %7, ptr noundef %arraydecay, i64 noundef 50) #16, !dbg !795
  store i32 0, ptr %tmp, align 4, !dbg !796
  %8 = load i32, ptr %tmp, align 4, !dbg !799
  call void @llvm.lifetime.end.p0(i64 50, ptr %buffer) #17, !dbg !800
  br label %if.end, !dbg !801

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !802
  ret i32 0, !dbg !803
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !804 dso_local i32 @look_up_OID(ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !807 dso_local i32 @sprint_oid(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_tbs_certificate(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !810 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !812, metadata !DIExpression()), !dbg !818
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !813, metadata !DIExpression()), !dbg !819
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !814, metadata !DIExpression()), !dbg !820
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !815, metadata !DIExpression()), !dbg !821
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !816, metadata !DIExpression()), !dbg !822
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !823
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !817, metadata !DIExpression()), !dbg !824
  %0 = load ptr, ptr %context.addr, align 8, !dbg !825
  store ptr %0, ptr %ctx, align 8, !dbg !824
  store i32 0, ptr %tmp, align 4, !dbg !826
  %1 = load i32, ptr %tmp, align 4, !dbg !829
  %2 = load ptr, ptr %value.addr, align 8, !dbg !830
  %3 = load i64, ptr %hdrlen.addr, align 8, !dbg !831
  %idx.neg = sub i64 0, %3, !dbg !832
  %add.ptr = getelementptr i8, ptr %2, i64 %idx.neg, !dbg !832
  %4 = load ptr, ptr %ctx, align 8, !dbg !833
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %4, i32 0, i32 0, !dbg !834
  %5 = load ptr, ptr %cert, align 8, !dbg !834
  %tbs = getelementptr inbounds %struct.x509_certificate, ptr %5, i32 0, i32 10, !dbg !835
  store ptr %add.ptr, ptr %tbs, align 8, !dbg !836
  %6 = load i64, ptr %vlen.addr, align 8, !dbg !837
  %7 = load i64, ptr %hdrlen.addr, align 8, !dbg !838
  %add = add i64 %6, %7, !dbg !839
  %conv = trunc i64 %add to i32, !dbg !837
  %8 = load ptr, ptr %ctx, align 8, !dbg !840
  %cert1 = getelementptr inbounds %struct.x509_parse_context, ptr %8, i32 0, i32 0, !dbg !841
  %9 = load ptr, ptr %cert1, align 8, !dbg !841
  %tbs_size = getelementptr inbounds %struct.x509_certificate, ptr %9, i32 0, i32 11, !dbg !842
  store i32 %conv, ptr %tbs_size, align 8, !dbg !843
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !844
  ret i32 0, !dbg !845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_sig_algo(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !846 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !848, metadata !DIExpression()), !dbg !858
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !849, metadata !DIExpression()), !dbg !859
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !850, metadata !DIExpression()), !dbg !860
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !851, metadata !DIExpression()), !dbg !861
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !852, metadata !DIExpression()), !dbg !862
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !863
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !853, metadata !DIExpression()), !dbg !864
  %0 = load ptr, ptr %context.addr, align 8, !dbg !865
  store ptr %0, ptr %ctx, align 8, !dbg !864
  store i32 0, ptr %tmp, align 4, !dbg !866
  %1 = load i32, ptr %tmp, align 4, !dbg !869
  %2 = load ptr, ptr %ctx, align 8, !dbg !870
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %2, i32 0, i32 7, !dbg !871
  %3 = load i32, ptr %last_oid, align 4, !dbg !871
  switch i32 %3, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb1
    i32 14, label %sw.bb2
    i32 15, label %sw.bb6
    i32 16, label %sw.bb10
    i32 17, label %sw.bb14
    i32 18, label %sw.bb18
    i32 5, label %sw.bb22
    i32 6, label %sw.bb26
    i32 7, label %sw.bb30
    i32 8, label %sw.bb34
    i32 9, label %sw.bb38
    i32 83, label %sw.bb42
    i32 84, label %sw.bb46
    i32 94, label %sw.bb50
  ], !dbg !872

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.default, !dbg !873

sw.default:                                       ; preds = %entry, %sw.bb
  store i32 -65, ptr %retval, align 4, !dbg !875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !875

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx, align 8, !dbg !876
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %4, i32 0, i32 0, !dbg !877
  %5 = load ptr, ptr %cert, align 8, !dbg !877
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %5, i32 0, i32 3, !dbg !878
  %6 = load ptr, ptr %sig, align 8, !dbg !878
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %6, i32 0, i32 6, !dbg !879
  store ptr @.str.1, ptr %hash_algo, align 8, !dbg !880
  br label %rsa_pkcs1, !dbg !881

sw.bb2:                                           ; preds = %entry
  %7 = load ptr, ptr %ctx, align 8, !dbg !882
  %cert3 = getelementptr inbounds %struct.x509_parse_context, ptr %7, i32 0, i32 0, !dbg !883
  %8 = load ptr, ptr %cert3, align 8, !dbg !883
  %sig4 = getelementptr inbounds %struct.x509_certificate, ptr %8, i32 0, i32 3, !dbg !884
  %9 = load ptr, ptr %sig4, align 8, !dbg !884
  %hash_algo5 = getelementptr inbounds %struct.public_key_signature, ptr %9, i32 0, i32 6, !dbg !885
  store ptr @.str.2, ptr %hash_algo5, align 8, !dbg !886
  br label %rsa_pkcs1, !dbg !887

sw.bb6:                                           ; preds = %entry
  %10 = load ptr, ptr %ctx, align 8, !dbg !888
  %cert7 = getelementptr inbounds %struct.x509_parse_context, ptr %10, i32 0, i32 0, !dbg !889
  %11 = load ptr, ptr %cert7, align 8, !dbg !889
  %sig8 = getelementptr inbounds %struct.x509_certificate, ptr %11, i32 0, i32 3, !dbg !890
  %12 = load ptr, ptr %sig8, align 8, !dbg !890
  %hash_algo9 = getelementptr inbounds %struct.public_key_signature, ptr %12, i32 0, i32 6, !dbg !891
  store ptr @.str.3, ptr %hash_algo9, align 8, !dbg !892
  br label %rsa_pkcs1, !dbg !893

sw.bb10:                                          ; preds = %entry
  %13 = load ptr, ptr %ctx, align 8, !dbg !894
  %cert11 = getelementptr inbounds %struct.x509_parse_context, ptr %13, i32 0, i32 0, !dbg !895
  %14 = load ptr, ptr %cert11, align 8, !dbg !895
  %sig12 = getelementptr inbounds %struct.x509_certificate, ptr %14, i32 0, i32 3, !dbg !896
  %15 = load ptr, ptr %sig12, align 8, !dbg !896
  %hash_algo13 = getelementptr inbounds %struct.public_key_signature, ptr %15, i32 0, i32 6, !dbg !897
  store ptr @.str.4, ptr %hash_algo13, align 8, !dbg !898
  br label %rsa_pkcs1, !dbg !899

sw.bb14:                                          ; preds = %entry
  %16 = load ptr, ptr %ctx, align 8, !dbg !900
  %cert15 = getelementptr inbounds %struct.x509_parse_context, ptr %16, i32 0, i32 0, !dbg !901
  %17 = load ptr, ptr %cert15, align 8, !dbg !901
  %sig16 = getelementptr inbounds %struct.x509_certificate, ptr %17, i32 0, i32 3, !dbg !902
  %18 = load ptr, ptr %sig16, align 8, !dbg !902
  %hash_algo17 = getelementptr inbounds %struct.public_key_signature, ptr %18, i32 0, i32 6, !dbg !903
  store ptr @.str.5, ptr %hash_algo17, align 8, !dbg !904
  br label %rsa_pkcs1, !dbg !905

sw.bb18:                                          ; preds = %entry
  %19 = load ptr, ptr %ctx, align 8, !dbg !906
  %cert19 = getelementptr inbounds %struct.x509_parse_context, ptr %19, i32 0, i32 0, !dbg !907
  %20 = load ptr, ptr %cert19, align 8, !dbg !907
  %sig20 = getelementptr inbounds %struct.x509_certificate, ptr %20, i32 0, i32 3, !dbg !908
  %21 = load ptr, ptr %sig20, align 8, !dbg !908
  %hash_algo21 = getelementptr inbounds %struct.public_key_signature, ptr %21, i32 0, i32 6, !dbg !909
  store ptr @.str.6, ptr %hash_algo21, align 8, !dbg !910
  br label %rsa_pkcs1, !dbg !911

sw.bb22:                                          ; preds = %entry
  %22 = load ptr, ptr %ctx, align 8, !dbg !912
  %cert23 = getelementptr inbounds %struct.x509_parse_context, ptr %22, i32 0, i32 0, !dbg !913
  %23 = load ptr, ptr %cert23, align 8, !dbg !913
  %sig24 = getelementptr inbounds %struct.x509_certificate, ptr %23, i32 0, i32 3, !dbg !914
  %24 = load ptr, ptr %sig24, align 8, !dbg !914
  %hash_algo25 = getelementptr inbounds %struct.public_key_signature, ptr %24, i32 0, i32 6, !dbg !915
  store ptr @.str.2, ptr %hash_algo25, align 8, !dbg !916
  br label %ecdsa, !dbg !917

sw.bb26:                                          ; preds = %entry
  %25 = load ptr, ptr %ctx, align 8, !dbg !918
  %cert27 = getelementptr inbounds %struct.x509_parse_context, ptr %25, i32 0, i32 0, !dbg !919
  %26 = load ptr, ptr %cert27, align 8, !dbg !919
  %sig28 = getelementptr inbounds %struct.x509_certificate, ptr %26, i32 0, i32 3, !dbg !920
  %27 = load ptr, ptr %sig28, align 8, !dbg !920
  %hash_algo29 = getelementptr inbounds %struct.public_key_signature, ptr %27, i32 0, i32 6, !dbg !921
  store ptr @.str.6, ptr %hash_algo29, align 8, !dbg !922
  br label %ecdsa, !dbg !923

sw.bb30:                                          ; preds = %entry
  %28 = load ptr, ptr %ctx, align 8, !dbg !924
  %cert31 = getelementptr inbounds %struct.x509_parse_context, ptr %28, i32 0, i32 0, !dbg !925
  %29 = load ptr, ptr %cert31, align 8, !dbg !925
  %sig32 = getelementptr inbounds %struct.x509_certificate, ptr %29, i32 0, i32 3, !dbg !926
  %30 = load ptr, ptr %sig32, align 8, !dbg !926
  %hash_algo33 = getelementptr inbounds %struct.public_key_signature, ptr %30, i32 0, i32 6, !dbg !927
  store ptr @.str.3, ptr %hash_algo33, align 8, !dbg !928
  br label %ecdsa, !dbg !929

sw.bb34:                                          ; preds = %entry
  %31 = load ptr, ptr %ctx, align 8, !dbg !930
  %cert35 = getelementptr inbounds %struct.x509_parse_context, ptr %31, i32 0, i32 0, !dbg !931
  %32 = load ptr, ptr %cert35, align 8, !dbg !931
  %sig36 = getelementptr inbounds %struct.x509_certificate, ptr %32, i32 0, i32 3, !dbg !932
  %33 = load ptr, ptr %sig36, align 8, !dbg !932
  %hash_algo37 = getelementptr inbounds %struct.public_key_signature, ptr %33, i32 0, i32 6, !dbg !933
  store ptr @.str.4, ptr %hash_algo37, align 8, !dbg !934
  br label %ecdsa, !dbg !935

sw.bb38:                                          ; preds = %entry
  %34 = load ptr, ptr %ctx, align 8, !dbg !936
  %cert39 = getelementptr inbounds %struct.x509_parse_context, ptr %34, i32 0, i32 0, !dbg !937
  %35 = load ptr, ptr %cert39, align 8, !dbg !937
  %sig40 = getelementptr inbounds %struct.x509_certificate, ptr %35, i32 0, i32 3, !dbg !938
  %36 = load ptr, ptr %sig40, align 8, !dbg !938
  %hash_algo41 = getelementptr inbounds %struct.public_key_signature, ptr %36, i32 0, i32 6, !dbg !939
  store ptr @.str.5, ptr %hash_algo41, align 8, !dbg !940
  br label %ecdsa, !dbg !941

sw.bb42:                                          ; preds = %entry
  %37 = load ptr, ptr %ctx, align 8, !dbg !942
  %cert43 = getelementptr inbounds %struct.x509_parse_context, ptr %37, i32 0, i32 0, !dbg !943
  %38 = load ptr, ptr %cert43, align 8, !dbg !943
  %sig44 = getelementptr inbounds %struct.x509_certificate, ptr %38, i32 0, i32 3, !dbg !944
  %39 = load ptr, ptr %sig44, align 8, !dbg !944
  %hash_algo45 = getelementptr inbounds %struct.public_key_signature, ptr %39, i32 0, i32 6, !dbg !945
  store ptr @.str.7, ptr %hash_algo45, align 8, !dbg !946
  br label %ecrdsa, !dbg !947

sw.bb46:                                          ; preds = %entry
  %40 = load ptr, ptr %ctx, align 8, !dbg !948
  %cert47 = getelementptr inbounds %struct.x509_parse_context, ptr %40, i32 0, i32 0, !dbg !949
  %41 = load ptr, ptr %cert47, align 8, !dbg !949
  %sig48 = getelementptr inbounds %struct.x509_certificate, ptr %41, i32 0, i32 3, !dbg !950
  %42 = load ptr, ptr %sig48, align 8, !dbg !950
  %hash_algo49 = getelementptr inbounds %struct.public_key_signature, ptr %42, i32 0, i32 6, !dbg !951
  store ptr @.str.8, ptr %hash_algo49, align 8, !dbg !952
  br label %ecrdsa, !dbg !953

sw.bb50:                                          ; preds = %entry
  %43 = load ptr, ptr %ctx, align 8, !dbg !954
  %cert51 = getelementptr inbounds %struct.x509_parse_context, ptr %43, i32 0, i32 0, !dbg !955
  %44 = load ptr, ptr %cert51, align 8, !dbg !955
  %sig52 = getelementptr inbounds %struct.x509_certificate, ptr %44, i32 0, i32 3, !dbg !956
  %45 = load ptr, ptr %sig52, align 8, !dbg !956
  %hash_algo53 = getelementptr inbounds %struct.public_key_signature, ptr %45, i32 0, i32 6, !dbg !957
  store ptr @.str.9, ptr %hash_algo53, align 8, !dbg !958
  br label %sm2, !dbg !959

rsa_pkcs1:                                        ; preds = %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb1
  call void @llvm.dbg.label(metadata !854), !dbg !960
  %46 = load ptr, ptr %ctx, align 8, !dbg !961
  %cert54 = getelementptr inbounds %struct.x509_parse_context, ptr %46, i32 0, i32 0, !dbg !962
  %47 = load ptr, ptr %cert54, align 8, !dbg !962
  %sig55 = getelementptr inbounds %struct.x509_certificate, ptr %47, i32 0, i32 3, !dbg !963
  %48 = load ptr, ptr %sig55, align 8, !dbg !963
  %pkey_algo = getelementptr inbounds %struct.public_key_signature, ptr %48, i32 0, i32 5, !dbg !964
  store ptr @.str.10, ptr %pkey_algo, align 8, !dbg !965
  %49 = load ptr, ptr %ctx, align 8, !dbg !966
  %cert56 = getelementptr inbounds %struct.x509_parse_context, ptr %49, i32 0, i32 0, !dbg !967
  %50 = load ptr, ptr %cert56, align 8, !dbg !967
  %sig57 = getelementptr inbounds %struct.x509_certificate, ptr %50, i32 0, i32 3, !dbg !968
  %51 = load ptr, ptr %sig57, align 8, !dbg !968
  %encoding = getelementptr inbounds %struct.public_key_signature, ptr %51, i32 0, i32 7, !dbg !969
  store ptr @.str.11, ptr %encoding, align 8, !dbg !970
  %52 = load ptr, ptr %ctx, align 8, !dbg !971
  %last_oid58 = getelementptr inbounds %struct.x509_parse_context, ptr %52, i32 0, i32 7, !dbg !972
  %53 = load i32, ptr %last_oid58, align 4, !dbg !972
  %54 = load ptr, ptr %ctx, align 8, !dbg !973
  %sig_algo = getelementptr inbounds %struct.x509_parse_context, ptr %54, i32 0, i32 8, !dbg !974
  store i32 %53, ptr %sig_algo, align 8, !dbg !975
  store i32 0, ptr %retval, align 4, !dbg !976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !976

ecrdsa:                                           ; preds = %sw.bb46, %sw.bb42
  call void @llvm.dbg.label(metadata !855), !dbg !977
  %55 = load ptr, ptr %ctx, align 8, !dbg !978
  %cert59 = getelementptr inbounds %struct.x509_parse_context, ptr %55, i32 0, i32 0, !dbg !979
  %56 = load ptr, ptr %cert59, align 8, !dbg !979
  %sig60 = getelementptr inbounds %struct.x509_certificate, ptr %56, i32 0, i32 3, !dbg !980
  %57 = load ptr, ptr %sig60, align 8, !dbg !980
  %pkey_algo61 = getelementptr inbounds %struct.public_key_signature, ptr %57, i32 0, i32 5, !dbg !981
  store ptr @.str.12, ptr %pkey_algo61, align 8, !dbg !982
  %58 = load ptr, ptr %ctx, align 8, !dbg !983
  %cert62 = getelementptr inbounds %struct.x509_parse_context, ptr %58, i32 0, i32 0, !dbg !984
  %59 = load ptr, ptr %cert62, align 8, !dbg !984
  %sig63 = getelementptr inbounds %struct.x509_certificate, ptr %59, i32 0, i32 3, !dbg !985
  %60 = load ptr, ptr %sig63, align 8, !dbg !985
  %encoding64 = getelementptr inbounds %struct.public_key_signature, ptr %60, i32 0, i32 7, !dbg !986
  store ptr @.str.13, ptr %encoding64, align 8, !dbg !987
  %61 = load ptr, ptr %ctx, align 8, !dbg !988
  %last_oid65 = getelementptr inbounds %struct.x509_parse_context, ptr %61, i32 0, i32 7, !dbg !989
  %62 = load i32, ptr %last_oid65, align 4, !dbg !989
  %63 = load ptr, ptr %ctx, align 8, !dbg !990
  %sig_algo66 = getelementptr inbounds %struct.x509_parse_context, ptr %63, i32 0, i32 8, !dbg !991
  store i32 %62, ptr %sig_algo66, align 8, !dbg !992
  store i32 0, ptr %retval, align 4, !dbg !993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !993

sm2:                                              ; preds = %sw.bb50
  call void @llvm.dbg.label(metadata !856), !dbg !994
  %64 = load ptr, ptr %ctx, align 8, !dbg !995
  %cert67 = getelementptr inbounds %struct.x509_parse_context, ptr %64, i32 0, i32 0, !dbg !996
  %65 = load ptr, ptr %cert67, align 8, !dbg !996
  %sig68 = getelementptr inbounds %struct.x509_certificate, ptr %65, i32 0, i32 3, !dbg !997
  %66 = load ptr, ptr %sig68, align 8, !dbg !997
  %pkey_algo69 = getelementptr inbounds %struct.public_key_signature, ptr %66, i32 0, i32 5, !dbg !998
  store ptr @.str.14, ptr %pkey_algo69, align 8, !dbg !999
  %67 = load ptr, ptr %ctx, align 8, !dbg !1000
  %cert70 = getelementptr inbounds %struct.x509_parse_context, ptr %67, i32 0, i32 0, !dbg !1001
  %68 = load ptr, ptr %cert70, align 8, !dbg !1001
  %sig71 = getelementptr inbounds %struct.x509_certificate, ptr %68, i32 0, i32 3, !dbg !1002
  %69 = load ptr, ptr %sig71, align 8, !dbg !1002
  %encoding72 = getelementptr inbounds %struct.public_key_signature, ptr %69, i32 0, i32 7, !dbg !1003
  store ptr @.str.13, ptr %encoding72, align 8, !dbg !1004
  %70 = load ptr, ptr %ctx, align 8, !dbg !1005
  %last_oid73 = getelementptr inbounds %struct.x509_parse_context, ptr %70, i32 0, i32 7, !dbg !1006
  %71 = load i32, ptr %last_oid73, align 4, !dbg !1006
  %72 = load ptr, ptr %ctx, align 8, !dbg !1007
  %sig_algo74 = getelementptr inbounds %struct.x509_parse_context, ptr %72, i32 0, i32 8, !dbg !1008
  store i32 %71, ptr %sig_algo74, align 8, !dbg !1009
  store i32 0, ptr %retval, align 4, !dbg !1010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1010

ecdsa:                                            ; preds = %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %sw.bb22
  call void @llvm.dbg.label(metadata !857), !dbg !1011
  %73 = load ptr, ptr %ctx, align 8, !dbg !1012
  %cert75 = getelementptr inbounds %struct.x509_parse_context, ptr %73, i32 0, i32 0, !dbg !1013
  %74 = load ptr, ptr %cert75, align 8, !dbg !1013
  %sig76 = getelementptr inbounds %struct.x509_certificate, ptr %74, i32 0, i32 3, !dbg !1014
  %75 = load ptr, ptr %sig76, align 8, !dbg !1014
  %pkey_algo77 = getelementptr inbounds %struct.public_key_signature, ptr %75, i32 0, i32 5, !dbg !1015
  store ptr @.str.15, ptr %pkey_algo77, align 8, !dbg !1016
  %76 = load ptr, ptr %ctx, align 8, !dbg !1017
  %cert78 = getelementptr inbounds %struct.x509_parse_context, ptr %76, i32 0, i32 0, !dbg !1018
  %77 = load ptr, ptr %cert78, align 8, !dbg !1018
  %sig79 = getelementptr inbounds %struct.x509_certificate, ptr %77, i32 0, i32 3, !dbg !1019
  %78 = load ptr, ptr %sig79, align 8, !dbg !1019
  %encoding80 = getelementptr inbounds %struct.public_key_signature, ptr %78, i32 0, i32 7, !dbg !1020
  store ptr @.str.16, ptr %encoding80, align 8, !dbg !1021
  %79 = load ptr, ptr %ctx, align 8, !dbg !1022
  %last_oid81 = getelementptr inbounds %struct.x509_parse_context, ptr %79, i32 0, i32 7, !dbg !1023
  %80 = load i32, ptr %last_oid81, align 4, !dbg !1023
  %81 = load ptr, ptr %ctx, align 8, !dbg !1024
  %sig_algo82 = getelementptr inbounds %struct.x509_parse_context, ptr %81, i32 0, i32 8, !dbg !1025
  store i32 %80, ptr %sig_algo82, align 8, !dbg !1026
  store i32 0, ptr %retval, align 4, !dbg !1027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1027

cleanup:                                          ; preds = %ecdsa, %sm2, %ecrdsa, %rsa_pkcs1, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1028
  %82 = load i32, ptr %retval, align 4, !dbg !1028
  ret i32 %82, !dbg !1028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_signature(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1029 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1031, metadata !DIExpression()), !dbg !1037
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1032, metadata !DIExpression()), !dbg !1038
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1033, metadata !DIExpression()), !dbg !1039
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1034, metadata !DIExpression()), !dbg !1040
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1035, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !1042
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1036, metadata !DIExpression()), !dbg !1043
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1044
  store ptr %0, ptr %ctx, align 8, !dbg !1043
  store i32 0, ptr %tmp, align 4, !dbg !1045
  %1 = load i32, ptr %tmp, align 4, !dbg !1048
  %2 = load ptr, ptr %ctx, align 8, !dbg !1049
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %2, i32 0, i32 7, !dbg !1051
  %3 = load i32, ptr %last_oid, align 4, !dbg !1051
  %4 = load ptr, ptr %ctx, align 8, !dbg !1052
  %sig_algo = getelementptr inbounds %struct.x509_parse_context, ptr %4, i32 0, i32 8, !dbg !1053
  %5 = load i32, ptr %sig_algo, align 8, !dbg !1053
  %cmp = icmp ne i32 %3, %5, !dbg !1054
  br i1 %cmp, label %if.then, label %if.end, !dbg !1055

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1056

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1059

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1059

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %ctx, align 8, !dbg !1056
  %last_oid2 = getelementptr inbounds %struct.x509_parse_context, ptr %6, i32 0, i32 7, !dbg !1056
  %7 = load i32, ptr %last_oid2, align 4, !dbg !1056
  %8 = load ptr, ptr %ctx, align 8, !dbg !1056
  %sig_algo3 = getelementptr inbounds %struct.x509_parse_context, ptr %8, i32 0, i32 8, !dbg !1056
  %9 = load i32, ptr %sig_algo3, align 8, !dbg !1056
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.17, i32 noundef %7, i32 noundef %9) #19, !dbg !1056
  store i32 %call, ptr %tmp1, align 4, !dbg !1059
  %10 = load i32, ptr %tmp1, align 4, !dbg !1056
  store i32 -22, ptr %retval, align 4, !dbg !1061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1061

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %ctx, align 8, !dbg !1062
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %11, i32 0, i32 0, !dbg !1064
  %12 = load ptr, ptr %cert, align 8, !dbg !1064
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %12, i32 0, i32 3, !dbg !1065
  %13 = load ptr, ptr %sig, align 8, !dbg !1065
  %pkey_algo = getelementptr inbounds %struct.public_key_signature, ptr %13, i32 0, i32 5, !dbg !1066
  %14 = load ptr, ptr %pkey_algo, align 8, !dbg !1066
  %call4 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.10) #16, !dbg !1067
  %cmp5 = icmp eq i32 %call4, 0, !dbg !1068
  br i1 %cmp5, label %if.then23, label %lor.lhs.false, !dbg !1069

lor.lhs.false:                                    ; preds = %if.end
  %15 = load ptr, ptr %ctx, align 8, !dbg !1070
  %cert6 = getelementptr inbounds %struct.x509_parse_context, ptr %15, i32 0, i32 0, !dbg !1071
  %16 = load ptr, ptr %cert6, align 8, !dbg !1071
  %sig7 = getelementptr inbounds %struct.x509_certificate, ptr %16, i32 0, i32 3, !dbg !1072
  %17 = load ptr, ptr %sig7, align 8, !dbg !1072
  %pkey_algo8 = getelementptr inbounds %struct.public_key_signature, ptr %17, i32 0, i32 5, !dbg !1073
  %18 = load ptr, ptr %pkey_algo8, align 8, !dbg !1073
  %call9 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.12) #16, !dbg !1074
  %cmp10 = icmp eq i32 %call9, 0, !dbg !1075
  br i1 %cmp10, label %if.then23, label %lor.lhs.false11, !dbg !1076

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr %ctx, align 8, !dbg !1077
  %cert12 = getelementptr inbounds %struct.x509_parse_context, ptr %19, i32 0, i32 0, !dbg !1078
  %20 = load ptr, ptr %cert12, align 8, !dbg !1078
  %sig13 = getelementptr inbounds %struct.x509_certificate, ptr %20, i32 0, i32 3, !dbg !1079
  %21 = load ptr, ptr %sig13, align 8, !dbg !1079
  %pkey_algo14 = getelementptr inbounds %struct.public_key_signature, ptr %21, i32 0, i32 5, !dbg !1080
  %22 = load ptr, ptr %pkey_algo14, align 8, !dbg !1080
  %call15 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str.14) #16, !dbg !1081
  %cmp16 = icmp eq i32 %call15, 0, !dbg !1082
  br i1 %cmp16, label %if.then23, label %lor.lhs.false17, !dbg !1083

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %23 = load ptr, ptr %ctx, align 8, !dbg !1084
  %cert18 = getelementptr inbounds %struct.x509_parse_context, ptr %23, i32 0, i32 0, !dbg !1085
  %24 = load ptr, ptr %cert18, align 8, !dbg !1085
  %sig19 = getelementptr inbounds %struct.x509_certificate, ptr %24, i32 0, i32 3, !dbg !1086
  %25 = load ptr, ptr %sig19, align 8, !dbg !1086
  %pkey_algo20 = getelementptr inbounds %struct.public_key_signature, ptr %25, i32 0, i32 5, !dbg !1087
  %26 = load ptr, ptr %pkey_algo20, align 8, !dbg !1087
  %call21 = call i32 @strcmp(ptr noundef %26, ptr noundef @.str.15) #16, !dbg !1088
  %cmp22 = icmp eq i32 %call21, 0, !dbg !1089
  br i1 %cmp22, label %if.then23, label %if.end30, !dbg !1090

if.then23:                                        ; preds = %lor.lhs.false17, %lor.lhs.false11, %lor.lhs.false, %if.end
  %27 = load i64, ptr %vlen.addr, align 8, !dbg !1091
  %cmp24 = icmp ult i64 %27, 1, !dbg !1094
  br i1 %cmp24, label %if.then28, label %lor.lhs.false25, !dbg !1095

lor.lhs.false25:                                  ; preds = %if.then23
  %28 = load ptr, ptr %value.addr, align 8, !dbg !1096
  %29 = load i8, ptr %28, align 1, !dbg !1097
  %conv = zext i8 %29 to i32, !dbg !1097
  %cmp26 = icmp ne i32 %conv, 0, !dbg !1098
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1099

if.then28:                                        ; preds = %lor.lhs.false25, %if.then23
  store i32 -74, ptr %retval, align 4, !dbg !1100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1100

if.end29:                                         ; preds = %lor.lhs.false25
  %30 = load ptr, ptr %value.addr, align 8, !dbg !1101
  %incdec.ptr = getelementptr i8, ptr %30, i32 1, !dbg !1101
  store ptr %incdec.ptr, ptr %value.addr, align 8, !dbg !1101
  %31 = load i64, ptr %vlen.addr, align 8, !dbg !1102
  %dec = add i64 %31, -1, !dbg !1102
  store i64 %dec, ptr %vlen.addr, align 8, !dbg !1102
  br label %if.end30, !dbg !1103

if.end30:                                         ; preds = %if.end29, %lor.lhs.false17
  %32 = load ptr, ptr %value.addr, align 8, !dbg !1104
  %33 = load ptr, ptr %ctx, align 8, !dbg !1105
  %cert31 = getelementptr inbounds %struct.x509_parse_context, ptr %33, i32 0, i32 0, !dbg !1106
  %34 = load ptr, ptr %cert31, align 8, !dbg !1106
  %raw_sig = getelementptr inbounds %struct.x509_certificate, ptr %34, i32 0, i32 13, !dbg !1107
  store ptr %32, ptr %raw_sig, align 8, !dbg !1108
  %35 = load i64, ptr %vlen.addr, align 8, !dbg !1109
  %conv32 = trunc i64 %35 to i32, !dbg !1109
  %36 = load ptr, ptr %ctx, align 8, !dbg !1110
  %cert33 = getelementptr inbounds %struct.x509_parse_context, ptr %36, i32 0, i32 0, !dbg !1111
  %37 = load ptr, ptr %cert33, align 8, !dbg !1111
  %raw_sig_size = getelementptr inbounds %struct.x509_certificate, ptr %37, i32 0, i32 12, !dbg !1112
  store i32 %conv32, ptr %raw_sig_size, align 4, !dbg !1113
  store i32 0, ptr %retval, align 4, !dbg !1114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1114

cleanup:                                          ; preds = %if.end30, %if.then28, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1115
  %38 = load i32, ptr %retval, align 4, !dbg !1115
  ret i32 %38, !dbg !1115
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1116 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_serial(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1119 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1121, metadata !DIExpression()), !dbg !1127
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1122, metadata !DIExpression()), !dbg !1128
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1123, metadata !DIExpression()), !dbg !1129
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1124, metadata !DIExpression()), !dbg !1130
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1125, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1126, metadata !DIExpression()), !dbg !1133
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1134
  store ptr %0, ptr %ctx, align 8, !dbg !1133
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1135
  %2 = load ptr, ptr %ctx, align 8, !dbg !1136
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %2, i32 0, i32 0, !dbg !1137
  %3 = load ptr, ptr %cert, align 8, !dbg !1137
  %raw_serial = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 14, !dbg !1138
  store ptr %1, ptr %raw_serial, align 8, !dbg !1139
  %4 = load i64, ptr %vlen.addr, align 8, !dbg !1140
  %conv = trunc i64 %4 to i32, !dbg !1140
  %5 = load ptr, ptr %ctx, align 8, !dbg !1141
  %cert1 = getelementptr inbounds %struct.x509_parse_context, ptr %5, i32 0, i32 0, !dbg !1142
  %6 = load ptr, ptr %cert1, align 8, !dbg !1142
  %raw_serial_size = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 15, !dbg !1143
  store i32 %conv, ptr %raw_serial_size, align 8, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1145
  ret i32 0, !dbg !1146
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_extract_name_segment(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1147 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1149, metadata !DIExpression()), !dbg !1155
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1150, metadata !DIExpression()), !dbg !1156
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1151, metadata !DIExpression()), !dbg !1157
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1152, metadata !DIExpression()), !dbg !1158
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1153, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1154, metadata !DIExpression()), !dbg !1161
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1162
  store ptr %0, ptr %ctx, align 8, !dbg !1161
  %1 = load ptr, ptr %ctx, align 8, !dbg !1163
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %1, i32 0, i32 7, !dbg !1164
  %2 = load i32, ptr %last_oid, align 4, !dbg !1164
  switch i32 %2, label %sw.default [
    i32 52, label %sw.bb
    i32 57, label %sw.bb2
    i32 21, label %sw.bb7
  ], !dbg !1165

sw.bb:                                            ; preds = %entry
  %3 = load i64, ptr %vlen.addr, align 8, !dbg !1166
  %conv = trunc i64 %3 to i8, !dbg !1166
  %4 = load ptr, ptr %ctx, align 8, !dbg !1168
  %cn_size = getelementptr inbounds %struct.x509_parse_context, ptr %4, i32 0, i32 10, !dbg !1169
  store i8 %conv, ptr %cn_size, align 1, !dbg !1170
  %5 = load ptr, ptr %value.addr, align 8, !dbg !1171
  %6 = ptrtoint ptr %5 to i64, !dbg !1172
  %7 = load ptr, ptr %ctx, align 8, !dbg !1173
  %data = getelementptr inbounds %struct.x509_parse_context, ptr %7, i32 0, i32 1, !dbg !1174
  %8 = load i64, ptr %data, align 8, !dbg !1174
  %sub = sub i64 %6, %8, !dbg !1175
  %conv1 = trunc i64 %sub to i16, !dbg !1172
  %9 = load ptr, ptr %ctx, align 8, !dbg !1176
  %cn_offset = getelementptr inbounds %struct.x509_parse_context, ptr %9, i32 0, i32 13, !dbg !1177
  store i16 %conv1, ptr %cn_offset, align 2, !dbg !1178
  br label %sw.epilog, !dbg !1179

sw.bb2:                                           ; preds = %entry
  %10 = load i64, ptr %vlen.addr, align 8, !dbg !1180
  %conv3 = trunc i64 %10 to i8, !dbg !1180
  %11 = load ptr, ptr %ctx, align 8, !dbg !1181
  %o_size = getelementptr inbounds %struct.x509_parse_context, ptr %11, i32 0, i32 9, !dbg !1182
  store i8 %conv3, ptr %o_size, align 4, !dbg !1183
  %12 = load ptr, ptr %value.addr, align 8, !dbg !1184
  %13 = ptrtoint ptr %12 to i64, !dbg !1185
  %14 = load ptr, ptr %ctx, align 8, !dbg !1186
  %data4 = getelementptr inbounds %struct.x509_parse_context, ptr %14, i32 0, i32 1, !dbg !1187
  %15 = load i64, ptr %data4, align 8, !dbg !1187
  %sub5 = sub i64 %13, %15, !dbg !1188
  %conv6 = trunc i64 %sub5 to i16, !dbg !1185
  %16 = load ptr, ptr %ctx, align 8, !dbg !1189
  %o_offset = getelementptr inbounds %struct.x509_parse_context, ptr %16, i32 0, i32 12, !dbg !1190
  store i16 %conv6, ptr %o_offset, align 8, !dbg !1191
  br label %sw.epilog, !dbg !1192

sw.bb7:                                           ; preds = %entry
  %17 = load i64, ptr %vlen.addr, align 8, !dbg !1193
  %conv8 = trunc i64 %17 to i8, !dbg !1193
  %18 = load ptr, ptr %ctx, align 8, !dbg !1194
  %email_size = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 11, !dbg !1195
  store i8 %conv8, ptr %email_size, align 2, !dbg !1196
  %19 = load ptr, ptr %value.addr, align 8, !dbg !1197
  %20 = ptrtoint ptr %19 to i64, !dbg !1198
  %21 = load ptr, ptr %ctx, align 8, !dbg !1199
  %data9 = getelementptr inbounds %struct.x509_parse_context, ptr %21, i32 0, i32 1, !dbg !1200
  %22 = load i64, ptr %data9, align 8, !dbg !1200
  %sub10 = sub i64 %20, %22, !dbg !1201
  %conv11 = trunc i64 %sub10 to i16, !dbg !1198
  %23 = load ptr, ptr %ctx, align 8, !dbg !1202
  %email_offset = getelementptr inbounds %struct.x509_parse_context, ptr %23, i32 0, i32 14, !dbg !1203
  store i16 %conv11, ptr %email_offset, align 4, !dbg !1204
  br label %sw.epilog, !dbg !1205

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1206

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1207
  ret i32 0, !dbg !1208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_issuer(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1209 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %kid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1211, metadata !DIExpression()), !dbg !1218
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1212, metadata !DIExpression()), !dbg !1219
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1213, metadata !DIExpression()), !dbg !1220
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1214, metadata !DIExpression()), !dbg !1221
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1215, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1216, metadata !DIExpression()), !dbg !1224
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1225
  store ptr %0, ptr %ctx, align 8, !dbg !1224
  call void @llvm.lifetime.start.p0(i64 8, ptr %kid) #17, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %kid, metadata !1217, metadata !DIExpression()), !dbg !1227
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1228
  %2 = load ptr, ptr %ctx, align 8, !dbg !1229
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %2, i32 0, i32 0, !dbg !1230
  %3 = load ptr, ptr %cert, align 8, !dbg !1230
  %raw_issuer = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 17, !dbg !1231
  store ptr %1, ptr %raw_issuer, align 8, !dbg !1232
  %4 = load i64, ptr %vlen.addr, align 8, !dbg !1233
  %conv = trunc i64 %4 to i32, !dbg !1233
  %5 = load ptr, ptr %ctx, align 8, !dbg !1234
  %cert1 = getelementptr inbounds %struct.x509_parse_context, ptr %5, i32 0, i32 0, !dbg !1235
  %6 = load ptr, ptr %cert1, align 8, !dbg !1235
  %raw_issuer_size = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 16, !dbg !1236
  store i32 %conv, ptr %raw_issuer_size, align 4, !dbg !1237
  %7 = load ptr, ptr %ctx, align 8, !dbg !1238
  %cert2 = getelementptr inbounds %struct.x509_parse_context, ptr %7, i32 0, i32 0, !dbg !1240
  %8 = load ptr, ptr %cert2, align 8, !dbg !1240
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %8, i32 0, i32 3, !dbg !1241
  %9 = load ptr, ptr %sig, align 8, !dbg !1241
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %9, i32 0, i32 0, !dbg !1242
  %arrayidx = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 2, !dbg !1238
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !1238
  %tobool = icmp ne ptr %10, null, !dbg !1238
  br i1 %tobool, label %if.end11, label %if.then, !dbg !1243

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %value.addr, align 8, !dbg !1244
  %12 = load i64, ptr %vlen.addr, align 8, !dbg !1246
  %call = call ptr @asymmetric_key_generate_id(ptr noundef %11, i64 noundef %12, ptr noundef @.str.18, i64 noundef 0) #16, !dbg !1247
  store ptr %call, ptr %kid, align 8, !dbg !1248
  %13 = load ptr, ptr %kid, align 8, !dbg !1249
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %13) #16, !dbg !1251
  br i1 %call3, label %if.then4, label %if.end, !dbg !1252

if.then4:                                         ; preds = %if.then
  %14 = load ptr, ptr %kid, align 8, !dbg !1253
  %call5 = call i64 @PTR_ERR(ptr noundef %14) #16, !dbg !1254
  %conv6 = trunc i64 %call5 to i32, !dbg !1254
  store i32 %conv6, ptr %retval, align 4, !dbg !1255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1255

if.end:                                           ; preds = %if.then
  %15 = load ptr, ptr %kid, align 8, !dbg !1256
  %16 = load ptr, ptr %ctx, align 8, !dbg !1257
  %cert7 = getelementptr inbounds %struct.x509_parse_context, ptr %16, i32 0, i32 0, !dbg !1258
  %17 = load ptr, ptr %cert7, align 8, !dbg !1258
  %sig8 = getelementptr inbounds %struct.x509_certificate, ptr %17, i32 0, i32 3, !dbg !1259
  %18 = load ptr, ptr %sig8, align 8, !dbg !1259
  %auth_ids9 = getelementptr inbounds %struct.public_key_signature, ptr %18, i32 0, i32 0, !dbg !1260
  %arrayidx10 = getelementptr [3 x ptr], ptr %auth_ids9, i64 0, i64 2, !dbg !1257
  store ptr %15, ptr %arrayidx10, align 8, !dbg !1261
  br label %if.end11, !dbg !1262

if.end11:                                         ; preds = %if.end, %entry
  %19 = load ptr, ptr %ctx, align 8, !dbg !1263
  %20 = load i64, ptr %hdrlen.addr, align 8, !dbg !1264
  %21 = load i8, ptr %tag.addr, align 1, !dbg !1265
  %22 = load ptr, ptr %ctx, align 8, !dbg !1266
  %cert12 = getelementptr inbounds %struct.x509_parse_context, ptr %22, i32 0, i32 0, !dbg !1267
  %23 = load ptr, ptr %cert12, align 8, !dbg !1267
  %issuer = getelementptr inbounds %struct.x509_certificate, ptr %23, i32 0, i32 4, !dbg !1268
  %24 = load i64, ptr %vlen.addr, align 8, !dbg !1269
  %call13 = call i32 @x509_fabricate_name(ptr noundef %19, i64 noundef %20, i8 noundef zeroext %21, ptr noundef %issuer, i64 noundef %24) #16, !dbg !1270
  store i32 %call13, ptr %retval, align 4, !dbg !1271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1271

cleanup:                                          ; preds = %if.end11, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kid) #17, !dbg !1272
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1272
  %25 = load i32, ptr %retval, align 4, !dbg !1272
  ret i32 %25, !dbg !1272
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @x509_fabricate_name(ptr noundef %ctx, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %_name, i64 noundef %vlen) #0 align 16 !dbg !1273 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %_name.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %name = alloca ptr, align 8
  %data = alloca ptr, align 8
  %namesize = alloca i64, align 8
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1278, metadata !DIExpression()), !dbg !1289
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1279, metadata !DIExpression()), !dbg !1290
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1280, metadata !DIExpression()), !dbg !1291
  store ptr %_name, ptr %_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_name.addr, metadata !1281, metadata !DIExpression()), !dbg !1292
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1282, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #17, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1283, metadata !DIExpression()), !dbg !1295
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #17, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1284, metadata !DIExpression()), !dbg !1296
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !1297
  %data1 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 1, !dbg !1298
  %1 = load i64, ptr %data1, align 8, !dbg !1298
  %2 = inttoptr i64 %1 to ptr, !dbg !1299
  store ptr %2, ptr %data, align 8, !dbg !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %namesize) #17, !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %namesize, metadata !1285, metadata !DIExpression()), !dbg !1301
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #17, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1286, metadata !DIExpression()), !dbg !1303
  %3 = load ptr, ptr %_name.addr, align 8, !dbg !1304
  %4 = load ptr, ptr %3, align 8, !dbg !1306
  %tobool = icmp ne ptr %4, null, !dbg !1306
  br i1 %tobool, label %if.then, label %if.end, !dbg !1307

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1308

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !1309
  %cn_size = getelementptr inbounds %struct.x509_parse_context, ptr %5, i32 0, i32 10, !dbg !1311
  %6 = load i8, ptr %cn_size, align 1, !dbg !1311
  %tobool2 = icmp ne i8 %6, 0, !dbg !1309
  br i1 %tobool2, label %if.end10, label %land.lhs.true, !dbg !1312

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !1313
  %o_size = getelementptr inbounds %struct.x509_parse_context, ptr %7, i32 0, i32 9, !dbg !1314
  %8 = load i8, ptr %o_size, align 4, !dbg !1314
  %tobool3 = icmp ne i8 %8, 0, !dbg !1313
  br i1 %tobool3, label %if.end10, label %land.lhs.true4, !dbg !1315

land.lhs.true4:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !1316
  %email_size = getelementptr inbounds %struct.x509_parse_context, ptr %9, i32 0, i32 11, !dbg !1317
  %10 = load i8, ptr %email_size, align 2, !dbg !1317
  %tobool5 = icmp ne i8 %10, 0, !dbg !1316
  br i1 %tobool5, label %if.end10, label %if.then6, !dbg !1318

if.then6:                                         ; preds = %land.lhs.true4
  %call = call noalias ptr @kmalloc(i64 noundef 1, i32 noundef 3264) #18, !dbg !1319
  store ptr %call, ptr %buffer, align 8, !dbg !1321
  %11 = load ptr, ptr %buffer, align 8, !dbg !1322
  %tobool7 = icmp ne ptr %11, null, !dbg !1322
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1324

if.then8:                                         ; preds = %if.then6
  store i32 -12, ptr %retval, align 4, !dbg !1325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1325

if.end9:                                          ; preds = %if.then6
  %12 = load ptr, ptr %buffer, align 8, !dbg !1326
  %arrayidx = getelementptr i8, ptr %12, i64 0, !dbg !1326
  store i8 0, ptr %arrayidx, align 1, !dbg !1327
  br label %done, !dbg !1328

if.end10:                                         ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !1329
  %cn_size11 = getelementptr inbounds %struct.x509_parse_context, ptr %13, i32 0, i32 10, !dbg !1331
  %14 = load i8, ptr %cn_size11, align 1, !dbg !1331
  %conv = zext i8 %14 to i32, !dbg !1329
  %tobool12 = icmp ne i32 %conv, 0, !dbg !1329
  br i1 %tobool12, label %land.lhs.true13, label %if.else, !dbg !1332

land.lhs.true13:                                  ; preds = %if.end10
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !1333
  %o_size14 = getelementptr inbounds %struct.x509_parse_context, ptr %15, i32 0, i32 9, !dbg !1334
  %16 = load i8, ptr %o_size14, align 4, !dbg !1334
  %conv15 = zext i8 %16 to i32, !dbg !1333
  %tobool16 = icmp ne i32 %conv15, 0, !dbg !1333
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !1335

if.then17:                                        ; preds = %land.lhs.true13
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !1336
  %cn_size18 = getelementptr inbounds %struct.x509_parse_context, ptr %17, i32 0, i32 10, !dbg !1338
  %18 = load i8, ptr %cn_size18, align 1, !dbg !1338
  %conv19 = zext i8 %18 to i64, !dbg !1336
  store i64 %conv19, ptr %namesize, align 8, !dbg !1339
  %19 = load ptr, ptr %data, align 8, !dbg !1340
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !1341
  %cn_offset = getelementptr inbounds %struct.x509_parse_context, ptr %20, i32 0, i32 13, !dbg !1342
  %21 = load i16, ptr %cn_offset, align 2, !dbg !1342
  %conv20 = zext i16 %21 to i32, !dbg !1341
  %idx.ext = sext i32 %conv20 to i64, !dbg !1343
  %add.ptr = getelementptr i8, ptr %19, i64 %idx.ext, !dbg !1343
  store ptr %add.ptr, ptr %name, align 8, !dbg !1344
  %22 = load ptr, ptr %ctx.addr, align 8, !dbg !1345
  %cn_size21 = getelementptr inbounds %struct.x509_parse_context, ptr %22, i32 0, i32 10, !dbg !1347
  %23 = load i8, ptr %cn_size21, align 1, !dbg !1347
  %conv22 = zext i8 %23 to i32, !dbg !1345
  %24 = load ptr, ptr %ctx.addr, align 8, !dbg !1348
  %o_size23 = getelementptr inbounds %struct.x509_parse_context, ptr %24, i32 0, i32 9, !dbg !1349
  %25 = load i8, ptr %o_size23, align 4, !dbg !1349
  %conv24 = zext i8 %25 to i32, !dbg !1348
  %cmp = icmp sge i32 %conv22, %conv24, !dbg !1350
  br i1 %cmp, label %land.lhs.true26, label %if.end40, !dbg !1351

land.lhs.true26:                                  ; preds = %if.then17
  %26 = load ptr, ptr %data, align 8, !dbg !1352
  %27 = load ptr, ptr %ctx.addr, align 8, !dbg !1353
  %cn_offset27 = getelementptr inbounds %struct.x509_parse_context, ptr %27, i32 0, i32 13, !dbg !1354
  %28 = load i16, ptr %cn_offset27, align 2, !dbg !1354
  %conv28 = zext i16 %28 to i32, !dbg !1353
  %idx.ext29 = sext i32 %conv28 to i64, !dbg !1355
  %add.ptr30 = getelementptr i8, ptr %26, i64 %idx.ext29, !dbg !1355
  %29 = load ptr, ptr %data, align 8, !dbg !1356
  %30 = load ptr, ptr %ctx.addr, align 8, !dbg !1357
  %o_offset = getelementptr inbounds %struct.x509_parse_context, ptr %30, i32 0, i32 12, !dbg !1358
  %31 = load i16, ptr %o_offset, align 8, !dbg !1358
  %conv31 = zext i16 %31 to i32, !dbg !1357
  %idx.ext32 = sext i32 %conv31 to i64, !dbg !1359
  %add.ptr33 = getelementptr i8, ptr %29, i64 %idx.ext32, !dbg !1359
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !1360
  %o_size34 = getelementptr inbounds %struct.x509_parse_context, ptr %32, i32 0, i32 9, !dbg !1361
  %33 = load i8, ptr %o_size34, align 4, !dbg !1361
  %conv35 = zext i8 %33 to i64, !dbg !1360
  %call36 = call i32 @memcmp(ptr noundef %add.ptr30, ptr noundef %add.ptr33, i64 noundef %conv35) #16, !dbg !1362
  %cmp37 = icmp eq i32 %call36, 0, !dbg !1363
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !1364

if.then39:                                        ; preds = %land.lhs.true26
  br label %single_component, !dbg !1365

if.end40:                                         ; preds = %land.lhs.true26, %if.then17
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !1366
  %cn_size41 = getelementptr inbounds %struct.x509_parse_context, ptr %34, i32 0, i32 10, !dbg !1368
  %35 = load i8, ptr %cn_size41, align 1, !dbg !1368
  %conv42 = zext i8 %35 to i32, !dbg !1366
  %cmp43 = icmp sge i32 %conv42, 7, !dbg !1369
  br i1 %cmp43, label %land.lhs.true45, label %if.end63, !dbg !1370

land.lhs.true45:                                  ; preds = %if.end40
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !1371
  %o_size46 = getelementptr inbounds %struct.x509_parse_context, ptr %36, i32 0, i32 9, !dbg !1372
  %37 = load i8, ptr %o_size46, align 4, !dbg !1372
  %conv47 = zext i8 %37 to i32, !dbg !1371
  %cmp48 = icmp sge i32 %conv47, 7, !dbg !1373
  br i1 %cmp48, label %land.lhs.true50, label %if.end63, !dbg !1374

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %38 = load ptr, ptr %data, align 8, !dbg !1375
  %39 = load ptr, ptr %ctx.addr, align 8, !dbg !1376
  %cn_offset51 = getelementptr inbounds %struct.x509_parse_context, ptr %39, i32 0, i32 13, !dbg !1377
  %40 = load i16, ptr %cn_offset51, align 2, !dbg !1377
  %conv52 = zext i16 %40 to i32, !dbg !1376
  %idx.ext53 = sext i32 %conv52 to i64, !dbg !1378
  %add.ptr54 = getelementptr i8, ptr %38, i64 %idx.ext53, !dbg !1378
  %41 = load ptr, ptr %data, align 8, !dbg !1379
  %42 = load ptr, ptr %ctx.addr, align 8, !dbg !1380
  %o_offset55 = getelementptr inbounds %struct.x509_parse_context, ptr %42, i32 0, i32 12, !dbg !1381
  %43 = load i16, ptr %o_offset55, align 8, !dbg !1381
  %conv56 = zext i16 %43 to i32, !dbg !1380
  %idx.ext57 = sext i32 %conv56 to i64, !dbg !1382
  %add.ptr58 = getelementptr i8, ptr %41, i64 %idx.ext57, !dbg !1382
  %call59 = call i32 @memcmp(ptr noundef %add.ptr54, ptr noundef %add.ptr58, i64 noundef 7) #16, !dbg !1383
  %cmp60 = icmp eq i32 %call59, 0, !dbg !1384
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !1385

if.then62:                                        ; preds = %land.lhs.true50
  br label %single_component, !dbg !1386

if.end63:                                         ; preds = %land.lhs.true50, %land.lhs.true45, %if.end40
  %44 = load ptr, ptr %ctx.addr, align 8, !dbg !1387
  %o_size64 = getelementptr inbounds %struct.x509_parse_context, ptr %44, i32 0, i32 9, !dbg !1388
  %45 = load i8, ptr %o_size64, align 4, !dbg !1388
  %conv65 = zext i8 %45 to i32, !dbg !1387
  %add = add i32 %conv65, 2, !dbg !1389
  %46 = load ptr, ptr %ctx.addr, align 8, !dbg !1390
  %cn_size66 = getelementptr inbounds %struct.x509_parse_context, ptr %46, i32 0, i32 10, !dbg !1391
  %47 = load i8, ptr %cn_size66, align 1, !dbg !1391
  %conv67 = zext i8 %47 to i32, !dbg !1390
  %add68 = add i32 %add, %conv67, !dbg !1392
  %add69 = add i32 %add68, 1, !dbg !1393
  %conv70 = sext i32 %add69 to i64, !dbg !1387
  %call71 = call noalias ptr @kmalloc(i64 noundef %conv70, i32 noundef 3264) #18, !dbg !1394
  store ptr %call71, ptr %buffer, align 8, !dbg !1395
  %48 = load ptr, ptr %buffer, align 8, !dbg !1396
  %tobool72 = icmp ne ptr %48, null, !dbg !1396
  br i1 %tobool72, label %if.end74, label %if.then73, !dbg !1398

if.then73:                                        ; preds = %if.end63
  store i32 -12, ptr %retval, align 4, !dbg !1399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1399

if.end74:                                         ; preds = %if.end63
  %49 = load ptr, ptr %buffer, align 8, !dbg !1400
  %50 = load ptr, ptr %data, align 8, !dbg !1401
  %51 = load ptr, ptr %ctx.addr, align 8, !dbg !1402
  %o_offset75 = getelementptr inbounds %struct.x509_parse_context, ptr %51, i32 0, i32 12, !dbg !1403
  %52 = load i16, ptr %o_offset75, align 8, !dbg !1403
  %conv76 = zext i16 %52 to i32, !dbg !1402
  %idx.ext77 = sext i32 %conv76 to i64, !dbg !1404
  %add.ptr78 = getelementptr i8, ptr %50, i64 %idx.ext77, !dbg !1404
  %53 = load ptr, ptr %ctx.addr, align 8, !dbg !1405
  %o_size79 = getelementptr inbounds %struct.x509_parse_context, ptr %53, i32 0, i32 9, !dbg !1406
  %54 = load i8, ptr %o_size79, align 4, !dbg !1406
  %conv80 = zext i8 %54 to i64, !dbg !1405
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %add.ptr78, i64 %conv80, i1 false), !dbg !1407
  %55 = load ptr, ptr %buffer, align 8, !dbg !1408
  %56 = load ptr, ptr %ctx.addr, align 8, !dbg !1409
  %o_size81 = getelementptr inbounds %struct.x509_parse_context, ptr %56, i32 0, i32 9, !dbg !1410
  %57 = load i8, ptr %o_size81, align 4, !dbg !1410
  %conv82 = zext i8 %57 to i32, !dbg !1409
  %add83 = add i32 %conv82, 0, !dbg !1411
  %idxprom = sext i32 %add83 to i64, !dbg !1408
  %arrayidx84 = getelementptr i8, ptr %55, i64 %idxprom, !dbg !1408
  store i8 58, ptr %arrayidx84, align 1, !dbg !1412
  %58 = load ptr, ptr %buffer, align 8, !dbg !1413
  %59 = load ptr, ptr %ctx.addr, align 8, !dbg !1414
  %o_size85 = getelementptr inbounds %struct.x509_parse_context, ptr %59, i32 0, i32 9, !dbg !1415
  %60 = load i8, ptr %o_size85, align 4, !dbg !1415
  %conv86 = zext i8 %60 to i32, !dbg !1414
  %add87 = add i32 %conv86, 1, !dbg !1416
  %idxprom88 = sext i32 %add87 to i64, !dbg !1413
  %arrayidx89 = getelementptr i8, ptr %58, i64 %idxprom88, !dbg !1413
  store i8 32, ptr %arrayidx89, align 1, !dbg !1417
  %61 = load ptr, ptr %buffer, align 8, !dbg !1418
  %62 = load ptr, ptr %ctx.addr, align 8, !dbg !1419
  %o_size90 = getelementptr inbounds %struct.x509_parse_context, ptr %62, i32 0, i32 9, !dbg !1420
  %63 = load i8, ptr %o_size90, align 4, !dbg !1420
  %conv91 = zext i8 %63 to i32, !dbg !1419
  %idx.ext92 = sext i32 %conv91 to i64, !dbg !1421
  %add.ptr93 = getelementptr i8, ptr %61, i64 %idx.ext92, !dbg !1421
  %add.ptr94 = getelementptr i8, ptr %add.ptr93, i64 2, !dbg !1422
  %64 = load ptr, ptr %data, align 8, !dbg !1423
  %65 = load ptr, ptr %ctx.addr, align 8, !dbg !1424
  %cn_offset95 = getelementptr inbounds %struct.x509_parse_context, ptr %65, i32 0, i32 13, !dbg !1425
  %66 = load i16, ptr %cn_offset95, align 2, !dbg !1425
  %conv96 = zext i16 %66 to i32, !dbg !1424
  %idx.ext97 = sext i32 %conv96 to i64, !dbg !1426
  %add.ptr98 = getelementptr i8, ptr %64, i64 %idx.ext97, !dbg !1426
  %67 = load ptr, ptr %ctx.addr, align 8, !dbg !1427
  %cn_size99 = getelementptr inbounds %struct.x509_parse_context, ptr %67, i32 0, i32 10, !dbg !1428
  %68 = load i8, ptr %cn_size99, align 1, !dbg !1428
  %conv100 = zext i8 %68 to i64, !dbg !1427
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr94, ptr align 1 %add.ptr98, i64 %conv100, i1 false), !dbg !1429
  %69 = load ptr, ptr %buffer, align 8, !dbg !1430
  %70 = load ptr, ptr %ctx.addr, align 8, !dbg !1431
  %o_size101 = getelementptr inbounds %struct.x509_parse_context, ptr %70, i32 0, i32 9, !dbg !1432
  %71 = load i8, ptr %o_size101, align 4, !dbg !1432
  %conv102 = zext i8 %71 to i32, !dbg !1431
  %add103 = add i32 %conv102, 2, !dbg !1433
  %72 = load ptr, ptr %ctx.addr, align 8, !dbg !1434
  %cn_size104 = getelementptr inbounds %struct.x509_parse_context, ptr %72, i32 0, i32 10, !dbg !1435
  %73 = load i8, ptr %cn_size104, align 1, !dbg !1435
  %conv105 = zext i8 %73 to i32, !dbg !1434
  %add106 = add i32 %add103, %conv105, !dbg !1436
  %idxprom107 = sext i32 %add106 to i64, !dbg !1430
  %arrayidx108 = getelementptr i8, ptr %69, i64 %idxprom107, !dbg !1430
  store i8 0, ptr %arrayidx108, align 1, !dbg !1437
  br label %done, !dbg !1438

if.else:                                          ; preds = %land.lhs.true13, %if.end10
  %74 = load ptr, ptr %ctx.addr, align 8, !dbg !1439
  %cn_size109 = getelementptr inbounds %struct.x509_parse_context, ptr %74, i32 0, i32 10, !dbg !1441
  %75 = load i8, ptr %cn_size109, align 1, !dbg !1441
  %tobool110 = icmp ne i8 %75, 0, !dbg !1439
  br i1 %tobool110, label %if.then111, label %if.else118, !dbg !1442

if.then111:                                       ; preds = %if.else
  %76 = load ptr, ptr %ctx.addr, align 8, !dbg !1443
  %cn_size112 = getelementptr inbounds %struct.x509_parse_context, ptr %76, i32 0, i32 10, !dbg !1445
  %77 = load i8, ptr %cn_size112, align 1, !dbg !1445
  %conv113 = zext i8 %77 to i64, !dbg !1443
  store i64 %conv113, ptr %namesize, align 8, !dbg !1446
  %78 = load ptr, ptr %data, align 8, !dbg !1447
  %79 = load ptr, ptr %ctx.addr, align 8, !dbg !1448
  %cn_offset114 = getelementptr inbounds %struct.x509_parse_context, ptr %79, i32 0, i32 13, !dbg !1449
  %80 = load i16, ptr %cn_offset114, align 2, !dbg !1449
  %conv115 = zext i16 %80 to i32, !dbg !1448
  %idx.ext116 = sext i32 %conv115 to i64, !dbg !1450
  %add.ptr117 = getelementptr i8, ptr %78, i64 %idx.ext116, !dbg !1450
  store ptr %add.ptr117, ptr %name, align 8, !dbg !1451
  br label %if.end135, !dbg !1452

if.else118:                                       ; preds = %if.else
  %81 = load ptr, ptr %ctx.addr, align 8, !dbg !1453
  %o_size119 = getelementptr inbounds %struct.x509_parse_context, ptr %81, i32 0, i32 9, !dbg !1455
  %82 = load i8, ptr %o_size119, align 4, !dbg !1455
  %tobool120 = icmp ne i8 %82, 0, !dbg !1453
  br i1 %tobool120, label %if.then121, label %if.else128, !dbg !1456

if.then121:                                       ; preds = %if.else118
  %83 = load ptr, ptr %ctx.addr, align 8, !dbg !1457
  %o_size122 = getelementptr inbounds %struct.x509_parse_context, ptr %83, i32 0, i32 9, !dbg !1459
  %84 = load i8, ptr %o_size122, align 4, !dbg !1459
  %conv123 = zext i8 %84 to i64, !dbg !1457
  store i64 %conv123, ptr %namesize, align 8, !dbg !1460
  %85 = load ptr, ptr %data, align 8, !dbg !1461
  %86 = load ptr, ptr %ctx.addr, align 8, !dbg !1462
  %o_offset124 = getelementptr inbounds %struct.x509_parse_context, ptr %86, i32 0, i32 12, !dbg !1463
  %87 = load i16, ptr %o_offset124, align 8, !dbg !1463
  %conv125 = zext i16 %87 to i32, !dbg !1462
  %idx.ext126 = sext i32 %conv125 to i64, !dbg !1464
  %add.ptr127 = getelementptr i8, ptr %85, i64 %idx.ext126, !dbg !1464
  store ptr %add.ptr127, ptr %name, align 8, !dbg !1465
  br label %if.end134, !dbg !1466

if.else128:                                       ; preds = %if.else118
  %88 = load ptr, ptr %ctx.addr, align 8, !dbg !1467
  %email_size129 = getelementptr inbounds %struct.x509_parse_context, ptr %88, i32 0, i32 11, !dbg !1469
  %89 = load i8, ptr %email_size129, align 2, !dbg !1469
  %conv130 = zext i8 %89 to i64, !dbg !1467
  store i64 %conv130, ptr %namesize, align 8, !dbg !1470
  %90 = load ptr, ptr %data, align 8, !dbg !1471
  %91 = load ptr, ptr %ctx.addr, align 8, !dbg !1472
  %email_offset = getelementptr inbounds %struct.x509_parse_context, ptr %91, i32 0, i32 14, !dbg !1473
  %92 = load i16, ptr %email_offset, align 4, !dbg !1473
  %conv131 = zext i16 %92 to i32, !dbg !1472
  %idx.ext132 = sext i32 %conv131 to i64, !dbg !1474
  %add.ptr133 = getelementptr i8, ptr %90, i64 %idx.ext132, !dbg !1474
  store ptr %add.ptr133, ptr %name, align 8, !dbg !1475
  br label %if.end134

if.end134:                                        ; preds = %if.else128, %if.then121
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then111
  br label %if.end136

if.end136:                                        ; preds = %if.end135
  br label %single_component, !dbg !1334

single_component:                                 ; preds = %if.end136, %if.then62, %if.then39
  call void @llvm.dbg.label(metadata !1287), !dbg !1476
  %93 = load i64, ptr %namesize, align 8, !dbg !1477
  %add137 = add i64 %93, 1, !dbg !1478
  %call138 = call noalias ptr @kmalloc(i64 noundef %add137, i32 noundef 3264) #18, !dbg !1479
  store ptr %call138, ptr %buffer, align 8, !dbg !1480
  %94 = load ptr, ptr %buffer, align 8, !dbg !1481
  %tobool139 = icmp ne ptr %94, null, !dbg !1481
  br i1 %tobool139, label %if.end141, label %if.then140, !dbg !1483

if.then140:                                       ; preds = %single_component
  store i32 -12, ptr %retval, align 4, !dbg !1484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1484

if.end141:                                        ; preds = %single_component
  %95 = load ptr, ptr %buffer, align 8, !dbg !1485
  %96 = load ptr, ptr %name, align 8, !dbg !1486
  %97 = load i64, ptr %namesize, align 8, !dbg !1487
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %95, ptr align 1 %96, i64 %97, i1 false), !dbg !1488
  %98 = load ptr, ptr %buffer, align 8, !dbg !1489
  %99 = load i64, ptr %namesize, align 8, !dbg !1490
  %arrayidx142 = getelementptr i8, ptr %98, i64 %99, !dbg !1489
  store i8 0, ptr %arrayidx142, align 1, !dbg !1491
  br label %done, !dbg !1489

done:                                             ; preds = %if.end141, %if.end74, %if.end9
  call void @llvm.dbg.label(metadata !1288), !dbg !1492
  %100 = load ptr, ptr %buffer, align 8, !dbg !1493
  %101 = load ptr, ptr %_name.addr, align 8, !dbg !1494
  store ptr %100, ptr %101, align 8, !dbg !1495
  %102 = load ptr, ptr %ctx.addr, align 8, !dbg !1496
  %cn_size143 = getelementptr inbounds %struct.x509_parse_context, ptr %102, i32 0, i32 10, !dbg !1497
  store i8 0, ptr %cn_size143, align 1, !dbg !1498
  %103 = load ptr, ptr %ctx.addr, align 8, !dbg !1499
  %o_size144 = getelementptr inbounds %struct.x509_parse_context, ptr %103, i32 0, i32 9, !dbg !1500
  store i8 0, ptr %o_size144, align 4, !dbg !1501
  %104 = load ptr, ptr %ctx.addr, align 8, !dbg !1502
  %email_size145 = getelementptr inbounds %struct.x509_parse_context, ptr %104, i32 0, i32 11, !dbg !1503
  store i8 0, ptr %email_size145, align 2, !dbg !1504
  store i32 0, ptr %retval, align 4, !dbg !1505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1505

cleanup:                                          ; preds = %done, %if.then140, %if.then73, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #17, !dbg !1506
  call void @llvm.lifetime.end.p0(i64 8, ptr %namesize) #17, !dbg !1506
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #17, !dbg !1506
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #17, !dbg !1506
  %105 = load i32, ptr %retval, align 4, !dbg !1506
  ret i32 %105, !dbg !1506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_subject(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1507 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1509, metadata !DIExpression()), !dbg !1515
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1510, metadata !DIExpression()), !dbg !1516
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1511, metadata !DIExpression()), !dbg !1517
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1512, metadata !DIExpression()), !dbg !1518
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1513, metadata !DIExpression()), !dbg !1519
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !1520
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1514, metadata !DIExpression()), !dbg !1521
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1522
  store ptr %0, ptr %ctx, align 8, !dbg !1521
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1523
  %2 = load ptr, ptr %ctx, align 8, !dbg !1524
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %2, i32 0, i32 0, !dbg !1525
  %3 = load ptr, ptr %cert, align 8, !dbg !1525
  %raw_subject = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 18, !dbg !1526
  store ptr %1, ptr %raw_subject, align 8, !dbg !1527
  %4 = load i64, ptr %vlen.addr, align 8, !dbg !1528
  %conv = trunc i64 %4 to i32, !dbg !1528
  %5 = load ptr, ptr %ctx, align 8, !dbg !1529
  %cert1 = getelementptr inbounds %struct.x509_parse_context, ptr %5, i32 0, i32 0, !dbg !1530
  %6 = load ptr, ptr %cert1, align 8, !dbg !1530
  %raw_subject_size = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 19, !dbg !1531
  store i32 %conv, ptr %raw_subject_size, align 8, !dbg !1532
  %7 = load ptr, ptr %ctx, align 8, !dbg !1533
  %8 = load i64, ptr %hdrlen.addr, align 8, !dbg !1534
  %9 = load i8, ptr %tag.addr, align 1, !dbg !1535
  %10 = load ptr, ptr %ctx, align 8, !dbg !1536
  %cert2 = getelementptr inbounds %struct.x509_parse_context, ptr %10, i32 0, i32 0, !dbg !1537
  %11 = load ptr, ptr %cert2, align 8, !dbg !1537
  %subject = getelementptr inbounds %struct.x509_certificate, ptr %11, i32 0, i32 5, !dbg !1538
  %12 = load i64, ptr %vlen.addr, align 8, !dbg !1539
  %call = call i32 @x509_fabricate_name(ptr noundef %7, i64 noundef %8, i8 noundef zeroext %9, ptr noundef %subject, i64 noundef %12) #16, !dbg !1540
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1541
  ret i32 %call, !dbg !1542
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_params(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1543 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1545, metadata !DIExpression()), !dbg !1551
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1546, metadata !DIExpression()), !dbg !1552
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1547, metadata !DIExpression()), !dbg !1553
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1548, metadata !DIExpression()), !dbg !1554
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1549, metadata !DIExpression()), !dbg !1555
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !1556
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1550, metadata !DIExpression()), !dbg !1557
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1558
  store ptr %0, ptr %ctx, align 8, !dbg !1557
  %1 = load ptr, ptr %ctx, align 8, !dbg !1559
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %1, i32 0, i32 0, !dbg !1561
  %2 = load ptr, ptr %cert, align 8, !dbg !1561
  %raw_subject = getelementptr inbounds %struct.x509_certificate, ptr %2, i32 0, i32 18, !dbg !1562
  %3 = load ptr, ptr %raw_subject, align 8, !dbg !1562
  %tobool = icmp ne ptr %3, null, !dbg !1559
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1563

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %ctx, align 8, !dbg !1564
  %key = getelementptr inbounds %struct.x509_parse_context, ptr %4, i32 0, i32 2, !dbg !1565
  %5 = load ptr, ptr %key, align 8, !dbg !1565
  %tobool1 = icmp ne ptr %5, null, !dbg !1564
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1566

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !1567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1567

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %value.addr, align 8, !dbg !1568
  %7 = load i64, ptr %hdrlen.addr, align 8, !dbg !1569
  %idx.neg = sub i64 0, %7, !dbg !1570
  %add.ptr = getelementptr i8, ptr %6, i64 %idx.neg, !dbg !1570
  %8 = load ptr, ptr %ctx, align 8, !dbg !1571
  %params = getelementptr inbounds %struct.x509_parse_context, ptr %8, i32 0, i32 4, !dbg !1572
  store ptr %add.ptr, ptr %params, align 8, !dbg !1573
  %9 = load i64, ptr %vlen.addr, align 8, !dbg !1574
  %10 = load i64, ptr %hdrlen.addr, align 8, !dbg !1575
  %add = add i64 %9, %10, !dbg !1576
  %11 = load ptr, ptr %ctx, align 8, !dbg !1577
  %params_size = getelementptr inbounds %struct.x509_parse_context, ptr %11, i32 0, i32 5, !dbg !1578
  store i64 %add, ptr %params_size, align 8, !dbg !1579
  store i32 0, ptr %retval, align 4, !dbg !1580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1580

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1581
  %12 = load i32, ptr %retval, align 4, !dbg !1581
  ret i32 %12, !dbg !1581
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_extract_key_data(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1582 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %oid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1584, metadata !DIExpression()), !dbg !1591
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1585, metadata !DIExpression()), !dbg !1592
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1586, metadata !DIExpression()), !dbg !1593
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1587, metadata !DIExpression()), !dbg !1594
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1588, metadata !DIExpression()), !dbg !1595
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !1596
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1589, metadata !DIExpression()), !dbg !1597
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1598
  store ptr %0, ptr %ctx, align 8, !dbg !1597
  call void @llvm.lifetime.start.p0(i64 4, ptr %oid) #17, !dbg !1599
  call void @llvm.dbg.declare(metadata ptr %oid, metadata !1590, metadata !DIExpression()), !dbg !1600
  %1 = load ptr, ptr %ctx, align 8, !dbg !1601
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %1, i32 0, i32 7, !dbg !1602
  %2 = load i32, ptr %last_oid, align 4, !dbg !1602
  %3 = load ptr, ptr %ctx, align 8, !dbg !1603
  %key_algo = getelementptr inbounds %struct.x509_parse_context, ptr %3, i32 0, i32 6, !dbg !1604
  store i32 %2, ptr %key_algo, align 8, !dbg !1605
  %4 = load ptr, ptr %ctx, align 8, !dbg !1606
  %last_oid1 = getelementptr inbounds %struct.x509_parse_context, ptr %4, i32 0, i32 7, !dbg !1607
  %5 = load i32, ptr %last_oid1, align 4, !dbg !1607
  switch i32 %5, label %sw.default27 [
    i32 10, label %sw.bb
    i32 79, label %sw.bb2
    i32 80, label %sw.bb2
    i32 92, label %sw.bb6
    i32 2, label %sw.bb10
  ], !dbg !1608

sw.bb:                                            ; preds = %entry
  %6 = load ptr, ptr %ctx, align 8, !dbg !1609
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %6, i32 0, i32 0, !dbg !1611
  %7 = load ptr, ptr %cert, align 8, !dbg !1611
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %7, i32 0, i32 2, !dbg !1612
  %8 = load ptr, ptr %pub, align 8, !dbg !1612
  %pkey_algo = getelementptr inbounds %struct.public_key, ptr %8, i32 0, i32 7, !dbg !1613
  store ptr @.str.10, ptr %pkey_algo, align 8, !dbg !1614
  br label %sw.epilog28, !dbg !1615

sw.bb2:                                           ; preds = %entry, %entry
  %9 = load ptr, ptr %ctx, align 8, !dbg !1616
  %cert3 = getelementptr inbounds %struct.x509_parse_context, ptr %9, i32 0, i32 0, !dbg !1617
  %10 = load ptr, ptr %cert3, align 8, !dbg !1617
  %pub4 = getelementptr inbounds %struct.x509_certificate, ptr %10, i32 0, i32 2, !dbg !1618
  %11 = load ptr, ptr %pub4, align 8, !dbg !1618
  %pkey_algo5 = getelementptr inbounds %struct.public_key, ptr %11, i32 0, i32 7, !dbg !1619
  store ptr @.str.12, ptr %pkey_algo5, align 8, !dbg !1620
  br label %sw.epilog28, !dbg !1621

sw.bb6:                                           ; preds = %entry
  %12 = load ptr, ptr %ctx, align 8, !dbg !1622
  %cert7 = getelementptr inbounds %struct.x509_parse_context, ptr %12, i32 0, i32 0, !dbg !1623
  %13 = load ptr, ptr %cert7, align 8, !dbg !1623
  %pub8 = getelementptr inbounds %struct.x509_certificate, ptr %13, i32 0, i32 2, !dbg !1624
  %14 = load ptr, ptr %pub8, align 8, !dbg !1624
  %pkey_algo9 = getelementptr inbounds %struct.public_key, ptr %14, i32 0, i32 7, !dbg !1625
  store ptr @.str.14, ptr %pkey_algo9, align 8, !dbg !1626
  br label %sw.epilog28, !dbg !1627

sw.bb10:                                          ; preds = %entry
  %15 = load ptr, ptr %ctx, align 8, !dbg !1628
  %params = getelementptr inbounds %struct.x509_parse_context, ptr %15, i32 0, i32 4, !dbg !1630
  %16 = load ptr, ptr %params, align 8, !dbg !1630
  %17 = load ptr, ptr %ctx, align 8, !dbg !1631
  %params_size = getelementptr inbounds %struct.x509_parse_context, ptr %17, i32 0, i32 5, !dbg !1632
  %18 = load i64, ptr %params_size, align 8, !dbg !1632
  %call = call i32 @parse_OID(ptr noundef %16, i64 noundef %18, ptr noundef %oid) #16, !dbg !1633
  %cmp = icmp ne i32 %call, 0, !dbg !1634
  br i1 %cmp, label %if.then, label %if.end, !dbg !1635

if.then:                                          ; preds = %sw.bb10
  store i32 -74, ptr %retval, align 4, !dbg !1636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1636

if.end:                                           ; preds = %sw.bb10
  %19 = load i32, ptr %oid, align 4, !dbg !1637
  switch i32 %19, label %sw.default [
    i32 92, label %sw.bb11
    i32 3, label %sw.bb15
    i32 4, label %sw.bb19
    i32 47, label %sw.bb23
  ], !dbg !1638

sw.bb11:                                          ; preds = %if.end
  %20 = load ptr, ptr %ctx, align 8, !dbg !1639
  %cert12 = getelementptr inbounds %struct.x509_parse_context, ptr %20, i32 0, i32 0, !dbg !1641
  %21 = load ptr, ptr %cert12, align 8, !dbg !1641
  %pub13 = getelementptr inbounds %struct.x509_certificate, ptr %21, i32 0, i32 2, !dbg !1642
  %22 = load ptr, ptr %pub13, align 8, !dbg !1642
  %pkey_algo14 = getelementptr inbounds %struct.public_key, ptr %22, i32 0, i32 7, !dbg !1643
  store ptr @.str.14, ptr %pkey_algo14, align 8, !dbg !1644
  br label %sw.epilog, !dbg !1645

sw.bb15:                                          ; preds = %if.end
  %23 = load ptr, ptr %ctx, align 8, !dbg !1646
  %cert16 = getelementptr inbounds %struct.x509_parse_context, ptr %23, i32 0, i32 0, !dbg !1647
  %24 = load ptr, ptr %cert16, align 8, !dbg !1647
  %pub17 = getelementptr inbounds %struct.x509_certificate, ptr %24, i32 0, i32 2, !dbg !1648
  %25 = load ptr, ptr %pub17, align 8, !dbg !1648
  %pkey_algo18 = getelementptr inbounds %struct.public_key, ptr %25, i32 0, i32 7, !dbg !1649
  store ptr @.str.19, ptr %pkey_algo18, align 8, !dbg !1650
  br label %sw.epilog, !dbg !1651

sw.bb19:                                          ; preds = %if.end
  %26 = load ptr, ptr %ctx, align 8, !dbg !1652
  %cert20 = getelementptr inbounds %struct.x509_parse_context, ptr %26, i32 0, i32 0, !dbg !1653
  %27 = load ptr, ptr %cert20, align 8, !dbg !1653
  %pub21 = getelementptr inbounds %struct.x509_certificate, ptr %27, i32 0, i32 2, !dbg !1654
  %28 = load ptr, ptr %pub21, align 8, !dbg !1654
  %pkey_algo22 = getelementptr inbounds %struct.public_key, ptr %28, i32 0, i32 7, !dbg !1655
  store ptr @.str.20, ptr %pkey_algo22, align 8, !dbg !1656
  br label %sw.epilog, !dbg !1657

sw.bb23:                                          ; preds = %if.end
  %29 = load ptr, ptr %ctx, align 8, !dbg !1658
  %cert24 = getelementptr inbounds %struct.x509_parse_context, ptr %29, i32 0, i32 0, !dbg !1659
  %30 = load ptr, ptr %cert24, align 8, !dbg !1659
  %pub25 = getelementptr inbounds %struct.x509_certificate, ptr %30, i32 0, i32 2, !dbg !1660
  %31 = load ptr, ptr %pub25, align 8, !dbg !1660
  %pkey_algo26 = getelementptr inbounds %struct.public_key, ptr %31, i32 0, i32 7, !dbg !1661
  store ptr @.str.21, ptr %pkey_algo26, align 8, !dbg !1662
  br label %sw.epilog, !dbg !1663

sw.default:                                       ; preds = %if.end
  store i32 -65, ptr %retval, align 4, !dbg !1664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1664

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11
  br label %sw.epilog28, !dbg !1665

sw.default27:                                     ; preds = %entry
  store i32 -65, ptr %retval, align 4, !dbg !1666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1666

sw.epilog28:                                      ; preds = %sw.epilog, %sw.bb6, %sw.bb2, %sw.bb
  %32 = load i64, ptr %vlen.addr, align 8, !dbg !1667
  %cmp29 = icmp ult i64 %32, 1, !dbg !1669
  br i1 %cmp29, label %if.then32, label %lor.lhs.false, !dbg !1670

lor.lhs.false:                                    ; preds = %sw.epilog28
  %33 = load ptr, ptr %value.addr, align 8, !dbg !1671
  %34 = load i8, ptr %33, align 1, !dbg !1672
  %conv = zext i8 %34 to i32, !dbg !1672
  %cmp30 = icmp ne i32 %conv, 0, !dbg !1673
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1674

if.then32:                                        ; preds = %lor.lhs.false, %sw.epilog28
  store i32 -74, ptr %retval, align 4, !dbg !1675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1675

if.end33:                                         ; preds = %lor.lhs.false
  %35 = load ptr, ptr %value.addr, align 8, !dbg !1676
  %add.ptr = getelementptr i8, ptr %35, i64 1, !dbg !1677
  %36 = load ptr, ptr %ctx, align 8, !dbg !1678
  %key = getelementptr inbounds %struct.x509_parse_context, ptr %36, i32 0, i32 2, !dbg !1679
  store ptr %add.ptr, ptr %key, align 8, !dbg !1680
  %37 = load i64, ptr %vlen.addr, align 8, !dbg !1681
  %sub = sub i64 %37, 1, !dbg !1682
  %38 = load ptr, ptr %ctx, align 8, !dbg !1683
  %key_size = getelementptr inbounds %struct.x509_parse_context, ptr %38, i32 0, i32 3, !dbg !1684
  store i64 %sub, ptr %key_size, align 8, !dbg !1685
  store i32 0, ptr %retval, align 4, !dbg !1686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1686

cleanup:                                          ; preds = %if.end33, %if.then32, %sw.default27, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %oid) #17, !dbg !1687
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1687
  %39 = load i32, ptr %retval, align 4, !dbg !1687
  ret i32 %39, !dbg !1687
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1688 dso_local i32 @parse_OID(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_process_extension(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1692 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %kid = alloca ptr, align 8
  %v = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1694, metadata !DIExpression()), !dbg !1702
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1695, metadata !DIExpression()), !dbg !1703
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1696, metadata !DIExpression()), !dbg !1704
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1697, metadata !DIExpression()), !dbg !1705
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1698, metadata !DIExpression()), !dbg !1706
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1699, metadata !DIExpression()), !dbg !1708
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1709
  store ptr %0, ptr %ctx, align 8, !dbg !1708
  call void @llvm.lifetime.start.p0(i64 8, ptr %kid) #17, !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %kid, metadata !1700, metadata !DIExpression()), !dbg !1711
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #17, !dbg !1712
  call void @llvm.dbg.declare(metadata ptr %v, metadata !1701, metadata !DIExpression()), !dbg !1713
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1714
  store ptr %1, ptr %v, align 8, !dbg !1713
  store i32 0, ptr %tmp, align 4, !dbg !1715
  %2 = load i32, ptr %tmp, align 4, !dbg !1718
  %3 = load ptr, ptr %ctx, align 8, !dbg !1719
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %3, i32 0, i32 7, !dbg !1721
  %4 = load i32, ptr %last_oid, align 4, !dbg !1721
  %cmp = icmp eq i32 %4, 65, !dbg !1722
  br i1 %cmp, label %if.then, label %if.end24, !dbg !1723

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctx, align 8, !dbg !1724
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %5, i32 0, i32 0, !dbg !1727
  %6 = load ptr, ptr %cert, align 8, !dbg !1727
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 7, !dbg !1728
  %7 = load ptr, ptr %skid, align 8, !dbg !1728
  %tobool = icmp ne ptr %7, null, !dbg !1724
  br i1 %tobool, label %if.then2, label %lor.lhs.false, !dbg !1729

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i64, ptr %vlen.addr, align 8, !dbg !1730
  %cmp1 = icmp ult i64 %8, 3, !dbg !1731
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1732

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -74, ptr %retval, align 4, !dbg !1733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1733

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %v, align 8, !dbg !1734
  %arrayidx = getelementptr i8, ptr %9, i64 0, !dbg !1734
  %10 = load i8, ptr %arrayidx, align 1, !dbg !1734
  %conv = zext i8 %10 to i32, !dbg !1734
  %cmp3 = icmp ne i32 %conv, 4, !dbg !1736
  br i1 %cmp3, label %if.then10, label %lor.lhs.false5, !dbg !1737

lor.lhs.false5:                                   ; preds = %if.end
  %11 = load ptr, ptr %v, align 8, !dbg !1738
  %arrayidx6 = getelementptr i8, ptr %11, i64 1, !dbg !1738
  %12 = load i8, ptr %arrayidx6, align 1, !dbg !1738
  %conv7 = zext i8 %12 to i64, !dbg !1738
  %13 = load i64, ptr %vlen.addr, align 8, !dbg !1739
  %sub = sub i64 %13, 2, !dbg !1740
  %cmp8 = icmp ne i64 %conv7, %sub, !dbg !1741
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1742

if.then10:                                        ; preds = %lor.lhs.false5, %if.end
  store i32 -74, ptr %retval, align 4, !dbg !1743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1743

if.end11:                                         ; preds = %lor.lhs.false5
  %14 = load ptr, ptr %v, align 8, !dbg !1744
  %add.ptr = getelementptr i8, ptr %14, i64 2, !dbg !1744
  store ptr %add.ptr, ptr %v, align 8, !dbg !1744
  %15 = load i64, ptr %vlen.addr, align 8, !dbg !1745
  %sub12 = sub i64 %15, 2, !dbg !1745
  store i64 %sub12, ptr %vlen.addr, align 8, !dbg !1745
  %16 = load i64, ptr %vlen.addr, align 8, !dbg !1746
  %conv13 = trunc i64 %16 to i32, !dbg !1746
  %17 = load ptr, ptr %ctx, align 8, !dbg !1747
  %cert14 = getelementptr inbounds %struct.x509_parse_context, ptr %17, i32 0, i32 0, !dbg !1748
  %18 = load ptr, ptr %cert14, align 8, !dbg !1748
  %raw_skid_size = getelementptr inbounds %struct.x509_certificate, ptr %18, i32 0, i32 20, !dbg !1749
  store i32 %conv13, ptr %raw_skid_size, align 4, !dbg !1750
  %19 = load ptr, ptr %v, align 8, !dbg !1751
  %20 = load ptr, ptr %ctx, align 8, !dbg !1752
  %cert15 = getelementptr inbounds %struct.x509_parse_context, ptr %20, i32 0, i32 0, !dbg !1753
  %21 = load ptr, ptr %cert15, align 8, !dbg !1753
  %raw_skid = getelementptr inbounds %struct.x509_certificate, ptr %21, i32 0, i32 21, !dbg !1754
  store ptr %19, ptr %raw_skid, align 8, !dbg !1755
  %22 = load ptr, ptr %v, align 8, !dbg !1756
  %23 = load i64, ptr %vlen.addr, align 8, !dbg !1757
  %call = call ptr @asymmetric_key_generate_id(ptr noundef %22, i64 noundef %23, ptr noundef @.str.18, i64 noundef 0) #16, !dbg !1758
  store ptr %call, ptr %kid, align 8, !dbg !1759
  %24 = load ptr, ptr %kid, align 8, !dbg !1760
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %24) #16, !dbg !1762
  br i1 %call16, label %if.then17, label %if.end20, !dbg !1763

if.then17:                                        ; preds = %if.end11
  %25 = load ptr, ptr %kid, align 8, !dbg !1764
  %call18 = call i64 @PTR_ERR(ptr noundef %25) #16, !dbg !1765
  %conv19 = trunc i64 %call18 to i32, !dbg !1765
  store i32 %conv19, ptr %retval, align 4, !dbg !1766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1766

if.end20:                                         ; preds = %if.end11
  %26 = load ptr, ptr %kid, align 8, !dbg !1767
  %27 = load ptr, ptr %ctx, align 8, !dbg !1768
  %cert21 = getelementptr inbounds %struct.x509_parse_context, ptr %27, i32 0, i32 0, !dbg !1769
  %28 = load ptr, ptr %cert21, align 8, !dbg !1769
  %skid22 = getelementptr inbounds %struct.x509_certificate, ptr %28, i32 0, i32 7, !dbg !1770
  store ptr %26, ptr %skid22, align 8, !dbg !1771
  store i32 0, ptr %tmp23, align 4, !dbg !1772
  %29 = load i32, ptr %tmp23, align 4, !dbg !1775
  store i32 0, ptr %retval, align 4, !dbg !1776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1776

if.end24:                                         ; preds = %entry
  %30 = load ptr, ptr %ctx, align 8, !dbg !1777
  %last_oid25 = getelementptr inbounds %struct.x509_parse_context, ptr %30, i32 0, i32 7, !dbg !1779
  %31 = load i32, ptr %last_oid25, align 4, !dbg !1779
  %cmp26 = icmp eq i32 %31, 66, !dbg !1780
  br i1 %cmp26, label %if.then28, label %if.end88, !dbg !1781

if.then28:                                        ; preds = %if.end24
  %32 = load ptr, ptr %v, align 8, !dbg !1782
  %arrayidx29 = getelementptr i8, ptr %32, i64 0, !dbg !1782
  %33 = load i8, ptr %arrayidx29, align 1, !dbg !1782
  %conv30 = zext i8 %33 to i32, !dbg !1782
  %cmp31 = icmp ne i32 %conv30, 3, !dbg !1785
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !1786

if.then33:                                        ; preds = %if.then28
  store i32 -74, ptr %retval, align 4, !dbg !1787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1787

if.end34:                                         ; preds = %if.then28
  %34 = load i64, ptr %vlen.addr, align 8, !dbg !1788
  %cmp35 = icmp ult i64 %34, 4, !dbg !1790
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !1791

if.then37:                                        ; preds = %if.end34
  store i32 -74, ptr %retval, align 4, !dbg !1792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1792

if.end38:                                         ; preds = %if.end34
  %35 = load ptr, ptr %v, align 8, !dbg !1793
  %arrayidx39 = getelementptr i8, ptr %35, i64 2, !dbg !1793
  %36 = load i8, ptr %arrayidx39, align 1, !dbg !1793
  %conv40 = zext i8 %36 to i32, !dbg !1793
  %cmp41 = icmp sge i32 %conv40, 8, !dbg !1795
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !1796

if.then43:                                        ; preds = %if.end38
  store i32 -74, ptr %retval, align 4, !dbg !1797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1797

if.end44:                                         ; preds = %if.end38
  %37 = load ptr, ptr %v, align 8, !dbg !1798
  %arrayidx45 = getelementptr i8, ptr %37, i64 3, !dbg !1798
  %38 = load i8, ptr %arrayidx45, align 1, !dbg !1798
  %conv46 = zext i8 %38 to i32, !dbg !1798
  %and = and i32 %conv46, 128, !dbg !1800
  %tobool47 = icmp ne i32 %and, 0, !dbg !1800
  br i1 %tobool47, label %if.then48, label %if.end50, !dbg !1801

if.then48:                                        ; preds = %if.end44
  %39 = load ptr, ptr %ctx, align 8, !dbg !1802
  %cert49 = getelementptr inbounds %struct.x509_parse_context, ptr %39, i32 0, i32 0, !dbg !1803
  %40 = load ptr, ptr %cert49, align 8, !dbg !1803
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %40, i32 0, i32 2, !dbg !1804
  %41 = load ptr, ptr %pub, align 8, !dbg !1804
  %key_eflags = getelementptr inbounds %struct.public_key, ptr %41, i32 0, i32 8, !dbg !1805
  %42 = load i64, ptr %key_eflags, align 8, !dbg !1806
  %or = or i64 %42, 2, !dbg !1806
  store i64 %or, ptr %key_eflags, align 8, !dbg !1806
  br label %if.end50, !dbg !1802

if.end50:                                         ; preds = %if.then48, %if.end44
  %43 = load ptr, ptr %v, align 8, !dbg !1807
  %arrayidx51 = getelementptr i8, ptr %43, i64 1, !dbg !1807
  %44 = load i8, ptr %arrayidx51, align 1, !dbg !1807
  %conv52 = zext i8 %44 to i32, !dbg !1807
  %cmp53 = icmp eq i32 %conv52, 2, !dbg !1809
  br i1 %cmp53, label %land.lhs.true, label %if.else, !dbg !1810

land.lhs.true:                                    ; preds = %if.end50
  %45 = load ptr, ptr %v, align 8, !dbg !1811
  %arrayidx55 = getelementptr i8, ptr %45, i64 2, !dbg !1811
  %46 = load i8, ptr %arrayidx55, align 1, !dbg !1811
  %conv56 = zext i8 %46 to i32, !dbg !1811
  %cmp57 = icmp sle i32 %conv56, 2, !dbg !1812
  br i1 %cmp57, label %land.lhs.true59, label %if.else, !dbg !1813

land.lhs.true59:                                  ; preds = %land.lhs.true
  %47 = load ptr, ptr %v, align 8, !dbg !1814
  %arrayidx60 = getelementptr i8, ptr %47, i64 3, !dbg !1814
  %48 = load i8, ptr %arrayidx60, align 1, !dbg !1814
  %conv61 = zext i8 %48 to i32, !dbg !1814
  %and62 = and i32 %conv61, 4, !dbg !1815
  %tobool63 = icmp ne i32 %and62, 0, !dbg !1815
  br i1 %tobool63, label %if.then64, label %if.else, !dbg !1816

if.then64:                                        ; preds = %land.lhs.true59
  %49 = load ptr, ptr %ctx, align 8, !dbg !1817
  %cert65 = getelementptr inbounds %struct.x509_parse_context, ptr %49, i32 0, i32 0, !dbg !1818
  %50 = load ptr, ptr %cert65, align 8, !dbg !1818
  %pub66 = getelementptr inbounds %struct.x509_certificate, ptr %50, i32 0, i32 2, !dbg !1819
  %51 = load ptr, ptr %pub66, align 8, !dbg !1819
  %key_eflags67 = getelementptr inbounds %struct.public_key, ptr %51, i32 0, i32 8, !dbg !1820
  %52 = load i64, ptr %key_eflags67, align 8, !dbg !1821
  %or68 = or i64 %52, 4, !dbg !1821
  store i64 %or68, ptr %key_eflags67, align 8, !dbg !1821
  br label %if.end87, !dbg !1817

if.else:                                          ; preds = %land.lhs.true59, %land.lhs.true, %if.end50
  %53 = load i64, ptr %vlen.addr, align 8, !dbg !1822
  %cmp69 = icmp ugt i64 %53, 4, !dbg !1824
  br i1 %cmp69, label %land.lhs.true71, label %if.end86, !dbg !1825

land.lhs.true71:                                  ; preds = %if.else
  %54 = load ptr, ptr %v, align 8, !dbg !1826
  %arrayidx72 = getelementptr i8, ptr %54, i64 1, !dbg !1826
  %55 = load i8, ptr %arrayidx72, align 1, !dbg !1826
  %conv73 = zext i8 %55 to i32, !dbg !1826
  %cmp74 = icmp eq i32 %conv73, 3, !dbg !1827
  br i1 %cmp74, label %land.lhs.true76, label %if.end86, !dbg !1828

land.lhs.true76:                                  ; preds = %land.lhs.true71
  %56 = load ptr, ptr %v, align 8, !dbg !1829
  %arrayidx77 = getelementptr i8, ptr %56, i64 3, !dbg !1829
  %57 = load i8, ptr %arrayidx77, align 1, !dbg !1829
  %conv78 = zext i8 %57 to i32, !dbg !1829
  %and79 = and i32 %conv78, 4, !dbg !1830
  %tobool80 = icmp ne i32 %and79, 0, !dbg !1830
  br i1 %tobool80, label %if.then81, label %if.end86, !dbg !1831

if.then81:                                        ; preds = %land.lhs.true76
  %58 = load ptr, ptr %ctx, align 8, !dbg !1832
  %cert82 = getelementptr inbounds %struct.x509_parse_context, ptr %58, i32 0, i32 0, !dbg !1833
  %59 = load ptr, ptr %cert82, align 8, !dbg !1833
  %pub83 = getelementptr inbounds %struct.x509_certificate, ptr %59, i32 0, i32 2, !dbg !1834
  %60 = load ptr, ptr %pub83, align 8, !dbg !1834
  %key_eflags84 = getelementptr inbounds %struct.public_key, ptr %60, i32 0, i32 8, !dbg !1835
  %61 = load i64, ptr %key_eflags84, align 8, !dbg !1836
  %or85 = or i64 %61, 4, !dbg !1836
  store i64 %or85, ptr %key_eflags84, align 8, !dbg !1836
  br label %if.end86, !dbg !1832

if.end86:                                         ; preds = %if.then81, %land.lhs.true76, %land.lhs.true71, %if.else
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then64
  store i32 0, ptr %retval, align 4, !dbg !1837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1837

if.end88:                                         ; preds = %if.end24
  %62 = load ptr, ptr %ctx, align 8, !dbg !1838
  %last_oid89 = getelementptr inbounds %struct.x509_parse_context, ptr %62, i32 0, i32 7, !dbg !1840
  %63 = load i32, ptr %last_oid89, align 4, !dbg !1840
  %cmp90 = icmp eq i32 %63, 72, !dbg !1841
  br i1 %cmp90, label %if.then92, label %if.end94, !dbg !1842

if.then92:                                        ; preds = %if.end88
  %64 = load ptr, ptr %v, align 8, !dbg !1843
  %65 = load ptr, ptr %ctx, align 8, !dbg !1845
  %raw_akid = getelementptr inbounds %struct.x509_parse_context, ptr %65, i32 0, i32 16, !dbg !1846
  store ptr %64, ptr %raw_akid, align 8, !dbg !1847
  %66 = load i64, ptr %vlen.addr, align 8, !dbg !1848
  %conv93 = trunc i64 %66 to i32, !dbg !1848
  %67 = load ptr, ptr %ctx, align 8, !dbg !1849
  %raw_akid_size = getelementptr inbounds %struct.x509_parse_context, ptr %67, i32 0, i32 15, !dbg !1850
  store i32 %conv93, ptr %raw_akid_size, align 8, !dbg !1851
  store i32 0, ptr %retval, align 4, !dbg !1852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1852

if.end94:                                         ; preds = %if.end88
  %68 = load ptr, ptr %ctx, align 8, !dbg !1853
  %last_oid95 = getelementptr inbounds %struct.x509_parse_context, ptr %68, i32 0, i32 7, !dbg !1855
  %69 = load i32, ptr %last_oid95, align 4, !dbg !1855
  %cmp96 = icmp eq i32 %69, 69, !dbg !1856
  br i1 %cmp96, label %if.then98, label %if.end139, !dbg !1857

if.then98:                                        ; preds = %if.end94
  %70 = load ptr, ptr %v, align 8, !dbg !1858
  %arrayidx99 = getelementptr i8, ptr %70, i64 0, !dbg !1858
  %71 = load i8, ptr %arrayidx99, align 1, !dbg !1858
  %conv100 = zext i8 %71 to i32, !dbg !1858
  %cmp101 = icmp ne i32 %conv100, 48, !dbg !1861
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !1862

if.then103:                                       ; preds = %if.then98
  store i32 -74, ptr %retval, align 4, !dbg !1863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1863

if.end104:                                        ; preds = %if.then98
  %72 = load i64, ptr %vlen.addr, align 8, !dbg !1864
  %cmp105 = icmp ult i64 %72, 2, !dbg !1866
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !1867

if.then107:                                       ; preds = %if.end104
  store i32 -74, ptr %retval, align 4, !dbg !1868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1868

if.end108:                                        ; preds = %if.end104
  %73 = load ptr, ptr %v, align 8, !dbg !1869
  %arrayidx109 = getelementptr i8, ptr %73, i64 1, !dbg !1869
  %74 = load i8, ptr %arrayidx109, align 1, !dbg !1869
  %conv110 = zext i8 %74 to i64, !dbg !1869
  %75 = load i64, ptr %vlen.addr, align 8, !dbg !1871
  %sub111 = sub i64 %75, 2, !dbg !1872
  %cmp112 = icmp ne i64 %conv110, %sub111, !dbg !1873
  br i1 %cmp112, label %if.then114, label %if.end115, !dbg !1874

if.then114:                                       ; preds = %if.end108
  store i32 -74, ptr %retval, align 4, !dbg !1875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1875

if.end115:                                        ; preds = %if.end108
  %76 = load i64, ptr %vlen.addr, align 8, !dbg !1876
  %cmp116 = icmp uge i64 %76, 4, !dbg !1878
  br i1 %cmp116, label %land.lhs.true118, label %if.end138, !dbg !1879

land.lhs.true118:                                 ; preds = %if.end115
  %77 = load ptr, ptr %v, align 8, !dbg !1880
  %arrayidx119 = getelementptr i8, ptr %77, i64 1, !dbg !1880
  %78 = load i8, ptr %arrayidx119, align 1, !dbg !1880
  %conv120 = zext i8 %78 to i32, !dbg !1880
  %cmp121 = icmp ne i32 %conv120, 0, !dbg !1881
  br i1 %cmp121, label %land.lhs.true123, label %if.end138, !dbg !1882

land.lhs.true123:                                 ; preds = %land.lhs.true118
  %79 = load ptr, ptr %v, align 8, !dbg !1883
  %arrayidx124 = getelementptr i8, ptr %79, i64 2, !dbg !1883
  %80 = load i8, ptr %arrayidx124, align 1, !dbg !1883
  %conv125 = zext i8 %80 to i32, !dbg !1883
  %cmp126 = icmp eq i32 %conv125, 1, !dbg !1884
  br i1 %cmp126, label %land.lhs.true128, label %if.end138, !dbg !1885

land.lhs.true128:                                 ; preds = %land.lhs.true123
  %81 = load ptr, ptr %v, align 8, !dbg !1886
  %arrayidx129 = getelementptr i8, ptr %81, i64 3, !dbg !1886
  %82 = load i8, ptr %arrayidx129, align 1, !dbg !1886
  %conv130 = zext i8 %82 to i32, !dbg !1886
  %cmp131 = icmp eq i32 %conv130, 1, !dbg !1887
  br i1 %cmp131, label %if.then133, label %if.end138, !dbg !1888

if.then133:                                       ; preds = %land.lhs.true128
  %83 = load ptr, ptr %ctx, align 8, !dbg !1889
  %cert134 = getelementptr inbounds %struct.x509_parse_context, ptr %83, i32 0, i32 0, !dbg !1890
  %84 = load ptr, ptr %cert134, align 8, !dbg !1890
  %pub135 = getelementptr inbounds %struct.x509_certificate, ptr %84, i32 0, i32 2, !dbg !1891
  %85 = load ptr, ptr %pub135, align 8, !dbg !1891
  %key_eflags136 = getelementptr inbounds %struct.public_key, ptr %85, i32 0, i32 8, !dbg !1892
  %86 = load i64, ptr %key_eflags136, align 8, !dbg !1893
  %or137 = or i64 %86, 1, !dbg !1893
  store i64 %or137, ptr %key_eflags136, align 8, !dbg !1893
  br label %if.end138, !dbg !1889

if.end138:                                        ; preds = %if.then133, %land.lhs.true128, %land.lhs.true123, %land.lhs.true118, %if.end115
  store i32 0, ptr %retval, align 4, !dbg !1894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1894

if.end139:                                        ; preds = %if.end94
  store i32 0, ptr %retval, align 4, !dbg !1895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1895

cleanup:                                          ; preds = %if.end139, %if.end138, %if.then114, %if.then107, %if.then103, %if.then92, %if.end87, %if.then43, %if.then37, %if.then33, %if.end20, %if.then17, %if.then10, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #17, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 8, ptr %kid) #17, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !1896
  %87 = load i32, ptr %retval, align 4, !dbg !1896
  ret i32 %87, !dbg !1896
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_decode_time(ptr noundef %_t, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !249 {
entry:
  %retval = alloca i32, align 4
  %_t.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %year = alloca i32, align 4
  %mon = alloca i32, align 4
  %day = alloca i32, align 4
  %hour = alloca i32, align 4
  %min = alloca i32, align 4
  %sec = alloca i32, align 4
  %mon_len = alloca i32, align 4
  %x = alloca i32, align 4
  %x5 = alloca i8, align 1
  %tmp = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %x14 = alloca i8, align 1
  %tmp24 = alloca i8, align 1
  %tmp29 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i8, align 1
  %tmp59 = alloca i8, align 1
  %x65 = alloca i8, align 1
  %tmp75 = alloca i8, align 1
  %tmp82 = alloca i32, align 4
  %x87 = alloca i32, align 4
  %x88 = alloca i8, align 1
  %tmp98 = alloca i8, align 1
  %x104 = alloca i8, align 1
  %tmp114 = alloca i8, align 1
  %tmp121 = alloca i32, align 4
  %x135 = alloca i32, align 4
  %x136 = alloca i8, align 1
  %tmp146 = alloca i8, align 1
  %x152 = alloca i8, align 1
  %tmp162 = alloca i8, align 1
  %tmp169 = alloca i32, align 4
  %x173 = alloca i32, align 4
  %x174 = alloca i8, align 1
  %tmp184 = alloca i8, align 1
  %x190 = alloca i8, align 1
  %tmp200 = alloca i8, align 1
  %tmp207 = alloca i32, align 4
  %x211 = alloca i32, align 4
  %x212 = alloca i8, align 1
  %tmp222 = alloca i8, align 1
  %x228 = alloca i8, align 1
  %tmp238 = alloca i8, align 1
  %tmp245 = alloca i32, align 4
  %x249 = alloca i32, align 4
  %x250 = alloca i8, align 1
  %tmp260 = alloca i8, align 1
  %x266 = alloca i8, align 1
  %tmp276 = alloca i8, align 1
  %tmp283 = alloca i32, align 4
  %x287 = alloca i32, align 4
  %x288 = alloca i8, align 1
  %tmp298 = alloca i8, align 1
  %x304 = alloca i8, align 1
  %tmp314 = alloca i8, align 1
  %tmp321 = alloca i32, align 4
  %tmp376 = alloca i32, align 4
  %tmp377 = alloca i32, align 4
  store ptr %_t, ptr %_t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_t.addr, metadata !265, metadata !DIExpression()), !dbg !1897
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !266, metadata !DIExpression()), !dbg !1898
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !267, metadata !DIExpression()), !dbg !1899
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !268, metadata !DIExpression()), !dbg !1900
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !269, metadata !DIExpression()), !dbg !1901
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !1902
  call void @llvm.dbg.declare(metadata ptr %p, metadata !270, metadata !DIExpression()), !dbg !1903
  %0 = load ptr, ptr %value.addr, align 8, !dbg !1904
  store ptr %0, ptr %p, align 8, !dbg !1903
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #17, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %year, metadata !271, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.start.p0(i64 4, ptr %mon) #17, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %mon, metadata !272, metadata !DIExpression()), !dbg !1907
  call void @llvm.lifetime.start.p0(i64 4, ptr %day) #17, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %day, metadata !273, metadata !DIExpression()), !dbg !1908
  call void @llvm.lifetime.start.p0(i64 4, ptr %hour) #17, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %hour, metadata !274, metadata !DIExpression()), !dbg !1909
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #17, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %min, metadata !275, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.start.p0(i64 4, ptr %sec) #17, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !276, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0(i64 4, ptr %mon_len) #17, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %mon_len, metadata !277, metadata !DIExpression()), !dbg !1912
  %1 = load i8, ptr %tag.addr, align 1, !dbg !1913
  %conv = zext i8 %1 to i32, !dbg !1913
  %cmp = icmp eq i32 %conv, 23, !dbg !1914
  br i1 %cmp, label %if.then, label %if.else39, !dbg !1915

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !1916
  %cmp2 = icmp ne i64 %2, 13, !dbg !1918
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !1919

if.then4:                                         ; preds = %if.then
  br label %unsupported_time, !dbg !1920

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #17, !dbg !1921
  call void @llvm.dbg.declare(metadata ptr %x, metadata !278, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.start.p0(i64 1, ptr %x5) #17, !dbg !1922
  call void @llvm.dbg.declare(metadata ptr %x5, metadata !282, metadata !DIExpression()), !dbg !1922
  %3 = load ptr, ptr %p, align 8, !dbg !1922
  %arrayidx = getelementptr i8, ptr %3, i64 0, !dbg !1922
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1922
  %conv6 = zext i8 %4 to i32, !dbg !1922
  %sub = sub i32 %conv6, 48, !dbg !1922
  %conv7 = trunc i32 %sub to i8, !dbg !1922
  store i8 %conv7, ptr %x5, align 1, !dbg !1922
  %5 = load i8, ptr %x5, align 1, !dbg !1923
  %conv8 = zext i8 %5 to i32, !dbg !1923
  %cmp9 = icmp sgt i32 %conv8, 9, !dbg !1923
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1922

if.then11:                                        ; preds = %if.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1923

if.end12:                                         ; preds = %if.end
  %6 = load i8, ptr %x5, align 1, !dbg !1922
  store i8 %6, ptr %tmp, align 1, !dbg !1923
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1921
  br label %cleanup, !dbg !1921

cleanup:                                          ; preds = %if.then11, %if.end12
  call void @llvm.lifetime.end.p0(i64 1, ptr %x5) #17, !dbg !1921
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %7 = load i8, ptr %tmp, align 1, !dbg !1922
  %conv13 = zext i8 %7 to i32, !dbg !1921
  %mul = mul i32 %conv13, 10, !dbg !1921
  call void @llvm.lifetime.start.p0(i64 1, ptr %x14) #17, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %x14, metadata !284, metadata !DIExpression()), !dbg !1925
  %8 = load ptr, ptr %p, align 8, !dbg !1925
  %arrayidx15 = getelementptr i8, ptr %8, i64 1, !dbg !1925
  %9 = load i8, ptr %arrayidx15, align 1, !dbg !1925
  %conv16 = zext i8 %9 to i32, !dbg !1925
  %sub17 = sub i32 %conv16, 48, !dbg !1925
  %conv18 = trunc i32 %sub17 to i8, !dbg !1925
  store i8 %conv18, ptr %x14, align 1, !dbg !1925
  %10 = load i8, ptr %x14, align 1, !dbg !1926
  %conv19 = zext i8 %10 to i32, !dbg !1926
  %cmp20 = icmp sgt i32 %conv19, 9, !dbg !1926
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !1925

if.then22:                                        ; preds = %cleanup.cont
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !1926

if.end23:                                         ; preds = %cleanup.cont
  %11 = load i8, ptr %x14, align 1, !dbg !1925
  store i8 %11, ptr %tmp24, align 1, !dbg !1926
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1921
  br label %cleanup25, !dbg !1921

cleanup25:                                        ; preds = %if.then22, %if.end23
  call void @llvm.lifetime.end.p0(i64 1, ptr %x14) #17, !dbg !1921
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %cleanup30 [
    i32 0, label %cleanup.cont27
  ]

cleanup.cont27:                                   ; preds = %cleanup25
  %12 = load i8, ptr %tmp24, align 1, !dbg !1925
  %conv28 = zext i8 %12 to i32, !dbg !1921
  %add = add i32 %mul, %conv28, !dbg !1921
  store i32 %add, ptr %x, align 4, !dbg !1921
  %13 = load ptr, ptr %p, align 8, !dbg !1921
  %add.ptr = getelementptr i8, ptr %13, i64 2, !dbg !1921
  store ptr %add.ptr, ptr %p, align 8, !dbg !1921
  %14 = load i32, ptr %x, align 4, !dbg !1921
  store i32 %14, ptr %tmp29, align 4, !dbg !1921
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1928
  br label %cleanup30, !dbg !1928

cleanup30:                                        ; preds = %cleanup.cont27, %cleanup25, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #17, !dbg !1928
  %cleanup.dest31 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest31, label %cleanup378 [
    i32 0, label %cleanup.cont32
    i32 3, label %invalid_time
  ]

cleanup.cont32:                                   ; preds = %cleanup30
  %15 = load i32, ptr %tmp29, align 4, !dbg !1921
  store i32 %15, ptr %year, align 4, !dbg !1929
  %16 = load i32, ptr %year, align 4, !dbg !1930
  %cmp33 = icmp uge i32 %16, 50, !dbg !1932
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !1933

if.then35:                                        ; preds = %cleanup.cont32
  %17 = load i32, ptr %year, align 4, !dbg !1934
  %add36 = add i32 %17, 1900, !dbg !1934
  store i32 %add36, ptr %year, align 4, !dbg !1934
  br label %if.end38, !dbg !1935

if.else:                                          ; preds = %cleanup.cont32
  %18 = load i32, ptr %year, align 4, !dbg !1936
  %add37 = add i32 %18, 2000, !dbg !1936
  store i32 %add37, ptr %year, align 4, !dbg !1936
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35
  br label %if.end134, !dbg !1937

if.else39:                                        ; preds = %entry
  %19 = load i8, ptr %tag.addr, align 1, !dbg !1938
  %conv40 = zext i8 %19 to i32, !dbg !1938
  %cmp41 = icmp eq i32 %conv40, 24, !dbg !1939
  br i1 %cmp41, label %if.then43, label %if.else132, !dbg !1940

if.then43:                                        ; preds = %if.else39
  %20 = load i64, ptr %vlen.addr, align 8, !dbg !1941
  %cmp44 = icmp ne i64 %20, 15, !dbg !1943
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1944

if.then46:                                        ; preds = %if.then43
  br label %unsupported_time, !dbg !1945

if.end47:                                         ; preds = %if.then43
  call void @llvm.lifetime.start.p0(i64 4, ptr %x48) #17, !dbg !1946
  call void @llvm.dbg.declare(metadata ptr %x48, metadata !286, metadata !DIExpression()), !dbg !1946
  call void @llvm.lifetime.start.p0(i64 1, ptr %x49) #17, !dbg !1947
  call void @llvm.dbg.declare(metadata ptr %x49, metadata !290, metadata !DIExpression()), !dbg !1947
  %21 = load ptr, ptr %p, align 8, !dbg !1947
  %arrayidx50 = getelementptr i8, ptr %21, i64 0, !dbg !1947
  %22 = load i8, ptr %arrayidx50, align 1, !dbg !1947
  %conv51 = zext i8 %22 to i32, !dbg !1947
  %sub52 = sub i32 %conv51, 48, !dbg !1947
  %conv53 = trunc i32 %sub52 to i8, !dbg !1947
  store i8 %conv53, ptr %x49, align 1, !dbg !1947
  %23 = load i8, ptr %x49, align 1, !dbg !1948
  %conv54 = zext i8 %23 to i32, !dbg !1948
  %cmp55 = icmp sgt i32 %conv54, 9, !dbg !1948
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !1947

if.then57:                                        ; preds = %if.end47
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !1948

if.end58:                                         ; preds = %if.end47
  %24 = load i8, ptr %x49, align 1, !dbg !1947
  store i8 %24, ptr %tmp59, align 1, !dbg !1948
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1946
  br label %cleanup60, !dbg !1946

cleanup60:                                        ; preds = %if.then57, %if.end58
  call void @llvm.lifetime.end.p0(i64 1, ptr %x49) #17, !dbg !1946
  %cleanup.dest61 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest61, label %cleanup83 [
    i32 0, label %cleanup.cont62
  ]

cleanup.cont62:                                   ; preds = %cleanup60
  %25 = load i8, ptr %tmp59, align 1, !dbg !1947
  %conv63 = zext i8 %25 to i32, !dbg !1946
  %mul64 = mul i32 %conv63, 10, !dbg !1946
  call void @llvm.lifetime.start.p0(i64 1, ptr %x65) #17, !dbg !1950
  call void @llvm.dbg.declare(metadata ptr %x65, metadata !292, metadata !DIExpression()), !dbg !1950
  %26 = load ptr, ptr %p, align 8, !dbg !1950
  %arrayidx66 = getelementptr i8, ptr %26, i64 1, !dbg !1950
  %27 = load i8, ptr %arrayidx66, align 1, !dbg !1950
  %conv67 = zext i8 %27 to i32, !dbg !1950
  %sub68 = sub i32 %conv67, 48, !dbg !1950
  %conv69 = trunc i32 %sub68 to i8, !dbg !1950
  store i8 %conv69, ptr %x65, align 1, !dbg !1950
  %28 = load i8, ptr %x65, align 1, !dbg !1951
  %conv70 = zext i8 %28 to i32, !dbg !1951
  %cmp71 = icmp sgt i32 %conv70, 9, !dbg !1951
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !1950

if.then73:                                        ; preds = %cleanup.cont62
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !1951

if.end74:                                         ; preds = %cleanup.cont62
  %29 = load i8, ptr %x65, align 1, !dbg !1950
  store i8 %29, ptr %tmp75, align 1, !dbg !1951
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1946
  br label %cleanup76, !dbg !1946

cleanup76:                                        ; preds = %if.then73, %if.end74
  call void @llvm.lifetime.end.p0(i64 1, ptr %x65) #17, !dbg !1946
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %cleanup83 [
    i32 0, label %cleanup.cont78
  ]

cleanup.cont78:                                   ; preds = %cleanup76
  %30 = load i8, ptr %tmp75, align 1, !dbg !1950
  %conv79 = zext i8 %30 to i32, !dbg !1946
  %add80 = add i32 %mul64, %conv79, !dbg !1946
  store i32 %add80, ptr %x48, align 4, !dbg !1946
  %31 = load ptr, ptr %p, align 8, !dbg !1946
  %add.ptr81 = getelementptr i8, ptr %31, i64 2, !dbg !1946
  store ptr %add.ptr81, ptr %p, align 8, !dbg !1946
  %32 = load i32, ptr %x48, align 4, !dbg !1946
  store i32 %32, ptr %tmp82, align 4, !dbg !1946
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1953
  br label %cleanup83, !dbg !1953

cleanup83:                                        ; preds = %cleanup.cont78, %cleanup76, %cleanup60
  call void @llvm.lifetime.end.p0(i64 4, ptr %x48) #17, !dbg !1953
  %cleanup.dest84 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest84, label %cleanup378 [
    i32 0, label %cleanup.cont85
    i32 3, label %invalid_time
  ]

cleanup.cont85:                                   ; preds = %cleanup83
  %33 = load i32, ptr %tmp82, align 4, !dbg !1946
  %mul86 = mul i32 %33, 100, !dbg !1954
  call void @llvm.lifetime.start.p0(i64 4, ptr %x87) #17, !dbg !1955
  call void @llvm.dbg.declare(metadata ptr %x87, metadata !294, metadata !DIExpression()), !dbg !1955
  call void @llvm.lifetime.start.p0(i64 1, ptr %x88) #17, !dbg !1956
  call void @llvm.dbg.declare(metadata ptr %x88, metadata !296, metadata !DIExpression()), !dbg !1956
  %34 = load ptr, ptr %p, align 8, !dbg !1956
  %arrayidx89 = getelementptr i8, ptr %34, i64 0, !dbg !1956
  %35 = load i8, ptr %arrayidx89, align 1, !dbg !1956
  %conv90 = zext i8 %35 to i32, !dbg !1956
  %sub91 = sub i32 %conv90, 48, !dbg !1956
  %conv92 = trunc i32 %sub91 to i8, !dbg !1956
  store i8 %conv92, ptr %x88, align 1, !dbg !1956
  %36 = load i8, ptr %x88, align 1, !dbg !1957
  %conv93 = zext i8 %36 to i32, !dbg !1957
  %cmp94 = icmp sgt i32 %conv93, 9, !dbg !1957
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !1956

if.then96:                                        ; preds = %cleanup.cont85
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !1957

if.end97:                                         ; preds = %cleanup.cont85
  %37 = load i8, ptr %x88, align 1, !dbg !1956
  store i8 %37, ptr %tmp98, align 1, !dbg !1957
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1955
  br label %cleanup99, !dbg !1955

cleanup99:                                        ; preds = %if.then96, %if.end97
  call void @llvm.lifetime.end.p0(i64 1, ptr %x88) #17, !dbg !1955
  %cleanup.dest100 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest100, label %cleanup122 [
    i32 0, label %cleanup.cont101
  ]

cleanup.cont101:                                  ; preds = %cleanup99
  %38 = load i8, ptr %tmp98, align 1, !dbg !1956
  %conv102 = zext i8 %38 to i32, !dbg !1955
  %mul103 = mul i32 %conv102, 10, !dbg !1955
  call void @llvm.lifetime.start.p0(i64 1, ptr %x104) #17, !dbg !1959
  call void @llvm.dbg.declare(metadata ptr %x104, metadata !298, metadata !DIExpression()), !dbg !1959
  %39 = load ptr, ptr %p, align 8, !dbg !1959
  %arrayidx105 = getelementptr i8, ptr %39, i64 1, !dbg !1959
  %40 = load i8, ptr %arrayidx105, align 1, !dbg !1959
  %conv106 = zext i8 %40 to i32, !dbg !1959
  %sub107 = sub i32 %conv106, 48, !dbg !1959
  %conv108 = trunc i32 %sub107 to i8, !dbg !1959
  store i8 %conv108, ptr %x104, align 1, !dbg !1959
  %41 = load i8, ptr %x104, align 1, !dbg !1960
  %conv109 = zext i8 %41 to i32, !dbg !1960
  %cmp110 = icmp sgt i32 %conv109, 9, !dbg !1960
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !1959

if.then112:                                       ; preds = %cleanup.cont101
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup115, !dbg !1960

if.end113:                                        ; preds = %cleanup.cont101
  %42 = load i8, ptr %x104, align 1, !dbg !1959
  store i8 %42, ptr %tmp114, align 1, !dbg !1960
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1955
  br label %cleanup115, !dbg !1955

cleanup115:                                       ; preds = %if.then112, %if.end113
  call void @llvm.lifetime.end.p0(i64 1, ptr %x104) #17, !dbg !1955
  %cleanup.dest116 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest116, label %cleanup122 [
    i32 0, label %cleanup.cont117
  ]

cleanup.cont117:                                  ; preds = %cleanup115
  %43 = load i8, ptr %tmp114, align 1, !dbg !1959
  %conv118 = zext i8 %43 to i32, !dbg !1955
  %add119 = add i32 %mul103, %conv118, !dbg !1955
  store i32 %add119, ptr %x87, align 4, !dbg !1955
  %44 = load ptr, ptr %p, align 8, !dbg !1955
  %add.ptr120 = getelementptr i8, ptr %44, i64 2, !dbg !1955
  store ptr %add.ptr120, ptr %p, align 8, !dbg !1955
  %45 = load i32, ptr %x87, align 4, !dbg !1955
  store i32 %45, ptr %tmp121, align 4, !dbg !1955
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1962
  br label %cleanup122, !dbg !1962

cleanup122:                                       ; preds = %cleanup.cont117, %cleanup115, %cleanup99
  call void @llvm.lifetime.end.p0(i64 4, ptr %x87) #17, !dbg !1962
  %cleanup.dest123 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest123, label %cleanup378 [
    i32 0, label %cleanup.cont124
    i32 3, label %invalid_time
  ]

cleanup.cont124:                                  ; preds = %cleanup122
  %46 = load i32, ptr %tmp121, align 4, !dbg !1955
  %add125 = add i32 %mul86, %46, !dbg !1963
  store i32 %add125, ptr %year, align 4, !dbg !1964
  %47 = load i32, ptr %year, align 4, !dbg !1965
  %cmp126 = icmp uge i32 %47, 1950, !dbg !1967
  br i1 %cmp126, label %land.lhs.true, label %if.end131, !dbg !1968

land.lhs.true:                                    ; preds = %cleanup.cont124
  %48 = load i32, ptr %year, align 4, !dbg !1969
  %cmp128 = icmp ule i32 %48, 2049, !dbg !1970
  br i1 %cmp128, label %if.then130, label %if.end131, !dbg !1971

if.then130:                                       ; preds = %land.lhs.true
  br label %invalid_time, !dbg !1972

if.end131:                                        ; preds = %land.lhs.true, %cleanup.cont124
  br label %if.end133, !dbg !1973

if.else132:                                       ; preds = %if.else39
  br label %unsupported_time, !dbg !1974

if.end133:                                        ; preds = %if.end131
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr %x135) #17, !dbg !1976
  call void @llvm.dbg.declare(metadata ptr %x135, metadata !300, metadata !DIExpression()), !dbg !1976
  call void @llvm.lifetime.start.p0(i64 1, ptr %x136) #17, !dbg !1977
  call void @llvm.dbg.declare(metadata ptr %x136, metadata !302, metadata !DIExpression()), !dbg !1977
  %49 = load ptr, ptr %p, align 8, !dbg !1977
  %arrayidx137 = getelementptr i8, ptr %49, i64 0, !dbg !1977
  %50 = load i8, ptr %arrayidx137, align 1, !dbg !1977
  %conv138 = zext i8 %50 to i32, !dbg !1977
  %sub139 = sub i32 %conv138, 48, !dbg !1977
  %conv140 = trunc i32 %sub139 to i8, !dbg !1977
  store i8 %conv140, ptr %x136, align 1, !dbg !1977
  %51 = load i8, ptr %x136, align 1, !dbg !1978
  %conv141 = zext i8 %51 to i32, !dbg !1978
  %cmp142 = icmp sgt i32 %conv141, 9, !dbg !1978
  br i1 %cmp142, label %if.then144, label %if.end145, !dbg !1977

if.then144:                                       ; preds = %if.end134
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup147, !dbg !1978

if.end145:                                        ; preds = %if.end134
  %52 = load i8, ptr %x136, align 1, !dbg !1977
  store i8 %52, ptr %tmp146, align 1, !dbg !1978
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1976
  br label %cleanup147, !dbg !1976

cleanup147:                                       ; preds = %if.then144, %if.end145
  call void @llvm.lifetime.end.p0(i64 1, ptr %x136) #17, !dbg !1976
  %cleanup.dest148 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest148, label %cleanup170 [
    i32 0, label %cleanup.cont149
  ]

cleanup.cont149:                                  ; preds = %cleanup147
  %53 = load i8, ptr %tmp146, align 1, !dbg !1977
  %conv150 = zext i8 %53 to i32, !dbg !1976
  %mul151 = mul i32 %conv150, 10, !dbg !1976
  call void @llvm.lifetime.start.p0(i64 1, ptr %x152) #17, !dbg !1980
  call void @llvm.dbg.declare(metadata ptr %x152, metadata !304, metadata !DIExpression()), !dbg !1980
  %54 = load ptr, ptr %p, align 8, !dbg !1980
  %arrayidx153 = getelementptr i8, ptr %54, i64 1, !dbg !1980
  %55 = load i8, ptr %arrayidx153, align 1, !dbg !1980
  %conv154 = zext i8 %55 to i32, !dbg !1980
  %sub155 = sub i32 %conv154, 48, !dbg !1980
  %conv156 = trunc i32 %sub155 to i8, !dbg !1980
  store i8 %conv156, ptr %x152, align 1, !dbg !1980
  %56 = load i8, ptr %x152, align 1, !dbg !1981
  %conv157 = zext i8 %56 to i32, !dbg !1981
  %cmp158 = icmp sgt i32 %conv157, 9, !dbg !1981
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !1980

if.then160:                                       ; preds = %cleanup.cont149
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup163, !dbg !1981

if.end161:                                        ; preds = %cleanup.cont149
  %57 = load i8, ptr %x152, align 1, !dbg !1980
  store i8 %57, ptr %tmp162, align 1, !dbg !1981
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1976
  br label %cleanup163, !dbg !1976

cleanup163:                                       ; preds = %if.then160, %if.end161
  call void @llvm.lifetime.end.p0(i64 1, ptr %x152) #17, !dbg !1976
  %cleanup.dest164 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest164, label %cleanup170 [
    i32 0, label %cleanup.cont165
  ]

cleanup.cont165:                                  ; preds = %cleanup163
  %58 = load i8, ptr %tmp162, align 1, !dbg !1980
  %conv166 = zext i8 %58 to i32, !dbg !1976
  %add167 = add i32 %mul151, %conv166, !dbg !1976
  store i32 %add167, ptr %x135, align 4, !dbg !1976
  %59 = load ptr, ptr %p, align 8, !dbg !1976
  %add.ptr168 = getelementptr i8, ptr %59, i64 2, !dbg !1976
  store ptr %add.ptr168, ptr %p, align 8, !dbg !1976
  %60 = load i32, ptr %x135, align 4, !dbg !1976
  store i32 %60, ptr %tmp169, align 4, !dbg !1976
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1983
  br label %cleanup170, !dbg !1983

cleanup170:                                       ; preds = %cleanup.cont165, %cleanup163, %cleanup147
  call void @llvm.lifetime.end.p0(i64 4, ptr %x135) #17, !dbg !1983
  %cleanup.dest171 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest171, label %cleanup378 [
    i32 0, label %cleanup.cont172
    i32 3, label %invalid_time
  ]

cleanup.cont172:                                  ; preds = %cleanup170
  %61 = load i32, ptr %tmp169, align 4, !dbg !1976
  store i32 %61, ptr %mon, align 4, !dbg !1984
  call void @llvm.lifetime.start.p0(i64 4, ptr %x173) #17, !dbg !1985
  call void @llvm.dbg.declare(metadata ptr %x173, metadata !306, metadata !DIExpression()), !dbg !1985
  call void @llvm.lifetime.start.p0(i64 1, ptr %x174) #17, !dbg !1986
  call void @llvm.dbg.declare(metadata ptr %x174, metadata !308, metadata !DIExpression()), !dbg !1986
  %62 = load ptr, ptr %p, align 8, !dbg !1986
  %arrayidx175 = getelementptr i8, ptr %62, i64 0, !dbg !1986
  %63 = load i8, ptr %arrayidx175, align 1, !dbg !1986
  %conv176 = zext i8 %63 to i32, !dbg !1986
  %sub177 = sub i32 %conv176, 48, !dbg !1986
  %conv178 = trunc i32 %sub177 to i8, !dbg !1986
  store i8 %conv178, ptr %x174, align 1, !dbg !1986
  %64 = load i8, ptr %x174, align 1, !dbg !1987
  %conv179 = zext i8 %64 to i32, !dbg !1987
  %cmp180 = icmp sgt i32 %conv179, 9, !dbg !1987
  br i1 %cmp180, label %if.then182, label %if.end183, !dbg !1986

if.then182:                                       ; preds = %cleanup.cont172
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup185, !dbg !1987

if.end183:                                        ; preds = %cleanup.cont172
  %65 = load i8, ptr %x174, align 1, !dbg !1986
  store i8 %65, ptr %tmp184, align 1, !dbg !1987
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1985
  br label %cleanup185, !dbg !1985

cleanup185:                                       ; preds = %if.then182, %if.end183
  call void @llvm.lifetime.end.p0(i64 1, ptr %x174) #17, !dbg !1985
  %cleanup.dest186 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest186, label %cleanup208 [
    i32 0, label %cleanup.cont187
  ]

cleanup.cont187:                                  ; preds = %cleanup185
  %66 = load i8, ptr %tmp184, align 1, !dbg !1986
  %conv188 = zext i8 %66 to i32, !dbg !1985
  %mul189 = mul i32 %conv188, 10, !dbg !1985
  call void @llvm.lifetime.start.p0(i64 1, ptr %x190) #17, !dbg !1989
  call void @llvm.dbg.declare(metadata ptr %x190, metadata !310, metadata !DIExpression()), !dbg !1989
  %67 = load ptr, ptr %p, align 8, !dbg !1989
  %arrayidx191 = getelementptr i8, ptr %67, i64 1, !dbg !1989
  %68 = load i8, ptr %arrayidx191, align 1, !dbg !1989
  %conv192 = zext i8 %68 to i32, !dbg !1989
  %sub193 = sub i32 %conv192, 48, !dbg !1989
  %conv194 = trunc i32 %sub193 to i8, !dbg !1989
  store i8 %conv194, ptr %x190, align 1, !dbg !1989
  %69 = load i8, ptr %x190, align 1, !dbg !1990
  %conv195 = zext i8 %69 to i32, !dbg !1990
  %cmp196 = icmp sgt i32 %conv195, 9, !dbg !1990
  br i1 %cmp196, label %if.then198, label %if.end199, !dbg !1989

if.then198:                                       ; preds = %cleanup.cont187
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup201, !dbg !1990

if.end199:                                        ; preds = %cleanup.cont187
  %70 = load i8, ptr %x190, align 1, !dbg !1989
  store i8 %70, ptr %tmp200, align 1, !dbg !1990
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1985
  br label %cleanup201, !dbg !1985

cleanup201:                                       ; preds = %if.then198, %if.end199
  call void @llvm.lifetime.end.p0(i64 1, ptr %x190) #17, !dbg !1985
  %cleanup.dest202 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest202, label %cleanup208 [
    i32 0, label %cleanup.cont203
  ]

cleanup.cont203:                                  ; preds = %cleanup201
  %71 = load i8, ptr %tmp200, align 1, !dbg !1989
  %conv204 = zext i8 %71 to i32, !dbg !1985
  %add205 = add i32 %mul189, %conv204, !dbg !1985
  store i32 %add205, ptr %x173, align 4, !dbg !1985
  %72 = load ptr, ptr %p, align 8, !dbg !1985
  %add.ptr206 = getelementptr i8, ptr %72, i64 2, !dbg !1985
  store ptr %add.ptr206, ptr %p, align 8, !dbg !1985
  %73 = load i32, ptr %x173, align 4, !dbg !1985
  store i32 %73, ptr %tmp207, align 4, !dbg !1985
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1992
  br label %cleanup208, !dbg !1992

cleanup208:                                       ; preds = %cleanup.cont203, %cleanup201, %cleanup185
  call void @llvm.lifetime.end.p0(i64 4, ptr %x173) #17, !dbg !1992
  %cleanup.dest209 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest209, label %cleanup378 [
    i32 0, label %cleanup.cont210
    i32 3, label %invalid_time
  ]

cleanup.cont210:                                  ; preds = %cleanup208
  %74 = load i32, ptr %tmp207, align 4, !dbg !1985
  store i32 %74, ptr %day, align 4, !dbg !1993
  call void @llvm.lifetime.start.p0(i64 4, ptr %x211) #17, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %x211, metadata !312, metadata !DIExpression()), !dbg !1994
  call void @llvm.lifetime.start.p0(i64 1, ptr %x212) #17, !dbg !1995
  call void @llvm.dbg.declare(metadata ptr %x212, metadata !314, metadata !DIExpression()), !dbg !1995
  %75 = load ptr, ptr %p, align 8, !dbg !1995
  %arrayidx213 = getelementptr i8, ptr %75, i64 0, !dbg !1995
  %76 = load i8, ptr %arrayidx213, align 1, !dbg !1995
  %conv214 = zext i8 %76 to i32, !dbg !1995
  %sub215 = sub i32 %conv214, 48, !dbg !1995
  %conv216 = trunc i32 %sub215 to i8, !dbg !1995
  store i8 %conv216, ptr %x212, align 1, !dbg !1995
  %77 = load i8, ptr %x212, align 1, !dbg !1996
  %conv217 = zext i8 %77 to i32, !dbg !1996
  %cmp218 = icmp sgt i32 %conv217, 9, !dbg !1996
  br i1 %cmp218, label %if.then220, label %if.end221, !dbg !1995

if.then220:                                       ; preds = %cleanup.cont210
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup223, !dbg !1996

if.end221:                                        ; preds = %cleanup.cont210
  %78 = load i8, ptr %x212, align 1, !dbg !1995
  store i8 %78, ptr %tmp222, align 1, !dbg !1996
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1994
  br label %cleanup223, !dbg !1994

cleanup223:                                       ; preds = %if.then220, %if.end221
  call void @llvm.lifetime.end.p0(i64 1, ptr %x212) #17, !dbg !1994
  %cleanup.dest224 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest224, label %cleanup246 [
    i32 0, label %cleanup.cont225
  ]

cleanup.cont225:                                  ; preds = %cleanup223
  %79 = load i8, ptr %tmp222, align 1, !dbg !1995
  %conv226 = zext i8 %79 to i32, !dbg !1994
  %mul227 = mul i32 %conv226, 10, !dbg !1994
  call void @llvm.lifetime.start.p0(i64 1, ptr %x228) #17, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %x228, metadata !316, metadata !DIExpression()), !dbg !1998
  %80 = load ptr, ptr %p, align 8, !dbg !1998
  %arrayidx229 = getelementptr i8, ptr %80, i64 1, !dbg !1998
  %81 = load i8, ptr %arrayidx229, align 1, !dbg !1998
  %conv230 = zext i8 %81 to i32, !dbg !1998
  %sub231 = sub i32 %conv230, 48, !dbg !1998
  %conv232 = trunc i32 %sub231 to i8, !dbg !1998
  store i8 %conv232, ptr %x228, align 1, !dbg !1998
  %82 = load i8, ptr %x228, align 1, !dbg !1999
  %conv233 = zext i8 %82 to i32, !dbg !1999
  %cmp234 = icmp sgt i32 %conv233, 9, !dbg !1999
  br i1 %cmp234, label %if.then236, label %if.end237, !dbg !1998

if.then236:                                       ; preds = %cleanup.cont225
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup239, !dbg !1999

if.end237:                                        ; preds = %cleanup.cont225
  %83 = load i8, ptr %x228, align 1, !dbg !1998
  store i8 %83, ptr %tmp238, align 1, !dbg !1999
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1994
  br label %cleanup239, !dbg !1994

cleanup239:                                       ; preds = %if.then236, %if.end237
  call void @llvm.lifetime.end.p0(i64 1, ptr %x228) #17, !dbg !1994
  %cleanup.dest240 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest240, label %cleanup246 [
    i32 0, label %cleanup.cont241
  ]

cleanup.cont241:                                  ; preds = %cleanup239
  %84 = load i8, ptr %tmp238, align 1, !dbg !1998
  %conv242 = zext i8 %84 to i32, !dbg !1994
  %add243 = add i32 %mul227, %conv242, !dbg !1994
  store i32 %add243, ptr %x211, align 4, !dbg !1994
  %85 = load ptr, ptr %p, align 8, !dbg !1994
  %add.ptr244 = getelementptr i8, ptr %85, i64 2, !dbg !1994
  store ptr %add.ptr244, ptr %p, align 8, !dbg !1994
  %86 = load i32, ptr %x211, align 4, !dbg !1994
  store i32 %86, ptr %tmp245, align 4, !dbg !1994
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2001
  br label %cleanup246, !dbg !2001

cleanup246:                                       ; preds = %cleanup.cont241, %cleanup239, %cleanup223
  call void @llvm.lifetime.end.p0(i64 4, ptr %x211) #17, !dbg !2001
  %cleanup.dest247 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest247, label %cleanup378 [
    i32 0, label %cleanup.cont248
    i32 3, label %invalid_time
  ]

cleanup.cont248:                                  ; preds = %cleanup246
  %87 = load i32, ptr %tmp245, align 4, !dbg !1994
  store i32 %87, ptr %hour, align 4, !dbg !2002
  call void @llvm.lifetime.start.p0(i64 4, ptr %x249) #17, !dbg !2003
  call void @llvm.dbg.declare(metadata ptr %x249, metadata !318, metadata !DIExpression()), !dbg !2003
  call void @llvm.lifetime.start.p0(i64 1, ptr %x250) #17, !dbg !2004
  call void @llvm.dbg.declare(metadata ptr %x250, metadata !320, metadata !DIExpression()), !dbg !2004
  %88 = load ptr, ptr %p, align 8, !dbg !2004
  %arrayidx251 = getelementptr i8, ptr %88, i64 0, !dbg !2004
  %89 = load i8, ptr %arrayidx251, align 1, !dbg !2004
  %conv252 = zext i8 %89 to i32, !dbg !2004
  %sub253 = sub i32 %conv252, 48, !dbg !2004
  %conv254 = trunc i32 %sub253 to i8, !dbg !2004
  store i8 %conv254, ptr %x250, align 1, !dbg !2004
  %90 = load i8, ptr %x250, align 1, !dbg !2005
  %conv255 = zext i8 %90 to i32, !dbg !2005
  %cmp256 = icmp sgt i32 %conv255, 9, !dbg !2005
  br i1 %cmp256, label %if.then258, label %if.end259, !dbg !2004

if.then258:                                       ; preds = %cleanup.cont248
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup261, !dbg !2005

if.end259:                                        ; preds = %cleanup.cont248
  %91 = load i8, ptr %x250, align 1, !dbg !2004
  store i8 %91, ptr %tmp260, align 1, !dbg !2005
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2003
  br label %cleanup261, !dbg !2003

cleanup261:                                       ; preds = %if.then258, %if.end259
  call void @llvm.lifetime.end.p0(i64 1, ptr %x250) #17, !dbg !2003
  %cleanup.dest262 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest262, label %cleanup284 [
    i32 0, label %cleanup.cont263
  ]

cleanup.cont263:                                  ; preds = %cleanup261
  %92 = load i8, ptr %tmp260, align 1, !dbg !2004
  %conv264 = zext i8 %92 to i32, !dbg !2003
  %mul265 = mul i32 %conv264, 10, !dbg !2003
  call void @llvm.lifetime.start.p0(i64 1, ptr %x266) #17, !dbg !2007
  call void @llvm.dbg.declare(metadata ptr %x266, metadata !322, metadata !DIExpression()), !dbg !2007
  %93 = load ptr, ptr %p, align 8, !dbg !2007
  %arrayidx267 = getelementptr i8, ptr %93, i64 1, !dbg !2007
  %94 = load i8, ptr %arrayidx267, align 1, !dbg !2007
  %conv268 = zext i8 %94 to i32, !dbg !2007
  %sub269 = sub i32 %conv268, 48, !dbg !2007
  %conv270 = trunc i32 %sub269 to i8, !dbg !2007
  store i8 %conv270, ptr %x266, align 1, !dbg !2007
  %95 = load i8, ptr %x266, align 1, !dbg !2008
  %conv271 = zext i8 %95 to i32, !dbg !2008
  %cmp272 = icmp sgt i32 %conv271, 9, !dbg !2008
  br i1 %cmp272, label %if.then274, label %if.end275, !dbg !2007

if.then274:                                       ; preds = %cleanup.cont263
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup277, !dbg !2008

if.end275:                                        ; preds = %cleanup.cont263
  %96 = load i8, ptr %x266, align 1, !dbg !2007
  store i8 %96, ptr %tmp276, align 1, !dbg !2008
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2003
  br label %cleanup277, !dbg !2003

cleanup277:                                       ; preds = %if.then274, %if.end275
  call void @llvm.lifetime.end.p0(i64 1, ptr %x266) #17, !dbg !2003
  %cleanup.dest278 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest278, label %cleanup284 [
    i32 0, label %cleanup.cont279
  ]

cleanup.cont279:                                  ; preds = %cleanup277
  %97 = load i8, ptr %tmp276, align 1, !dbg !2007
  %conv280 = zext i8 %97 to i32, !dbg !2003
  %add281 = add i32 %mul265, %conv280, !dbg !2003
  store i32 %add281, ptr %x249, align 4, !dbg !2003
  %98 = load ptr, ptr %p, align 8, !dbg !2003
  %add.ptr282 = getelementptr i8, ptr %98, i64 2, !dbg !2003
  store ptr %add.ptr282, ptr %p, align 8, !dbg !2003
  %99 = load i32, ptr %x249, align 4, !dbg !2003
  store i32 %99, ptr %tmp283, align 4, !dbg !2003
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2010
  br label %cleanup284, !dbg !2010

cleanup284:                                       ; preds = %cleanup.cont279, %cleanup277, %cleanup261
  call void @llvm.lifetime.end.p0(i64 4, ptr %x249) #17, !dbg !2010
  %cleanup.dest285 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest285, label %cleanup378 [
    i32 0, label %cleanup.cont286
    i32 3, label %invalid_time
  ]

cleanup.cont286:                                  ; preds = %cleanup284
  %100 = load i32, ptr %tmp283, align 4, !dbg !2003
  store i32 %100, ptr %min, align 4, !dbg !2011
  call void @llvm.lifetime.start.p0(i64 4, ptr %x287) #17, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %x287, metadata !324, metadata !DIExpression()), !dbg !2012
  call void @llvm.lifetime.start.p0(i64 1, ptr %x288) #17, !dbg !2013
  call void @llvm.dbg.declare(metadata ptr %x288, metadata !326, metadata !DIExpression()), !dbg !2013
  %101 = load ptr, ptr %p, align 8, !dbg !2013
  %arrayidx289 = getelementptr i8, ptr %101, i64 0, !dbg !2013
  %102 = load i8, ptr %arrayidx289, align 1, !dbg !2013
  %conv290 = zext i8 %102 to i32, !dbg !2013
  %sub291 = sub i32 %conv290, 48, !dbg !2013
  %conv292 = trunc i32 %sub291 to i8, !dbg !2013
  store i8 %conv292, ptr %x288, align 1, !dbg !2013
  %103 = load i8, ptr %x288, align 1, !dbg !2014
  %conv293 = zext i8 %103 to i32, !dbg !2014
  %cmp294 = icmp sgt i32 %conv293, 9, !dbg !2014
  br i1 %cmp294, label %if.then296, label %if.end297, !dbg !2013

if.then296:                                       ; preds = %cleanup.cont286
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup299, !dbg !2014

if.end297:                                        ; preds = %cleanup.cont286
  %104 = load i8, ptr %x288, align 1, !dbg !2013
  store i8 %104, ptr %tmp298, align 1, !dbg !2014
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2012
  br label %cleanup299, !dbg !2012

cleanup299:                                       ; preds = %if.then296, %if.end297
  call void @llvm.lifetime.end.p0(i64 1, ptr %x288) #17, !dbg !2012
  %cleanup.dest300 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest300, label %cleanup322 [
    i32 0, label %cleanup.cont301
  ]

cleanup.cont301:                                  ; preds = %cleanup299
  %105 = load i8, ptr %tmp298, align 1, !dbg !2013
  %conv302 = zext i8 %105 to i32, !dbg !2012
  %mul303 = mul i32 %conv302, 10, !dbg !2012
  call void @llvm.lifetime.start.p0(i64 1, ptr %x304) #17, !dbg !2016
  call void @llvm.dbg.declare(metadata ptr %x304, metadata !328, metadata !DIExpression()), !dbg !2016
  %106 = load ptr, ptr %p, align 8, !dbg !2016
  %arrayidx305 = getelementptr i8, ptr %106, i64 1, !dbg !2016
  %107 = load i8, ptr %arrayidx305, align 1, !dbg !2016
  %conv306 = zext i8 %107 to i32, !dbg !2016
  %sub307 = sub i32 %conv306, 48, !dbg !2016
  %conv308 = trunc i32 %sub307 to i8, !dbg !2016
  store i8 %conv308, ptr %x304, align 1, !dbg !2016
  %108 = load i8, ptr %x304, align 1, !dbg !2017
  %conv309 = zext i8 %108 to i32, !dbg !2017
  %cmp310 = icmp sgt i32 %conv309, 9, !dbg !2017
  br i1 %cmp310, label %if.then312, label %if.end313, !dbg !2016

if.then312:                                       ; preds = %cleanup.cont301
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup315, !dbg !2017

if.end313:                                        ; preds = %cleanup.cont301
  %109 = load i8, ptr %x304, align 1, !dbg !2016
  store i8 %109, ptr %tmp314, align 1, !dbg !2017
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2012
  br label %cleanup315, !dbg !2012

cleanup315:                                       ; preds = %if.then312, %if.end313
  call void @llvm.lifetime.end.p0(i64 1, ptr %x304) #17, !dbg !2012
  %cleanup.dest316 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest316, label %cleanup322 [
    i32 0, label %cleanup.cont317
  ]

cleanup.cont317:                                  ; preds = %cleanup315
  %110 = load i8, ptr %tmp314, align 1, !dbg !2016
  %conv318 = zext i8 %110 to i32, !dbg !2012
  %add319 = add i32 %mul303, %conv318, !dbg !2012
  store i32 %add319, ptr %x287, align 4, !dbg !2012
  %111 = load ptr, ptr %p, align 8, !dbg !2012
  %add.ptr320 = getelementptr i8, ptr %111, i64 2, !dbg !2012
  store ptr %add.ptr320, ptr %p, align 8, !dbg !2012
  %112 = load i32, ptr %x287, align 4, !dbg !2012
  store i32 %112, ptr %tmp321, align 4, !dbg !2012
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2019
  br label %cleanup322, !dbg !2019

cleanup322:                                       ; preds = %cleanup.cont317, %cleanup315, %cleanup299
  call void @llvm.lifetime.end.p0(i64 4, ptr %x287) #17, !dbg !2019
  %cleanup.dest323 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest323, label %cleanup378 [
    i32 0, label %cleanup.cont324
    i32 3, label %invalid_time
  ]

cleanup.cont324:                                  ; preds = %cleanup322
  %113 = load i32, ptr %tmp321, align 4, !dbg !2012
  store i32 %113, ptr %sec, align 4, !dbg !2020
  %114 = load ptr, ptr %p, align 8, !dbg !2021
  %115 = load i8, ptr %114, align 1, !dbg !2023
  %conv325 = zext i8 %115 to i32, !dbg !2023
  %cmp326 = icmp ne i32 %conv325, 90, !dbg !2024
  br i1 %cmp326, label %if.then328, label %if.end329, !dbg !2025

if.then328:                                       ; preds = %cleanup.cont324
  br label %unsupported_time, !dbg !2026

if.end329:                                        ; preds = %cleanup.cont324
  %116 = load i32, ptr %year, align 4, !dbg !2027
  %cmp330 = icmp ult i32 %116, 1970, !dbg !2029
  br i1 %cmp330, label %if.then337, label %lor.lhs.false, !dbg !2030

lor.lhs.false:                                    ; preds = %if.end329
  %117 = load i32, ptr %mon, align 4, !dbg !2031
  %cmp332 = icmp ult i32 %117, 1, !dbg !2032
  br i1 %cmp332, label %if.then337, label %lor.lhs.false334, !dbg !2033

lor.lhs.false334:                                 ; preds = %lor.lhs.false
  %118 = load i32, ptr %mon, align 4, !dbg !2034
  %cmp335 = icmp ugt i32 %118, 12, !dbg !2035
  br i1 %cmp335, label %if.then337, label %if.end338, !dbg !2036

if.then337:                                       ; preds = %lor.lhs.false334, %lor.lhs.false, %if.end329
  br label %invalid_time, !dbg !2037

if.end338:                                        ; preds = %lor.lhs.false334
  %119 = load i32, ptr %mon, align 4, !dbg !2038
  %sub339 = sub i32 %119, 1, !dbg !2039
  %idxprom = zext i32 %sub339 to i64, !dbg !2040
  %arrayidx340 = getelementptr [12 x i8], ptr @x509_decode_time.month_lengths, i64 0, i64 %idxprom, !dbg !2040
  %120 = load i8, ptr %arrayidx340, align 1, !dbg !2040
  %conv341 = zext i8 %120 to i32, !dbg !2040
  store i32 %conv341, ptr %mon_len, align 4, !dbg !2041
  %121 = load i32, ptr %mon, align 4, !dbg !2042
  %cmp342 = icmp eq i32 %121, 2, !dbg !2044
  br i1 %cmp342, label %if.then344, label %if.end359, !dbg !2045

if.then344:                                       ; preds = %if.end338
  %122 = load i32, ptr %year, align 4, !dbg !2046
  %rem = urem i32 %122, 4, !dbg !2049
  %cmp345 = icmp eq i32 %rem, 0, !dbg !2050
  br i1 %cmp345, label %if.then347, label %if.end358, !dbg !2051

if.then347:                                       ; preds = %if.then344
  store i32 29, ptr %mon_len, align 4, !dbg !2052
  %123 = load i32, ptr %year, align 4, !dbg !2054
  %rem348 = urem i32 %123, 100, !dbg !2056
  %cmp349 = icmp eq i32 %rem348, 0, !dbg !2057
  br i1 %cmp349, label %if.then351, label %if.end357, !dbg !2058

if.then351:                                       ; preds = %if.then347
  store i32 28, ptr %mon_len, align 4, !dbg !2059
  %124 = load i32, ptr %year, align 4, !dbg !2061
  %rem352 = urem i32 %124, 400, !dbg !2063
  %cmp353 = icmp eq i32 %rem352, 0, !dbg !2064
  br i1 %cmp353, label %if.then355, label %if.end356, !dbg !2065

if.then355:                                       ; preds = %if.then351
  store i32 29, ptr %mon_len, align 4, !dbg !2066
  br label %if.end356, !dbg !2067

if.end356:                                        ; preds = %if.then355, %if.then351
  br label %if.end357, !dbg !2068

if.end357:                                        ; preds = %if.end356, %if.then347
  br label %if.end358, !dbg !2069

if.end358:                                        ; preds = %if.end357, %if.then344
  br label %if.end359, !dbg !2070

if.end359:                                        ; preds = %if.end358, %if.end338
  %125 = load i32, ptr %day, align 4, !dbg !2071
  %cmp360 = icmp ult i32 %125, 1, !dbg !2073
  br i1 %cmp360, label %if.then374, label %lor.lhs.false362, !dbg !2074

lor.lhs.false362:                                 ; preds = %if.end359
  %126 = load i32, ptr %day, align 4, !dbg !2075
  %127 = load i32, ptr %mon_len, align 4, !dbg !2076
  %cmp363 = icmp ugt i32 %126, %127, !dbg !2077
  br i1 %cmp363, label %if.then374, label %lor.lhs.false365, !dbg !2078

lor.lhs.false365:                                 ; preds = %lor.lhs.false362
  %128 = load i32, ptr %hour, align 4, !dbg !2079
  %cmp366 = icmp ugt i32 %128, 24, !dbg !2080
  br i1 %cmp366, label %if.then374, label %lor.lhs.false368, !dbg !2081

lor.lhs.false368:                                 ; preds = %lor.lhs.false365
  %129 = load i32, ptr %min, align 4, !dbg !2082
  %cmp369 = icmp ugt i32 %129, 59, !dbg !2083
  br i1 %cmp369, label %if.then374, label %lor.lhs.false371, !dbg !2084

lor.lhs.false371:                                 ; preds = %lor.lhs.false368
  %130 = load i32, ptr %sec, align 4, !dbg !2085
  %cmp372 = icmp ugt i32 %130, 60, !dbg !2086
  br i1 %cmp372, label %if.then374, label %if.end375, !dbg !2087

if.then374:                                       ; preds = %lor.lhs.false371, %lor.lhs.false368, %lor.lhs.false365, %lor.lhs.false362, %if.end359
  br label %invalid_time, !dbg !2088

if.end375:                                        ; preds = %lor.lhs.false371
  %131 = load i32, ptr %year, align 4, !dbg !2089
  %132 = load i32, ptr %mon, align 4, !dbg !2090
  %133 = load i32, ptr %day, align 4, !dbg !2091
  %134 = load i32, ptr %hour, align 4, !dbg !2092
  %135 = load i32, ptr %min, align 4, !dbg !2093
  %136 = load i32, ptr %sec, align 4, !dbg !2094
  %call = call i64 @mktime64(i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135, i32 noundef %136) #16, !dbg !2095
  %137 = load ptr, ptr %_t.addr, align 8, !dbg !2096
  store i64 %call, ptr %137, align 8, !dbg !2097
  store i32 0, ptr %retval, align 4, !dbg !2098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup378, !dbg !2098

unsupported_time:                                 ; preds = %if.then328, %if.else132, %if.then46, %if.then4
  call void @llvm.dbg.label(metadata !330), !dbg !2099
  store i32 0, ptr %tmp376, align 4, !dbg !2100
  %138 = load i32, ptr %tmp376, align 4, !dbg !2103
  store i32 -74, ptr %retval, align 4, !dbg !2104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup378, !dbg !2104

invalid_time:                                     ; preds = %cleanup322, %cleanup284, %cleanup246, %cleanup208, %cleanup170, %cleanup122, %cleanup83, %cleanup30, %if.then374, %if.then337, %if.then130
  call void @llvm.dbg.label(metadata !331), !dbg !2105
  store i32 0, ptr %tmp377, align 4, !dbg !2106
  %139 = load i32, ptr %tmp377, align 4, !dbg !2109
  store i32 -74, ptr %retval, align 4, !dbg !2110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup378, !dbg !2110

cleanup378:                                       ; preds = %invalid_time, %unsupported_time, %if.end375, %cleanup322, %cleanup284, %cleanup246, %cleanup208, %cleanup170, %cleanup122, %cleanup83, %cleanup30
  call void @llvm.lifetime.end.p0(i64 4, ptr %mon_len) #17, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 4, ptr %sec) #17, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #17, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 4, ptr %hour) #17, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 4, ptr %day) #17, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 4, ptr %mon) #17, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #17, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !2111
  %140 = load i32, ptr %retval, align 4, !dbg !2111
  ret i32 %140, !dbg !2111
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2112 dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_not_before(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !2117 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2119, metadata !DIExpression()), !dbg !2125
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !2120, metadata !DIExpression()), !dbg !2126
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2121, metadata !DIExpression()), !dbg !2127
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2122, metadata !DIExpression()), !dbg !2128
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !2123, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !2130
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2124, metadata !DIExpression()), !dbg !2131
  %0 = load ptr, ptr %context.addr, align 8, !dbg !2132
  store ptr %0, ptr %ctx, align 8, !dbg !2131
  %1 = load ptr, ptr %ctx, align 8, !dbg !2133
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %1, i32 0, i32 0, !dbg !2134
  %2 = load ptr, ptr %cert, align 8, !dbg !2134
  %valid_from = getelementptr inbounds %struct.x509_certificate, ptr %2, i32 0, i32 8, !dbg !2135
  %3 = load i64, ptr %hdrlen.addr, align 8, !dbg !2136
  %4 = load i8, ptr %tag.addr, align 1, !dbg !2137
  %5 = load ptr, ptr %value.addr, align 8, !dbg !2138
  %6 = load i64, ptr %vlen.addr, align 8, !dbg !2139
  %call = call i32 @x509_decode_time(ptr noundef %valid_from, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5, i64 noundef %6) #16, !dbg !2140
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !2141
  ret i32 %call, !dbg !2142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_note_not_after(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !2143 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2145, metadata !DIExpression()), !dbg !2151
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !2146, metadata !DIExpression()), !dbg !2152
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2147, metadata !DIExpression()), !dbg !2153
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2148, metadata !DIExpression()), !dbg !2154
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !2149, metadata !DIExpression()), !dbg !2155
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !2156
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2150, metadata !DIExpression()), !dbg !2157
  %0 = load ptr, ptr %context.addr, align 8, !dbg !2158
  store ptr %0, ptr %ctx, align 8, !dbg !2157
  %1 = load ptr, ptr %ctx, align 8, !dbg !2159
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %1, i32 0, i32 0, !dbg !2160
  %2 = load ptr, ptr %cert, align 8, !dbg !2160
  %valid_to = getelementptr inbounds %struct.x509_certificate, ptr %2, i32 0, i32 9, !dbg !2161
  %3 = load i64, ptr %hdrlen.addr, align 8, !dbg !2162
  %4 = load i8, ptr %tag.addr, align 1, !dbg !2163
  %5 = load ptr, ptr %value.addr, align 8, !dbg !2164
  %6 = load i64, ptr %vlen.addr, align 8, !dbg !2165
  %call = call i32 @x509_decode_time(ptr noundef %valid_to, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5, i64 noundef %6) #16, !dbg !2166
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !2167
  ret i32 %call, !dbg !2168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_akid_note_kid(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !2169 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %kid = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2171, metadata !DIExpression()), !dbg !2178
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !2172, metadata !DIExpression()), !dbg !2179
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2173, metadata !DIExpression()), !dbg !2180
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2174, metadata !DIExpression()), !dbg !2181
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !2175, metadata !DIExpression()), !dbg !2182
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !2183
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2176, metadata !DIExpression()), !dbg !2184
  %0 = load ptr, ptr %context.addr, align 8, !dbg !2185
  store ptr %0, ptr %ctx, align 8, !dbg !2184
  call void @llvm.lifetime.start.p0(i64 8, ptr %kid) #17, !dbg !2186
  call void @llvm.dbg.declare(metadata ptr %kid, metadata !2177, metadata !DIExpression()), !dbg !2187
  store i32 0, ptr %tmp, align 4, !dbg !2188
  %1 = load i32, ptr %tmp, align 4, !dbg !2191
  %2 = load ptr, ptr %ctx, align 8, !dbg !2192
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %2, i32 0, i32 0, !dbg !2194
  %3 = load ptr, ptr %cert, align 8, !dbg !2194
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 3, !dbg !2195
  %4 = load ptr, ptr %sig, align 8, !dbg !2195
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 0, !dbg !2196
  %arrayidx = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 1, !dbg !2192
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !2192
  %tobool = icmp ne ptr %5, null, !dbg !2192
  br i1 %tobool, label %if.then, label %if.end, !dbg !2197

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2198

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %value.addr, align 8, !dbg !2199
  %7 = load i64, ptr %vlen.addr, align 8, !dbg !2200
  %call = call ptr @asymmetric_key_generate_id(ptr noundef %6, i64 noundef %7, ptr noundef @.str.18, i64 noundef 0) #16, !dbg !2201
  store ptr %call, ptr %kid, align 8, !dbg !2202
  %8 = load ptr, ptr %kid, align 8, !dbg !2203
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %8) #16, !dbg !2205
  br i1 %call1, label %if.then2, label %if.end4, !dbg !2206

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %kid, align 8, !dbg !2207
  %call3 = call i64 @PTR_ERR(ptr noundef %9) #16, !dbg !2208
  %conv = trunc i64 %call3 to i32, !dbg !2208
  store i32 %conv, ptr %retval, align 4, !dbg !2209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2209

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %tmp5, align 4, !dbg !2210
  %10 = load i32, ptr %tmp5, align 4, !dbg !2213
  %11 = load ptr, ptr %kid, align 8, !dbg !2214
  %12 = load ptr, ptr %ctx, align 8, !dbg !2215
  %cert6 = getelementptr inbounds %struct.x509_parse_context, ptr %12, i32 0, i32 0, !dbg !2216
  %13 = load ptr, ptr %cert6, align 8, !dbg !2216
  %sig7 = getelementptr inbounds %struct.x509_certificate, ptr %13, i32 0, i32 3, !dbg !2217
  %14 = load ptr, ptr %sig7, align 8, !dbg !2217
  %auth_ids8 = getelementptr inbounds %struct.public_key_signature, ptr %14, i32 0, i32 0, !dbg !2218
  %arrayidx9 = getelementptr [3 x ptr], ptr %auth_ids8, i64 0, i64 1, !dbg !2215
  store ptr %11, ptr %arrayidx9, align 8, !dbg !2219
  store i32 0, ptr %retval, align 4, !dbg !2220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2220

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kid) #17, !dbg !2221
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !2221
  %15 = load i32, ptr %retval, align 4, !dbg !2221
  ret i32 %15, !dbg !2221
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_akid_note_name(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !2222 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2224, metadata !DIExpression()), !dbg !2230
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !2225, metadata !DIExpression()), !dbg !2231
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2226, metadata !DIExpression()), !dbg !2232
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2227, metadata !DIExpression()), !dbg !2233
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !2228, metadata !DIExpression()), !dbg !2234
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2229, metadata !DIExpression()), !dbg !2236
  %0 = load ptr, ptr %context.addr, align 8, !dbg !2237
  store ptr %0, ptr %ctx, align 8, !dbg !2236
  store i32 0, ptr %tmp, align 4, !dbg !2238
  %1 = load i32, ptr %tmp, align 4, !dbg !2241
  %2 = load ptr, ptr %value.addr, align 8, !dbg !2242
  %3 = load ptr, ptr %ctx, align 8, !dbg !2243
  %akid_raw_issuer = getelementptr inbounds %struct.x509_parse_context, ptr %3, i32 0, i32 17, !dbg !2244
  store ptr %2, ptr %akid_raw_issuer, align 8, !dbg !2245
  %4 = load i64, ptr %vlen.addr, align 8, !dbg !2246
  %conv = trunc i64 %4 to i32, !dbg !2246
  %5 = load ptr, ptr %ctx, align 8, !dbg !2247
  %akid_raw_issuer_size = getelementptr inbounds %struct.x509_parse_context, ptr %5, i32 0, i32 18, !dbg !2248
  store i32 %conv, ptr %akid_raw_issuer_size, align 8, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !2250
  ret i32 0, !dbg !2251
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x509_akid_note_serial(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !2252 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %kid = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2254, metadata !DIExpression()), !dbg !2261
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !2255, metadata !DIExpression()), !dbg !2262
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2256, metadata !DIExpression()), !dbg !2263
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2257, metadata !DIExpression()), !dbg !2264
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !2258, metadata !DIExpression()), !dbg !2265
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #17, !dbg !2266
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2259, metadata !DIExpression()), !dbg !2267
  %0 = load ptr, ptr %context.addr, align 8, !dbg !2268
  store ptr %0, ptr %ctx, align 8, !dbg !2267
  call void @llvm.lifetime.start.p0(i64 8, ptr %kid) #17, !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %kid, metadata !2260, metadata !DIExpression()), !dbg !2270
  store i32 0, ptr %tmp, align 4, !dbg !2271
  %1 = load i32, ptr %tmp, align 4, !dbg !2274
  %2 = load ptr, ptr %ctx, align 8, !dbg !2275
  %akid_raw_issuer = getelementptr inbounds %struct.x509_parse_context, ptr %2, i32 0, i32 17, !dbg !2277
  %3 = load ptr, ptr %akid_raw_issuer, align 8, !dbg !2277
  %tobool = icmp ne ptr %3, null, !dbg !2275
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2278

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %ctx, align 8, !dbg !2279
  %cert = getelementptr inbounds %struct.x509_parse_context, ptr %4, i32 0, i32 0, !dbg !2280
  %5 = load ptr, ptr %cert, align 8, !dbg !2280
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %5, i32 0, i32 3, !dbg !2281
  %6 = load ptr, ptr %sig, align 8, !dbg !2281
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %6, i32 0, i32 0, !dbg !2282
  %arrayidx = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 0, !dbg !2279
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2279
  %tobool1 = icmp ne ptr %7, null, !dbg !2279
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2283

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2284

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %value.addr, align 8, !dbg !2285
  %9 = load i64, ptr %vlen.addr, align 8, !dbg !2286
  %10 = load ptr, ptr %ctx, align 8, !dbg !2287
  %akid_raw_issuer2 = getelementptr inbounds %struct.x509_parse_context, ptr %10, i32 0, i32 17, !dbg !2288
  %11 = load ptr, ptr %akid_raw_issuer2, align 8, !dbg !2288
  %12 = load ptr, ptr %ctx, align 8, !dbg !2289
  %akid_raw_issuer_size = getelementptr inbounds %struct.x509_parse_context, ptr %12, i32 0, i32 18, !dbg !2290
  %13 = load i32, ptr %akid_raw_issuer_size, align 8, !dbg !2290
  %conv = zext i32 %13 to i64, !dbg !2289
  %call = call ptr @asymmetric_key_generate_id(ptr noundef %8, i64 noundef %9, ptr noundef %11, i64 noundef %conv) #16, !dbg !2291
  store ptr %call, ptr %kid, align 8, !dbg !2292
  %14 = load ptr, ptr %kid, align 8, !dbg !2293
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %14) #16, !dbg !2295
  br i1 %call3, label %if.then4, label %if.end7, !dbg !2296

if.then4:                                         ; preds = %if.end
  %15 = load ptr, ptr %kid, align 8, !dbg !2297
  %call5 = call i64 @PTR_ERR(ptr noundef %15) #16, !dbg !2298
  %conv6 = trunc i64 %call5 to i32, !dbg !2298
  store i32 %conv6, ptr %retval, align 4, !dbg !2299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2299

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %tmp8, align 4, !dbg !2300
  %16 = load i32, ptr %tmp8, align 4, !dbg !2303
  %17 = load ptr, ptr %kid, align 8, !dbg !2304
  %18 = load ptr, ptr %ctx, align 8, !dbg !2305
  %cert9 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 0, !dbg !2306
  %19 = load ptr, ptr %cert9, align 8, !dbg !2306
  %sig10 = getelementptr inbounds %struct.x509_certificate, ptr %19, i32 0, i32 3, !dbg !2307
  %20 = load ptr, ptr %sig10, align 8, !dbg !2307
  %auth_ids11 = getelementptr inbounds %struct.public_key_signature, ptr %20, i32 0, i32 0, !dbg !2308
  %arrayidx12 = getelementptr [3 x ptr], ptr %auth_ids11, i64 0, i64 0, !dbg !2305
  store ptr %17, ptr %arrayidx12, align 8, !dbg !2309
  store i32 0, ptr %retval, align 4, !dbg !2310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2310

cleanup:                                          ; preds = %if.end7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kid) #17, !dbg !2311
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #17, !dbg !2311
  %21 = load i32, ptr %retval, align 4, !dbg !2311
  ret i32 %21, !dbg !2311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2312 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2314, metadata !DIExpression()), !dbg !2319
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2315, metadata !DIExpression()), !dbg !2320
  %0 = load i64, ptr %size.addr, align 8, !dbg !2321
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2322
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2323

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2324
  %tobool = icmp ne i64 %2, 0, !dbg !2324
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2325

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2316, metadata !DIExpression()), !dbg !2327
  %3 = load i64, ptr %size.addr, align 8, !dbg !2328
  %cmp = icmp ugt i64 %3, 8192, !dbg !2330
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2331

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2332
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2333
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !2334
  store ptr %call, ptr %retval, align 8, !dbg !2335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2335

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2336
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2336
  store i32 %call2, ptr %index, align 4, !dbg !2337
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2338
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2339
  %9 = ptrtoint ptr %8 to i64, !dbg !2339
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2340
  %idxprom = zext i32 %call3 to i64, !dbg !2341
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2341
  %10 = load i32, ptr %index, align 4, !dbg !2342
  %idxprom4 = zext i32 %10 to i64, !dbg !2341
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2341
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2341
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2343
  %13 = load i64, ptr %size.addr, align 8, !dbg !2344
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !2345
  store ptr %call6, ptr %retval, align 8, !dbg !2346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2346

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !2347
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2348
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2349
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !2350
  store ptr %call8, ptr %retval, align 8, !dbg !2351
  br label %return, !dbg !2351

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2352
  ret ptr %16, !dbg !2352
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2353 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !2354 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2358, metadata !DIExpression()), !dbg !2360
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2359, metadata !DIExpression()), !dbg !2361
  %0 = load i64, ptr %size.addr, align 8, !dbg !2362
  %tobool = icmp ne i64 %0, 0, !dbg !2362
  br i1 %tobool, label %if.end, label %if.then, !dbg !2364

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2365
  br label %return, !dbg !2365

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2366
  %cmp = icmp ule i64 %1, 8, !dbg !2368
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2369

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2370
  br label %return, !dbg !2370

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2371
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2373
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2374

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2375
  %cmp4 = icmp ule i64 %3, 96, !dbg !2376
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2377

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2378
  br label %return, !dbg !2378

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2379
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2381
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2382

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2383
  %cmp9 = icmp ule i64 %5, 192, !dbg !2384
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2385

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2386
  br label %return, !dbg !2386

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2387
  %cmp12 = icmp ule i64 %6, 8, !dbg !2389
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2390

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2391
  br label %return, !dbg !2391

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2392
  %cmp15 = icmp ule i64 %7, 16, !dbg !2394
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2395

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2396
  br label %return, !dbg !2396

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2397
  %cmp18 = icmp ule i64 %8, 32, !dbg !2399
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2400

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2401
  br label %return, !dbg !2401

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2402
  %cmp21 = icmp ule i64 %9, 64, !dbg !2404
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2405

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2406
  br label %return, !dbg !2406

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2407
  %cmp24 = icmp ule i64 %10, 128, !dbg !2409
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2410

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2411
  br label %return, !dbg !2411

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2412
  %cmp27 = icmp ule i64 %11, 256, !dbg !2414
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2415

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2416
  br label %return, !dbg !2416

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2417
  %cmp30 = icmp ule i64 %12, 512, !dbg !2419
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2420

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2421
  br label %return, !dbg !2421

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2422
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2424
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2425

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2426
  br label %return, !dbg !2426

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2427
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2429
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2430

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2431
  br label %return, !dbg !2431

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2432
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2434
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2435

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2436
  br label %return, !dbg !2436

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2437
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2439
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2440

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2441
  br label %return, !dbg !2441

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2442
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2444
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2445

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2446
  br label %return, !dbg !2446

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2447
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2449
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2450

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2451
  br label %return, !dbg !2451

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2452
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2454
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2455

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2456
  br label %return, !dbg !2456

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2457
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2459
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2460

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2461
  br label %return, !dbg !2461

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2462
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2464
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2465

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2466
  br label %return, !dbg !2466

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2467
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2469
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2470

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2471
  br label %return, !dbg !2471

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2472
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2474
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2475

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2476
  br label %return, !dbg !2476

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2477
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2479
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2480

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2481
  br label %return, !dbg !2481

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2482, !range !2484, !noundef !2485
  %tobool69 = trunc i8 %25 to i1, !dbg !2482
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2486

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2487

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #22, !dbg !2488, !srcloc !2491
  unreachable, !dbg !2488

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2492

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2493

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2494

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2496

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2494

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.22, i32 480, i32 0, i64 12) #17, !dbg !2498, !srcloc !2500
  br label %do.end75, !dbg !2498

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2494

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2501
  br label %return, !dbg !2501

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2502
  ret i32 %26, !dbg !2502
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2503 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !2509 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2513, metadata !DIExpression()), !dbg !2515
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2514, metadata !DIExpression()), !dbg !2516
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2517
  %and = and i32 %0, 17, !dbg !2517
  %cmp = icmp eq i32 %and, 0, !dbg !2517
  %lnot = xor i1 %cmp, true, !dbg !2517
  %lnot1 = xor i1 %lnot, true, !dbg !2517
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2517
  %conv = sext i32 %lnot.ext to i64, !dbg !2517
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2517
  %tobool = icmp ne i64 %expval, 0, !dbg !2517
  br i1 %tobool, label %if.then, label %if.end, !dbg !2519

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2520
  br label %return, !dbg !2520

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2521
  %and2 = and i32 %1, 1, !dbg !2523
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2523
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2524

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2525
  br label %return, !dbg !2525

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2526
  br label %return, !dbg !2526

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2528
  ret i32 %2, !dbg !2528
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2529 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2530 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2533 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(1) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!340, !341, !342, !343, !344, !345, !346, !347}
!llvm.ident = !{!348}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x509_free_certificate120", scope: !2, file: !3, line: 56, type: !158, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/asymmetric_keys/.x509_cert_parser.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/asymmetric_keys/x509_key_parser\22 -D KBUILD_BASENAME=\22x509_cert_parser\22 -D KBUILD_MODNAME=\22x509_key_parser\22 -D __KBUILD_MODNAME=kmod_x509_key_parser -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/asymmetric_keys/x509_cert_parser.ll crypto/asymmetric_keys/x509_cert_parser.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !157, globals: !172, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/asymmetric_keys/x509_cert_parser.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f145fc517e0f085900f1d573c4781c3f")
!4 = !{!5, !109, !142, !147}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "OID", file: !6, line: 19, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/oid_registry.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d5d57e234dafd05fd37f1d558d9555b7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!9 = !DIEnumerator(name: "OID_id_dsa_with_sha1", value: 0)
!10 = !DIEnumerator(name: "OID_id_dsa", value: 1)
!11 = !DIEnumerator(name: "OID_id_ecPublicKey", value: 2)
!12 = !DIEnumerator(name: "OID_id_prime192v1", value: 3)
!13 = !DIEnumerator(name: "OID_id_prime256v1", value: 4)
!14 = !DIEnumerator(name: "OID_id_ecdsa_with_sha1", value: 5)
!15 = !DIEnumerator(name: "OID_id_ecdsa_with_sha224", value: 6)
!16 = !DIEnumerator(name: "OID_id_ecdsa_with_sha256", value: 7)
!17 = !DIEnumerator(name: "OID_id_ecdsa_with_sha384", value: 8)
!18 = !DIEnumerator(name: "OID_id_ecdsa_with_sha512", value: 9)
!19 = !DIEnumerator(name: "OID_rsaEncryption", value: 10)
!20 = !DIEnumerator(name: "OID_md2WithRSAEncryption", value: 11)
!21 = !DIEnumerator(name: "OID_md3WithRSAEncryption", value: 12)
!22 = !DIEnumerator(name: "OID_md4WithRSAEncryption", value: 13)
!23 = !DIEnumerator(name: "OID_sha1WithRSAEncryption", value: 14)
!24 = !DIEnumerator(name: "OID_sha256WithRSAEncryption", value: 15)
!25 = !DIEnumerator(name: "OID_sha384WithRSAEncryption", value: 16)
!26 = !DIEnumerator(name: "OID_sha512WithRSAEncryption", value: 17)
!27 = !DIEnumerator(name: "OID_sha224WithRSAEncryption", value: 18)
!28 = !DIEnumerator(name: "OID_data", value: 19)
!29 = !DIEnumerator(name: "OID_signed_data", value: 20)
!30 = !DIEnumerator(name: "OID_email_address", value: 21)
!31 = !DIEnumerator(name: "OID_contentType", value: 22)
!32 = !DIEnumerator(name: "OID_messageDigest", value: 23)
!33 = !DIEnumerator(name: "OID_signingTime", value: 24)
!34 = !DIEnumerator(name: "OID_smimeCapabilites", value: 25)
!35 = !DIEnumerator(name: "OID_smimeAuthenticatedAttrs", value: 26)
!36 = !DIEnumerator(name: "OID_md2", value: 27)
!37 = !DIEnumerator(name: "OID_md4", value: 28)
!38 = !DIEnumerator(name: "OID_md5", value: 29)
!39 = !DIEnumerator(name: "OID_mskrb5", value: 30)
!40 = !DIEnumerator(name: "OID_krb5", value: 31)
!41 = !DIEnumerator(name: "OID_krb5u2u", value: 32)
!42 = !DIEnumerator(name: "OID_msIndirectData", value: 33)
!43 = !DIEnumerator(name: "OID_msStatementType", value: 34)
!44 = !DIEnumerator(name: "OID_msSpOpusInfo", value: 35)
!45 = !DIEnumerator(name: "OID_msPeImageDataObjId", value: 36)
!46 = !DIEnumerator(name: "OID_msIndividualSPKeyPurpose", value: 37)
!47 = !DIEnumerator(name: "OID_msOutlookExpress", value: 38)
!48 = !DIEnumerator(name: "OID_ntlmssp", value: 39)
!49 = !DIEnumerator(name: "OID_negoex", value: 40)
!50 = !DIEnumerator(name: "OID_spnego", value: 41)
!51 = !DIEnumerator(name: "OID_IAKerb", value: 42)
!52 = !DIEnumerator(name: "OID_PKU2U", value: 43)
!53 = !DIEnumerator(name: "OID_Scram", value: 44)
!54 = !DIEnumerator(name: "OID_certAuthInfoAccess", value: 45)
!55 = !DIEnumerator(name: "OID_sha1", value: 46)
!56 = !DIEnumerator(name: "OID_id_ansip384r1", value: 47)
!57 = !DIEnumerator(name: "OID_sha256", value: 48)
!58 = !DIEnumerator(name: "OID_sha384", value: 49)
!59 = !DIEnumerator(name: "OID_sha512", value: 50)
!60 = !DIEnumerator(name: "OID_sha224", value: 51)
!61 = !DIEnumerator(name: "OID_commonName", value: 52)
!62 = !DIEnumerator(name: "OID_surname", value: 53)
!63 = !DIEnumerator(name: "OID_countryName", value: 54)
!64 = !DIEnumerator(name: "OID_locality", value: 55)
!65 = !DIEnumerator(name: "OID_stateOrProvinceName", value: 56)
!66 = !DIEnumerator(name: "OID_organizationName", value: 57)
!67 = !DIEnumerator(name: "OID_organizationUnitName", value: 58)
!68 = !DIEnumerator(name: "OID_title", value: 59)
!69 = !DIEnumerator(name: "OID_description", value: 60)
!70 = !DIEnumerator(name: "OID_name", value: 61)
!71 = !DIEnumerator(name: "OID_givenName", value: 62)
!72 = !DIEnumerator(name: "OID_initials", value: 63)
!73 = !DIEnumerator(name: "OID_generationalQualifier", value: 64)
!74 = !DIEnumerator(name: "OID_subjectKeyIdentifier", value: 65)
!75 = !DIEnumerator(name: "OID_keyUsage", value: 66)
!76 = !DIEnumerator(name: "OID_subjectAltName", value: 67)
!77 = !DIEnumerator(name: "OID_issuerAltName", value: 68)
!78 = !DIEnumerator(name: "OID_basicConstraints", value: 69)
!79 = !DIEnumerator(name: "OID_crlDistributionPoints", value: 70)
!80 = !DIEnumerator(name: "OID_certPolicies", value: 71)
!81 = !DIEnumerator(name: "OID_authorityKeyIdentifier", value: 72)
!82 = !DIEnumerator(name: "OID_extKeyUsage", value: 73)
!83 = !DIEnumerator(name: "OID_NetlogonMechanism", value: 74)
!84 = !DIEnumerator(name: "OID_appleLocalKdcSupported", value: 75)
!85 = !DIEnumerator(name: "OID_gostCPSignA", value: 76)
!86 = !DIEnumerator(name: "OID_gostCPSignB", value: 77)
!87 = !DIEnumerator(name: "OID_gostCPSignC", value: 78)
!88 = !DIEnumerator(name: "OID_gost2012PKey256", value: 79)
!89 = !DIEnumerator(name: "OID_gost2012PKey512", value: 80)
!90 = !DIEnumerator(name: "OID_gost2012Digest256", value: 81)
!91 = !DIEnumerator(name: "OID_gost2012Digest512", value: 82)
!92 = !DIEnumerator(name: "OID_gost2012Signature256", value: 83)
!93 = !DIEnumerator(name: "OID_gost2012Signature512", value: 84)
!94 = !DIEnumerator(name: "OID_gostTC26Sign256A", value: 85)
!95 = !DIEnumerator(name: "OID_gostTC26Sign256B", value: 86)
!96 = !DIEnumerator(name: "OID_gostTC26Sign256C", value: 87)
!97 = !DIEnumerator(name: "OID_gostTC26Sign256D", value: 88)
!98 = !DIEnumerator(name: "OID_gostTC26Sign512A", value: 89)
!99 = !DIEnumerator(name: "OID_gostTC26Sign512B", value: 90)
!100 = !DIEnumerator(name: "OID_gostTC26Sign512C", value: 91)
!101 = !DIEnumerator(name: "OID_sm2", value: 92)
!102 = !DIEnumerator(name: "OID_sm3", value: 93)
!103 = !DIEnumerator(name: "OID_SM2_with_SM3", value: 94)
!104 = !DIEnumerator(name: "OID_sm3WithRSAEncryption", value: 95)
!105 = !DIEnumerator(name: "OID_TPMLoadableKey", value: 96)
!106 = !DIEnumerator(name: "OID_TPMImportableKey", value: 97)
!107 = !DIEnumerator(name: "OID_TPMSealedData", value: 98)
!108 = !DIEnumerator(name: "OID__NR", value: 99)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asn1_tag", file: !110, line: 28, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/asn1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bfb79e98a58ecc0214aefb4ff1311213")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!112 = !DIEnumerator(name: "ASN1_EOC", value: 0)
!113 = !DIEnumerator(name: "ASN1_BOOL", value: 1)
!114 = !DIEnumerator(name: "ASN1_INT", value: 2)
!115 = !DIEnumerator(name: "ASN1_BTS", value: 3)
!116 = !DIEnumerator(name: "ASN1_OTS", value: 4)
!117 = !DIEnumerator(name: "ASN1_NULL", value: 5)
!118 = !DIEnumerator(name: "ASN1_OID", value: 6)
!119 = !DIEnumerator(name: "ASN1_ODE", value: 7)
!120 = !DIEnumerator(name: "ASN1_EXT", value: 8)
!121 = !DIEnumerator(name: "ASN1_REAL", value: 9)
!122 = !DIEnumerator(name: "ASN1_ENUM", value: 10)
!123 = !DIEnumerator(name: "ASN1_EPDV", value: 11)
!124 = !DIEnumerator(name: "ASN1_UTF8STR", value: 12)
!125 = !DIEnumerator(name: "ASN1_RELOID", value: 13)
!126 = !DIEnumerator(name: "ASN1_SEQ", value: 16)
!127 = !DIEnumerator(name: "ASN1_SET", value: 17)
!128 = !DIEnumerator(name: "ASN1_NUMSTR", value: 18)
!129 = !DIEnumerator(name: "ASN1_PRNSTR", value: 19)
!130 = !DIEnumerator(name: "ASN1_TEXSTR", value: 20)
!131 = !DIEnumerator(name: "ASN1_VIDSTR", value: 21)
!132 = !DIEnumerator(name: "ASN1_IA5STR", value: 22)
!133 = !DIEnumerator(name: "ASN1_UNITIM", value: 23)
!134 = !DIEnumerator(name: "ASN1_GENTIM", value: 24)
!135 = !DIEnumerator(name: "ASN1_GRASTR", value: 25)
!136 = !DIEnumerator(name: "ASN1_VISSTR", value: 26)
!137 = !DIEnumerator(name: "ASN1_GENSTR", value: 27)
!138 = !DIEnumerator(name: "ASN1_UNISTR", value: 28)
!139 = !DIEnumerator(name: "ASN1_CHRSTR", value: 29)
!140 = !DIEnumerator(name: "ASN1_BMPSTR", value: 30)
!141 = !DIEnumerator(name: "ASN1_LONG_TAG", value: 31)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 10, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "false", value: 0)
!146 = !DIEnumerator(name: "true", value: 1)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !148, line: 364, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!149 = !{!150, !151, !152, !153, !154, !155, !156}
!150 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!151 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!152 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!153 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!154 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!155 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!156 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!157 = !{!158, !159, !161, !162, !169, !170}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !160, line: 154, baseType: !7)
!160 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !165, line: 17, baseType: !166)
!165 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !167, line: 21, baseType: !168)
!167 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!168 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!172 = !{!0, !173, !179, !181, !186, !191, !196, !198, !200, !202, !207, !209, !211, !213, !218, !220, !222, !224, !226, !228, !233, !238, !243, !245, !247, !333, !335}
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 352, elements: !177)
!176 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!177 = !{!178}
!178 = !DISubrange(count: 44)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x509_cert_parse121", scope: !2, file: !3, line: 147, type: !158, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 32, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 4)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 40, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 5)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 56, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 7)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !193, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !193, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 224, type: !193, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 96, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 12)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !204, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !183, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !183, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 48, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 6)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 266, type: !193, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !183, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !183, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !215, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !188, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 616, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 77)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 452, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 8, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 1)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 523, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 16)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !240, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !3, line: 529, type: !240, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "month_lengths", scope: !249, file: !3, line: 664, type: !332, isLocal: true, isDefinition: true)
!249 = distinct !DISubprogram(name: "x509_decode_time", scope: !3, file: !3, line: 660, type: !250, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !253, !258, !168, !262, !258}
!252 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !255, line: 8, baseType: !256)
!255 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !167, line: 30, baseType: !257)
!257 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 61, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !260, line: 72, baseType: !261)
!260 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !260, line: 16, baseType: !161)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !282, !284, !286, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !331}
!265 = !DILocalVariable(name: "_t", arg: 1, scope: !249, file: !3, line: 660, type: !253)
!266 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !249, file: !3, line: 660, type: !258)
!267 = !DILocalVariable(name: "tag", arg: 3, scope: !249, file: !3, line: 661, type: !168)
!268 = !DILocalVariable(name: "value", arg: 4, scope: !249, file: !3, line: 662, type: !262)
!269 = !DILocalVariable(name: "vlen", arg: 5, scope: !249, file: !3, line: 662, type: !258)
!270 = !DILocalVariable(name: "p", scope: !249, file: !3, line: 666, type: !262)
!271 = !DILocalVariable(name: "year", scope: !249, file: !3, line: 667, type: !7)
!272 = !DILocalVariable(name: "mon", scope: !249, file: !3, line: 667, type: !7)
!273 = !DILocalVariable(name: "day", scope: !249, file: !3, line: 667, type: !7)
!274 = !DILocalVariable(name: "hour", scope: !249, file: !3, line: 667, type: !7)
!275 = !DILocalVariable(name: "min", scope: !249, file: !3, line: 667, type: !7)
!276 = !DILocalVariable(name: "sec", scope: !249, file: !3, line: 667, type: !7)
!277 = !DILocalVariable(name: "mon_len", scope: !249, file: !3, line: 667, type: !7)
!278 = !DILocalVariable(name: "x", scope: !279, file: !3, line: 676, type: !7)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 676, column: 10)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 672, column: 26)
!281 = distinct !DILexicalBlock(scope: !249, file: !3, line: 672, column: 6)
!282 = !DILocalVariable(name: "x", scope: !283, file: !3, line: 676, type: !168)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 676, column: 10)
!284 = !DILocalVariable(name: "x", scope: !285, file: !3, line: 676, type: !168)
!285 = distinct !DILexicalBlock(scope: !279, file: !3, line: 676, column: 10)
!286 = !DILocalVariable(name: "x", scope: !287, file: !3, line: 685, type: !7)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 685, column: 10)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 681, column: 33)
!289 = distinct !DILexicalBlock(scope: !281, file: !3, line: 681, column: 13)
!290 = !DILocalVariable(name: "x", scope: !291, file: !3, line: 685, type: !168)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 685, column: 10)
!292 = !DILocalVariable(name: "x", scope: !293, file: !3, line: 685, type: !168)
!293 = distinct !DILexicalBlock(scope: !287, file: !3, line: 685, column: 10)
!294 = !DILocalVariable(name: "x", scope: !295, file: !3, line: 685, type: !7)
!295 = distinct !DILexicalBlock(scope: !288, file: !3, line: 685, column: 28)
!296 = !DILocalVariable(name: "x", scope: !297, file: !3, line: 685, type: !168)
!297 = distinct !DILexicalBlock(scope: !295, file: !3, line: 685, column: 28)
!298 = !DILocalVariable(name: "x", scope: !299, file: !3, line: 685, type: !168)
!299 = distinct !DILexicalBlock(scope: !295, file: !3, line: 685, column: 28)
!300 = !DILocalVariable(name: "x", scope: !301, file: !3, line: 692, type: !7)
!301 = distinct !DILexicalBlock(scope: !249, file: !3, line: 692, column: 9)
!302 = !DILocalVariable(name: "x", scope: !303, file: !3, line: 692, type: !168)
!303 = distinct !DILexicalBlock(scope: !301, file: !3, line: 692, column: 9)
!304 = !DILocalVariable(name: "x", scope: !305, file: !3, line: 692, type: !168)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 692, column: 9)
!306 = !DILocalVariable(name: "x", scope: !307, file: !3, line: 693, type: !7)
!307 = distinct !DILexicalBlock(scope: !249, file: !3, line: 693, column: 8)
!308 = !DILocalVariable(name: "x", scope: !309, file: !3, line: 693, type: !168)
!309 = distinct !DILexicalBlock(scope: !307, file: !3, line: 693, column: 8)
!310 = !DILocalVariable(name: "x", scope: !311, file: !3, line: 693, type: !168)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 693, column: 8)
!312 = !DILocalVariable(name: "x", scope: !313, file: !3, line: 694, type: !7)
!313 = distinct !DILexicalBlock(scope: !249, file: !3, line: 694, column: 9)
!314 = !DILocalVariable(name: "x", scope: !315, file: !3, line: 694, type: !168)
!315 = distinct !DILexicalBlock(scope: !313, file: !3, line: 694, column: 9)
!316 = !DILocalVariable(name: "x", scope: !317, file: !3, line: 694, type: !168)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 694, column: 9)
!318 = !DILocalVariable(name: "x", scope: !319, file: !3, line: 695, type: !7)
!319 = distinct !DILexicalBlock(scope: !249, file: !3, line: 695, column: 9)
!320 = !DILocalVariable(name: "x", scope: !321, file: !3, line: 695, type: !168)
!321 = distinct !DILexicalBlock(scope: !319, file: !3, line: 695, column: 9)
!322 = !DILocalVariable(name: "x", scope: !323, file: !3, line: 695, type: !168)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 695, column: 9)
!324 = !DILocalVariable(name: "x", scope: !325, file: !3, line: 696, type: !7)
!325 = distinct !DILexicalBlock(scope: !249, file: !3, line: 696, column: 9)
!326 = !DILocalVariable(name: "x", scope: !327, file: !3, line: 696, type: !168)
!327 = distinct !DILexicalBlock(scope: !325, file: !3, line: 696, column: 9)
!328 = !DILocalVariable(name: "x", scope: !329, file: !3, line: 696, type: !168)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 696, column: 9)
!330 = !DILabel(scope: !249, name: "unsupported_time", file: !3, line: 726)
!331 = !DILabel(scope: !249, name: "invalid_time", file: !3, line: 730)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 96, elements: !205)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x509_decode_time122", scope: !2, file: !3, line: 735, type: !158, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !148, line: 480, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 168, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 21)
!340 = !{i32 7, !"Dwarf Version", i32 5}
!341 = !{i32 2, !"Debug Info Version", i32 3}
!342 = !{i32 1, !"wchar_size", i32 2}
!343 = !{i32 8, !"cf-protection-branch", i32 1}
!344 = !{i32 4, !"function_return_thunk_extern", i32 1}
!345 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!346 = !{i32 1, !"Code Model", i32 2}
!347 = !{i32 1, !"override-stack-alignment", i32 8}
!348 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!349 = distinct !DISubprogram(name: "x509_free_certificate", scope: !3, file: !3, line: 44, type: !350, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_certificate", file: !354, line: 12, size: 1344, elements: !355)
!354 = !DIFile(filename: "crypto/asymmetric_keys/x509_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "706a2c38e72925540b7c53948fb9b13f")
!355 = !{!356, !357, !358, !378, !404, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !354, line: 13, baseType: !352, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !353, file: !354, line: 14, baseType: !352, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !353, file: !354, line: 15, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key", file: !361, line: 22, size: 448, elements: !362)
!361 = !DIFile(filename: "./include/crypto/public_key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bba3709dd387ae2fcb2dcdb4db69068a")
!362 = !{!363, !364, !367, !368, !369, !370, !373, !376, !377}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !360, file: !361, line: 23, baseType: !158, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !360, file: !361, line: 24, baseType: !365, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !165, line: 21, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !167, line: 27, baseType: !7)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !360, file: !361, line: 25, baseType: !5, size: 32, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !360, file: !361, line: 26, baseType: !158, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "paramlen", scope: !360, file: !361, line: 27, baseType: !365, size: 32, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "key_is_private", scope: !360, file: !361, line: 28, baseType: !371, size: 8, offset: 224)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !160, line: 35, baseType: !372)
!372 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "id_type", scope: !360, file: !361, line: 29, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !360, file: !361, line: 30, baseType: !374, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "key_eflags", scope: !360, file: !361, line: 31, baseType: !161, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !353, file: !354, line: 16, baseType: !379, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key_signature", file: !361, line: 42, size: 576, elements: !381)
!381 = !{!382, !396, !398, !399, !400, !401, !402, !403}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ids", scope: !380, file: !361, line: 43, baseType: !383, size: 192)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 192, elements: !394)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asymmetric_key_id", file: !386, line: 50, size: 16, elements: !387)
!386 = !DIFile(filename: "./include/keys/asymmetric-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3daffae8091b612618c69279094a4c0")
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !385, file: !386, line: 51, baseType: !389, size: 16)
!389 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !385, file: !386, line: 52, baseType: !391, offset: 16)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: -1)
!394 = !{!395}
!395 = !DISubrange(count: 3)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !380, file: !361, line: 44, baseType: !397, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !380, file: !361, line: 45, baseType: !397, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "s_size", scope: !380, file: !361, line: 46, baseType: !365, size: 32, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "digest_size", scope: !380, file: !361, line: 47, baseType: !365, size: 32, offset: 352)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !380, file: !361, line: 48, baseType: !374, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !380, file: !361, line: 49, baseType: !374, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !380, file: !361, line: 50, baseType: !374, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !353, file: !354, line: 17, baseType: !405, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !353, file: !354, line: 18, baseType: !405, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !353, file: !354, line: 19, baseType: !384, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !353, file: !354, line: 20, baseType: !384, size: 64, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "valid_from", scope: !353, file: !354, line: 21, baseType: !254, size: 64, offset: 512)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "valid_to", scope: !353, file: !354, line: 22, baseType: !254, size: 64, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tbs", scope: !353, file: !354, line: 23, baseType: !170, size: 64, offset: 640)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tbs_size", scope: !353, file: !354, line: 24, baseType: !7, size: 32, offset: 704)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sig_size", scope: !353, file: !354, line: 25, baseType: !7, size: 32, offset: 736)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sig", scope: !353, file: !354, line: 26, baseType: !170, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial", scope: !353, file: !354, line: 27, baseType: !170, size: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial_size", scope: !353, file: !354, line: 28, baseType: !7, size: 32, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer_size", scope: !353, file: !354, line: 29, baseType: !7, size: 32, offset: 928)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer", scope: !353, file: !354, line: 30, baseType: !170, size: 64, offset: 960)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "raw_subject", scope: !353, file: !354, line: 31, baseType: !170, size: 64, offset: 1024)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "raw_subject_size", scope: !353, file: !354, line: 32, baseType: !7, size: 32, offset: 1088)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid_size", scope: !353, file: !354, line: 33, baseType: !7, size: 32, offset: 1120)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid", scope: !353, file: !354, line: 34, baseType: !170, size: 64, offset: 1152)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !353, file: !354, line: 35, baseType: !7, size: 32, offset: 1216)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "seen", scope: !353, file: !354, line: 36, baseType: !371, size: 8, offset: 1248)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "verified", scope: !353, file: !354, line: 37, baseType: !371, size: 8, offset: 1256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "self_signed", scope: !353, file: !354, line: 38, baseType: !371, size: 8, offset: 1264)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_sig", scope: !353, file: !354, line: 39, baseType: !371, size: 8, offset: 1272)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted", scope: !353, file: !354, line: 40, baseType: !371, size: 8, offset: 1280)
!429 = !{!430}
!430 = !DILocalVariable(name: "cert", arg: 1, scope: !349, file: !3, line: 44, type: !352)
!431 = !DILocation(line: 44, column: 53, scope: !349)
!432 = !DILocation(line: 46, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !349, file: !3, line: 46, column: 6)
!434 = !DILocation(line: 46, column: 6, scope: !349)
!435 = !DILocation(line: 47, column: 19, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !3, line: 46, column: 12)
!437 = !DILocation(line: 47, column: 25, scope: !436)
!438 = !DILocation(line: 47, column: 3, scope: !436)
!439 = !DILocation(line: 48, column: 29, scope: !436)
!440 = !DILocation(line: 48, column: 35, scope: !436)
!441 = !DILocation(line: 48, column: 3, scope: !436)
!442 = !DILocation(line: 49, column: 9, scope: !436)
!443 = !DILocation(line: 49, column: 15, scope: !436)
!444 = !DILocation(line: 49, column: 3, scope: !436)
!445 = !DILocation(line: 50, column: 9, scope: !436)
!446 = !DILocation(line: 50, column: 15, scope: !436)
!447 = !DILocation(line: 50, column: 3, scope: !436)
!448 = !DILocation(line: 51, column: 9, scope: !436)
!449 = !DILocation(line: 51, column: 15, scope: !436)
!450 = !DILocation(line: 51, column: 3, scope: !436)
!451 = !DILocation(line: 52, column: 9, scope: !436)
!452 = !DILocation(line: 52, column: 15, scope: !436)
!453 = !DILocation(line: 52, column: 3, scope: !436)
!454 = !DILocation(line: 53, column: 9, scope: !436)
!455 = !DILocation(line: 53, column: 3, scope: !436)
!456 = !DILocation(line: 54, column: 2, scope: !436)
!457 = !DILocation(line: 55, column: 1, scope: !349)
!458 = !DISubprogram(name: "public_key_free", scope: !361, file: !361, line: 37, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !359}
!461 = !DISubprogram(name: "public_key_signature_free", scope: !361, file: !361, line: 53, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !379}
!464 = !DISubprogram(name: "kfree", scope: !148, file: !148, line: 227, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !170}
!467 = distinct !DISubprogram(name: "x509_cert_parse", scope: !3, file: !3, line: 61, type: !468, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!352, !170, !258}
!470 = !{!471, !472, !473, !474, !499, !500, !501, !502, !503}
!471 = !DILocalVariable(name: "data", arg: 1, scope: !467, file: !3, line: 61, type: !170)
!472 = !DILocalVariable(name: "datalen", arg: 2, scope: !467, file: !3, line: 61, type: !258)
!473 = !DILocalVariable(name: "cert", scope: !467, file: !3, line: 63, type: !352)
!474 = !DILocalVariable(name: "ctx", scope: !467, file: !3, line: 64, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_parse_context", file: !3, line: 19, size: 832, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !493, !494, !495, !496, !497, !498}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !476, file: !3, line: 20, baseType: !352, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !476, file: !3, line: 21, baseType: !161, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !476, file: !3, line: 22, baseType: !170, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !476, file: !3, line: 23, baseType: !258, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !476, file: !3, line: 24, baseType: !170, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "params_size", scope: !476, file: !3, line: 25, baseType: !258, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "key_algo", scope: !476, file: !3, line: 26, baseType: !5, size: 32, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "last_oid", scope: !476, file: !3, line: 27, baseType: !5, size: 32, offset: 416)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sig_algo", scope: !476, file: !3, line: 28, baseType: !5, size: 32, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "o_size", scope: !476, file: !3, line: 29, baseType: !164, size: 8, offset: 480)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cn_size", scope: !476, file: !3, line: 30, baseType: !164, size: 8, offset: 488)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "email_size", scope: !476, file: !3, line: 31, baseType: !164, size: 8, offset: 496)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "o_offset", scope: !476, file: !3, line: 32, baseType: !491, size: 16, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !165, line: 19, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !167, line: 24, baseType: !389)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "cn_offset", scope: !476, file: !3, line: 33, baseType: !491, size: 16, offset: 528)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "email_offset", scope: !476, file: !3, line: 34, baseType: !491, size: 16, offset: 544)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "raw_akid_size", scope: !476, file: !3, line: 35, baseType: !7, size: 32, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "raw_akid", scope: !476, file: !3, line: 36, baseType: !170, size: 64, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "akid_raw_issuer", scope: !476, file: !3, line: 37, baseType: !170, size: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "akid_raw_issuer_size", scope: !476, file: !3, line: 38, baseType: !7, size: 32, offset: 768)
!499 = !DILocalVariable(name: "kid", scope: !467, file: !3, line: 65, type: !384)
!500 = !DILocalVariable(name: "ret", scope: !467, file: !3, line: 66, type: !169)
!501 = !DILabel(scope: !467, name: "error_decode", file: !3, line: 140)
!502 = !DILabel(scope: !467, name: "error_no_ctx", file: !3, line: 142)
!503 = !DILabel(scope: !467, name: "error_no_cert", file: !3, line: 144)
!504 = !DILocation(line: 61, column: 54, scope: !467)
!505 = !DILocation(line: 61, column: 67, scope: !467)
!506 = !DILocation(line: 63, column: 2, scope: !467)
!507 = !DILocation(line: 63, column: 27, scope: !467)
!508 = !DILocation(line: 64, column: 2, scope: !467)
!509 = !DILocation(line: 64, column: 29, scope: !467)
!510 = !DILocation(line: 65, column: 2, scope: !467)
!511 = !DILocation(line: 65, column: 28, scope: !467)
!512 = !DILocation(line: 66, column: 2, scope: !467)
!513 = !DILocation(line: 66, column: 7, scope: !467)
!514 = !DILocation(line: 68, column: 6, scope: !467)
!515 = !DILocation(line: 69, column: 9, scope: !467)
!516 = !DILocation(line: 69, column: 7, scope: !467)
!517 = !DILocation(line: 70, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !467, file: !3, line: 70, column: 6)
!519 = !DILocation(line: 70, column: 6, scope: !467)
!520 = !DILocation(line: 71, column: 3, scope: !518)
!521 = !DILocation(line: 72, column: 14, scope: !467)
!522 = !DILocation(line: 72, column: 2, scope: !467)
!523 = !DILocation(line: 72, column: 8, scope: !467)
!524 = !DILocation(line: 72, column: 12, scope: !467)
!525 = !DILocation(line: 73, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !467, file: !3, line: 73, column: 6)
!527 = !DILocation(line: 73, column: 13, scope: !526)
!528 = !DILocation(line: 73, column: 6, scope: !467)
!529 = !DILocation(line: 74, column: 3, scope: !526)
!530 = !DILocation(line: 75, column: 14, scope: !467)
!531 = !DILocation(line: 75, column: 2, scope: !467)
!532 = !DILocation(line: 75, column: 8, scope: !467)
!533 = !DILocation(line: 75, column: 12, scope: !467)
!534 = !DILocation(line: 76, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !467, file: !3, line: 76, column: 6)
!536 = !DILocation(line: 76, column: 13, scope: !535)
!537 = !DILocation(line: 76, column: 6, scope: !467)
!538 = !DILocation(line: 77, column: 3, scope: !535)
!539 = !DILocation(line: 78, column: 8, scope: !467)
!540 = !DILocation(line: 78, column: 6, scope: !467)
!541 = !DILocation(line: 79, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !467, file: !3, line: 79, column: 6)
!543 = !DILocation(line: 79, column: 6, scope: !467)
!544 = !DILocation(line: 80, column: 3, scope: !542)
!545 = !DILocation(line: 82, column: 14, scope: !467)
!546 = !DILocation(line: 82, column: 2, scope: !467)
!547 = !DILocation(line: 82, column: 7, scope: !467)
!548 = !DILocation(line: 82, column: 12, scope: !467)
!549 = !DILocation(line: 83, column: 29, scope: !467)
!550 = !DILocation(line: 83, column: 14, scope: !467)
!551 = !DILocation(line: 83, column: 2, scope: !467)
!552 = !DILocation(line: 83, column: 7, scope: !467)
!553 = !DILocation(line: 83, column: 12, scope: !467)
!554 = !DILocation(line: 86, column: 40, scope: !467)
!555 = !DILocation(line: 86, column: 45, scope: !467)
!556 = !DILocation(line: 86, column: 51, scope: !467)
!557 = !DILocation(line: 86, column: 8, scope: !467)
!558 = !DILocation(line: 86, column: 6, scope: !467)
!559 = !DILocation(line: 87, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !467, file: !3, line: 87, column: 6)
!561 = !DILocation(line: 87, column: 10, scope: !560)
!562 = !DILocation(line: 87, column: 6, scope: !467)
!563 = !DILocation(line: 88, column: 3, scope: !560)
!564 = !DILocation(line: 91, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !467, file: !3, line: 91, column: 6)
!566 = !DILocation(line: 91, column: 11, scope: !565)
!567 = !DILocation(line: 91, column: 6, scope: !467)
!568 = !DILocation(line: 92, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 92, column: 3)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 92, column: 3)
!571 = distinct !DILexicalBlock(scope: !565, file: !3, line: 91, column: 21)
!572 = !DILocation(line: 92, column: 3, scope: !570)
!573 = !DILocation(line: 94, column: 46, scope: !571)
!574 = !DILocation(line: 95, column: 12, scope: !571)
!575 = !DILocation(line: 95, column: 17, scope: !571)
!576 = !DILocation(line: 95, column: 27, scope: !571)
!577 = !DILocation(line: 95, column: 32, scope: !571)
!578 = !DILocation(line: 94, column: 9, scope: !571)
!579 = !DILocation(line: 94, column: 7, scope: !571)
!580 = !DILocation(line: 96, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !571, file: !3, line: 96, column: 7)
!582 = !DILocation(line: 96, column: 11, scope: !581)
!583 = !DILocation(line: 96, column: 7, scope: !571)
!584 = !DILocation(line: 97, column: 4, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 97, column: 4)
!586 = distinct !DILexicalBlock(scope: !581, file: !3, line: 96, column: 16)
!587 = !DILocation(line: 97, column: 4, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !3, line: 97, column: 4)
!589 = !DILocation(line: 98, column: 4, scope: !586)
!590 = !DILocation(line: 100, column: 2, scope: !571)
!591 = !DILocation(line: 102, column: 6, scope: !467)
!592 = !DILocation(line: 103, column: 27, scope: !467)
!593 = !DILocation(line: 103, column: 32, scope: !467)
!594 = !DILocation(line: 103, column: 37, scope: !467)
!595 = !DILocation(line: 103, column: 42, scope: !467)
!596 = !DILocation(line: 103, column: 19, scope: !467)
!597 = !DILocation(line: 103, column: 2, scope: !467)
!598 = !DILocation(line: 103, column: 8, scope: !467)
!599 = !DILocation(line: 103, column: 13, scope: !467)
!600 = !DILocation(line: 103, column: 17, scope: !467)
!601 = !DILocation(line: 104, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !467, file: !3, line: 104, column: 6)
!603 = !DILocation(line: 104, column: 13, scope: !602)
!604 = !DILocation(line: 104, column: 18, scope: !602)
!605 = !DILocation(line: 104, column: 6, scope: !467)
!606 = !DILocation(line: 105, column: 3, scope: !602)
!607 = !DILocation(line: 107, column: 22, scope: !467)
!608 = !DILocation(line: 107, column: 27, scope: !467)
!609 = !DILocation(line: 107, column: 2, scope: !467)
!610 = !DILocation(line: 107, column: 8, scope: !467)
!611 = !DILocation(line: 107, column: 13, scope: !467)
!612 = !DILocation(line: 107, column: 20, scope: !467)
!613 = !DILocation(line: 109, column: 30, scope: !467)
!614 = !DILocation(line: 109, column: 35, scope: !467)
!615 = !DILocation(line: 109, column: 43, scope: !467)
!616 = !DILocation(line: 109, column: 48, scope: !467)
!617 = !DILocation(line: 109, column: 22, scope: !467)
!618 = !DILocation(line: 109, column: 2, scope: !467)
!619 = !DILocation(line: 109, column: 8, scope: !467)
!620 = !DILocation(line: 109, column: 13, scope: !467)
!621 = !DILocation(line: 109, column: 20, scope: !467)
!622 = !DILocation(line: 110, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !467, file: !3, line: 110, column: 6)
!624 = !DILocation(line: 110, column: 13, scope: !623)
!625 = !DILocation(line: 110, column: 18, scope: !623)
!626 = !DILocation(line: 110, column: 6, scope: !467)
!627 = !DILocation(line: 111, column: 3, scope: !623)
!628 = !DILocation(line: 113, column: 24, scope: !467)
!629 = !DILocation(line: 113, column: 29, scope: !467)
!630 = !DILocation(line: 113, column: 2, scope: !467)
!631 = !DILocation(line: 113, column: 8, scope: !467)
!632 = !DILocation(line: 113, column: 13, scope: !467)
!633 = !DILocation(line: 113, column: 22, scope: !467)
!634 = !DILocation(line: 114, column: 20, scope: !467)
!635 = !DILocation(line: 114, column: 25, scope: !467)
!636 = !DILocation(line: 114, column: 2, scope: !467)
!637 = !DILocation(line: 114, column: 8, scope: !467)
!638 = !DILocation(line: 114, column: 13, scope: !467)
!639 = !DILocation(line: 114, column: 18, scope: !467)
!640 = !DILocation(line: 117, column: 28, scope: !467)
!641 = !DILocation(line: 117, column: 8, scope: !467)
!642 = !DILocation(line: 117, column: 6, scope: !467)
!643 = !DILocation(line: 118, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !467, file: !3, line: 118, column: 6)
!645 = !DILocation(line: 118, column: 10, scope: !644)
!646 = !DILocation(line: 118, column: 6, scope: !467)
!647 = !DILocation(line: 119, column: 3, scope: !644)
!648 = !DILocation(line: 122, column: 35, scope: !467)
!649 = !DILocation(line: 122, column: 41, scope: !467)
!650 = !DILocation(line: 123, column: 7, scope: !467)
!651 = !DILocation(line: 123, column: 13, scope: !467)
!652 = !DILocation(line: 124, column: 7, scope: !467)
!653 = !DILocation(line: 124, column: 13, scope: !467)
!654 = !DILocation(line: 125, column: 7, scope: !467)
!655 = !DILocation(line: 125, column: 13, scope: !467)
!656 = !DILocation(line: 122, column: 8, scope: !467)
!657 = !DILocation(line: 122, column: 6, scope: !467)
!658 = !DILocation(line: 126, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !467, file: !3, line: 126, column: 6)
!660 = !DILocation(line: 126, column: 6, scope: !659)
!661 = !DILocation(line: 126, column: 6, scope: !467)
!662 = !DILocation(line: 127, column: 17, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !3, line: 126, column: 19)
!664 = !DILocation(line: 127, column: 9, scope: !663)
!665 = !DILocation(line: 127, column: 7, scope: !663)
!666 = !DILocation(line: 128, column: 3, scope: !663)
!667 = !DILocation(line: 130, column: 13, scope: !467)
!668 = !DILocation(line: 130, column: 2, scope: !467)
!669 = !DILocation(line: 130, column: 8, scope: !467)
!670 = !DILocation(line: 130, column: 11, scope: !467)
!671 = !DILocation(line: 133, column: 35, scope: !467)
!672 = !DILocation(line: 133, column: 8, scope: !467)
!673 = !DILocation(line: 133, column: 6, scope: !467)
!674 = !DILocation(line: 134, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !467, file: !3, line: 134, column: 6)
!676 = !DILocation(line: 134, column: 10, scope: !675)
!677 = !DILocation(line: 134, column: 6, scope: !467)
!678 = !DILocation(line: 135, column: 3, scope: !675)
!679 = !DILocation(line: 137, column: 8, scope: !467)
!680 = !DILocation(line: 137, column: 2, scope: !467)
!681 = !DILocation(line: 138, column: 9, scope: !467)
!682 = !DILocation(line: 138, column: 2, scope: !467)
!683 = !DILocation(line: 140, column: 1, scope: !467)
!684 = !DILocation(line: 141, column: 8, scope: !467)
!685 = !DILocation(line: 141, column: 2, scope: !467)
!686 = !DILocation(line: 142, column: 1, scope: !467)
!687 = !DILocation(line: 143, column: 24, scope: !467)
!688 = !DILocation(line: 143, column: 2, scope: !467)
!689 = !DILocation(line: 144, column: 1, scope: !467)
!690 = !DILocation(line: 145, column: 17, scope: !467)
!691 = !DILocation(line: 145, column: 9, scope: !467)
!692 = !DILocation(line: 145, column: 2, scope: !467)
!693 = !DILocation(line: 146, column: 1, scope: !467)
!694 = distinct !DISubprogram(name: "kzalloc", scope: !148, file: !148, line: 719, type: !695, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!158, !258, !159}
!697 = !{!698, !699}
!698 = !DILocalVariable(name: "size", arg: 1, scope: !694, file: !148, line: 719, type: !258)
!699 = !DILocalVariable(name: "flags", arg: 2, scope: !694, file: !148, line: 719, type: !159)
!700 = !DILocation(line: 719, column: 52, scope: !694)
!701 = !DILocation(line: 719, column: 64, scope: !694)
!702 = !DILocation(line: 721, column: 17, scope: !694)
!703 = !DILocation(line: 721, column: 23, scope: !694)
!704 = !DILocation(line: 721, column: 29, scope: !694)
!705 = !DILocation(line: 721, column: 9, scope: !694)
!706 = !DILocation(line: 721, column: 2, scope: !694)
!707 = !DISubprogram(name: "asn1_ber_decoder", scope: !708, file: !708, line: 15, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!708 = !DIFile(filename: "./include/linux/asn1_decoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed918e13853195ee36d649ad69ca85c")
!709 = !DISubroutineType(types: !710)
!710 = !{!252, !711, !158, !262, !258}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_decoder", file: !708, line: 13, flags: DIFlagFwdDecl)
!714 = !DISubprogram(name: "_printk", scope: !715, file: !715, line: 153, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!715 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!716 = !DISubroutineType(types: !717)
!717 = !{!252, !374, null}
!718 = !DISubprogram(name: "kmemdup", scope: !719, file: !719, line: 219, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!719 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!720 = !DISubroutineType(types: !721)
!721 = !{!158, !170, !258, !159}
!722 = !DISubprogram(name: "x509_get_sig_params", scope: !354, file: !354, line: 55, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DISubroutineType(types: !724)
!724 = !{!252, !352}
!725 = !DISubprogram(name: "asymmetric_key_generate_id", scope: !386, file: !386, line: 65, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!726 = !DISubroutineType(types: !727)
!727 = !{!384, !170, !258, !170, !258}
!728 = distinct !DISubprogram(name: "IS_ERR", scope: !729, file: !729, line: 59, type: !730, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !732)
!729 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!730 = !DISubroutineType(types: !731)
!731 = !{!371, !170}
!732 = !{!733}
!733 = !DILocalVariable(name: "ptr", arg: 1, scope: !728, file: !729, line: 59, type: !170)
!734 = !DILocation(line: 59, column: 60, scope: !728)
!735 = !DILocation(line: 61, column: 9, scope: !728)
!736 = !DILocation(line: 61, column: 2, scope: !728)
!737 = distinct !DISubprogram(name: "PTR_ERR", scope: !729, file: !729, line: 49, type: !738, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!169, !170}
!740 = !{!741}
!741 = !DILocalVariable(name: "ptr", arg: 1, scope: !737, file: !729, line: 49, type: !170)
!742 = !DILocation(line: 49, column: 61, scope: !737)
!743 = !DILocation(line: 51, column: 16, scope: !737)
!744 = !DILocation(line: 51, column: 9, scope: !737)
!745 = !DILocation(line: 51, column: 2, scope: !737)
!746 = !DISubprogram(name: "x509_check_for_self_signed", scope: !354, file: !354, line: 56, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = distinct !DISubprogram(name: "ERR_PTR", scope: !729, file: !729, line: 39, type: !748, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!158, !169}
!750 = !{!751}
!751 = !DILocalVariable(name: "error", arg: 1, scope: !747, file: !729, line: 39, type: !169)
!752 = !DILocation(line: 39, column: 48, scope: !747)
!753 = !DILocation(line: 41, column: 18, scope: !747)
!754 = !DILocation(line: 41, column: 9, scope: !747)
!755 = !DILocation(line: 41, column: 2, scope: !747)
!756 = distinct !DISubprogram(name: "x509_note_OID", scope: !3, file: !3, line: 153, type: !757, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{!252, !158, !258, !168, !170, !258}
!759 = !{!760, !761, !762, !763, !764, !765, !766}
!760 = !DILocalVariable(name: "context", arg: 1, scope: !756, file: !3, line: 153, type: !158)
!761 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !756, file: !3, line: 153, type: !258)
!762 = !DILocalVariable(name: "tag", arg: 3, scope: !756, file: !3, line: 154, type: !168)
!763 = !DILocalVariable(name: "value", arg: 4, scope: !756, file: !3, line: 155, type: !170)
!764 = !DILocalVariable(name: "vlen", arg: 5, scope: !756, file: !3, line: 155, type: !258)
!765 = !DILocalVariable(name: "ctx", scope: !756, file: !3, line: 157, type: !475)
!766 = !DILocalVariable(name: "buffer", scope: !767, file: !3, line: 161, type: !769)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 160, column: 32)
!768 = distinct !DILexicalBlock(scope: !756, file: !3, line: 160, column: 6)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 400, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 50)
!772 = !DILocation(line: 153, column: 25, scope: !756)
!773 = !DILocation(line: 153, column: 41, scope: !756)
!774 = !DILocation(line: 154, column: 21, scope: !756)
!775 = !DILocation(line: 155, column: 19, scope: !756)
!776 = !DILocation(line: 155, column: 33, scope: !756)
!777 = !DILocation(line: 157, column: 2, scope: !756)
!778 = !DILocation(line: 157, column: 29, scope: !756)
!779 = !DILocation(line: 157, column: 35, scope: !756)
!780 = !DILocation(line: 159, column: 30, scope: !756)
!781 = !DILocation(line: 159, column: 37, scope: !756)
!782 = !DILocation(line: 159, column: 18, scope: !756)
!783 = !DILocation(line: 159, column: 2, scope: !756)
!784 = !DILocation(line: 159, column: 7, scope: !756)
!785 = !DILocation(line: 159, column: 16, scope: !756)
!786 = !DILocation(line: 160, column: 6, scope: !768)
!787 = !DILocation(line: 160, column: 11, scope: !768)
!788 = !DILocation(line: 160, column: 20, scope: !768)
!789 = !DILocation(line: 160, column: 6, scope: !756)
!790 = !DILocation(line: 161, column: 3, scope: !767)
!791 = !DILocation(line: 161, column: 8, scope: !767)
!792 = !DILocation(line: 162, column: 14, scope: !767)
!793 = !DILocation(line: 162, column: 21, scope: !767)
!794 = !DILocation(line: 162, column: 27, scope: !767)
!795 = !DILocation(line: 162, column: 3, scope: !767)
!796 = !DILocation(line: 163, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 163, column: 3)
!798 = distinct !DILexicalBlock(scope: !767, file: !3, line: 163, column: 3)
!799 = !DILocation(line: 163, column: 3, scope: !798)
!800 = !DILocation(line: 165, column: 2, scope: !768)
!801 = !DILocation(line: 165, column: 2, scope: !767)
!802 = !DILocation(line: 167, column: 1, scope: !756)
!803 = !DILocation(line: 166, column: 2, scope: !756)
!804 = !DISubprogram(name: "look_up_OID", scope: !6, file: !6, line: 147, type: !805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DISubroutineType(types: !806)
!806 = !{!5, !170, !258}
!807 = !DISubprogram(name: "sprint_oid", scope: !6, file: !6, line: 149, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!808 = !DISubroutineType(types: !809)
!809 = !{!252, !170, !258, !405, !258}
!810 = distinct !DISubprogram(name: "x509_note_tbs_certificate", scope: !3, file: !3, line: 173, type: !757, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !811)
!811 = !{!812, !813, !814, !815, !816, !817}
!812 = !DILocalVariable(name: "context", arg: 1, scope: !810, file: !3, line: 173, type: !158)
!813 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !810, file: !3, line: 173, type: !258)
!814 = !DILocalVariable(name: "tag", arg: 3, scope: !810, file: !3, line: 174, type: !168)
!815 = !DILocalVariable(name: "value", arg: 4, scope: !810, file: !3, line: 175, type: !170)
!816 = !DILocalVariable(name: "vlen", arg: 5, scope: !810, file: !3, line: 175, type: !258)
!817 = !DILocalVariable(name: "ctx", scope: !810, file: !3, line: 177, type: !475)
!818 = !DILocation(line: 173, column: 37, scope: !810)
!819 = !DILocation(line: 173, column: 53, scope: !810)
!820 = !DILocation(line: 174, column: 24, scope: !810)
!821 = !DILocation(line: 175, column: 22, scope: !810)
!822 = !DILocation(line: 175, column: 36, scope: !810)
!823 = !DILocation(line: 177, column: 2, scope: !810)
!824 = !DILocation(line: 177, column: 29, scope: !810)
!825 = !DILocation(line: 177, column: 35, scope: !810)
!826 = !DILocation(line: 179, column: 2, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 179, column: 2)
!828 = distinct !DILexicalBlock(scope: !810, file: !3, line: 179, column: 2)
!829 = !DILocation(line: 179, column: 2, scope: !828)
!830 = !DILocation(line: 182, column: 19, scope: !810)
!831 = !DILocation(line: 182, column: 27, scope: !810)
!832 = !DILocation(line: 182, column: 25, scope: !810)
!833 = !DILocation(line: 182, column: 2, scope: !810)
!834 = !DILocation(line: 182, column: 7, scope: !810)
!835 = !DILocation(line: 182, column: 13, scope: !810)
!836 = !DILocation(line: 182, column: 17, scope: !810)
!837 = !DILocation(line: 183, column: 24, scope: !810)
!838 = !DILocation(line: 183, column: 31, scope: !810)
!839 = !DILocation(line: 183, column: 29, scope: !810)
!840 = !DILocation(line: 183, column: 2, scope: !810)
!841 = !DILocation(line: 183, column: 7, scope: !810)
!842 = !DILocation(line: 183, column: 13, scope: !810)
!843 = !DILocation(line: 183, column: 22, scope: !810)
!844 = !DILocation(line: 185, column: 1, scope: !810)
!845 = !DILocation(line: 184, column: 2, scope: !810)
!846 = distinct !DISubprogram(name: "x509_note_sig_algo", scope: !3, file: !3, line: 190, type: !757, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!848 = !DILocalVariable(name: "context", arg: 1, scope: !846, file: !3, line: 190, type: !158)
!849 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !846, file: !3, line: 190, type: !258)
!850 = !DILocalVariable(name: "tag", arg: 3, scope: !846, file: !3, line: 190, type: !168)
!851 = !DILocalVariable(name: "value", arg: 4, scope: !846, file: !3, line: 191, type: !170)
!852 = !DILocalVariable(name: "vlen", arg: 5, scope: !846, file: !3, line: 191, type: !258)
!853 = !DILocalVariable(name: "ctx", scope: !846, file: !3, line: 193, type: !475)
!854 = !DILabel(scope: !846, name: "rsa_pkcs1", file: !3, line: 260)
!855 = !DILabel(scope: !846, name: "ecrdsa", file: !3, line: 265)
!856 = !DILabel(scope: !846, name: "sm2", file: !3, line: 270)
!857 = !DILabel(scope: !846, name: "ecdsa", file: !3, line: 275)
!858 = !DILocation(line: 190, column: 30, scope: !846)
!859 = !DILocation(line: 190, column: 46, scope: !846)
!860 = !DILocation(line: 190, column: 68, scope: !846)
!861 = !DILocation(line: 191, column: 22, scope: !846)
!862 = !DILocation(line: 191, column: 36, scope: !846)
!863 = !DILocation(line: 193, column: 2, scope: !846)
!864 = !DILocation(line: 193, column: 29, scope: !846)
!865 = !DILocation(line: 193, column: 35, scope: !846)
!866 = !DILocation(line: 195, column: 2, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 195, column: 2)
!868 = distinct !DILexicalBlock(scope: !846, file: !3, line: 195, column: 2)
!869 = !DILocation(line: 195, column: 2, scope: !868)
!870 = !DILocation(line: 197, column: 10, scope: !846)
!871 = !DILocation(line: 197, column: 15, scope: !846)
!872 = !DILocation(line: 197, column: 2, scope: !846)
!873 = !DILocation(line: 199, column: 2, scope: !874)
!874 = distinct !DILexicalBlock(scope: !846, file: !3, line: 197, column: 25)
!875 = !DILocation(line: 201, column: 3, scope: !874)
!876 = !DILocation(line: 204, column: 3, scope: !874)
!877 = !DILocation(line: 204, column: 8, scope: !874)
!878 = !DILocation(line: 204, column: 14, scope: !874)
!879 = !DILocation(line: 204, column: 19, scope: !874)
!880 = !DILocation(line: 204, column: 29, scope: !874)
!881 = !DILocation(line: 205, column: 3, scope: !874)
!882 = !DILocation(line: 208, column: 3, scope: !874)
!883 = !DILocation(line: 208, column: 8, scope: !874)
!884 = !DILocation(line: 208, column: 14, scope: !874)
!885 = !DILocation(line: 208, column: 19, scope: !874)
!886 = !DILocation(line: 208, column: 29, scope: !874)
!887 = !DILocation(line: 209, column: 3, scope: !874)
!888 = !DILocation(line: 212, column: 3, scope: !874)
!889 = !DILocation(line: 212, column: 8, scope: !874)
!890 = !DILocation(line: 212, column: 14, scope: !874)
!891 = !DILocation(line: 212, column: 19, scope: !874)
!892 = !DILocation(line: 212, column: 29, scope: !874)
!893 = !DILocation(line: 213, column: 3, scope: !874)
!894 = !DILocation(line: 216, column: 3, scope: !874)
!895 = !DILocation(line: 216, column: 8, scope: !874)
!896 = !DILocation(line: 216, column: 14, scope: !874)
!897 = !DILocation(line: 216, column: 19, scope: !874)
!898 = !DILocation(line: 216, column: 29, scope: !874)
!899 = !DILocation(line: 217, column: 3, scope: !874)
!900 = !DILocation(line: 220, column: 3, scope: !874)
!901 = !DILocation(line: 220, column: 8, scope: !874)
!902 = !DILocation(line: 220, column: 14, scope: !874)
!903 = !DILocation(line: 220, column: 19, scope: !874)
!904 = !DILocation(line: 220, column: 29, scope: !874)
!905 = !DILocation(line: 221, column: 3, scope: !874)
!906 = !DILocation(line: 224, column: 3, scope: !874)
!907 = !DILocation(line: 224, column: 8, scope: !874)
!908 = !DILocation(line: 224, column: 14, scope: !874)
!909 = !DILocation(line: 224, column: 19, scope: !874)
!910 = !DILocation(line: 224, column: 29, scope: !874)
!911 = !DILocation(line: 225, column: 3, scope: !874)
!912 = !DILocation(line: 228, column: 3, scope: !874)
!913 = !DILocation(line: 228, column: 8, scope: !874)
!914 = !DILocation(line: 228, column: 14, scope: !874)
!915 = !DILocation(line: 228, column: 19, scope: !874)
!916 = !DILocation(line: 228, column: 29, scope: !874)
!917 = !DILocation(line: 229, column: 3, scope: !874)
!918 = !DILocation(line: 232, column: 3, scope: !874)
!919 = !DILocation(line: 232, column: 8, scope: !874)
!920 = !DILocation(line: 232, column: 14, scope: !874)
!921 = !DILocation(line: 232, column: 19, scope: !874)
!922 = !DILocation(line: 232, column: 29, scope: !874)
!923 = !DILocation(line: 233, column: 3, scope: !874)
!924 = !DILocation(line: 236, column: 3, scope: !874)
!925 = !DILocation(line: 236, column: 8, scope: !874)
!926 = !DILocation(line: 236, column: 14, scope: !874)
!927 = !DILocation(line: 236, column: 19, scope: !874)
!928 = !DILocation(line: 236, column: 29, scope: !874)
!929 = !DILocation(line: 237, column: 3, scope: !874)
!930 = !DILocation(line: 240, column: 3, scope: !874)
!931 = !DILocation(line: 240, column: 8, scope: !874)
!932 = !DILocation(line: 240, column: 14, scope: !874)
!933 = !DILocation(line: 240, column: 19, scope: !874)
!934 = !DILocation(line: 240, column: 29, scope: !874)
!935 = !DILocation(line: 241, column: 3, scope: !874)
!936 = !DILocation(line: 244, column: 3, scope: !874)
!937 = !DILocation(line: 244, column: 8, scope: !874)
!938 = !DILocation(line: 244, column: 14, scope: !874)
!939 = !DILocation(line: 244, column: 19, scope: !874)
!940 = !DILocation(line: 244, column: 29, scope: !874)
!941 = !DILocation(line: 245, column: 3, scope: !874)
!942 = !DILocation(line: 248, column: 3, scope: !874)
!943 = !DILocation(line: 248, column: 8, scope: !874)
!944 = !DILocation(line: 248, column: 14, scope: !874)
!945 = !DILocation(line: 248, column: 19, scope: !874)
!946 = !DILocation(line: 248, column: 29, scope: !874)
!947 = !DILocation(line: 249, column: 3, scope: !874)
!948 = !DILocation(line: 252, column: 3, scope: !874)
!949 = !DILocation(line: 252, column: 8, scope: !874)
!950 = !DILocation(line: 252, column: 14, scope: !874)
!951 = !DILocation(line: 252, column: 19, scope: !874)
!952 = !DILocation(line: 252, column: 29, scope: !874)
!953 = !DILocation(line: 253, column: 3, scope: !874)
!954 = !DILocation(line: 256, column: 3, scope: !874)
!955 = !DILocation(line: 256, column: 8, scope: !874)
!956 = !DILocation(line: 256, column: 14, scope: !874)
!957 = !DILocation(line: 256, column: 19, scope: !874)
!958 = !DILocation(line: 256, column: 29, scope: !874)
!959 = !DILocation(line: 257, column: 3, scope: !874)
!960 = !DILocation(line: 260, column: 1, scope: !846)
!961 = !DILocation(line: 261, column: 2, scope: !846)
!962 = !DILocation(line: 261, column: 7, scope: !846)
!963 = !DILocation(line: 261, column: 13, scope: !846)
!964 = !DILocation(line: 261, column: 18, scope: !846)
!965 = !DILocation(line: 261, column: 28, scope: !846)
!966 = !DILocation(line: 262, column: 2, scope: !846)
!967 = !DILocation(line: 262, column: 7, scope: !846)
!968 = !DILocation(line: 262, column: 13, scope: !846)
!969 = !DILocation(line: 262, column: 18, scope: !846)
!970 = !DILocation(line: 262, column: 27, scope: !846)
!971 = !DILocation(line: 263, column: 18, scope: !846)
!972 = !DILocation(line: 263, column: 23, scope: !846)
!973 = !DILocation(line: 263, column: 2, scope: !846)
!974 = !DILocation(line: 263, column: 7, scope: !846)
!975 = !DILocation(line: 263, column: 16, scope: !846)
!976 = !DILocation(line: 264, column: 2, scope: !846)
!977 = !DILocation(line: 265, column: 1, scope: !846)
!978 = !DILocation(line: 266, column: 2, scope: !846)
!979 = !DILocation(line: 266, column: 7, scope: !846)
!980 = !DILocation(line: 266, column: 13, scope: !846)
!981 = !DILocation(line: 266, column: 18, scope: !846)
!982 = !DILocation(line: 266, column: 28, scope: !846)
!983 = !DILocation(line: 267, column: 2, scope: !846)
!984 = !DILocation(line: 267, column: 7, scope: !846)
!985 = !DILocation(line: 267, column: 13, scope: !846)
!986 = !DILocation(line: 267, column: 18, scope: !846)
!987 = !DILocation(line: 267, column: 27, scope: !846)
!988 = !DILocation(line: 268, column: 18, scope: !846)
!989 = !DILocation(line: 268, column: 23, scope: !846)
!990 = !DILocation(line: 268, column: 2, scope: !846)
!991 = !DILocation(line: 268, column: 7, scope: !846)
!992 = !DILocation(line: 268, column: 16, scope: !846)
!993 = !DILocation(line: 269, column: 2, scope: !846)
!994 = !DILocation(line: 270, column: 1, scope: !846)
!995 = !DILocation(line: 271, column: 2, scope: !846)
!996 = !DILocation(line: 271, column: 7, scope: !846)
!997 = !DILocation(line: 271, column: 13, scope: !846)
!998 = !DILocation(line: 271, column: 18, scope: !846)
!999 = !DILocation(line: 271, column: 28, scope: !846)
!1000 = !DILocation(line: 272, column: 2, scope: !846)
!1001 = !DILocation(line: 272, column: 7, scope: !846)
!1002 = !DILocation(line: 272, column: 13, scope: !846)
!1003 = !DILocation(line: 272, column: 18, scope: !846)
!1004 = !DILocation(line: 272, column: 27, scope: !846)
!1005 = !DILocation(line: 273, column: 18, scope: !846)
!1006 = !DILocation(line: 273, column: 23, scope: !846)
!1007 = !DILocation(line: 273, column: 2, scope: !846)
!1008 = !DILocation(line: 273, column: 7, scope: !846)
!1009 = !DILocation(line: 273, column: 16, scope: !846)
!1010 = !DILocation(line: 274, column: 2, scope: !846)
!1011 = !DILocation(line: 275, column: 1, scope: !846)
!1012 = !DILocation(line: 276, column: 2, scope: !846)
!1013 = !DILocation(line: 276, column: 7, scope: !846)
!1014 = !DILocation(line: 276, column: 13, scope: !846)
!1015 = !DILocation(line: 276, column: 18, scope: !846)
!1016 = !DILocation(line: 276, column: 28, scope: !846)
!1017 = !DILocation(line: 277, column: 2, scope: !846)
!1018 = !DILocation(line: 277, column: 7, scope: !846)
!1019 = !DILocation(line: 277, column: 13, scope: !846)
!1020 = !DILocation(line: 277, column: 18, scope: !846)
!1021 = !DILocation(line: 277, column: 27, scope: !846)
!1022 = !DILocation(line: 278, column: 18, scope: !846)
!1023 = !DILocation(line: 278, column: 23, scope: !846)
!1024 = !DILocation(line: 278, column: 2, scope: !846)
!1025 = !DILocation(line: 278, column: 7, scope: !846)
!1026 = !DILocation(line: 278, column: 16, scope: !846)
!1027 = !DILocation(line: 279, column: 2, scope: !846)
!1028 = !DILocation(line: 280, column: 1, scope: !846)
!1029 = distinct !DISubprogram(name: "x509_note_signature", scope: !3, file: !3, line: 285, type: !757, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036}
!1031 = !DILocalVariable(name: "context", arg: 1, scope: !1029, file: !3, line: 285, type: !158)
!1032 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1029, file: !3, line: 285, type: !258)
!1033 = !DILocalVariable(name: "tag", arg: 3, scope: !1029, file: !3, line: 286, type: !168)
!1034 = !DILocalVariable(name: "value", arg: 4, scope: !1029, file: !3, line: 287, type: !170)
!1035 = !DILocalVariable(name: "vlen", arg: 5, scope: !1029, file: !3, line: 287, type: !258)
!1036 = !DILocalVariable(name: "ctx", scope: !1029, file: !3, line: 289, type: !475)
!1037 = !DILocation(line: 285, column: 31, scope: !1029)
!1038 = !DILocation(line: 285, column: 47, scope: !1029)
!1039 = !DILocation(line: 286, column: 18, scope: !1029)
!1040 = !DILocation(line: 287, column: 16, scope: !1029)
!1041 = !DILocation(line: 287, column: 30, scope: !1029)
!1042 = !DILocation(line: 289, column: 2, scope: !1029)
!1043 = !DILocation(line: 289, column: 29, scope: !1029)
!1044 = !DILocation(line: 289, column: 35, scope: !1029)
!1045 = !DILocation(line: 291, column: 2, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 291, column: 2)
!1047 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 291, column: 2)
!1048 = !DILocation(line: 291, column: 2, scope: !1047)
!1049 = !DILocation(line: 298, column: 6, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 298, column: 6)
!1051 = !DILocation(line: 298, column: 11, scope: !1050)
!1052 = !DILocation(line: 298, column: 23, scope: !1050)
!1053 = !DILocation(line: 298, column: 28, scope: !1050)
!1054 = !DILocation(line: 298, column: 20, scope: !1050)
!1055 = !DILocation(line: 298, column: 6, scope: !1029)
!1056 = !DILocation(line: 299, column: 3, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 299, column: 3)
!1058 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 298, column: 38)
!1059 = !DILocation(line: 299, column: 3, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 299, column: 3)
!1061 = !DILocation(line: 301, column: 3, scope: !1058)
!1062 = !DILocation(line: 304, column: 13, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 304, column: 6)
!1064 = !DILocation(line: 304, column: 18, scope: !1063)
!1065 = !DILocation(line: 304, column: 24, scope: !1063)
!1066 = !DILocation(line: 304, column: 29, scope: !1063)
!1067 = !DILocation(line: 304, column: 6, scope: !1063)
!1068 = !DILocation(line: 304, column: 47, scope: !1063)
!1069 = !DILocation(line: 304, column: 52, scope: !1063)
!1070 = !DILocation(line: 305, column: 13, scope: !1063)
!1071 = !DILocation(line: 305, column: 18, scope: !1063)
!1072 = !DILocation(line: 305, column: 24, scope: !1063)
!1073 = !DILocation(line: 305, column: 29, scope: !1063)
!1074 = !DILocation(line: 305, column: 6, scope: !1063)
!1075 = !DILocation(line: 305, column: 50, scope: !1063)
!1076 = !DILocation(line: 305, column: 55, scope: !1063)
!1077 = !DILocation(line: 306, column: 13, scope: !1063)
!1078 = !DILocation(line: 306, column: 18, scope: !1063)
!1079 = !DILocation(line: 306, column: 24, scope: !1063)
!1080 = !DILocation(line: 306, column: 29, scope: !1063)
!1081 = !DILocation(line: 306, column: 6, scope: !1063)
!1082 = !DILocation(line: 306, column: 47, scope: !1063)
!1083 = !DILocation(line: 306, column: 52, scope: !1063)
!1084 = !DILocation(line: 307, column: 13, scope: !1063)
!1085 = !DILocation(line: 307, column: 18, scope: !1063)
!1086 = !DILocation(line: 307, column: 24, scope: !1063)
!1087 = !DILocation(line: 307, column: 29, scope: !1063)
!1088 = !DILocation(line: 307, column: 6, scope: !1063)
!1089 = !DILocation(line: 307, column: 49, scope: !1063)
!1090 = !DILocation(line: 304, column: 6, scope: !1029)
!1091 = !DILocation(line: 309, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 309, column: 7)
!1093 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 307, column: 55)
!1094 = !DILocation(line: 309, column: 12, scope: !1092)
!1095 = !DILocation(line: 309, column: 16, scope: !1092)
!1096 = !DILocation(line: 309, column: 32, scope: !1092)
!1097 = !DILocation(line: 309, column: 19, scope: !1092)
!1098 = !DILocation(line: 309, column: 38, scope: !1092)
!1099 = !DILocation(line: 309, column: 7, scope: !1093)
!1100 = !DILocation(line: 310, column: 4, scope: !1092)
!1101 = !DILocation(line: 312, column: 8, scope: !1093)
!1102 = !DILocation(line: 313, column: 7, scope: !1093)
!1103 = !DILocation(line: 314, column: 2, scope: !1093)
!1104 = !DILocation(line: 316, column: 23, scope: !1029)
!1105 = !DILocation(line: 316, column: 2, scope: !1029)
!1106 = !DILocation(line: 316, column: 7, scope: !1029)
!1107 = !DILocation(line: 316, column: 13, scope: !1029)
!1108 = !DILocation(line: 316, column: 21, scope: !1029)
!1109 = !DILocation(line: 317, column: 28, scope: !1029)
!1110 = !DILocation(line: 317, column: 2, scope: !1029)
!1111 = !DILocation(line: 317, column: 7, scope: !1029)
!1112 = !DILocation(line: 317, column: 13, scope: !1029)
!1113 = !DILocation(line: 317, column: 26, scope: !1029)
!1114 = !DILocation(line: 318, column: 2, scope: !1029)
!1115 = !DILocation(line: 319, column: 1, scope: !1029)
!1116 = !DISubprogram(name: "strcmp", scope: !719, file: !719, line: 88, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!252, !374, !374}
!1119 = distinct !DISubprogram(name: "x509_note_serial", scope: !3, file: !3, line: 324, type: !757, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126}
!1121 = !DILocalVariable(name: "context", arg: 1, scope: !1119, file: !3, line: 324, type: !158)
!1122 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1119, file: !3, line: 324, type: !258)
!1123 = !DILocalVariable(name: "tag", arg: 3, scope: !1119, file: !3, line: 325, type: !168)
!1124 = !DILocalVariable(name: "value", arg: 4, scope: !1119, file: !3, line: 326, type: !170)
!1125 = !DILocalVariable(name: "vlen", arg: 5, scope: !1119, file: !3, line: 326, type: !258)
!1126 = !DILocalVariable(name: "ctx", scope: !1119, file: !3, line: 328, type: !475)
!1127 = !DILocation(line: 324, column: 28, scope: !1119)
!1128 = !DILocation(line: 324, column: 44, scope: !1119)
!1129 = !DILocation(line: 325, column: 22, scope: !1119)
!1130 = !DILocation(line: 326, column: 20, scope: !1119)
!1131 = !DILocation(line: 326, column: 34, scope: !1119)
!1132 = !DILocation(line: 328, column: 2, scope: !1119)
!1133 = !DILocation(line: 328, column: 29, scope: !1119)
!1134 = !DILocation(line: 328, column: 35, scope: !1119)
!1135 = !DILocation(line: 329, column: 26, scope: !1119)
!1136 = !DILocation(line: 329, column: 2, scope: !1119)
!1137 = !DILocation(line: 329, column: 7, scope: !1119)
!1138 = !DILocation(line: 329, column: 13, scope: !1119)
!1139 = !DILocation(line: 329, column: 24, scope: !1119)
!1140 = !DILocation(line: 330, column: 31, scope: !1119)
!1141 = !DILocation(line: 330, column: 2, scope: !1119)
!1142 = !DILocation(line: 330, column: 7, scope: !1119)
!1143 = !DILocation(line: 330, column: 13, scope: !1119)
!1144 = !DILocation(line: 330, column: 29, scope: !1119)
!1145 = !DILocation(line: 332, column: 1, scope: !1119)
!1146 = !DILocation(line: 331, column: 2, scope: !1119)
!1147 = distinct !DISubprogram(name: "x509_extract_name_segment", scope: !3, file: !3, line: 337, type: !757, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154}
!1149 = !DILocalVariable(name: "context", arg: 1, scope: !1147, file: !3, line: 337, type: !158)
!1150 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1147, file: !3, line: 337, type: !258)
!1151 = !DILocalVariable(name: "tag", arg: 3, scope: !1147, file: !3, line: 338, type: !168)
!1152 = !DILocalVariable(name: "value", arg: 4, scope: !1147, file: !3, line: 339, type: !170)
!1153 = !DILocalVariable(name: "vlen", arg: 5, scope: !1147, file: !3, line: 339, type: !258)
!1154 = !DILocalVariable(name: "ctx", scope: !1147, file: !3, line: 341, type: !475)
!1155 = !DILocation(line: 337, column: 37, scope: !1147)
!1156 = !DILocation(line: 337, column: 53, scope: !1147)
!1157 = !DILocation(line: 338, column: 24, scope: !1147)
!1158 = !DILocation(line: 339, column: 22, scope: !1147)
!1159 = !DILocation(line: 339, column: 36, scope: !1147)
!1160 = !DILocation(line: 341, column: 2, scope: !1147)
!1161 = !DILocation(line: 341, column: 29, scope: !1147)
!1162 = !DILocation(line: 341, column: 35, scope: !1147)
!1163 = !DILocation(line: 343, column: 10, scope: !1147)
!1164 = !DILocation(line: 343, column: 15, scope: !1147)
!1165 = !DILocation(line: 343, column: 2, scope: !1147)
!1166 = !DILocation(line: 345, column: 18, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 343, column: 25)
!1168 = !DILocation(line: 345, column: 3, scope: !1167)
!1169 = !DILocation(line: 345, column: 8, scope: !1167)
!1170 = !DILocation(line: 345, column: 16, scope: !1167)
!1171 = !DILocation(line: 346, column: 35, scope: !1167)
!1172 = !DILocation(line: 346, column: 20, scope: !1167)
!1173 = !DILocation(line: 346, column: 43, scope: !1167)
!1174 = !DILocation(line: 346, column: 48, scope: !1167)
!1175 = !DILocation(line: 346, column: 41, scope: !1167)
!1176 = !DILocation(line: 346, column: 3, scope: !1167)
!1177 = !DILocation(line: 346, column: 8, scope: !1167)
!1178 = !DILocation(line: 346, column: 18, scope: !1167)
!1179 = !DILocation(line: 347, column: 3, scope: !1167)
!1180 = !DILocation(line: 349, column: 17, scope: !1167)
!1181 = !DILocation(line: 349, column: 3, scope: !1167)
!1182 = !DILocation(line: 349, column: 8, scope: !1167)
!1183 = !DILocation(line: 349, column: 15, scope: !1167)
!1184 = !DILocation(line: 350, column: 34, scope: !1167)
!1185 = !DILocation(line: 350, column: 19, scope: !1167)
!1186 = !DILocation(line: 350, column: 42, scope: !1167)
!1187 = !DILocation(line: 350, column: 47, scope: !1167)
!1188 = !DILocation(line: 350, column: 40, scope: !1167)
!1189 = !DILocation(line: 350, column: 3, scope: !1167)
!1190 = !DILocation(line: 350, column: 8, scope: !1167)
!1191 = !DILocation(line: 350, column: 17, scope: !1167)
!1192 = !DILocation(line: 351, column: 3, scope: !1167)
!1193 = !DILocation(line: 353, column: 21, scope: !1167)
!1194 = !DILocation(line: 353, column: 3, scope: !1167)
!1195 = !DILocation(line: 353, column: 8, scope: !1167)
!1196 = !DILocation(line: 353, column: 19, scope: !1167)
!1197 = !DILocation(line: 354, column: 38, scope: !1167)
!1198 = !DILocation(line: 354, column: 23, scope: !1167)
!1199 = !DILocation(line: 354, column: 46, scope: !1167)
!1200 = !DILocation(line: 354, column: 51, scope: !1167)
!1201 = !DILocation(line: 354, column: 44, scope: !1167)
!1202 = !DILocation(line: 354, column: 3, scope: !1167)
!1203 = !DILocation(line: 354, column: 8, scope: !1167)
!1204 = !DILocation(line: 354, column: 21, scope: !1167)
!1205 = !DILocation(line: 355, column: 3, scope: !1167)
!1206 = !DILocation(line: 357, column: 3, scope: !1167)
!1207 = !DILocation(line: 361, column: 1, scope: !1147)
!1208 = !DILocation(line: 360, column: 2, scope: !1147)
!1209 = distinct !DISubprogram(name: "x509_note_issuer", scope: !3, file: !3, line: 441, type: !757, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217}
!1211 = !DILocalVariable(name: "context", arg: 1, scope: !1209, file: !3, line: 441, type: !158)
!1212 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1209, file: !3, line: 441, type: !258)
!1213 = !DILocalVariable(name: "tag", arg: 3, scope: !1209, file: !3, line: 442, type: !168)
!1214 = !DILocalVariable(name: "value", arg: 4, scope: !1209, file: !3, line: 443, type: !170)
!1215 = !DILocalVariable(name: "vlen", arg: 5, scope: !1209, file: !3, line: 443, type: !258)
!1216 = !DILocalVariable(name: "ctx", scope: !1209, file: !3, line: 445, type: !475)
!1217 = !DILocalVariable(name: "kid", scope: !1209, file: !3, line: 446, type: !384)
!1218 = !DILocation(line: 441, column: 28, scope: !1209)
!1219 = !DILocation(line: 441, column: 44, scope: !1209)
!1220 = !DILocation(line: 442, column: 22, scope: !1209)
!1221 = !DILocation(line: 443, column: 20, scope: !1209)
!1222 = !DILocation(line: 443, column: 34, scope: !1209)
!1223 = !DILocation(line: 445, column: 2, scope: !1209)
!1224 = !DILocation(line: 445, column: 29, scope: !1209)
!1225 = !DILocation(line: 445, column: 35, scope: !1209)
!1226 = !DILocation(line: 446, column: 2, scope: !1209)
!1227 = !DILocation(line: 446, column: 28, scope: !1209)
!1228 = !DILocation(line: 448, column: 26, scope: !1209)
!1229 = !DILocation(line: 448, column: 2, scope: !1209)
!1230 = !DILocation(line: 448, column: 7, scope: !1209)
!1231 = !DILocation(line: 448, column: 13, scope: !1209)
!1232 = !DILocation(line: 448, column: 24, scope: !1209)
!1233 = !DILocation(line: 449, column: 31, scope: !1209)
!1234 = !DILocation(line: 449, column: 2, scope: !1209)
!1235 = !DILocation(line: 449, column: 7, scope: !1209)
!1236 = !DILocation(line: 449, column: 13, scope: !1209)
!1237 = !DILocation(line: 449, column: 29, scope: !1209)
!1238 = !DILocation(line: 451, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 451, column: 6)
!1240 = !DILocation(line: 451, column: 12, scope: !1239)
!1241 = !DILocation(line: 451, column: 18, scope: !1239)
!1242 = !DILocation(line: 451, column: 23, scope: !1239)
!1243 = !DILocation(line: 451, column: 6, scope: !1209)
!1244 = !DILocation(line: 452, column: 36, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 451, column: 36)
!1246 = !DILocation(line: 452, column: 43, scope: !1245)
!1247 = !DILocation(line: 452, column: 9, scope: !1245)
!1248 = !DILocation(line: 452, column: 7, scope: !1245)
!1249 = !DILocation(line: 453, column: 14, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 453, column: 7)
!1251 = !DILocation(line: 453, column: 7, scope: !1250)
!1252 = !DILocation(line: 453, column: 7, scope: !1245)
!1253 = !DILocation(line: 454, column: 19, scope: !1250)
!1254 = !DILocation(line: 454, column: 11, scope: !1250)
!1255 = !DILocation(line: 454, column: 4, scope: !1250)
!1256 = !DILocation(line: 455, column: 33, scope: !1245)
!1257 = !DILocation(line: 455, column: 3, scope: !1245)
!1258 = !DILocation(line: 455, column: 8, scope: !1245)
!1259 = !DILocation(line: 455, column: 14, scope: !1245)
!1260 = !DILocation(line: 455, column: 19, scope: !1245)
!1261 = !DILocation(line: 455, column: 31, scope: !1245)
!1262 = !DILocation(line: 456, column: 2, scope: !1245)
!1263 = !DILocation(line: 458, column: 29, scope: !1209)
!1264 = !DILocation(line: 458, column: 34, scope: !1209)
!1265 = !DILocation(line: 458, column: 42, scope: !1209)
!1266 = !DILocation(line: 458, column: 48, scope: !1209)
!1267 = !DILocation(line: 458, column: 53, scope: !1209)
!1268 = !DILocation(line: 458, column: 59, scope: !1209)
!1269 = !DILocation(line: 458, column: 67, scope: !1209)
!1270 = !DILocation(line: 458, column: 9, scope: !1209)
!1271 = !DILocation(line: 458, column: 2, scope: !1209)
!1272 = !DILocation(line: 459, column: 1, scope: !1209)
!1273 = distinct !DISubprogram(name: "x509_fabricate_name", scope: !3, file: !3, line: 366, type: !1274, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!252, !475, !258, !168, !1276, !258}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1278 = !DILocalVariable(name: "ctx", arg: 1, scope: !1273, file: !3, line: 366, type: !475)
!1279 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1273, file: !3, line: 366, type: !258)
!1280 = !DILocalVariable(name: "tag", arg: 3, scope: !1273, file: !3, line: 367, type: !168)
!1281 = !DILocalVariable(name: "_name", arg: 4, scope: !1273, file: !3, line: 368, type: !1276)
!1282 = !DILocalVariable(name: "vlen", arg: 5, scope: !1273, file: !3, line: 368, type: !258)
!1283 = !DILocalVariable(name: "name", scope: !1273, file: !3, line: 370, type: !170)
!1284 = !DILocalVariable(name: "data", scope: !1273, file: !3, line: 370, type: !170)
!1285 = !DILocalVariable(name: "namesize", scope: !1273, file: !3, line: 371, type: !258)
!1286 = !DILocalVariable(name: "buffer", scope: !1273, file: !3, line: 372, type: !405)
!1287 = !DILabel(scope: !1273, name: "single_component", file: !3, line: 426)
!1288 = !DILabel(scope: !1273, name: "done", file: !3, line: 433)
!1289 = !DILocation(line: 366, column: 59, scope: !1273)
!1290 = !DILocation(line: 366, column: 71, scope: !1273)
!1291 = !DILocation(line: 367, column: 25, scope: !1273)
!1292 = !DILocation(line: 368, column: 18, scope: !1273)
!1293 = !DILocation(line: 368, column: 32, scope: !1273)
!1294 = !DILocation(line: 370, column: 2, scope: !1273)
!1295 = !DILocation(line: 370, column: 14, scope: !1273)
!1296 = !DILocation(line: 370, column: 21, scope: !1273)
!1297 = !DILocation(line: 370, column: 42, scope: !1273)
!1298 = !DILocation(line: 370, column: 47, scope: !1273)
!1299 = !DILocation(line: 370, column: 28, scope: !1273)
!1300 = !DILocation(line: 371, column: 2, scope: !1273)
!1301 = !DILocation(line: 371, column: 9, scope: !1273)
!1302 = !DILocation(line: 372, column: 2, scope: !1273)
!1303 = !DILocation(line: 372, column: 8, scope: !1273)
!1304 = !DILocation(line: 374, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 374, column: 6)
!1306 = !DILocation(line: 374, column: 6, scope: !1305)
!1307 = !DILocation(line: 374, column: 6, scope: !1273)
!1308 = !DILocation(line: 375, column: 3, scope: !1305)
!1309 = !DILocation(line: 378, column: 7, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 378, column: 6)
!1311 = !DILocation(line: 378, column: 12, scope: !1310)
!1312 = !DILocation(line: 378, column: 20, scope: !1310)
!1313 = !DILocation(line: 378, column: 24, scope: !1310)
!1314 = !DILocation(line: 378, column: 29, scope: !1310)
!1315 = !DILocation(line: 378, column: 36, scope: !1310)
!1316 = !DILocation(line: 378, column: 40, scope: !1310)
!1317 = !DILocation(line: 378, column: 45, scope: !1310)
!1318 = !DILocation(line: 378, column: 6, scope: !1273)
!1319 = !DILocation(line: 379, column: 12, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 378, column: 57)
!1321 = !DILocation(line: 379, column: 10, scope: !1320)
!1322 = !DILocation(line: 380, column: 8, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 380, column: 7)
!1324 = !DILocation(line: 380, column: 7, scope: !1320)
!1325 = !DILocation(line: 381, column: 4, scope: !1323)
!1326 = !DILocation(line: 382, column: 3, scope: !1320)
!1327 = !DILocation(line: 382, column: 13, scope: !1320)
!1328 = !DILocation(line: 383, column: 3, scope: !1320)
!1329 = !DILocation(line: 386, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 386, column: 6)
!1331 = !DILocation(line: 386, column: 11, scope: !1330)
!1332 = !DILocation(line: 386, column: 19, scope: !1330)
!1333 = !DILocation(line: 386, column: 22, scope: !1330)
!1334 = !DILocation(line: 386, column: 27, scope: !1330)
!1335 = !DILocation(line: 386, column: 6, scope: !1273)
!1336 = !DILocation(line: 390, column: 14, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 386, column: 35)
!1338 = !DILocation(line: 390, column: 19, scope: !1337)
!1339 = !DILocation(line: 390, column: 12, scope: !1337)
!1340 = !DILocation(line: 391, column: 10, scope: !1337)
!1341 = !DILocation(line: 391, column: 17, scope: !1337)
!1342 = !DILocation(line: 391, column: 22, scope: !1337)
!1343 = !DILocation(line: 391, column: 15, scope: !1337)
!1344 = !DILocation(line: 391, column: 8, scope: !1337)
!1345 = !DILocation(line: 392, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 392, column: 7)
!1347 = !DILocation(line: 392, column: 12, scope: !1346)
!1348 = !DILocation(line: 392, column: 23, scope: !1346)
!1349 = !DILocation(line: 392, column: 28, scope: !1346)
!1350 = !DILocation(line: 392, column: 20, scope: !1346)
!1351 = !DILocation(line: 392, column: 35, scope: !1346)
!1352 = !DILocation(line: 393, column: 14, scope: !1346)
!1353 = !DILocation(line: 393, column: 21, scope: !1346)
!1354 = !DILocation(line: 393, column: 26, scope: !1346)
!1355 = !DILocation(line: 393, column: 19, scope: !1346)
!1356 = !DILocation(line: 393, column: 37, scope: !1346)
!1357 = !DILocation(line: 393, column: 44, scope: !1346)
!1358 = !DILocation(line: 393, column: 49, scope: !1346)
!1359 = !DILocation(line: 393, column: 42, scope: !1346)
!1360 = !DILocation(line: 394, column: 7, scope: !1346)
!1361 = !DILocation(line: 394, column: 12, scope: !1346)
!1362 = !DILocation(line: 393, column: 7, scope: !1346)
!1363 = !DILocation(line: 394, column: 20, scope: !1346)
!1364 = !DILocation(line: 392, column: 7, scope: !1337)
!1365 = !DILocation(line: 395, column: 4, scope: !1346)
!1366 = !DILocation(line: 396, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 396, column: 7)
!1368 = !DILocation(line: 396, column: 12, scope: !1367)
!1369 = !DILocation(line: 396, column: 20, scope: !1367)
!1370 = !DILocation(line: 396, column: 25, scope: !1367)
!1371 = !DILocation(line: 397, column: 7, scope: !1367)
!1372 = !DILocation(line: 397, column: 12, scope: !1367)
!1373 = !DILocation(line: 397, column: 19, scope: !1367)
!1374 = !DILocation(line: 397, column: 24, scope: !1367)
!1375 = !DILocation(line: 398, column: 14, scope: !1367)
!1376 = !DILocation(line: 398, column: 21, scope: !1367)
!1377 = !DILocation(line: 398, column: 26, scope: !1367)
!1378 = !DILocation(line: 398, column: 19, scope: !1367)
!1379 = !DILocation(line: 398, column: 37, scope: !1367)
!1380 = !DILocation(line: 398, column: 44, scope: !1367)
!1381 = !DILocation(line: 398, column: 49, scope: !1367)
!1382 = !DILocation(line: 398, column: 42, scope: !1367)
!1383 = !DILocation(line: 398, column: 7, scope: !1367)
!1384 = !DILocation(line: 398, column: 62, scope: !1367)
!1385 = !DILocation(line: 396, column: 7, scope: !1337)
!1386 = !DILocation(line: 399, column: 4, scope: !1367)
!1387 = !DILocation(line: 401, column: 20, scope: !1337)
!1388 = !DILocation(line: 401, column: 25, scope: !1337)
!1389 = !DILocation(line: 401, column: 32, scope: !1337)
!1390 = !DILocation(line: 401, column: 38, scope: !1337)
!1391 = !DILocation(line: 401, column: 43, scope: !1337)
!1392 = !DILocation(line: 401, column: 36, scope: !1337)
!1393 = !DILocation(line: 401, column: 51, scope: !1337)
!1394 = !DILocation(line: 401, column: 12, scope: !1337)
!1395 = !DILocation(line: 401, column: 10, scope: !1337)
!1396 = !DILocation(line: 403, column: 8, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 403, column: 7)
!1398 = !DILocation(line: 403, column: 7, scope: !1337)
!1399 = !DILocation(line: 404, column: 4, scope: !1397)
!1400 = !DILocation(line: 406, column: 10, scope: !1337)
!1401 = !DILocation(line: 407, column: 10, scope: !1337)
!1402 = !DILocation(line: 407, column: 17, scope: !1337)
!1403 = !DILocation(line: 407, column: 22, scope: !1337)
!1404 = !DILocation(line: 407, column: 15, scope: !1337)
!1405 = !DILocation(line: 407, column: 32, scope: !1337)
!1406 = !DILocation(line: 407, column: 37, scope: !1337)
!1407 = !DILocation(line: 406, column: 3, scope: !1337)
!1408 = !DILocation(line: 408, column: 3, scope: !1337)
!1409 = !DILocation(line: 408, column: 10, scope: !1337)
!1410 = !DILocation(line: 408, column: 15, scope: !1337)
!1411 = !DILocation(line: 408, column: 22, scope: !1337)
!1412 = !DILocation(line: 408, column: 27, scope: !1337)
!1413 = !DILocation(line: 409, column: 3, scope: !1337)
!1414 = !DILocation(line: 409, column: 10, scope: !1337)
!1415 = !DILocation(line: 409, column: 15, scope: !1337)
!1416 = !DILocation(line: 409, column: 22, scope: !1337)
!1417 = !DILocation(line: 409, column: 27, scope: !1337)
!1418 = !DILocation(line: 410, column: 10, scope: !1337)
!1419 = !DILocation(line: 410, column: 19, scope: !1337)
!1420 = !DILocation(line: 410, column: 24, scope: !1337)
!1421 = !DILocation(line: 410, column: 17, scope: !1337)
!1422 = !DILocation(line: 410, column: 31, scope: !1337)
!1423 = !DILocation(line: 411, column: 10, scope: !1337)
!1424 = !DILocation(line: 411, column: 17, scope: !1337)
!1425 = !DILocation(line: 411, column: 22, scope: !1337)
!1426 = !DILocation(line: 411, column: 15, scope: !1337)
!1427 = !DILocation(line: 411, column: 33, scope: !1337)
!1428 = !DILocation(line: 411, column: 38, scope: !1337)
!1429 = !DILocation(line: 410, column: 3, scope: !1337)
!1430 = !DILocation(line: 412, column: 3, scope: !1337)
!1431 = !DILocation(line: 412, column: 10, scope: !1337)
!1432 = !DILocation(line: 412, column: 15, scope: !1337)
!1433 = !DILocation(line: 412, column: 22, scope: !1337)
!1434 = !DILocation(line: 412, column: 28, scope: !1337)
!1435 = !DILocation(line: 412, column: 33, scope: !1337)
!1436 = !DILocation(line: 412, column: 26, scope: !1337)
!1437 = !DILocation(line: 412, column: 42, scope: !1337)
!1438 = !DILocation(line: 413, column: 3, scope: !1337)
!1439 = !DILocation(line: 415, column: 13, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 415, column: 13)
!1441 = !DILocation(line: 415, column: 18, scope: !1440)
!1442 = !DILocation(line: 415, column: 13, scope: !1330)
!1443 = !DILocation(line: 416, column: 14, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 415, column: 27)
!1445 = !DILocation(line: 416, column: 19, scope: !1444)
!1446 = !DILocation(line: 416, column: 12, scope: !1444)
!1447 = !DILocation(line: 417, column: 10, scope: !1444)
!1448 = !DILocation(line: 417, column: 17, scope: !1444)
!1449 = !DILocation(line: 417, column: 22, scope: !1444)
!1450 = !DILocation(line: 417, column: 15, scope: !1444)
!1451 = !DILocation(line: 417, column: 8, scope: !1444)
!1452 = !DILocation(line: 418, column: 2, scope: !1444)
!1453 = !DILocation(line: 418, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 418, column: 13)
!1455 = !DILocation(line: 418, column: 18, scope: !1454)
!1456 = !DILocation(line: 418, column: 13, scope: !1440)
!1457 = !DILocation(line: 419, column: 14, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 418, column: 26)
!1459 = !DILocation(line: 419, column: 19, scope: !1458)
!1460 = !DILocation(line: 419, column: 12, scope: !1458)
!1461 = !DILocation(line: 420, column: 10, scope: !1458)
!1462 = !DILocation(line: 420, column: 17, scope: !1458)
!1463 = !DILocation(line: 420, column: 22, scope: !1458)
!1464 = !DILocation(line: 420, column: 15, scope: !1458)
!1465 = !DILocation(line: 420, column: 8, scope: !1458)
!1466 = !DILocation(line: 421, column: 2, scope: !1458)
!1467 = !DILocation(line: 422, column: 14, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 421, column: 9)
!1469 = !DILocation(line: 422, column: 19, scope: !1468)
!1470 = !DILocation(line: 422, column: 12, scope: !1468)
!1471 = !DILocation(line: 423, column: 10, scope: !1468)
!1472 = !DILocation(line: 423, column: 17, scope: !1468)
!1473 = !DILocation(line: 423, column: 22, scope: !1468)
!1474 = !DILocation(line: 423, column: 15, scope: !1468)
!1475 = !DILocation(line: 423, column: 8, scope: !1468)
!1476 = !DILocation(line: 426, column: 1, scope: !1273)
!1477 = !DILocation(line: 427, column: 19, scope: !1273)
!1478 = !DILocation(line: 427, column: 28, scope: !1273)
!1479 = !DILocation(line: 427, column: 11, scope: !1273)
!1480 = !DILocation(line: 427, column: 9, scope: !1273)
!1481 = !DILocation(line: 428, column: 7, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 428, column: 6)
!1483 = !DILocation(line: 428, column: 6, scope: !1273)
!1484 = !DILocation(line: 429, column: 3, scope: !1482)
!1485 = !DILocation(line: 430, column: 9, scope: !1273)
!1486 = !DILocation(line: 430, column: 17, scope: !1273)
!1487 = !DILocation(line: 430, column: 23, scope: !1273)
!1488 = !DILocation(line: 430, column: 2, scope: !1273)
!1489 = !DILocation(line: 431, column: 2, scope: !1273)
!1490 = !DILocation(line: 431, column: 9, scope: !1273)
!1491 = !DILocation(line: 431, column: 19, scope: !1273)
!1492 = !DILocation(line: 433, column: 1, scope: !1273)
!1493 = !DILocation(line: 434, column: 11, scope: !1273)
!1494 = !DILocation(line: 434, column: 3, scope: !1273)
!1495 = !DILocation(line: 434, column: 9, scope: !1273)
!1496 = !DILocation(line: 435, column: 2, scope: !1273)
!1497 = !DILocation(line: 435, column: 7, scope: !1273)
!1498 = !DILocation(line: 435, column: 15, scope: !1273)
!1499 = !DILocation(line: 436, column: 2, scope: !1273)
!1500 = !DILocation(line: 436, column: 7, scope: !1273)
!1501 = !DILocation(line: 436, column: 14, scope: !1273)
!1502 = !DILocation(line: 437, column: 2, scope: !1273)
!1503 = !DILocation(line: 437, column: 7, scope: !1273)
!1504 = !DILocation(line: 437, column: 18, scope: !1273)
!1505 = !DILocation(line: 438, column: 2, scope: !1273)
!1506 = !DILocation(line: 439, column: 1, scope: !1273)
!1507 = distinct !DISubprogram(name: "x509_note_subject", scope: !3, file: !3, line: 461, type: !757, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514}
!1509 = !DILocalVariable(name: "context", arg: 1, scope: !1507, file: !3, line: 461, type: !158)
!1510 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1507, file: !3, line: 461, type: !258)
!1511 = !DILocalVariable(name: "tag", arg: 3, scope: !1507, file: !3, line: 462, type: !168)
!1512 = !DILocalVariable(name: "value", arg: 4, scope: !1507, file: !3, line: 463, type: !170)
!1513 = !DILocalVariable(name: "vlen", arg: 5, scope: !1507, file: !3, line: 463, type: !258)
!1514 = !DILocalVariable(name: "ctx", scope: !1507, file: !3, line: 465, type: !475)
!1515 = !DILocation(line: 461, column: 29, scope: !1507)
!1516 = !DILocation(line: 461, column: 45, scope: !1507)
!1517 = !DILocation(line: 462, column: 23, scope: !1507)
!1518 = !DILocation(line: 463, column: 21, scope: !1507)
!1519 = !DILocation(line: 463, column: 35, scope: !1507)
!1520 = !DILocation(line: 465, column: 2, scope: !1507)
!1521 = !DILocation(line: 465, column: 29, scope: !1507)
!1522 = !DILocation(line: 465, column: 35, scope: !1507)
!1523 = !DILocation(line: 466, column: 27, scope: !1507)
!1524 = !DILocation(line: 466, column: 2, scope: !1507)
!1525 = !DILocation(line: 466, column: 7, scope: !1507)
!1526 = !DILocation(line: 466, column: 13, scope: !1507)
!1527 = !DILocation(line: 466, column: 25, scope: !1507)
!1528 = !DILocation(line: 467, column: 32, scope: !1507)
!1529 = !DILocation(line: 467, column: 2, scope: !1507)
!1530 = !DILocation(line: 467, column: 7, scope: !1507)
!1531 = !DILocation(line: 467, column: 13, scope: !1507)
!1532 = !DILocation(line: 467, column: 30, scope: !1507)
!1533 = !DILocation(line: 468, column: 29, scope: !1507)
!1534 = !DILocation(line: 468, column: 34, scope: !1507)
!1535 = !DILocation(line: 468, column: 42, scope: !1507)
!1536 = !DILocation(line: 468, column: 48, scope: !1507)
!1537 = !DILocation(line: 468, column: 53, scope: !1507)
!1538 = !DILocation(line: 468, column: 59, scope: !1507)
!1539 = !DILocation(line: 468, column: 68, scope: !1507)
!1540 = !DILocation(line: 468, column: 9, scope: !1507)
!1541 = !DILocation(line: 469, column: 1, scope: !1507)
!1542 = !DILocation(line: 468, column: 2, scope: !1507)
!1543 = distinct !DISubprogram(name: "x509_note_params", scope: !3, file: !3, line: 474, type: !757, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550}
!1545 = !DILocalVariable(name: "context", arg: 1, scope: !1543, file: !3, line: 474, type: !158)
!1546 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1543, file: !3, line: 474, type: !258)
!1547 = !DILocalVariable(name: "tag", arg: 3, scope: !1543, file: !3, line: 475, type: !168)
!1548 = !DILocalVariable(name: "value", arg: 4, scope: !1543, file: !3, line: 476, type: !170)
!1549 = !DILocalVariable(name: "vlen", arg: 5, scope: !1543, file: !3, line: 476, type: !258)
!1550 = !DILocalVariable(name: "ctx", scope: !1543, file: !3, line: 478, type: !475)
!1551 = !DILocation(line: 474, column: 28, scope: !1543)
!1552 = !DILocation(line: 474, column: 44, scope: !1543)
!1553 = !DILocation(line: 475, column: 22, scope: !1543)
!1554 = !DILocation(line: 476, column: 20, scope: !1543)
!1555 = !DILocation(line: 476, column: 34, scope: !1543)
!1556 = !DILocation(line: 478, column: 2, scope: !1543)
!1557 = !DILocation(line: 478, column: 29, scope: !1543)
!1558 = !DILocation(line: 478, column: 35, scope: !1543)
!1559 = !DILocation(line: 485, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 485, column: 6)
!1561 = !DILocation(line: 485, column: 12, scope: !1560)
!1562 = !DILocation(line: 485, column: 18, scope: !1560)
!1563 = !DILocation(line: 485, column: 30, scope: !1560)
!1564 = !DILocation(line: 485, column: 33, scope: !1560)
!1565 = !DILocation(line: 485, column: 38, scope: !1560)
!1566 = !DILocation(line: 485, column: 6, scope: !1543)
!1567 = !DILocation(line: 486, column: 3, scope: !1560)
!1568 = !DILocation(line: 487, column: 16, scope: !1543)
!1569 = !DILocation(line: 487, column: 24, scope: !1543)
!1570 = !DILocation(line: 487, column: 22, scope: !1543)
!1571 = !DILocation(line: 487, column: 2, scope: !1543)
!1572 = !DILocation(line: 487, column: 7, scope: !1543)
!1573 = !DILocation(line: 487, column: 14, scope: !1543)
!1574 = !DILocation(line: 488, column: 21, scope: !1543)
!1575 = !DILocation(line: 488, column: 28, scope: !1543)
!1576 = !DILocation(line: 488, column: 26, scope: !1543)
!1577 = !DILocation(line: 488, column: 2, scope: !1543)
!1578 = !DILocation(line: 488, column: 7, scope: !1543)
!1579 = !DILocation(line: 488, column: 19, scope: !1543)
!1580 = !DILocation(line: 489, column: 2, scope: !1543)
!1581 = !DILocation(line: 490, column: 1, scope: !1543)
!1582 = distinct !DISubprogram(name: "x509_extract_key_data", scope: !3, file: !3, line: 495, type: !757, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1584 = !DILocalVariable(name: "context", arg: 1, scope: !1582, file: !3, line: 495, type: !158)
!1585 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1582, file: !3, line: 495, type: !258)
!1586 = !DILocalVariable(name: "tag", arg: 3, scope: !1582, file: !3, line: 496, type: !168)
!1587 = !DILocalVariable(name: "value", arg: 4, scope: !1582, file: !3, line: 497, type: !170)
!1588 = !DILocalVariable(name: "vlen", arg: 5, scope: !1582, file: !3, line: 497, type: !258)
!1589 = !DILocalVariable(name: "ctx", scope: !1582, file: !3, line: 499, type: !475)
!1590 = !DILocalVariable(name: "oid", scope: !1582, file: !3, line: 500, type: !5)
!1591 = !DILocation(line: 495, column: 33, scope: !1582)
!1592 = !DILocation(line: 495, column: 49, scope: !1582)
!1593 = !DILocation(line: 496, column: 20, scope: !1582)
!1594 = !DILocation(line: 497, column: 18, scope: !1582)
!1595 = !DILocation(line: 497, column: 32, scope: !1582)
!1596 = !DILocation(line: 499, column: 2, scope: !1582)
!1597 = !DILocation(line: 499, column: 29, scope: !1582)
!1598 = !DILocation(line: 499, column: 35, scope: !1582)
!1599 = !DILocation(line: 500, column: 2, scope: !1582)
!1600 = !DILocation(line: 500, column: 11, scope: !1582)
!1601 = !DILocation(line: 502, column: 18, scope: !1582)
!1602 = !DILocation(line: 502, column: 23, scope: !1582)
!1603 = !DILocation(line: 502, column: 2, scope: !1582)
!1604 = !DILocation(line: 502, column: 7, scope: !1582)
!1605 = !DILocation(line: 502, column: 16, scope: !1582)
!1606 = !DILocation(line: 503, column: 10, scope: !1582)
!1607 = !DILocation(line: 503, column: 15, scope: !1582)
!1608 = !DILocation(line: 503, column: 2, scope: !1582)
!1609 = !DILocation(line: 505, column: 3, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 503, column: 25)
!1611 = !DILocation(line: 505, column: 8, scope: !1610)
!1612 = !DILocation(line: 505, column: 14, scope: !1610)
!1613 = !DILocation(line: 505, column: 19, scope: !1610)
!1614 = !DILocation(line: 505, column: 29, scope: !1610)
!1615 = !DILocation(line: 506, column: 3, scope: !1610)
!1616 = !DILocation(line: 509, column: 3, scope: !1610)
!1617 = !DILocation(line: 509, column: 8, scope: !1610)
!1618 = !DILocation(line: 509, column: 14, scope: !1610)
!1619 = !DILocation(line: 509, column: 19, scope: !1610)
!1620 = !DILocation(line: 509, column: 29, scope: !1610)
!1621 = !DILocation(line: 510, column: 3, scope: !1610)
!1622 = !DILocation(line: 512, column: 3, scope: !1610)
!1623 = !DILocation(line: 512, column: 8, scope: !1610)
!1624 = !DILocation(line: 512, column: 14, scope: !1610)
!1625 = !DILocation(line: 512, column: 19, scope: !1610)
!1626 = !DILocation(line: 512, column: 29, scope: !1610)
!1627 = !DILocation(line: 513, column: 3, scope: !1610)
!1628 = !DILocation(line: 515, column: 17, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 515, column: 7)
!1630 = !DILocation(line: 515, column: 22, scope: !1629)
!1631 = !DILocation(line: 515, column: 30, scope: !1629)
!1632 = !DILocation(line: 515, column: 35, scope: !1629)
!1633 = !DILocation(line: 515, column: 7, scope: !1629)
!1634 = !DILocation(line: 515, column: 54, scope: !1629)
!1635 = !DILocation(line: 515, column: 7, scope: !1610)
!1636 = !DILocation(line: 516, column: 4, scope: !1629)
!1637 = !DILocation(line: 518, column: 11, scope: !1610)
!1638 = !DILocation(line: 518, column: 3, scope: !1610)
!1639 = !DILocation(line: 520, column: 4, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 518, column: 16)
!1641 = !DILocation(line: 520, column: 9, scope: !1640)
!1642 = !DILocation(line: 520, column: 15, scope: !1640)
!1643 = !DILocation(line: 520, column: 20, scope: !1640)
!1644 = !DILocation(line: 520, column: 30, scope: !1640)
!1645 = !DILocation(line: 521, column: 4, scope: !1640)
!1646 = !DILocation(line: 523, column: 4, scope: !1640)
!1647 = !DILocation(line: 523, column: 9, scope: !1640)
!1648 = !DILocation(line: 523, column: 15, scope: !1640)
!1649 = !DILocation(line: 523, column: 20, scope: !1640)
!1650 = !DILocation(line: 523, column: 30, scope: !1640)
!1651 = !DILocation(line: 524, column: 4, scope: !1640)
!1652 = !DILocation(line: 526, column: 4, scope: !1640)
!1653 = !DILocation(line: 526, column: 9, scope: !1640)
!1654 = !DILocation(line: 526, column: 15, scope: !1640)
!1655 = !DILocation(line: 526, column: 20, scope: !1640)
!1656 = !DILocation(line: 526, column: 30, scope: !1640)
!1657 = !DILocation(line: 527, column: 4, scope: !1640)
!1658 = !DILocation(line: 529, column: 4, scope: !1640)
!1659 = !DILocation(line: 529, column: 9, scope: !1640)
!1660 = !DILocation(line: 529, column: 15, scope: !1640)
!1661 = !DILocation(line: 529, column: 20, scope: !1640)
!1662 = !DILocation(line: 529, column: 30, scope: !1640)
!1663 = !DILocation(line: 530, column: 4, scope: !1640)
!1664 = !DILocation(line: 532, column: 4, scope: !1640)
!1665 = !DILocation(line: 534, column: 3, scope: !1610)
!1666 = !DILocation(line: 536, column: 3, scope: !1610)
!1667 = !DILocation(line: 540, column: 6, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 540, column: 6)
!1669 = !DILocation(line: 540, column: 11, scope: !1668)
!1670 = !DILocation(line: 540, column: 15, scope: !1668)
!1671 = !DILocation(line: 540, column: 31, scope: !1668)
!1672 = !DILocation(line: 540, column: 18, scope: !1668)
!1673 = !DILocation(line: 540, column: 37, scope: !1668)
!1674 = !DILocation(line: 540, column: 6, scope: !1582)
!1675 = !DILocation(line: 541, column: 3, scope: !1668)
!1676 = !DILocation(line: 542, column: 13, scope: !1582)
!1677 = !DILocation(line: 542, column: 19, scope: !1582)
!1678 = !DILocation(line: 542, column: 2, scope: !1582)
!1679 = !DILocation(line: 542, column: 7, scope: !1582)
!1680 = !DILocation(line: 542, column: 11, scope: !1582)
!1681 = !DILocation(line: 543, column: 18, scope: !1582)
!1682 = !DILocation(line: 543, column: 23, scope: !1582)
!1683 = !DILocation(line: 543, column: 2, scope: !1582)
!1684 = !DILocation(line: 543, column: 7, scope: !1582)
!1685 = !DILocation(line: 543, column: 16, scope: !1582)
!1686 = !DILocation(line: 544, column: 2, scope: !1582)
!1687 = !DILocation(line: 545, column: 1, scope: !1582)
!1688 = !DISubprogram(name: "parse_OID", scope: !6, file: !6, line: 148, type: !1689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!252, !170, !258, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1692 = distinct !DISubprogram(name: "x509_process_extension", scope: !3, file: !3, line: 553, type: !757, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1693)
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701}
!1694 = !DILocalVariable(name: "context", arg: 1, scope: !1692, file: !3, line: 553, type: !158)
!1695 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1692, file: !3, line: 553, type: !258)
!1696 = !DILocalVariable(name: "tag", arg: 3, scope: !1692, file: !3, line: 554, type: !168)
!1697 = !DILocalVariable(name: "value", arg: 4, scope: !1692, file: !3, line: 555, type: !170)
!1698 = !DILocalVariable(name: "vlen", arg: 5, scope: !1692, file: !3, line: 555, type: !258)
!1699 = !DILocalVariable(name: "ctx", scope: !1692, file: !3, line: 557, type: !475)
!1700 = !DILocalVariable(name: "kid", scope: !1692, file: !3, line: 558, type: !384)
!1701 = !DILocalVariable(name: "v", scope: !1692, file: !3, line: 559, type: !262)
!1702 = !DILocation(line: 553, column: 34, scope: !1692)
!1703 = !DILocation(line: 553, column: 50, scope: !1692)
!1704 = !DILocation(line: 554, column: 21, scope: !1692)
!1705 = !DILocation(line: 555, column: 19, scope: !1692)
!1706 = !DILocation(line: 555, column: 33, scope: !1692)
!1707 = !DILocation(line: 557, column: 2, scope: !1692)
!1708 = !DILocation(line: 557, column: 29, scope: !1692)
!1709 = !DILocation(line: 557, column: 35, scope: !1692)
!1710 = !DILocation(line: 558, column: 2, scope: !1692)
!1711 = !DILocation(line: 558, column: 28, scope: !1692)
!1712 = !DILocation(line: 559, column: 2, scope: !1692)
!1713 = !DILocation(line: 559, column: 23, scope: !1692)
!1714 = !DILocation(line: 559, column: 27, scope: !1692)
!1715 = !DILocation(line: 561, column: 2, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 561, column: 2)
!1717 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 561, column: 2)
!1718 = !DILocation(line: 561, column: 2, scope: !1717)
!1719 = !DILocation(line: 563, column: 6, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 563, column: 6)
!1721 = !DILocation(line: 563, column: 11, scope: !1720)
!1722 = !DILocation(line: 563, column: 20, scope: !1720)
!1723 = !DILocation(line: 563, column: 6, scope: !1692)
!1724 = !DILocation(line: 565, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 565, column: 7)
!1726 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 563, column: 49)
!1727 = !DILocation(line: 565, column: 12, scope: !1725)
!1728 = !DILocation(line: 565, column: 18, scope: !1725)
!1729 = !DILocation(line: 565, column: 23, scope: !1725)
!1730 = !DILocation(line: 565, column: 26, scope: !1725)
!1731 = !DILocation(line: 565, column: 31, scope: !1725)
!1732 = !DILocation(line: 565, column: 7, scope: !1726)
!1733 = !DILocation(line: 566, column: 4, scope: !1725)
!1734 = !DILocation(line: 567, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 567, column: 7)
!1736 = !DILocation(line: 567, column: 12, scope: !1735)
!1737 = !DILocation(line: 567, column: 24, scope: !1735)
!1738 = !DILocation(line: 567, column: 27, scope: !1735)
!1739 = !DILocation(line: 567, column: 35, scope: !1735)
!1740 = !DILocation(line: 567, column: 40, scope: !1735)
!1741 = !DILocation(line: 567, column: 32, scope: !1735)
!1742 = !DILocation(line: 567, column: 7, scope: !1726)
!1743 = !DILocation(line: 568, column: 4, scope: !1735)
!1744 = !DILocation(line: 569, column: 5, scope: !1726)
!1745 = !DILocation(line: 570, column: 8, scope: !1726)
!1746 = !DILocation(line: 572, column: 30, scope: !1726)
!1747 = !DILocation(line: 572, column: 3, scope: !1726)
!1748 = !DILocation(line: 572, column: 8, scope: !1726)
!1749 = !DILocation(line: 572, column: 14, scope: !1726)
!1750 = !DILocation(line: 572, column: 28, scope: !1726)
!1751 = !DILocation(line: 573, column: 25, scope: !1726)
!1752 = !DILocation(line: 573, column: 3, scope: !1726)
!1753 = !DILocation(line: 573, column: 8, scope: !1726)
!1754 = !DILocation(line: 573, column: 14, scope: !1726)
!1755 = !DILocation(line: 573, column: 23, scope: !1726)
!1756 = !DILocation(line: 574, column: 36, scope: !1726)
!1757 = !DILocation(line: 574, column: 39, scope: !1726)
!1758 = !DILocation(line: 574, column: 9, scope: !1726)
!1759 = !DILocation(line: 574, column: 7, scope: !1726)
!1760 = !DILocation(line: 575, column: 14, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 575, column: 7)
!1762 = !DILocation(line: 575, column: 7, scope: !1761)
!1763 = !DILocation(line: 575, column: 7, scope: !1726)
!1764 = !DILocation(line: 576, column: 19, scope: !1761)
!1765 = !DILocation(line: 576, column: 11, scope: !1761)
!1766 = !DILocation(line: 576, column: 4, scope: !1761)
!1767 = !DILocation(line: 577, column: 21, scope: !1726)
!1768 = !DILocation(line: 577, column: 3, scope: !1726)
!1769 = !DILocation(line: 577, column: 8, scope: !1726)
!1770 = !DILocation(line: 577, column: 14, scope: !1726)
!1771 = !DILocation(line: 577, column: 19, scope: !1726)
!1772 = !DILocation(line: 578, column: 3, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 578, column: 3)
!1774 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 578, column: 3)
!1775 = !DILocation(line: 578, column: 3, scope: !1774)
!1776 = !DILocation(line: 579, column: 3, scope: !1726)
!1777 = !DILocation(line: 582, column: 6, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 582, column: 6)
!1779 = !DILocation(line: 582, column: 11, scope: !1778)
!1780 = !DILocation(line: 582, column: 20, scope: !1778)
!1781 = !DILocation(line: 582, column: 6, scope: !1692)
!1782 = !DILocation(line: 595, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 595, column: 7)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 582, column: 37)
!1785 = !DILocation(line: 595, column: 12, scope: !1783)
!1786 = !DILocation(line: 595, column: 7, scope: !1784)
!1787 = !DILocation(line: 596, column: 4, scope: !1783)
!1788 = !DILocation(line: 597, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 597, column: 7)
!1790 = !DILocation(line: 597, column: 12, scope: !1789)
!1791 = !DILocation(line: 597, column: 7, scope: !1784)
!1792 = !DILocation(line: 598, column: 4, scope: !1789)
!1793 = !DILocation(line: 599, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 599, column: 7)
!1795 = !DILocation(line: 599, column: 12, scope: !1794)
!1796 = !DILocation(line: 599, column: 7, scope: !1784)
!1797 = !DILocation(line: 600, column: 4, scope: !1794)
!1798 = !DILocation(line: 601, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 601, column: 7)
!1800 = !DILocation(line: 601, column: 12, scope: !1799)
!1801 = !DILocation(line: 601, column: 7, scope: !1784)
!1802 = !DILocation(line: 602, column: 4, scope: !1799)
!1803 = !DILocation(line: 602, column: 9, scope: !1799)
!1804 = !DILocation(line: 602, column: 15, scope: !1799)
!1805 = !DILocation(line: 602, column: 20, scope: !1799)
!1806 = !DILocation(line: 602, column: 31, scope: !1799)
!1807 = !DILocation(line: 603, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 603, column: 7)
!1809 = !DILocation(line: 603, column: 12, scope: !1808)
!1810 = !DILocation(line: 603, column: 20, scope: !1808)
!1811 = !DILocation(line: 603, column: 23, scope: !1808)
!1812 = !DILocation(line: 603, column: 28, scope: !1808)
!1813 = !DILocation(line: 603, column: 33, scope: !1808)
!1814 = !DILocation(line: 603, column: 37, scope: !1808)
!1815 = !DILocation(line: 603, column: 42, scope: !1808)
!1816 = !DILocation(line: 603, column: 7, scope: !1784)
!1817 = !DILocation(line: 604, column: 4, scope: !1808)
!1818 = !DILocation(line: 604, column: 9, scope: !1808)
!1819 = !DILocation(line: 604, column: 15, scope: !1808)
!1820 = !DILocation(line: 604, column: 20, scope: !1808)
!1821 = !DILocation(line: 604, column: 31, scope: !1808)
!1822 = !DILocation(line: 605, column: 12, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 605, column: 12)
!1824 = !DILocation(line: 605, column: 17, scope: !1823)
!1825 = !DILocation(line: 605, column: 21, scope: !1823)
!1826 = !DILocation(line: 605, column: 24, scope: !1823)
!1827 = !DILocation(line: 605, column: 29, scope: !1823)
!1828 = !DILocation(line: 605, column: 37, scope: !1823)
!1829 = !DILocation(line: 605, column: 41, scope: !1823)
!1830 = !DILocation(line: 605, column: 46, scope: !1823)
!1831 = !DILocation(line: 605, column: 12, scope: !1808)
!1832 = !DILocation(line: 606, column: 4, scope: !1823)
!1833 = !DILocation(line: 606, column: 9, scope: !1823)
!1834 = !DILocation(line: 606, column: 15, scope: !1823)
!1835 = !DILocation(line: 606, column: 20, scope: !1823)
!1836 = !DILocation(line: 606, column: 31, scope: !1823)
!1837 = !DILocation(line: 607, column: 3, scope: !1784)
!1838 = !DILocation(line: 610, column: 6, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 610, column: 6)
!1840 = !DILocation(line: 610, column: 11, scope: !1839)
!1841 = !DILocation(line: 610, column: 20, scope: !1839)
!1842 = !DILocation(line: 610, column: 6, scope: !1692)
!1843 = !DILocation(line: 612, column: 19, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 610, column: 51)
!1845 = !DILocation(line: 612, column: 3, scope: !1844)
!1846 = !DILocation(line: 612, column: 8, scope: !1844)
!1847 = !DILocation(line: 612, column: 17, scope: !1844)
!1848 = !DILocation(line: 613, column: 24, scope: !1844)
!1849 = !DILocation(line: 613, column: 3, scope: !1844)
!1850 = !DILocation(line: 613, column: 8, scope: !1844)
!1851 = !DILocation(line: 613, column: 22, scope: !1844)
!1852 = !DILocation(line: 614, column: 3, scope: !1844)
!1853 = !DILocation(line: 617, column: 6, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 617, column: 6)
!1855 = !DILocation(line: 617, column: 11, scope: !1854)
!1856 = !DILocation(line: 617, column: 20, scope: !1854)
!1857 = !DILocation(line: 617, column: 6, scope: !1692)
!1858 = !DILocation(line: 628, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 628, column: 7)
!1860 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 617, column: 45)
!1861 = !DILocation(line: 628, column: 12, scope: !1859)
!1862 = !DILocation(line: 628, column: 7, scope: !1860)
!1863 = !DILocation(line: 629, column: 4, scope: !1859)
!1864 = !DILocation(line: 630, column: 7, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 630, column: 7)
!1866 = !DILocation(line: 630, column: 12, scope: !1865)
!1867 = !DILocation(line: 630, column: 7, scope: !1860)
!1868 = !DILocation(line: 631, column: 4, scope: !1865)
!1869 = !DILocation(line: 632, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 632, column: 7)
!1871 = !DILocation(line: 632, column: 15, scope: !1870)
!1872 = !DILocation(line: 632, column: 20, scope: !1870)
!1873 = !DILocation(line: 632, column: 12, scope: !1870)
!1874 = !DILocation(line: 632, column: 7, scope: !1860)
!1875 = !DILocation(line: 633, column: 4, scope: !1870)
!1876 = !DILocation(line: 634, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 634, column: 7)
!1878 = !DILocation(line: 634, column: 12, scope: !1877)
!1879 = !DILocation(line: 634, column: 17, scope: !1877)
!1880 = !DILocation(line: 634, column: 20, scope: !1877)
!1881 = !DILocation(line: 634, column: 25, scope: !1877)
!1882 = !DILocation(line: 634, column: 30, scope: !1877)
!1883 = !DILocation(line: 634, column: 33, scope: !1877)
!1884 = !DILocation(line: 634, column: 38, scope: !1877)
!1885 = !DILocation(line: 634, column: 51, scope: !1877)
!1886 = !DILocation(line: 634, column: 54, scope: !1877)
!1887 = !DILocation(line: 634, column: 59, scope: !1877)
!1888 = !DILocation(line: 634, column: 7, scope: !1860)
!1889 = !DILocation(line: 635, column: 4, scope: !1877)
!1890 = !DILocation(line: 635, column: 9, scope: !1877)
!1891 = !DILocation(line: 635, column: 15, scope: !1877)
!1892 = !DILocation(line: 635, column: 20, scope: !1877)
!1893 = !DILocation(line: 635, column: 31, scope: !1877)
!1894 = !DILocation(line: 636, column: 3, scope: !1860)
!1895 = !DILocation(line: 639, column: 2, scope: !1692)
!1896 = !DILocation(line: 640, column: 1, scope: !1692)
!1897 = !DILocation(line: 660, column: 32, scope: !249)
!1898 = !DILocation(line: 660, column: 44, scope: !249)
!1899 = !DILocation(line: 661, column: 22, scope: !249)
!1900 = !DILocation(line: 662, column: 29, scope: !249)
!1901 = !DILocation(line: 662, column: 43, scope: !249)
!1902 = !DILocation(line: 666, column: 2, scope: !249)
!1903 = !DILocation(line: 666, column: 23, scope: !249)
!1904 = !DILocation(line: 666, column: 27, scope: !249)
!1905 = !DILocation(line: 667, column: 2, scope: !249)
!1906 = !DILocation(line: 667, column: 11, scope: !249)
!1907 = !DILocation(line: 667, column: 17, scope: !249)
!1908 = !DILocation(line: 667, column: 22, scope: !249)
!1909 = !DILocation(line: 667, column: 27, scope: !249)
!1910 = !DILocation(line: 667, column: 33, scope: !249)
!1911 = !DILocation(line: 667, column: 38, scope: !249)
!1912 = !DILocation(line: 667, column: 43, scope: !249)
!1913 = !DILocation(line: 672, column: 6, scope: !281)
!1914 = !DILocation(line: 672, column: 10, scope: !281)
!1915 = !DILocation(line: 672, column: 6, scope: !249)
!1916 = !DILocation(line: 674, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !280, file: !3, line: 674, column: 7)
!1918 = !DILocation(line: 674, column: 12, scope: !1917)
!1919 = !DILocation(line: 674, column: 7, scope: !280)
!1920 = !DILocation(line: 675, column: 4, scope: !1917)
!1921 = !DILocation(line: 676, column: 10, scope: !279)
!1922 = !DILocation(line: 676, column: 10, scope: !283)
!1923 = !DILocation(line: 676, column: 10, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !283, file: !3, line: 676, column: 10)
!1925 = !DILocation(line: 676, column: 10, scope: !285)
!1926 = !DILocation(line: 676, column: 10, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !285, file: !3, line: 676, column: 10)
!1928 = !DILocation(line: 676, column: 10, scope: !280)
!1929 = !DILocation(line: 676, column: 8, scope: !280)
!1930 = !DILocation(line: 677, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !280, file: !3, line: 677, column: 7)
!1932 = !DILocation(line: 677, column: 12, scope: !1931)
!1933 = !DILocation(line: 677, column: 7, scope: !280)
!1934 = !DILocation(line: 678, column: 9, scope: !1931)
!1935 = !DILocation(line: 678, column: 4, scope: !1931)
!1936 = !DILocation(line: 680, column: 9, scope: !1931)
!1937 = !DILocation(line: 681, column: 2, scope: !280)
!1938 = !DILocation(line: 681, column: 13, scope: !289)
!1939 = !DILocation(line: 681, column: 17, scope: !289)
!1940 = !DILocation(line: 681, column: 13, scope: !281)
!1941 = !DILocation(line: 683, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !288, file: !3, line: 683, column: 7)
!1943 = !DILocation(line: 683, column: 12, scope: !1942)
!1944 = !DILocation(line: 683, column: 7, scope: !288)
!1945 = !DILocation(line: 684, column: 4, scope: !1942)
!1946 = !DILocation(line: 685, column: 10, scope: !287)
!1947 = !DILocation(line: 685, column: 10, scope: !291)
!1948 = !DILocation(line: 685, column: 10, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !291, file: !3, line: 685, column: 10)
!1950 = !DILocation(line: 685, column: 10, scope: !293)
!1951 = !DILocation(line: 685, column: 10, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !293, file: !3, line: 685, column: 10)
!1953 = !DILocation(line: 685, column: 10, scope: !288)
!1954 = !DILocation(line: 685, column: 20, scope: !288)
!1955 = !DILocation(line: 685, column: 28, scope: !295)
!1956 = !DILocation(line: 685, column: 28, scope: !297)
!1957 = !DILocation(line: 685, column: 28, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !297, file: !3, line: 685, column: 28)
!1959 = !DILocation(line: 685, column: 28, scope: !299)
!1960 = !DILocation(line: 685, column: 28, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !299, file: !3, line: 685, column: 28)
!1962 = !DILocation(line: 685, column: 28, scope: !288)
!1963 = !DILocation(line: 685, column: 26, scope: !288)
!1964 = !DILocation(line: 685, column: 8, scope: !288)
!1965 = !DILocation(line: 686, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !288, file: !3, line: 686, column: 7)
!1967 = !DILocation(line: 686, column: 12, scope: !1966)
!1968 = !DILocation(line: 686, column: 20, scope: !1966)
!1969 = !DILocation(line: 686, column: 23, scope: !1966)
!1970 = !DILocation(line: 686, column: 28, scope: !1966)
!1971 = !DILocation(line: 686, column: 7, scope: !288)
!1972 = !DILocation(line: 687, column: 4, scope: !1966)
!1973 = !DILocation(line: 688, column: 2, scope: !288)
!1974 = !DILocation(line: 689, column: 3, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !289, file: !3, line: 688, column: 9)
!1976 = !DILocation(line: 692, column: 9, scope: !301)
!1977 = !DILocation(line: 692, column: 9, scope: !303)
!1978 = !DILocation(line: 692, column: 9, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !303, file: !3, line: 692, column: 9)
!1980 = !DILocation(line: 692, column: 9, scope: !305)
!1981 = !DILocation(line: 692, column: 9, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !305, file: !3, line: 692, column: 9)
!1983 = !DILocation(line: 692, column: 9, scope: !249)
!1984 = !DILocation(line: 692, column: 7, scope: !249)
!1985 = !DILocation(line: 693, column: 8, scope: !307)
!1986 = !DILocation(line: 693, column: 8, scope: !309)
!1987 = !DILocation(line: 693, column: 8, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !309, file: !3, line: 693, column: 8)
!1989 = !DILocation(line: 693, column: 8, scope: !311)
!1990 = !DILocation(line: 693, column: 8, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !311, file: !3, line: 693, column: 8)
!1992 = !DILocation(line: 693, column: 8, scope: !249)
!1993 = !DILocation(line: 693, column: 6, scope: !249)
!1994 = !DILocation(line: 694, column: 9, scope: !313)
!1995 = !DILocation(line: 694, column: 9, scope: !315)
!1996 = !DILocation(line: 694, column: 9, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !315, file: !3, line: 694, column: 9)
!1998 = !DILocation(line: 694, column: 9, scope: !317)
!1999 = !DILocation(line: 694, column: 9, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !317, file: !3, line: 694, column: 9)
!2001 = !DILocation(line: 694, column: 9, scope: !249)
!2002 = !DILocation(line: 694, column: 7, scope: !249)
!2003 = !DILocation(line: 695, column: 9, scope: !319)
!2004 = !DILocation(line: 695, column: 9, scope: !321)
!2005 = !DILocation(line: 695, column: 9, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !321, file: !3, line: 695, column: 9)
!2007 = !DILocation(line: 695, column: 9, scope: !323)
!2008 = !DILocation(line: 695, column: 9, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !323, file: !3, line: 695, column: 9)
!2010 = !DILocation(line: 695, column: 9, scope: !249)
!2011 = !DILocation(line: 695, column: 7, scope: !249)
!2012 = !DILocation(line: 696, column: 9, scope: !325)
!2013 = !DILocation(line: 696, column: 9, scope: !327)
!2014 = !DILocation(line: 696, column: 9, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !327, file: !3, line: 696, column: 9)
!2016 = !DILocation(line: 696, column: 9, scope: !329)
!2017 = !DILocation(line: 696, column: 9, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !329, file: !3, line: 696, column: 9)
!2019 = !DILocation(line: 696, column: 9, scope: !249)
!2020 = !DILocation(line: 696, column: 7, scope: !249)
!2021 = !DILocation(line: 698, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !249, file: !3, line: 698, column: 6)
!2023 = !DILocation(line: 698, column: 6, scope: !2022)
!2024 = !DILocation(line: 698, column: 9, scope: !2022)
!2025 = !DILocation(line: 698, column: 6, scope: !249)
!2026 = !DILocation(line: 699, column: 3, scope: !2022)
!2027 = !DILocation(line: 701, column: 6, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !249, file: !3, line: 701, column: 6)
!2029 = !DILocation(line: 701, column: 11, scope: !2028)
!2030 = !DILocation(line: 701, column: 18, scope: !2028)
!2031 = !DILocation(line: 702, column: 6, scope: !2028)
!2032 = !DILocation(line: 702, column: 10, scope: !2028)
!2033 = !DILocation(line: 702, column: 14, scope: !2028)
!2034 = !DILocation(line: 702, column: 17, scope: !2028)
!2035 = !DILocation(line: 702, column: 21, scope: !2028)
!2036 = !DILocation(line: 701, column: 6, scope: !249)
!2037 = !DILocation(line: 703, column: 3, scope: !2028)
!2038 = !DILocation(line: 705, column: 26, scope: !249)
!2039 = !DILocation(line: 705, column: 30, scope: !249)
!2040 = !DILocation(line: 705, column: 12, scope: !249)
!2041 = !DILocation(line: 705, column: 10, scope: !249)
!2042 = !DILocation(line: 706, column: 6, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !249, file: !3, line: 706, column: 6)
!2044 = !DILocation(line: 706, column: 10, scope: !2043)
!2045 = !DILocation(line: 706, column: 6, scope: !249)
!2046 = !DILocation(line: 707, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 707, column: 7)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 706, column: 16)
!2049 = !DILocation(line: 707, column: 12, scope: !2047)
!2050 = !DILocation(line: 707, column: 16, scope: !2047)
!2051 = !DILocation(line: 707, column: 7, scope: !2048)
!2052 = !DILocation(line: 708, column: 12, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 707, column: 22)
!2054 = !DILocation(line: 709, column: 8, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 709, column: 8)
!2056 = !DILocation(line: 709, column: 13, scope: !2055)
!2057 = !DILocation(line: 709, column: 19, scope: !2055)
!2058 = !DILocation(line: 709, column: 8, scope: !2053)
!2059 = !DILocation(line: 710, column: 13, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 709, column: 25)
!2061 = !DILocation(line: 711, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 711, column: 9)
!2063 = !DILocation(line: 711, column: 14, scope: !2062)
!2064 = !DILocation(line: 711, column: 20, scope: !2062)
!2065 = !DILocation(line: 711, column: 9, scope: !2060)
!2066 = !DILocation(line: 712, column: 14, scope: !2062)
!2067 = !DILocation(line: 712, column: 6, scope: !2062)
!2068 = !DILocation(line: 713, column: 4, scope: !2060)
!2069 = !DILocation(line: 714, column: 3, scope: !2053)
!2070 = !DILocation(line: 715, column: 2, scope: !2048)
!2071 = !DILocation(line: 717, column: 6, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !249, file: !3, line: 717, column: 6)
!2073 = !DILocation(line: 717, column: 10, scope: !2072)
!2074 = !DILocation(line: 717, column: 14, scope: !2072)
!2075 = !DILocation(line: 717, column: 17, scope: !2072)
!2076 = !DILocation(line: 717, column: 23, scope: !2072)
!2077 = !DILocation(line: 717, column: 21, scope: !2072)
!2078 = !DILocation(line: 717, column: 31, scope: !2072)
!2079 = !DILocation(line: 718, column: 6, scope: !2072)
!2080 = !DILocation(line: 718, column: 11, scope: !2072)
!2081 = !DILocation(line: 718, column: 16, scope: !2072)
!2082 = !DILocation(line: 719, column: 6, scope: !2072)
!2083 = !DILocation(line: 719, column: 10, scope: !2072)
!2084 = !DILocation(line: 719, column: 15, scope: !2072)
!2085 = !DILocation(line: 720, column: 6, scope: !2072)
!2086 = !DILocation(line: 720, column: 10, scope: !2072)
!2087 = !DILocation(line: 717, column: 6, scope: !249)
!2088 = !DILocation(line: 721, column: 3, scope: !2072)
!2089 = !DILocation(line: 723, column: 17, scope: !249)
!2090 = !DILocation(line: 723, column: 23, scope: !249)
!2091 = !DILocation(line: 723, column: 28, scope: !249)
!2092 = !DILocation(line: 723, column: 33, scope: !249)
!2093 = !DILocation(line: 723, column: 39, scope: !249)
!2094 = !DILocation(line: 723, column: 44, scope: !249)
!2095 = !DILocation(line: 723, column: 8, scope: !249)
!2096 = !DILocation(line: 723, column: 3, scope: !249)
!2097 = !DILocation(line: 723, column: 6, scope: !249)
!2098 = !DILocation(line: 724, column: 2, scope: !249)
!2099 = !DILocation(line: 726, column: 1, scope: !249)
!2100 = !DILocation(line: 727, column: 2, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 727, column: 2)
!2102 = distinct !DILexicalBlock(scope: !249, file: !3, line: 727, column: 2)
!2103 = !DILocation(line: 727, column: 2, scope: !2102)
!2104 = !DILocation(line: 729, column: 2, scope: !249)
!2105 = !DILocation(line: 730, column: 1, scope: !249)
!2106 = !DILocation(line: 731, column: 2, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 731, column: 2)
!2108 = distinct !DILexicalBlock(scope: !249, file: !3, line: 731, column: 2)
!2109 = !DILocation(line: 731, column: 2, scope: !2108)
!2110 = !DILocation(line: 733, column: 2, scope: !249)
!2111 = !DILocation(line: 734, column: 1, scope: !249)
!2112 = !DISubprogram(name: "mktime64", scope: !2113, file: !2113, line: 20, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2113 = !DIFile(filename: "./include/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f33592c8760b58e8aacec1e4121b19fc")
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!254, !2116, !2116, !2116, !2116, !2116, !2116}
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2117 = distinct !DISubprogram(name: "x509_note_not_before", scope: !3, file: !3, line: 737, type: !757, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124}
!2119 = !DILocalVariable(name: "context", arg: 1, scope: !2117, file: !3, line: 737, type: !158)
!2120 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !2117, file: !3, line: 737, type: !258)
!2121 = !DILocalVariable(name: "tag", arg: 3, scope: !2117, file: !3, line: 738, type: !168)
!2122 = !DILocalVariable(name: "value", arg: 4, scope: !2117, file: !3, line: 739, type: !170)
!2123 = !DILocalVariable(name: "vlen", arg: 5, scope: !2117, file: !3, line: 739, type: !258)
!2124 = !DILocalVariable(name: "ctx", scope: !2117, file: !3, line: 741, type: !475)
!2125 = !DILocation(line: 737, column: 32, scope: !2117)
!2126 = !DILocation(line: 737, column: 48, scope: !2117)
!2127 = !DILocation(line: 738, column: 19, scope: !2117)
!2128 = !DILocation(line: 739, column: 17, scope: !2117)
!2129 = !DILocation(line: 739, column: 31, scope: !2117)
!2130 = !DILocation(line: 741, column: 2, scope: !2117)
!2131 = !DILocation(line: 741, column: 29, scope: !2117)
!2132 = !DILocation(line: 741, column: 35, scope: !2117)
!2133 = !DILocation(line: 742, column: 27, scope: !2117)
!2134 = !DILocation(line: 742, column: 32, scope: !2117)
!2135 = !DILocation(line: 742, column: 38, scope: !2117)
!2136 = !DILocation(line: 742, column: 50, scope: !2117)
!2137 = !DILocation(line: 742, column: 58, scope: !2117)
!2138 = !DILocation(line: 742, column: 63, scope: !2117)
!2139 = !DILocation(line: 742, column: 70, scope: !2117)
!2140 = !DILocation(line: 742, column: 9, scope: !2117)
!2141 = !DILocation(line: 743, column: 1, scope: !2117)
!2142 = !DILocation(line: 742, column: 2, scope: !2117)
!2143 = distinct !DISubprogram(name: "x509_note_not_after", scope: !3, file: !3, line: 745, type: !757, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150}
!2145 = !DILocalVariable(name: "context", arg: 1, scope: !2143, file: !3, line: 745, type: !158)
!2146 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !2143, file: !3, line: 745, type: !258)
!2147 = !DILocalVariable(name: "tag", arg: 3, scope: !2143, file: !3, line: 746, type: !168)
!2148 = !DILocalVariable(name: "value", arg: 4, scope: !2143, file: !3, line: 747, type: !170)
!2149 = !DILocalVariable(name: "vlen", arg: 5, scope: !2143, file: !3, line: 747, type: !258)
!2150 = !DILocalVariable(name: "ctx", scope: !2143, file: !3, line: 749, type: !475)
!2151 = !DILocation(line: 745, column: 31, scope: !2143)
!2152 = !DILocation(line: 745, column: 47, scope: !2143)
!2153 = !DILocation(line: 746, column: 18, scope: !2143)
!2154 = !DILocation(line: 747, column: 16, scope: !2143)
!2155 = !DILocation(line: 747, column: 30, scope: !2143)
!2156 = !DILocation(line: 749, column: 2, scope: !2143)
!2157 = !DILocation(line: 749, column: 29, scope: !2143)
!2158 = !DILocation(line: 749, column: 35, scope: !2143)
!2159 = !DILocation(line: 750, column: 27, scope: !2143)
!2160 = !DILocation(line: 750, column: 32, scope: !2143)
!2161 = !DILocation(line: 750, column: 38, scope: !2143)
!2162 = !DILocation(line: 750, column: 48, scope: !2143)
!2163 = !DILocation(line: 750, column: 56, scope: !2143)
!2164 = !DILocation(line: 750, column: 61, scope: !2143)
!2165 = !DILocation(line: 750, column: 68, scope: !2143)
!2166 = !DILocation(line: 750, column: 9, scope: !2143)
!2167 = !DILocation(line: 751, column: 1, scope: !2143)
!2168 = !DILocation(line: 750, column: 2, scope: !2143)
!2169 = distinct !DISubprogram(name: "x509_akid_note_kid", scope: !3, file: !3, line: 756, type: !757, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2170 = !{!2171, !2172, !2173, !2174, !2175, !2176, !2177}
!2171 = !DILocalVariable(name: "context", arg: 1, scope: !2169, file: !3, line: 756, type: !158)
!2172 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !2169, file: !3, line: 756, type: !258)
!2173 = !DILocalVariable(name: "tag", arg: 3, scope: !2169, file: !3, line: 757, type: !168)
!2174 = !DILocalVariable(name: "value", arg: 4, scope: !2169, file: !3, line: 758, type: !170)
!2175 = !DILocalVariable(name: "vlen", arg: 5, scope: !2169, file: !3, line: 758, type: !258)
!2176 = !DILocalVariable(name: "ctx", scope: !2169, file: !3, line: 760, type: !475)
!2177 = !DILocalVariable(name: "kid", scope: !2169, file: !3, line: 761, type: !384)
!2178 = !DILocation(line: 756, column: 30, scope: !2169)
!2179 = !DILocation(line: 756, column: 46, scope: !2169)
!2180 = !DILocation(line: 757, column: 24, scope: !2169)
!2181 = !DILocation(line: 758, column: 22, scope: !2169)
!2182 = !DILocation(line: 758, column: 36, scope: !2169)
!2183 = !DILocation(line: 760, column: 2, scope: !2169)
!2184 = !DILocation(line: 760, column: 29, scope: !2169)
!2185 = !DILocation(line: 760, column: 35, scope: !2169)
!2186 = !DILocation(line: 761, column: 2, scope: !2169)
!2187 = !DILocation(line: 761, column: 28, scope: !2169)
!2188 = !DILocation(line: 763, column: 2, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 763, column: 2)
!2190 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 763, column: 2)
!2191 = !DILocation(line: 763, column: 2, scope: !2190)
!2192 = !DILocation(line: 765, column: 6, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 765, column: 6)
!2194 = !DILocation(line: 765, column: 11, scope: !2193)
!2195 = !DILocation(line: 765, column: 17, scope: !2193)
!2196 = !DILocation(line: 765, column: 22, scope: !2193)
!2197 = !DILocation(line: 765, column: 6, scope: !2169)
!2198 = !DILocation(line: 766, column: 3, scope: !2193)
!2199 = !DILocation(line: 768, column: 35, scope: !2169)
!2200 = !DILocation(line: 768, column: 42, scope: !2169)
!2201 = !DILocation(line: 768, column: 8, scope: !2169)
!2202 = !DILocation(line: 768, column: 6, scope: !2169)
!2203 = !DILocation(line: 769, column: 13, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 769, column: 6)
!2205 = !DILocation(line: 769, column: 6, scope: !2204)
!2206 = !DILocation(line: 769, column: 6, scope: !2169)
!2207 = !DILocation(line: 770, column: 18, scope: !2204)
!2208 = !DILocation(line: 770, column: 10, scope: !2204)
!2209 = !DILocation(line: 770, column: 3, scope: !2204)
!2210 = !DILocation(line: 771, column: 2, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 771, column: 2)
!2212 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 771, column: 2)
!2213 = !DILocation(line: 771, column: 2, scope: !2212)
!2214 = !DILocation(line: 772, column: 32, scope: !2169)
!2215 = !DILocation(line: 772, column: 2, scope: !2169)
!2216 = !DILocation(line: 772, column: 7, scope: !2169)
!2217 = !DILocation(line: 772, column: 13, scope: !2169)
!2218 = !DILocation(line: 772, column: 18, scope: !2169)
!2219 = !DILocation(line: 772, column: 30, scope: !2169)
!2220 = !DILocation(line: 773, column: 2, scope: !2169)
!2221 = !DILocation(line: 774, column: 1, scope: !2169)
!2222 = distinct !DISubprogram(name: "x509_akid_note_name", scope: !3, file: !3, line: 779, type: !757, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229}
!2224 = !DILocalVariable(name: "context", arg: 1, scope: !2222, file: !3, line: 779, type: !158)
!2225 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !2222, file: !3, line: 779, type: !258)
!2226 = !DILocalVariable(name: "tag", arg: 3, scope: !2222, file: !3, line: 780, type: !168)
!2227 = !DILocalVariable(name: "value", arg: 4, scope: !2222, file: !3, line: 781, type: !170)
!2228 = !DILocalVariable(name: "vlen", arg: 5, scope: !2222, file: !3, line: 781, type: !258)
!2229 = !DILocalVariable(name: "ctx", scope: !2222, file: !3, line: 783, type: !475)
!2230 = !DILocation(line: 779, column: 31, scope: !2222)
!2231 = !DILocation(line: 779, column: 47, scope: !2222)
!2232 = !DILocation(line: 780, column: 18, scope: !2222)
!2233 = !DILocation(line: 781, column: 16, scope: !2222)
!2234 = !DILocation(line: 781, column: 30, scope: !2222)
!2235 = !DILocation(line: 783, column: 2, scope: !2222)
!2236 = !DILocation(line: 783, column: 29, scope: !2222)
!2237 = !DILocation(line: 783, column: 35, scope: !2222)
!2238 = !DILocation(line: 785, column: 2, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 785, column: 2)
!2240 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 785, column: 2)
!2241 = !DILocation(line: 785, column: 2, scope: !2240)
!2242 = !DILocation(line: 787, column: 25, scope: !2222)
!2243 = !DILocation(line: 787, column: 2, scope: !2222)
!2244 = !DILocation(line: 787, column: 7, scope: !2222)
!2245 = !DILocation(line: 787, column: 23, scope: !2222)
!2246 = !DILocation(line: 788, column: 30, scope: !2222)
!2247 = !DILocation(line: 788, column: 2, scope: !2222)
!2248 = !DILocation(line: 788, column: 7, scope: !2222)
!2249 = !DILocation(line: 788, column: 28, scope: !2222)
!2250 = !DILocation(line: 790, column: 1, scope: !2222)
!2251 = !DILocation(line: 789, column: 2, scope: !2222)
!2252 = distinct !DISubprogram(name: "x509_akid_note_serial", scope: !3, file: !3, line: 795, type: !757, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260}
!2254 = !DILocalVariable(name: "context", arg: 1, scope: !2252, file: !3, line: 795, type: !158)
!2255 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !2252, file: !3, line: 795, type: !258)
!2256 = !DILocalVariable(name: "tag", arg: 3, scope: !2252, file: !3, line: 796, type: !168)
!2257 = !DILocalVariable(name: "value", arg: 4, scope: !2252, file: !3, line: 797, type: !170)
!2258 = !DILocalVariable(name: "vlen", arg: 5, scope: !2252, file: !3, line: 797, type: !258)
!2259 = !DILocalVariable(name: "ctx", scope: !2252, file: !3, line: 799, type: !475)
!2260 = !DILocalVariable(name: "kid", scope: !2252, file: !3, line: 800, type: !384)
!2261 = !DILocation(line: 795, column: 33, scope: !2252)
!2262 = !DILocation(line: 795, column: 49, scope: !2252)
!2263 = !DILocation(line: 796, column: 20, scope: !2252)
!2264 = !DILocation(line: 797, column: 18, scope: !2252)
!2265 = !DILocation(line: 797, column: 32, scope: !2252)
!2266 = !DILocation(line: 799, column: 2, scope: !2252)
!2267 = !DILocation(line: 799, column: 29, scope: !2252)
!2268 = !DILocation(line: 799, column: 35, scope: !2252)
!2269 = !DILocation(line: 800, column: 2, scope: !2252)
!2270 = !DILocation(line: 800, column: 28, scope: !2252)
!2271 = !DILocation(line: 802, column: 2, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 802, column: 2)
!2273 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 802, column: 2)
!2274 = !DILocation(line: 802, column: 2, scope: !2273)
!2275 = !DILocation(line: 804, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 804, column: 6)
!2277 = !DILocation(line: 804, column: 12, scope: !2276)
!2278 = !DILocation(line: 804, column: 28, scope: !2276)
!2279 = !DILocation(line: 804, column: 31, scope: !2276)
!2280 = !DILocation(line: 804, column: 36, scope: !2276)
!2281 = !DILocation(line: 804, column: 42, scope: !2276)
!2282 = !DILocation(line: 804, column: 47, scope: !2276)
!2283 = !DILocation(line: 804, column: 6, scope: !2252)
!2284 = !DILocation(line: 805, column: 3, scope: !2276)
!2285 = !DILocation(line: 807, column: 35, scope: !2252)
!2286 = !DILocation(line: 808, column: 7, scope: !2252)
!2287 = !DILocation(line: 809, column: 7, scope: !2252)
!2288 = !DILocation(line: 809, column: 12, scope: !2252)
!2289 = !DILocation(line: 810, column: 7, scope: !2252)
!2290 = !DILocation(line: 810, column: 12, scope: !2252)
!2291 = !DILocation(line: 807, column: 8, scope: !2252)
!2292 = !DILocation(line: 807, column: 6, scope: !2252)
!2293 = !DILocation(line: 811, column: 13, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 811, column: 6)
!2295 = !DILocation(line: 811, column: 6, scope: !2294)
!2296 = !DILocation(line: 811, column: 6, scope: !2252)
!2297 = !DILocation(line: 812, column: 18, scope: !2294)
!2298 = !DILocation(line: 812, column: 10, scope: !2294)
!2299 = !DILocation(line: 812, column: 3, scope: !2294)
!2300 = !DILocation(line: 814, column: 2, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 814, column: 2)
!2302 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 814, column: 2)
!2303 = !DILocation(line: 814, column: 2, scope: !2302)
!2304 = !DILocation(line: 815, column: 32, scope: !2252)
!2305 = !DILocation(line: 815, column: 2, scope: !2252)
!2306 = !DILocation(line: 815, column: 7, scope: !2252)
!2307 = !DILocation(line: 815, column: 13, scope: !2252)
!2308 = !DILocation(line: 815, column: 18, scope: !2252)
!2309 = !DILocation(line: 815, column: 30, scope: !2252)
!2310 = !DILocation(line: 816, column: 2, scope: !2252)
!2311 = !DILocation(line: 817, column: 1, scope: !2252)
!2312 = distinct !DISubprogram(name: "kmalloc", scope: !148, file: !148, line: 591, type: !695, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2313 = !{!2314, !2315, !2316}
!2314 = !DILocalVariable(name: "size", arg: 1, scope: !2312, file: !148, line: 591, type: !258)
!2315 = !DILocalVariable(name: "flags", arg: 2, scope: !2312, file: !148, line: 591, type: !159)
!2316 = !DILocalVariable(name: "index", scope: !2317, file: !148, line: 594, type: !7)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !148, line: 593, column: 42)
!2318 = distinct !DILexicalBlock(scope: !2312, file: !148, line: 593, column: 6)
!2319 = !DILocation(line: 591, column: 61, scope: !2312)
!2320 = !DILocation(line: 591, column: 73, scope: !2312)
!2321 = !DILocation(line: 593, column: 27, scope: !2318)
!2322 = !DILocation(line: 593, column: 6, scope: !2318)
!2323 = !DILocation(line: 593, column: 33, scope: !2318)
!2324 = !DILocation(line: 593, column: 36, scope: !2318)
!2325 = !DILocation(line: 593, column: 6, scope: !2312)
!2326 = !DILocation(line: 594, column: 3, scope: !2317)
!2327 = !DILocation(line: 594, column: 16, scope: !2317)
!2328 = !DILocation(line: 596, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2317, file: !148, line: 596, column: 7)
!2330 = !DILocation(line: 596, column: 12, scope: !2329)
!2331 = !DILocation(line: 596, column: 7, scope: !2317)
!2332 = !DILocation(line: 597, column: 25, scope: !2329)
!2333 = !DILocation(line: 597, column: 31, scope: !2329)
!2334 = !DILocation(line: 597, column: 11, scope: !2329)
!2335 = !DILocation(line: 597, column: 4, scope: !2329)
!2336 = !DILocation(line: 599, column: 11, scope: !2317)
!2337 = !DILocation(line: 599, column: 9, scope: !2317)
!2338 = !DILocation(line: 601, column: 33, scope: !2317)
!2339 = !DILocation(line: 601, column: 40, scope: !2317)
!2340 = !DILocation(line: 601, column: 20, scope: !2317)
!2341 = !DILocation(line: 601, column: 5, scope: !2317)
!2342 = !DILocation(line: 601, column: 51, scope: !2317)
!2343 = !DILocation(line: 602, column: 5, scope: !2317)
!2344 = !DILocation(line: 602, column: 12, scope: !2317)
!2345 = !DILocation(line: 600, column: 10, scope: !2317)
!2346 = !DILocation(line: 600, column: 3, scope: !2317)
!2347 = !DILocation(line: 603, column: 2, scope: !2318)
!2348 = !DILocation(line: 604, column: 19, scope: !2312)
!2349 = !DILocation(line: 604, column: 25, scope: !2312)
!2350 = !DILocation(line: 604, column: 9, scope: !2312)
!2351 = !DILocation(line: 604, column: 2, scope: !2312)
!2352 = !DILocation(line: 605, column: 1, scope: !2312)
!2353 = !DISubprogram(name: "kmalloc_large", scope: !148, file: !148, line: 531, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2354 = distinct !DISubprogram(name: "__kmalloc_index", scope: !148, file: !148, line: 444, type: !2355, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!7, !258, !371}
!2357 = !{!2358, !2359}
!2358 = !DILocalVariable(name: "size", arg: 1, scope: !2354, file: !148, line: 444, type: !258)
!2359 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2354, file: !148, line: 445, type: !371)
!2360 = !DILocation(line: 444, column: 60, scope: !2354)
!2361 = !DILocation(line: 445, column: 16, scope: !2354)
!2362 = !DILocation(line: 447, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 447, column: 6)
!2364 = !DILocation(line: 447, column: 6, scope: !2354)
!2365 = !DILocation(line: 448, column: 3, scope: !2363)
!2366 = !DILocation(line: 450, column: 6, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 450, column: 6)
!2368 = !DILocation(line: 450, column: 11, scope: !2367)
!2369 = !DILocation(line: 450, column: 6, scope: !2354)
!2370 = !DILocation(line: 451, column: 3, scope: !2367)
!2371 = !DILocation(line: 453, column: 32, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 453, column: 6)
!2373 = !DILocation(line: 453, column: 37, scope: !2372)
!2374 = !DILocation(line: 453, column: 42, scope: !2372)
!2375 = !DILocation(line: 453, column: 45, scope: !2372)
!2376 = !DILocation(line: 453, column: 50, scope: !2372)
!2377 = !DILocation(line: 453, column: 6, scope: !2354)
!2378 = !DILocation(line: 454, column: 3, scope: !2372)
!2379 = !DILocation(line: 455, column: 32, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 455, column: 6)
!2381 = !DILocation(line: 455, column: 37, scope: !2380)
!2382 = !DILocation(line: 455, column: 43, scope: !2380)
!2383 = !DILocation(line: 455, column: 46, scope: !2380)
!2384 = !DILocation(line: 455, column: 51, scope: !2380)
!2385 = !DILocation(line: 455, column: 6, scope: !2354)
!2386 = !DILocation(line: 456, column: 3, scope: !2380)
!2387 = !DILocation(line: 457, column: 6, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 457, column: 6)
!2389 = !DILocation(line: 457, column: 11, scope: !2388)
!2390 = !DILocation(line: 457, column: 6, scope: !2354)
!2391 = !DILocation(line: 457, column: 26, scope: !2388)
!2392 = !DILocation(line: 458, column: 6, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 458, column: 6)
!2394 = !DILocation(line: 458, column: 11, scope: !2393)
!2395 = !DILocation(line: 458, column: 6, scope: !2354)
!2396 = !DILocation(line: 458, column: 26, scope: !2393)
!2397 = !DILocation(line: 459, column: 6, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 459, column: 6)
!2399 = !DILocation(line: 459, column: 11, scope: !2398)
!2400 = !DILocation(line: 459, column: 6, scope: !2354)
!2401 = !DILocation(line: 459, column: 26, scope: !2398)
!2402 = !DILocation(line: 460, column: 6, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 460, column: 6)
!2404 = !DILocation(line: 460, column: 11, scope: !2403)
!2405 = !DILocation(line: 460, column: 6, scope: !2354)
!2406 = !DILocation(line: 460, column: 26, scope: !2403)
!2407 = !DILocation(line: 461, column: 6, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 461, column: 6)
!2409 = !DILocation(line: 461, column: 11, scope: !2408)
!2410 = !DILocation(line: 461, column: 6, scope: !2354)
!2411 = !DILocation(line: 461, column: 26, scope: !2408)
!2412 = !DILocation(line: 462, column: 6, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 462, column: 6)
!2414 = !DILocation(line: 462, column: 11, scope: !2413)
!2415 = !DILocation(line: 462, column: 6, scope: !2354)
!2416 = !DILocation(line: 462, column: 26, scope: !2413)
!2417 = !DILocation(line: 463, column: 6, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 463, column: 6)
!2419 = !DILocation(line: 463, column: 11, scope: !2418)
!2420 = !DILocation(line: 463, column: 6, scope: !2354)
!2421 = !DILocation(line: 463, column: 26, scope: !2418)
!2422 = !DILocation(line: 464, column: 6, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 464, column: 6)
!2424 = !DILocation(line: 464, column: 11, scope: !2423)
!2425 = !DILocation(line: 464, column: 6, scope: !2354)
!2426 = !DILocation(line: 464, column: 26, scope: !2423)
!2427 = !DILocation(line: 465, column: 6, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 465, column: 6)
!2429 = !DILocation(line: 465, column: 11, scope: !2428)
!2430 = !DILocation(line: 465, column: 6, scope: !2354)
!2431 = !DILocation(line: 465, column: 26, scope: !2428)
!2432 = !DILocation(line: 466, column: 6, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 466, column: 6)
!2434 = !DILocation(line: 466, column: 11, scope: !2433)
!2435 = !DILocation(line: 466, column: 6, scope: !2354)
!2436 = !DILocation(line: 466, column: 26, scope: !2433)
!2437 = !DILocation(line: 467, column: 6, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 467, column: 6)
!2439 = !DILocation(line: 467, column: 11, scope: !2438)
!2440 = !DILocation(line: 467, column: 6, scope: !2354)
!2441 = !DILocation(line: 467, column: 26, scope: !2438)
!2442 = !DILocation(line: 468, column: 6, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 468, column: 6)
!2444 = !DILocation(line: 468, column: 11, scope: !2443)
!2445 = !DILocation(line: 468, column: 6, scope: !2354)
!2446 = !DILocation(line: 468, column: 26, scope: !2443)
!2447 = !DILocation(line: 469, column: 6, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 469, column: 6)
!2449 = !DILocation(line: 469, column: 11, scope: !2448)
!2450 = !DILocation(line: 469, column: 6, scope: !2354)
!2451 = !DILocation(line: 469, column: 26, scope: !2448)
!2452 = !DILocation(line: 470, column: 6, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 470, column: 6)
!2454 = !DILocation(line: 470, column: 11, scope: !2453)
!2455 = !DILocation(line: 470, column: 6, scope: !2354)
!2456 = !DILocation(line: 470, column: 26, scope: !2453)
!2457 = !DILocation(line: 471, column: 6, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 471, column: 6)
!2459 = !DILocation(line: 471, column: 11, scope: !2458)
!2460 = !DILocation(line: 471, column: 6, scope: !2354)
!2461 = !DILocation(line: 471, column: 26, scope: !2458)
!2462 = !DILocation(line: 472, column: 6, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 472, column: 6)
!2464 = !DILocation(line: 472, column: 11, scope: !2463)
!2465 = !DILocation(line: 472, column: 6, scope: !2354)
!2466 = !DILocation(line: 472, column: 26, scope: !2463)
!2467 = !DILocation(line: 473, column: 6, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 473, column: 6)
!2469 = !DILocation(line: 473, column: 11, scope: !2468)
!2470 = !DILocation(line: 473, column: 6, scope: !2354)
!2471 = !DILocation(line: 473, column: 26, scope: !2468)
!2472 = !DILocation(line: 474, column: 6, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 474, column: 6)
!2474 = !DILocation(line: 474, column: 11, scope: !2473)
!2475 = !DILocation(line: 474, column: 6, scope: !2354)
!2476 = !DILocation(line: 474, column: 27, scope: !2473)
!2477 = !DILocation(line: 475, column: 6, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 475, column: 6)
!2479 = !DILocation(line: 475, column: 11, scope: !2478)
!2480 = !DILocation(line: 475, column: 6, scope: !2354)
!2481 = !DILocation(line: 475, column: 32, scope: !2478)
!2482 = !DILocation(line: 477, column: 50, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2354, file: !148, line: 477, column: 6)
!2484 = !{i8 0, i8 2}
!2485 = !{}
!2486 = !DILocation(line: 477, column: 6, scope: !2354)
!2487 = !DILocation(line: 478, column: 3, scope: !2483)
!2488 = !DILocation(line: 478, column: 3, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !148, line: 478, column: 3)
!2490 = distinct !DILexicalBlock(scope: !2483, file: !148, line: 478, column: 3)
!2491 = !{i32 -2143542198}
!2492 = !DILocation(line: 478, column: 3, scope: !2490)
!2493 = !DILocation(line: 480, column: 3, scope: !2483)
!2494 = !DILocation(line: 480, column: 3, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2483, file: !148, line: 480, column: 3)
!2496 = !DILocation(line: 480, column: 3, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2495, file: !148, line: 480, column: 3)
!2498 = !DILocation(line: 480, column: 3, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !148, line: 480, column: 3)
!2500 = !{i64 2151425301, i64 2151425330, i64 2151425376, i64 2151425434, i64 2151425488, i64 2151425542, i64 2151425597, i64 2151425628}
!2501 = !DILocation(line: 483, column: 2, scope: !2354)
!2502 = !DILocation(line: 484, column: 1, scope: !2354)
!2503 = !DISubprogram(name: "kmalloc_trace", scope: !148, file: !148, line: 525, type: !2504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!158, !2506, !159, !258}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2508, line: 11, flags: DIFlagFwdDecl)
!2508 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2509 = distinct !DISubprogram(name: "kmalloc_type", scope: !148, file: !148, line: 401, type: !2510, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!147, !159, !161}
!2512 = !{!2513, !2514}
!2513 = !DILocalVariable(name: "flags", arg: 1, scope: !2509, file: !148, line: 401, type: !159)
!2514 = !DILocalVariable(name: "caller", arg: 2, scope: !2509, file: !148, line: 401, type: !161)
!2515 = !DILocation(line: 401, column: 67, scope: !2509)
!2516 = !DILocation(line: 401, column: 88, scope: !2509)
!2517 = !DILocation(line: 407, column: 6, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2509, file: !148, line: 407, column: 6)
!2519 = !DILocation(line: 407, column: 6, scope: !2509)
!2520 = !DILocation(line: 413, column: 3, scope: !2518)
!2521 = !DILocation(line: 423, column: 38, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2509, file: !148, line: 423, column: 6)
!2523 = !DILocation(line: 423, column: 44, scope: !2522)
!2524 = !DILocation(line: 423, column: 6, scope: !2509)
!2525 = !DILocation(line: 424, column: 3, scope: !2522)
!2526 = !DILocation(line: 426, column: 3, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2509, file: !148, line: 425, column: 6)
!2528 = !DILocation(line: 429, column: 1, scope: !2509)
!2529 = !DISubprogram(name: "__kmalloc", scope: !148, file: !148, line: 488, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2530 = !DISubprogram(name: "__compiletime_assert_117", scope: !148, file: !148, line: 478, type: !2531, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null}
!2533 = !DISubprogram(name: "memcmp", scope: !719, file: !719, line: 196, type: !2534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!252, !170, !170, !259}
