; ModuleID = 'crypto/asymmetric_keys/pkcs7_parser.c'
source_filename = "crypto/asymmetric_keys/pkcs7_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pkcs7_free_message: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pkcs7_free_message ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pkcs7_parse_message: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pkcs7_parse_message ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pkcs7_get_content_data: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pkcs7_get_content_data ; .previous"

%struct.asn1_decoder = type opaque
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i64, i64, ptr }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8 }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i64, i64, ptr }
%struct.pkcs7_parse_context = type { ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i8 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_description199 = internal constant [40 x i8] c"pkcs7_message.description=PKCS#7 parser\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author200 = internal constant [35 x i8] c"pkcs7_message.author=Red Hat, Inc.\00", section ".modinfo", align 1, !dbg !184
@__UNIQUE_ID_file201 = internal constant [56 x i8] c"pkcs7_message.file=crypto/asymmetric_keys/pkcs7_message\00", section ".modinfo", align 1, !dbg !191
@__UNIQUE_ID_license202 = internal constant [26 x i8] c"pkcs7_message.license=GPL\00", section ".modinfo", align 1, !dbg !196
@__UNIQUE_ID___addressable_pkcs7_free_message203 = internal global ptr @pkcs7_free_message, section ".discard.addressable", align 8, !dbg !201
@pkcs7_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__UNIQUE_ID___addressable_pkcs7_parse_message204 = internal global ptr @pkcs7_parse_message, section ".discard.addressable", align 8, !dbg !203
@__UNIQUE_ID___addressable_pkcs7_get_content_data205 = internal global ptr @pkcs7_get_content_data, section ".discard.addressable", align 8, !dbg !205
@.str = private unnamed_addr constant [30 x i8] c"PKCS7: Unknown OID: [%lu] %s\0A\00", align 1, !dbg !207
@.str.1 = private unnamed_addr constant [4 x i8] c"md4\00", align 1, !dbg !212
@.str.2 = private unnamed_addr constant [4 x i8] c"md5\00", align 1, !dbg !217
@.str.3 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1, !dbg !219
@.str.4 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1, !dbg !224
@.str.5 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1, !dbg !229
@.str.6 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1, !dbg !231
@.str.7 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1, !dbg !233
@.str.8 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1, !dbg !235
@.str.9 = private unnamed_addr constant [12 x i8] c"streebog256\00", align 1, !dbg !237
@.str.10 = private unnamed_addr constant [12 x i8] c"streebog512\00", align 1, !dbg !242
@.str.11 = private unnamed_addr constant [29 x i8] c"Unsupported digest algo: %u\0A\00", align 1, !dbg !244
@.str.12 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1, !dbg !249
@.str.13 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1, !dbg !251
@.str.14 = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1, !dbg !256
@.str.15 = private unnamed_addr constant [5 x i8] c"x962\00", align 1, !dbg !258
@.str.16 = private unnamed_addr constant [4 x i8] c"sm2\00", align 1, !dbg !260
@.str.17 = private unnamed_addr constant [4 x i8] c"raw\00", align 1, !dbg !262
@.str.18 = private unnamed_addr constant [7 x i8] c"ecrdsa\00", align 1, !dbg !264
@.str.19 = private unnamed_addr constant [27 x i8] c"Unsupported pkey algo: %u\0A\00", align 1, !dbg !266
@.str.20 = private unnamed_addr constant [45 x i8] c"\014PKCS7: Only support pkcs7_signedData type\0A\00", align 1, !dbg !271
@.str.21 = private unnamed_addr constant [41 x i8] c"\014PKCS7: Unsupported SignedData version\0A\00", align 1, !dbg !276
@.str.22 = private unnamed_addr constant [41 x i8] c"\014PKCS7: Unsupported SignerInfo version\0A\00", align 1, !dbg !281
@.str.23 = private unnamed_addr constant [49 x i8] c"\014PKCS7: SignedData-SignerInfo version mismatch\0A\00", align 1, !dbg !283
@.str.24 = private unnamed_addr constant [35 x i8] c"\014PKCS7: Unsupported data type %d\0A\00", align 1, !dbg !288
@.str.25 = private unnamed_addr constant [67 x i8] c"\014PKCS7: Mismatch between global data type (%d) and sinfo %u (%d)\0A\00", align 1, !dbg !291
@.str.26 = private unnamed_addr constant [53 x i8] c"\014PKCS7: S/MIME Caps only allowed with Authenticode\0A\00", align 1, !dbg !296
@.str.27 = private unnamed_addr constant [64 x i8] c"\014PKCS7: Authenticode AuthAttrs only allowed with Authenticode\0A\00", align 1, !dbg !301
@.str.28 = private unnamed_addr constant [54 x i8] c"\014PKCS7: Repeated/multivalue AuthAttrs not permitted\0A\00", align 1, !dbg !306
@.str.29 = private unnamed_addr constant [36 x i8] c"\014PKCS7: Missing required AuthAttr\0A\00", align 1, !dbg !311
@.str.30 = private unnamed_addr constant [43 x i8] c"\014PKCS7: Unexpected Authenticode AuthAttr\0A\00", align 1, !dbg !316
@.str.31 = private unnamed_addr constant [42 x i8] c"\014PKCS7: Authenticode requires AuthAttrs\0A\00", align 1, !dbg !321
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !326
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.33 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !331
@.str.34 = private unnamed_addr constant [44 x i8] c"\014PKCS7: Inconsistently supplied authAttrs\0A\00", align 1, !dbg !336
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_author200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__UNIQUE_ID___addressable_pkcs7_free_message203, ptr @__UNIQUE_ID___addressable_pkcs7_parse_message204, ptr @__UNIQUE_ID___addressable_pkcs7_get_content_data205], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pkcs7_free_message(ptr noundef %pkcs7) #0 align 16 !dbg !353 {
entry:
  %pkcs7.addr = alloca ptr, align 8
  %cert = alloca ptr, align 8
  %sinfo = alloca ptr, align 8
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !470, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 8, ptr %cert) #16, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %cert, metadata !471, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfo) #16, !dbg !476
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !472, metadata !DIExpression()), !dbg !477
  %0 = load ptr, ptr %pkcs7.addr, align 8, !dbg !478
  %tobool = icmp ne ptr %0, null, !dbg !478
  br i1 %tobool, label %if.then, label %if.end, !dbg !480

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !481

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load ptr, ptr %pkcs7.addr, align 8, !dbg !483
  %certs = getelementptr inbounds %struct.pkcs7_message, ptr %1, i32 0, i32 0, !dbg !484
  %2 = load ptr, ptr %certs, align 8, !dbg !484
  %tobool1 = icmp ne ptr %2, null, !dbg !481
  br i1 %tobool1, label %while.body, label %while.end, !dbg !481

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %pkcs7.addr, align 8, !dbg !485
  %certs2 = getelementptr inbounds %struct.pkcs7_message, ptr %3, i32 0, i32 0, !dbg !487
  %4 = load ptr, ptr %certs2, align 8, !dbg !487
  store ptr %4, ptr %cert, align 8, !dbg !488
  %5 = load ptr, ptr %cert, align 8, !dbg !489
  %next = getelementptr inbounds %struct.x509_certificate, ptr %5, i32 0, i32 0, !dbg !490
  %6 = load ptr, ptr %next, align 8, !dbg !490
  %7 = load ptr, ptr %pkcs7.addr, align 8, !dbg !491
  %certs3 = getelementptr inbounds %struct.pkcs7_message, ptr %7, i32 0, i32 0, !dbg !492
  store ptr %6, ptr %certs3, align 8, !dbg !493
  %8 = load ptr, ptr %cert, align 8, !dbg !494
  call void @x509_free_certificate(ptr noundef %8) #17, !dbg !495
  br label %while.cond, !dbg !481, !llvm.loop !496

while.end:                                        ; preds = %while.cond
  br label %while.cond4, !dbg !500

while.cond4:                                      ; preds = %while.body6, %while.end
  %9 = load ptr, ptr %pkcs7.addr, align 8, !dbg !501
  %crl = getelementptr inbounds %struct.pkcs7_message, ptr %9, i32 0, i32 1, !dbg !502
  %10 = load ptr, ptr %crl, align 8, !dbg !502
  %tobool5 = icmp ne ptr %10, null, !dbg !500
  br i1 %tobool5, label %while.body6, label %while.end10, !dbg !500

while.body6:                                      ; preds = %while.cond4
  %11 = load ptr, ptr %pkcs7.addr, align 8, !dbg !503
  %crl7 = getelementptr inbounds %struct.pkcs7_message, ptr %11, i32 0, i32 1, !dbg !505
  %12 = load ptr, ptr %crl7, align 8, !dbg !505
  store ptr %12, ptr %cert, align 8, !dbg !506
  %13 = load ptr, ptr %cert, align 8, !dbg !507
  %next8 = getelementptr inbounds %struct.x509_certificate, ptr %13, i32 0, i32 0, !dbg !508
  %14 = load ptr, ptr %next8, align 8, !dbg !508
  %15 = load ptr, ptr %pkcs7.addr, align 8, !dbg !509
  %crl9 = getelementptr inbounds %struct.pkcs7_message, ptr %15, i32 0, i32 1, !dbg !510
  store ptr %14, ptr %crl9, align 8, !dbg !511
  %16 = load ptr, ptr %cert, align 8, !dbg !512
  call void @x509_free_certificate(ptr noundef %16) #17, !dbg !513
  br label %while.cond4, !dbg !500, !llvm.loop !514

while.end10:                                      ; preds = %while.cond4
  br label %while.cond11, !dbg !516

while.cond11:                                     ; preds = %while.body13, %while.end10
  %17 = load ptr, ptr %pkcs7.addr, align 8, !dbg !517
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %17, i32 0, i32 2, !dbg !518
  %18 = load ptr, ptr %signed_infos, align 8, !dbg !518
  %tobool12 = icmp ne ptr %18, null, !dbg !516
  br i1 %tobool12, label %while.body13, label %while.end17, !dbg !516

while.body13:                                     ; preds = %while.cond11
  %19 = load ptr, ptr %pkcs7.addr, align 8, !dbg !519
  %signed_infos14 = getelementptr inbounds %struct.pkcs7_message, ptr %19, i32 0, i32 2, !dbg !521
  %20 = load ptr, ptr %signed_infos14, align 8, !dbg !521
  store ptr %20, ptr %sinfo, align 8, !dbg !522
  %21 = load ptr, ptr %sinfo, align 8, !dbg !523
  %next15 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %21, i32 0, i32 0, !dbg !524
  %22 = load ptr, ptr %next15, align 8, !dbg !524
  %23 = load ptr, ptr %pkcs7.addr, align 8, !dbg !525
  %signed_infos16 = getelementptr inbounds %struct.pkcs7_message, ptr %23, i32 0, i32 2, !dbg !526
  store ptr %22, ptr %signed_infos16, align 8, !dbg !527
  %24 = load ptr, ptr %sinfo, align 8, !dbg !528
  call void @pkcs7_free_signed_info(ptr noundef %24) #17, !dbg !529
  br label %while.cond11, !dbg !516, !llvm.loop !530

while.end17:                                      ; preds = %while.cond11
  %25 = load ptr, ptr %pkcs7.addr, align 8, !dbg !532
  call void @kfree(ptr noundef %25) #17, !dbg !533
  br label %if.end, !dbg !534

if.end:                                           ; preds = %while.end17, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfo) #16, !dbg !535
  call void @llvm.lifetime.end.p0(i64 8, ptr %cert) #16, !dbg !535
  ret void, !dbg !535
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !536 dso_local void @x509_free_certificate(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pkcs7_free_signed_info(ptr noundef %sinfo) #0 align 16 !dbg !539 {
entry:
  %sinfo.addr = alloca ptr, align 8
  store ptr %sinfo, ptr %sinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sinfo.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load ptr, ptr %sinfo.addr, align 8, !dbg !545
  %tobool = icmp ne ptr %0, null, !dbg !545
  br i1 %tobool, label %if.then, label %if.end, !dbg !547

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sinfo.addr, align 8, !dbg !548
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 11, !dbg !550
  %2 = load ptr, ptr %sig, align 8, !dbg !550
  call void @public_key_signature_free(ptr noundef %2) #17, !dbg !551
  %3 = load ptr, ptr %sinfo.addr, align 8, !dbg !552
  call void @kfree(ptr noundef %3) #17, !dbg !553
  br label %if.end, !dbg !554

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !555
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !556 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pkcs7_parse_message(ptr noundef %data, i64 noundef %datalen) #0 align 16 !dbg !559 {
entry:
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %msg = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cert = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !563, metadata !DIExpression()), !dbg !597
  store i64 %datalen, ptr %datalen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datalen.addr, metadata !564, metadata !DIExpression()), !dbg !598
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !599
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !565, metadata !DIExpression()), !dbg !600
  call void @llvm.lifetime.start.p0(i64 8, ptr %msg) #16, !dbg !601
  call void @llvm.dbg.declare(metadata ptr %msg, metadata !587, metadata !DIExpression()), !dbg !602
  %call = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !603
  store ptr %call, ptr %msg, align 8, !dbg !602
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !604
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !588, metadata !DIExpression()), !dbg !605
  %call1 = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #18, !dbg !606
  store ptr %call1, ptr %ctx, align 8, !dbg !607
  %0 = load ptr, ptr %ctx, align 8, !dbg !608
  %tobool = icmp ne ptr %0, null, !dbg !608
  br i1 %tobool, label %if.end, label %if.then, !dbg !610

if.then:                                          ; preds = %entry
  br label %out_no_ctx, !dbg !611

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #18, !dbg !612
  %1 = load ptr, ptr %ctx, align 8, !dbg !613
  %msg3 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %1, i32 0, i32 0, !dbg !614
  store ptr %call2, ptr %msg3, align 8, !dbg !615
  %2 = load ptr, ptr %ctx, align 8, !dbg !616
  %msg4 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %2, i32 0, i32 0, !dbg !618
  %3 = load ptr, ptr %msg4, align 8, !dbg !618
  %tobool5 = icmp ne ptr %3, null, !dbg !616
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !619

if.then6:                                         ; preds = %if.end
  br label %out_no_msg, !dbg !620

if.end7:                                          ; preds = %if.end
  %call8 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !621
  %4 = load ptr, ptr %ctx, align 8, !dbg !622
  %sinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 1, !dbg !623
  store ptr %call8, ptr %sinfo, align 8, !dbg !624
  %5 = load ptr, ptr %ctx, align 8, !dbg !625
  %sinfo9 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %5, i32 0, i32 1, !dbg !627
  %6 = load ptr, ptr %sinfo9, align 8, !dbg !627
  %tobool10 = icmp ne ptr %6, null, !dbg !625
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !628

if.then11:                                        ; preds = %if.end7
  br label %out_no_sinfo, !dbg !629

if.end12:                                         ; preds = %if.end7
  %call13 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !630
  %7 = load ptr, ptr %ctx, align 8, !dbg !631
  %sinfo14 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %7, i32 0, i32 1, !dbg !632
  %8 = load ptr, ptr %sinfo14, align 8, !dbg !632
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %8, i32 0, i32 11, !dbg !633
  store ptr %call13, ptr %sig, align 8, !dbg !634
  %9 = load ptr, ptr %ctx, align 8, !dbg !635
  %sinfo15 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %9, i32 0, i32 1, !dbg !637
  %10 = load ptr, ptr %sinfo15, align 8, !dbg !637
  %sig16 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %10, i32 0, i32 11, !dbg !638
  %11 = load ptr, ptr %sig16, align 8, !dbg !638
  %tobool17 = icmp ne ptr %11, null, !dbg !635
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !639

if.then18:                                        ; preds = %if.end12
  br label %out_no_sig, !dbg !640

if.end19:                                         ; preds = %if.end12
  %12 = load ptr, ptr %data.addr, align 8, !dbg !641
  %13 = ptrtoint ptr %12 to i64, !dbg !642
  %14 = load ptr, ptr %ctx, align 8, !dbg !643
  %data20 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %14, i32 0, i32 5, !dbg !644
  store i64 %13, ptr %data20, align 8, !dbg !645
  %15 = load ptr, ptr %ctx, align 8, !dbg !646
  %certs = getelementptr inbounds %struct.pkcs7_parse_context, ptr %15, i32 0, i32 3, !dbg !647
  %16 = load ptr, ptr %ctx, align 8, !dbg !648
  %ppcerts = getelementptr inbounds %struct.pkcs7_parse_context, ptr %16, i32 0, i32 4, !dbg !649
  store ptr %certs, ptr %ppcerts, align 8, !dbg !650
  %17 = load ptr, ptr %ctx, align 8, !dbg !651
  %msg21 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %17, i32 0, i32 0, !dbg !652
  %18 = load ptr, ptr %msg21, align 8, !dbg !652
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %18, i32 0, i32 2, !dbg !653
  %19 = load ptr, ptr %ctx, align 8, !dbg !654
  %ppsinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %19, i32 0, i32 2, !dbg !655
  store ptr %signed_infos, ptr %ppsinfo, align 8, !dbg !656
  %20 = load ptr, ptr %ctx, align 8, !dbg !657
  %21 = load ptr, ptr %data.addr, align 8, !dbg !658
  %22 = load i64, ptr %datalen.addr, align 8, !dbg !659
  %call22 = call i32 @asn1_ber_decoder(ptr noundef @pkcs7_decoder, ptr noundef %20, ptr noundef %21, i64 noundef %22) #17, !dbg !660
  store i32 %call22, ptr %ret, align 4, !dbg !661
  %23 = load i32, ptr %ret, align 4, !dbg !662
  %cmp = icmp slt i32 %23, 0, !dbg !664
  br i1 %cmp, label %if.then23, label %if.end25, !dbg !665

if.then23:                                        ; preds = %if.end19
  %24 = load i32, ptr %ret, align 4, !dbg !666
  %conv = sext i32 %24 to i64, !dbg !666
  %call24 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !668
  store ptr %call24, ptr %msg, align 8, !dbg !669
  br label %out, !dbg !670

if.end25:                                         ; preds = %if.end19
  %25 = load ptr, ptr %ctx, align 8, !dbg !671
  %msg26 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %25, i32 0, i32 0, !dbg !672
  %26 = load ptr, ptr %msg26, align 8, !dbg !672
  %call27 = call i32 @pkcs7_check_authattrs(ptr noundef %26) #17, !dbg !673
  store i32 %call27, ptr %ret, align 4, !dbg !674
  %27 = load i32, ptr %ret, align 4, !dbg !675
  %cmp28 = icmp slt i32 %27, 0, !dbg !677
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !678

if.then30:                                        ; preds = %if.end25
  %28 = load i32, ptr %ret, align 4, !dbg !679
  %conv31 = sext i32 %28 to i64, !dbg !679
  %call32 = call ptr @ERR_PTR(i64 noundef %conv31) #17, !dbg !681
  store ptr %call32, ptr %msg, align 8, !dbg !682
  br label %out, !dbg !683

if.end33:                                         ; preds = %if.end25
  %29 = load ptr, ptr %ctx, align 8, !dbg !684
  %msg34 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %29, i32 0, i32 0, !dbg !685
  %30 = load ptr, ptr %msg34, align 8, !dbg !685
  store ptr %30, ptr %msg, align 8, !dbg !686
  %31 = load ptr, ptr %ctx, align 8, !dbg !687
  %msg35 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %31, i32 0, i32 0, !dbg !688
  store ptr null, ptr %msg35, align 8, !dbg !689
  br label %out, !dbg !687

out:                                              ; preds = %if.end33, %if.then30, %if.then23
  call void @llvm.dbg.label(metadata !590), !dbg !690
  br label %while.cond, !dbg !691

while.cond:                                       ; preds = %while.body, %out
  %32 = load ptr, ptr %ctx, align 8, !dbg !692
  %certs36 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %32, i32 0, i32 3, !dbg !693
  %33 = load ptr, ptr %certs36, align 8, !dbg !693
  %tobool37 = icmp ne ptr %33, null, !dbg !691
  br i1 %tobool37, label %while.body, label %while.end, !dbg !691

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cert) #16, !dbg !694
  call void @llvm.dbg.declare(metadata ptr %cert, metadata !591, metadata !DIExpression()), !dbg !695
  %34 = load ptr, ptr %ctx, align 8, !dbg !696
  %certs38 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %34, i32 0, i32 3, !dbg !697
  %35 = load ptr, ptr %certs38, align 8, !dbg !697
  store ptr %35, ptr %cert, align 8, !dbg !695
  %36 = load ptr, ptr %cert, align 8, !dbg !698
  %next = getelementptr inbounds %struct.x509_certificate, ptr %36, i32 0, i32 0, !dbg !699
  %37 = load ptr, ptr %next, align 8, !dbg !699
  %38 = load ptr, ptr %ctx, align 8, !dbg !700
  %certs39 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %38, i32 0, i32 3, !dbg !701
  store ptr %37, ptr %certs39, align 8, !dbg !702
  %39 = load ptr, ptr %cert, align 8, !dbg !703
  call void @x509_free_certificate(ptr noundef %39) #17, !dbg !704
  call void @llvm.lifetime.end.p0(i64 8, ptr %cert) #16, !dbg !705
  br label %while.cond, !dbg !691, !llvm.loop !706

while.end:                                        ; preds = %while.cond
  br label %out_no_sig, !dbg !691

out_no_sig:                                       ; preds = %while.end, %if.then18
  call void @llvm.dbg.label(metadata !593), !dbg !707
  %40 = load ptr, ptr %ctx, align 8, !dbg !708
  %sinfo40 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %40, i32 0, i32 1, !dbg !709
  %41 = load ptr, ptr %sinfo40, align 8, !dbg !709
  call void @pkcs7_free_signed_info(ptr noundef %41) #17, !dbg !710
  br label %out_no_sinfo, !dbg !710

out_no_sinfo:                                     ; preds = %out_no_sig, %if.then11
  call void @llvm.dbg.label(metadata !594), !dbg !711
  %42 = load ptr, ptr %ctx, align 8, !dbg !712
  %msg41 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %42, i32 0, i32 0, !dbg !713
  %43 = load ptr, ptr %msg41, align 8, !dbg !713
  call void @pkcs7_free_message(ptr noundef %43) #17, !dbg !714
  br label %out_no_msg, !dbg !714

out_no_msg:                                       ; preds = %out_no_sinfo, %if.then6
  call void @llvm.dbg.label(metadata !595), !dbg !715
  %44 = load ptr, ptr %ctx, align 8, !dbg !716
  call void @kfree(ptr noundef %44) #17, !dbg !717
  br label %out_no_ctx, !dbg !717

out_no_ctx:                                       ; preds = %out_no_msg, %if.then
  call void @llvm.dbg.label(metadata !596), !dbg !718
  %45 = load ptr, ptr %msg, align 8, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !720
  call void @llvm.lifetime.end.p0(i64 8, ptr %msg) #16, !dbg !720
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !720
  ret ptr %45, !dbg !721
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !722 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !727, metadata !DIExpression()), !dbg !728
  %0 = load i64, ptr %error.addr, align 8, !dbg !729
  %1 = inttoptr i64 %0 to ptr, !dbg !730
  ret ptr %1, !dbg !731
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !732 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !736, metadata !DIExpression()), !dbg !738
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !737, metadata !DIExpression()), !dbg !739
  %0 = load i64, ptr %size.addr, align 8, !dbg !740
  %1 = load i32, ptr %flags.addr, align 4, !dbg !741
  %or = or i32 %1, 256, !dbg !742
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !743
  ret ptr %call, !dbg !744
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !745 dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pkcs7_check_authattrs(ptr noundef %msg) #0 align 16 !dbg !754 {
entry:
  %retval = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %sinfo = alloca ptr, align 8
  %want = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !758, metadata !DIExpression()), !dbg !762
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfo) #16, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !759, metadata !DIExpression()), !dbg !764
  call void @llvm.lifetime.start.p0(i64 1, ptr %want) #16, !dbg !765
  call void @llvm.dbg.declare(metadata ptr %want, metadata !760, metadata !DIExpression()), !dbg !766
  store i8 0, ptr %want, align 1, !dbg !766
  %0 = load ptr, ptr %msg.addr, align 8, !dbg !767
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 2, !dbg !768
  %1 = load ptr, ptr %signed_infos, align 8, !dbg !768
  store ptr %1, ptr %sinfo, align 8, !dbg !769
  %2 = load ptr, ptr %sinfo, align 8, !dbg !770
  %tobool = icmp ne ptr %2, null, !dbg !770
  br i1 %tobool, label %if.end, label %if.then, !dbg !772

if.then:                                          ; preds = %entry
  br label %inconsistent, !dbg !773

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sinfo, align 8, !dbg !774
  %authattrs = getelementptr inbounds %struct.pkcs7_signed_info, ptr %3, i32 0, i32 8, !dbg !776
  %4 = load ptr, ptr %authattrs, align 8, !dbg !776
  %tobool1 = icmp ne ptr %4, null, !dbg !774
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !777

if.then2:                                         ; preds = %if.end
  store i8 1, ptr %want, align 1, !dbg !778
  %5 = load ptr, ptr %msg.addr, align 8, !dbg !780
  %have_authattrs = getelementptr inbounds %struct.pkcs7_message, ptr %5, i32 0, i32 4, !dbg !781
  store i8 1, ptr %have_authattrs, align 1, !dbg !782
  br label %if.end3, !dbg !783

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %sinfo, align 8, !dbg !784
  %next = getelementptr inbounds %struct.pkcs7_signed_info, ptr %6, i32 0, i32 0, !dbg !786
  %7 = load ptr, ptr %next, align 8, !dbg !786
  store ptr %7, ptr %sinfo, align 8, !dbg !787
  br label %for.cond, !dbg !788

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load ptr, ptr %sinfo, align 8, !dbg !789
  %tobool4 = icmp ne ptr %8, null, !dbg !791
  br i1 %tobool4, label %for.body, label %for.end, !dbg !791

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %sinfo, align 8, !dbg !792
  %authattrs5 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %9, i32 0, i32 8, !dbg !794
  %10 = load ptr, ptr %authattrs5, align 8, !dbg !794
  %tobool6 = icmp ne ptr %10, null, !dbg !795
  %lnot = xor i1 %tobool6, true, !dbg !795
  %lnot7 = xor i1 %lnot, true, !dbg !796
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !796
  %11 = load i8, ptr %want, align 1, !dbg !797, !range !798, !noundef !799
  %tobool8 = trunc i8 %11 to i1, !dbg !797
  %conv = zext i1 %tobool8 to i32, !dbg !797
  %cmp = icmp ne i32 %lnot.ext, %conv, !dbg !800
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !801

if.then10:                                        ; preds = %for.body
  br label %inconsistent, !dbg !802

if.end11:                                         ; preds = %for.body
  br label %for.inc, !dbg !797

for.inc:                                          ; preds = %if.end11
  %12 = load ptr, ptr %sinfo, align 8, !dbg !803
  %next12 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %12, i32 0, i32 0, !dbg !804
  %13 = load ptr, ptr %next12, align 8, !dbg !804
  store ptr %13, ptr %sinfo, align 8, !dbg !805
  br label %for.cond, !dbg !806, !llvm.loop !807

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !809

inconsistent:                                     ; preds = %if.then10, %if.then
  call void @llvm.dbg.label(metadata !761), !dbg !810
  br label %do.body, !dbg !811

do.body:                                          ; preds = %inconsistent
  br label %do.cond, !dbg !813

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !813

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.34) #19, !dbg !811
  store i32 %call, ptr %tmp, align 4, !dbg !813
  %14 = load i32, ptr %tmp, align 4, !dbg !811
  store i32 -22, ptr %retval, align 4, !dbg !815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !815

cleanup:                                          ; preds = %do.end, %for.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %want) #16, !dbg !816
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfo) #16, !dbg !816
  %15 = load i32, ptr %retval, align 4, !dbg !816
  ret i32 %15, !dbg !816
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_get_content_data(ptr noundef %pkcs7, ptr noundef %_data, ptr noundef %_data_len, ptr noundef %_headerlen) #0 align 16 !dbg !817 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %_data.addr = alloca ptr, align 8
  %_data_len.addr = alloca ptr, align 8
  %_headerlen.addr = alloca ptr, align 8
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !825, metadata !DIExpression()), !dbg !829
  store ptr %_data, ptr %_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_data.addr, metadata !826, metadata !DIExpression()), !dbg !830
  store ptr %_data_len, ptr %_data_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_data_len.addr, metadata !827, metadata !DIExpression()), !dbg !831
  store ptr %_headerlen, ptr %_headerlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_headerlen.addr, metadata !828, metadata !DIExpression()), !dbg !832
  %0 = load ptr, ptr %pkcs7.addr, align 8, !dbg !833
  %data = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 8, !dbg !835
  %1 = load ptr, ptr %data, align 8, !dbg !835
  %tobool = icmp ne ptr %1, null, !dbg !833
  br i1 %tobool, label %if.end, label %if.then, !dbg !836

if.then:                                          ; preds = %entry
  store i32 -61, ptr %retval, align 4, !dbg !837
  br label %return, !dbg !837

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pkcs7.addr, align 8, !dbg !838
  %data1 = getelementptr inbounds %struct.pkcs7_message, ptr %2, i32 0, i32 8, !dbg !839
  %3 = load ptr, ptr %data1, align 8, !dbg !839
  %4 = load ptr, ptr %_data.addr, align 8, !dbg !840
  store ptr %3, ptr %4, align 8, !dbg !841
  %5 = load ptr, ptr %pkcs7.addr, align 8, !dbg !842
  %data_len = getelementptr inbounds %struct.pkcs7_message, ptr %5, i32 0, i32 6, !dbg !843
  %6 = load i64, ptr %data_len, align 8, !dbg !843
  %7 = load ptr, ptr %_data_len.addr, align 8, !dbg !844
  store i64 %6, ptr %7, align 8, !dbg !845
  %8 = load ptr, ptr %_headerlen.addr, align 8, !dbg !846
  %tobool2 = icmp ne ptr %8, null, !dbg !846
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !848

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %pkcs7.addr, align 8, !dbg !849
  %data_hdrlen = getelementptr inbounds %struct.pkcs7_message, ptr %9, i32 0, i32 7, !dbg !850
  %10 = load i64, ptr %data_hdrlen, align 8, !dbg !850
  %11 = load ptr, ptr %_headerlen.addr, align 8, !dbg !851
  store i64 %10, ptr %11, align 8, !dbg !852
  br label %if.end4, !dbg !853

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %retval, align 4, !dbg !854
  br label %return, !dbg !854

return:                                           ; preds = %if.end4, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !855
  ret i32 %12, !dbg !855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_note_OID(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !856 {
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
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !860, metadata !DIExpression()), !dbg !872
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !861, metadata !DIExpression()), !dbg !873
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !862, metadata !DIExpression()), !dbg !874
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !863, metadata !DIExpression()), !dbg !875
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !864, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !865, metadata !DIExpression()), !dbg !878
  %0 = load ptr, ptr %context.addr, align 8, !dbg !879
  store ptr %0, ptr %ctx, align 8, !dbg !878
  %1 = load ptr, ptr %value.addr, align 8, !dbg !880
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !881
  %call = call i32 @look_up_OID(ptr noundef %1, i64 noundef %2) #17, !dbg !882
  %3 = load ptr, ptr %ctx, align 8, !dbg !883
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %3, i32 0, i32 6, !dbg !884
  store i32 %call, ptr %last_oid, align 8, !dbg !885
  %4 = load ptr, ptr %ctx, align 8, !dbg !886
  %last_oid1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 6, !dbg !887
  %5 = load i32, ptr %last_oid1, align 8, !dbg !887
  %cmp = icmp eq i32 %5, 99, !dbg !888
  br i1 %cmp, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr %buffer) #16, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !866, metadata !DIExpression()), !dbg !891
  %6 = load ptr, ptr %value.addr, align 8, !dbg !892
  %7 = load i64, ptr %vlen.addr, align 8, !dbg !893
  %arraydecay = getelementptr inbounds [50 x i8], ptr %buffer, i64 0, i64 0, !dbg !894
  %call2 = call i32 @sprint_oid(ptr noundef %6, i64 noundef %7, ptr noundef %arraydecay, i64 noundef 50) #17, !dbg !895
  br label %do.body, !dbg !896

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !898

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !898

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %value.addr, align 8, !dbg !896
  %9 = ptrtoint ptr %8 to i64, !dbg !896
  %10 = load ptr, ptr %ctx, align 8, !dbg !896
  %data = getelementptr inbounds %struct.pkcs7_parse_context, ptr %10, i32 0, i32 5, !dbg !896
  %11 = load i64, ptr %data, align 8, !dbg !896
  %sub = sub i64 %9, %11, !dbg !896
  %arraydecay3 = getelementptr inbounds [50 x i8], ptr %buffer, i64 0, i64 0, !dbg !896
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i64 noundef %sub, ptr noundef %arraydecay3) #19, !dbg !896
  store i32 %call4, ptr %tmp, align 4, !dbg !898
  %12 = load i32, ptr %tmp, align 4, !dbg !896
  call void @llvm.lifetime.end.p0(i64 50, ptr %buffer) #16, !dbg !900
  br label %if.end, !dbg !901

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !902
  ret i32 0, !dbg !903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !904 dso_local i32 @look_up_OID(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !907 dso_local i32 @sprint_oid(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !910 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_sig_note_digest_algo(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !914 {
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
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !916, metadata !DIExpression()), !dbg !922
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !917, metadata !DIExpression()), !dbg !923
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !918, metadata !DIExpression()), !dbg !924
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !919, metadata !DIExpression()), !dbg !925
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !920, metadata !DIExpression()), !dbg !926
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !927
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !921, metadata !DIExpression()), !dbg !928
  %0 = load ptr, ptr %context.addr, align 8, !dbg !929
  store ptr %0, ptr %ctx, align 8, !dbg !928
  %1 = load ptr, ptr %ctx, align 8, !dbg !930
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %1, i32 0, i32 6, !dbg !931
  %2 = load i32, ptr %last_oid, align 8, !dbg !931
  switch i32 %2, label %sw.default [
    i32 28, label %sw.bb
    i32 29, label %sw.bb1
    i32 46, label %sw.bb5
    i32 48, label %sw.bb9
    i32 49, label %sw.bb13
    i32 50, label %sw.bb17
    i32 51, label %sw.bb21
    i32 93, label %sw.bb25
    i32 81, label %sw.bb29
    i32 82, label %sw.bb33
  ], !dbg !932

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8, !dbg !933
  %sinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %3, i32 0, i32 1, !dbg !935
  %4 = load ptr, ptr %sinfo, align 8, !dbg !935
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %4, i32 0, i32 11, !dbg !936
  %5 = load ptr, ptr %sig, align 8, !dbg !936
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %5, i32 0, i32 6, !dbg !937
  store ptr @.str.1, ptr %hash_algo, align 8, !dbg !938
  br label %sw.epilog, !dbg !939

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %ctx, align 8, !dbg !940
  %sinfo2 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %6, i32 0, i32 1, !dbg !941
  %7 = load ptr, ptr %sinfo2, align 8, !dbg !941
  %sig3 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 11, !dbg !942
  %8 = load ptr, ptr %sig3, align 8, !dbg !942
  %hash_algo4 = getelementptr inbounds %struct.public_key_signature, ptr %8, i32 0, i32 6, !dbg !943
  store ptr @.str.2, ptr %hash_algo4, align 8, !dbg !944
  br label %sw.epilog, !dbg !945

sw.bb5:                                           ; preds = %entry
  %9 = load ptr, ptr %ctx, align 8, !dbg !946
  %sinfo6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %9, i32 0, i32 1, !dbg !947
  %10 = load ptr, ptr %sinfo6, align 8, !dbg !947
  %sig7 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %10, i32 0, i32 11, !dbg !948
  %11 = load ptr, ptr %sig7, align 8, !dbg !948
  %hash_algo8 = getelementptr inbounds %struct.public_key_signature, ptr %11, i32 0, i32 6, !dbg !949
  store ptr @.str.3, ptr %hash_algo8, align 8, !dbg !950
  br label %sw.epilog, !dbg !951

sw.bb9:                                           ; preds = %entry
  %12 = load ptr, ptr %ctx, align 8, !dbg !952
  %sinfo10 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %12, i32 0, i32 1, !dbg !953
  %13 = load ptr, ptr %sinfo10, align 8, !dbg !953
  %sig11 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %13, i32 0, i32 11, !dbg !954
  %14 = load ptr, ptr %sig11, align 8, !dbg !954
  %hash_algo12 = getelementptr inbounds %struct.public_key_signature, ptr %14, i32 0, i32 6, !dbg !955
  store ptr @.str.4, ptr %hash_algo12, align 8, !dbg !956
  br label %sw.epilog, !dbg !957

sw.bb13:                                          ; preds = %entry
  %15 = load ptr, ptr %ctx, align 8, !dbg !958
  %sinfo14 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %15, i32 0, i32 1, !dbg !959
  %16 = load ptr, ptr %sinfo14, align 8, !dbg !959
  %sig15 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %16, i32 0, i32 11, !dbg !960
  %17 = load ptr, ptr %sig15, align 8, !dbg !960
  %hash_algo16 = getelementptr inbounds %struct.public_key_signature, ptr %17, i32 0, i32 6, !dbg !961
  store ptr @.str.5, ptr %hash_algo16, align 8, !dbg !962
  br label %sw.epilog, !dbg !963

sw.bb17:                                          ; preds = %entry
  %18 = load ptr, ptr %ctx, align 8, !dbg !964
  %sinfo18 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %18, i32 0, i32 1, !dbg !965
  %19 = load ptr, ptr %sinfo18, align 8, !dbg !965
  %sig19 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %19, i32 0, i32 11, !dbg !966
  %20 = load ptr, ptr %sig19, align 8, !dbg !966
  %hash_algo20 = getelementptr inbounds %struct.public_key_signature, ptr %20, i32 0, i32 6, !dbg !967
  store ptr @.str.6, ptr %hash_algo20, align 8, !dbg !968
  br label %sw.epilog, !dbg !969

sw.bb21:                                          ; preds = %entry
  %21 = load ptr, ptr %ctx, align 8, !dbg !970
  %sinfo22 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %21, i32 0, i32 1, !dbg !971
  %22 = load ptr, ptr %sinfo22, align 8, !dbg !971
  %sig23 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %22, i32 0, i32 11, !dbg !972
  %23 = load ptr, ptr %sig23, align 8, !dbg !972
  %hash_algo24 = getelementptr inbounds %struct.public_key_signature, ptr %23, i32 0, i32 6, !dbg !973
  store ptr @.str.7, ptr %hash_algo24, align 8, !dbg !974
  br label %sw.epilog, !dbg !975

sw.bb25:                                          ; preds = %entry
  %24 = load ptr, ptr %ctx, align 8, !dbg !976
  %sinfo26 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %24, i32 0, i32 1, !dbg !977
  %25 = load ptr, ptr %sinfo26, align 8, !dbg !977
  %sig27 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %25, i32 0, i32 11, !dbg !978
  %26 = load ptr, ptr %sig27, align 8, !dbg !978
  %hash_algo28 = getelementptr inbounds %struct.public_key_signature, ptr %26, i32 0, i32 6, !dbg !979
  store ptr @.str.8, ptr %hash_algo28, align 8, !dbg !980
  br label %sw.epilog, !dbg !981

sw.bb29:                                          ; preds = %entry
  %27 = load ptr, ptr %ctx, align 8, !dbg !982
  %sinfo30 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %27, i32 0, i32 1, !dbg !983
  %28 = load ptr, ptr %sinfo30, align 8, !dbg !983
  %sig31 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %28, i32 0, i32 11, !dbg !984
  %29 = load ptr, ptr %sig31, align 8, !dbg !984
  %hash_algo32 = getelementptr inbounds %struct.public_key_signature, ptr %29, i32 0, i32 6, !dbg !985
  store ptr @.str.9, ptr %hash_algo32, align 8, !dbg !986
  br label %sw.epilog, !dbg !987

sw.bb33:                                          ; preds = %entry
  %30 = load ptr, ptr %ctx, align 8, !dbg !988
  %sinfo34 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %30, i32 0, i32 1, !dbg !989
  %31 = load ptr, ptr %sinfo34, align 8, !dbg !989
  %sig35 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %31, i32 0, i32 11, !dbg !990
  %32 = load ptr, ptr %sig35, align 8, !dbg !990
  %hash_algo36 = getelementptr inbounds %struct.public_key_signature, ptr %32, i32 0, i32 6, !dbg !991
  store ptr @.str.10, ptr %hash_algo36, align 8, !dbg !992
  br label %sw.epilog, !dbg !993

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !994

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !996

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !996

do.end:                                           ; preds = %do.cond
  %33 = load ptr, ptr %ctx, align 8, !dbg !994
  %last_oid37 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %33, i32 0, i32 6, !dbg !994
  %34 = load i32, ptr %last_oid37, align 8, !dbg !994
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %34) #19, !dbg !994
  store i32 %call, ptr %tmp, align 4, !dbg !996
  %35 = load i32, ptr %tmp, align 4, !dbg !994
  store i32 -65, ptr %retval, align 4, !dbg !998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !998

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb29, %sw.bb25, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !999

cleanup:                                          ; preds = %sw.epilog, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1000
  %36 = load i32, ptr %retval, align 4, !dbg !1000
  ret i32 %36, !dbg !1000
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_sig_note_pkey_algo(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1001 {
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
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1003, metadata !DIExpression()), !dbg !1009
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1004, metadata !DIExpression()), !dbg !1010
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1005, metadata !DIExpression()), !dbg !1011
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1006, metadata !DIExpression()), !dbg !1012
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1007, metadata !DIExpression()), !dbg !1013
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1008, metadata !DIExpression()), !dbg !1015
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1016
  store ptr %0, ptr %ctx, align 8, !dbg !1015
  %1 = load ptr, ptr %ctx, align 8, !dbg !1017
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %1, i32 0, i32 6, !dbg !1018
  %2 = load i32, ptr %last_oid, align 8, !dbg !1018
  switch i32 %2, label %sw.default [
    i32 10, label %sw.bb
    i32 5, label %sw.bb3
    i32 6, label %sw.bb3
    i32 7, label %sw.bb3
    i32 8, label %sw.bb3
    i32 9, label %sw.bb3
    i32 94, label %sw.bb10
    i32 79, label %sw.bb17
    i32 80, label %sw.bb17
  ], !dbg !1019

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8, !dbg !1020
  %sinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %3, i32 0, i32 1, !dbg !1022
  %4 = load ptr, ptr %sinfo, align 8, !dbg !1022
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %4, i32 0, i32 11, !dbg !1023
  %5 = load ptr, ptr %sig, align 8, !dbg !1023
  %pkey_algo = getelementptr inbounds %struct.public_key_signature, ptr %5, i32 0, i32 5, !dbg !1024
  store ptr @.str.12, ptr %pkey_algo, align 8, !dbg !1025
  %6 = load ptr, ptr %ctx, align 8, !dbg !1026
  %sinfo1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %6, i32 0, i32 1, !dbg !1027
  %7 = load ptr, ptr %sinfo1, align 8, !dbg !1027
  %sig2 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 11, !dbg !1028
  %8 = load ptr, ptr %sig2, align 8, !dbg !1028
  %encoding = getelementptr inbounds %struct.public_key_signature, ptr %8, i32 0, i32 7, !dbg !1029
  store ptr @.str.13, ptr %encoding, align 8, !dbg !1030
  br label %sw.epilog, !dbg !1031

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry, %entry
  %9 = load ptr, ptr %ctx, align 8, !dbg !1032
  %sinfo4 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %9, i32 0, i32 1, !dbg !1033
  %10 = load ptr, ptr %sinfo4, align 8, !dbg !1033
  %sig5 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %10, i32 0, i32 11, !dbg !1034
  %11 = load ptr, ptr %sig5, align 8, !dbg !1034
  %pkey_algo6 = getelementptr inbounds %struct.public_key_signature, ptr %11, i32 0, i32 5, !dbg !1035
  store ptr @.str.14, ptr %pkey_algo6, align 8, !dbg !1036
  %12 = load ptr, ptr %ctx, align 8, !dbg !1037
  %sinfo7 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %12, i32 0, i32 1, !dbg !1038
  %13 = load ptr, ptr %sinfo7, align 8, !dbg !1038
  %sig8 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %13, i32 0, i32 11, !dbg !1039
  %14 = load ptr, ptr %sig8, align 8, !dbg !1039
  %encoding9 = getelementptr inbounds %struct.public_key_signature, ptr %14, i32 0, i32 7, !dbg !1040
  store ptr @.str.15, ptr %encoding9, align 8, !dbg !1041
  br label %sw.epilog, !dbg !1042

sw.bb10:                                          ; preds = %entry
  %15 = load ptr, ptr %ctx, align 8, !dbg !1043
  %sinfo11 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %15, i32 0, i32 1, !dbg !1044
  %16 = load ptr, ptr %sinfo11, align 8, !dbg !1044
  %sig12 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %16, i32 0, i32 11, !dbg !1045
  %17 = load ptr, ptr %sig12, align 8, !dbg !1045
  %pkey_algo13 = getelementptr inbounds %struct.public_key_signature, ptr %17, i32 0, i32 5, !dbg !1046
  store ptr @.str.16, ptr %pkey_algo13, align 8, !dbg !1047
  %18 = load ptr, ptr %ctx, align 8, !dbg !1048
  %sinfo14 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %18, i32 0, i32 1, !dbg !1049
  %19 = load ptr, ptr %sinfo14, align 8, !dbg !1049
  %sig15 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %19, i32 0, i32 11, !dbg !1050
  %20 = load ptr, ptr %sig15, align 8, !dbg !1050
  %encoding16 = getelementptr inbounds %struct.public_key_signature, ptr %20, i32 0, i32 7, !dbg !1051
  store ptr @.str.17, ptr %encoding16, align 8, !dbg !1052
  br label %sw.epilog, !dbg !1053

sw.bb17:                                          ; preds = %entry, %entry
  %21 = load ptr, ptr %ctx, align 8, !dbg !1054
  %sinfo18 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %21, i32 0, i32 1, !dbg !1055
  %22 = load ptr, ptr %sinfo18, align 8, !dbg !1055
  %sig19 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %22, i32 0, i32 11, !dbg !1056
  %23 = load ptr, ptr %sig19, align 8, !dbg !1056
  %pkey_algo20 = getelementptr inbounds %struct.public_key_signature, ptr %23, i32 0, i32 5, !dbg !1057
  store ptr @.str.18, ptr %pkey_algo20, align 8, !dbg !1058
  %24 = load ptr, ptr %ctx, align 8, !dbg !1059
  %sinfo21 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %24, i32 0, i32 1, !dbg !1060
  %25 = load ptr, ptr %sinfo21, align 8, !dbg !1060
  %sig22 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %25, i32 0, i32 11, !dbg !1061
  %26 = load ptr, ptr %sig22, align 8, !dbg !1061
  %encoding23 = getelementptr inbounds %struct.public_key_signature, ptr %26, i32 0, i32 7, !dbg !1062
  store ptr @.str.17, ptr %encoding23, align 8, !dbg !1063
  br label %sw.epilog, !dbg !1064

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !1065

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !1067

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1067

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %ctx, align 8, !dbg !1065
  %last_oid24 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %27, i32 0, i32 6, !dbg !1065
  %28 = load i32, ptr %last_oid24, align 8, !dbg !1065
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, i32 noundef %28) #19, !dbg !1065
  store i32 %call, ptr %tmp, align 4, !dbg !1067
  %29 = load i32, ptr %tmp, align 4, !dbg !1065
  store i32 -65, ptr %retval, align 4, !dbg !1069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1069

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb10, %sw.bb3, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !1070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1070

cleanup:                                          ; preds = %sw.epilog, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1071
  %30 = load i32, ptr %retval, align 4, !dbg !1071
  ret i32 %30, !dbg !1071
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_check_content_type(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1072 {
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
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1074, metadata !DIExpression()), !dbg !1080
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1075, metadata !DIExpression()), !dbg !1081
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1076, metadata !DIExpression()), !dbg !1082
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1077, metadata !DIExpression()), !dbg !1083
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1078, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1079, metadata !DIExpression()), !dbg !1086
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1087
  store ptr %0, ptr %ctx, align 8, !dbg !1086
  %1 = load ptr, ptr %ctx, align 8, !dbg !1088
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %1, i32 0, i32 6, !dbg !1090
  %2 = load i32, ptr %last_oid, align 8, !dbg !1090
  %cmp = icmp ne i32 %2, 20, !dbg !1091
  br i1 %cmp, label %if.then, label %if.end, !dbg !1092

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1093

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1096

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1096

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #19, !dbg !1093
  store i32 %call, ptr %tmp, align 4, !dbg !1096
  %3 = load i32, ptr %tmp, align 4, !dbg !1093
  store i32 -22, ptr %retval, align 4, !dbg !1098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1098

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1099

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1100
  %4 = load i32, ptr %retval, align 4, !dbg !1100
  ret i32 %4, !dbg !1100
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_note_signeddata_version(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1101 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %version = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1103, metadata !DIExpression()), !dbg !1111
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1104, metadata !DIExpression()), !dbg !1112
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1105, metadata !DIExpression()), !dbg !1113
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1106, metadata !DIExpression()), !dbg !1114
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1107, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1108, metadata !DIExpression()), !dbg !1117
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1118
  store ptr %0, ptr %ctx, align 8, !dbg !1117
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #16, !dbg !1119
  call void @llvm.dbg.declare(metadata ptr %version, metadata !1109, metadata !DIExpression()), !dbg !1120
  %1 = load i64, ptr %vlen.addr, align 8, !dbg !1121
  %cmp = icmp ne i64 %1, 1, !dbg !1123
  br i1 %cmp, label %if.then, label %if.end, !dbg !1124

if.then:                                          ; preds = %entry
  br label %unsupported, !dbg !1125

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %value.addr, align 8, !dbg !1126
  %3 = load i8, ptr %2, align 1, !dbg !1127
  %conv = zext i8 %3 to i32, !dbg !1127
  store i32 %conv, ptr %version, align 4, !dbg !1128
  %conv1 = trunc i32 %conv to i8, !dbg !1129
  %4 = load ptr, ptr %ctx, align 8, !dbg !1130
  %msg = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 0, !dbg !1131
  %5 = load ptr, ptr %msg, align 8, !dbg !1131
  %version2 = getelementptr inbounds %struct.pkcs7_message, ptr %5, i32 0, i32 3, !dbg !1132
  store i8 %conv1, ptr %version2, align 8, !dbg !1133
  %6 = load i32, ptr %version, align 4, !dbg !1134
  switch i32 %6, label %sw.default [
    i32 1, label %sw.epilog
    i32 3, label %sw.epilog
  ], !dbg !1135

sw.default:                                       ; preds = %if.end
  br label %unsupported, !dbg !1136

sw.epilog:                                        ; preds = %if.end, %if.end
  store i32 0, ptr %retval, align 4, !dbg !1138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1138

unsupported:                                      ; preds = %sw.default, %if.then
  call void @llvm.dbg.label(metadata !1110), !dbg !1139
  br label %do.body, !dbg !1140

do.body:                                          ; preds = %unsupported
  br label %do.cond, !dbg !1142

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1142

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.21) #19, !dbg !1140
  store i32 %call, ptr %tmp, align 4, !dbg !1142
  %7 = load i32, ptr %tmp, align 4, !dbg !1140
  store i32 -22, ptr %retval, align 4, !dbg !1144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1144

cleanup:                                          ; preds = %do.end, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #16, !dbg !1145
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1145
  %8 = load i32, ptr %retval, align 4, !dbg !1145
  ret i32 %8, !dbg !1145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_note_signerinfo_version(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1146 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %version = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1148, metadata !DIExpression()), !dbg !1157
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1149, metadata !DIExpression()), !dbg !1158
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1150, metadata !DIExpression()), !dbg !1159
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1151, metadata !DIExpression()), !dbg !1160
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1152, metadata !DIExpression()), !dbg !1161
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1153, metadata !DIExpression()), !dbg !1163
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1164
  store ptr %0, ptr %ctx, align 8, !dbg !1163
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #16, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %version, metadata !1154, metadata !DIExpression()), !dbg !1166
  %1 = load i64, ptr %vlen.addr, align 8, !dbg !1167
  %cmp = icmp ne i64 %1, 1, !dbg !1169
  br i1 %cmp, label %if.then, label %if.end, !dbg !1170

if.then:                                          ; preds = %entry
  br label %unsupported, !dbg !1171

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %value.addr, align 8, !dbg !1172
  %3 = load i8, ptr %2, align 1, !dbg !1173
  %conv = zext i8 %3 to i32, !dbg !1173
  store i32 %conv, ptr %version, align 4, !dbg !1174
  %4 = load i32, ptr %version, align 4, !dbg !1175
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb7
  ], !dbg !1176

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %ctx, align 8, !dbg !1177
  %msg = getelementptr inbounds %struct.pkcs7_parse_context, ptr %5, i32 0, i32 0, !dbg !1180
  %6 = load ptr, ptr %msg, align 8, !dbg !1180
  %version1 = getelementptr inbounds %struct.pkcs7_message, ptr %6, i32 0, i32 3, !dbg !1181
  %7 = load i8, ptr %version1, align 8, !dbg !1181
  %conv2 = zext i8 %7 to i32, !dbg !1177
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !1182
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1183

if.then5:                                         ; preds = %sw.bb
  br label %version_mismatch, !dbg !1184

if.end6:                                          ; preds = %sw.bb
  %8 = load ptr, ptr %ctx, align 8, !dbg !1185
  %expect_skid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %8, i32 0, i32 15, !dbg !1186
  store i8 0, ptr %expect_skid, align 4, !dbg !1187
  br label %sw.epilog, !dbg !1188

sw.bb7:                                           ; preds = %if.end
  %9 = load ptr, ptr %ctx, align 8, !dbg !1189
  %msg8 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %9, i32 0, i32 0, !dbg !1191
  %10 = load ptr, ptr %msg8, align 8, !dbg !1191
  %version9 = getelementptr inbounds %struct.pkcs7_message, ptr %10, i32 0, i32 3, !dbg !1192
  %11 = load i8, ptr %version9, align 8, !dbg !1192
  %conv10 = zext i8 %11 to i32, !dbg !1189
  %cmp11 = icmp eq i32 %conv10, 1, !dbg !1193
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !1194

if.then13:                                        ; preds = %sw.bb7
  br label %version_mismatch, !dbg !1195

if.end14:                                         ; preds = %sw.bb7
  %12 = load ptr, ptr %ctx, align 8, !dbg !1196
  %expect_skid15 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %12, i32 0, i32 15, !dbg !1197
  store i8 1, ptr %expect_skid15, align 4, !dbg !1198
  br label %sw.epilog, !dbg !1199

sw.default:                                       ; preds = %if.end
  br label %unsupported, !dbg !1200

sw.epilog:                                        ; preds = %if.end14, %if.end6
  store i32 0, ptr %retval, align 4, !dbg !1201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1201

unsupported:                                      ; preds = %sw.default, %if.then
  call void @llvm.dbg.label(metadata !1155), !dbg !1202
  br label %do.body, !dbg !1203

do.body:                                          ; preds = %unsupported
  br label %do.cond, !dbg !1205

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1205

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.22) #19, !dbg !1203
  store i32 %call, ptr %tmp, align 4, !dbg !1205
  %13 = load i32, ptr %tmp, align 4, !dbg !1203
  store i32 -22, ptr %retval, align 4, !dbg !1207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1207

version_mismatch:                                 ; preds = %if.then13, %if.then5
  call void @llvm.dbg.label(metadata !1156), !dbg !1208
  br label %do.body16, !dbg !1209

do.body16:                                        ; preds = %version_mismatch
  br label %do.cond17, !dbg !1211

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1211

do.end18:                                         ; preds = %do.cond17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23) #19, !dbg !1209
  store i32 %call20, ptr %tmp19, align 4, !dbg !1211
  %14 = load i32, ptr %tmp19, align 4, !dbg !1209
  store i32 -74, ptr %retval, align 4, !dbg !1213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1213

cleanup:                                          ; preds = %do.end18, %do.end, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #16, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1214
  %15 = load i32, ptr %retval, align 4, !dbg !1214
  ret i32 %15, !dbg !1214
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_extract_cert(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1215 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %x509 = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1217, metadata !DIExpression()), !dbg !1224
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1218, metadata !DIExpression()), !dbg !1225
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1219, metadata !DIExpression()), !dbg !1226
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1220, metadata !DIExpression()), !dbg !1227
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1221, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1222, metadata !DIExpression()), !dbg !1230
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1231
  store ptr %0, ptr %ctx, align 8, !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr %x509) #16, !dbg !1232
  call void @llvm.dbg.declare(metadata ptr %x509, metadata !1223, metadata !DIExpression()), !dbg !1233
  %1 = load i8, ptr %tag.addr, align 1, !dbg !1234
  %conv = zext i8 %1 to i32, !dbg !1234
  %cmp = icmp ne i32 %conv, 48, !dbg !1236
  br i1 %cmp, label %if.then, label %if.end, !dbg !1237

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !1238
  %2 = load i32, ptr %tmp, align 4, !dbg !1242
  store i32 -74, ptr %retval, align 4, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %hdrlen.addr, align 8, !dbg !1244
  %4 = load ptr, ptr %value.addr, align 8, !dbg !1245
  %idx.neg = sub i64 0, %3, !dbg !1245
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.neg, !dbg !1245
  store ptr %add.ptr, ptr %value.addr, align 8, !dbg !1245
  %5 = load i64, ptr %hdrlen.addr, align 8, !dbg !1246
  %6 = load i64, ptr %vlen.addr, align 8, !dbg !1247
  %add = add i64 %6, %5, !dbg !1247
  store i64 %add, ptr %vlen.addr, align 8, !dbg !1247
  %7 = load ptr, ptr %value.addr, align 8, !dbg !1248
  %arrayidx = getelementptr i8, ptr %7, i64 1, !dbg !1250
  %8 = load i8, ptr %arrayidx, align 1, !dbg !1250
  %conv2 = zext i8 %8 to i32, !dbg !1250
  %cmp3 = icmp eq i32 %conv2, 128, !dbg !1251
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !1252

if.then5:                                         ; preds = %if.end
  %9 = load i64, ptr %vlen.addr, align 8, !dbg !1253
  %add6 = add i64 %9, 2, !dbg !1253
  store i64 %add6, ptr %vlen.addr, align 8, !dbg !1253
  br label %if.end7, !dbg !1254

if.end7:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr %value.addr, align 8, !dbg !1255
  %11 = load i64, ptr %vlen.addr, align 8, !dbg !1256
  %call = call ptr @x509_cert_parse(ptr noundef %10, i64 noundef %11) #17, !dbg !1257
  store ptr %call, ptr %x509, align 8, !dbg !1258
  %12 = load ptr, ptr %x509, align 8, !dbg !1259
  %call8 = call zeroext i1 @IS_ERR(ptr noundef %12) #17, !dbg !1261
  br i1 %call8, label %if.then9, label %if.end12, !dbg !1262

if.then9:                                         ; preds = %if.end7
  %13 = load ptr, ptr %x509, align 8, !dbg !1263
  %call10 = call i64 @PTR_ERR(ptr noundef %13) #17, !dbg !1264
  %conv11 = trunc i64 %call10 to i32, !dbg !1264
  store i32 %conv11, ptr %retval, align 4, !dbg !1265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1265

if.end12:                                         ; preds = %if.end7
  %14 = load ptr, ptr %ctx, align 8, !dbg !1266
  %x509_index = getelementptr inbounds %struct.pkcs7_parse_context, ptr %14, i32 0, i32 7, !dbg !1267
  %15 = load i32, ptr %x509_index, align 4, !dbg !1268
  %inc = add i32 %15, 1, !dbg !1268
  store i32 %inc, ptr %x509_index, align 4, !dbg !1268
  %16 = load ptr, ptr %x509, align 8, !dbg !1269
  %index = getelementptr inbounds %struct.x509_certificate, ptr %16, i32 0, i32 22, !dbg !1270
  store i32 %inc, ptr %index, align 8, !dbg !1271
  store i32 0, ptr %tmp13, align 4, !dbg !1272
  %17 = load i32, ptr %tmp13, align 4, !dbg !1275
  store i32 0, ptr %tmp14, align 4, !dbg !1276
  %18 = load i32, ptr %tmp14, align 4, !dbg !1279
  %19 = load ptr, ptr %x509, align 8, !dbg !1280
  %20 = load ptr, ptr %ctx, align 8, !dbg !1281
  %ppcerts = getelementptr inbounds %struct.pkcs7_parse_context, ptr %20, i32 0, i32 4, !dbg !1282
  %21 = load ptr, ptr %ppcerts, align 8, !dbg !1282
  store ptr %19, ptr %21, align 8, !dbg !1283
  %22 = load ptr, ptr %x509, align 8, !dbg !1284
  %next = getelementptr inbounds %struct.x509_certificate, ptr %22, i32 0, i32 0, !dbg !1285
  %23 = load ptr, ptr %ctx, align 8, !dbg !1286
  %ppcerts15 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %23, i32 0, i32 4, !dbg !1287
  store ptr %next, ptr %ppcerts15, align 8, !dbg !1288
  store i32 0, ptr %retval, align 4, !dbg !1289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1289

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %x509) #16, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1290
  %24 = load i32, ptr %retval, align 4, !dbg !1290
  ret i32 %24, !dbg !1290
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1291 dso_local ptr @x509_cert_parse(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !1294 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1298, metadata !DIExpression()), !dbg !1299
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1300
  %1 = ptrtoint ptr %0 to i64, !dbg !1300
  %2 = inttoptr i64 %1 to ptr, !dbg !1300
  %3 = ptrtoint ptr %2 to i64, !dbg !1300
  %cmp = icmp uge i64 %3, -4095, !dbg !1300
  %lnot = xor i1 %cmp, true, !dbg !1300
  %lnot1 = xor i1 %lnot, true, !dbg !1300
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1300
  %conv = sext i32 %lnot.ext to i64, !dbg !1300
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1300
  %tobool = icmp ne i64 %expval, 0, !dbg !1300
  ret i1 %tobool, !dbg !1301
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !1302 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1306, metadata !DIExpression()), !dbg !1307
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1308
  %1 = ptrtoint ptr %0 to i64, !dbg !1309
  ret i64 %1, !dbg !1310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_note_certificate_list(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1311 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1313, metadata !DIExpression()), !dbg !1319
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1314, metadata !DIExpression()), !dbg !1320
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1315, metadata !DIExpression()), !dbg !1321
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1316, metadata !DIExpression()), !dbg !1322
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1317, metadata !DIExpression()), !dbg !1323
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1324
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1318, metadata !DIExpression()), !dbg !1325
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1326
  store ptr %0, ptr %ctx, align 8, !dbg !1325
  store i32 0, ptr %tmp, align 4, !dbg !1327
  %1 = load i32, ptr %tmp, align 4, !dbg !1330
  %2 = load ptr, ptr %ctx, align 8, !dbg !1331
  %msg = getelementptr inbounds %struct.pkcs7_parse_context, ptr %2, i32 0, i32 0, !dbg !1332
  %3 = load ptr, ptr %msg, align 8, !dbg !1332
  %certs = getelementptr inbounds %struct.pkcs7_message, ptr %3, i32 0, i32 0, !dbg !1333
  %4 = load ptr, ptr %certs, align 8, !dbg !1333
  %5 = load ptr, ptr %ctx, align 8, !dbg !1334
  %ppcerts = getelementptr inbounds %struct.pkcs7_parse_context, ptr %5, i32 0, i32 4, !dbg !1335
  %6 = load ptr, ptr %ppcerts, align 8, !dbg !1335
  store ptr %4, ptr %6, align 8, !dbg !1336
  %7 = load ptr, ptr %ctx, align 8, !dbg !1337
  %certs1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %7, i32 0, i32 3, !dbg !1338
  %8 = load ptr, ptr %certs1, align 8, !dbg !1338
  %9 = load ptr, ptr %ctx, align 8, !dbg !1339
  %msg2 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %9, i32 0, i32 0, !dbg !1340
  %10 = load ptr, ptr %msg2, align 8, !dbg !1340
  %certs3 = getelementptr inbounds %struct.pkcs7_message, ptr %10, i32 0, i32 0, !dbg !1341
  store ptr %8, ptr %certs3, align 8, !dbg !1342
  %11 = load ptr, ptr %ctx, align 8, !dbg !1343
  %certs4 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %11, i32 0, i32 3, !dbg !1344
  store ptr null, ptr %certs4, align 8, !dbg !1345
  %12 = load ptr, ptr %ctx, align 8, !dbg !1346
  %certs5 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %12, i32 0, i32 3, !dbg !1347
  %13 = load ptr, ptr %ctx, align 8, !dbg !1348
  %ppcerts6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %13, i32 0, i32 4, !dbg !1349
  store ptr %certs5, ptr %ppcerts6, align 8, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1351
  ret i32 0, !dbg !1352
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_note_content(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1353 {
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
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1355, metadata !DIExpression()), !dbg !1361
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1356, metadata !DIExpression()), !dbg !1362
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1357, metadata !DIExpression()), !dbg !1363
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1358, metadata !DIExpression()), !dbg !1364
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1359, metadata !DIExpression()), !dbg !1365
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1366
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1360, metadata !DIExpression()), !dbg !1367
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1368
  store ptr %0, ptr %ctx, align 8, !dbg !1367
  %1 = load ptr, ptr %ctx, align 8, !dbg !1369
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %1, i32 0, i32 6, !dbg !1371
  %2 = load i32, ptr %last_oid, align 8, !dbg !1371
  %cmp = icmp ne i32 %2, 19, !dbg !1372
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1373

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8, !dbg !1374
  %last_oid1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %3, i32 0, i32 6, !dbg !1375
  %4 = load i32, ptr %last_oid1, align 8, !dbg !1375
  %cmp2 = icmp ne i32 %4, 33, !dbg !1376
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1377

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !1378

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1381

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1381

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %ctx, align 8, !dbg !1378
  %last_oid3 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %5, i32 0, i32 6, !dbg !1378
  %6 = load i32, ptr %last_oid3, align 8, !dbg !1378
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.24, i32 noundef %6) #19, !dbg !1378
  store i32 %call, ptr %tmp, align 4, !dbg !1381
  %7 = load i32, ptr %tmp, align 4, !dbg !1378
  store i32 -22, ptr %retval, align 4, !dbg !1383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1383

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %ctx, align 8, !dbg !1384
  %last_oid4 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %8, i32 0, i32 6, !dbg !1385
  %9 = load i32, ptr %last_oid4, align 8, !dbg !1385
  %10 = load ptr, ptr %ctx, align 8, !dbg !1386
  %msg = getelementptr inbounds %struct.pkcs7_parse_context, ptr %10, i32 0, i32 0, !dbg !1387
  %11 = load ptr, ptr %msg, align 8, !dbg !1387
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %11, i32 0, i32 5, !dbg !1388
  store i32 %9, ptr %data_type, align 4, !dbg !1389
  store i32 0, ptr %retval, align 4, !dbg !1390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1390

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1391
  %12 = load i32, ptr %retval, align 4, !dbg !1391
  ret i32 %12, !dbg !1391
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_note_data(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1392 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1394, metadata !DIExpression()), !dbg !1400
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1395, metadata !DIExpression()), !dbg !1401
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1396, metadata !DIExpression()), !dbg !1402
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1397, metadata !DIExpression()), !dbg !1403
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1398, metadata !DIExpression()), !dbg !1404
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1399, metadata !DIExpression()), !dbg !1406
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1407
  store ptr %0, ptr %ctx, align 8, !dbg !1406
  store i32 0, ptr %tmp, align 4, !dbg !1408
  %1 = load i32, ptr %tmp, align 4, !dbg !1411
  %2 = load ptr, ptr %value.addr, align 8, !dbg !1412
  %3 = load ptr, ptr %ctx, align 8, !dbg !1413
  %msg = getelementptr inbounds %struct.pkcs7_parse_context, ptr %3, i32 0, i32 0, !dbg !1414
  %4 = load ptr, ptr %msg, align 8, !dbg !1414
  %data = getelementptr inbounds %struct.pkcs7_message, ptr %4, i32 0, i32 8, !dbg !1415
  store ptr %2, ptr %data, align 8, !dbg !1416
  %5 = load i64, ptr %vlen.addr, align 8, !dbg !1417
  %6 = load ptr, ptr %ctx, align 8, !dbg !1418
  %msg1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %6, i32 0, i32 0, !dbg !1419
  %7 = load ptr, ptr %msg1, align 8, !dbg !1419
  %data_len = getelementptr inbounds %struct.pkcs7_message, ptr %7, i32 0, i32 6, !dbg !1420
  store i64 %5, ptr %data_len, align 8, !dbg !1421
  %8 = load i64, ptr %hdrlen.addr, align 8, !dbg !1422
  %9 = load ptr, ptr %ctx, align 8, !dbg !1423
  %msg2 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %9, i32 0, i32 0, !dbg !1424
  %10 = load ptr, ptr %msg2, align 8, !dbg !1424
  %data_hdrlen = getelementptr inbounds %struct.pkcs7_message, ptr %10, i32 0, i32 7, !dbg !1425
  store i64 %8, ptr %data_hdrlen, align 8, !dbg !1426
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1427
  ret i32 0, !dbg !1428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_sig_note_authenticated_attr(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1429 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %sinfo = alloca ptr, align 8
  %content_type = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %tmp147 = alloca i32, align 4
  %tmp153 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1431, metadata !DIExpression()), !dbg !1442
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1432, metadata !DIExpression()), !dbg !1443
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1433, metadata !DIExpression()), !dbg !1444
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1434, metadata !DIExpression()), !dbg !1445
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1435, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1436, metadata !DIExpression()), !dbg !1448
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1449
  store ptr %0, ptr %ctx, align 8, !dbg !1448
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfo) #16, !dbg !1450
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !1437, metadata !DIExpression()), !dbg !1451
  %1 = load ptr, ptr %ctx, align 8, !dbg !1452
  %sinfo1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %1, i32 0, i32 1, !dbg !1453
  %2 = load ptr, ptr %sinfo1, align 8, !dbg !1453
  store ptr %2, ptr %sinfo, align 8, !dbg !1451
  call void @llvm.lifetime.start.p0(i64 4, ptr %content_type) #16, !dbg !1454
  call void @llvm.dbg.declare(metadata ptr %content_type, metadata !1438, metadata !DIExpression()), !dbg !1455
  store i32 0, ptr %tmp, align 4, !dbg !1456
  %3 = load i32, ptr %tmp, align 4, !dbg !1459
  %4 = load ptr, ptr %ctx, align 8, !dbg !1460
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 6, !dbg !1461
  %5 = load i32, ptr %last_oid, align 8, !dbg !1461
  switch i32 %5, label %sw.default [
    i32 22, label %sw.bb
    i32 24, label %sw.bb21
    i32 23, label %sw.bb42
    i32 25, label %sw.bb68
    i32 35, label %sw.bb99
    i32 34, label %sw.bb119
  ], !dbg !1462

sw.bb:                                            ; preds = %entry
  %6 = load ptr, ptr %sinfo, align 8, !dbg !1463
  %aa_set = getelementptr inbounds %struct.pkcs7_signed_info, ptr %6, i32 0, i32 9, !dbg !1463
  %7 = ptrtoint ptr %aa_set to i64, !dbg !1463
  %cmp = icmp ne i64 %7, 0, !dbg !1463
  %conv = zext i1 %cmp to i32, !dbg !1463
  %8 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1463
  br i1 %8, label %land.lhs.true, label %cond.false, !dbg !1463

land.lhs.true:                                    ; preds = %sw.bb
  %9 = load ptr, ptr %sinfo, align 8, !dbg !1463
  %aa_set2 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %9, i32 0, i32 9, !dbg !1463
  %10 = ptrtoint ptr %aa_set2 to i64, !dbg !1463
  %cmp3 = icmp ne i64 %10, 0, !dbg !1463
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !1463

land.lhs.true5:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %sinfo, align 8, !dbg !1463
  %aa_set6 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %11, i32 0, i32 9, !dbg !1463
  %12 = load i64, ptr %aa_set6, align 8, !dbg !1463
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1463
  br i1 %13, label %cond.true, label %cond.false, !dbg !1465

cond.true:                                        ; preds = %land.lhs.true5
  %14 = load ptr, ptr %sinfo, align 8, !dbg !1463
  %aa_set7 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %14, i32 0, i32 9, !dbg !1463
  %call = call zeroext i1 @generic___test_and_set_bit(i64 noundef 0, ptr noundef %aa_set7) #17, !dbg !1463
  br i1 %call, label %if.then, label %if.end, !dbg !1463

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %sw.bb
  %15 = load ptr, ptr %sinfo, align 8, !dbg !1463
  %aa_set9 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %15, i32 0, i32 9, !dbg !1463
  %call10 = call zeroext i1 @___test_and_set_bit(i64 noundef 0, ptr noundef %aa_set9) #17, !dbg !1463
  br i1 %call10, label %if.then, label %if.end, !dbg !1465

if.then:                                          ; preds = %cond.false, %cond.true
  br label %repeated, !dbg !1466

if.end:                                           ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %value.addr, align 8, !dbg !1467
  %17 = load i64, ptr %vlen.addr, align 8, !dbg !1468
  %call12 = call i32 @look_up_OID(ptr noundef %16, i64 noundef %17) #17, !dbg !1469
  store i32 %call12, ptr %content_type, align 4, !dbg !1470
  %18 = load i32, ptr %content_type, align 4, !dbg !1471
  %19 = load ptr, ptr %ctx, align 8, !dbg !1473
  %msg = getelementptr inbounds %struct.pkcs7_parse_context, ptr %19, i32 0, i32 0, !dbg !1474
  %20 = load ptr, ptr %msg, align 8, !dbg !1474
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %20, i32 0, i32 5, !dbg !1475
  %21 = load i32, ptr %data_type, align 4, !dbg !1475
  %cmp13 = icmp ne i32 %18, %21, !dbg !1476
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !1477

if.then15:                                        ; preds = %if.end
  br label %do.body, !dbg !1478

do.body:                                          ; preds = %if.then15
  br label %do.cond, !dbg !1481

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1481

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %ctx, align 8, !dbg !1478
  %msg17 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %22, i32 0, i32 0, !dbg !1478
  %23 = load ptr, ptr %msg17, align 8, !dbg !1478
  %data_type18 = getelementptr inbounds %struct.pkcs7_message, ptr %23, i32 0, i32 5, !dbg !1478
  %24 = load i32, ptr %data_type18, align 4, !dbg !1478
  %25 = load ptr, ptr %sinfo, align 8, !dbg !1478
  %index = getelementptr inbounds %struct.pkcs7_signed_info, ptr %25, i32 0, i32 2, !dbg !1478
  %26 = load i32, ptr %index, align 8, !dbg !1478
  %27 = load i32, ptr %content_type, align 4, !dbg !1478
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, i32 noundef %24, i32 noundef %26, i32 noundef %27) #19, !dbg !1478
  store i32 %call19, ptr %tmp16, align 4, !dbg !1481
  %28 = load i32, ptr %tmp16, align 4, !dbg !1478
  store i32 -74, ptr %retval, align 4, !dbg !1483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1483

if.end20:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1484

sw.bb21:                                          ; preds = %entry
  %29 = load ptr, ptr %sinfo, align 8, !dbg !1485
  %aa_set22 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %29, i32 0, i32 9, !dbg !1485
  %30 = ptrtoint ptr %aa_set22 to i64, !dbg !1485
  %cmp23 = icmp ne i64 %30, 0, !dbg !1485
  %conv24 = zext i1 %cmp23 to i32, !dbg !1485
  %31 = call i1 @llvm.is.constant.i32(i32 %conv24), !dbg !1485
  br i1 %31, label %land.lhs.true25, label %cond.false35, !dbg !1485

land.lhs.true25:                                  ; preds = %sw.bb21
  %32 = load ptr, ptr %sinfo, align 8, !dbg !1485
  %aa_set26 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 9, !dbg !1485
  %33 = ptrtoint ptr %aa_set26 to i64, !dbg !1485
  %cmp27 = icmp ne i64 %33, 0, !dbg !1485
  br i1 %cmp27, label %land.lhs.true29, label %cond.false35, !dbg !1485

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %34 = load ptr, ptr %sinfo, align 8, !dbg !1485
  %aa_set30 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %34, i32 0, i32 9, !dbg !1485
  %35 = load i64, ptr %aa_set30, align 8, !dbg !1485
  %36 = call i1 @llvm.is.constant.i64(i64 %35), !dbg !1485
  br i1 %36, label %cond.true31, label %cond.false35, !dbg !1487

cond.true31:                                      ; preds = %land.lhs.true29
  %37 = load ptr, ptr %sinfo, align 8, !dbg !1485
  %aa_set32 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %37, i32 0, i32 9, !dbg !1485
  %call33 = call zeroext i1 @generic___test_and_set_bit(i64 noundef 1, ptr noundef %aa_set32) #17, !dbg !1485
  br i1 %call33, label %if.then39, label %if.end40, !dbg !1485

cond.false35:                                     ; preds = %land.lhs.true29, %land.lhs.true25, %sw.bb21
  %38 = load ptr, ptr %sinfo, align 8, !dbg !1485
  %aa_set36 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %38, i32 0, i32 9, !dbg !1485
  %call37 = call zeroext i1 @___test_and_set_bit(i64 noundef 1, ptr noundef %aa_set36) #17, !dbg !1485
  br i1 %call37, label %if.then39, label %if.end40, !dbg !1487

if.then39:                                        ; preds = %cond.false35, %cond.true31
  br label %repeated, !dbg !1488

if.end40:                                         ; preds = %cond.false35, %cond.true31
  %39 = load ptr, ptr %sinfo, align 8, !dbg !1489
  %signing_time = getelementptr inbounds %struct.pkcs7_signed_info, ptr %39, i32 0, i32 10, !dbg !1490
  %40 = load i64, ptr %hdrlen.addr, align 8, !dbg !1491
  %41 = load i8, ptr %tag.addr, align 1, !dbg !1492
  %42 = load ptr, ptr %value.addr, align 8, !dbg !1493
  %43 = load i64, ptr %vlen.addr, align 8, !dbg !1494
  %call41 = call i32 @x509_decode_time(ptr noundef %signing_time, i64 noundef %40, i8 noundef zeroext %41, ptr noundef %42, i64 noundef %43) #17, !dbg !1495
  store i32 %call41, ptr %retval, align 4, !dbg !1496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1496

sw.bb42:                                          ; preds = %entry
  %44 = load ptr, ptr %sinfo, align 8, !dbg !1497
  %aa_set43 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %44, i32 0, i32 9, !dbg !1497
  %45 = ptrtoint ptr %aa_set43 to i64, !dbg !1497
  %cmp44 = icmp ne i64 %45, 0, !dbg !1497
  %conv45 = zext i1 %cmp44 to i32, !dbg !1497
  %46 = call i1 @llvm.is.constant.i32(i32 %conv45), !dbg !1497
  br i1 %46, label %land.lhs.true46, label %cond.false56, !dbg !1497

land.lhs.true46:                                  ; preds = %sw.bb42
  %47 = load ptr, ptr %sinfo, align 8, !dbg !1497
  %aa_set47 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %47, i32 0, i32 9, !dbg !1497
  %48 = ptrtoint ptr %aa_set47 to i64, !dbg !1497
  %cmp48 = icmp ne i64 %48, 0, !dbg !1497
  br i1 %cmp48, label %land.lhs.true50, label %cond.false56, !dbg !1497

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %49 = load ptr, ptr %sinfo, align 8, !dbg !1497
  %aa_set51 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %49, i32 0, i32 9, !dbg !1497
  %50 = load i64, ptr %aa_set51, align 8, !dbg !1497
  %51 = call i1 @llvm.is.constant.i64(i64 %50), !dbg !1497
  br i1 %51, label %cond.true52, label %cond.false56, !dbg !1499

cond.true52:                                      ; preds = %land.lhs.true50
  %52 = load ptr, ptr %sinfo, align 8, !dbg !1497
  %aa_set53 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %52, i32 0, i32 9, !dbg !1497
  %call54 = call zeroext i1 @generic___test_and_set_bit(i64 noundef 2, ptr noundef %aa_set53) #17, !dbg !1497
  br i1 %call54, label %if.then60, label %if.end61, !dbg !1497

cond.false56:                                     ; preds = %land.lhs.true50, %land.lhs.true46, %sw.bb42
  %53 = load ptr, ptr %sinfo, align 8, !dbg !1497
  %aa_set57 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %53, i32 0, i32 9, !dbg !1497
  %call58 = call zeroext i1 @___test_and_set_bit(i64 noundef 2, ptr noundef %aa_set57) #17, !dbg !1497
  br i1 %call58, label %if.then60, label %if.end61, !dbg !1499

if.then60:                                        ; preds = %cond.false56, %cond.true52
  br label %repeated, !dbg !1500

if.end61:                                         ; preds = %cond.false56, %cond.true52
  %54 = load i8, ptr %tag.addr, align 1, !dbg !1501
  %conv62 = zext i8 %54 to i32, !dbg !1501
  %cmp63 = icmp ne i32 %conv62, 4, !dbg !1503
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !1504

if.then65:                                        ; preds = %if.end61
  store i32 -74, ptr %retval, align 4, !dbg !1505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1505

if.end66:                                         ; preds = %if.end61
  %55 = load ptr, ptr %value.addr, align 8, !dbg !1506
  %56 = load ptr, ptr %sinfo, align 8, !dbg !1507
  %msgdigest = getelementptr inbounds %struct.pkcs7_signed_info, ptr %56, i32 0, i32 5, !dbg !1508
  store ptr %55, ptr %msgdigest, align 8, !dbg !1509
  %57 = load i64, ptr %vlen.addr, align 8, !dbg !1510
  %conv67 = trunc i64 %57 to i32, !dbg !1510
  %58 = load ptr, ptr %sinfo, align 8, !dbg !1511
  %msgdigest_len = getelementptr inbounds %struct.pkcs7_signed_info, ptr %58, i32 0, i32 6, !dbg !1512
  store i32 %conv67, ptr %msgdigest_len, align 8, !dbg !1513
  store i32 0, ptr %retval, align 4, !dbg !1514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1514

sw.bb68:                                          ; preds = %entry
  %59 = load ptr, ptr %sinfo, align 8, !dbg !1515
  %aa_set69 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %59, i32 0, i32 9, !dbg !1515
  %60 = ptrtoint ptr %aa_set69 to i64, !dbg !1515
  %cmp70 = icmp ne i64 %60, 0, !dbg !1515
  %conv71 = zext i1 %cmp70 to i32, !dbg !1515
  %61 = call i1 @llvm.is.constant.i32(i32 %conv71), !dbg !1515
  br i1 %61, label %land.lhs.true72, label %cond.false82, !dbg !1515

land.lhs.true72:                                  ; preds = %sw.bb68
  %62 = load ptr, ptr %sinfo, align 8, !dbg !1515
  %aa_set73 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %62, i32 0, i32 9, !dbg !1515
  %63 = ptrtoint ptr %aa_set73 to i64, !dbg !1515
  %cmp74 = icmp ne i64 %63, 0, !dbg !1515
  br i1 %cmp74, label %land.lhs.true76, label %cond.false82, !dbg !1515

land.lhs.true76:                                  ; preds = %land.lhs.true72
  %64 = load ptr, ptr %sinfo, align 8, !dbg !1515
  %aa_set77 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %64, i32 0, i32 9, !dbg !1515
  %65 = load i64, ptr %aa_set77, align 8, !dbg !1515
  %66 = call i1 @llvm.is.constant.i64(i64 %65), !dbg !1515
  br i1 %66, label %cond.true78, label %cond.false82, !dbg !1517

cond.true78:                                      ; preds = %land.lhs.true76
  %67 = load ptr, ptr %sinfo, align 8, !dbg !1515
  %aa_set79 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %67, i32 0, i32 9, !dbg !1515
  %call80 = call zeroext i1 @generic___test_and_set_bit(i64 noundef 3, ptr noundef %aa_set79) #17, !dbg !1515
  br i1 %call80, label %if.then86, label %if.end87, !dbg !1515

cond.false82:                                     ; preds = %land.lhs.true76, %land.lhs.true72, %sw.bb68
  %68 = load ptr, ptr %sinfo, align 8, !dbg !1515
  %aa_set83 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %68, i32 0, i32 9, !dbg !1515
  %call84 = call zeroext i1 @___test_and_set_bit(i64 noundef 3, ptr noundef %aa_set83) #17, !dbg !1515
  br i1 %call84, label %if.then86, label %if.end87, !dbg !1517

if.then86:                                        ; preds = %cond.false82, %cond.true78
  br label %repeated, !dbg !1518

if.end87:                                         ; preds = %cond.false82, %cond.true78
  %69 = load ptr, ptr %ctx, align 8, !dbg !1519
  %msg88 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %69, i32 0, i32 0, !dbg !1521
  %70 = load ptr, ptr %msg88, align 8, !dbg !1521
  %data_type89 = getelementptr inbounds %struct.pkcs7_message, ptr %70, i32 0, i32 5, !dbg !1522
  %71 = load i32, ptr %data_type89, align 4, !dbg !1522
  %cmp90 = icmp ne i32 %71, 33, !dbg !1523
  br i1 %cmp90, label %if.then92, label %if.end98, !dbg !1524

if.then92:                                        ; preds = %if.end87
  br label %do.body93, !dbg !1525

do.body93:                                        ; preds = %if.then92
  br label %do.cond94, !dbg !1528

do.cond94:                                        ; preds = %do.body93
  br label %do.end95, !dbg !1528

do.end95:                                         ; preds = %do.cond94
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef @.str.26) #19, !dbg !1525
  store i32 %call97, ptr %tmp96, align 4, !dbg !1528
  %72 = load i32, ptr %tmp96, align 4, !dbg !1525
  store i32 -129, ptr %retval, align 4, !dbg !1530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1530

if.end98:                                         ; preds = %if.end87
  store i32 0, ptr %retval, align 4, !dbg !1531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1531

sw.bb99:                                          ; preds = %entry
  %73 = load ptr, ptr %sinfo, align 8, !dbg !1532
  %aa_set100 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %73, i32 0, i32 9, !dbg !1532
  %74 = ptrtoint ptr %aa_set100 to i64, !dbg !1532
  %cmp101 = icmp ne i64 %74, 0, !dbg !1532
  %conv102 = zext i1 %cmp101 to i32, !dbg !1532
  %75 = call i1 @llvm.is.constant.i32(i32 %conv102), !dbg !1532
  br i1 %75, label %land.lhs.true103, label %cond.false113, !dbg !1532

land.lhs.true103:                                 ; preds = %sw.bb99
  %76 = load ptr, ptr %sinfo, align 8, !dbg !1532
  %aa_set104 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %76, i32 0, i32 9, !dbg !1532
  %77 = ptrtoint ptr %aa_set104 to i64, !dbg !1532
  %cmp105 = icmp ne i64 %77, 0, !dbg !1532
  br i1 %cmp105, label %land.lhs.true107, label %cond.false113, !dbg !1532

land.lhs.true107:                                 ; preds = %land.lhs.true103
  %78 = load ptr, ptr %sinfo, align 8, !dbg !1532
  %aa_set108 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %78, i32 0, i32 9, !dbg !1532
  %79 = load i64, ptr %aa_set108, align 8, !dbg !1532
  %80 = call i1 @llvm.is.constant.i64(i64 %79), !dbg !1532
  br i1 %80, label %cond.true109, label %cond.false113, !dbg !1534

cond.true109:                                     ; preds = %land.lhs.true107
  %81 = load ptr, ptr %sinfo, align 8, !dbg !1532
  %aa_set110 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %81, i32 0, i32 9, !dbg !1532
  %call111 = call zeroext i1 @generic___test_and_set_bit(i64 noundef 4, ptr noundef %aa_set110) #17, !dbg !1532
  br i1 %call111, label %if.then117, label %if.end118, !dbg !1532

cond.false113:                                    ; preds = %land.lhs.true107, %land.lhs.true103, %sw.bb99
  %82 = load ptr, ptr %sinfo, align 8, !dbg !1532
  %aa_set114 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %82, i32 0, i32 9, !dbg !1532
  %call115 = call zeroext i1 @___test_and_set_bit(i64 noundef 4, ptr noundef %aa_set114) #17, !dbg !1532
  br i1 %call115, label %if.then117, label %if.end118, !dbg !1534

if.then117:                                       ; preds = %cond.false113, %cond.true109
  br label %repeated, !dbg !1535

if.end118:                                        ; preds = %cond.false113, %cond.true109
  br label %authenticode_check, !dbg !1536

sw.bb119:                                         ; preds = %entry
  %83 = load ptr, ptr %sinfo, align 8, !dbg !1537
  %aa_set120 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %83, i32 0, i32 9, !dbg !1537
  %84 = ptrtoint ptr %aa_set120 to i64, !dbg !1537
  %cmp121 = icmp ne i64 %84, 0, !dbg !1537
  %conv122 = zext i1 %cmp121 to i32, !dbg !1537
  %85 = call i1 @llvm.is.constant.i32(i32 %conv122), !dbg !1537
  br i1 %85, label %land.lhs.true123, label %cond.false133, !dbg !1537

land.lhs.true123:                                 ; preds = %sw.bb119
  %86 = load ptr, ptr %sinfo, align 8, !dbg !1537
  %aa_set124 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %86, i32 0, i32 9, !dbg !1537
  %87 = ptrtoint ptr %aa_set124 to i64, !dbg !1537
  %cmp125 = icmp ne i64 %87, 0, !dbg !1537
  br i1 %cmp125, label %land.lhs.true127, label %cond.false133, !dbg !1537

land.lhs.true127:                                 ; preds = %land.lhs.true123
  %88 = load ptr, ptr %sinfo, align 8, !dbg !1537
  %aa_set128 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %88, i32 0, i32 9, !dbg !1537
  %89 = load i64, ptr %aa_set128, align 8, !dbg !1537
  %90 = call i1 @llvm.is.constant.i64(i64 %89), !dbg !1537
  br i1 %90, label %cond.true129, label %cond.false133, !dbg !1539

cond.true129:                                     ; preds = %land.lhs.true127
  %91 = load ptr, ptr %sinfo, align 8, !dbg !1537
  %aa_set130 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %91, i32 0, i32 9, !dbg !1537
  %call131 = call zeroext i1 @generic___test_and_set_bit(i64 noundef 5, ptr noundef %aa_set130) #17, !dbg !1537
  br i1 %call131, label %if.then137, label %if.end138, !dbg !1537

cond.false133:                                    ; preds = %land.lhs.true127, %land.lhs.true123, %sw.bb119
  %92 = load ptr, ptr %sinfo, align 8, !dbg !1537
  %aa_set134 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %92, i32 0, i32 9, !dbg !1537
  %call135 = call zeroext i1 @___test_and_set_bit(i64 noundef 5, ptr noundef %aa_set134) #17, !dbg !1537
  br i1 %call135, label %if.then137, label %if.end138, !dbg !1539

if.then137:                                       ; preds = %cond.false133, %cond.true129
  br label %repeated, !dbg !1540

if.end138:                                        ; preds = %cond.false133, %cond.true129
  br label %authenticode_check, !dbg !1537

authenticode_check:                               ; preds = %if.end138, %if.end118
  call void @llvm.dbg.label(metadata !1439), !dbg !1541
  %93 = load ptr, ptr %ctx, align 8, !dbg !1542
  %msg139 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %93, i32 0, i32 0, !dbg !1544
  %94 = load ptr, ptr %msg139, align 8, !dbg !1544
  %data_type140 = getelementptr inbounds %struct.pkcs7_message, ptr %94, i32 0, i32 5, !dbg !1545
  %95 = load i32, ptr %data_type140, align 4, !dbg !1545
  %cmp141 = icmp ne i32 %95, 33, !dbg !1546
  br i1 %cmp141, label %if.then143, label %if.end149, !dbg !1547

if.then143:                                       ; preds = %authenticode_check
  br label %do.body144, !dbg !1548

do.body144:                                       ; preds = %if.then143
  br label %do.cond145, !dbg !1551

do.cond145:                                       ; preds = %do.body144
  br label %do.end146, !dbg !1551

do.end146:                                        ; preds = %do.cond145
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef @.str.27) #19, !dbg !1548
  store i32 %call148, ptr %tmp147, align 4, !dbg !1551
  %96 = load i32, ptr %tmp147, align 4, !dbg !1548
  store i32 -129, ptr %retval, align 4, !dbg !1553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1553

if.end149:                                        ; preds = %authenticode_check
  store i32 0, ptr %retval, align 4, !dbg !1554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1554

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1555

repeated:                                         ; preds = %if.then137, %if.then117, %if.then86, %if.then60, %if.then39, %if.then
  call void @llvm.dbg.label(metadata !1441), !dbg !1556
  br label %do.body150, !dbg !1557

do.body150:                                       ; preds = %repeated
  br label %do.cond151, !dbg !1559

do.cond151:                                       ; preds = %do.body150
  br label %do.end152, !dbg !1559

do.end152:                                        ; preds = %do.cond151
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28) #19, !dbg !1557
  store i32 %call154, ptr %tmp153, align 4, !dbg !1559
  %97 = load i32, ptr %tmp153, align 4, !dbg !1557
  store i32 -129, ptr %retval, align 4, !dbg !1561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1561

cleanup:                                          ; preds = %do.end152, %sw.default, %if.end149, %do.end146, %if.end98, %do.end95, %if.end66, %if.then65, %if.end40, %if.end20, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %content_type) #16, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfo) #16, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1562
  %98 = load i32, ptr %retval, align 4, !dbg !1562
  ret i32 %98, !dbg !1562
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1563 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  %old = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1570, metadata !DIExpression()), !dbg !1575
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1571, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1572, metadata !DIExpression()), !dbg !1578
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1579
  %rem = urem i64 %0, 64, !dbg !1579
  %shl = shl i64 1, %rem, !dbg !1579
  store i64 %shl, ptr %mask, align 8, !dbg !1578
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1573, metadata !DIExpression()), !dbg !1581
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1582
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1583
  %div = udiv i64 %2, 64, !dbg !1583
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !1584
  store ptr %add.ptr, ptr %p, align 8, !dbg !1581
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #16, !dbg !1585
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1574, metadata !DIExpression()), !dbg !1586
  %3 = load ptr, ptr %p, align 8, !dbg !1587
  %4 = load i64, ptr %3, align 8, !dbg !1588
  store i64 %4, ptr %old, align 8, !dbg !1586
  %5 = load i64, ptr %old, align 8, !dbg !1589
  %6 = load i64, ptr %mask, align 8, !dbg !1590
  %or = or i64 %5, %6, !dbg !1591
  %7 = load ptr, ptr %p, align 8, !dbg !1592
  store i64 %or, ptr %7, align 8, !dbg !1593
  %8 = load i64, ptr %old, align 8, !dbg !1594
  %9 = load i64, ptr %mask, align 8, !dbg !1595
  %and = and i64 %8, %9, !dbg !1596
  %cmp = icmp ne i64 %and, 0, !dbg !1597
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #16, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !1598
  ret i1 %cmp, !dbg !1599
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1600 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1603, metadata !DIExpression()), !dbg !1605
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1604, metadata !DIExpression()), !dbg !1606
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1607
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1608
  call void @__instrument_read_write_bitop(i64 noundef %0, ptr noundef %1) #17, !dbg !1609
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1610
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1611
  %call = call zeroext i1 @arch___test_and_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1612
  ret i1 %call, !dbg !1613
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1614 dso_local i32 @x509_decode_time(ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_sig_note_set_of_authattrs(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1618 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %sinfo = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1620, metadata !DIExpression()), !dbg !1627
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1621, metadata !DIExpression()), !dbg !1628
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1622, metadata !DIExpression()), !dbg !1629
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1623, metadata !DIExpression()), !dbg !1630
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1624, metadata !DIExpression()), !dbg !1631
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1632
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1625, metadata !DIExpression()), !dbg !1633
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1634
  store ptr %0, ptr %ctx, align 8, !dbg !1633
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfo) #16, !dbg !1635
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !1626, metadata !DIExpression()), !dbg !1636
  %1 = load ptr, ptr %ctx, align 8, !dbg !1637
  %sinfo1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %1, i32 0, i32 1, !dbg !1638
  %2 = load ptr, ptr %sinfo1, align 8, !dbg !1638
  store ptr %2, ptr %sinfo, align 8, !dbg !1636
  %3 = load ptr, ptr %sinfo, align 8, !dbg !1639
  %aa_set = getelementptr inbounds %struct.pkcs7_signed_info, ptr %3, i32 0, i32 9, !dbg !1639
  %4 = ptrtoint ptr %aa_set to i64, !dbg !1639
  %cmp = icmp ne i64 %4, 0, !dbg !1639
  %conv = zext i1 %cmp to i32, !dbg !1639
  %5 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1639
  br i1 %5, label %land.lhs.true, label %cond.false, !dbg !1639

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %sinfo, align 8, !dbg !1639
  %aa_set2 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %6, i32 0, i32 9, !dbg !1639
  %7 = ptrtoint ptr %aa_set2 to i64, !dbg !1639
  %cmp3 = icmp ne i64 %7, 0, !dbg !1639
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !1639

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %sinfo, align 8, !dbg !1639
  %aa_set6 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %8, i32 0, i32 9, !dbg !1639
  %9 = load i64, ptr %aa_set6, align 8, !dbg !1639
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !1639
  br i1 %10, label %cond.true, label %cond.false, !dbg !1641

cond.true:                                        ; preds = %land.lhs.true5
  %11 = load ptr, ptr %sinfo, align 8, !dbg !1639
  %aa_set7 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %11, i32 0, i32 9, !dbg !1639
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %aa_set7) #17, !dbg !1639
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !1639

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %entry
  %12 = load ptr, ptr %sinfo, align 8, !dbg !1639
  %aa_set9 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %12, i32 0, i32 9, !dbg !1639
  %call10 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %aa_set9) #17, !dbg !1639
  br i1 %call10, label %lor.lhs.false, label %if.then, !dbg !1641

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %13 = load ptr, ptr %sinfo, align 8, !dbg !1642
  %aa_set12 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %13, i32 0, i32 9, !dbg !1642
  %14 = ptrtoint ptr %aa_set12 to i64, !dbg !1642
  %cmp13 = icmp ne i64 %14, 0, !dbg !1642
  %conv14 = zext i1 %cmp13 to i32, !dbg !1642
  %15 = call i1 @llvm.is.constant.i32(i32 %conv14), !dbg !1642
  br i1 %15, label %land.lhs.true15, label %cond.false25, !dbg !1642

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %16 = load ptr, ptr %sinfo, align 8, !dbg !1642
  %aa_set16 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %16, i32 0, i32 9, !dbg !1642
  %17 = ptrtoint ptr %aa_set16 to i64, !dbg !1642
  %cmp17 = icmp ne i64 %17, 0, !dbg !1642
  br i1 %cmp17, label %land.lhs.true19, label %cond.false25, !dbg !1642

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %18 = load ptr, ptr %sinfo, align 8, !dbg !1642
  %aa_set20 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %18, i32 0, i32 9, !dbg !1642
  %19 = load i64, ptr %aa_set20, align 8, !dbg !1642
  %20 = call i1 @llvm.is.constant.i64(i64 %19), !dbg !1642
  br i1 %20, label %cond.true21, label %cond.false25, !dbg !1643

cond.true21:                                      ; preds = %land.lhs.true19
  %21 = load ptr, ptr %sinfo, align 8, !dbg !1642
  %aa_set22 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %21, i32 0, i32 9, !dbg !1642
  %call23 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %aa_set22) #17, !dbg !1642
  br i1 %call23, label %if.end, label %if.then, !dbg !1642

cond.false25:                                     ; preds = %land.lhs.true19, %land.lhs.true15, %lor.lhs.false
  %22 = load ptr, ptr %sinfo, align 8, !dbg !1642
  %aa_set26 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %22, i32 0, i32 9, !dbg !1642
  %call27 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %aa_set26) #17, !dbg !1642
  br i1 %call27, label %if.end, label %if.then, !dbg !1643

if.then:                                          ; preds = %cond.false25, %cond.true21, %cond.false, %cond.true
  br label %do.body, !dbg !1644

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1647

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1647

do.end:                                           ; preds = %do.cond
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.29) #19, !dbg !1644
  store i32 %call29, ptr %tmp, align 4, !dbg !1647
  %23 = load i32, ptr %tmp, align 4, !dbg !1644
  store i32 -74, ptr %retval, align 4, !dbg !1649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1649

if.end:                                           ; preds = %cond.false25, %cond.true21
  %24 = load ptr, ptr %ctx, align 8, !dbg !1650
  %msg = getelementptr inbounds %struct.pkcs7_parse_context, ptr %24, i32 0, i32 0, !dbg !1652
  %25 = load ptr, ptr %msg, align 8, !dbg !1652
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %25, i32 0, i32 5, !dbg !1653
  %26 = load i32, ptr %data_type, align 4, !dbg !1653
  %cmp30 = icmp ne i32 %26, 33, !dbg !1654
  br i1 %cmp30, label %land.lhs.true32, label %if.end56, !dbg !1655

land.lhs.true32:                                  ; preds = %if.end
  %27 = load ptr, ptr %sinfo, align 8, !dbg !1656
  %aa_set33 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %27, i32 0, i32 9, !dbg !1656
  %28 = ptrtoint ptr %aa_set33 to i64, !dbg !1656
  %cmp34 = icmp ne i64 %28, 0, !dbg !1656
  %conv35 = zext i1 %cmp34 to i32, !dbg !1656
  %29 = call i1 @llvm.is.constant.i32(i32 %conv35), !dbg !1656
  br i1 %29, label %land.lhs.true36, label %cond.false46, !dbg !1656

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %30 = load ptr, ptr %sinfo, align 8, !dbg !1656
  %aa_set37 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %30, i32 0, i32 9, !dbg !1656
  %31 = ptrtoint ptr %aa_set37 to i64, !dbg !1656
  %cmp38 = icmp ne i64 %31, 0, !dbg !1656
  br i1 %cmp38, label %land.lhs.true40, label %cond.false46, !dbg !1656

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %32 = load ptr, ptr %sinfo, align 8, !dbg !1656
  %aa_set41 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 9, !dbg !1656
  %33 = load i64, ptr %aa_set41, align 8, !dbg !1656
  %34 = call i1 @llvm.is.constant.i64(i64 %33), !dbg !1656
  br i1 %34, label %cond.true42, label %cond.false46, !dbg !1657

cond.true42:                                      ; preds = %land.lhs.true40
  %35 = load ptr, ptr %sinfo, align 8, !dbg !1656
  %aa_set43 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %35, i32 0, i32 9, !dbg !1656
  %call44 = call zeroext i1 @const_test_bit(i64 noundef 4, ptr noundef %aa_set43) #17, !dbg !1656
  br i1 %call44, label %if.then50, label %if.end56, !dbg !1656

cond.false46:                                     ; preds = %land.lhs.true40, %land.lhs.true36, %land.lhs.true32
  %36 = load ptr, ptr %sinfo, align 8, !dbg !1656
  %aa_set47 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %36, i32 0, i32 9, !dbg !1656
  %call48 = call zeroext i1 @_test_bit(i64 noundef 4, ptr noundef %aa_set47) #17, !dbg !1656
  br i1 %call48, label %if.then50, label %if.end56, !dbg !1657

if.then50:                                        ; preds = %cond.false46, %cond.true42
  br label %do.body51, !dbg !1658

do.body51:                                        ; preds = %if.then50
  br label %do.cond52, !dbg !1661

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !1661

do.end53:                                         ; preds = %do.cond52
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30) #19, !dbg !1658
  store i32 %call55, ptr %tmp54, align 4, !dbg !1661
  %37 = load i32, ptr %tmp54, align 4, !dbg !1658
  store i32 -74, ptr %retval, align 4, !dbg !1663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1663

if.end56:                                         ; preds = %cond.false46, %cond.true42, %if.end
  %38 = load ptr, ptr %value.addr, align 8, !dbg !1664
  %39 = load i64, ptr %hdrlen.addr, align 8, !dbg !1665
  %sub = sub i64 %39, 1, !dbg !1666
  %idx.neg = sub i64 0, %sub, !dbg !1667
  %add.ptr = getelementptr i8, ptr %38, i64 %idx.neg, !dbg !1667
  %40 = load ptr, ptr %sinfo, align 8, !dbg !1668
  %authattrs = getelementptr inbounds %struct.pkcs7_signed_info, ptr %40, i32 0, i32 8, !dbg !1669
  store ptr %add.ptr, ptr %authattrs, align 8, !dbg !1670
  %41 = load i64, ptr %vlen.addr, align 8, !dbg !1671
  %42 = load i64, ptr %hdrlen.addr, align 8, !dbg !1672
  %sub57 = sub i64 %42, 1, !dbg !1673
  %add = add i64 %41, %sub57, !dbg !1674
  %conv58 = trunc i64 %add to i32, !dbg !1671
  %43 = load ptr, ptr %sinfo, align 8, !dbg !1675
  %authattrs_len = getelementptr inbounds %struct.pkcs7_signed_info, ptr %43, i32 0, i32 7, !dbg !1676
  store i32 %conv58, ptr %authattrs_len, align 4, !dbg !1677
  store i32 0, ptr %retval, align 4, !dbg !1678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1678

cleanup:                                          ; preds = %if.end56, %do.end53, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfo) #16, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1679
  %44 = load i32, ptr %retval, align 4, !dbg !1679
  ret i32 %44, !dbg !1679
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1680 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1686, metadata !DIExpression()), !dbg !1691
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1687, metadata !DIExpression()), !dbg !1692
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1688, metadata !DIExpression()), !dbg !1694
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1695
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1696
  %div = udiv i64 %1, 64, !dbg !1696
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1697
  store ptr %add.ptr, ptr %p, align 8, !dbg !1694
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1689, metadata !DIExpression()), !dbg !1699
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1700
  %rem = urem i64 %2, 64, !dbg !1700
  %shl = shl i64 1, %rem, !dbg !1700
  store i64 %shl, ptr %mask, align 8, !dbg !1699
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !1701
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1690, metadata !DIExpression()), !dbg !1702
  %3 = load ptr, ptr %p, align 8, !dbg !1703
  %4 = load i64, ptr %3, align 8, !dbg !1704
  store i64 %4, ptr %val, align 8, !dbg !1702
  %5 = load i64, ptr %val, align 8, !dbg !1705
  %6 = load i64, ptr %mask, align 8, !dbg !1706
  %and = and i64 %5, %6, !dbg !1707
  %tobool = icmp ne i64 %and, 0, !dbg !1708
  %lnot = xor i1 %tobool, true, !dbg !1708
  %lnot1 = xor i1 %lnot, true, !dbg !1709
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !1710
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !1710
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !1710
  ret i1 %lnot1, !dbg !1711
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1712 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1714, metadata !DIExpression()), !dbg !1716
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1715, metadata !DIExpression()), !dbg !1717
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1718
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1719
  %div = udiv i64 %1, 64, !dbg !1719
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1720
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !1721
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1722
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1723
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1724
  ret i1 %call, !dbg !1725
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_sig_note_serial(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1726 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1728, metadata !DIExpression()), !dbg !1734
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1729, metadata !DIExpression()), !dbg !1735
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1730, metadata !DIExpression()), !dbg !1736
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1731, metadata !DIExpression()), !dbg !1737
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1732, metadata !DIExpression()), !dbg !1738
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1739
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1733, metadata !DIExpression()), !dbg !1740
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1741
  store ptr %0, ptr %ctx, align 8, !dbg !1740
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1742
  %2 = load ptr, ptr %ctx, align 8, !dbg !1743
  %raw_serial = getelementptr inbounds %struct.pkcs7_parse_context, ptr %2, i32 0, i32 9, !dbg !1744
  store ptr %1, ptr %raw_serial, align 8, !dbg !1745
  %3 = load i64, ptr %vlen.addr, align 8, !dbg !1746
  %conv = trunc i64 %3 to i32, !dbg !1746
  %4 = load ptr, ptr %ctx, align 8, !dbg !1747
  %raw_serial_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 10, !dbg !1748
  store i32 %conv, ptr %raw_serial_size, align 8, !dbg !1749
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1750
  ret i32 0, !dbg !1751
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_sig_note_issuer(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1752 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1754, metadata !DIExpression()), !dbg !1760
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1755, metadata !DIExpression()), !dbg !1761
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1756, metadata !DIExpression()), !dbg !1762
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1757, metadata !DIExpression()), !dbg !1763
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1758, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1759, metadata !DIExpression()), !dbg !1766
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1767
  store ptr %0, ptr %ctx, align 8, !dbg !1766
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1768
  %2 = load ptr, ptr %ctx, align 8, !dbg !1769
  %raw_issuer = getelementptr inbounds %struct.pkcs7_parse_context, ptr %2, i32 0, i32 12, !dbg !1770
  store ptr %1, ptr %raw_issuer, align 8, !dbg !1771
  %3 = load i64, ptr %vlen.addr, align 8, !dbg !1772
  %conv = trunc i64 %3 to i32, !dbg !1772
  %4 = load ptr, ptr %ctx, align 8, !dbg !1773
  %raw_issuer_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 11, !dbg !1774
  store i32 %conv, ptr %raw_issuer_size, align 4, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1776
  ret i32 0, !dbg !1777
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_sig_note_skid(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1778 {
entry:
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1780, metadata !DIExpression()), !dbg !1786
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1781, metadata !DIExpression()), !dbg !1787
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1782, metadata !DIExpression()), !dbg !1788
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1783, metadata !DIExpression()), !dbg !1789
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1784, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1791
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1785, metadata !DIExpression()), !dbg !1792
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1793
  store ptr %0, ptr %ctx, align 8, !dbg !1792
  store i32 0, ptr %tmp, align 4, !dbg !1794
  %1 = load i32, ptr %tmp, align 4, !dbg !1797
  %2 = load ptr, ptr %value.addr, align 8, !dbg !1798
  %3 = load ptr, ptr %ctx, align 8, !dbg !1799
  %raw_skid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %3, i32 0, i32 13, !dbg !1800
  store ptr %2, ptr %raw_skid, align 8, !dbg !1801
  %4 = load i64, ptr %vlen.addr, align 8, !dbg !1802
  %conv = trunc i64 %4 to i32, !dbg !1802
  %5 = load ptr, ptr %ctx, align 8, !dbg !1803
  %raw_skid_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %5, i32 0, i32 14, !dbg !1804
  store i32 %conv, ptr %raw_skid_size, align 8, !dbg !1805
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1806
  ret i32 0, !dbg !1807
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_sig_note_signature(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1808 {
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
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1810, metadata !DIExpression()), !dbg !1816
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1811, metadata !DIExpression()), !dbg !1817
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1812, metadata !DIExpression()), !dbg !1818
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1813, metadata !DIExpression()), !dbg !1819
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1814, metadata !DIExpression()), !dbg !1820
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1821
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1815, metadata !DIExpression()), !dbg !1822
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1823
  store ptr %0, ptr %ctx, align 8, !dbg !1822
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1824
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !1825
  %call = call ptr @kmemdup(ptr noundef %1, i64 noundef %2, i32 noundef 3264) #20, !dbg !1826
  %3 = load ptr, ptr %ctx, align 8, !dbg !1827
  %sinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %3, i32 0, i32 1, !dbg !1828
  %4 = load ptr, ptr %sinfo, align 8, !dbg !1828
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %4, i32 0, i32 11, !dbg !1829
  %5 = load ptr, ptr %sig, align 8, !dbg !1829
  %s = getelementptr inbounds %struct.public_key_signature, ptr %5, i32 0, i32 1, !dbg !1830
  store ptr %call, ptr %s, align 8, !dbg !1831
  %6 = load ptr, ptr %ctx, align 8, !dbg !1832
  %sinfo1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %6, i32 0, i32 1, !dbg !1834
  %7 = load ptr, ptr %sinfo1, align 8, !dbg !1834
  %sig2 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 11, !dbg !1835
  %8 = load ptr, ptr %sig2, align 8, !dbg !1835
  %s3 = getelementptr inbounds %struct.public_key_signature, ptr %8, i32 0, i32 1, !dbg !1836
  %9 = load ptr, ptr %s3, align 8, !dbg !1836
  %tobool = icmp ne ptr %9, null, !dbg !1832
  br i1 %tobool, label %if.end, label %if.then, !dbg !1837

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1838

if.end:                                           ; preds = %entry
  %10 = load i64, ptr %vlen.addr, align 8, !dbg !1839
  %conv = trunc i64 %10 to i32, !dbg !1839
  %11 = load ptr, ptr %ctx, align 8, !dbg !1840
  %sinfo4 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %11, i32 0, i32 1, !dbg !1841
  %12 = load ptr, ptr %sinfo4, align 8, !dbg !1841
  %sig5 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %12, i32 0, i32 11, !dbg !1842
  %13 = load ptr, ptr %sig5, align 8, !dbg !1842
  %s_size = getelementptr inbounds %struct.public_key_signature, ptr %13, i32 0, i32 3, !dbg !1843
  store i32 %conv, ptr %s_size, align 8, !dbg !1844
  store i32 0, ptr %retval, align 4, !dbg !1845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1845

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1846
  %14 = load i32, ptr %retval, align 4, !dbg !1846
  ret i32 %14, !dbg !1846
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !1847 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_note_signed_info(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !1851 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %sinfo = alloca ptr, align 8
  %kid = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1853, metadata !DIExpression()), !dbg !1861
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !1854, metadata !DIExpression()), !dbg !1862
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1855, metadata !DIExpression()), !dbg !1863
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1856, metadata !DIExpression()), !dbg !1864
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !1857, metadata !DIExpression()), !dbg !1865
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !1866
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1858, metadata !DIExpression()), !dbg !1867
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1868
  store ptr %0, ptr %ctx, align 8, !dbg !1867
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfo) #16, !dbg !1869
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !1859, metadata !DIExpression()), !dbg !1870
  %1 = load ptr, ptr %ctx, align 8, !dbg !1871
  %sinfo1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %1, i32 0, i32 1, !dbg !1872
  %2 = load ptr, ptr %sinfo1, align 8, !dbg !1872
  store ptr %2, ptr %sinfo, align 8, !dbg !1870
  call void @llvm.lifetime.start.p0(i64 8, ptr %kid) #16, !dbg !1873
  call void @llvm.dbg.declare(metadata ptr %kid, metadata !1860, metadata !DIExpression()), !dbg !1874
  %3 = load ptr, ptr %ctx, align 8, !dbg !1875
  %msg = getelementptr inbounds %struct.pkcs7_parse_context, ptr %3, i32 0, i32 0, !dbg !1877
  %4 = load ptr, ptr %msg, align 8, !dbg !1877
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %4, i32 0, i32 5, !dbg !1878
  %5 = load i32, ptr %data_type, align 4, !dbg !1878
  %cmp = icmp eq i32 %5, 33, !dbg !1879
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1880

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %sinfo, align 8, !dbg !1881
  %authattrs = getelementptr inbounds %struct.pkcs7_signed_info, ptr %6, i32 0, i32 8, !dbg !1882
  %7 = load ptr, ptr %authattrs, align 8, !dbg !1882
  %tobool = icmp ne ptr %7, null, !dbg !1881
  br i1 %tobool, label %if.end, label %if.then, !dbg !1883

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !1884

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1887

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1887

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.31) #19, !dbg !1884
  store i32 %call, ptr %tmp, align 4, !dbg !1887
  %8 = load i32, ptr %tmp, align 4, !dbg !1884
  store i32 -74, ptr %retval, align 4, !dbg !1889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1889

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %ctx, align 8, !dbg !1890
  %expect_skid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %9, i32 0, i32 15, !dbg !1892
  %10 = load i8, ptr %expect_skid, align 4, !dbg !1892, !range !798, !noundef !799
  %tobool2 = trunc i8 %10 to i1, !dbg !1892
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !1893

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %ctx, align 8, !dbg !1894
  %raw_serial = getelementptr inbounds %struct.pkcs7_parse_context, ptr %11, i32 0, i32 9, !dbg !1896
  %12 = load ptr, ptr %raw_serial, align 8, !dbg !1896
  %13 = load ptr, ptr %ctx, align 8, !dbg !1897
  %raw_serial_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %13, i32 0, i32 10, !dbg !1898
  %14 = load i32, ptr %raw_serial_size, align 8, !dbg !1898
  %conv = zext i32 %14 to i64, !dbg !1897
  %15 = load ptr, ptr %ctx, align 8, !dbg !1899
  %raw_issuer = getelementptr inbounds %struct.pkcs7_parse_context, ptr %15, i32 0, i32 12, !dbg !1900
  %16 = load ptr, ptr %raw_issuer, align 8, !dbg !1900
  %17 = load ptr, ptr %ctx, align 8, !dbg !1901
  %raw_issuer_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %17, i32 0, i32 11, !dbg !1902
  %18 = load i32, ptr %raw_issuer_size, align 4, !dbg !1902
  %conv4 = zext i32 %18 to i64, !dbg !1901
  %call5 = call ptr @asymmetric_key_generate_id(ptr noundef %12, i64 noundef %conv, ptr noundef %16, i64 noundef %conv4) #17, !dbg !1903
  store ptr %call5, ptr %kid, align 8, !dbg !1904
  br label %if.end8, !dbg !1905

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %ctx, align 8, !dbg !1906
  %raw_skid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %19, i32 0, i32 13, !dbg !1908
  %20 = load ptr, ptr %raw_skid, align 8, !dbg !1908
  %21 = load ptr, ptr %ctx, align 8, !dbg !1909
  %raw_skid_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %21, i32 0, i32 14, !dbg !1910
  %22 = load i32, ptr %raw_skid_size, align 8, !dbg !1910
  %conv6 = zext i32 %22 to i64, !dbg !1909
  %call7 = call ptr @asymmetric_key_generate_id(ptr noundef %20, i64 noundef %conv6, ptr noundef @.str.32, i64 noundef 0) #17, !dbg !1911
  store ptr %call7, ptr %kid, align 8, !dbg !1912
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %23 = load ptr, ptr %kid, align 8, !dbg !1913
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %23) #17, !dbg !1915
  br i1 %call9, label %if.then10, label %if.end13, !dbg !1916

if.then10:                                        ; preds = %if.end8
  %24 = load ptr, ptr %kid, align 8, !dbg !1917
  %call11 = call i64 @PTR_ERR(ptr noundef %24) #17, !dbg !1918
  %conv12 = trunc i64 %call11 to i32, !dbg !1918
  store i32 %conv12, ptr %retval, align 4, !dbg !1919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1919

if.end13:                                         ; preds = %if.end8
  store i32 0, ptr %tmp14, align 4, !dbg !1920
  %25 = load i32, ptr %tmp14, align 4, !dbg !1923
  %26 = load ptr, ptr %kid, align 8, !dbg !1924
  %27 = load ptr, ptr %sinfo, align 8, !dbg !1925
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %27, i32 0, i32 11, !dbg !1926
  %28 = load ptr, ptr %sig, align 8, !dbg !1926
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %28, i32 0, i32 0, !dbg !1927
  %arrayidx = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 0, !dbg !1925
  store ptr %26, ptr %arrayidx, align 8, !dbg !1928
  %29 = load ptr, ptr %ctx, align 8, !dbg !1929
  %sinfo_index = getelementptr inbounds %struct.pkcs7_parse_context, ptr %29, i32 0, i32 8, !dbg !1930
  %30 = load i32, ptr %sinfo_index, align 8, !dbg !1931
  %inc = add i32 %30, 1, !dbg !1931
  store i32 %inc, ptr %sinfo_index, align 8, !dbg !1931
  %31 = load ptr, ptr %sinfo, align 8, !dbg !1932
  %index = getelementptr inbounds %struct.pkcs7_signed_info, ptr %31, i32 0, i32 2, !dbg !1933
  store i32 %inc, ptr %index, align 8, !dbg !1934
  %32 = load ptr, ptr %sinfo, align 8, !dbg !1935
  %33 = load ptr, ptr %ctx, align 8, !dbg !1936
  %ppsinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %33, i32 0, i32 2, !dbg !1937
  %34 = load ptr, ptr %ppsinfo, align 8, !dbg !1937
  store ptr %32, ptr %34, align 8, !dbg !1938
  %35 = load ptr, ptr %sinfo, align 8, !dbg !1939
  %next = getelementptr inbounds %struct.pkcs7_signed_info, ptr %35, i32 0, i32 0, !dbg !1940
  %36 = load ptr, ptr %ctx, align 8, !dbg !1941
  %ppsinfo15 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %36, i32 0, i32 2, !dbg !1942
  store ptr %next, ptr %ppsinfo15, align 8, !dbg !1943
  %call16 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !1944
  %37 = load ptr, ptr %ctx, align 8, !dbg !1945
  %sinfo17 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %37, i32 0, i32 1, !dbg !1946
  store ptr %call16, ptr %sinfo17, align 8, !dbg !1947
  %38 = load ptr, ptr %ctx, align 8, !dbg !1948
  %sinfo18 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %38, i32 0, i32 1, !dbg !1950
  %39 = load ptr, ptr %sinfo18, align 8, !dbg !1950
  %tobool19 = icmp ne ptr %39, null, !dbg !1948
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !1951

if.then20:                                        ; preds = %if.end13
  store i32 -12, ptr %retval, align 4, !dbg !1952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1952

if.end21:                                         ; preds = %if.end13
  %call22 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !1953
  %40 = load ptr, ptr %ctx, align 8, !dbg !1954
  %sinfo23 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %40, i32 0, i32 1, !dbg !1955
  %41 = load ptr, ptr %sinfo23, align 8, !dbg !1955
  %sig24 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %41, i32 0, i32 11, !dbg !1956
  store ptr %call22, ptr %sig24, align 8, !dbg !1957
  %42 = load ptr, ptr %ctx, align 8, !dbg !1958
  %sinfo25 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %42, i32 0, i32 1, !dbg !1960
  %43 = load ptr, ptr %sinfo25, align 8, !dbg !1960
  %sig26 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %43, i32 0, i32 11, !dbg !1961
  %44 = load ptr, ptr %sig26, align 8, !dbg !1961
  %tobool27 = icmp ne ptr %44, null, !dbg !1958
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1962

if.then28:                                        ; preds = %if.end21
  store i32 -12, ptr %retval, align 4, !dbg !1963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1963

if.end29:                                         ; preds = %if.end21
  store i32 0, ptr %retval, align 4, !dbg !1964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1964

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then20, %if.then10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %kid) #16, !dbg !1965
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfo) #16, !dbg !1965
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !1965
  %45 = load i32, ptr %retval, align 4, !dbg !1965
  ret i32 %45, !dbg !1965
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1966 dso_local ptr @asymmetric_key_generate_id(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1969 dso_local void @public_key_signature_free(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !1972 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1974, metadata !DIExpression()), !dbg !1979
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1975, metadata !DIExpression()), !dbg !1980
  %0 = load i64, ptr %size.addr, align 8, !dbg !1981
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1982
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1983

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1984
  %tobool = icmp ne i64 %2, 0, !dbg !1984
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1985

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !1986
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1976, metadata !DIExpression()), !dbg !1987
  %3 = load i64, ptr %size.addr, align 8, !dbg !1988
  %cmp = icmp ugt i64 %3, 8192, !dbg !1990
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1991

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1992
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1993
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !1994
  store ptr %call, ptr %retval, align 8, !dbg !1995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1995

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1996
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !1996
  store i32 %call2, ptr %index, align 4, !dbg !1997
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1998
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1999
  %9 = ptrtoint ptr %8 to i64, !dbg !1999
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !2000
  %idxprom = zext i32 %call3 to i64, !dbg !2001
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2001
  %10 = load i32, ptr %index, align 4, !dbg !2002
  %idxprom4 = zext i32 %10 to i64, !dbg !2001
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2001
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2001
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2003
  %13 = load i64, ptr %size.addr, align 8, !dbg !2004
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !2005
  store ptr %call6, ptr %retval, align 8, !dbg !2006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2006

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !2007
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2008
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2009
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !2010
  store ptr %call8, ptr %retval, align 8, !dbg !2011
  br label %return, !dbg !2011

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2012
  ret ptr %16, !dbg !2012
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2013 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !2014 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2018, metadata !DIExpression()), !dbg !2020
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2019, metadata !DIExpression()), !dbg !2021
  %0 = load i64, ptr %size.addr, align 8, !dbg !2022
  %tobool = icmp ne i64 %0, 0, !dbg !2022
  br i1 %tobool, label %if.end, label %if.then, !dbg !2024

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2025
  br label %return, !dbg !2025

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2026
  %cmp = icmp ule i64 %1, 8, !dbg !2028
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2029

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2030
  br label %return, !dbg !2030

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2031
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2033
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2034

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2035
  %cmp4 = icmp ule i64 %3, 96, !dbg !2036
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2037

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2038
  br label %return, !dbg !2038

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2039
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2041
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2042

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2043
  %cmp9 = icmp ule i64 %5, 192, !dbg !2044
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2045

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2046
  br label %return, !dbg !2046

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2047
  %cmp12 = icmp ule i64 %6, 8, !dbg !2049
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2050

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2051
  br label %return, !dbg !2051

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2052
  %cmp15 = icmp ule i64 %7, 16, !dbg !2054
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2055

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2056
  br label %return, !dbg !2056

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2057
  %cmp18 = icmp ule i64 %8, 32, !dbg !2059
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2060

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2061
  br label %return, !dbg !2061

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2062
  %cmp21 = icmp ule i64 %9, 64, !dbg !2064
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2065

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2066
  br label %return, !dbg !2066

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2067
  %cmp24 = icmp ule i64 %10, 128, !dbg !2069
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2070

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2071
  br label %return, !dbg !2071

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2072
  %cmp27 = icmp ule i64 %11, 256, !dbg !2074
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2075

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2076
  br label %return, !dbg !2076

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2077
  %cmp30 = icmp ule i64 %12, 512, !dbg !2079
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2080

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2081
  br label %return, !dbg !2081

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2082
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2084
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2085

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2086
  br label %return, !dbg !2086

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2087
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2089
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2090

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2091
  br label %return, !dbg !2091

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2092
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2094
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2095

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2096
  br label %return, !dbg !2096

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2097
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2099
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2100

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2101
  br label %return, !dbg !2101

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2102
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2104
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2105

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2106
  br label %return, !dbg !2106

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2107
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2109
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2110

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2111
  br label %return, !dbg !2111

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2112
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2114
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2115

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2116
  br label %return, !dbg !2116

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2117
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2119
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2120

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2121
  br label %return, !dbg !2121

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2122
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2124
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2125

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2126
  br label %return, !dbg !2126

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2127
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2129
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2130

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2131
  br label %return, !dbg !2131

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2132
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2134
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2135

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2136
  br label %return, !dbg !2136

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2137
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2139
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2140

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2141
  br label %return, !dbg !2141

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2142, !range !798, !noundef !799
  %tobool69 = trunc i8 %25 to i1, !dbg !2142
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2144

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2145

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #22, !dbg !2146, !srcloc !2149
  unreachable, !dbg !2146

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2150

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2151

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2152

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2154

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2152

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.33, i32 480, i32 0, i64 12) #16, !dbg !2156, !srcloc !2158
  br label %do.end75, !dbg !2156

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2152

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2159
  br label %return, !dbg !2159

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2160
  ret i32 %26, !dbg !2160
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2161 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !2167 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2171, metadata !DIExpression()), !dbg !2173
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2172, metadata !DIExpression()), !dbg !2174
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2175
  %and = and i32 %0, 17, !dbg !2175
  %cmp = icmp eq i32 %and, 0, !dbg !2175
  %lnot = xor i1 %cmp, true, !dbg !2175
  %lnot1 = xor i1 %lnot, true, !dbg !2175
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2175
  %conv = sext i32 %lnot.ext to i64, !dbg !2175
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2175
  %tobool = icmp ne i64 %expval, 0, !dbg !2175
  br i1 %tobool, label %if.then, label %if.end, !dbg !2177

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2178
  br label %return, !dbg !2178

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2179
  %and2 = and i32 %1, 1, !dbg !2181
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2181
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2182

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2183
  br label %return, !dbg !2183

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2184
  br label %return, !dbg !2184

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2186
  ret i32 %2, !dbg !2186
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2187 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2188 dso_local void @__compiletime_assert_196() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__instrument_read_write_bitop(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !2191 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2195, metadata !DIExpression()), !dbg !2197
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2196, metadata !DIExpression()), !dbg !2198
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2199
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2202
  %div = sdiv i64 %1, 64, !dbg !2202
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2203
  call void @instrument_read_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !2204
  ret void, !dbg !2205
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !2206 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2209, metadata !DIExpression()), !dbg !2212
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2210, metadata !DIExpression()), !dbg !2213
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !2214
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2211, metadata !DIExpression()), !dbg !2215
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2216
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2217
  %2 = call i8 asm " btsq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !2218, !srcloc !2219
  %3 = icmp ult i8 %2, 2, !dbg !2218
  call void @llvm.assume(i1 %3), !dbg !2218
  store i8 %2, ptr %oldbit, align 1, !dbg !2218
  %4 = load i8, ptr %oldbit, align 1, !dbg !2220, !range !798, !noundef !799
  %tobool = trunc i8 %4 to i1, !dbg !2220
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !2221
  ret i1 %tobool, !dbg !2222
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !2223 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2231, metadata !DIExpression()), !dbg !2233
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2232, metadata !DIExpression()), !dbg !2234
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2235
  %1 = load i64, ptr %size.addr, align 8, !dbg !2236
  %conv = trunc i64 %1 to i32, !dbg !2236
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !2237
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2238
  %3 = load i64, ptr %size.addr, align 8, !dbg !2238
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #17, !dbg !2238
  ret void, !dbg !2239
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !2240 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2245, metadata !DIExpression()), !dbg !2247
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2246, metadata !DIExpression()), !dbg !2248
  ret i1 true, !dbg !2249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !2250 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2255, metadata !DIExpression()), !dbg !2258
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2256, metadata !DIExpression()), !dbg !2259
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2257, metadata !DIExpression()), !dbg !2260
  ret void, !dbg !2261
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !2262 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2264, metadata !DIExpression()), !dbg !2266
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2265, metadata !DIExpression()), !dbg !2267
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2268
  %1 = load i64, ptr %size.addr, align 8, !dbg !2269
  %conv = trunc i64 %1 to i32, !dbg !2269
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !2270
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2271
  %3 = load i64, ptr %size.addr, align 8, !dbg !2271
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !2271
  ret void, !dbg !2272
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !2273 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2275, metadata !DIExpression()), !dbg !2277
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2276, metadata !DIExpression()), !dbg !2278
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2279
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2280
  br i1 %1, label %cond.true, label %cond.false, !dbg !2280

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2281
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2282
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !2283
  %conv = zext i1 %call to i32, !dbg !2283
  br label %cond.end, !dbg !2280

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2284
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2285
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !2286
  %conv2 = zext i1 %call1 to i32, !dbg !2286
  br label %cond.end, !dbg !2280

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2280
  %tobool = icmp ne i32 %cond, 0, !dbg !2280
  ret i1 %tobool, !dbg !2287
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !2288 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2290, metadata !DIExpression()), !dbg !2292
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2291, metadata !DIExpression()), !dbg !2293
  ret i1 true, !dbg !2294
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !2295 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2299, metadata !DIExpression()), !dbg !2301
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2300, metadata !DIExpression()), !dbg !2302
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2303
  %and = and i64 %0, 63, !dbg !2304
  %shl = shl i64 1, %and, !dbg !2305
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2306
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2307
  %shr = ashr i64 %2, 6, !dbg !2308
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2306
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2306
  %and1 = and i64 %shl, %3, !dbg !2309
  %cmp = icmp ne i64 %and1, 0, !dbg !2310
  ret i1 %cmp, !dbg !2311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !2312 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2314, metadata !DIExpression()), !dbg !2317
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2315, metadata !DIExpression()), !dbg !2318
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2316, metadata !DIExpression()), !dbg !2320
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2321
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2322
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !2323, !srcloc !2324
  %3 = icmp ult i8 %2, 2, !dbg !2323
  call void @llvm.assume(i1 %3), !dbg !2323
  store i8 %2, ptr %oldbit, align 1, !dbg !2323
  %4 = load i8, ptr %oldbit, align 1, !dbg !2325, !range !798, !noundef !799
  %tobool = trunc i8 %4 to i1, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !2326
  ret i1 %tobool, !dbg !2327
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(1) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description199", scope: !2, file: !3, line: 19, type: !341, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/asymmetric_keys/.pkcs7_parser.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/asymmetric_keys/pkcs7_message\22 -D KBUILD_BASENAME=\22pkcs7_parser\22 -D KBUILD_MODNAME=\22pkcs7_message\22 -D __KBUILD_MODNAME=kmod_pkcs7_message -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/asymmetric_keys/pkcs7_parser.ll crypto/asymmetric_keys/pkcs7_parser.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !163, globals: !183, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/asymmetric_keys/pkcs7_parser.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef16fc8c308f69364fcfc2acad3fbbb9")
!4 = !{!5, !109, !114, !121, !153}
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
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 10, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!111 = !{!112, !113}
!112 = !DIEnumerator(name: "false", value: 0)
!113 = !DIEnumerator(name: "true", value: 1)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asn1_class", file: !115, line: 12, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/asn1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bfb79e98a58ecc0214aefb4ff1311213")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "ASN1_UNIV", value: 0)
!118 = !DIEnumerator(name: "ASN1_APPL", value: 1)
!119 = !DIEnumerator(name: "ASN1_CONT", value: 2)
!120 = !DIEnumerator(name: "ASN1_PRIV", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asn1_tag", file: !115, line: 28, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!123 = !DIEnumerator(name: "ASN1_EOC", value: 0)
!124 = !DIEnumerator(name: "ASN1_BOOL", value: 1)
!125 = !DIEnumerator(name: "ASN1_INT", value: 2)
!126 = !DIEnumerator(name: "ASN1_BTS", value: 3)
!127 = !DIEnumerator(name: "ASN1_OTS", value: 4)
!128 = !DIEnumerator(name: "ASN1_NULL", value: 5)
!129 = !DIEnumerator(name: "ASN1_OID", value: 6)
!130 = !DIEnumerator(name: "ASN1_ODE", value: 7)
!131 = !DIEnumerator(name: "ASN1_EXT", value: 8)
!132 = !DIEnumerator(name: "ASN1_REAL", value: 9)
!133 = !DIEnumerator(name: "ASN1_ENUM", value: 10)
!134 = !DIEnumerator(name: "ASN1_EPDV", value: 11)
!135 = !DIEnumerator(name: "ASN1_UTF8STR", value: 12)
!136 = !DIEnumerator(name: "ASN1_RELOID", value: 13)
!137 = !DIEnumerator(name: "ASN1_SEQ", value: 16)
!138 = !DIEnumerator(name: "ASN1_SET", value: 17)
!139 = !DIEnumerator(name: "ASN1_NUMSTR", value: 18)
!140 = !DIEnumerator(name: "ASN1_PRNSTR", value: 19)
!141 = !DIEnumerator(name: "ASN1_TEXSTR", value: 20)
!142 = !DIEnumerator(name: "ASN1_VIDSTR", value: 21)
!143 = !DIEnumerator(name: "ASN1_IA5STR", value: 22)
!144 = !DIEnumerator(name: "ASN1_UNITIM", value: 23)
!145 = !DIEnumerator(name: "ASN1_GENTIM", value: 24)
!146 = !DIEnumerator(name: "ASN1_GRASTR", value: 25)
!147 = !DIEnumerator(name: "ASN1_VISSTR", value: 26)
!148 = !DIEnumerator(name: "ASN1_GENSTR", value: 27)
!149 = !DIEnumerator(name: "ASN1_UNISTR", value: 28)
!150 = !DIEnumerator(name: "ASN1_CHRSTR", value: 29)
!151 = !DIEnumerator(name: "ASN1_BMPSTR", value: 30)
!152 = !DIEnumerator(name: "ASN1_LONG_TAG", value: 31)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !154, line: 364, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!155 = !{!156, !157, !158, !159, !160, !161, !162}
!156 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!160 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!161 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!162 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!163 = !{!164, !165, !167, !168, !175, !176, !177, !179, !180, !181}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !166, line: 154, baseType: !7)
!166 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!167 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !171, line: 17, baseType: !172)
!171 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !173, line: 21, baseType: !174)
!173 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!174 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !166, line: 42, baseType: !167)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!179 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !179)
!183 = !{!0, !184, !191, !196, !201, !203, !205, !207, !212, !217, !219, !224, !229, !231, !233, !235, !237, !242, !244, !249, !251, !256, !258, !260, !262, !264, !266, !271, !276, !281, !283, !288, !291, !296, !301, !306, !311, !316, !321, !326, !331, !336}
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author200", scope: !2, file: !3, line: 20, type: !186, isLocal: true, isDefinition: true, align: 8)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 280, elements: !189)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!189 = !{!190}
!190 = !DISubrange(count: 35)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file201", scope: !2, file: !3, line: 21, type: !193, isLocal: true, isDefinition: true, align: 8)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 448, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 56)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license202", scope: !2, file: !3, line: 21, type: !198, isLocal: true, isDefinition: true, align: 8)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 208, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 26)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pkcs7_free_message203", scope: !2, file: !3, line: 81, type: !164, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pkcs7_parse_message204", scope: !2, file: !3, line: 170, type: !164, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pkcs7_get_content_data205", scope: !2, file: !3, line: 198, type: !164, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 240, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 30)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 32, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 4)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !214, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 40, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 5)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 56, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 7)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !226, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !226, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !226, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !214, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 96, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 12)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !239, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 232, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 29)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !214, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 48, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 6)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !253, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !221, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !214, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !214, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 295, type: !226, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 216, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 27)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !3, line: 315, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 360, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 45)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 328, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 41)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 392, type: !278, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 395, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 392, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 49)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 280, elements: !189)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 536, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 67)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !3, line: 542, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 424, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 53)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 562, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 512, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 64)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !3, line: 573, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 432, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 54)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 589, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 288, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 36)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 595, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 344, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 43)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 676, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 336, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 42)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !3, line: 689, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 8, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 1)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !154, line: 480, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 168, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 21)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 352, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 44)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 320, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 40)
!344 = !{i32 7, !"Dwarf Version", i32 5}
!345 = !{i32 2, !"Debug Info Version", i32 3}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 8, !"cf-protection-branch", i32 1}
!348 = !{i32 4, !"function_return_thunk_extern", i32 1}
!349 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!350 = !{i32 1, !"Code Model", i32 2}
!351 = !{i32 1, !"override-stack-alignment", i32 8}
!352 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!353 = distinct !DISubprogram(name: "pkcs7_free_message", scope: !3, file: !3, line: 57, type: !354, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkcs7_message", file: !358, line: 52, size: 448, elements: !359)
!358 = !DIFile(filename: "crypto/asymmetric_keys/pkcs7_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5504888971907a15ec7b804885f1377c")
!359 = !{!360, !442, !443, !459, !460, !461, !462, !467, !468}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "certs", scope: !357, file: !358, line: 53, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_certificate", file: !363, line: 12, size: 1344, elements: !364)
!363 = !DIFile(filename: "crypto/asymmetric_keys/x509_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "706a2c38e72925540b7c53948fb9b13f")
!364 = !{!365, !366, !367, !386, !411, !413, !414, !415, !416, !421, !422, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !363, line: 13, baseType: !361, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !362, file: !363, line: 14, baseType: !361, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !362, file: !363, line: 15, baseType: !368, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key", file: !370, line: 22, size: 448, elements: !371)
!370 = !DIFile(filename: "./include/crypto/public_key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bba3709dd387ae2fcb2dcdb4db69068a")
!371 = !{!372, !373, !376, !377, !378, !379, !382, !384, !385}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !369, file: !370, line: 23, baseType: !164, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !369, file: !370, line: 24, baseType: !374, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !171, line: 21, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !173, line: 27, baseType: !7)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !369, file: !370, line: 25, baseType: !5, size: 32, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !369, file: !370, line: 26, baseType: !164, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "paramlen", scope: !369, file: !370, line: 27, baseType: !374, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "key_is_private", scope: !369, file: !370, line: 28, baseType: !380, size: 8, offset: 224)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !166, line: 35, baseType: !381)
!381 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "id_type", scope: !369, file: !370, line: 29, baseType: !383, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !369, file: !370, line: 30, baseType: !383, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "key_eflags", scope: !369, file: !370, line: 31, baseType: !167, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !362, file: !363, line: 16, baseType: !387, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key_signature", file: !370, line: 42, size: 576, elements: !389)
!389 = !{!390, !404, !405, !406, !407, !408, !409, !410}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ids", scope: !388, file: !370, line: 43, baseType: !391, size: 192)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 192, elements: !402)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asymmetric_key_id", file: !394, line: 50, size: 16, elements: !395)
!394 = !DIFile(filename: "./include/keys/asymmetric-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3daffae8091b612618c69279094a4c0")
!395 = !{!396, !398}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !393, file: !394, line: 51, baseType: !397, size: 16)
!397 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !393, file: !394, line: 52, baseType: !399, offset: 16)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: -1)
!402 = !{!403}
!403 = !DISubrange(count: 3)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !388, file: !370, line: 44, baseType: !175, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !388, file: !370, line: 45, baseType: !175, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "s_size", scope: !388, file: !370, line: 46, baseType: !374, size: 32, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "digest_size", scope: !388, file: !370, line: 47, baseType: !374, size: 32, offset: 352)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !388, file: !370, line: 48, baseType: !383, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !388, file: !370, line: 49, baseType: !383, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !388, file: !370, line: 50, baseType: !383, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !362, file: !363, line: 17, baseType: !412, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !362, file: !363, line: 18, baseType: !412, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !362, file: !363, line: 19, baseType: !392, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !362, file: !363, line: 20, baseType: !392, size: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "valid_from", scope: !362, file: !363, line: 21, baseType: !417, size: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !418, line: 8, baseType: !419)
!418 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !173, line: 30, baseType: !420)
!420 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "valid_to", scope: !362, file: !363, line: 22, baseType: !417, size: 64, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tbs", scope: !362, file: !363, line: 23, baseType: !423, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tbs_size", scope: !362, file: !363, line: 24, baseType: !7, size: 32, offset: 704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sig_size", scope: !362, file: !363, line: 25, baseType: !7, size: 32, offset: 736)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sig", scope: !362, file: !363, line: 26, baseType: !423, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial", scope: !362, file: !363, line: 27, baseType: !423, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial_size", scope: !362, file: !363, line: 28, baseType: !7, size: 32, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer_size", scope: !362, file: !363, line: 29, baseType: !7, size: 32, offset: 928)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer", scope: !362, file: !363, line: 30, baseType: !423, size: 64, offset: 960)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "raw_subject", scope: !362, file: !363, line: 31, baseType: !423, size: 64, offset: 1024)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "raw_subject_size", scope: !362, file: !363, line: 32, baseType: !7, size: 32, offset: 1088)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid_size", scope: !362, file: !363, line: 33, baseType: !7, size: 32, offset: 1120)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid", scope: !362, file: !363, line: 34, baseType: !423, size: 64, offset: 1152)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !362, file: !363, line: 35, baseType: !7, size: 32, offset: 1216)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "seen", scope: !362, file: !363, line: 36, baseType: !380, size: 8, offset: 1248)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "verified", scope: !362, file: !363, line: 37, baseType: !380, size: 8, offset: 1256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "self_signed", scope: !362, file: !363, line: 38, baseType: !380, size: 8, offset: 1264)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_sig", scope: !362, file: !363, line: 39, baseType: !380, size: 8, offset: 1272)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted", scope: !362, file: !363, line: 40, baseType: !380, size: 8, offset: 1280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !357, file: !358, line: 54, baseType: !361, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "signed_infos", scope: !357, file: !358, line: 55, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkcs7_signed_info", file: !358, line: 17, size: 576, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !358, line: 18, baseType: !444, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !445, file: !358, line: 19, baseType: !361, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !445, file: !358, line: 20, baseType: !7, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_crypto", scope: !445, file: !358, line: 21, baseType: !380, size: 8, offset: 160)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted", scope: !445, file: !358, line: 22, baseType: !380, size: 8, offset: 168)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "msgdigest", scope: !445, file: !358, line: 25, baseType: !423, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "msgdigest_len", scope: !445, file: !358, line: 26, baseType: !7, size: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "authattrs_len", scope: !445, file: !358, line: 29, baseType: !7, size: 32, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "authattrs", scope: !445, file: !358, line: 30, baseType: !423, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "aa_set", scope: !445, file: !358, line: 31, baseType: !167, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "signing_time", scope: !445, file: !358, line: 38, baseType: !417, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !445, file: !358, line: 49, baseType: !387, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !357, file: !358, line: 56, baseType: !170, size: 8, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "have_authattrs", scope: !357, file: !358, line: 57, baseType: !380, size: 8, offset: 200)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !357, file: !358, line: 60, baseType: !5, size: 32, offset: 224)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !357, file: !358, line: 61, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !166, line: 61, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !465, line: 72, baseType: !466)
!465 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !465, line: 16, baseType: !167)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "data_hdrlen", scope: !357, file: !358, line: 62, baseType: !463, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !357, file: !358, line: 63, baseType: !423, size: 64, offset: 384)
!469 = !{!470, !471, !472}
!470 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !353, file: !3, line: 57, type: !356)
!471 = !DILocalVariable(name: "cert", scope: !353, file: !3, line: 59, type: !361)
!472 = !DILocalVariable(name: "sinfo", scope: !353, file: !3, line: 60, type: !444)
!473 = !DILocation(line: 57, column: 47, scope: !353)
!474 = !DILocation(line: 59, column: 2, scope: !353)
!475 = !DILocation(line: 59, column: 27, scope: !353)
!476 = !DILocation(line: 60, column: 2, scope: !353)
!477 = !DILocation(line: 60, column: 28, scope: !353)
!478 = !DILocation(line: 62, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !353, file: !3, line: 62, column: 6)
!480 = !DILocation(line: 62, column: 6, scope: !353)
!481 = !DILocation(line: 63, column: 3, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !3, line: 62, column: 13)
!483 = !DILocation(line: 63, column: 10, scope: !482)
!484 = !DILocation(line: 63, column: 17, scope: !482)
!485 = !DILocation(line: 64, column: 11, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !3, line: 63, column: 24)
!487 = !DILocation(line: 64, column: 18, scope: !486)
!488 = !DILocation(line: 64, column: 9, scope: !486)
!489 = !DILocation(line: 65, column: 19, scope: !486)
!490 = !DILocation(line: 65, column: 25, scope: !486)
!491 = !DILocation(line: 65, column: 4, scope: !486)
!492 = !DILocation(line: 65, column: 11, scope: !486)
!493 = !DILocation(line: 65, column: 17, scope: !486)
!494 = !DILocation(line: 66, column: 26, scope: !486)
!495 = !DILocation(line: 66, column: 4, scope: !486)
!496 = distinct !{!496, !481, !497, !498, !499}
!497 = !DILocation(line: 67, column: 3, scope: !482)
!498 = !{!"llvm.loop.mustprogress"}
!499 = !{!"llvm.loop.unroll.disable"}
!500 = !DILocation(line: 68, column: 3, scope: !482)
!501 = !DILocation(line: 68, column: 10, scope: !482)
!502 = !DILocation(line: 68, column: 17, scope: !482)
!503 = !DILocation(line: 69, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !482, file: !3, line: 68, column: 22)
!505 = !DILocation(line: 69, column: 18, scope: !504)
!506 = !DILocation(line: 69, column: 9, scope: !504)
!507 = !DILocation(line: 70, column: 17, scope: !504)
!508 = !DILocation(line: 70, column: 23, scope: !504)
!509 = !DILocation(line: 70, column: 4, scope: !504)
!510 = !DILocation(line: 70, column: 11, scope: !504)
!511 = !DILocation(line: 70, column: 15, scope: !504)
!512 = !DILocation(line: 71, column: 26, scope: !504)
!513 = !DILocation(line: 71, column: 4, scope: !504)
!514 = distinct !{!514, !500, !515, !498, !499}
!515 = !DILocation(line: 72, column: 3, scope: !482)
!516 = !DILocation(line: 73, column: 3, scope: !482)
!517 = !DILocation(line: 73, column: 10, scope: !482)
!518 = !DILocation(line: 73, column: 17, scope: !482)
!519 = !DILocation(line: 74, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !482, file: !3, line: 73, column: 31)
!521 = !DILocation(line: 74, column: 19, scope: !520)
!522 = !DILocation(line: 74, column: 10, scope: !520)
!523 = !DILocation(line: 75, column: 26, scope: !520)
!524 = !DILocation(line: 75, column: 33, scope: !520)
!525 = !DILocation(line: 75, column: 4, scope: !520)
!526 = !DILocation(line: 75, column: 11, scope: !520)
!527 = !DILocation(line: 75, column: 24, scope: !520)
!528 = !DILocation(line: 76, column: 27, scope: !520)
!529 = !DILocation(line: 76, column: 4, scope: !520)
!530 = distinct !{!530, !516, !531, !498, !499}
!531 = !DILocation(line: 77, column: 3, scope: !482)
!532 = !DILocation(line: 78, column: 9, scope: !482)
!533 = !DILocation(line: 78, column: 3, scope: !482)
!534 = !DILocation(line: 79, column: 2, scope: !482)
!535 = !DILocation(line: 80, column: 1, scope: !353)
!536 = !DISubprogram(name: "x509_free_certificate", scope: !363, file: !363, line: 46, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !361}
!539 = distinct !DISubprogram(name: "pkcs7_free_signed_info", scope: !3, file: !3, line: 45, type: !540, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !444}
!542 = !{!543}
!543 = !DILocalVariable(name: "sinfo", arg: 1, scope: !539, file: !3, line: 45, type: !444)
!544 = !DILocation(line: 45, column: 62, scope: !539)
!545 = !DILocation(line: 47, column: 6, scope: !546)
!546 = distinct !DILexicalBlock(scope: !539, file: !3, line: 47, column: 6)
!547 = !DILocation(line: 47, column: 6, scope: !539)
!548 = !DILocation(line: 48, column: 29, scope: !549)
!549 = distinct !DILexicalBlock(scope: !546, file: !3, line: 47, column: 13)
!550 = !DILocation(line: 48, column: 36, scope: !549)
!551 = !DILocation(line: 48, column: 3, scope: !549)
!552 = !DILocation(line: 49, column: 9, scope: !549)
!553 = !DILocation(line: 49, column: 3, scope: !549)
!554 = !DILocation(line: 50, column: 2, scope: !549)
!555 = !DILocation(line: 51, column: 1, scope: !539)
!556 = !DISubprogram(name: "kfree", scope: !154, file: !154, line: 227, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !423}
!559 = distinct !DISubprogram(name: "pkcs7_parse_message", scope: !3, file: !3, line: 115, type: !560, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{!356, !423, !463}
!562 = !{!563, !564, !565, !587, !588, !590, !591, !593, !594, !595, !596}
!563 = !DILocalVariable(name: "data", arg: 1, scope: !559, file: !3, line: 115, type: !423)
!564 = !DILocalVariable(name: "datalen", arg: 2, scope: !559, file: !3, line: 115, type: !463)
!565 = !DILocalVariable(name: "ctx", scope: !559, file: !3, line: 117, type: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkcs7_parse_context", file: !3, line: 23, size: 832, elements: !568)
!568 = !{!569, !570, !571, !573, !574, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !567, file: !3, line: 24, baseType: !356, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sinfo", scope: !567, file: !3, line: 25, baseType: !444, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ppsinfo", scope: !567, file: !3, line: 26, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "certs", scope: !567, file: !3, line: 27, baseType: !361, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ppcerts", scope: !567, file: !3, line: 28, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !567, file: !3, line: 29, baseType: !167, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "last_oid", scope: !567, file: !3, line: 30, baseType: !5, size: 32, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "x509_index", scope: !567, file: !3, line: 31, baseType: !7, size: 32, offset: 416)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sinfo_index", scope: !567, file: !3, line: 32, baseType: !7, size: 32, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial", scope: !567, file: !3, line: 33, baseType: !423, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial_size", scope: !567, file: !3, line: 34, baseType: !7, size: 32, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer_size", scope: !567, file: !3, line: 35, baseType: !7, size: 32, offset: 608)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer", scope: !567, file: !3, line: 36, baseType: !423, size: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid", scope: !567, file: !3, line: 37, baseType: !423, size: 64, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid_size", scope: !567, file: !3, line: 38, baseType: !7, size: 32, offset: 768)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "expect_skid", scope: !567, file: !3, line: 39, baseType: !380, size: 8, offset: 800)
!587 = !DILocalVariable(name: "msg", scope: !559, file: !3, line: 118, type: !356)
!588 = !DILocalVariable(name: "ret", scope: !559, file: !3, line: 119, type: !589)
!589 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!590 = !DILabel(scope: !559, name: "out", file: !3, line: 155)
!591 = !DILocalVariable(name: "cert", scope: !592, file: !3, line: 157, type: !361)
!592 = distinct !DILexicalBlock(scope: !559, file: !3, line: 156, column: 21)
!593 = !DILabel(scope: !559, name: "out_no_sig", file: !3, line: 161)
!594 = !DILabel(scope: !559, name: "out_no_sinfo", file: !3, line: 163)
!595 = !DILabel(scope: !559, name: "out_no_msg", file: !3, line: 165)
!596 = !DILabel(scope: !559, name: "out_no_ctx", file: !3, line: 167)
!597 = !DILocation(line: 115, column: 55, scope: !559)
!598 = !DILocation(line: 115, column: 68, scope: !559)
!599 = !DILocation(line: 117, column: 2, scope: !559)
!600 = !DILocation(line: 117, column: 30, scope: !559)
!601 = !DILocation(line: 118, column: 2, scope: !559)
!602 = !DILocation(line: 118, column: 24, scope: !559)
!603 = !DILocation(line: 118, column: 30, scope: !559)
!604 = !DILocation(line: 119, column: 2, scope: !559)
!605 = !DILocation(line: 119, column: 6, scope: !559)
!606 = !DILocation(line: 121, column: 8, scope: !559)
!607 = !DILocation(line: 121, column: 6, scope: !559)
!608 = !DILocation(line: 122, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !559, file: !3, line: 122, column: 6)
!610 = !DILocation(line: 122, column: 6, scope: !559)
!611 = !DILocation(line: 123, column: 3, scope: !609)
!612 = !DILocation(line: 124, column: 13, scope: !559)
!613 = !DILocation(line: 124, column: 2, scope: !559)
!614 = !DILocation(line: 124, column: 7, scope: !559)
!615 = !DILocation(line: 124, column: 11, scope: !559)
!616 = !DILocation(line: 125, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !559, file: !3, line: 125, column: 6)
!618 = !DILocation(line: 125, column: 12, scope: !617)
!619 = !DILocation(line: 125, column: 6, scope: !559)
!620 = !DILocation(line: 126, column: 3, scope: !617)
!621 = !DILocation(line: 127, column: 15, scope: !559)
!622 = !DILocation(line: 127, column: 2, scope: !559)
!623 = !DILocation(line: 127, column: 7, scope: !559)
!624 = !DILocation(line: 127, column: 13, scope: !559)
!625 = !DILocation(line: 128, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !559, file: !3, line: 128, column: 6)
!627 = !DILocation(line: 128, column: 12, scope: !626)
!628 = !DILocation(line: 128, column: 6, scope: !559)
!629 = !DILocation(line: 129, column: 3, scope: !626)
!630 = !DILocation(line: 130, column: 20, scope: !559)
!631 = !DILocation(line: 130, column: 2, scope: !559)
!632 = !DILocation(line: 130, column: 7, scope: !559)
!633 = !DILocation(line: 130, column: 14, scope: !559)
!634 = !DILocation(line: 130, column: 18, scope: !559)
!635 = !DILocation(line: 132, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !559, file: !3, line: 132, column: 6)
!637 = !DILocation(line: 132, column: 12, scope: !636)
!638 = !DILocation(line: 132, column: 19, scope: !636)
!639 = !DILocation(line: 132, column: 6, scope: !559)
!640 = !DILocation(line: 133, column: 3, scope: !636)
!641 = !DILocation(line: 135, column: 29, scope: !559)
!642 = !DILocation(line: 135, column: 14, scope: !559)
!643 = !DILocation(line: 135, column: 2, scope: !559)
!644 = !DILocation(line: 135, column: 7, scope: !559)
!645 = !DILocation(line: 135, column: 12, scope: !559)
!646 = !DILocation(line: 136, column: 18, scope: !559)
!647 = !DILocation(line: 136, column: 23, scope: !559)
!648 = !DILocation(line: 136, column: 2, scope: !559)
!649 = !DILocation(line: 136, column: 7, scope: !559)
!650 = !DILocation(line: 136, column: 15, scope: !559)
!651 = !DILocation(line: 137, column: 18, scope: !559)
!652 = !DILocation(line: 137, column: 23, scope: !559)
!653 = !DILocation(line: 137, column: 28, scope: !559)
!654 = !DILocation(line: 137, column: 2, scope: !559)
!655 = !DILocation(line: 137, column: 7, scope: !559)
!656 = !DILocation(line: 137, column: 15, scope: !559)
!657 = !DILocation(line: 140, column: 41, scope: !559)
!658 = !DILocation(line: 140, column: 46, scope: !559)
!659 = !DILocation(line: 140, column: 52, scope: !559)
!660 = !DILocation(line: 140, column: 8, scope: !559)
!661 = !DILocation(line: 140, column: 6, scope: !559)
!662 = !DILocation(line: 141, column: 6, scope: !663)
!663 = distinct !DILexicalBlock(scope: !559, file: !3, line: 141, column: 6)
!664 = !DILocation(line: 141, column: 10, scope: !663)
!665 = !DILocation(line: 141, column: 6, scope: !559)
!666 = !DILocation(line: 142, column: 17, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !3, line: 141, column: 15)
!668 = !DILocation(line: 142, column: 9, scope: !667)
!669 = !DILocation(line: 142, column: 7, scope: !667)
!670 = !DILocation(line: 143, column: 3, scope: !667)
!671 = !DILocation(line: 146, column: 30, scope: !559)
!672 = !DILocation(line: 146, column: 35, scope: !559)
!673 = !DILocation(line: 146, column: 8, scope: !559)
!674 = !DILocation(line: 146, column: 6, scope: !559)
!675 = !DILocation(line: 147, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !559, file: !3, line: 147, column: 6)
!677 = !DILocation(line: 147, column: 10, scope: !676)
!678 = !DILocation(line: 147, column: 6, scope: !559)
!679 = !DILocation(line: 148, column: 17, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !3, line: 147, column: 15)
!681 = !DILocation(line: 148, column: 9, scope: !680)
!682 = !DILocation(line: 148, column: 7, scope: !680)
!683 = !DILocation(line: 149, column: 3, scope: !680)
!684 = !DILocation(line: 152, column: 8, scope: !559)
!685 = !DILocation(line: 152, column: 13, scope: !559)
!686 = !DILocation(line: 152, column: 6, scope: !559)
!687 = !DILocation(line: 153, column: 2, scope: !559)
!688 = !DILocation(line: 153, column: 7, scope: !559)
!689 = !DILocation(line: 153, column: 11, scope: !559)
!690 = !DILocation(line: 155, column: 1, scope: !559)
!691 = !DILocation(line: 156, column: 2, scope: !559)
!692 = !DILocation(line: 156, column: 9, scope: !559)
!693 = !DILocation(line: 156, column: 14, scope: !559)
!694 = !DILocation(line: 157, column: 3, scope: !592)
!695 = !DILocation(line: 157, column: 28, scope: !592)
!696 = !DILocation(line: 157, column: 35, scope: !592)
!697 = !DILocation(line: 157, column: 40, scope: !592)
!698 = !DILocation(line: 158, column: 16, scope: !592)
!699 = !DILocation(line: 158, column: 22, scope: !592)
!700 = !DILocation(line: 158, column: 3, scope: !592)
!701 = !DILocation(line: 158, column: 8, scope: !592)
!702 = !DILocation(line: 158, column: 14, scope: !592)
!703 = !DILocation(line: 159, column: 25, scope: !592)
!704 = !DILocation(line: 159, column: 3, scope: !592)
!705 = !DILocation(line: 160, column: 2, scope: !559)
!706 = distinct !{!706, !691, !705, !498, !499}
!707 = !DILocation(line: 161, column: 1, scope: !559)
!708 = !DILocation(line: 162, column: 25, scope: !559)
!709 = !DILocation(line: 162, column: 30, scope: !559)
!710 = !DILocation(line: 162, column: 2, scope: !559)
!711 = !DILocation(line: 163, column: 1, scope: !559)
!712 = !DILocation(line: 164, column: 21, scope: !559)
!713 = !DILocation(line: 164, column: 26, scope: !559)
!714 = !DILocation(line: 164, column: 2, scope: !559)
!715 = !DILocation(line: 165, column: 1, scope: !559)
!716 = !DILocation(line: 166, column: 8, scope: !559)
!717 = !DILocation(line: 166, column: 2, scope: !559)
!718 = !DILocation(line: 167, column: 1, scope: !559)
!719 = !DILocation(line: 168, column: 9, scope: !559)
!720 = !DILocation(line: 169, column: 1, scope: !559)
!721 = !DILocation(line: 168, column: 2, scope: !559)
!722 = distinct !DISubprogram(name: "ERR_PTR", scope: !723, file: !723, line: 39, type: !724, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!723 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!724 = !DISubroutineType(types: !725)
!725 = !{!164, !179}
!726 = !{!727}
!727 = !DILocalVariable(name: "error", arg: 1, scope: !722, file: !723, line: 39, type: !179)
!728 = !DILocation(line: 39, column: 48, scope: !722)
!729 = !DILocation(line: 41, column: 18, scope: !722)
!730 = !DILocation(line: 41, column: 9, scope: !722)
!731 = !DILocation(line: 41, column: 2, scope: !722)
!732 = distinct !DISubprogram(name: "kzalloc", scope: !154, file: !154, line: 719, type: !733, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!164, !463, !165}
!735 = !{!736, !737}
!736 = !DILocalVariable(name: "size", arg: 1, scope: !732, file: !154, line: 719, type: !463)
!737 = !DILocalVariable(name: "flags", arg: 2, scope: !732, file: !154, line: 719, type: !165)
!738 = !DILocation(line: 719, column: 52, scope: !732)
!739 = !DILocation(line: 719, column: 64, scope: !732)
!740 = !DILocation(line: 721, column: 17, scope: !732)
!741 = !DILocation(line: 721, column: 23, scope: !732)
!742 = !DILocation(line: 721, column: 29, scope: !732)
!743 = !DILocation(line: 721, column: 9, scope: !732)
!744 = !DILocation(line: 721, column: 2, scope: !732)
!745 = !DISubprogram(name: "asn1_ber_decoder", scope: !746, file: !746, line: 15, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DIFile(filename: "./include/linux/asn1_decoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed918e13853195ee36d649ad69ca85c")
!747 = !DISubroutineType(types: !748)
!748 = !{!589, !749, !164, !752, !463}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_decoder", file: !746, line: 13, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!754 = distinct !DISubprogram(name: "pkcs7_check_authattrs", scope: !3, file: !3, line: 86, type: !755, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!589, !356}
!757 = !{!758, !759, !760, !761}
!758 = !DILocalVariable(name: "msg", arg: 1, scope: !754, file: !3, line: 86, type: !356)
!759 = !DILocalVariable(name: "sinfo", scope: !754, file: !3, line: 88, type: !444)
!760 = !DILocalVariable(name: "want", scope: !754, file: !3, line: 89, type: !380)
!761 = !DILabel(scope: !754, name: "inconsistent", file: !3, line: 105)
!762 = !DILocation(line: 86, column: 56, scope: !754)
!763 = !DILocation(line: 88, column: 2, scope: !754)
!764 = !DILocation(line: 88, column: 28, scope: !754)
!765 = !DILocation(line: 89, column: 2, scope: !754)
!766 = !DILocation(line: 89, column: 7, scope: !754)
!767 = !DILocation(line: 91, column: 10, scope: !754)
!768 = !DILocation(line: 91, column: 15, scope: !754)
!769 = !DILocation(line: 91, column: 8, scope: !754)
!770 = !DILocation(line: 92, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !754, file: !3, line: 92, column: 6)
!772 = !DILocation(line: 92, column: 6, scope: !754)
!773 = !DILocation(line: 93, column: 3, scope: !771)
!774 = !DILocation(line: 95, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !754, file: !3, line: 95, column: 6)
!776 = !DILocation(line: 95, column: 13, scope: !775)
!777 = !DILocation(line: 95, column: 6, scope: !754)
!778 = !DILocation(line: 96, column: 8, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !3, line: 95, column: 24)
!780 = !DILocation(line: 97, column: 3, scope: !779)
!781 = !DILocation(line: 97, column: 8, scope: !779)
!782 = !DILocation(line: 97, column: 23, scope: !779)
!783 = !DILocation(line: 98, column: 2, scope: !779)
!784 = !DILocation(line: 100, column: 15, scope: !785)
!785 = distinct !DILexicalBlock(scope: !754, file: !3, line: 100, column: 2)
!786 = !DILocation(line: 100, column: 22, scope: !785)
!787 = !DILocation(line: 100, column: 13, scope: !785)
!788 = !DILocation(line: 100, column: 7, scope: !785)
!789 = !DILocation(line: 100, column: 28, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !3, line: 100, column: 2)
!791 = !DILocation(line: 100, column: 2, scope: !785)
!792 = !DILocation(line: 101, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 101, column: 7)
!794 = !DILocation(line: 101, column: 16, scope: !793)
!795 = !DILocation(line: 101, column: 8, scope: !793)
!796 = !DILocation(line: 101, column: 7, scope: !793)
!797 = !DILocation(line: 101, column: 29, scope: !793)
!798 = !{i8 0, i8 2}
!799 = !{}
!800 = !DILocation(line: 101, column: 26, scope: !793)
!801 = !DILocation(line: 101, column: 7, scope: !790)
!802 = !DILocation(line: 102, column: 4, scope: !793)
!803 = !DILocation(line: 100, column: 43, scope: !790)
!804 = !DILocation(line: 100, column: 50, scope: !790)
!805 = !DILocation(line: 100, column: 41, scope: !790)
!806 = !DILocation(line: 100, column: 2, scope: !790)
!807 = distinct !{!807, !791, !808, !498, !499}
!808 = !DILocation(line: 102, column: 9, scope: !785)
!809 = !DILocation(line: 103, column: 2, scope: !754)
!810 = !DILocation(line: 105, column: 1, scope: !754)
!811 = !DILocation(line: 106, column: 2, scope: !812)
!812 = distinct !DILexicalBlock(scope: !754, file: !3, line: 106, column: 2)
!813 = !DILocation(line: 106, column: 2, scope: !814)
!814 = distinct !DILexicalBlock(scope: !812, file: !3, line: 106, column: 2)
!815 = !DILocation(line: 107, column: 2, scope: !754)
!816 = !DILocation(line: 108, column: 1, scope: !754)
!817 = distinct !DISubprogram(name: "pkcs7_get_content_data", scope: !3, file: !3, line: 185, type: !818, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!818 = !DISubroutineType(types: !819)
!819 = !{!589, !820, !822, !823, !823}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!824 = !{!825, !826, !827, !828}
!825 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !817, file: !3, line: 185, type: !820)
!826 = !DILocalVariable(name: "_data", arg: 2, scope: !817, file: !3, line: 186, type: !822)
!827 = !DILocalVariable(name: "_data_len", arg: 3, scope: !817, file: !3, line: 186, type: !823)
!828 = !DILocalVariable(name: "_headerlen", arg: 4, scope: !817, file: !3, line: 187, type: !823)
!829 = !DILocation(line: 185, column: 56, scope: !817)
!830 = !DILocation(line: 186, column: 20, scope: !817)
!831 = !DILocation(line: 186, column: 35, scope: !817)
!832 = !DILocation(line: 187, column: 15, scope: !817)
!833 = !DILocation(line: 189, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !817, file: !3, line: 189, column: 6)
!835 = !DILocation(line: 189, column: 14, scope: !834)
!836 = !DILocation(line: 189, column: 6, scope: !817)
!837 = !DILocation(line: 190, column: 3, scope: !834)
!838 = !DILocation(line: 192, column: 11, scope: !817)
!839 = !DILocation(line: 192, column: 18, scope: !817)
!840 = !DILocation(line: 192, column: 3, scope: !817)
!841 = !DILocation(line: 192, column: 9, scope: !817)
!842 = !DILocation(line: 193, column: 15, scope: !817)
!843 = !DILocation(line: 193, column: 22, scope: !817)
!844 = !DILocation(line: 193, column: 3, scope: !817)
!845 = !DILocation(line: 193, column: 13, scope: !817)
!846 = !DILocation(line: 194, column: 6, scope: !847)
!847 = distinct !DILexicalBlock(scope: !817, file: !3, line: 194, column: 6)
!848 = !DILocation(line: 194, column: 6, scope: !817)
!849 = !DILocation(line: 195, column: 17, scope: !847)
!850 = !DILocation(line: 195, column: 24, scope: !847)
!851 = !DILocation(line: 195, column: 4, scope: !847)
!852 = !DILocation(line: 195, column: 15, scope: !847)
!853 = !DILocation(line: 195, column: 3, scope: !847)
!854 = !DILocation(line: 196, column: 2, scope: !817)
!855 = !DILocation(line: 197, column: 1, scope: !817)
!856 = distinct !DISubprogram(name: "pkcs7_note_OID", scope: !3, file: !3, line: 204, type: !857, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!589, !164, !463, !174, !423, !463}
!859 = !{!860, !861, !862, !863, !864, !865, !866}
!860 = !DILocalVariable(name: "context", arg: 1, scope: !856, file: !3, line: 204, type: !164)
!861 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !856, file: !3, line: 204, type: !463)
!862 = !DILocalVariable(name: "tag", arg: 3, scope: !856, file: !3, line: 205, type: !174)
!863 = !DILocalVariable(name: "value", arg: 4, scope: !856, file: !3, line: 206, type: !423)
!864 = !DILocalVariable(name: "vlen", arg: 5, scope: !856, file: !3, line: 206, type: !463)
!865 = !DILocalVariable(name: "ctx", scope: !856, file: !3, line: 208, type: !566)
!866 = !DILocalVariable(name: "buffer", scope: !867, file: !3, line: 212, type: !869)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 211, column: 32)
!868 = distinct !DILexicalBlock(scope: !856, file: !3, line: 211, column: 6)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 400, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 50)
!872 = !DILocation(line: 204, column: 26, scope: !856)
!873 = !DILocation(line: 204, column: 42, scope: !856)
!874 = !DILocation(line: 205, column: 20, scope: !856)
!875 = !DILocation(line: 206, column: 18, scope: !856)
!876 = !DILocation(line: 206, column: 32, scope: !856)
!877 = !DILocation(line: 208, column: 2, scope: !856)
!878 = !DILocation(line: 208, column: 30, scope: !856)
!879 = !DILocation(line: 208, column: 36, scope: !856)
!880 = !DILocation(line: 210, column: 30, scope: !856)
!881 = !DILocation(line: 210, column: 37, scope: !856)
!882 = !DILocation(line: 210, column: 18, scope: !856)
!883 = !DILocation(line: 210, column: 2, scope: !856)
!884 = !DILocation(line: 210, column: 7, scope: !856)
!885 = !DILocation(line: 210, column: 16, scope: !856)
!886 = !DILocation(line: 211, column: 6, scope: !868)
!887 = !DILocation(line: 211, column: 11, scope: !868)
!888 = !DILocation(line: 211, column: 20, scope: !868)
!889 = !DILocation(line: 211, column: 6, scope: !856)
!890 = !DILocation(line: 212, column: 3, scope: !867)
!891 = !DILocation(line: 212, column: 8, scope: !867)
!892 = !DILocation(line: 213, column: 14, scope: !867)
!893 = !DILocation(line: 213, column: 21, scope: !867)
!894 = !DILocation(line: 213, column: 27, scope: !867)
!895 = !DILocation(line: 213, column: 3, scope: !867)
!896 = !DILocation(line: 214, column: 3, scope: !897)
!897 = distinct !DILexicalBlock(scope: !867, file: !3, line: 214, column: 3)
!898 = !DILocation(line: 214, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !897, file: !3, line: 214, column: 3)
!900 = !DILocation(line: 216, column: 2, scope: !868)
!901 = !DILocation(line: 216, column: 2, scope: !867)
!902 = !DILocation(line: 218, column: 1, scope: !856)
!903 = !DILocation(line: 217, column: 2, scope: !856)
!904 = !DISubprogram(name: "look_up_OID", scope: !6, file: !6, line: 147, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!5, !423, !463}
!907 = !DISubprogram(name: "sprint_oid", scope: !6, file: !6, line: 149, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubroutineType(types: !909)
!909 = !{!589, !423, !463, !412, !463}
!910 = !DISubprogram(name: "_printk", scope: !911, file: !911, line: 153, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!912 = !DISubroutineType(types: !913)
!913 = !{!589, !383, null}
!914 = distinct !DISubprogram(name: "pkcs7_sig_note_digest_algo", scope: !3, file: !3, line: 223, type: !857, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !915)
!915 = !{!916, !917, !918, !919, !920, !921}
!916 = !DILocalVariable(name: "context", arg: 1, scope: !914, file: !3, line: 223, type: !164)
!917 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !914, file: !3, line: 223, type: !463)
!918 = !DILocalVariable(name: "tag", arg: 3, scope: !914, file: !3, line: 224, type: !174)
!919 = !DILocalVariable(name: "value", arg: 4, scope: !914, file: !3, line: 225, type: !423)
!920 = !DILocalVariable(name: "vlen", arg: 5, scope: !914, file: !3, line: 225, type: !463)
!921 = !DILocalVariable(name: "ctx", scope: !914, file: !3, line: 227, type: !566)
!922 = !DILocation(line: 223, column: 38, scope: !914)
!923 = !DILocation(line: 223, column: 54, scope: !914)
!924 = !DILocation(line: 224, column: 25, scope: !914)
!925 = !DILocation(line: 225, column: 23, scope: !914)
!926 = !DILocation(line: 225, column: 37, scope: !914)
!927 = !DILocation(line: 227, column: 2, scope: !914)
!928 = !DILocation(line: 227, column: 30, scope: !914)
!929 = !DILocation(line: 227, column: 36, scope: !914)
!930 = !DILocation(line: 229, column: 10, scope: !914)
!931 = !DILocation(line: 229, column: 15, scope: !914)
!932 = !DILocation(line: 229, column: 2, scope: !914)
!933 = !DILocation(line: 231, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !914, file: !3, line: 229, column: 25)
!935 = !DILocation(line: 231, column: 8, scope: !934)
!936 = !DILocation(line: 231, column: 15, scope: !934)
!937 = !DILocation(line: 231, column: 20, scope: !934)
!938 = !DILocation(line: 231, column: 30, scope: !934)
!939 = !DILocation(line: 232, column: 3, scope: !934)
!940 = !DILocation(line: 234, column: 3, scope: !934)
!941 = !DILocation(line: 234, column: 8, scope: !934)
!942 = !DILocation(line: 234, column: 15, scope: !934)
!943 = !DILocation(line: 234, column: 20, scope: !934)
!944 = !DILocation(line: 234, column: 30, scope: !934)
!945 = !DILocation(line: 235, column: 3, scope: !934)
!946 = !DILocation(line: 237, column: 3, scope: !934)
!947 = !DILocation(line: 237, column: 8, scope: !934)
!948 = !DILocation(line: 237, column: 15, scope: !934)
!949 = !DILocation(line: 237, column: 20, scope: !934)
!950 = !DILocation(line: 237, column: 30, scope: !934)
!951 = !DILocation(line: 238, column: 3, scope: !934)
!952 = !DILocation(line: 240, column: 3, scope: !934)
!953 = !DILocation(line: 240, column: 8, scope: !934)
!954 = !DILocation(line: 240, column: 15, scope: !934)
!955 = !DILocation(line: 240, column: 20, scope: !934)
!956 = !DILocation(line: 240, column: 30, scope: !934)
!957 = !DILocation(line: 241, column: 3, scope: !934)
!958 = !DILocation(line: 243, column: 3, scope: !934)
!959 = !DILocation(line: 243, column: 8, scope: !934)
!960 = !DILocation(line: 243, column: 15, scope: !934)
!961 = !DILocation(line: 243, column: 20, scope: !934)
!962 = !DILocation(line: 243, column: 30, scope: !934)
!963 = !DILocation(line: 244, column: 3, scope: !934)
!964 = !DILocation(line: 246, column: 3, scope: !934)
!965 = !DILocation(line: 246, column: 8, scope: !934)
!966 = !DILocation(line: 246, column: 15, scope: !934)
!967 = !DILocation(line: 246, column: 20, scope: !934)
!968 = !DILocation(line: 246, column: 30, scope: !934)
!969 = !DILocation(line: 247, column: 3, scope: !934)
!970 = !DILocation(line: 249, column: 3, scope: !934)
!971 = !DILocation(line: 249, column: 8, scope: !934)
!972 = !DILocation(line: 249, column: 15, scope: !934)
!973 = !DILocation(line: 249, column: 20, scope: !934)
!974 = !DILocation(line: 249, column: 30, scope: !934)
!975 = !DILocation(line: 250, column: 3, scope: !934)
!976 = !DILocation(line: 252, column: 3, scope: !934)
!977 = !DILocation(line: 252, column: 8, scope: !934)
!978 = !DILocation(line: 252, column: 15, scope: !934)
!979 = !DILocation(line: 252, column: 20, scope: !934)
!980 = !DILocation(line: 252, column: 30, scope: !934)
!981 = !DILocation(line: 253, column: 3, scope: !934)
!982 = !DILocation(line: 255, column: 3, scope: !934)
!983 = !DILocation(line: 255, column: 8, scope: !934)
!984 = !DILocation(line: 255, column: 15, scope: !934)
!985 = !DILocation(line: 255, column: 20, scope: !934)
!986 = !DILocation(line: 255, column: 30, scope: !934)
!987 = !DILocation(line: 256, column: 3, scope: !934)
!988 = !DILocation(line: 258, column: 3, scope: !934)
!989 = !DILocation(line: 258, column: 8, scope: !934)
!990 = !DILocation(line: 258, column: 15, scope: !934)
!991 = !DILocation(line: 258, column: 20, scope: !934)
!992 = !DILocation(line: 258, column: 30, scope: !934)
!993 = !DILocation(line: 259, column: 3, scope: !934)
!994 = !DILocation(line: 261, column: 3, scope: !995)
!995 = distinct !DILexicalBlock(scope: !934, file: !3, line: 261, column: 3)
!996 = !DILocation(line: 261, column: 3, scope: !997)
!997 = distinct !DILexicalBlock(scope: !995, file: !3, line: 261, column: 3)
!998 = !DILocation(line: 262, column: 3, scope: !934)
!999 = !DILocation(line: 264, column: 2, scope: !914)
!1000 = !DILocation(line: 265, column: 1, scope: !914)
!1001 = distinct !DISubprogram(name: "pkcs7_sig_note_pkey_algo", scope: !3, file: !3, line: 270, type: !857, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008}
!1003 = !DILocalVariable(name: "context", arg: 1, scope: !1001, file: !3, line: 270, type: !164)
!1004 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1001, file: !3, line: 270, type: !463)
!1005 = !DILocalVariable(name: "tag", arg: 3, scope: !1001, file: !3, line: 271, type: !174)
!1006 = !DILocalVariable(name: "value", arg: 4, scope: !1001, file: !3, line: 272, type: !423)
!1007 = !DILocalVariable(name: "vlen", arg: 5, scope: !1001, file: !3, line: 272, type: !463)
!1008 = !DILocalVariable(name: "ctx", scope: !1001, file: !3, line: 274, type: !566)
!1009 = !DILocation(line: 270, column: 36, scope: !1001)
!1010 = !DILocation(line: 270, column: 52, scope: !1001)
!1011 = !DILocation(line: 271, column: 23, scope: !1001)
!1012 = !DILocation(line: 272, column: 21, scope: !1001)
!1013 = !DILocation(line: 272, column: 35, scope: !1001)
!1014 = !DILocation(line: 274, column: 2, scope: !1001)
!1015 = !DILocation(line: 274, column: 30, scope: !1001)
!1016 = !DILocation(line: 274, column: 36, scope: !1001)
!1017 = !DILocation(line: 276, column: 10, scope: !1001)
!1018 = !DILocation(line: 276, column: 15, scope: !1001)
!1019 = !DILocation(line: 276, column: 2, scope: !1001)
!1020 = !DILocation(line: 278, column: 3, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 276, column: 25)
!1022 = !DILocation(line: 278, column: 8, scope: !1021)
!1023 = !DILocation(line: 278, column: 15, scope: !1021)
!1024 = !DILocation(line: 278, column: 20, scope: !1021)
!1025 = !DILocation(line: 278, column: 30, scope: !1021)
!1026 = !DILocation(line: 279, column: 3, scope: !1021)
!1027 = !DILocation(line: 279, column: 8, scope: !1021)
!1028 = !DILocation(line: 279, column: 15, scope: !1021)
!1029 = !DILocation(line: 279, column: 20, scope: !1021)
!1030 = !DILocation(line: 279, column: 29, scope: !1021)
!1031 = !DILocation(line: 280, column: 3, scope: !1021)
!1032 = !DILocation(line: 286, column: 3, scope: !1021)
!1033 = !DILocation(line: 286, column: 8, scope: !1021)
!1034 = !DILocation(line: 286, column: 15, scope: !1021)
!1035 = !DILocation(line: 286, column: 20, scope: !1021)
!1036 = !DILocation(line: 286, column: 30, scope: !1021)
!1037 = !DILocation(line: 287, column: 3, scope: !1021)
!1038 = !DILocation(line: 287, column: 8, scope: !1021)
!1039 = !DILocation(line: 287, column: 15, scope: !1021)
!1040 = !DILocation(line: 287, column: 20, scope: !1021)
!1041 = !DILocation(line: 287, column: 29, scope: !1021)
!1042 = !DILocation(line: 288, column: 3, scope: !1021)
!1043 = !DILocation(line: 290, column: 3, scope: !1021)
!1044 = !DILocation(line: 290, column: 8, scope: !1021)
!1045 = !DILocation(line: 290, column: 15, scope: !1021)
!1046 = !DILocation(line: 290, column: 20, scope: !1021)
!1047 = !DILocation(line: 290, column: 30, scope: !1021)
!1048 = !DILocation(line: 291, column: 3, scope: !1021)
!1049 = !DILocation(line: 291, column: 8, scope: !1021)
!1050 = !DILocation(line: 291, column: 15, scope: !1021)
!1051 = !DILocation(line: 291, column: 20, scope: !1021)
!1052 = !DILocation(line: 291, column: 29, scope: !1021)
!1053 = !DILocation(line: 292, column: 3, scope: !1021)
!1054 = !DILocation(line: 295, column: 3, scope: !1021)
!1055 = !DILocation(line: 295, column: 8, scope: !1021)
!1056 = !DILocation(line: 295, column: 15, scope: !1021)
!1057 = !DILocation(line: 295, column: 20, scope: !1021)
!1058 = !DILocation(line: 295, column: 30, scope: !1021)
!1059 = !DILocation(line: 296, column: 3, scope: !1021)
!1060 = !DILocation(line: 296, column: 8, scope: !1021)
!1061 = !DILocation(line: 296, column: 15, scope: !1021)
!1062 = !DILocation(line: 296, column: 20, scope: !1021)
!1063 = !DILocation(line: 296, column: 29, scope: !1021)
!1064 = !DILocation(line: 297, column: 3, scope: !1021)
!1065 = !DILocation(line: 299, column: 3, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 299, column: 3)
!1067 = !DILocation(line: 299, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 299, column: 3)
!1069 = !DILocation(line: 300, column: 3, scope: !1021)
!1070 = !DILocation(line: 302, column: 2, scope: !1001)
!1071 = !DILocation(line: 303, column: 1, scope: !1001)
!1072 = distinct !DISubprogram(name: "pkcs7_check_content_type", scope: !3, file: !3, line: 308, type: !857, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079}
!1074 = !DILocalVariable(name: "context", arg: 1, scope: !1072, file: !3, line: 308, type: !164)
!1075 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1072, file: !3, line: 308, type: !463)
!1076 = !DILocalVariable(name: "tag", arg: 3, scope: !1072, file: !3, line: 309, type: !174)
!1077 = !DILocalVariable(name: "value", arg: 4, scope: !1072, file: !3, line: 310, type: !423)
!1078 = !DILocalVariable(name: "vlen", arg: 5, scope: !1072, file: !3, line: 310, type: !463)
!1079 = !DILocalVariable(name: "ctx", scope: !1072, file: !3, line: 312, type: !566)
!1080 = !DILocation(line: 308, column: 36, scope: !1072)
!1081 = !DILocation(line: 308, column: 52, scope: !1072)
!1082 = !DILocation(line: 309, column: 23, scope: !1072)
!1083 = !DILocation(line: 310, column: 21, scope: !1072)
!1084 = !DILocation(line: 310, column: 35, scope: !1072)
!1085 = !DILocation(line: 312, column: 2, scope: !1072)
!1086 = !DILocation(line: 312, column: 30, scope: !1072)
!1087 = !DILocation(line: 312, column: 36, scope: !1072)
!1088 = !DILocation(line: 314, column: 6, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 314, column: 6)
!1090 = !DILocation(line: 314, column: 11, scope: !1089)
!1091 = !DILocation(line: 314, column: 20, scope: !1089)
!1092 = !DILocation(line: 314, column: 6, scope: !1072)
!1093 = !DILocation(line: 315, column: 3, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 315, column: 3)
!1095 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 314, column: 40)
!1096 = !DILocation(line: 315, column: 3, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 315, column: 3)
!1098 = !DILocation(line: 316, column: 3, scope: !1095)
!1099 = !DILocation(line: 319, column: 2, scope: !1072)
!1100 = !DILocation(line: 320, column: 1, scope: !1072)
!1101 = distinct !DISubprogram(name: "pkcs7_note_signeddata_version", scope: !3, file: !3, line: 325, type: !857, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1103 = !DILocalVariable(name: "context", arg: 1, scope: !1101, file: !3, line: 325, type: !164)
!1104 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1101, file: !3, line: 325, type: !463)
!1105 = !DILocalVariable(name: "tag", arg: 3, scope: !1101, file: !3, line: 326, type: !174)
!1106 = !DILocalVariable(name: "value", arg: 4, scope: !1101, file: !3, line: 327, type: !423)
!1107 = !DILocalVariable(name: "vlen", arg: 5, scope: !1101, file: !3, line: 327, type: !463)
!1108 = !DILocalVariable(name: "ctx", scope: !1101, file: !3, line: 329, type: !566)
!1109 = !DILocalVariable(name: "version", scope: !1101, file: !3, line: 330, type: !7)
!1110 = !DILabel(scope: !1101, name: "unsupported", file: !3, line: 351)
!1111 = !DILocation(line: 325, column: 41, scope: !1101)
!1112 = !DILocation(line: 325, column: 57, scope: !1101)
!1113 = !DILocation(line: 326, column: 21, scope: !1101)
!1114 = !DILocation(line: 327, column: 19, scope: !1101)
!1115 = !DILocation(line: 327, column: 33, scope: !1101)
!1116 = !DILocation(line: 329, column: 2, scope: !1101)
!1117 = !DILocation(line: 329, column: 30, scope: !1101)
!1118 = !DILocation(line: 329, column: 36, scope: !1101)
!1119 = !DILocation(line: 330, column: 2, scope: !1101)
!1120 = !DILocation(line: 330, column: 11, scope: !1101)
!1121 = !DILocation(line: 332, column: 6, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 332, column: 6)
!1123 = !DILocation(line: 332, column: 11, scope: !1122)
!1124 = !DILocation(line: 332, column: 6, scope: !1101)
!1125 = !DILocation(line: 333, column: 3, scope: !1122)
!1126 = !DILocation(line: 335, column: 45, scope: !1101)
!1127 = !DILocation(line: 335, column: 32, scope: !1101)
!1128 = !DILocation(line: 335, column: 30, scope: !1101)
!1129 = !DILocation(line: 335, column: 22, scope: !1101)
!1130 = !DILocation(line: 335, column: 2, scope: !1101)
!1131 = !DILocation(line: 335, column: 7, scope: !1101)
!1132 = !DILocation(line: 335, column: 12, scope: !1101)
!1133 = !DILocation(line: 335, column: 20, scope: !1101)
!1134 = !DILocation(line: 336, column: 10, scope: !1101)
!1135 = !DILocation(line: 336, column: 2, scope: !1101)
!1136 = !DILocation(line: 346, column: 3, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 336, column: 19)
!1138 = !DILocation(line: 349, column: 2, scope: !1101)
!1139 = !DILocation(line: 351, column: 1, scope: !1101)
!1140 = !DILocation(line: 352, column: 2, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 352, column: 2)
!1142 = !DILocation(line: 352, column: 2, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 352, column: 2)
!1144 = !DILocation(line: 353, column: 2, scope: !1101)
!1145 = !DILocation(line: 354, column: 1, scope: !1101)
!1146 = distinct !DISubprogram(name: "pkcs7_note_signerinfo_version", scope: !3, file: !3, line: 359, type: !857, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1148 = !DILocalVariable(name: "context", arg: 1, scope: !1146, file: !3, line: 359, type: !164)
!1149 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1146, file: !3, line: 359, type: !463)
!1150 = !DILocalVariable(name: "tag", arg: 3, scope: !1146, file: !3, line: 360, type: !174)
!1151 = !DILocalVariable(name: "value", arg: 4, scope: !1146, file: !3, line: 361, type: !423)
!1152 = !DILocalVariable(name: "vlen", arg: 5, scope: !1146, file: !3, line: 361, type: !463)
!1153 = !DILocalVariable(name: "ctx", scope: !1146, file: !3, line: 363, type: !566)
!1154 = !DILocalVariable(name: "version", scope: !1146, file: !3, line: 364, type: !7)
!1155 = !DILabel(scope: !1146, name: "unsupported", file: !3, line: 391)
!1156 = !DILabel(scope: !1146, name: "version_mismatch", file: !3, line: 394)
!1157 = !DILocation(line: 359, column: 41, scope: !1146)
!1158 = !DILocation(line: 359, column: 57, scope: !1146)
!1159 = !DILocation(line: 360, column: 21, scope: !1146)
!1160 = !DILocation(line: 361, column: 19, scope: !1146)
!1161 = !DILocation(line: 361, column: 33, scope: !1146)
!1162 = !DILocation(line: 363, column: 2, scope: !1146)
!1163 = !DILocation(line: 363, column: 30, scope: !1146)
!1164 = !DILocation(line: 363, column: 36, scope: !1146)
!1165 = !DILocation(line: 364, column: 2, scope: !1146)
!1166 = !DILocation(line: 364, column: 11, scope: !1146)
!1167 = !DILocation(line: 366, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 366, column: 6)
!1169 = !DILocation(line: 366, column: 11, scope: !1168)
!1170 = !DILocation(line: 366, column: 6, scope: !1146)
!1171 = !DILocation(line: 367, column: 3, scope: !1168)
!1172 = !DILocation(line: 369, column: 25, scope: !1146)
!1173 = !DILocation(line: 369, column: 12, scope: !1146)
!1174 = !DILocation(line: 369, column: 10, scope: !1146)
!1175 = !DILocation(line: 370, column: 10, scope: !1146)
!1176 = !DILocation(line: 370, column: 2, scope: !1146)
!1177 = !DILocation(line: 375, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 375, column: 7)
!1179 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 370, column: 19)
!1180 = !DILocation(line: 375, column: 12, scope: !1178)
!1181 = !DILocation(line: 375, column: 17, scope: !1178)
!1182 = !DILocation(line: 375, column: 25, scope: !1178)
!1183 = !DILocation(line: 375, column: 7, scope: !1179)
!1184 = !DILocation(line: 376, column: 4, scope: !1178)
!1185 = !DILocation(line: 377, column: 3, scope: !1179)
!1186 = !DILocation(line: 377, column: 8, scope: !1179)
!1187 = !DILocation(line: 377, column: 20, scope: !1179)
!1188 = !DILocation(line: 378, column: 3, scope: !1179)
!1189 = !DILocation(line: 381, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 381, column: 7)
!1191 = !DILocation(line: 381, column: 12, scope: !1190)
!1192 = !DILocation(line: 381, column: 17, scope: !1190)
!1193 = !DILocation(line: 381, column: 25, scope: !1190)
!1194 = !DILocation(line: 381, column: 7, scope: !1179)
!1195 = !DILocation(line: 382, column: 4, scope: !1190)
!1196 = !DILocation(line: 383, column: 3, scope: !1179)
!1197 = !DILocation(line: 383, column: 8, scope: !1179)
!1198 = !DILocation(line: 383, column: 20, scope: !1179)
!1199 = !DILocation(line: 384, column: 3, scope: !1179)
!1200 = !DILocation(line: 386, column: 3, scope: !1179)
!1201 = !DILocation(line: 389, column: 2, scope: !1146)
!1202 = !DILocation(line: 391, column: 1, scope: !1146)
!1203 = !DILocation(line: 392, column: 2, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 392, column: 2)
!1205 = !DILocation(line: 392, column: 2, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 392, column: 2)
!1207 = !DILocation(line: 393, column: 2, scope: !1146)
!1208 = !DILocation(line: 394, column: 1, scope: !1146)
!1209 = !DILocation(line: 395, column: 2, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 395, column: 2)
!1211 = !DILocation(line: 395, column: 2, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 395, column: 2)
!1213 = !DILocation(line: 396, column: 2, scope: !1146)
!1214 = !DILocation(line: 397, column: 1, scope: !1146)
!1215 = distinct !DISubprogram(name: "pkcs7_extract_cert", scope: !3, file: !3, line: 402, type: !857, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223}
!1217 = !DILocalVariable(name: "context", arg: 1, scope: !1215, file: !3, line: 402, type: !164)
!1218 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1215, file: !3, line: 402, type: !463)
!1219 = !DILocalVariable(name: "tag", arg: 3, scope: !1215, file: !3, line: 403, type: !174)
!1220 = !DILocalVariable(name: "value", arg: 4, scope: !1215, file: !3, line: 404, type: !423)
!1221 = !DILocalVariable(name: "vlen", arg: 5, scope: !1215, file: !3, line: 404, type: !463)
!1222 = !DILocalVariable(name: "ctx", scope: !1215, file: !3, line: 406, type: !566)
!1223 = !DILocalVariable(name: "x509", scope: !1215, file: !3, line: 407, type: !361)
!1224 = !DILocation(line: 402, column: 30, scope: !1215)
!1225 = !DILocation(line: 402, column: 46, scope: !1215)
!1226 = !DILocation(line: 403, column: 24, scope: !1215)
!1227 = !DILocation(line: 404, column: 22, scope: !1215)
!1228 = !DILocation(line: 404, column: 36, scope: !1215)
!1229 = !DILocation(line: 406, column: 2, scope: !1215)
!1230 = !DILocation(line: 406, column: 30, scope: !1215)
!1231 = !DILocation(line: 406, column: 36, scope: !1215)
!1232 = !DILocation(line: 407, column: 2, scope: !1215)
!1233 = !DILocation(line: 407, column: 27, scope: !1215)
!1234 = !DILocation(line: 409, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 409, column: 6)
!1236 = !DILocation(line: 409, column: 10, scope: !1235)
!1237 = !DILocation(line: 409, column: 6, scope: !1215)
!1238 = !DILocation(line: 410, column: 3, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 410, column: 3)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 410, column: 3)
!1241 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 409, column: 60)
!1242 = !DILocation(line: 410, column: 3, scope: !1240)
!1243 = !DILocation(line: 412, column: 3, scope: !1241)
!1244 = !DILocation(line: 420, column: 11, scope: !1215)
!1245 = !DILocation(line: 420, column: 8, scope: !1215)
!1246 = !DILocation(line: 421, column: 10, scope: !1215)
!1247 = !DILocation(line: 421, column: 7, scope: !1215)
!1248 = !DILocation(line: 423, column: 12, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 423, column: 6)
!1250 = !DILocation(line: 423, column: 6, scope: !1249)
!1251 = !DILocation(line: 423, column: 22, scope: !1249)
!1252 = !DILocation(line: 423, column: 6, scope: !1215)
!1253 = !DILocation(line: 424, column: 8, scope: !1249)
!1254 = !DILocation(line: 424, column: 3, scope: !1249)
!1255 = !DILocation(line: 426, column: 25, scope: !1215)
!1256 = !DILocation(line: 426, column: 32, scope: !1215)
!1257 = !DILocation(line: 426, column: 9, scope: !1215)
!1258 = !DILocation(line: 426, column: 7, scope: !1215)
!1259 = !DILocation(line: 427, column: 13, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 427, column: 6)
!1261 = !DILocation(line: 427, column: 6, scope: !1260)
!1262 = !DILocation(line: 427, column: 6, scope: !1215)
!1263 = !DILocation(line: 428, column: 18, scope: !1260)
!1264 = !DILocation(line: 428, column: 10, scope: !1260)
!1265 = !DILocation(line: 428, column: 3, scope: !1260)
!1266 = !DILocation(line: 430, column: 18, scope: !1215)
!1267 = !DILocation(line: 430, column: 23, scope: !1215)
!1268 = !DILocation(line: 430, column: 16, scope: !1215)
!1269 = !DILocation(line: 430, column: 2, scope: !1215)
!1270 = !DILocation(line: 430, column: 8, scope: !1215)
!1271 = !DILocation(line: 430, column: 14, scope: !1215)
!1272 = !DILocation(line: 431, column: 2, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 431, column: 2)
!1274 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 431, column: 2)
!1275 = !DILocation(line: 431, column: 2, scope: !1274)
!1276 = !DILocation(line: 432, column: 2, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 432, column: 2)
!1278 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 432, column: 2)
!1279 = !DILocation(line: 432, column: 2, scope: !1278)
!1280 = !DILocation(line: 434, column: 18, scope: !1215)
!1281 = !DILocation(line: 434, column: 3, scope: !1215)
!1282 = !DILocation(line: 434, column: 8, scope: !1215)
!1283 = !DILocation(line: 434, column: 16, scope: !1215)
!1284 = !DILocation(line: 435, column: 18, scope: !1215)
!1285 = !DILocation(line: 435, column: 24, scope: !1215)
!1286 = !DILocation(line: 435, column: 2, scope: !1215)
!1287 = !DILocation(line: 435, column: 7, scope: !1215)
!1288 = !DILocation(line: 435, column: 15, scope: !1215)
!1289 = !DILocation(line: 436, column: 2, scope: !1215)
!1290 = !DILocation(line: 437, column: 1, scope: !1215)
!1291 = !DISubprogram(name: "x509_cert_parse", scope: !363, file: !363, line: 47, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!361, !423, !463}
!1294 = distinct !DISubprogram(name: "IS_ERR", scope: !723, file: !723, line: 59, type: !1295, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!380, !423}
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "ptr", arg: 1, scope: !1294, file: !723, line: 59, type: !423)
!1299 = !DILocation(line: 59, column: 60, scope: !1294)
!1300 = !DILocation(line: 61, column: 9, scope: !1294)
!1301 = !DILocation(line: 61, column: 2, scope: !1294)
!1302 = distinct !DISubprogram(name: "PTR_ERR", scope: !723, file: !723, line: 49, type: !1303, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!179, !423}
!1305 = !{!1306}
!1306 = !DILocalVariable(name: "ptr", arg: 1, scope: !1302, file: !723, line: 49, type: !423)
!1307 = !DILocation(line: 49, column: 61, scope: !1302)
!1308 = !DILocation(line: 51, column: 16, scope: !1302)
!1309 = !DILocation(line: 51, column: 9, scope: !1302)
!1310 = !DILocation(line: 51, column: 2, scope: !1302)
!1311 = distinct !DISubprogram(name: "pkcs7_note_certificate_list", scope: !3, file: !3, line: 442, type: !857, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318}
!1313 = !DILocalVariable(name: "context", arg: 1, scope: !1311, file: !3, line: 442, type: !164)
!1314 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1311, file: !3, line: 442, type: !463)
!1315 = !DILocalVariable(name: "tag", arg: 3, scope: !1311, file: !3, line: 443, type: !174)
!1316 = !DILocalVariable(name: "value", arg: 4, scope: !1311, file: !3, line: 444, type: !423)
!1317 = !DILocalVariable(name: "vlen", arg: 5, scope: !1311, file: !3, line: 444, type: !463)
!1318 = !DILocalVariable(name: "ctx", scope: !1311, file: !3, line: 446, type: !566)
!1319 = !DILocation(line: 442, column: 39, scope: !1311)
!1320 = !DILocation(line: 442, column: 55, scope: !1311)
!1321 = !DILocation(line: 443, column: 19, scope: !1311)
!1322 = !DILocation(line: 444, column: 17, scope: !1311)
!1323 = !DILocation(line: 444, column: 31, scope: !1311)
!1324 = !DILocation(line: 446, column: 2, scope: !1311)
!1325 = !DILocation(line: 446, column: 30, scope: !1311)
!1326 = !DILocation(line: 446, column: 36, scope: !1311)
!1327 = !DILocation(line: 448, column: 2, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 448, column: 2)
!1329 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 448, column: 2)
!1330 = !DILocation(line: 448, column: 2, scope: !1329)
!1331 = !DILocation(line: 450, column: 18, scope: !1311)
!1332 = !DILocation(line: 450, column: 23, scope: !1311)
!1333 = !DILocation(line: 450, column: 28, scope: !1311)
!1334 = !DILocation(line: 450, column: 3, scope: !1311)
!1335 = !DILocation(line: 450, column: 8, scope: !1311)
!1336 = !DILocation(line: 450, column: 16, scope: !1311)
!1337 = !DILocation(line: 451, column: 20, scope: !1311)
!1338 = !DILocation(line: 451, column: 25, scope: !1311)
!1339 = !DILocation(line: 451, column: 2, scope: !1311)
!1340 = !DILocation(line: 451, column: 7, scope: !1311)
!1341 = !DILocation(line: 451, column: 12, scope: !1311)
!1342 = !DILocation(line: 451, column: 18, scope: !1311)
!1343 = !DILocation(line: 452, column: 2, scope: !1311)
!1344 = !DILocation(line: 452, column: 7, scope: !1311)
!1345 = !DILocation(line: 452, column: 13, scope: !1311)
!1346 = !DILocation(line: 453, column: 18, scope: !1311)
!1347 = !DILocation(line: 453, column: 23, scope: !1311)
!1348 = !DILocation(line: 453, column: 2, scope: !1311)
!1349 = !DILocation(line: 453, column: 7, scope: !1311)
!1350 = !DILocation(line: 453, column: 15, scope: !1311)
!1351 = !DILocation(line: 455, column: 1, scope: !1311)
!1352 = !DILocation(line: 454, column: 2, scope: !1311)
!1353 = distinct !DISubprogram(name: "pkcs7_note_content", scope: !3, file: !3, line: 460, type: !857, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360}
!1355 = !DILocalVariable(name: "context", arg: 1, scope: !1353, file: !3, line: 460, type: !164)
!1356 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1353, file: !3, line: 460, type: !463)
!1357 = !DILocalVariable(name: "tag", arg: 3, scope: !1353, file: !3, line: 461, type: !174)
!1358 = !DILocalVariable(name: "value", arg: 4, scope: !1353, file: !3, line: 462, type: !423)
!1359 = !DILocalVariable(name: "vlen", arg: 5, scope: !1353, file: !3, line: 462, type: !463)
!1360 = !DILocalVariable(name: "ctx", scope: !1353, file: !3, line: 464, type: !566)
!1361 = !DILocation(line: 460, column: 30, scope: !1353)
!1362 = !DILocation(line: 460, column: 46, scope: !1353)
!1363 = !DILocation(line: 461, column: 24, scope: !1353)
!1364 = !DILocation(line: 462, column: 22, scope: !1353)
!1365 = !DILocation(line: 462, column: 36, scope: !1353)
!1366 = !DILocation(line: 464, column: 2, scope: !1353)
!1367 = !DILocation(line: 464, column: 30, scope: !1353)
!1368 = !DILocation(line: 464, column: 36, scope: !1353)
!1369 = !DILocation(line: 466, column: 6, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 466, column: 6)
!1371 = !DILocation(line: 466, column: 11, scope: !1370)
!1372 = !DILocation(line: 466, column: 20, scope: !1370)
!1373 = !DILocation(line: 466, column: 32, scope: !1370)
!1374 = !DILocation(line: 467, column: 6, scope: !1370)
!1375 = !DILocation(line: 467, column: 11, scope: !1370)
!1376 = !DILocation(line: 467, column: 20, scope: !1370)
!1377 = !DILocation(line: 466, column: 6, scope: !1353)
!1378 = !DILocation(line: 468, column: 3, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 468, column: 3)
!1380 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 467, column: 43)
!1381 = !DILocation(line: 468, column: 3, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 468, column: 3)
!1383 = !DILocation(line: 469, column: 3, scope: !1380)
!1384 = !DILocation(line: 472, column: 24, scope: !1353)
!1385 = !DILocation(line: 472, column: 29, scope: !1353)
!1386 = !DILocation(line: 472, column: 2, scope: !1353)
!1387 = !DILocation(line: 472, column: 7, scope: !1353)
!1388 = !DILocation(line: 472, column: 12, scope: !1353)
!1389 = !DILocation(line: 472, column: 22, scope: !1353)
!1390 = !DILocation(line: 473, column: 2, scope: !1353)
!1391 = !DILocation(line: 474, column: 1, scope: !1353)
!1392 = distinct !DISubprogram(name: "pkcs7_note_data", scope: !3, file: !3, line: 480, type: !857, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399}
!1394 = !DILocalVariable(name: "context", arg: 1, scope: !1392, file: !3, line: 480, type: !164)
!1395 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1392, file: !3, line: 480, type: !463)
!1396 = !DILocalVariable(name: "tag", arg: 3, scope: !1392, file: !3, line: 481, type: !174)
!1397 = !DILocalVariable(name: "value", arg: 4, scope: !1392, file: !3, line: 482, type: !423)
!1398 = !DILocalVariable(name: "vlen", arg: 5, scope: !1392, file: !3, line: 482, type: !463)
!1399 = !DILocalVariable(name: "ctx", scope: !1392, file: !3, line: 484, type: !566)
!1400 = !DILocation(line: 480, column: 27, scope: !1392)
!1401 = !DILocation(line: 480, column: 43, scope: !1392)
!1402 = !DILocation(line: 481, column: 21, scope: !1392)
!1403 = !DILocation(line: 482, column: 19, scope: !1392)
!1404 = !DILocation(line: 482, column: 33, scope: !1392)
!1405 = !DILocation(line: 484, column: 2, scope: !1392)
!1406 = !DILocation(line: 484, column: 30, scope: !1392)
!1407 = !DILocation(line: 484, column: 36, scope: !1392)
!1408 = !DILocation(line: 486, column: 2, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 486, column: 2)
!1410 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 486, column: 2)
!1411 = !DILocation(line: 486, column: 2, scope: !1410)
!1412 = !DILocation(line: 488, column: 19, scope: !1392)
!1413 = !DILocation(line: 488, column: 2, scope: !1392)
!1414 = !DILocation(line: 488, column: 7, scope: !1392)
!1415 = !DILocation(line: 488, column: 12, scope: !1392)
!1416 = !DILocation(line: 488, column: 17, scope: !1392)
!1417 = !DILocation(line: 489, column: 23, scope: !1392)
!1418 = !DILocation(line: 489, column: 2, scope: !1392)
!1419 = !DILocation(line: 489, column: 7, scope: !1392)
!1420 = !DILocation(line: 489, column: 12, scope: !1392)
!1421 = !DILocation(line: 489, column: 21, scope: !1392)
!1422 = !DILocation(line: 490, column: 26, scope: !1392)
!1423 = !DILocation(line: 490, column: 2, scope: !1392)
!1424 = !DILocation(line: 490, column: 7, scope: !1392)
!1425 = !DILocation(line: 490, column: 12, scope: !1392)
!1426 = !DILocation(line: 490, column: 24, scope: !1392)
!1427 = !DILocation(line: 492, column: 1, scope: !1392)
!1428 = !DILocation(line: 491, column: 2, scope: !1392)
!1429 = distinct !DISubprogram(name: "pkcs7_sig_note_authenticated_attr", scope: !3, file: !3, line: 497, type: !857, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1441}
!1431 = !DILocalVariable(name: "context", arg: 1, scope: !1429, file: !3, line: 497, type: !164)
!1432 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1429, file: !3, line: 497, type: !463)
!1433 = !DILocalVariable(name: "tag", arg: 3, scope: !1429, file: !3, line: 498, type: !174)
!1434 = !DILocalVariable(name: "value", arg: 4, scope: !1429, file: !3, line: 499, type: !423)
!1435 = !DILocalVariable(name: "vlen", arg: 5, scope: !1429, file: !3, line: 499, type: !463)
!1436 = !DILocalVariable(name: "ctx", scope: !1429, file: !3, line: 501, type: !566)
!1437 = !DILocalVariable(name: "sinfo", scope: !1429, file: !3, line: 502, type: !444)
!1438 = !DILocalVariable(name: "content_type", scope: !1429, file: !3, line: 503, type: !5)
!1439 = !DILabel(scope: !1440, name: "authenticode_check", file: !3, line: 560)
!1440 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 507, column: 25)
!1441 = !DILabel(scope: !1429, name: "repeated", file: !3, line: 571)
!1442 = !DILocation(line: 497, column: 45, scope: !1429)
!1443 = !DILocation(line: 497, column: 61, scope: !1429)
!1444 = !DILocation(line: 498, column: 25, scope: !1429)
!1445 = !DILocation(line: 499, column: 23, scope: !1429)
!1446 = !DILocation(line: 499, column: 37, scope: !1429)
!1447 = !DILocation(line: 501, column: 2, scope: !1429)
!1448 = !DILocation(line: 501, column: 30, scope: !1429)
!1449 = !DILocation(line: 501, column: 36, scope: !1429)
!1450 = !DILocation(line: 502, column: 2, scope: !1429)
!1451 = !DILocation(line: 502, column: 28, scope: !1429)
!1452 = !DILocation(line: 502, column: 36, scope: !1429)
!1453 = !DILocation(line: 502, column: 41, scope: !1429)
!1454 = !DILocation(line: 503, column: 2, scope: !1429)
!1455 = !DILocation(line: 503, column: 11, scope: !1429)
!1456 = !DILocation(line: 505, column: 2, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 505, column: 2)
!1458 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 505, column: 2)
!1459 = !DILocation(line: 505, column: 2, scope: !1458)
!1460 = !DILocation(line: 507, column: 10, scope: !1429)
!1461 = !DILocation(line: 507, column: 15, scope: !1429)
!1462 = !DILocation(line: 507, column: 2, scope: !1429)
!1463 = !DILocation(line: 509, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 509, column: 7)
!1465 = !DILocation(line: 509, column: 7, scope: !1440)
!1466 = !DILocation(line: 510, column: 4, scope: !1464)
!1467 = !DILocation(line: 511, column: 30, scope: !1440)
!1468 = !DILocation(line: 511, column: 37, scope: !1440)
!1469 = !DILocation(line: 511, column: 18, scope: !1440)
!1470 = !DILocation(line: 511, column: 16, scope: !1440)
!1471 = !DILocation(line: 512, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 512, column: 7)
!1473 = !DILocation(line: 512, column: 23, scope: !1472)
!1474 = !DILocation(line: 512, column: 28, scope: !1472)
!1475 = !DILocation(line: 512, column: 33, scope: !1472)
!1476 = !DILocation(line: 512, column: 20, scope: !1472)
!1477 = !DILocation(line: 512, column: 7, scope: !1440)
!1478 = !DILocation(line: 513, column: 4, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 513, column: 4)
!1480 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 512, column: 44)
!1481 = !DILocation(line: 513, column: 4, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 513, column: 4)
!1483 = !DILocation(line: 516, column: 4, scope: !1480)
!1484 = !DILocation(line: 518, column: 3, scope: !1440)
!1485 = !DILocation(line: 521, column: 7, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 521, column: 7)
!1487 = !DILocation(line: 521, column: 7, scope: !1440)
!1488 = !DILocation(line: 522, column: 4, scope: !1486)
!1489 = !DILocation(line: 526, column: 28, scope: !1440)
!1490 = !DILocation(line: 526, column: 35, scope: !1440)
!1491 = !DILocation(line: 527, column: 6, scope: !1440)
!1492 = !DILocation(line: 527, column: 14, scope: !1440)
!1493 = !DILocation(line: 527, column: 19, scope: !1440)
!1494 = !DILocation(line: 527, column: 26, scope: !1440)
!1495 = !DILocation(line: 526, column: 10, scope: !1440)
!1496 = !DILocation(line: 526, column: 3, scope: !1440)
!1497 = !DILocation(line: 530, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 530, column: 7)
!1499 = !DILocation(line: 530, column: 7, scope: !1440)
!1500 = !DILocation(line: 531, column: 4, scope: !1498)
!1501 = !DILocation(line: 532, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 532, column: 7)
!1503 = !DILocation(line: 532, column: 11, scope: !1502)
!1504 = !DILocation(line: 532, column: 7, scope: !1440)
!1505 = !DILocation(line: 533, column: 4, scope: !1502)
!1506 = !DILocation(line: 534, column: 22, scope: !1440)
!1507 = !DILocation(line: 534, column: 3, scope: !1440)
!1508 = !DILocation(line: 534, column: 10, scope: !1440)
!1509 = !DILocation(line: 534, column: 20, scope: !1440)
!1510 = !DILocation(line: 535, column: 26, scope: !1440)
!1511 = !DILocation(line: 535, column: 3, scope: !1440)
!1512 = !DILocation(line: 535, column: 10, scope: !1440)
!1513 = !DILocation(line: 535, column: 24, scope: !1440)
!1514 = !DILocation(line: 536, column: 3, scope: !1440)
!1515 = !DILocation(line: 539, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 539, column: 7)
!1517 = !DILocation(line: 539, column: 7, scope: !1440)
!1518 = !DILocation(line: 540, column: 4, scope: !1516)
!1519 = !DILocation(line: 541, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 541, column: 7)
!1521 = !DILocation(line: 541, column: 12, scope: !1520)
!1522 = !DILocation(line: 541, column: 17, scope: !1520)
!1523 = !DILocation(line: 541, column: 27, scope: !1520)
!1524 = !DILocation(line: 541, column: 7, scope: !1440)
!1525 = !DILocation(line: 542, column: 4, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 542, column: 4)
!1527 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 541, column: 50)
!1528 = !DILocation(line: 542, column: 4, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 542, column: 4)
!1530 = !DILocation(line: 543, column: 4, scope: !1527)
!1531 = !DILocation(line: 545, column: 3, scope: !1440)
!1532 = !DILocation(line: 554, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 554, column: 7)
!1534 = !DILocation(line: 554, column: 7, scope: !1440)
!1535 = !DILocation(line: 555, column: 4, scope: !1533)
!1536 = !DILocation(line: 556, column: 3, scope: !1440)
!1537 = !DILocation(line: 558, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 558, column: 7)
!1539 = !DILocation(line: 558, column: 7, scope: !1440)
!1540 = !DILocation(line: 559, column: 4, scope: !1538)
!1541 = !DILocation(line: 560, column: 2, scope: !1440)
!1542 = !DILocation(line: 561, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 561, column: 7)
!1544 = !DILocation(line: 561, column: 12, scope: !1543)
!1545 = !DILocation(line: 561, column: 17, scope: !1543)
!1546 = !DILocation(line: 561, column: 27, scope: !1543)
!1547 = !DILocation(line: 561, column: 7, scope: !1440)
!1548 = !DILocation(line: 562, column: 4, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 562, column: 4)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 561, column: 50)
!1551 = !DILocation(line: 562, column: 4, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 562, column: 4)
!1553 = !DILocation(line: 563, column: 4, scope: !1550)
!1554 = !DILocation(line: 566, column: 3, scope: !1440)
!1555 = !DILocation(line: 568, column: 3, scope: !1440)
!1556 = !DILocation(line: 571, column: 1, scope: !1429)
!1557 = !DILocation(line: 573, column: 2, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 573, column: 2)
!1559 = !DILocation(line: 573, column: 2, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 573, column: 2)
!1561 = !DILocation(line: 574, column: 2, scope: !1429)
!1562 = !DILocation(line: 575, column: 1, scope: !1429)
!1563 = distinct !DISubprogram(name: "generic___test_and_set_bit", scope: !1564, file: !1564, line: 73, type: !1565, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1569)
!1564 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!380, !167, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !167)
!1569 = !{!1570, !1571, !1572, !1573, !1574}
!1570 = !DILocalVariable(name: "nr", arg: 1, scope: !1563, file: !1564, line: 73, type: !167)
!1571 = !DILocalVariable(name: "addr", arg: 2, scope: !1563, file: !1564, line: 73, type: !1567)
!1572 = !DILocalVariable(name: "mask", scope: !1563, file: !1564, line: 75, type: !167)
!1573 = !DILocalVariable(name: "p", scope: !1563, file: !1564, line: 76, type: !180)
!1574 = !DILocalVariable(name: "old", scope: !1563, file: !1564, line: 77, type: !167)
!1575 = !DILocation(line: 73, column: 42, scope: !1563)
!1576 = !DILocation(line: 73, column: 70, scope: !1563)
!1577 = !DILocation(line: 75, column: 2, scope: !1563)
!1578 = !DILocation(line: 75, column: 16, scope: !1563)
!1579 = !DILocation(line: 75, column: 23, scope: !1563)
!1580 = !DILocation(line: 76, column: 2, scope: !1563)
!1581 = !DILocation(line: 76, column: 17, scope: !1563)
!1582 = !DILocation(line: 76, column: 39, scope: !1563)
!1583 = !DILocation(line: 76, column: 47, scope: !1563)
!1584 = !DILocation(line: 76, column: 45, scope: !1563)
!1585 = !DILocation(line: 77, column: 2, scope: !1563)
!1586 = !DILocation(line: 77, column: 16, scope: !1563)
!1587 = !DILocation(line: 77, column: 23, scope: !1563)
!1588 = !DILocation(line: 77, column: 22, scope: !1563)
!1589 = !DILocation(line: 79, column: 7, scope: !1563)
!1590 = !DILocation(line: 79, column: 13, scope: !1563)
!1591 = !DILocation(line: 79, column: 11, scope: !1563)
!1592 = !DILocation(line: 79, column: 3, scope: !1563)
!1593 = !DILocation(line: 79, column: 5, scope: !1563)
!1594 = !DILocation(line: 80, column: 10, scope: !1563)
!1595 = !DILocation(line: 80, column: 16, scope: !1563)
!1596 = !DILocation(line: 80, column: 14, scope: !1563)
!1597 = !DILocation(line: 80, column: 22, scope: !1563)
!1598 = !DILocation(line: 81, column: 1, scope: !1563)
!1599 = !DILocation(line: 80, column: 2, scope: !1563)
!1600 = distinct !DISubprogram(name: "___test_and_set_bit", scope: !1601, file: !1601, line: 97, type: !1565, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1602)
!1601 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1602 = !{!1603, !1604}
!1603 = !DILocalVariable(name: "nr", arg: 1, scope: !1600, file: !1601, line: 97, type: !167)
!1604 = !DILocalVariable(name: "addr", arg: 2, scope: !1600, file: !1601, line: 97, type: !1567)
!1605 = !DILocation(line: 97, column: 35, scope: !1600)
!1606 = !DILocation(line: 97, column: 63, scope: !1600)
!1607 = !DILocation(line: 99, column: 32, scope: !1600)
!1608 = !DILocation(line: 99, column: 36, scope: !1600)
!1609 = !DILocation(line: 99, column: 2, scope: !1600)
!1610 = !DILocation(line: 100, column: 33, scope: !1600)
!1611 = !DILocation(line: 100, column: 37, scope: !1600)
!1612 = !DILocation(line: 100, column: 9, scope: !1600)
!1613 = !DILocation(line: 100, column: 2, scope: !1600)
!1614 = !DISubprogram(name: "x509_decode_time", scope: !363, file: !363, line: 48, type: !1615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!589, !1617, !463, !174, !752, !463}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1618 = distinct !DISubprogram(name: "pkcs7_sig_note_set_of_authattrs", scope: !3, file: !3, line: 580, type: !857, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1620 = !DILocalVariable(name: "context", arg: 1, scope: !1618, file: !3, line: 580, type: !164)
!1621 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1618, file: !3, line: 580, type: !463)
!1622 = !DILocalVariable(name: "tag", arg: 3, scope: !1618, file: !3, line: 581, type: !174)
!1623 = !DILocalVariable(name: "value", arg: 4, scope: !1618, file: !3, line: 582, type: !423)
!1624 = !DILocalVariable(name: "vlen", arg: 5, scope: !1618, file: !3, line: 582, type: !463)
!1625 = !DILocalVariable(name: "ctx", scope: !1618, file: !3, line: 584, type: !566)
!1626 = !DILocalVariable(name: "sinfo", scope: !1618, file: !3, line: 585, type: !444)
!1627 = !DILocation(line: 580, column: 43, scope: !1618)
!1628 = !DILocation(line: 580, column: 59, scope: !1618)
!1629 = !DILocation(line: 581, column: 23, scope: !1618)
!1630 = !DILocation(line: 582, column: 21, scope: !1618)
!1631 = !DILocation(line: 582, column: 35, scope: !1618)
!1632 = !DILocation(line: 584, column: 2, scope: !1618)
!1633 = !DILocation(line: 584, column: 30, scope: !1618)
!1634 = !DILocation(line: 584, column: 36, scope: !1618)
!1635 = !DILocation(line: 585, column: 2, scope: !1618)
!1636 = !DILocation(line: 585, column: 28, scope: !1618)
!1637 = !DILocation(line: 585, column: 36, scope: !1618)
!1638 = !DILocation(line: 585, column: 41, scope: !1618)
!1639 = !DILocation(line: 587, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 587, column: 6)
!1641 = !DILocation(line: 587, column: 56, scope: !1640)
!1642 = !DILocation(line: 588, column: 7, scope: !1640)
!1643 = !DILocation(line: 587, column: 6, scope: !1618)
!1644 = !DILocation(line: 589, column: 3, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 589, column: 3)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 588, column: 59)
!1647 = !DILocation(line: 589, column: 3, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 589, column: 3)
!1649 = !DILocation(line: 590, column: 3, scope: !1646)
!1650 = !DILocation(line: 593, column: 6, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 593, column: 6)
!1652 = !DILocation(line: 593, column: 11, scope: !1651)
!1653 = !DILocation(line: 593, column: 16, scope: !1651)
!1654 = !DILocation(line: 593, column: 26, scope: !1651)
!1655 = !DILocation(line: 593, column: 48, scope: !1651)
!1656 = !DILocation(line: 594, column: 6, scope: !1651)
!1657 = !DILocation(line: 593, column: 6, scope: !1618)
!1658 = !DILocation(line: 595, column: 3, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 595, column: 3)
!1660 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 594, column: 56)
!1661 = !DILocation(line: 595, column: 3, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 595, column: 3)
!1663 = !DILocation(line: 596, column: 3, scope: !1660)
!1664 = !DILocation(line: 600, column: 21, scope: !1618)
!1665 = !DILocation(line: 600, column: 30, scope: !1618)
!1666 = !DILocation(line: 600, column: 37, scope: !1618)
!1667 = !DILocation(line: 600, column: 27, scope: !1618)
!1668 = !DILocation(line: 600, column: 2, scope: !1618)
!1669 = !DILocation(line: 600, column: 9, scope: !1618)
!1670 = !DILocation(line: 600, column: 19, scope: !1618)
!1671 = !DILocation(line: 601, column: 25, scope: !1618)
!1672 = !DILocation(line: 601, column: 33, scope: !1618)
!1673 = !DILocation(line: 601, column: 40, scope: !1618)
!1674 = !DILocation(line: 601, column: 30, scope: !1618)
!1675 = !DILocation(line: 601, column: 2, scope: !1618)
!1676 = !DILocation(line: 601, column: 9, scope: !1618)
!1677 = !DILocation(line: 601, column: 23, scope: !1618)
!1678 = !DILocation(line: 602, column: 2, scope: !1618)
!1679 = !DILocation(line: 603, column: 1, scope: !1618)
!1680 = distinct !DISubprogram(name: "const_test_bit", scope: !1564, file: !1564, line: 166, type: !1681, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1685)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!380, !167, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1685 = !{!1686, !1687, !1688, !1689, !1690}
!1686 = !DILocalVariable(name: "nr", arg: 1, scope: !1680, file: !1564, line: 166, type: !167)
!1687 = !DILocalVariable(name: "addr", arg: 2, scope: !1680, file: !1564, line: 166, type: !1683)
!1688 = !DILocalVariable(name: "p", scope: !1680, file: !1564, line: 168, type: !177)
!1689 = !DILocalVariable(name: "mask", scope: !1680, file: !1564, line: 169, type: !167)
!1690 = !DILocalVariable(name: "val", scope: !1680, file: !1564, line: 170, type: !167)
!1691 = !DILocation(line: 166, column: 30, scope: !1680)
!1692 = !DILocation(line: 166, column: 64, scope: !1680)
!1693 = !DILocation(line: 168, column: 2, scope: !1680)
!1694 = !DILocation(line: 168, column: 23, scope: !1680)
!1695 = !DILocation(line: 168, column: 50, scope: !1680)
!1696 = !DILocation(line: 168, column: 57, scope: !1680)
!1697 = !DILocation(line: 168, column: 55, scope: !1680)
!1698 = !DILocation(line: 169, column: 2, scope: !1680)
!1699 = !DILocation(line: 169, column: 16, scope: !1680)
!1700 = !DILocation(line: 169, column: 23, scope: !1680)
!1701 = !DILocation(line: 170, column: 2, scope: !1680)
!1702 = !DILocation(line: 170, column: 16, scope: !1680)
!1703 = !DILocation(line: 170, column: 23, scope: !1680)
!1704 = !DILocation(line: 170, column: 22, scope: !1680)
!1705 = !DILocation(line: 172, column: 12, scope: !1680)
!1706 = !DILocation(line: 172, column: 18, scope: !1680)
!1707 = !DILocation(line: 172, column: 16, scope: !1680)
!1708 = !DILocation(line: 172, column: 10, scope: !1680)
!1709 = !DILocation(line: 172, column: 9, scope: !1680)
!1710 = !DILocation(line: 173, column: 1, scope: !1680)
!1711 = !DILocation(line: 172, column: 2, scope: !1680)
!1712 = distinct !DISubprogram(name: "_test_bit", scope: !1601, file: !1601, line: 139, type: !1681, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1713)
!1713 = !{!1714, !1715}
!1714 = !DILocalVariable(name: "nr", arg: 1, scope: !1712, file: !1601, line: 139, type: !167)
!1715 = !DILocalVariable(name: "addr", arg: 2, scope: !1712, file: !1601, line: 139, type: !1683)
!1716 = !DILocation(line: 139, column: 25, scope: !1712)
!1717 = !DILocation(line: 139, column: 59, scope: !1712)
!1718 = !DILocation(line: 141, column: 25, scope: !1712)
!1719 = !DILocation(line: 141, column: 32, scope: !1712)
!1720 = !DILocation(line: 141, column: 30, scope: !1712)
!1721 = !DILocation(line: 141, column: 2, scope: !1712)
!1722 = !DILocation(line: 142, column: 23, scope: !1712)
!1723 = !DILocation(line: 142, column: 27, scope: !1712)
!1724 = !DILocation(line: 142, column: 9, scope: !1712)
!1725 = !DILocation(line: 142, column: 2, scope: !1712)
!1726 = distinct !DISubprogram(name: "pkcs7_sig_note_serial", scope: !3, file: !3, line: 608, type: !857, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1727)
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733}
!1728 = !DILocalVariable(name: "context", arg: 1, scope: !1726, file: !3, line: 608, type: !164)
!1729 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1726, file: !3, line: 608, type: !463)
!1730 = !DILocalVariable(name: "tag", arg: 3, scope: !1726, file: !3, line: 609, type: !174)
!1731 = !DILocalVariable(name: "value", arg: 4, scope: !1726, file: !3, line: 610, type: !423)
!1732 = !DILocalVariable(name: "vlen", arg: 5, scope: !1726, file: !3, line: 610, type: !463)
!1733 = !DILocalVariable(name: "ctx", scope: !1726, file: !3, line: 612, type: !566)
!1734 = !DILocation(line: 608, column: 33, scope: !1726)
!1735 = !DILocation(line: 608, column: 49, scope: !1726)
!1736 = !DILocation(line: 609, column: 20, scope: !1726)
!1737 = !DILocation(line: 610, column: 18, scope: !1726)
!1738 = !DILocation(line: 610, column: 32, scope: !1726)
!1739 = !DILocation(line: 612, column: 2, scope: !1726)
!1740 = !DILocation(line: 612, column: 30, scope: !1726)
!1741 = !DILocation(line: 612, column: 36, scope: !1726)
!1742 = !DILocation(line: 613, column: 20, scope: !1726)
!1743 = !DILocation(line: 613, column: 2, scope: !1726)
!1744 = !DILocation(line: 613, column: 7, scope: !1726)
!1745 = !DILocation(line: 613, column: 18, scope: !1726)
!1746 = !DILocation(line: 614, column: 25, scope: !1726)
!1747 = !DILocation(line: 614, column: 2, scope: !1726)
!1748 = !DILocation(line: 614, column: 7, scope: !1726)
!1749 = !DILocation(line: 614, column: 23, scope: !1726)
!1750 = !DILocation(line: 616, column: 1, scope: !1726)
!1751 = !DILocation(line: 615, column: 2, scope: !1726)
!1752 = distinct !DISubprogram(name: "pkcs7_sig_note_issuer", scope: !3, file: !3, line: 621, type: !857, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759}
!1754 = !DILocalVariable(name: "context", arg: 1, scope: !1752, file: !3, line: 621, type: !164)
!1755 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1752, file: !3, line: 621, type: !463)
!1756 = !DILocalVariable(name: "tag", arg: 3, scope: !1752, file: !3, line: 622, type: !174)
!1757 = !DILocalVariable(name: "value", arg: 4, scope: !1752, file: !3, line: 623, type: !423)
!1758 = !DILocalVariable(name: "vlen", arg: 5, scope: !1752, file: !3, line: 623, type: !463)
!1759 = !DILocalVariable(name: "ctx", scope: !1752, file: !3, line: 625, type: !566)
!1760 = !DILocation(line: 621, column: 33, scope: !1752)
!1761 = !DILocation(line: 621, column: 49, scope: !1752)
!1762 = !DILocation(line: 622, column: 20, scope: !1752)
!1763 = !DILocation(line: 623, column: 18, scope: !1752)
!1764 = !DILocation(line: 623, column: 32, scope: !1752)
!1765 = !DILocation(line: 625, column: 2, scope: !1752)
!1766 = !DILocation(line: 625, column: 30, scope: !1752)
!1767 = !DILocation(line: 625, column: 36, scope: !1752)
!1768 = !DILocation(line: 626, column: 20, scope: !1752)
!1769 = !DILocation(line: 626, column: 2, scope: !1752)
!1770 = !DILocation(line: 626, column: 7, scope: !1752)
!1771 = !DILocation(line: 626, column: 18, scope: !1752)
!1772 = !DILocation(line: 627, column: 25, scope: !1752)
!1773 = !DILocation(line: 627, column: 2, scope: !1752)
!1774 = !DILocation(line: 627, column: 7, scope: !1752)
!1775 = !DILocation(line: 627, column: 23, scope: !1752)
!1776 = !DILocation(line: 629, column: 1, scope: !1752)
!1777 = !DILocation(line: 628, column: 2, scope: !1752)
!1778 = distinct !DISubprogram(name: "pkcs7_sig_note_skid", scope: !3, file: !3, line: 634, type: !857, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1779)
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785}
!1780 = !DILocalVariable(name: "context", arg: 1, scope: !1778, file: !3, line: 634, type: !164)
!1781 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1778, file: !3, line: 634, type: !463)
!1782 = !DILocalVariable(name: "tag", arg: 3, scope: !1778, file: !3, line: 635, type: !174)
!1783 = !DILocalVariable(name: "value", arg: 4, scope: !1778, file: !3, line: 636, type: !423)
!1784 = !DILocalVariable(name: "vlen", arg: 5, scope: !1778, file: !3, line: 636, type: !463)
!1785 = !DILocalVariable(name: "ctx", scope: !1778, file: !3, line: 638, type: !566)
!1786 = !DILocation(line: 634, column: 31, scope: !1778)
!1787 = !DILocation(line: 634, column: 47, scope: !1778)
!1788 = !DILocation(line: 635, column: 18, scope: !1778)
!1789 = !DILocation(line: 636, column: 16, scope: !1778)
!1790 = !DILocation(line: 636, column: 30, scope: !1778)
!1791 = !DILocation(line: 638, column: 2, scope: !1778)
!1792 = !DILocation(line: 638, column: 30, scope: !1778)
!1793 = !DILocation(line: 638, column: 36, scope: !1778)
!1794 = !DILocation(line: 640, column: 2, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 640, column: 2)
!1796 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 640, column: 2)
!1797 = !DILocation(line: 640, column: 2, scope: !1796)
!1798 = !DILocation(line: 642, column: 18, scope: !1778)
!1799 = !DILocation(line: 642, column: 2, scope: !1778)
!1800 = !DILocation(line: 642, column: 7, scope: !1778)
!1801 = !DILocation(line: 642, column: 16, scope: !1778)
!1802 = !DILocation(line: 643, column: 23, scope: !1778)
!1803 = !DILocation(line: 643, column: 2, scope: !1778)
!1804 = !DILocation(line: 643, column: 7, scope: !1778)
!1805 = !DILocation(line: 643, column: 21, scope: !1778)
!1806 = !DILocation(line: 645, column: 1, scope: !1778)
!1807 = !DILocation(line: 644, column: 2, scope: !1778)
!1808 = distinct !DISubprogram(name: "pkcs7_sig_note_signature", scope: !3, file: !3, line: 650, type: !857, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1809)
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815}
!1810 = !DILocalVariable(name: "context", arg: 1, scope: !1808, file: !3, line: 650, type: !164)
!1811 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1808, file: !3, line: 650, type: !463)
!1812 = !DILocalVariable(name: "tag", arg: 3, scope: !1808, file: !3, line: 651, type: !174)
!1813 = !DILocalVariable(name: "value", arg: 4, scope: !1808, file: !3, line: 652, type: !423)
!1814 = !DILocalVariable(name: "vlen", arg: 5, scope: !1808, file: !3, line: 652, type: !463)
!1815 = !DILocalVariable(name: "ctx", scope: !1808, file: !3, line: 654, type: !566)
!1816 = !DILocation(line: 650, column: 36, scope: !1808)
!1817 = !DILocation(line: 650, column: 52, scope: !1808)
!1818 = !DILocation(line: 651, column: 23, scope: !1808)
!1819 = !DILocation(line: 652, column: 21, scope: !1808)
!1820 = !DILocation(line: 652, column: 35, scope: !1808)
!1821 = !DILocation(line: 654, column: 2, scope: !1808)
!1822 = !DILocation(line: 654, column: 30, scope: !1808)
!1823 = !DILocation(line: 654, column: 36, scope: !1808)
!1824 = !DILocation(line: 656, column: 31, scope: !1808)
!1825 = !DILocation(line: 656, column: 38, scope: !1808)
!1826 = !DILocation(line: 656, column: 23, scope: !1808)
!1827 = !DILocation(line: 656, column: 2, scope: !1808)
!1828 = !DILocation(line: 656, column: 7, scope: !1808)
!1829 = !DILocation(line: 656, column: 14, scope: !1808)
!1830 = !DILocation(line: 656, column: 19, scope: !1808)
!1831 = !DILocation(line: 656, column: 21, scope: !1808)
!1832 = !DILocation(line: 657, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 657, column: 6)
!1834 = !DILocation(line: 657, column: 12, scope: !1833)
!1835 = !DILocation(line: 657, column: 19, scope: !1833)
!1836 = !DILocation(line: 657, column: 24, scope: !1833)
!1837 = !DILocation(line: 657, column: 6, scope: !1808)
!1838 = !DILocation(line: 658, column: 3, scope: !1833)
!1839 = !DILocation(line: 660, column: 28, scope: !1808)
!1840 = !DILocation(line: 660, column: 2, scope: !1808)
!1841 = !DILocation(line: 660, column: 7, scope: !1808)
!1842 = !DILocation(line: 660, column: 14, scope: !1808)
!1843 = !DILocation(line: 660, column: 19, scope: !1808)
!1844 = !DILocation(line: 660, column: 26, scope: !1808)
!1845 = !DILocation(line: 661, column: 2, scope: !1808)
!1846 = !DILocation(line: 662, column: 1, scope: !1808)
!1847 = !DISubprogram(name: "kmemdup", scope: !1848, file: !1848, line: 219, type: !1849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1848 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!164, !423, !463, !165}
!1851 = distinct !DISubprogram(name: "pkcs7_note_signed_info", scope: !3, file: !3, line: 667, type: !857, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1852)
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1853 = !DILocalVariable(name: "context", arg: 1, scope: !1851, file: !3, line: 667, type: !164)
!1854 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !1851, file: !3, line: 667, type: !463)
!1855 = !DILocalVariable(name: "tag", arg: 3, scope: !1851, file: !3, line: 668, type: !174)
!1856 = !DILocalVariable(name: "value", arg: 4, scope: !1851, file: !3, line: 669, type: !423)
!1857 = !DILocalVariable(name: "vlen", arg: 5, scope: !1851, file: !3, line: 669, type: !463)
!1858 = !DILocalVariable(name: "ctx", scope: !1851, file: !3, line: 671, type: !566)
!1859 = !DILocalVariable(name: "sinfo", scope: !1851, file: !3, line: 672, type: !444)
!1860 = !DILocalVariable(name: "kid", scope: !1851, file: !3, line: 673, type: !392)
!1861 = !DILocation(line: 667, column: 34, scope: !1851)
!1862 = !DILocation(line: 667, column: 50, scope: !1851)
!1863 = !DILocation(line: 668, column: 21, scope: !1851)
!1864 = !DILocation(line: 669, column: 19, scope: !1851)
!1865 = !DILocation(line: 669, column: 33, scope: !1851)
!1866 = !DILocation(line: 671, column: 2, scope: !1851)
!1867 = !DILocation(line: 671, column: 30, scope: !1851)
!1868 = !DILocation(line: 671, column: 36, scope: !1851)
!1869 = !DILocation(line: 672, column: 2, scope: !1851)
!1870 = !DILocation(line: 672, column: 28, scope: !1851)
!1871 = !DILocation(line: 672, column: 36, scope: !1851)
!1872 = !DILocation(line: 672, column: 41, scope: !1851)
!1873 = !DILocation(line: 673, column: 2, scope: !1851)
!1874 = !DILocation(line: 673, column: 28, scope: !1851)
!1875 = !DILocation(line: 675, column: 6, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 675, column: 6)
!1877 = !DILocation(line: 675, column: 11, scope: !1876)
!1878 = !DILocation(line: 675, column: 16, scope: !1876)
!1879 = !DILocation(line: 675, column: 26, scope: !1876)
!1880 = !DILocation(line: 675, column: 48, scope: !1876)
!1881 = !DILocation(line: 675, column: 52, scope: !1876)
!1882 = !DILocation(line: 675, column: 59, scope: !1876)
!1883 = !DILocation(line: 675, column: 6, scope: !1851)
!1884 = !DILocation(line: 676, column: 3, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 676, column: 3)
!1886 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 675, column: 70)
!1887 = !DILocation(line: 676, column: 3, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 676, column: 3)
!1889 = !DILocation(line: 677, column: 3, scope: !1886)
!1890 = !DILocation(line: 681, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 681, column: 6)
!1892 = !DILocation(line: 681, column: 12, scope: !1891)
!1893 = !DILocation(line: 681, column: 6, scope: !1851)
!1894 = !DILocation(line: 682, column: 36, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 681, column: 25)
!1896 = !DILocation(line: 682, column: 41, scope: !1895)
!1897 = !DILocation(line: 683, column: 8, scope: !1895)
!1898 = !DILocation(line: 683, column: 13, scope: !1895)
!1899 = !DILocation(line: 684, column: 8, scope: !1895)
!1900 = !DILocation(line: 684, column: 13, scope: !1895)
!1901 = !DILocation(line: 685, column: 8, scope: !1895)
!1902 = !DILocation(line: 685, column: 13, scope: !1895)
!1903 = !DILocation(line: 682, column: 9, scope: !1895)
!1904 = !DILocation(line: 682, column: 7, scope: !1895)
!1905 = !DILocation(line: 686, column: 2, scope: !1895)
!1906 = !DILocation(line: 687, column: 36, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 686, column: 9)
!1908 = !DILocation(line: 687, column: 41, scope: !1907)
!1909 = !DILocation(line: 688, column: 8, scope: !1907)
!1910 = !DILocation(line: 688, column: 13, scope: !1907)
!1911 = !DILocation(line: 687, column: 9, scope: !1907)
!1912 = !DILocation(line: 687, column: 7, scope: !1907)
!1913 = !DILocation(line: 691, column: 13, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 691, column: 6)
!1915 = !DILocation(line: 691, column: 6, scope: !1914)
!1916 = !DILocation(line: 691, column: 6, scope: !1851)
!1917 = !DILocation(line: 692, column: 18, scope: !1914)
!1918 = !DILocation(line: 692, column: 10, scope: !1914)
!1919 = !DILocation(line: 692, column: 3, scope: !1914)
!1920 = !DILocation(line: 694, column: 2, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 694, column: 2)
!1922 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 694, column: 2)
!1923 = !DILocation(line: 694, column: 2, scope: !1922)
!1924 = !DILocation(line: 696, column: 28, scope: !1851)
!1925 = !DILocation(line: 696, column: 2, scope: !1851)
!1926 = !DILocation(line: 696, column: 9, scope: !1851)
!1927 = !DILocation(line: 696, column: 14, scope: !1851)
!1928 = !DILocation(line: 696, column: 26, scope: !1851)
!1929 = !DILocation(line: 697, column: 19, scope: !1851)
!1930 = !DILocation(line: 697, column: 24, scope: !1851)
!1931 = !DILocation(line: 697, column: 17, scope: !1851)
!1932 = !DILocation(line: 697, column: 2, scope: !1851)
!1933 = !DILocation(line: 697, column: 9, scope: !1851)
!1934 = !DILocation(line: 697, column: 15, scope: !1851)
!1935 = !DILocation(line: 698, column: 18, scope: !1851)
!1936 = !DILocation(line: 698, column: 3, scope: !1851)
!1937 = !DILocation(line: 698, column: 8, scope: !1851)
!1938 = !DILocation(line: 698, column: 16, scope: !1851)
!1939 = !DILocation(line: 699, column: 18, scope: !1851)
!1940 = !DILocation(line: 699, column: 25, scope: !1851)
!1941 = !DILocation(line: 699, column: 2, scope: !1851)
!1942 = !DILocation(line: 699, column: 7, scope: !1851)
!1943 = !DILocation(line: 699, column: 15, scope: !1851)
!1944 = !DILocation(line: 700, column: 15, scope: !1851)
!1945 = !DILocation(line: 700, column: 2, scope: !1851)
!1946 = !DILocation(line: 700, column: 7, scope: !1851)
!1947 = !DILocation(line: 700, column: 13, scope: !1851)
!1948 = !DILocation(line: 701, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 701, column: 6)
!1950 = !DILocation(line: 701, column: 12, scope: !1949)
!1951 = !DILocation(line: 701, column: 6, scope: !1851)
!1952 = !DILocation(line: 702, column: 3, scope: !1949)
!1953 = !DILocation(line: 703, column: 20, scope: !1851)
!1954 = !DILocation(line: 703, column: 2, scope: !1851)
!1955 = !DILocation(line: 703, column: 7, scope: !1851)
!1956 = !DILocation(line: 703, column: 14, scope: !1851)
!1957 = !DILocation(line: 703, column: 18, scope: !1851)
!1958 = !DILocation(line: 705, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 705, column: 6)
!1960 = !DILocation(line: 705, column: 12, scope: !1959)
!1961 = !DILocation(line: 705, column: 19, scope: !1959)
!1962 = !DILocation(line: 705, column: 6, scope: !1851)
!1963 = !DILocation(line: 706, column: 3, scope: !1959)
!1964 = !DILocation(line: 707, column: 2, scope: !1851)
!1965 = !DILocation(line: 708, column: 1, scope: !1851)
!1966 = !DISubprogram(name: "asymmetric_key_generate_id", scope: !394, file: !394, line: 65, type: !1967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!392, !423, !463, !423, !463}
!1969 = !DISubprogram(name: "public_key_signature_free", scope: !370, file: !370, line: 53, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !387}
!1972 = distinct !DISubprogram(name: "kmalloc", scope: !154, file: !154, line: 591, type: !733, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DILocalVariable(name: "size", arg: 1, scope: !1972, file: !154, line: 591, type: !463)
!1975 = !DILocalVariable(name: "flags", arg: 2, scope: !1972, file: !154, line: 591, type: !165)
!1976 = !DILocalVariable(name: "index", scope: !1977, file: !154, line: 594, type: !7)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !154, line: 593, column: 42)
!1978 = distinct !DILexicalBlock(scope: !1972, file: !154, line: 593, column: 6)
!1979 = !DILocation(line: 591, column: 61, scope: !1972)
!1980 = !DILocation(line: 591, column: 73, scope: !1972)
!1981 = !DILocation(line: 593, column: 27, scope: !1978)
!1982 = !DILocation(line: 593, column: 6, scope: !1978)
!1983 = !DILocation(line: 593, column: 33, scope: !1978)
!1984 = !DILocation(line: 593, column: 36, scope: !1978)
!1985 = !DILocation(line: 593, column: 6, scope: !1972)
!1986 = !DILocation(line: 594, column: 3, scope: !1977)
!1987 = !DILocation(line: 594, column: 16, scope: !1977)
!1988 = !DILocation(line: 596, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1977, file: !154, line: 596, column: 7)
!1990 = !DILocation(line: 596, column: 12, scope: !1989)
!1991 = !DILocation(line: 596, column: 7, scope: !1977)
!1992 = !DILocation(line: 597, column: 25, scope: !1989)
!1993 = !DILocation(line: 597, column: 31, scope: !1989)
!1994 = !DILocation(line: 597, column: 11, scope: !1989)
!1995 = !DILocation(line: 597, column: 4, scope: !1989)
!1996 = !DILocation(line: 599, column: 11, scope: !1977)
!1997 = !DILocation(line: 599, column: 9, scope: !1977)
!1998 = !DILocation(line: 601, column: 33, scope: !1977)
!1999 = !DILocation(line: 601, column: 40, scope: !1977)
!2000 = !DILocation(line: 601, column: 20, scope: !1977)
!2001 = !DILocation(line: 601, column: 5, scope: !1977)
!2002 = !DILocation(line: 601, column: 51, scope: !1977)
!2003 = !DILocation(line: 602, column: 5, scope: !1977)
!2004 = !DILocation(line: 602, column: 12, scope: !1977)
!2005 = !DILocation(line: 600, column: 10, scope: !1977)
!2006 = !DILocation(line: 600, column: 3, scope: !1977)
!2007 = !DILocation(line: 603, column: 2, scope: !1978)
!2008 = !DILocation(line: 604, column: 19, scope: !1972)
!2009 = !DILocation(line: 604, column: 25, scope: !1972)
!2010 = !DILocation(line: 604, column: 9, scope: !1972)
!2011 = !DILocation(line: 604, column: 2, scope: !1972)
!2012 = !DILocation(line: 605, column: 1, scope: !1972)
!2013 = !DISubprogram(name: "kmalloc_large", scope: !154, file: !154, line: 531, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2014 = distinct !DISubprogram(name: "__kmalloc_index", scope: !154, file: !154, line: 444, type: !2015, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!7, !463, !380}
!2017 = !{!2018, !2019}
!2018 = !DILocalVariable(name: "size", arg: 1, scope: !2014, file: !154, line: 444, type: !463)
!2019 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2014, file: !154, line: 445, type: !380)
!2020 = !DILocation(line: 444, column: 60, scope: !2014)
!2021 = !DILocation(line: 445, column: 16, scope: !2014)
!2022 = !DILocation(line: 447, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 447, column: 6)
!2024 = !DILocation(line: 447, column: 6, scope: !2014)
!2025 = !DILocation(line: 448, column: 3, scope: !2023)
!2026 = !DILocation(line: 450, column: 6, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 450, column: 6)
!2028 = !DILocation(line: 450, column: 11, scope: !2027)
!2029 = !DILocation(line: 450, column: 6, scope: !2014)
!2030 = !DILocation(line: 451, column: 3, scope: !2027)
!2031 = !DILocation(line: 453, column: 32, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 453, column: 6)
!2033 = !DILocation(line: 453, column: 37, scope: !2032)
!2034 = !DILocation(line: 453, column: 42, scope: !2032)
!2035 = !DILocation(line: 453, column: 45, scope: !2032)
!2036 = !DILocation(line: 453, column: 50, scope: !2032)
!2037 = !DILocation(line: 453, column: 6, scope: !2014)
!2038 = !DILocation(line: 454, column: 3, scope: !2032)
!2039 = !DILocation(line: 455, column: 32, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 455, column: 6)
!2041 = !DILocation(line: 455, column: 37, scope: !2040)
!2042 = !DILocation(line: 455, column: 43, scope: !2040)
!2043 = !DILocation(line: 455, column: 46, scope: !2040)
!2044 = !DILocation(line: 455, column: 51, scope: !2040)
!2045 = !DILocation(line: 455, column: 6, scope: !2014)
!2046 = !DILocation(line: 456, column: 3, scope: !2040)
!2047 = !DILocation(line: 457, column: 6, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 457, column: 6)
!2049 = !DILocation(line: 457, column: 11, scope: !2048)
!2050 = !DILocation(line: 457, column: 6, scope: !2014)
!2051 = !DILocation(line: 457, column: 26, scope: !2048)
!2052 = !DILocation(line: 458, column: 6, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 458, column: 6)
!2054 = !DILocation(line: 458, column: 11, scope: !2053)
!2055 = !DILocation(line: 458, column: 6, scope: !2014)
!2056 = !DILocation(line: 458, column: 26, scope: !2053)
!2057 = !DILocation(line: 459, column: 6, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 459, column: 6)
!2059 = !DILocation(line: 459, column: 11, scope: !2058)
!2060 = !DILocation(line: 459, column: 6, scope: !2014)
!2061 = !DILocation(line: 459, column: 26, scope: !2058)
!2062 = !DILocation(line: 460, column: 6, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 460, column: 6)
!2064 = !DILocation(line: 460, column: 11, scope: !2063)
!2065 = !DILocation(line: 460, column: 6, scope: !2014)
!2066 = !DILocation(line: 460, column: 26, scope: !2063)
!2067 = !DILocation(line: 461, column: 6, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 461, column: 6)
!2069 = !DILocation(line: 461, column: 11, scope: !2068)
!2070 = !DILocation(line: 461, column: 6, scope: !2014)
!2071 = !DILocation(line: 461, column: 26, scope: !2068)
!2072 = !DILocation(line: 462, column: 6, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 462, column: 6)
!2074 = !DILocation(line: 462, column: 11, scope: !2073)
!2075 = !DILocation(line: 462, column: 6, scope: !2014)
!2076 = !DILocation(line: 462, column: 26, scope: !2073)
!2077 = !DILocation(line: 463, column: 6, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 463, column: 6)
!2079 = !DILocation(line: 463, column: 11, scope: !2078)
!2080 = !DILocation(line: 463, column: 6, scope: !2014)
!2081 = !DILocation(line: 463, column: 26, scope: !2078)
!2082 = !DILocation(line: 464, column: 6, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 464, column: 6)
!2084 = !DILocation(line: 464, column: 11, scope: !2083)
!2085 = !DILocation(line: 464, column: 6, scope: !2014)
!2086 = !DILocation(line: 464, column: 26, scope: !2083)
!2087 = !DILocation(line: 465, column: 6, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 465, column: 6)
!2089 = !DILocation(line: 465, column: 11, scope: !2088)
!2090 = !DILocation(line: 465, column: 6, scope: !2014)
!2091 = !DILocation(line: 465, column: 26, scope: !2088)
!2092 = !DILocation(line: 466, column: 6, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 466, column: 6)
!2094 = !DILocation(line: 466, column: 11, scope: !2093)
!2095 = !DILocation(line: 466, column: 6, scope: !2014)
!2096 = !DILocation(line: 466, column: 26, scope: !2093)
!2097 = !DILocation(line: 467, column: 6, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 467, column: 6)
!2099 = !DILocation(line: 467, column: 11, scope: !2098)
!2100 = !DILocation(line: 467, column: 6, scope: !2014)
!2101 = !DILocation(line: 467, column: 26, scope: !2098)
!2102 = !DILocation(line: 468, column: 6, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 468, column: 6)
!2104 = !DILocation(line: 468, column: 11, scope: !2103)
!2105 = !DILocation(line: 468, column: 6, scope: !2014)
!2106 = !DILocation(line: 468, column: 26, scope: !2103)
!2107 = !DILocation(line: 469, column: 6, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 469, column: 6)
!2109 = !DILocation(line: 469, column: 11, scope: !2108)
!2110 = !DILocation(line: 469, column: 6, scope: !2014)
!2111 = !DILocation(line: 469, column: 26, scope: !2108)
!2112 = !DILocation(line: 470, column: 6, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 470, column: 6)
!2114 = !DILocation(line: 470, column: 11, scope: !2113)
!2115 = !DILocation(line: 470, column: 6, scope: !2014)
!2116 = !DILocation(line: 470, column: 26, scope: !2113)
!2117 = !DILocation(line: 471, column: 6, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 471, column: 6)
!2119 = !DILocation(line: 471, column: 11, scope: !2118)
!2120 = !DILocation(line: 471, column: 6, scope: !2014)
!2121 = !DILocation(line: 471, column: 26, scope: !2118)
!2122 = !DILocation(line: 472, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 472, column: 6)
!2124 = !DILocation(line: 472, column: 11, scope: !2123)
!2125 = !DILocation(line: 472, column: 6, scope: !2014)
!2126 = !DILocation(line: 472, column: 26, scope: !2123)
!2127 = !DILocation(line: 473, column: 6, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 473, column: 6)
!2129 = !DILocation(line: 473, column: 11, scope: !2128)
!2130 = !DILocation(line: 473, column: 6, scope: !2014)
!2131 = !DILocation(line: 473, column: 26, scope: !2128)
!2132 = !DILocation(line: 474, column: 6, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 474, column: 6)
!2134 = !DILocation(line: 474, column: 11, scope: !2133)
!2135 = !DILocation(line: 474, column: 6, scope: !2014)
!2136 = !DILocation(line: 474, column: 27, scope: !2133)
!2137 = !DILocation(line: 475, column: 6, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 475, column: 6)
!2139 = !DILocation(line: 475, column: 11, scope: !2138)
!2140 = !DILocation(line: 475, column: 6, scope: !2014)
!2141 = !DILocation(line: 475, column: 32, scope: !2138)
!2142 = !DILocation(line: 477, column: 50, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2014, file: !154, line: 477, column: 6)
!2144 = !DILocation(line: 477, column: 6, scope: !2014)
!2145 = !DILocation(line: 478, column: 3, scope: !2143)
!2146 = !DILocation(line: 478, column: 3, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !154, line: 478, column: 3)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !154, line: 478, column: 3)
!2149 = !{i32 -2142587730}
!2150 = !DILocation(line: 478, column: 3, scope: !2148)
!2151 = !DILocation(line: 480, column: 3, scope: !2143)
!2152 = !DILocation(line: 480, column: 3, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2143, file: !154, line: 480, column: 3)
!2154 = !DILocation(line: 480, column: 3, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2153, file: !154, line: 480, column: 3)
!2156 = !DILocation(line: 480, column: 3, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !154, line: 480, column: 3)
!2158 = !{i64 2152379769, i64 2152379798, i64 2152379844, i64 2152379902, i64 2152379956, i64 2152380010, i64 2152380065, i64 2152380096}
!2159 = !DILocation(line: 483, column: 2, scope: !2014)
!2160 = !DILocation(line: 484, column: 1, scope: !2014)
!2161 = !DISubprogram(name: "kmalloc_trace", scope: !154, file: !154, line: 525, type: !2162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!164, !2164, !165, !463}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2166, line: 11, flags: DIFlagFwdDecl)
!2166 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2167 = distinct !DISubprogram(name: "kmalloc_type", scope: !154, file: !154, line: 401, type: !2168, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!153, !165, !167}
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "flags", arg: 1, scope: !2167, file: !154, line: 401, type: !165)
!2172 = !DILocalVariable(name: "caller", arg: 2, scope: !2167, file: !154, line: 401, type: !167)
!2173 = !DILocation(line: 401, column: 67, scope: !2167)
!2174 = !DILocation(line: 401, column: 88, scope: !2167)
!2175 = !DILocation(line: 407, column: 6, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2167, file: !154, line: 407, column: 6)
!2177 = !DILocation(line: 407, column: 6, scope: !2167)
!2178 = !DILocation(line: 413, column: 3, scope: !2176)
!2179 = !DILocation(line: 423, column: 38, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2167, file: !154, line: 423, column: 6)
!2181 = !DILocation(line: 423, column: 44, scope: !2180)
!2182 = !DILocation(line: 423, column: 6, scope: !2167)
!2183 = !DILocation(line: 424, column: 3, scope: !2180)
!2184 = !DILocation(line: 426, column: 3, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2167, file: !154, line: 425, column: 6)
!2186 = !DILocation(line: 429, column: 1, scope: !2167)
!2187 = !DISubprogram(name: "__kmalloc", scope: !154, file: !154, line: 488, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2188 = !DISubprogram(name: "__compiletime_assert_196", scope: !154, file: !154, line: 478, type: !2189, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null}
!2191 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !1601, file: !1601, line: 64, type: !2192, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !179, !1567}
!2194 = !{!2195, !2196}
!2195 = !DILocalVariable(name: "nr", arg: 1, scope: !2191, file: !1601, line: 64, type: !179)
!2196 = !DILocalVariable(name: "addr", arg: 2, scope: !2191, file: !1601, line: 64, type: !1567)
!2197 = !DILocation(line: 64, column: 64, scope: !2191)
!2198 = !DILocation(line: 64, column: 92, scope: !2191)
!2199 = !DILocation(line: 84, column: 25, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !1601, line: 83, column: 9)
!2201 = distinct !DILexicalBlock(scope: !2191, file: !1601, line: 66, column: 6)
!2202 = !DILocation(line: 84, column: 32, scope: !2200)
!2203 = !DILocation(line: 84, column: 30, scope: !2200)
!2204 = !DILocation(line: 84, column: 3, scope: !2200)
!2205 = !DILocation(line: 86, column: 1, scope: !2191)
!2206 = distinct !DISubprogram(name: "arch___test_and_set_bit", scope: !2207, file: !2207, line: 148, type: !1565, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2207 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2208 = !{!2209, !2210, !2211}
!2209 = !DILocalVariable(name: "nr", arg: 1, scope: !2206, file: !2207, line: 148, type: !167)
!2210 = !DILocalVariable(name: "addr", arg: 2, scope: !2206, file: !2207, line: 148, type: !1567)
!2211 = !DILocalVariable(name: "oldbit", scope: !2206, file: !2207, line: 150, type: !380)
!2212 = !DILocation(line: 148, column: 39, scope: !2206)
!2213 = !DILocation(line: 148, column: 67, scope: !2206)
!2214 = !DILocation(line: 150, column: 2, scope: !2206)
!2215 = !DILocation(line: 150, column: 7, scope: !2206)
!2216 = !DILocation(line: 155, column: 8, scope: !2206)
!2217 = !DILocation(line: 155, column: 20, scope: !2206)
!2218 = !DILocation(line: 152, column: 2, scope: !2206)
!2219 = !{i64 2147808972, i64 2147809049}
!2220 = !DILocation(line: 156, column: 9, scope: !2206)
!2221 = !DILocation(line: 157, column: 1, scope: !2206)
!2222 = !DILocation(line: 156, column: 2, scope: !2206)
!2223 = distinct !DISubprogram(name: "instrument_read_write", scope: !2224, file: !2224, line: 52, type: !2225, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2224 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !2227, !463}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2230 = !{!2231, !2232}
!2231 = !DILocalVariable(name: "v", arg: 1, scope: !2223, file: !2224, line: 52, type: !2227)
!2232 = !DILocalVariable(name: "size", arg: 2, scope: !2223, file: !2224, line: 52, type: !463)
!2233 = !DILocation(line: 52, column: 72, scope: !2223)
!2234 = !DILocation(line: 52, column: 82, scope: !2223)
!2235 = !DILocation(line: 54, column: 20, scope: !2223)
!2236 = !DILocation(line: 54, column: 23, scope: !2223)
!2237 = !DILocation(line: 54, column: 2, scope: !2223)
!2238 = !DILocation(line: 55, column: 2, scope: !2223)
!2239 = !DILocation(line: 56, column: 1, scope: !2223)
!2240 = distinct !DISubprogram(name: "kasan_check_write", scope: !2241, file: !2241, line: 44, type: !2242, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2244)
!2241 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!380, !2227, !7}
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "p", arg: 1, scope: !2240, file: !2241, line: 44, type: !2227)
!2246 = !DILocalVariable(name: "size", arg: 2, scope: !2240, file: !2241, line: 44, type: !7)
!2247 = !DILocation(line: 44, column: 59, scope: !2240)
!2248 = !DILocation(line: 44, column: 75, scope: !2240)
!2249 = !DILocation(line: 46, column: 2, scope: !2240)
!2250 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2251, file: !2251, line: 229, type: !2252, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2251 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !2227, !463, !589}
!2254 = !{!2255, !2256, !2257}
!2255 = !DILocalVariable(name: "ptr", arg: 1, scope: !2250, file: !2251, line: 229, type: !2227)
!2256 = !DILocalVariable(name: "size", arg: 2, scope: !2250, file: !2251, line: 229, type: !463)
!2257 = !DILocalVariable(name: "type", arg: 3, scope: !2250, file: !2251, line: 230, type: !589)
!2258 = !DILocation(line: 229, column: 60, scope: !2250)
!2259 = !DILocation(line: 229, column: 72, scope: !2250)
!2260 = !DILocation(line: 230, column: 15, scope: !2250)
!2261 = !DILocation(line: 230, column: 23, scope: !2250)
!2262 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2224, file: !2224, line: 66, type: !2225, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "v", arg: 1, scope: !2262, file: !2224, line: 66, type: !2227)
!2265 = !DILocalVariable(name: "size", arg: 2, scope: !2262, file: !2224, line: 66, type: !463)
!2266 = !DILocation(line: 66, column: 73, scope: !2262)
!2267 = !DILocation(line: 66, column: 83, scope: !2262)
!2268 = !DILocation(line: 68, column: 19, scope: !2262)
!2269 = !DILocation(line: 68, column: 22, scope: !2262)
!2270 = !DILocation(line: 68, column: 2, scope: !2262)
!2271 = !DILocation(line: 69, column: 2, scope: !2262)
!2272 = !DILocation(line: 70, column: 1, scope: !2262)
!2273 = distinct !DISubprogram(name: "arch_test_bit", scope: !2207, file: !2207, line: 237, type: !1681, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "nr", arg: 1, scope: !2273, file: !2207, line: 237, type: !167)
!2276 = !DILocalVariable(name: "addr", arg: 2, scope: !2273, file: !2207, line: 237, type: !1683)
!2277 = !DILocation(line: 237, column: 29, scope: !2273)
!2278 = !DILocation(line: 237, column: 63, scope: !2273)
!2279 = !DILocation(line: 239, column: 30, scope: !2273)
!2280 = !DILocation(line: 239, column: 9, scope: !2273)
!2281 = !DILocation(line: 239, column: 54, scope: !2273)
!2282 = !DILocation(line: 239, column: 58, scope: !2273)
!2283 = !DILocation(line: 239, column: 36, scope: !2273)
!2284 = !DILocation(line: 240, column: 26, scope: !2273)
!2285 = !DILocation(line: 240, column: 30, scope: !2273)
!2286 = !DILocation(line: 240, column: 8, scope: !2273)
!2287 = !DILocation(line: 239, column: 2, scope: !2273)
!2288 = distinct !DISubprogram(name: "kasan_check_read", scope: !2241, file: !2241, line: 40, type: !2242, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2289 = !{!2290, !2291}
!2290 = !DILocalVariable(name: "p", arg: 1, scope: !2288, file: !2241, line: 40, type: !2227)
!2291 = !DILocalVariable(name: "size", arg: 2, scope: !2288, file: !2241, line: 40, type: !7)
!2292 = !DILocation(line: 40, column: 58, scope: !2288)
!2293 = !DILocation(line: 40, column: 74, scope: !2288)
!2294 = !DILocation(line: 42, column: 2, scope: !2288)
!2295 = distinct !DISubprogram(name: "constant_test_bit", scope: !2207, file: !2207, line: 204, type: !2296, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!380, !179, !1683}
!2298 = !{!2299, !2300}
!2299 = !DILocalVariable(name: "nr", arg: 1, scope: !2295, file: !2207, line: 204, type: !179)
!2300 = !DILocalVariable(name: "addr", arg: 2, scope: !2295, file: !2207, line: 204, type: !1683)
!2301 = !DILocation(line: 204, column: 52, scope: !2295)
!2302 = !DILocation(line: 204, column: 86, scope: !2295)
!2303 = !DILocation(line: 206, column: 19, scope: !2295)
!2304 = !DILocation(line: 206, column: 22, scope: !2295)
!2305 = !DILocation(line: 206, column: 15, scope: !2295)
!2306 = !DILocation(line: 207, column: 4, scope: !2295)
!2307 = !DILocation(line: 207, column: 9, scope: !2295)
!2308 = !DILocation(line: 207, column: 12, scope: !2295)
!2309 = !DILocation(line: 206, column: 44, scope: !2295)
!2310 = !DILocation(line: 207, column: 37, scope: !2295)
!2311 = !DILocation(line: 206, column: 2, scope: !2295)
!2312 = distinct !DISubprogram(name: "variable_test_bit", scope: !2207, file: !2207, line: 224, type: !2296, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2313 = !{!2314, !2315, !2316}
!2314 = !DILocalVariable(name: "nr", arg: 1, scope: !2312, file: !2207, line: 224, type: !179)
!2315 = !DILocalVariable(name: "addr", arg: 2, scope: !2312, file: !2207, line: 224, type: !1683)
!2316 = !DILocalVariable(name: "oldbit", scope: !2312, file: !2207, line: 226, type: !380)
!2317 = !DILocation(line: 224, column: 52, scope: !2312)
!2318 = !DILocation(line: 224, column: 86, scope: !2312)
!2319 = !DILocation(line: 226, column: 2, scope: !2312)
!2320 = !DILocation(line: 226, column: 7, scope: !2312)
!2321 = !DILocation(line: 231, column: 33, scope: !2312)
!2322 = !DILocation(line: 231, column: 46, scope: !2312)
!2323 = !DILocation(line: 228, column: 2, scope: !2312)
!2324 = !{i64 2147815330, i64 2147815404}
!2325 = !DILocation(line: 233, column: 9, scope: !2312)
!2326 = !DILocation(line: 234, column: 1, scope: !2312)
!2327 = !DILocation(line: 233, column: 2, scope: !2312)
