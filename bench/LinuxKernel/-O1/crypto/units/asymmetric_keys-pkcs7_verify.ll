; ModuleID = 'crypto/asymmetric_keys/pkcs7_verify.c'
source_filename = "crypto/asymmetric_keys/pkcs7_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pkcs7_verify: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pkcs7_verify ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pkcs7_supply_detached_data: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pkcs7_supply_detached_data ; .previous"

%struct.static_call_key = type { ptr, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i64, i64, ptr }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i64, i64, ptr }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.shash_desc = type { ptr, [0 x ptr] }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8 }
%struct.crypto_shash = type { i32, %struct.crypto_tfm }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.0, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.0 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }

@hash_algo_name = external dso_local constant [20 x ptr], align 16
@.str = private unnamed_addr constant [46 x i8] c"\014PKCS7: Invalid module sig (not pkcs7-data)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [45 x i8] c"\014PKCS7: Invalid module sig (has authattrs)\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [48 x i8] c"\014PKCS7: Invalid firmware sig (not pkcs7-data)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [51 x i8] c"\014PKCS7: Invalid firmware sig (missing authattrs)\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [47 x i8] c"\014PKCS7: Invalid kexec sig (not Authenticode)\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [51 x i8] c"\014PKCS7: Invalid unspecified sig (not pkcs7-data)\0A\00", align 1, !dbg !27
@__UNIQUE_ID___addressable_pkcs7_verify120 = internal global ptr @pkcs7_verify, section ".discard.addressable", align 8, !dbg !29
@.str.6 = private unnamed_addr constant [32 x i8] c"\014PKCS7: Data already supplied\0A\00", align 1, !dbg !403
@__UNIQUE_ID___addressable_pkcs7_supply_detached_data121 = internal global ptr @pkcs7_supply_detached_data, section ".discard.addressable", align 8, !dbg !408
@.str.7 = private unnamed_addr constant [35 x i8] c"\014PKCS7: Sig %u: No messageDigest\0A\00", align 1, !dbg !410
@.str.8 = private unnamed_addr constant [43 x i8] c"\014PKCS7: Sig %u: Invalid digest size (%u)\0A\00", align 1, !dbg !415
@.str.9 = private unnamed_addr constant [47 x i8] c"\014PKCS7: Sig %u: Message digest doesn't match\0A\00", align 1, !dbg !420
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !422
@.str.11 = private unnamed_addr constant [58 x i8] c"\014PKCS7: Message signed outside of X.509 validity window\0A\00", align 1, !dbg !427
@.str.12 = private unnamed_addr constant [67 x i8] c"\014PKCS7: Sig %u: X.509 chain contains auth-skid nonmatch (%u->%u)\0A\00", align 1, !dbg !432
@.str.13 = private unnamed_addr constant [44 x i8] c"\014PKCS7: Sig %u: X.509 chain contains loop\0A\00", align 1, !dbg !437
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !442
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_pkcs7_verify120, ptr @__UNIQUE_ID___addressable_pkcs7_supply_detached_data121, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_get_digest(ptr noundef %pkcs7, ptr noundef %buf, ptr noundef %len, ptr noundef %hash_algo) #0 align 16 !dbg !457 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %hash_algo.addr = alloca ptr, align 8
  %sinfo = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !572, metadata !DIExpression()), !dbg !579
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !573, metadata !DIExpression()), !dbg !580
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !574, metadata !DIExpression()), !dbg !581
  store ptr %hash_algo, ptr %hash_algo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash_algo.addr, metadata !575, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfo) #16, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !576, metadata !DIExpression()), !dbg !584
  %0 = load ptr, ptr %pkcs7.addr, align 8, !dbg !585
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 2, !dbg !586
  %1 = load ptr, ptr %signed_infos, align 8, !dbg !586
  store ptr %1, ptr %sinfo, align 8, !dbg !584
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %i, metadata !577, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !578, metadata !DIExpression()), !dbg !589
  %2 = load ptr, ptr %sinfo, align 8, !dbg !590
  %cmp = icmp eq ptr %2, null, !dbg !592
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !593

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %sinfo, align 8, !dbg !594
  %next = getelementptr inbounds %struct.pkcs7_signed_info, ptr %3, i32 0, i32 0, !dbg !595
  %4 = load ptr, ptr %next, align 8, !dbg !595
  %cmp1 = icmp ne ptr %4, null, !dbg !596
  br i1 %cmp1, label %if.then, label %if.end, !dbg !597

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -74, ptr %retval, align 4, !dbg !598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !598

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pkcs7.addr, align 8, !dbg !599
  %6 = load ptr, ptr %sinfo, align 8, !dbg !600
  %call = call i32 @pkcs7_digest(ptr noundef %5, ptr noundef %6) #17, !dbg !601
  store i32 %call, ptr %ret, align 4, !dbg !602
  %7 = load i32, ptr %ret, align 4, !dbg !603
  %tobool = icmp ne i32 %7, 0, !dbg !603
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !605

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !606
  store i32 %8, ptr %retval, align 4, !dbg !607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !607

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %sinfo, align 8, !dbg !608
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %9, i32 0, i32 11, !dbg !609
  %10 = load ptr, ptr %sig, align 8, !dbg !609
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %10, i32 0, i32 2, !dbg !610
  %11 = load ptr, ptr %digest, align 8, !dbg !610
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !611
  store ptr %11, ptr %12, align 8, !dbg !612
  %13 = load ptr, ptr %sinfo, align 8, !dbg !613
  %sig4 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %13, i32 0, i32 11, !dbg !614
  %14 = load ptr, ptr %sig4, align 8, !dbg !614
  %digest_size = getelementptr inbounds %struct.public_key_signature, ptr %14, i32 0, i32 4, !dbg !615
  %15 = load i32, ptr %digest_size, align 4, !dbg !615
  %16 = load ptr, ptr %len.addr, align 8, !dbg !616
  store i32 %15, ptr %16, align 4, !dbg !617
  %17 = load ptr, ptr %sinfo, align 8, !dbg !618
  %sig5 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %17, i32 0, i32 11, !dbg !619
  %18 = load ptr, ptr %sig5, align 8, !dbg !619
  %hash_algo6 = getelementptr inbounds %struct.public_key_signature, ptr %18, i32 0, i32 6, !dbg !620
  %19 = load ptr, ptr %hash_algo6, align 8, !dbg !620
  %call7 = call i32 @match_string(ptr noundef @hash_algo_name, i64 noundef 20, ptr noundef %19) #17, !dbg !621
  store i32 %call7, ptr %i, align 4, !dbg !622
  %20 = load i32, ptr %i, align 4, !dbg !623
  %cmp8 = icmp sge i32 %20, 0, !dbg !625
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !626

if.then9:                                         ; preds = %if.end3
  %21 = load i32, ptr %i, align 4, !dbg !627
  %22 = load ptr, ptr %hash_algo.addr, align 8, !dbg !628
  store i32 %21, ptr %22, align 4, !dbg !629
  br label %if.end10, !dbg !630

if.end10:                                         ; preds = %if.then9, %if.end3
  store i32 0, ptr %retval, align 4, !dbg !631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !631

cleanup:                                          ; preds = %if.end10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !632
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !632
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfo) #16, !dbg !632
  %23 = load i32, ptr %retval, align 4, !dbg !632
  ret i32 %23, !dbg !632
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pkcs7_digest(ptr noundef %pkcs7, ptr noundef %sinfo) #0 align 16 !dbg !633 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %sig = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %desc_size = alloca i64, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %tag = alloca i8, align 1
  %tmp41 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !637, metadata !DIExpression()), !dbg !649
  store ptr %sinfo, ptr %sinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sinfo.addr, metadata !638, metadata !DIExpression()), !dbg !650
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #16, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !639, metadata !DIExpression()), !dbg !652
  %0 = load ptr, ptr %sinfo.addr, align 8, !dbg !653
  %sig1 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %0, i32 0, i32 11, !dbg !654
  %1 = load ptr, ptr %sig1, align 8, !dbg !654
  store ptr %1, ptr %sig, align 8, !dbg !652
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !655
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !640, metadata !DIExpression()), !dbg !656
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #16, !dbg !657
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !641, metadata !DIExpression()), !dbg !658
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_size) #16, !dbg !659
  call void @llvm.dbg.declare(metadata ptr %desc_size, metadata !642, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !661
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !643, metadata !DIExpression()), !dbg !662
  store i32 0, ptr %tmp, align 4, !dbg !663
  %2 = load i32, ptr %tmp, align 4, !dbg !666
  %3 = load ptr, ptr %sig, align 8, !dbg !667
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 2, !dbg !669
  %4 = load ptr, ptr %digest, align 8, !dbg !669
  %tobool = icmp ne ptr %4, null, !dbg !667
  br i1 %tobool, label %if.then, label %if.end, !dbg !670

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup94, !dbg !671

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %sinfo.addr, align 8, !dbg !672
  %sig2 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %5, i32 0, i32 11, !dbg !674
  %6 = load ptr, ptr %sig2, align 8, !dbg !674
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %6, i32 0, i32 6, !dbg !675
  %7 = load ptr, ptr %hash_algo, align 8, !dbg !675
  %tobool3 = icmp ne ptr %7, null, !dbg !672
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !676

if.then4:                                         ; preds = %if.end
  store i32 -65, ptr %retval, align 4, !dbg !677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup94, !dbg !677

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %sinfo.addr, align 8, !dbg !678
  %sig6 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %8, i32 0, i32 11, !dbg !679
  %9 = load ptr, ptr %sig6, align 8, !dbg !679
  %hash_algo7 = getelementptr inbounds %struct.public_key_signature, ptr %9, i32 0, i32 6, !dbg !680
  %10 = load ptr, ptr %hash_algo7, align 8, !dbg !680
  %call = call ptr @crypto_alloc_shash(ptr noundef %10, i32 noundef 0, i32 noundef 0) #17, !dbg !681
  store ptr %call, ptr %tfm, align 8, !dbg !682
  %11 = load ptr, ptr %tfm, align 8, !dbg !683
  %call8 = call zeroext i1 @IS_ERR(ptr noundef %11) #17, !dbg !685
  br i1 %call8, label %if.then9, label %if.end12, !dbg !686

if.then9:                                         ; preds = %if.end5
  %12 = load ptr, ptr %tfm, align 8, !dbg !687
  %call10 = call i64 @PTR_ERR(ptr noundef %12) #17, !dbg !688
  %cmp = icmp eq i64 %call10, -2, !dbg !689
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !690

cond.true:                                        ; preds = %if.then9
  br label %cond.end, !dbg !690

cond.false:                                       ; preds = %if.then9
  %13 = load ptr, ptr %tfm, align 8, !dbg !691
  %call11 = call i64 @PTR_ERR(ptr noundef %13) #17, !dbg !692
  br label %cond.end, !dbg !690

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -65, %cond.true ], [ %call11, %cond.false ], !dbg !690
  %conv = trunc i64 %cond to i32, !dbg !690
  store i32 %conv, ptr %retval, align 4, !dbg !693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup94, !dbg !693

if.end12:                                         ; preds = %if.end5
  %14 = load ptr, ptr %tfm, align 8, !dbg !694
  %call13 = call i32 @crypto_shash_descsize(ptr noundef %14) #17, !dbg !695
  %conv14 = zext i32 %call13 to i64, !dbg !695
  %add = add i64 %conv14, 8, !dbg !696
  store i64 %add, ptr %desc_size, align 8, !dbg !697
  %15 = load ptr, ptr %tfm, align 8, !dbg !698
  %call15 = call i32 @crypto_shash_digestsize(ptr noundef %15) #17, !dbg !699
  %16 = load ptr, ptr %sig, align 8, !dbg !700
  %digest_size = getelementptr inbounds %struct.public_key_signature, ptr %16, i32 0, i32 4, !dbg !701
  store i32 %call15, ptr %digest_size, align 4, !dbg !702
  store i32 -12, ptr %ret, align 4, !dbg !703
  %17 = load ptr, ptr %sig, align 8, !dbg !704
  %digest_size16 = getelementptr inbounds %struct.public_key_signature, ptr %17, i32 0, i32 4, !dbg !705
  %18 = load i32, ptr %digest_size16, align 4, !dbg !705
  %conv17 = zext i32 %18 to i64, !dbg !704
  %call18 = call noalias ptr @kmalloc(i64 noundef %conv17, i32 noundef 3264) #18, !dbg !706
  %19 = load ptr, ptr %sig, align 8, !dbg !707
  %digest19 = getelementptr inbounds %struct.public_key_signature, ptr %19, i32 0, i32 2, !dbg !708
  store ptr %call18, ptr %digest19, align 8, !dbg !709
  %20 = load ptr, ptr %sig, align 8, !dbg !710
  %digest20 = getelementptr inbounds %struct.public_key_signature, ptr %20, i32 0, i32 2, !dbg !712
  %21 = load ptr, ptr %digest20, align 8, !dbg !712
  %tobool21 = icmp ne ptr %21, null, !dbg !710
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !713

if.then22:                                        ; preds = %if.end12
  br label %error_no_desc, !dbg !714

if.end23:                                         ; preds = %if.end12
  %22 = load i64, ptr %desc_size, align 8, !dbg !715
  %call24 = call noalias ptr @kzalloc(i64 noundef %22, i32 noundef 3264) #18, !dbg !716
  store ptr %call24, ptr %desc, align 8, !dbg !717
  %23 = load ptr, ptr %desc, align 8, !dbg !718
  %tobool25 = icmp ne ptr %23, null, !dbg !718
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !720

if.then26:                                        ; preds = %if.end23
  br label %error_no_desc, !dbg !721

if.end27:                                         ; preds = %if.end23
  %24 = load ptr, ptr %tfm, align 8, !dbg !722
  %25 = load ptr, ptr %desc, align 8, !dbg !723
  %tfm28 = getelementptr inbounds %struct.shash_desc, ptr %25, i32 0, i32 0, !dbg !724
  store ptr %24, ptr %tfm28, align 8, !dbg !725
  %26 = load ptr, ptr %desc, align 8, !dbg !726
  %27 = load ptr, ptr %pkcs7.addr, align 8, !dbg !727
  %data = getelementptr inbounds %struct.pkcs7_message, ptr %27, i32 0, i32 8, !dbg !728
  %28 = load ptr, ptr %data, align 8, !dbg !728
  %29 = load ptr, ptr %pkcs7.addr, align 8, !dbg !729
  %data_len = getelementptr inbounds %struct.pkcs7_message, ptr %29, i32 0, i32 6, !dbg !730
  %30 = load i64, ptr %data_len, align 8, !dbg !730
  %conv29 = trunc i64 %30 to i32, !dbg !729
  %31 = load ptr, ptr %sig, align 8, !dbg !731
  %digest30 = getelementptr inbounds %struct.public_key_signature, ptr %31, i32 0, i32 2, !dbg !732
  %32 = load ptr, ptr %digest30, align 8, !dbg !732
  %call31 = call i32 @crypto_shash_digest(ptr noundef %26, ptr noundef %28, i32 noundef %conv29, ptr noundef %32) #17, !dbg !733
  store i32 %call31, ptr %ret, align 4, !dbg !734
  %33 = load i32, ptr %ret, align 4, !dbg !735
  %cmp32 = icmp slt i32 %33, 0, !dbg !737
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !738

if.then34:                                        ; preds = %if.end27
  br label %error, !dbg !739

if.end35:                                         ; preds = %if.end27
  store i32 0, ptr %tmp36, align 4, !dbg !740
  %34 = load i32, ptr %tmp36, align 4, !dbg !743
  %35 = load ptr, ptr %sinfo.addr, align 8, !dbg !744
  %authattrs = getelementptr inbounds %struct.pkcs7_signed_info, ptr %35, i32 0, i32 8, !dbg !745
  %36 = load ptr, ptr %authattrs, align 8, !dbg !745
  %tobool37 = icmp ne ptr %36, null, !dbg !744
  br i1 %tobool37, label %if.then38, label %if.end92, !dbg !746

if.then38:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 1, ptr %tag) #16, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !644, metadata !DIExpression()), !dbg !748
  %37 = load ptr, ptr %sinfo.addr, align 8, !dbg !749
  %msgdigest = getelementptr inbounds %struct.pkcs7_signed_info, ptr %37, i32 0, i32 5, !dbg !751
  %38 = load ptr, ptr %msgdigest, align 8, !dbg !751
  %tobool39 = icmp ne ptr %38, null, !dbg !749
  br i1 %tobool39, label %if.end43, label %if.then40, !dbg !752

if.then40:                                        ; preds = %if.then38
  br label %do.body, !dbg !753

do.body:                                          ; preds = %if.then40
  br label %do.cond, !dbg !756

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !756

do.end:                                           ; preds = %do.cond
  %39 = load ptr, ptr %sinfo.addr, align 8, !dbg !753
  %index = getelementptr inbounds %struct.pkcs7_signed_info, ptr %39, i32 0, i32 2, !dbg !753
  %40 = load i32, ptr %index, align 8, !dbg !753
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %40) #19, !dbg !753
  store i32 %call42, ptr %tmp41, align 4, !dbg !756
  %41 = load i32, ptr %tmp41, align 4, !dbg !753
  store i32 -129, ptr %ret, align 4, !dbg !758
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !759

if.end43:                                         ; preds = %if.then38
  %42 = load ptr, ptr %sinfo.addr, align 8, !dbg !760
  %msgdigest_len = getelementptr inbounds %struct.pkcs7_signed_info, ptr %42, i32 0, i32 6, !dbg !762
  %43 = load i32, ptr %msgdigest_len, align 8, !dbg !762
  %44 = load ptr, ptr %sig, align 8, !dbg !763
  %digest_size44 = getelementptr inbounds %struct.public_key_signature, ptr %44, i32 0, i32 4, !dbg !764
  %45 = load i32, ptr %digest_size44, align 4, !dbg !764
  %cmp45 = icmp ne i32 %43, %45, !dbg !765
  br i1 %cmp45, label %if.then47, label %if.end55, !dbg !766

if.then47:                                        ; preds = %if.end43
  br label %do.body48, !dbg !767

do.body48:                                        ; preds = %if.then47
  br label %do.cond49, !dbg !770

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !770

do.end50:                                         ; preds = %do.cond49
  %46 = load ptr, ptr %sinfo.addr, align 8, !dbg !767
  %index52 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %46, i32 0, i32 2, !dbg !767
  %47 = load i32, ptr %index52, align 8, !dbg !767
  %48 = load ptr, ptr %sinfo.addr, align 8, !dbg !767
  %msgdigest_len53 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %48, i32 0, i32 6, !dbg !767
  %49 = load i32, ptr %msgdigest_len53, align 8, !dbg !767
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %47, i32 noundef %49) #19, !dbg !767
  store i32 %call54, ptr %tmp51, align 4, !dbg !770
  %50 = load i32, ptr %tmp51, align 4, !dbg !767
  store i32 -74, ptr %ret, align 4, !dbg !772
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !773

if.end55:                                         ; preds = %if.end43
  %51 = load ptr, ptr %sig, align 8, !dbg !774
  %digest56 = getelementptr inbounds %struct.public_key_signature, ptr %51, i32 0, i32 2, !dbg !776
  %52 = load ptr, ptr %digest56, align 8, !dbg !776
  %53 = load ptr, ptr %sinfo.addr, align 8, !dbg !777
  %msgdigest57 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %53, i32 0, i32 5, !dbg !778
  %54 = load ptr, ptr %msgdigest57, align 8, !dbg !778
  %55 = load ptr, ptr %sinfo.addr, align 8, !dbg !779
  %msgdigest_len58 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %55, i32 0, i32 6, !dbg !780
  %56 = load i32, ptr %msgdigest_len58, align 8, !dbg !780
  %conv59 = zext i32 %56 to i64, !dbg !779
  %call60 = call i32 @memcmp(ptr noundef %52, ptr noundef %54, i64 noundef %conv59) #17, !dbg !781
  %cmp61 = icmp ne i32 %call60, 0, !dbg !782
  br i1 %cmp61, label %if.then63, label %if.end70, !dbg !783

if.then63:                                        ; preds = %if.end55
  br label %do.body64, !dbg !784

do.body64:                                        ; preds = %if.then63
  br label %do.cond65, !dbg !787

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !787

do.end66:                                         ; preds = %do.cond65
  %57 = load ptr, ptr %sinfo.addr, align 8, !dbg !784
  %index68 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %57, i32 0, i32 2, !dbg !784
  %58 = load i32, ptr %index68, align 8, !dbg !784
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i32 noundef %58) #19, !dbg !784
  store i32 %call69, ptr %tmp67, align 4, !dbg !787
  %59 = load i32, ptr %tmp67, align 4, !dbg !784
  store i32 -129, ptr %ret, align 4, !dbg !789
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !790

if.end70:                                         ; preds = %if.end55
  %60 = load ptr, ptr %sig, align 8, !dbg !791
  %digest71 = getelementptr inbounds %struct.public_key_signature, ptr %60, i32 0, i32 2, !dbg !792
  %61 = load ptr, ptr %digest71, align 8, !dbg !792
  %62 = load ptr, ptr %sig, align 8, !dbg !793
  %digest_size72 = getelementptr inbounds %struct.public_key_signature, ptr %62, i32 0, i32 4, !dbg !794
  %63 = load i32, ptr %digest_size72, align 4, !dbg !794
  %conv73 = zext i32 %63 to i64, !dbg !793
  call void @llvm.memset.p0.i64(ptr align 1 %61, i8 0, i64 %conv73, i1 false), !dbg !795
  %64 = load ptr, ptr %desc, align 8, !dbg !796
  %call74 = call i32 @crypto_shash_init(ptr noundef %64) #17, !dbg !797
  store i32 %call74, ptr %ret, align 4, !dbg !798
  %65 = load i32, ptr %ret, align 4, !dbg !799
  %cmp75 = icmp slt i32 %65, 0, !dbg !801
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !802

if.then77:                                        ; preds = %if.end70
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !803

if.end78:                                         ; preds = %if.end70
  store i8 49, ptr %tag, align 1, !dbg !804
  %66 = load ptr, ptr %desc, align 8, !dbg !805
  %call79 = call i32 @crypto_shash_update(ptr noundef %66, ptr noundef %tag, i32 noundef 1) #17, !dbg !806
  store i32 %call79, ptr %ret, align 4, !dbg !807
  %67 = load i32, ptr %ret, align 4, !dbg !808
  %cmp80 = icmp slt i32 %67, 0, !dbg !810
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !811

if.then82:                                        ; preds = %if.end78
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !812

if.end83:                                         ; preds = %if.end78
  %68 = load ptr, ptr %desc, align 8, !dbg !813
  %69 = load ptr, ptr %sinfo.addr, align 8, !dbg !814
  %authattrs84 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %69, i32 0, i32 8, !dbg !815
  %70 = load ptr, ptr %authattrs84, align 8, !dbg !815
  %71 = load ptr, ptr %sinfo.addr, align 8, !dbg !816
  %authattrs_len = getelementptr inbounds %struct.pkcs7_signed_info, ptr %71, i32 0, i32 7, !dbg !817
  %72 = load i32, ptr %authattrs_len, align 4, !dbg !817
  %73 = load ptr, ptr %sig, align 8, !dbg !818
  %digest85 = getelementptr inbounds %struct.public_key_signature, ptr %73, i32 0, i32 2, !dbg !819
  %74 = load ptr, ptr %digest85, align 8, !dbg !819
  %call86 = call i32 @crypto_shash_finup(ptr noundef %68, ptr noundef %70, i32 noundef %72, ptr noundef %74) #17, !dbg !820
  store i32 %call86, ptr %ret, align 4, !dbg !821
  %75 = load i32, ptr %ret, align 4, !dbg !822
  %cmp87 = icmp slt i32 %75, 0, !dbg !824
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !825

if.then89:                                        ; preds = %if.end83
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !826

if.end90:                                         ; preds = %if.end83
  store i32 0, ptr %tmp91, align 4, !dbg !827
  %76 = load i32, ptr %tmp91, align 4, !dbg !830
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !831
  br label %cleanup, !dbg !831

cleanup:                                          ; preds = %if.then89, %if.then82, %if.then77, %do.end66, %do.end50, %do.end, %if.end90
  call void @llvm.lifetime.end.p0(i64 1, ptr %tag) #16, !dbg !831
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup94 [
    i32 0, label %cleanup.cont
    i32 3, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end92, !dbg !832

if.end92:                                         ; preds = %cleanup.cont, %if.end35
  br label %error, !dbg !745

error:                                            ; preds = %if.end92, %cleanup, %if.then34
  call void @llvm.dbg.label(metadata !647), !dbg !833
  %77 = load ptr, ptr %desc, align 8, !dbg !834
  call void @kfree(ptr noundef %77) #17, !dbg !835
  br label %error_no_desc, !dbg !835

error_no_desc:                                    ; preds = %error, %if.then26, %if.then22
  call void @llvm.dbg.label(metadata !648), !dbg !836
  %78 = load ptr, ptr %tfm, align 8, !dbg !837
  call void @crypto_free_shash(ptr noundef %78) #17, !dbg !838
  store i32 0, ptr %tmp93, align 4, !dbg !839
  %79 = load i32, ptr %tmp93, align 4, !dbg !842
  %80 = load i32, ptr %ret, align 4, !dbg !843
  store i32 %80, ptr %retval, align 4, !dbg !844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup94, !dbg !844

cleanup94:                                        ; preds = %error_no_desc, %cleanup, %cond.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_size) #16, !dbg !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #16, !dbg !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #16, !dbg !845
  %81 = load i32, ptr %retval, align 4, !dbg !845
  ret i32 %81, !dbg !845
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !846 dso_local i32 @match_string(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_verify(ptr noundef %pkcs7, i32 noundef %usage) #0 align 16 !dbg !852 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %sinfo = alloca ptr, align 8
  %actual_ret = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !856, metadata !DIExpression()), !dbg !861
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !857, metadata !DIExpression()), !dbg !862
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfo) #16, !dbg !863
  call void @llvm.dbg.declare(metadata ptr %sinfo, metadata !858, metadata !DIExpression()), !dbg !864
  call void @llvm.lifetime.start.p0(i64 4, ptr %actual_ret) #16, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %actual_ret, metadata !859, metadata !DIExpression()), !dbg !866
  store i32 -65, ptr %actual_ret, align 4, !dbg !866
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !860, metadata !DIExpression()), !dbg !868
  store i32 0, ptr %tmp, align 4, !dbg !869
  %0 = load i32, ptr %tmp, align 4, !dbg !872
  %1 = load i32, ptr %usage.addr, align 4, !dbg !873
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb28
    i32 5, label %sw.bb38
  ], !dbg !874

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %pkcs7.addr, align 8, !dbg !875
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %2, i32 0, i32 5, !dbg !878
  %3 = load i32, ptr %data_type, align 4, !dbg !878
  %cmp = icmp ne i32 %3, 19, !dbg !879
  br i1 %cmp, label %if.then, label %if.end, !dbg !880

if.then:                                          ; preds = %sw.bb
  br label %do.body, !dbg !881

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !884

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !884

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #19, !dbg !881
  store i32 %call, ptr %tmp1, align 4, !dbg !884
  %4 = load i32, ptr %tmp1, align 4, !dbg !881
  store i32 -129, ptr %retval, align 4, !dbg !886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !886

if.end:                                           ; preds = %sw.bb
  %5 = load ptr, ptr %pkcs7.addr, align 8, !dbg !887
  %have_authattrs = getelementptr inbounds %struct.pkcs7_message, ptr %5, i32 0, i32 4, !dbg !889
  %6 = load i8, ptr %have_authattrs, align 1, !dbg !889, !range !890, !noundef !891
  %tobool = trunc i8 %6 to i1, !dbg !889
  br i1 %tobool, label %if.then2, label %if.end8, !dbg !892

if.then2:                                         ; preds = %if.end
  br label %do.body3, !dbg !893

do.body3:                                         ; preds = %if.then2
  br label %do.cond4, !dbg !896

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !896

do.end5:                                          ; preds = %do.cond4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #19, !dbg !893
  store i32 %call7, ptr %tmp6, align 4, !dbg !896
  %7 = load i32, ptr %tmp6, align 4, !dbg !893
  store i32 -129, ptr %retval, align 4, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !898

if.end8:                                          ; preds = %if.end
  br label %sw.epilog, !dbg !899

sw.bb9:                                           ; preds = %entry
  %8 = load ptr, ptr %pkcs7.addr, align 8, !dbg !900
  %data_type10 = getelementptr inbounds %struct.pkcs7_message, ptr %8, i32 0, i32 5, !dbg !902
  %9 = load i32, ptr %data_type10, align 4, !dbg !902
  %cmp11 = icmp ne i32 %9, 19, !dbg !903
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !904

if.then12:                                        ; preds = %sw.bb9
  br label %do.body13, !dbg !905

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !908

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !908

do.end15:                                         ; preds = %do.cond14
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #19, !dbg !905
  store i32 %call17, ptr %tmp16, align 4, !dbg !908
  %10 = load i32, ptr %tmp16, align 4, !dbg !905
  store i32 -129, ptr %retval, align 4, !dbg !910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !910

if.end18:                                         ; preds = %sw.bb9
  %11 = load ptr, ptr %pkcs7.addr, align 8, !dbg !911
  %have_authattrs19 = getelementptr inbounds %struct.pkcs7_message, ptr %11, i32 0, i32 4, !dbg !913
  %12 = load i8, ptr %have_authattrs19, align 1, !dbg !913, !range !890, !noundef !891
  %tobool20 = trunc i8 %12 to i1, !dbg !913
  br i1 %tobool20, label %if.end27, label %if.then21, !dbg !914

if.then21:                                        ; preds = %if.end18
  br label %do.body22, !dbg !915

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !918

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !918

do.end24:                                         ; preds = %do.cond23
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #19, !dbg !915
  store i32 %call26, ptr %tmp25, align 4, !dbg !918
  %13 = load i32, ptr %tmp25, align 4, !dbg !915
  store i32 -129, ptr %retval, align 4, !dbg !920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !920

if.end27:                                         ; preds = %if.end18
  br label %sw.epilog, !dbg !921

sw.bb28:                                          ; preds = %entry
  %14 = load ptr, ptr %pkcs7.addr, align 8, !dbg !922
  %data_type29 = getelementptr inbounds %struct.pkcs7_message, ptr %14, i32 0, i32 5, !dbg !924
  %15 = load i32, ptr %data_type29, align 4, !dbg !924
  %cmp30 = icmp ne i32 %15, 33, !dbg !925
  br i1 %cmp30, label %if.then31, label %if.end37, !dbg !926

if.then31:                                        ; preds = %sw.bb28
  br label %do.body32, !dbg !927

do.body32:                                        ; preds = %if.then31
  br label %do.cond33, !dbg !930

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !930

do.end34:                                         ; preds = %do.cond33
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #19, !dbg !927
  store i32 %call36, ptr %tmp35, align 4, !dbg !930
  %16 = load i32, ptr %tmp35, align 4, !dbg !927
  store i32 -129, ptr %retval, align 4, !dbg !932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !932

if.end37:                                         ; preds = %sw.bb28
  br label %sw.epilog, !dbg !933

sw.bb38:                                          ; preds = %entry
  %17 = load ptr, ptr %pkcs7.addr, align 8, !dbg !934
  %data_type39 = getelementptr inbounds %struct.pkcs7_message, ptr %17, i32 0, i32 5, !dbg !936
  %18 = load i32, ptr %data_type39, align 4, !dbg !936
  %cmp40 = icmp ne i32 %18, 19, !dbg !937
  br i1 %cmp40, label %if.then41, label %if.end47, !dbg !938

if.then41:                                        ; preds = %sw.bb38
  br label %do.body42, !dbg !939

do.body42:                                        ; preds = %if.then41
  br label %do.cond43, !dbg !942

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !942

do.end44:                                         ; preds = %do.cond43
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #19, !dbg !939
  store i32 %call46, ptr %tmp45, align 4, !dbg !942
  %19 = load i32, ptr %tmp45, align 4, !dbg !939
  store i32 -129, ptr %retval, align 4, !dbg !944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !944

if.end47:                                         ; preds = %sw.bb38
  br label %sw.epilog, !dbg !945

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !946

sw.epilog:                                        ; preds = %if.end47, %if.end37, %if.end27, %if.end8
  %20 = load ptr, ptr %pkcs7.addr, align 8, !dbg !947
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %20, i32 0, i32 2, !dbg !949
  %21 = load ptr, ptr %signed_infos, align 8, !dbg !949
  store ptr %21, ptr %sinfo, align 8, !dbg !950
  br label %for.cond, !dbg !951

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %22 = load ptr, ptr %sinfo, align 8, !dbg !952
  %tobool48 = icmp ne ptr %22, null, !dbg !954
  br i1 %tobool48, label %for.body, label %for.end, !dbg !954

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %pkcs7.addr, align 8, !dbg !955
  %24 = load ptr, ptr %sinfo, align 8, !dbg !957
  %call49 = call i32 @pkcs7_verify_one(ptr noundef %23, ptr noundef %24) #17, !dbg !958
  store i32 %call49, ptr %ret, align 4, !dbg !959
  %25 = load ptr, ptr %sinfo, align 8, !dbg !960
  %blacklisted = getelementptr inbounds %struct.pkcs7_signed_info, ptr %25, i32 0, i32 4, !dbg !962
  %26 = load i8, ptr %blacklisted, align 1, !dbg !962, !range !890, !noundef !891
  %tobool50 = trunc i8 %26 to i1, !dbg !962
  br i1 %tobool50, label %if.then51, label %if.end55, !dbg !963

if.then51:                                        ; preds = %for.body
  %27 = load i32, ptr %actual_ret, align 4, !dbg !964
  %cmp52 = icmp eq i32 %27, -65, !dbg !967
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !968

if.then53:                                        ; preds = %if.then51
  store i32 -129, ptr %actual_ret, align 4, !dbg !969
  br label %if.end54, !dbg !970

if.end54:                                         ; preds = %if.then53, %if.then51
  br label %for.inc, !dbg !971

if.end55:                                         ; preds = %for.body
  %28 = load i32, ptr %ret, align 4, !dbg !972
  %cmp56 = icmp slt i32 %28, 0, !dbg !974
  br i1 %cmp56, label %if.then57, label %if.end62, !dbg !975

if.then57:                                        ; preds = %if.end55
  %29 = load i32, ptr %ret, align 4, !dbg !976
  %cmp58 = icmp eq i32 %29, -65, !dbg !979
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !980

if.then59:                                        ; preds = %if.then57
  %30 = load ptr, ptr %sinfo, align 8, !dbg !981
  %unsupported_crypto = getelementptr inbounds %struct.pkcs7_signed_info, ptr %30, i32 0, i32 3, !dbg !983
  store i8 1, ptr %unsupported_crypto, align 4, !dbg !984
  br label %for.inc, !dbg !985

if.end60:                                         ; preds = %if.then57
  store i32 0, ptr %tmp61, align 4, !dbg !986
  %31 = load i32, ptr %tmp61, align 4, !dbg !989
  %32 = load i32, ptr %ret, align 4, !dbg !990
  store i32 %32, ptr %retval, align 4, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

if.end62:                                         ; preds = %if.end55
  store i32 0, ptr %actual_ret, align 4, !dbg !992
  br label %for.inc, !dbg !993

for.inc:                                          ; preds = %if.end62, %if.then59, %if.end54
  %33 = load ptr, ptr %sinfo, align 8, !dbg !994
  %next = getelementptr inbounds %struct.pkcs7_signed_info, ptr %33, i32 0, i32 0, !dbg !995
  %34 = load ptr, ptr %next, align 8, !dbg !995
  store ptr %34, ptr %sinfo, align 8, !dbg !996
  br label %for.cond, !dbg !997, !llvm.loop !998

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %tmp63, align 4, !dbg !1002
  %35 = load i32, ptr %tmp63, align 4, !dbg !1005
  %36 = load i32, ptr %actual_ret, align 4, !dbg !1006
  store i32 %36, ptr %retval, align 4, !dbg !1007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1007

cleanup:                                          ; preds = %for.end, %if.end60, %sw.default, %do.end44, %do.end34, %do.end24, %do.end15, %do.end5, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 4, ptr %actual_ret) #16, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfo) #16, !dbg !1008
  %37 = load i32, ptr %retval, align 4, !dbg !1008
  ret i32 %37, !dbg !1008
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1009 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pkcs7_verify_one(ptr noundef %pkcs7, ptr noundef %sinfo) #0 align 16 !dbg !1013 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !1015, metadata !DIExpression()), !dbg !1018
  store ptr %sinfo, ptr %sinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sinfo.addr, metadata !1016, metadata !DIExpression()), !dbg !1019
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1017, metadata !DIExpression()), !dbg !1021
  store i32 0, ptr %tmp, align 4, !dbg !1022
  %0 = load i32, ptr %tmp, align 4, !dbg !1025
  %1 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1026
  %2 = load ptr, ptr %sinfo.addr, align 8, !dbg !1027
  %call = call i32 @pkcs7_digest(ptr noundef %1, ptr noundef %2) #17, !dbg !1028
  store i32 %call, ptr %ret, align 4, !dbg !1029
  %3 = load i32, ptr %ret, align 4, !dbg !1030
  %cmp = icmp slt i32 %3, 0, !dbg !1032
  br i1 %cmp, label %if.then, label %if.end, !dbg !1033

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !1034
  store i32 %4, ptr %retval, align 4, !dbg !1035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1035

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1036
  %6 = load ptr, ptr %sinfo.addr, align 8, !dbg !1037
  %call1 = call i32 @pkcs7_find_key(ptr noundef %5, ptr noundef %6) #17, !dbg !1038
  store i32 %call1, ptr %ret, align 4, !dbg !1039
  %7 = load i32, ptr %ret, align 4, !dbg !1040
  %cmp2 = icmp slt i32 %7, 0, !dbg !1042
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1043

if.then3:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !1044
  store i32 %8, ptr %retval, align 4, !dbg !1045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1045

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %sinfo.addr, align 8, !dbg !1046
  %signer = getelementptr inbounds %struct.pkcs7_signed_info, ptr %9, i32 0, i32 1, !dbg !1048
  %10 = load ptr, ptr %signer, align 8, !dbg !1048
  %tobool = icmp ne ptr %10, null, !dbg !1046
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !1049

if.then5:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !1050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1050

if.end6:                                          ; preds = %if.end4
  store i32 0, ptr %tmp7, align 4, !dbg !1051
  %11 = load i32, ptr %tmp7, align 4, !dbg !1054
  %12 = load ptr, ptr %sinfo.addr, align 8, !dbg !1055
  %aa_set = getelementptr inbounds %struct.pkcs7_signed_info, ptr %12, i32 0, i32 9, !dbg !1055
  %13 = ptrtoint ptr %aa_set to i64, !dbg !1055
  %cmp8 = icmp ne i64 %13, 0, !dbg !1055
  %conv = zext i1 %cmp8 to i32, !dbg !1055
  %14 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1055
  br i1 %14, label %land.lhs.true, label %cond.false, !dbg !1055

land.lhs.true:                                    ; preds = %if.end6
  %15 = load ptr, ptr %sinfo.addr, align 8, !dbg !1055
  %aa_set9 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %15, i32 0, i32 9, !dbg !1055
  %16 = ptrtoint ptr %aa_set9 to i64, !dbg !1055
  %cmp10 = icmp ne i64 %16, 0, !dbg !1055
  br i1 %cmp10, label %land.lhs.true12, label %cond.false, !dbg !1055

land.lhs.true12:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %sinfo.addr, align 8, !dbg !1055
  %aa_set13 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %17, i32 0, i32 9, !dbg !1055
  %18 = load i64, ptr %aa_set13, align 8, !dbg !1055
  %19 = call i1 @llvm.is.constant.i64(i64 %18), !dbg !1055
  br i1 %19, label %cond.true, label %cond.false, !dbg !1057

cond.true:                                        ; preds = %land.lhs.true12
  %20 = load ptr, ptr %sinfo.addr, align 8, !dbg !1055
  %aa_set14 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %20, i32 0, i32 9, !dbg !1055
  %call15 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %aa_set14) #17, !dbg !1055
  br i1 %call15, label %if.then20, label %if.end32, !dbg !1055

cond.false:                                       ; preds = %land.lhs.true12, %land.lhs.true, %if.end6
  %21 = load ptr, ptr %sinfo.addr, align 8, !dbg !1055
  %aa_set17 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %21, i32 0, i32 9, !dbg !1055
  %call18 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %aa_set17) #17, !dbg !1055
  br i1 %call18, label %if.then20, label %if.end32, !dbg !1057

if.then20:                                        ; preds = %cond.false, %cond.true
  %22 = load ptr, ptr %sinfo.addr, align 8, !dbg !1058
  %signing_time = getelementptr inbounds %struct.pkcs7_signed_info, ptr %22, i32 0, i32 10, !dbg !1061
  %23 = load i64, ptr %signing_time, align 8, !dbg !1061
  %24 = load ptr, ptr %sinfo.addr, align 8, !dbg !1062
  %signer21 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %24, i32 0, i32 1, !dbg !1063
  %25 = load ptr, ptr %signer21, align 8, !dbg !1063
  %valid_from = getelementptr inbounds %struct.x509_certificate, ptr %25, i32 0, i32 8, !dbg !1064
  %26 = load i64, ptr %valid_from, align 8, !dbg !1064
  %cmp22 = icmp slt i64 %23, %26, !dbg !1065
  br i1 %cmp22, label %if.then28, label %lor.lhs.false, !dbg !1066

lor.lhs.false:                                    ; preds = %if.then20
  %27 = load ptr, ptr %sinfo.addr, align 8, !dbg !1067
  %signing_time24 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %27, i32 0, i32 10, !dbg !1068
  %28 = load i64, ptr %signing_time24, align 8, !dbg !1068
  %29 = load ptr, ptr %sinfo.addr, align 8, !dbg !1069
  %signer25 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %29, i32 0, i32 1, !dbg !1070
  %30 = load ptr, ptr %signer25, align 8, !dbg !1070
  %valid_to = getelementptr inbounds %struct.x509_certificate, ptr %30, i32 0, i32 9, !dbg !1071
  %31 = load i64, ptr %valid_to, align 8, !dbg !1071
  %cmp26 = icmp sgt i64 %28, %31, !dbg !1072
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !1073

if.then28:                                        ; preds = %lor.lhs.false, %if.then20
  br label %do.body, !dbg !1074

do.body:                                          ; preds = %if.then28
  br label %do.cond, !dbg !1077

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1077

do.end:                                           ; preds = %do.cond
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #19, !dbg !1074
  store i32 %call30, ptr %tmp29, align 4, !dbg !1077
  %32 = load i32, ptr %tmp29, align 4, !dbg !1074
  store i32 -129, ptr %retval, align 4, !dbg !1079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1079

if.end31:                                         ; preds = %lor.lhs.false
  br label %if.end32, !dbg !1080

if.end32:                                         ; preds = %if.end31, %cond.false, %cond.true
  %33 = load ptr, ptr %sinfo.addr, align 8, !dbg !1081
  %signer33 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %33, i32 0, i32 1, !dbg !1082
  %34 = load ptr, ptr %signer33, align 8, !dbg !1082
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %34, i32 0, i32 2, !dbg !1083
  %35 = load ptr, ptr %pub, align 8, !dbg !1083
  %36 = load ptr, ptr %sinfo.addr, align 8, !dbg !1084
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %36, i32 0, i32 11, !dbg !1085
  %37 = load ptr, ptr %sig, align 8, !dbg !1085
  %call34 = call i32 @public_key_verify_signature(ptr noundef %35, ptr noundef %37) #17, !dbg !1086
  store i32 %call34, ptr %ret, align 4, !dbg !1087
  %38 = load i32, ptr %ret, align 4, !dbg !1088
  %cmp35 = icmp slt i32 %38, 0, !dbg !1090
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !1091

if.then37:                                        ; preds = %if.end32
  %39 = load i32, ptr %ret, align 4, !dbg !1092
  store i32 %39, ptr %retval, align 4, !dbg !1093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1093

if.end38:                                         ; preds = %if.end32
  store i32 0, ptr %tmp39, align 4, !dbg !1094
  %40 = load i32, ptr %tmp39, align 4, !dbg !1097
  %41 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1098
  %42 = load ptr, ptr %sinfo.addr, align 8, !dbg !1099
  %call40 = call i32 @pkcs7_verify_sig_chain(ptr noundef %41, ptr noundef %42) #17, !dbg !1100
  store i32 %call40, ptr %retval, align 4, !dbg !1101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1101

cleanup:                                          ; preds = %if.end38, %if.then37, %do.end, %if.then5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !1102
  %43 = load i32, ptr %retval, align 4, !dbg !1102
  ret i32 %43, !dbg !1102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pkcs7_supply_detached_data(ptr noundef %pkcs7, ptr noundef %data, i64 noundef %datalen) #0 align 16 !dbg !1103 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !1107, metadata !DIExpression()), !dbg !1110
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1108, metadata !DIExpression()), !dbg !1111
  store i64 %datalen, ptr %datalen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datalen.addr, metadata !1109, metadata !DIExpression()), !dbg !1112
  %0 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1113
  %data1 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 8, !dbg !1115
  %1 = load ptr, ptr %data1, align 8, !dbg !1115
  %tobool = icmp ne ptr %1, null, !dbg !1113
  br i1 %tobool, label %if.then, label %if.end, !dbg !1116

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1117

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1120

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #19, !dbg !1117
  store i32 %call, ptr %tmp, align 4, !dbg !1120
  %2 = load i32, ptr %tmp, align 4, !dbg !1117
  store i32 -22, ptr %retval, align 4, !dbg !1122
  br label %return, !dbg !1122

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data.addr, align 8, !dbg !1123
  %4 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1124
  %data2 = getelementptr inbounds %struct.pkcs7_message, ptr %4, i32 0, i32 8, !dbg !1125
  store ptr %3, ptr %data2, align 8, !dbg !1126
  %5 = load i64, ptr %datalen.addr, align 8, !dbg !1127
  %6 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1128
  %data_len = getelementptr inbounds %struct.pkcs7_message, ptr %6, i32 0, i32 6, !dbg !1129
  store i64 %5, ptr %data_len, align 8, !dbg !1130
  store i32 0, ptr %retval, align 4, !dbg !1131
  br label %return, !dbg !1131

return:                                           ; preds = %if.end, %do.end
  %7 = load i32, ptr %retval, align 4, !dbg !1132
  ret i32 %7, !dbg !1132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1133 dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !1136 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1141, metadata !DIExpression()), !dbg !1142
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1143
  %1 = ptrtoint ptr %0 to i64, !dbg !1143
  %2 = inttoptr i64 %1 to ptr, !dbg !1143
  %3 = ptrtoint ptr %2 to i64, !dbg !1143
  %cmp = icmp uge i64 %3, -4095, !dbg !1143
  %lnot = xor i1 %cmp, true, !dbg !1143
  %lnot1 = xor i1 %lnot, true, !dbg !1143
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1143
  %conv = sext i32 %lnot.ext to i64, !dbg !1143
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1143
  %tobool = icmp ne i64 %expval, 0, !dbg !1143
  ret i1 %tobool, !dbg !1144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !1145 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1151
  %1 = ptrtoint ptr %0 to i64, !dbg !1152
  ret i64 %1, !dbg !1153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_descsize(ptr noundef %tfm) #5 align 16 !dbg !1154 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1158, metadata !DIExpression()), !dbg !1159
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1160
  %descsize = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 0, !dbg !1161
  %1 = load i32, ptr %descsize, align 8, !dbg !1161
  ret i32 %1, !dbg !1162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_digestsize(ptr noundef %tfm) #5 align 16 !dbg !1163 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1165, metadata !DIExpression()), !dbg !1166
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1167
  %call = call ptr @crypto_shash_alg(ptr noundef %0) #17, !dbg !1168
  %1 = getelementptr inbounds %struct.shash_alg, ptr %call, i32 0, i32 12, !dbg !1169
  %digestsize = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !1169
  %2 = load i32, ptr %digestsize, align 8, !dbg !1169
  ret i32 %2, !dbg !1170
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1171 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1175, metadata !DIExpression()), !dbg !1180
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1176, metadata !DIExpression()), !dbg !1181
  %0 = load i64, ptr %size.addr, align 8, !dbg !1182
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1183
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1184

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1185
  %tobool = icmp ne i64 %2, 0, !dbg !1185
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1186

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1177, metadata !DIExpression()), !dbg !1188
  %3 = load i64, ptr %size.addr, align 8, !dbg !1189
  %cmp = icmp ugt i64 %3, 8192, !dbg !1191
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1192

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1193
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1194
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !1195
  store ptr %call, ptr %retval, align 8, !dbg !1196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1196

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1197
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !1197
  store i32 %call2, ptr %index, align 4, !dbg !1198
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1199
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1200
  %9 = ptrtoint ptr %8 to i64, !dbg !1200
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !1201
  %idxprom = zext i32 %call3 to i64, !dbg !1202
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1202
  %10 = load i32, ptr %index, align 4, !dbg !1203
  %idxprom4 = zext i32 %10 to i64, !dbg !1202
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1202
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1202
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1204
  %13 = load i64, ptr %size.addr, align 8, !dbg !1205
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !1206
  store ptr %call6, ptr %retval, align 8, !dbg !1207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1207

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !1208
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1209
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1210
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !1211
  store ptr %call8, ptr %retval, align 8, !dbg !1212
  br label %return, !dbg !1212

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1213
  ret ptr %16, !dbg !1213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1214 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1216, metadata !DIExpression()), !dbg !1218
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1217, metadata !DIExpression()), !dbg !1219
  %0 = load i64, ptr %size.addr, align 8, !dbg !1220
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1221
  %or = or i32 %1, 256, !dbg !1222
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !1223
  ret ptr %call, !dbg !1224
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1225 dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1226 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_init(ptr noundef %desc) #5 align 16 !dbg !1229 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1231, metadata !DIExpression()), !dbg !1233
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #16, !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !1232, metadata !DIExpression()), !dbg !1235
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !1236
  %tfm1 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 0, !dbg !1237
  %1 = load ptr, ptr %tfm1, align 8, !dbg !1237
  store ptr %1, ptr %tfm, align 8, !dbg !1235
  %2 = load ptr, ptr %tfm, align 8, !dbg !1238
  %call = call i32 @crypto_shash_get_flags(ptr noundef %2) #17, !dbg !1240
  %and = and i32 %call, 1, !dbg !1241
  %tobool = icmp ne i32 %and, 0, !dbg !1241
  br i1 %tobool, label %if.then, label %if.end, !dbg !1242

if.then:                                          ; preds = %entry
  store i32 -126, ptr %retval, align 4, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tfm, align 8, !dbg !1244
  %call2 = call ptr @crypto_shash_alg(ptr noundef %3) #17, !dbg !1245
  %init = getelementptr inbounds %struct.shash_alg, ptr %call2, i32 0, i32 0, !dbg !1246
  %4 = load ptr, ptr %init, align 8, !dbg !1246
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !1247
  %call3 = call i32 %4(ptr noundef %5) #17, !dbg !1245
  store i32 %call3, ptr %retval, align 4, !dbg !1248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1248

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #16, !dbg !1249
  %6 = load i32, ptr %retval, align 4, !dbg !1249
  ret i32 %6, !dbg !1249
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1250 dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1251 dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1252 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_shash(ptr noundef %tfm) #5 align 16 !dbg !1255 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1259
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !1260
  %call = call ptr @crypto_shash_tfm(ptr noundef %1) #17, !dbg !1261
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #17, !dbg !1262
  ret void, !dbg !1263
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_alg(ptr noundef %tfm) #5 align 16 !dbg !1264 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1268, metadata !DIExpression()), !dbg !1269
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1270
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #17, !dbg !1271
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %call, i32 0, i32 4, !dbg !1272
  %1 = load ptr, ptr %__crt_alg, align 8, !dbg !1272
  %call1 = call ptr @__crypto_shash_alg(ptr noundef %1) #17, !dbg !1273
  ret ptr %call1, !dbg !1274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__crypto_shash_alg(ptr noundef %alg) #5 align 16 !dbg !1275 {
entry:
  %alg.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %alg, ptr %alg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg.addr, metadata !1279, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !1283
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1280, metadata !DIExpression()), !dbg !1283
  %0 = load ptr, ptr %alg.addr, align 8, !dbg !1283
  store ptr %0, ptr %__mptr, align 8, !dbg !1283
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1283
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !1283
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1283
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !1284
  %2 = load ptr, ptr %tmp, align 8, !dbg !1283
  ret ptr %2, !dbg !1285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_shash_tfm(ptr noundef %tfm) #5 align 16 !dbg !1286 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1290, metadata !DIExpression()), !dbg !1291
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1292
  %base = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 1, !dbg !1293
  ret ptr %base, !dbg !1294
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1295 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !1296 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1300, metadata !DIExpression()), !dbg !1302
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1301, metadata !DIExpression()), !dbg !1303
  %0 = load i64, ptr %size.addr, align 8, !dbg !1304
  %tobool = icmp ne i64 %0, 0, !dbg !1304
  br i1 %tobool, label %if.end, label %if.then, !dbg !1306

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1307
  br label %return, !dbg !1307

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1308
  %cmp = icmp ule i64 %1, 8, !dbg !1310
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1311

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1312
  br label %return, !dbg !1312

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1313
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1315
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1316

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1317
  %cmp4 = icmp ule i64 %3, 96, !dbg !1318
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1319

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1320
  br label %return, !dbg !1320

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1321
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1323
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1324

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1325
  %cmp9 = icmp ule i64 %5, 192, !dbg !1326
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1327

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1328
  br label %return, !dbg !1328

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1329
  %cmp12 = icmp ule i64 %6, 8, !dbg !1331
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1332

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1333
  br label %return, !dbg !1333

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1334
  %cmp15 = icmp ule i64 %7, 16, !dbg !1336
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1337

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1338
  br label %return, !dbg !1338

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1339
  %cmp18 = icmp ule i64 %8, 32, !dbg !1341
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1342

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1343
  br label %return, !dbg !1343

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1344
  %cmp21 = icmp ule i64 %9, 64, !dbg !1346
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1347

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1348
  br label %return, !dbg !1348

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1349
  %cmp24 = icmp ule i64 %10, 128, !dbg !1351
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1352

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1353
  br label %return, !dbg !1353

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1354
  %cmp27 = icmp ule i64 %11, 256, !dbg !1356
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1357

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1358
  br label %return, !dbg !1358

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1359
  %cmp30 = icmp ule i64 %12, 512, !dbg !1361
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1362

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1363
  br label %return, !dbg !1363

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1364
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1366
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1367

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1368
  br label %return, !dbg !1368

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1369
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1371
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1372

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1373
  br label %return, !dbg !1373

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1374
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1376
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1377

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1378
  br label %return, !dbg !1378

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1379
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1381
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1382

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1383
  br label %return, !dbg !1383

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1384
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1386
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1387

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1388
  br label %return, !dbg !1388

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1389
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1391
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1392

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1393
  br label %return, !dbg !1393

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1394
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1396
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1397

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1398
  br label %return, !dbg !1398

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1399
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1401
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1402

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1403
  br label %return, !dbg !1403

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1404
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1406
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1407

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1408
  br label %return, !dbg !1408

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1409
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1411
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1412

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1413
  br label %return, !dbg !1413

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1414
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1416
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1417

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1418
  br label %return, !dbg !1418

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1419
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1421
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1422

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1423
  br label %return, !dbg !1423

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1424, !range !890, !noundef !891
  %tobool69 = trunc i8 %25 to i1, !dbg !1424
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1426

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1427

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !1428, !srcloc !1431
  unreachable, !dbg !1428

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1432

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1433

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1434

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1436

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1434

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 480, i32 0, i64 12) #16, !dbg !1438, !srcloc !1440
  br label %do.end75, !dbg !1438

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1434

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1441
  br label %return, !dbg !1441

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1442
  ret i32 %26, !dbg !1442
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1443 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !1449 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1453, metadata !DIExpression()), !dbg !1455
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1454, metadata !DIExpression()), !dbg !1456
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1457
  %and = and i32 %0, 17, !dbg !1457
  %cmp = icmp eq i32 %and, 0, !dbg !1457
  %lnot = xor i1 %cmp, true, !dbg !1457
  %lnot1 = xor i1 %lnot, true, !dbg !1457
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1457
  %conv = sext i32 %lnot.ext to i64, !dbg !1457
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1457
  %tobool = icmp ne i64 %expval, 0, !dbg !1457
  br i1 %tobool, label %if.then, label %if.end, !dbg !1459

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1460
  br label %return, !dbg !1460

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1461
  %and2 = and i32 %1, 1, !dbg !1463
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1463
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1464

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1465
  br label %return, !dbg !1465

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1466
  br label %return, !dbg !1466

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1468
  ret i32 %2, !dbg !1468
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1469 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1470 dso_local void @__compiletime_assert_117() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_shash_get_flags(ptr noundef %tfm) #5 align 16 !dbg !1471 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1475, metadata !DIExpression()), !dbg !1476
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1477
  %call = call ptr @crypto_shash_tfm(ptr noundef %0) #17, !dbg !1478
  %call1 = call i32 @crypto_tfm_get_flags(ptr noundef %call) #17, !dbg !1479
  ret i32 %call1, !dbg !1480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_tfm_get_flags(ptr noundef %tfm) #5 align 16 !dbg !1481 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !1485, metadata !DIExpression()), !dbg !1486
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !1487
  %crt_flags = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 1, !dbg !1488
  %1 = load i32, ptr %crt_flags, align 4, !dbg !1488
  ret i32 %1, !dbg !1489
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1490 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pkcs7_find_key(ptr noundef %pkcs7, ptr noundef %sinfo) #0 align 16 !dbg !1493 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %x509 = alloca ptr, align 8
  %certix = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !1495, metadata !DIExpression()), !dbg !1499
  store ptr %sinfo, ptr %sinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sinfo.addr, metadata !1496, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.start.p0(i64 8, ptr %x509) #16, !dbg !1501
  call void @llvm.dbg.declare(metadata ptr %x509, metadata !1497, metadata !DIExpression()), !dbg !1502
  call void @llvm.lifetime.start.p0(i64 4, ptr %certix) #16, !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %certix, metadata !1498, metadata !DIExpression()), !dbg !1504
  store i32 1, ptr %certix, align 4, !dbg !1504
  store i32 0, ptr %tmp, align 4, !dbg !1505
  %0 = load i32, ptr %tmp, align 4, !dbg !1508
  %1 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1509
  %certs = getelementptr inbounds %struct.pkcs7_message, ptr %1, i32 0, i32 0, !dbg !1511
  %2 = load ptr, ptr %certs, align 8, !dbg !1511
  store ptr %2, ptr %x509, align 8, !dbg !1512
  br label %for.cond, !dbg !1513

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %x509, align 8, !dbg !1514
  %tobool = icmp ne ptr %3, null, !dbg !1516
  br i1 %tobool, label %for.body, label %for.end, !dbg !1516

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x509, align 8, !dbg !1517
  %id = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 6, !dbg !1520
  %5 = load ptr, ptr %id, align 8, !dbg !1520
  %6 = load ptr, ptr %sinfo.addr, align 8, !dbg !1521
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %6, i32 0, i32 11, !dbg !1522
  %7 = load ptr, ptr %sig, align 8, !dbg !1522
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %7, i32 0, i32 0, !dbg !1523
  %arrayidx = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 0, !dbg !1521
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !1521
  %call = call zeroext i1 @asymmetric_key_id_same(ptr noundef %5, ptr noundef %8) #17, !dbg !1524
  br i1 %call, label %if.end, label %if.then, !dbg !1525

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1526

if.end:                                           ; preds = %for.body
  store i32 0, ptr %tmp1, align 4, !dbg !1527
  %9 = load i32, ptr %tmp1, align 4, !dbg !1530
  %10 = load ptr, ptr %x509, align 8, !dbg !1531
  %11 = load ptr, ptr %sinfo.addr, align 8, !dbg !1532
  %signer = getelementptr inbounds %struct.pkcs7_signed_info, ptr %11, i32 0, i32 1, !dbg !1533
  store ptr %10, ptr %signer, align 8, !dbg !1534
  store i32 0, ptr %retval, align 4, !dbg !1535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1535

for.inc:                                          ; preds = %if.then
  %12 = load ptr, ptr %x509, align 8, !dbg !1536
  %next = getelementptr inbounds %struct.x509_certificate, ptr %12, i32 0, i32 0, !dbg !1537
  %13 = load ptr, ptr %next, align 8, !dbg !1537
  store ptr %13, ptr %x509, align 8, !dbg !1538
  %14 = load i32, ptr %certix, align 4, !dbg !1539
  %inc = add i32 %14, 1, !dbg !1539
  store i32 %inc, ptr %certix, align 4, !dbg !1539
  br label %for.cond, !dbg !1540, !llvm.loop !1541

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %tmp2, align 4, !dbg !1543
  %15 = load i32, ptr %tmp2, align 4, !dbg !1546
  store i32 0, ptr %retval, align 4, !dbg !1547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1547

cleanup:                                          ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %certix) #16, !dbg !1548
  call void @llvm.lifetime.end.p0(i64 8, ptr %x509) #16, !dbg !1548
  %16 = load i32, ptr %retval, align 4, !dbg !1548
  ret i32 %16, !dbg !1548
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1549 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1557, metadata !DIExpression()), !dbg !1562
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1558, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1559, metadata !DIExpression()), !dbg !1565
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1566
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1567
  %div = udiv i64 %1, 64, !dbg !1567
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1568
  store ptr %add.ptr, ptr %p, align 8, !dbg !1565
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1560, metadata !DIExpression()), !dbg !1570
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1571
  %rem = urem i64 %2, 64, !dbg !1571
  %shl = shl i64 1, %rem, !dbg !1571
  store i64 %shl, ptr %mask, align 8, !dbg !1570
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !1572
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1561, metadata !DIExpression()), !dbg !1573
  %3 = load ptr, ptr %p, align 8, !dbg !1574
  %4 = load i64, ptr %3, align 8, !dbg !1575
  store i64 %4, ptr %val, align 8, !dbg !1573
  %5 = load i64, ptr %val, align 8, !dbg !1576
  %6 = load i64, ptr %mask, align 8, !dbg !1577
  %and = and i64 %5, %6, !dbg !1578
  %tobool = icmp ne i64 %and, 0, !dbg !1579
  %lnot = xor i1 %tobool, true, !dbg !1579
  %lnot1 = xor i1 %lnot, true, !dbg !1580
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !1581
  ret i1 %lnot1, !dbg !1582
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1583 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1586, metadata !DIExpression()), !dbg !1588
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1587, metadata !DIExpression()), !dbg !1589
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1590
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1591
  %div = udiv i64 %1, 64, !dbg !1591
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1592
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !1593
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1594
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1595
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1596
  ret i1 %call, !dbg !1597
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1598 dso_local i32 @public_key_verify_signature(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pkcs7_verify_sig_chain(ptr noundef %pkcs7, ptr noundef %sinfo) #0 align 16 !dbg !1605 {
entry:
  %retval = alloca i32, align 4
  %pkcs7.addr = alloca ptr, align 8
  %sinfo.addr = alloca ptr, align 8
  %sig = alloca ptr, align 8
  %x509 = alloca ptr, align 8
  %p = alloca ptr, align 8
  %auth = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %tmp55 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %tmp106 = alloca i32, align 4
  store ptr %pkcs7, ptr %pkcs7.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pkcs7.addr, metadata !1607, metadata !DIExpression()), !dbg !1620
  store ptr %sinfo, ptr %sinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sinfo.addr, metadata !1608, metadata !DIExpression()), !dbg !1621
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #16, !dbg !1622
  call void @llvm.dbg.declare(metadata ptr %sig, metadata !1609, metadata !DIExpression()), !dbg !1623
  call void @llvm.lifetime.start.p0(i64 8, ptr %x509) #16, !dbg !1624
  call void @llvm.dbg.declare(metadata ptr %x509, metadata !1610, metadata !DIExpression()), !dbg !1625
  %0 = load ptr, ptr %sinfo.addr, align 8, !dbg !1626
  %signer = getelementptr inbounds %struct.pkcs7_signed_info, ptr %0, i32 0, i32 1, !dbg !1627
  %1 = load ptr, ptr %signer, align 8, !dbg !1627
  store ptr %1, ptr %x509, align 8, !dbg !1625
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !1624
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1611, metadata !DIExpression()), !dbg !1628
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth) #16, !dbg !1629
  call void @llvm.dbg.declare(metadata ptr %auth, metadata !1612, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1613, metadata !DIExpression()), !dbg !1632
  store i32 0, ptr %tmp, align 4, !dbg !1633
  %2 = load i32, ptr %tmp, align 4, !dbg !1636
  %3 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1637
  %certs = getelementptr inbounds %struct.pkcs7_message, ptr %3, i32 0, i32 0, !dbg !1639
  %4 = load ptr, ptr %certs, align 8, !dbg !1639
  store ptr %4, ptr %p, align 8, !dbg !1640
  br label %for.cond, !dbg !1641

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %p, align 8, !dbg !1642
  %tobool = icmp ne ptr %5, null, !dbg !1644
  br i1 %tobool, label %for.body, label %for.end, !dbg !1644

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8, !dbg !1645
  %seen = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 23, !dbg !1646
  store i8 0, ptr %seen, align 4, !dbg !1647
  br label %for.inc, !dbg !1645

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %p, align 8, !dbg !1648
  %next = getelementptr inbounds %struct.x509_certificate, ptr %7, i32 0, i32 0, !dbg !1649
  %8 = load ptr, ptr %next, align 8, !dbg !1649
  store ptr %8, ptr %p, align 8, !dbg !1650
  br label %for.cond, !dbg !1651, !llvm.loop !1652

for.end:                                          ; preds = %for.cond
  br label %for.cond1, !dbg !1654

for.cond1:                                        ; preds = %do.end110, %for.end
  store i32 0, ptr %tmp2, align 4, !dbg !1655
  %9 = load i32, ptr %tmp2, align 4, !dbg !1658
  %10 = load ptr, ptr %x509, align 8, !dbg !1659
  %seen3 = getelementptr inbounds %struct.x509_certificate, ptr %10, i32 0, i32 23, !dbg !1660
  store i8 1, ptr %seen3, align 4, !dbg !1661
  %11 = load ptr, ptr %x509, align 8, !dbg !1662
  %blacklisted = getelementptr inbounds %struct.x509_certificate, ptr %11, i32 0, i32 27, !dbg !1664
  %12 = load i8, ptr %blacklisted, align 8, !dbg !1664, !range !890, !noundef !891
  %tobool4 = trunc i8 %12 to i1, !dbg !1664
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1665

if.then:                                          ; preds = %for.cond1
  %13 = load ptr, ptr %sinfo.addr, align 8, !dbg !1666
  %blacklisted5 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %13, i32 0, i32 4, !dbg !1668
  store i8 1, ptr %blacklisted5, align 1, !dbg !1669
  %14 = load ptr, ptr %sinfo.addr, align 8, !dbg !1670
  %signer6 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %14, i32 0, i32 1, !dbg !1672
  %15 = load ptr, ptr %signer6, align 8, !dbg !1672
  store ptr %15, ptr %p, align 8, !dbg !1673
  br label %for.cond7, !dbg !1674

for.cond7:                                        ; preds = %for.inc10, %if.then
  %16 = load ptr, ptr %p, align 8, !dbg !1675
  %17 = load ptr, ptr %x509, align 8, !dbg !1677
  %cmp = icmp ne ptr %16, %17, !dbg !1678
  br i1 %cmp, label %for.body8, label %for.end12, !dbg !1679

for.body8:                                        ; preds = %for.cond7
  %18 = load ptr, ptr %p, align 8, !dbg !1680
  %blacklisted9 = getelementptr inbounds %struct.x509_certificate, ptr %18, i32 0, i32 27, !dbg !1681
  store i8 1, ptr %blacklisted9, align 8, !dbg !1682
  br label %for.inc10, !dbg !1680

for.inc10:                                        ; preds = %for.body8
  %19 = load ptr, ptr %p, align 8, !dbg !1683
  %signer11 = getelementptr inbounds %struct.x509_certificate, ptr %19, i32 0, i32 1, !dbg !1684
  %20 = load ptr, ptr %signer11, align 8, !dbg !1684
  store ptr %20, ptr %p, align 8, !dbg !1685
  br label %for.cond7, !dbg !1686, !llvm.loop !1687

for.end12:                                        ; preds = %for.cond7
  store i32 0, ptr %tmp13, align 4, !dbg !1689
  %21 = load i32, ptr %tmp13, align 4, !dbg !1692
  store i32 0, ptr %retval, align 4, !dbg !1693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1693

if.end:                                           ; preds = %for.cond1
  store i32 0, ptr %tmp14, align 4, !dbg !1694
  %22 = load i32, ptr %tmp14, align 4, !dbg !1697
  %23 = load ptr, ptr %x509, align 8, !dbg !1698
  %sig15 = getelementptr inbounds %struct.x509_certificate, ptr %23, i32 0, i32 3, !dbg !1699
  %24 = load ptr, ptr %sig15, align 8, !dbg !1699
  store ptr %24, ptr %sig, align 8, !dbg !1700
  %25 = load ptr, ptr %sig, align 8, !dbg !1701
  %auth_ids = getelementptr inbounds %struct.public_key_signature, ptr %25, i32 0, i32 0, !dbg !1703
  %arrayidx = getelementptr [3 x ptr], ptr %auth_ids, i64 0, i64 0, !dbg !1701
  %26 = load ptr, ptr %arrayidx, align 8, !dbg !1701
  %tobool16 = icmp ne ptr %26, null, !dbg !1701
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !1704

if.then17:                                        ; preds = %if.end
  store i32 0, ptr %tmp18, align 4, !dbg !1705
  %27 = load i32, ptr %tmp18, align 4, !dbg !1708
  br label %if.end19, !dbg !1709

if.end19:                                         ; preds = %if.then17, %if.end
  %28 = load ptr, ptr %sig, align 8, !dbg !1710
  %auth_ids20 = getelementptr inbounds %struct.public_key_signature, ptr %28, i32 0, i32 0, !dbg !1712
  %arrayidx21 = getelementptr [3 x ptr], ptr %auth_ids20, i64 0, i64 1, !dbg !1710
  %29 = load ptr, ptr %arrayidx21, align 8, !dbg !1710
  %tobool22 = icmp ne ptr %29, null, !dbg !1710
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !1713

if.then23:                                        ; preds = %if.end19
  store i32 0, ptr %tmp24, align 4, !dbg !1714
  %30 = load i32, ptr %tmp24, align 4, !dbg !1717
  br label %if.end25, !dbg !1718

if.end25:                                         ; preds = %if.then23, %if.end19
  %31 = load ptr, ptr %x509, align 8, !dbg !1719
  %self_signed = getelementptr inbounds %struct.x509_certificate, ptr %31, i32 0, i32 25, !dbg !1721
  %32 = load i8, ptr %self_signed, align 2, !dbg !1721, !range !890, !noundef !891
  %tobool26 = trunc i8 %32 to i1, !dbg !1721
  br i1 %tobool26, label %if.then27, label %if.end33, !dbg !1722

if.then27:                                        ; preds = %if.end25
  %33 = load ptr, ptr %x509, align 8, !dbg !1723
  %unsupported_sig = getelementptr inbounds %struct.x509_certificate, ptr %33, i32 0, i32 26, !dbg !1726
  %34 = load i8, ptr %unsupported_sig, align 1, !dbg !1726, !range !890, !noundef !891
  %tobool28 = trunc i8 %34 to i1, !dbg !1726
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1727

if.then29:                                        ; preds = %if.then27
  br label %unsupported_sig_in_x509, !dbg !1728

if.end30:                                         ; preds = %if.then27
  %35 = load ptr, ptr %x509, align 8, !dbg !1729
  %36 = load ptr, ptr %x509, align 8, !dbg !1730
  %signer31 = getelementptr inbounds %struct.x509_certificate, ptr %36, i32 0, i32 1, !dbg !1731
  store ptr %35, ptr %signer31, align 8, !dbg !1732
  store i32 0, ptr %tmp32, align 4, !dbg !1733
  %37 = load i32, ptr %tmp32, align 4, !dbg !1736
  store i32 0, ptr %retval, align 4, !dbg !1737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1737

if.end33:                                         ; preds = %if.end25
  %38 = load ptr, ptr %sig, align 8, !dbg !1738
  %auth_ids34 = getelementptr inbounds %struct.public_key_signature, ptr %38, i32 0, i32 0, !dbg !1739
  %arrayidx35 = getelementptr [3 x ptr], ptr %auth_ids34, i64 0, i64 0, !dbg !1738
  %39 = load ptr, ptr %arrayidx35, align 8, !dbg !1738
  store ptr %39, ptr %auth, align 8, !dbg !1740
  %40 = load ptr, ptr %auth, align 8, !dbg !1741
  %tobool36 = icmp ne ptr %40, null, !dbg !1741
  br i1 %tobool36, label %if.then37, label %if.else, !dbg !1743

if.then37:                                        ; preds = %if.end33
  store i32 0, ptr %tmp38, align 4, !dbg !1744
  %41 = load i32, ptr %tmp38, align 4, !dbg !1748
  %42 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1749
  %certs39 = getelementptr inbounds %struct.pkcs7_message, ptr %42, i32 0, i32 0, !dbg !1751
  %43 = load ptr, ptr %certs39, align 8, !dbg !1751
  store ptr %43, ptr %p, align 8, !dbg !1752
  br label %for.cond40, !dbg !1753

for.cond40:                                       ; preds = %for.inc46, %if.then37
  %44 = load ptr, ptr %p, align 8, !dbg !1754
  %tobool41 = icmp ne ptr %44, null, !dbg !1756
  br i1 %tobool41, label %for.body42, label %for.end48, !dbg !1756

for.body42:                                       ; preds = %for.cond40
  store i32 0, ptr %tmp43, align 4, !dbg !1757
  %45 = load i32, ptr %tmp43, align 4, !dbg !1761
  %46 = load ptr, ptr %p, align 8, !dbg !1762
  %id = getelementptr inbounds %struct.x509_certificate, ptr %46, i32 0, i32 6, !dbg !1764
  %47 = load ptr, ptr %id, align 8, !dbg !1764
  %48 = load ptr, ptr %auth, align 8, !dbg !1765
  %call = call zeroext i1 @asymmetric_key_id_same(ptr noundef %47, ptr noundef %48) #17, !dbg !1766
  br i1 %call, label %if.then44, label %if.end45, !dbg !1767

if.then44:                                        ; preds = %for.body42
  br label %found_issuer_check_skid, !dbg !1768

if.end45:                                         ; preds = %for.body42
  br label %for.inc46, !dbg !1769

for.inc46:                                        ; preds = %if.end45
  %49 = load ptr, ptr %p, align 8, !dbg !1770
  %next47 = getelementptr inbounds %struct.x509_certificate, ptr %49, i32 0, i32 0, !dbg !1771
  %50 = load ptr, ptr %next47, align 8, !dbg !1771
  store ptr %50, ptr %p, align 8, !dbg !1772
  br label %for.cond40, !dbg !1773, !llvm.loop !1774

for.end48:                                        ; preds = %for.cond40
  br label %if.end72, !dbg !1776

if.else:                                          ; preds = %if.end33
  %51 = load ptr, ptr %sig, align 8, !dbg !1777
  %auth_ids49 = getelementptr inbounds %struct.public_key_signature, ptr %51, i32 0, i32 0, !dbg !1779
  %arrayidx50 = getelementptr [3 x ptr], ptr %auth_ids49, i64 0, i64 1, !dbg !1777
  %52 = load ptr, ptr %arrayidx50, align 8, !dbg !1777
  %tobool51 = icmp ne ptr %52, null, !dbg !1777
  br i1 %tobool51, label %if.then52, label %if.end71, !dbg !1780

if.then52:                                        ; preds = %if.else
  %53 = load ptr, ptr %sig, align 8, !dbg !1781
  %auth_ids53 = getelementptr inbounds %struct.public_key_signature, ptr %53, i32 0, i32 0, !dbg !1783
  %arrayidx54 = getelementptr [3 x ptr], ptr %auth_ids53, i64 0, i64 1, !dbg !1781
  %54 = load ptr, ptr %arrayidx54, align 8, !dbg !1781
  store ptr %54, ptr %auth, align 8, !dbg !1784
  store i32 0, ptr %tmp55, align 4, !dbg !1785
  %55 = load i32, ptr %tmp55, align 4, !dbg !1788
  %56 = load ptr, ptr %pkcs7.addr, align 8, !dbg !1789
  %certs56 = getelementptr inbounds %struct.pkcs7_message, ptr %56, i32 0, i32 0, !dbg !1791
  %57 = load ptr, ptr %certs56, align 8, !dbg !1791
  store ptr %57, ptr %p, align 8, !dbg !1792
  br label %for.cond57, !dbg !1793

for.cond57:                                       ; preds = %for.inc68, %if.then52
  %58 = load ptr, ptr %p, align 8, !dbg !1794
  %tobool58 = icmp ne ptr %58, null, !dbg !1796
  br i1 %tobool58, label %for.body59, label %for.end70, !dbg !1796

for.body59:                                       ; preds = %for.cond57
  %59 = load ptr, ptr %p, align 8, !dbg !1797
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %59, i32 0, i32 7, !dbg !1800
  %60 = load ptr, ptr %skid, align 8, !dbg !1800
  %tobool60 = icmp ne ptr %60, null, !dbg !1797
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !1801

if.then61:                                        ; preds = %for.body59
  br label %for.inc68, !dbg !1802

if.end62:                                         ; preds = %for.body59
  store i32 0, ptr %tmp63, align 4, !dbg !1803
  %61 = load i32, ptr %tmp63, align 4, !dbg !1806
  %62 = load ptr, ptr %p, align 8, !dbg !1807
  %skid64 = getelementptr inbounds %struct.x509_certificate, ptr %62, i32 0, i32 7, !dbg !1809
  %63 = load ptr, ptr %skid64, align 8, !dbg !1809
  %64 = load ptr, ptr %auth, align 8, !dbg !1810
  %call65 = call zeroext i1 @asymmetric_key_id_same(ptr noundef %63, ptr noundef %64) #17, !dbg !1811
  br i1 %call65, label %if.then66, label %if.end67, !dbg !1812

if.then66:                                        ; preds = %if.end62
  br label %found_issuer, !dbg !1813

if.end67:                                         ; preds = %if.end62
  br label %for.inc68, !dbg !1814

for.inc68:                                        ; preds = %if.end67, %if.then61
  %65 = load ptr, ptr %p, align 8, !dbg !1815
  %next69 = getelementptr inbounds %struct.x509_certificate, ptr %65, i32 0, i32 0, !dbg !1816
  %66 = load ptr, ptr %next69, align 8, !dbg !1816
  store ptr %66, ptr %p, align 8, !dbg !1817
  br label %for.cond57, !dbg !1818, !llvm.loop !1819

for.end70:                                        ; preds = %for.cond57
  br label %if.end71, !dbg !1821

if.end71:                                         ; preds = %for.end70, %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %for.end48
  store i32 0, ptr %tmp73, align 4, !dbg !1822
  %67 = load i32, ptr %tmp73, align 4, !dbg !1825
  store i32 0, ptr %retval, align 4, !dbg !1826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1826

found_issuer_check_skid:                          ; preds = %if.then44
  call void @llvm.dbg.label(metadata !1614), !dbg !1827
  %68 = load ptr, ptr %sig, align 8, !dbg !1828
  %auth_ids74 = getelementptr inbounds %struct.public_key_signature, ptr %68, i32 0, i32 0, !dbg !1830
  %arrayidx75 = getelementptr [3 x ptr], ptr %auth_ids74, i64 0, i64 1, !dbg !1828
  %69 = load ptr, ptr %arrayidx75, align 8, !dbg !1828
  %tobool76 = icmp ne ptr %69, null, !dbg !1828
  br i1 %tobool76, label %land.lhs.true, label %if.end86, !dbg !1831

land.lhs.true:                                    ; preds = %found_issuer_check_skid
  %70 = load ptr, ptr %p, align 8, !dbg !1832
  %skid77 = getelementptr inbounds %struct.x509_certificate, ptr %70, i32 0, i32 7, !dbg !1833
  %71 = load ptr, ptr %skid77, align 8, !dbg !1833
  %72 = load ptr, ptr %sig, align 8, !dbg !1834
  %auth_ids78 = getelementptr inbounds %struct.public_key_signature, ptr %72, i32 0, i32 0, !dbg !1835
  %arrayidx79 = getelementptr [3 x ptr], ptr %auth_ids78, i64 0, i64 1, !dbg !1834
  %73 = load ptr, ptr %arrayidx79, align 8, !dbg !1834
  %call80 = call zeroext i1 @asymmetric_key_id_same(ptr noundef %71, ptr noundef %73) #17, !dbg !1836
  br i1 %call80, label %if.end86, label %if.then81, !dbg !1837

if.then81:                                        ; preds = %land.lhs.true
  br label %do.body, !dbg !1838

do.body:                                          ; preds = %if.then81
  br label %do.cond, !dbg !1841

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1841

do.end:                                           ; preds = %do.cond
  %74 = load ptr, ptr %sinfo.addr, align 8, !dbg !1838
  %index = getelementptr inbounds %struct.pkcs7_signed_info, ptr %74, i32 0, i32 2, !dbg !1838
  %75 = load i32, ptr %index, align 8, !dbg !1838
  %76 = load ptr, ptr %x509, align 8, !dbg !1838
  %index83 = getelementptr inbounds %struct.x509_certificate, ptr %76, i32 0, i32 22, !dbg !1838
  %77 = load i32, ptr %index83, align 8, !dbg !1838
  %78 = load ptr, ptr %p, align 8, !dbg !1838
  %index84 = getelementptr inbounds %struct.x509_certificate, ptr %78, i32 0, i32 22, !dbg !1838
  %79 = load i32, ptr %index84, align 8, !dbg !1838
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i32 noundef %75, i32 noundef %77, i32 noundef %79) #19, !dbg !1838
  store i32 %call85, ptr %tmp82, align 4, !dbg !1841
  %80 = load i32, ptr %tmp82, align 4, !dbg !1838
  store i32 -129, ptr %retval, align 4, !dbg !1843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1843

if.end86:                                         ; preds = %land.lhs.true, %found_issuer_check_skid
  br label %found_issuer, !dbg !1844

found_issuer:                                     ; preds = %if.end86, %if.then66
  call void @llvm.dbg.label(metadata !1618), !dbg !1845
  store i32 0, ptr %tmp87, align 4, !dbg !1846
  %81 = load i32, ptr %tmp87, align 4, !dbg !1849
  %82 = load ptr, ptr %p, align 8, !dbg !1850
  %seen88 = getelementptr inbounds %struct.x509_certificate, ptr %82, i32 0, i32 23, !dbg !1852
  %83 = load i8, ptr %seen88, align 4, !dbg !1852, !range !890, !noundef !891
  %tobool89 = trunc i8 %83 to i1, !dbg !1852
  br i1 %tobool89, label %if.then90, label %if.end97, !dbg !1853

if.then90:                                        ; preds = %found_issuer
  br label %do.body91, !dbg !1854

do.body91:                                        ; preds = %if.then90
  br label %do.cond92, !dbg !1857

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !1857

do.end93:                                         ; preds = %do.cond92
  %84 = load ptr, ptr %sinfo.addr, align 8, !dbg !1854
  %index95 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %84, i32 0, i32 2, !dbg !1854
  %85 = load i32, ptr %index95, align 8, !dbg !1854
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, i32 noundef %85) #19, !dbg !1854
  store i32 %call96, ptr %tmp94, align 4, !dbg !1857
  %86 = load i32, ptr %tmp94, align 4, !dbg !1854
  store i32 0, ptr %retval, align 4, !dbg !1859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1859

if.end97:                                         ; preds = %found_issuer
  %87 = load ptr, ptr %p, align 8, !dbg !1860
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %87, i32 0, i32 2, !dbg !1861
  %88 = load ptr, ptr %pub, align 8, !dbg !1861
  %89 = load ptr, ptr %x509, align 8, !dbg !1862
  %sig98 = getelementptr inbounds %struct.x509_certificate, ptr %89, i32 0, i32 3, !dbg !1863
  %90 = load ptr, ptr %sig98, align 8, !dbg !1863
  %call99 = call i32 @public_key_verify_signature(ptr noundef %88, ptr noundef %90) #17, !dbg !1864
  store i32 %call99, ptr %ret, align 4, !dbg !1865
  %91 = load i32, ptr %ret, align 4, !dbg !1866
  %cmp100 = icmp slt i32 %91, 0, !dbg !1868
  br i1 %cmp100, label %if.then101, label %if.end102, !dbg !1869

if.then101:                                       ; preds = %if.end97
  %92 = load i32, ptr %ret, align 4, !dbg !1870
  store i32 %92, ptr %retval, align 4, !dbg !1871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1871

if.end102:                                        ; preds = %if.end97
  %93 = load ptr, ptr %p, align 8, !dbg !1872
  %94 = load ptr, ptr %x509, align 8, !dbg !1873
  %signer103 = getelementptr inbounds %struct.x509_certificate, ptr %94, i32 0, i32 1, !dbg !1874
  store ptr %93, ptr %signer103, align 8, !dbg !1875
  %95 = load ptr, ptr %x509, align 8, !dbg !1876
  %96 = load ptr, ptr %p, align 8, !dbg !1878
  %cmp104 = icmp eq ptr %95, %96, !dbg !1879
  br i1 %cmp104, label %if.then105, label %if.end107, !dbg !1880

if.then105:                                       ; preds = %if.end102
  store i32 0, ptr %tmp106, align 4, !dbg !1881
  %97 = load i32, ptr %tmp106, align 4, !dbg !1885
  store i32 0, ptr %retval, align 4, !dbg !1886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1886

if.end107:                                        ; preds = %if.end102
  %98 = load ptr, ptr %p, align 8, !dbg !1887
  store ptr %98, ptr %x509, align 8, !dbg !1888
  br label %do.body108, !dbg !1889

do.body108:                                       ; preds = %if.end107
  call void @might_resched() #17, !dbg !1890
  br label %do.cond109, !dbg !1890

do.cond109:                                       ; preds = %do.body108
  br label %do.end110, !dbg !1890

do.end110:                                        ; preds = %do.cond109
  br label %for.cond1, !dbg !1892, !llvm.loop !1893

unsupported_sig_in_x509:                          ; preds = %if.then29
  call void @llvm.dbg.label(metadata !1619), !dbg !1896
  store i32 0, ptr %retval, align 4, !dbg !1897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1897

cleanup:                                          ; preds = %unsupported_sig_in_x509, %if.then105, %if.then101, %do.end93, %do.end, %if.end72, %if.end30, %for.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !1898
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth) #16, !dbg !1898
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !1898
  call void @llvm.lifetime.end.p0(i64 8, ptr %x509) #16, !dbg !1898
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #16, !dbg !1898
  %99 = load i32, ptr %retval, align 4, !dbg !1898
  ret i32 %99, !dbg !1898
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1899 dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #12 align 16 !dbg !1904 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1912, metadata !DIExpression()), !dbg !1914
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1913, metadata !DIExpression()), !dbg !1915
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1916
  %1 = load i64, ptr %size.addr, align 8, !dbg !1917
  %conv = trunc i64 %1 to i32, !dbg !1917
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !1918
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1919
  %3 = load i64, ptr %size.addr, align 8, !dbg !1919
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !1919
  ret void, !dbg !1920
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1921 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1924, metadata !DIExpression()), !dbg !1926
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1925, metadata !DIExpression()), !dbg !1927
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1928
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1929
  br i1 %1, label %cond.true, label %cond.false, !dbg !1929

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1930
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1931
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1932
  %conv = zext i1 %call to i32, !dbg !1932
  br label %cond.end, !dbg !1929

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1933
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1934
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !1935
  %conv2 = zext i1 %call1 to i32, !dbg !1935
  br label %cond.end, !dbg !1929

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1929
  %tobool = icmp ne i32 %cond, 0, !dbg !1929
  ret i1 %tobool, !dbg !1936
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !1937 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1942, metadata !DIExpression()), !dbg !1944
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1943, metadata !DIExpression()), !dbg !1945
  ret i1 true, !dbg !1946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !1947 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1952, metadata !DIExpression()), !dbg !1955
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1953, metadata !DIExpression()), !dbg !1956
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1954, metadata !DIExpression()), !dbg !1957
  ret void, !dbg !1958
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1959 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1963, metadata !DIExpression()), !dbg !1965
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1964, metadata !DIExpression()), !dbg !1966
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1967
  %and = and i64 %0, 63, !dbg !1968
  %shl = shl i64 1, %and, !dbg !1969
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1970
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1971
  %shr = ashr i64 %2, 6, !dbg !1972
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1970
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1970
  %and1 = and i64 %shl, %3, !dbg !1973
  %cmp = icmp ne i64 %and1, 0, !dbg !1974
  ret i1 %cmp, !dbg !1975
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1976 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1978, metadata !DIExpression()), !dbg !1981
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1979, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !1983
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1980, metadata !DIExpression()), !dbg !1984
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1985
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1986
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !1987, !srcloc !1988
  %3 = icmp ult i8 %2, 2, !dbg !1987
  call void @llvm.assume(i1 %3), !dbg !1987
  store i8 %2, ptr %oldbit, align 1, !dbg !1987
  %4 = load i8, ptr %oldbit, align 1, !dbg !1989, !range !890, !noundef !891
  %tobool = trunc i8 %4 to i1, !dbg !1989
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !1990
  ret i1 %tobool, !dbg !1991
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #12 align 16 !dbg !444 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !1992
  %0 = load ptr, ptr %tmp, align 8, !dbg !1992
  %call = call i32 %0() #17, !dbg !1994
  ret void, !dbg !1995
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!31}
!llvm.module.flags = !{!448, !449, !450, !451, !452, !453, !454, !455}
!llvm.ident = !{!456}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 406, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "crypto/asymmetric_keys/pkcs7_verify.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "314648d7d8f999ecb38c0d9c24cbb7a3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 46)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 410, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 45)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 416, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 48)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 420, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 51)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 426, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 47)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !19, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pkcs7_verify120", scope: !31, file: !2, line: 462, type: !220, isLocal: true, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/asymmetric_keys/.pkcs7_verify.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/asymmetric_keys/pkcs7_message\22 -D KBUILD_BASENAME=\22pkcs7_verify\22 -D KBUILD_MODNAME=\22pkcs7_message\22 -D __KBUILD_MODNAME=kmod_pkcs7_message -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/asymmetric_keys/pkcs7_verify.ll crypto/asymmetric_keys/pkcs7_verify.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !32, retainedTypes: !219, globals: !402, splitDebugInlining: false, nameTableKind: None)
!32 = !{!33, !137, !161, !171, !176, !209}
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "OID", file: !34, line: 19, baseType: !35, size: 32, elements: !36)
!34 = !DIFile(filename: "./include/linux/oid_registry.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d5d57e234dafd05fd37f1d558d9555b7")
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!37 = !DIEnumerator(name: "OID_id_dsa_with_sha1", value: 0)
!38 = !DIEnumerator(name: "OID_id_dsa", value: 1)
!39 = !DIEnumerator(name: "OID_id_ecPublicKey", value: 2)
!40 = !DIEnumerator(name: "OID_id_prime192v1", value: 3)
!41 = !DIEnumerator(name: "OID_id_prime256v1", value: 4)
!42 = !DIEnumerator(name: "OID_id_ecdsa_with_sha1", value: 5)
!43 = !DIEnumerator(name: "OID_id_ecdsa_with_sha224", value: 6)
!44 = !DIEnumerator(name: "OID_id_ecdsa_with_sha256", value: 7)
!45 = !DIEnumerator(name: "OID_id_ecdsa_with_sha384", value: 8)
!46 = !DIEnumerator(name: "OID_id_ecdsa_with_sha512", value: 9)
!47 = !DIEnumerator(name: "OID_rsaEncryption", value: 10)
!48 = !DIEnumerator(name: "OID_md2WithRSAEncryption", value: 11)
!49 = !DIEnumerator(name: "OID_md3WithRSAEncryption", value: 12)
!50 = !DIEnumerator(name: "OID_md4WithRSAEncryption", value: 13)
!51 = !DIEnumerator(name: "OID_sha1WithRSAEncryption", value: 14)
!52 = !DIEnumerator(name: "OID_sha256WithRSAEncryption", value: 15)
!53 = !DIEnumerator(name: "OID_sha384WithRSAEncryption", value: 16)
!54 = !DIEnumerator(name: "OID_sha512WithRSAEncryption", value: 17)
!55 = !DIEnumerator(name: "OID_sha224WithRSAEncryption", value: 18)
!56 = !DIEnumerator(name: "OID_data", value: 19)
!57 = !DIEnumerator(name: "OID_signed_data", value: 20)
!58 = !DIEnumerator(name: "OID_email_address", value: 21)
!59 = !DIEnumerator(name: "OID_contentType", value: 22)
!60 = !DIEnumerator(name: "OID_messageDigest", value: 23)
!61 = !DIEnumerator(name: "OID_signingTime", value: 24)
!62 = !DIEnumerator(name: "OID_smimeCapabilites", value: 25)
!63 = !DIEnumerator(name: "OID_smimeAuthenticatedAttrs", value: 26)
!64 = !DIEnumerator(name: "OID_md2", value: 27)
!65 = !DIEnumerator(name: "OID_md4", value: 28)
!66 = !DIEnumerator(name: "OID_md5", value: 29)
!67 = !DIEnumerator(name: "OID_mskrb5", value: 30)
!68 = !DIEnumerator(name: "OID_krb5", value: 31)
!69 = !DIEnumerator(name: "OID_krb5u2u", value: 32)
!70 = !DIEnumerator(name: "OID_msIndirectData", value: 33)
!71 = !DIEnumerator(name: "OID_msStatementType", value: 34)
!72 = !DIEnumerator(name: "OID_msSpOpusInfo", value: 35)
!73 = !DIEnumerator(name: "OID_msPeImageDataObjId", value: 36)
!74 = !DIEnumerator(name: "OID_msIndividualSPKeyPurpose", value: 37)
!75 = !DIEnumerator(name: "OID_msOutlookExpress", value: 38)
!76 = !DIEnumerator(name: "OID_ntlmssp", value: 39)
!77 = !DIEnumerator(name: "OID_negoex", value: 40)
!78 = !DIEnumerator(name: "OID_spnego", value: 41)
!79 = !DIEnumerator(name: "OID_IAKerb", value: 42)
!80 = !DIEnumerator(name: "OID_PKU2U", value: 43)
!81 = !DIEnumerator(name: "OID_Scram", value: 44)
!82 = !DIEnumerator(name: "OID_certAuthInfoAccess", value: 45)
!83 = !DIEnumerator(name: "OID_sha1", value: 46)
!84 = !DIEnumerator(name: "OID_id_ansip384r1", value: 47)
!85 = !DIEnumerator(name: "OID_sha256", value: 48)
!86 = !DIEnumerator(name: "OID_sha384", value: 49)
!87 = !DIEnumerator(name: "OID_sha512", value: 50)
!88 = !DIEnumerator(name: "OID_sha224", value: 51)
!89 = !DIEnumerator(name: "OID_commonName", value: 52)
!90 = !DIEnumerator(name: "OID_surname", value: 53)
!91 = !DIEnumerator(name: "OID_countryName", value: 54)
!92 = !DIEnumerator(name: "OID_locality", value: 55)
!93 = !DIEnumerator(name: "OID_stateOrProvinceName", value: 56)
!94 = !DIEnumerator(name: "OID_organizationName", value: 57)
!95 = !DIEnumerator(name: "OID_organizationUnitName", value: 58)
!96 = !DIEnumerator(name: "OID_title", value: 59)
!97 = !DIEnumerator(name: "OID_description", value: 60)
!98 = !DIEnumerator(name: "OID_name", value: 61)
!99 = !DIEnumerator(name: "OID_givenName", value: 62)
!100 = !DIEnumerator(name: "OID_initials", value: 63)
!101 = !DIEnumerator(name: "OID_generationalQualifier", value: 64)
!102 = !DIEnumerator(name: "OID_subjectKeyIdentifier", value: 65)
!103 = !DIEnumerator(name: "OID_keyUsage", value: 66)
!104 = !DIEnumerator(name: "OID_subjectAltName", value: 67)
!105 = !DIEnumerator(name: "OID_issuerAltName", value: 68)
!106 = !DIEnumerator(name: "OID_basicConstraints", value: 69)
!107 = !DIEnumerator(name: "OID_crlDistributionPoints", value: 70)
!108 = !DIEnumerator(name: "OID_certPolicies", value: 71)
!109 = !DIEnumerator(name: "OID_authorityKeyIdentifier", value: 72)
!110 = !DIEnumerator(name: "OID_extKeyUsage", value: 73)
!111 = !DIEnumerator(name: "OID_NetlogonMechanism", value: 74)
!112 = !DIEnumerator(name: "OID_appleLocalKdcSupported", value: 75)
!113 = !DIEnumerator(name: "OID_gostCPSignA", value: 76)
!114 = !DIEnumerator(name: "OID_gostCPSignB", value: 77)
!115 = !DIEnumerator(name: "OID_gostCPSignC", value: 78)
!116 = !DIEnumerator(name: "OID_gost2012PKey256", value: 79)
!117 = !DIEnumerator(name: "OID_gost2012PKey512", value: 80)
!118 = !DIEnumerator(name: "OID_gost2012Digest256", value: 81)
!119 = !DIEnumerator(name: "OID_gost2012Digest512", value: 82)
!120 = !DIEnumerator(name: "OID_gost2012Signature256", value: 83)
!121 = !DIEnumerator(name: "OID_gost2012Signature512", value: 84)
!122 = !DIEnumerator(name: "OID_gostTC26Sign256A", value: 85)
!123 = !DIEnumerator(name: "OID_gostTC26Sign256B", value: 86)
!124 = !DIEnumerator(name: "OID_gostTC26Sign256C", value: 87)
!125 = !DIEnumerator(name: "OID_gostTC26Sign256D", value: 88)
!126 = !DIEnumerator(name: "OID_gostTC26Sign512A", value: 89)
!127 = !DIEnumerator(name: "OID_gostTC26Sign512B", value: 90)
!128 = !DIEnumerator(name: "OID_gostTC26Sign512C", value: 91)
!129 = !DIEnumerator(name: "OID_sm2", value: 92)
!130 = !DIEnumerator(name: "OID_sm3", value: 93)
!131 = !DIEnumerator(name: "OID_SM2_with_SM3", value: 94)
!132 = !DIEnumerator(name: "OID_sm3WithRSAEncryption", value: 95)
!133 = !DIEnumerator(name: "OID_TPMLoadableKey", value: 96)
!134 = !DIEnumerator(name: "OID_TPMImportableKey", value: 97)
!135 = !DIEnumerator(name: "OID_TPMSealedData", value: 98)
!136 = !DIEnumerator(name: "OID__NR", value: 99)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hash_algo", file: !138, line: 17, baseType: !35, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/uapi/linux/hash_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3cb5a3e011358665f20b25f304358fc")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!140 = !DIEnumerator(name: "HASH_ALGO_MD4", value: 0)
!141 = !DIEnumerator(name: "HASH_ALGO_MD5", value: 1)
!142 = !DIEnumerator(name: "HASH_ALGO_SHA1", value: 2)
!143 = !DIEnumerator(name: "HASH_ALGO_RIPE_MD_160", value: 3)
!144 = !DIEnumerator(name: "HASH_ALGO_SHA256", value: 4)
!145 = !DIEnumerator(name: "HASH_ALGO_SHA384", value: 5)
!146 = !DIEnumerator(name: "HASH_ALGO_SHA512", value: 6)
!147 = !DIEnumerator(name: "HASH_ALGO_SHA224", value: 7)
!148 = !DIEnumerator(name: "HASH_ALGO_RIPE_MD_128", value: 8)
!149 = !DIEnumerator(name: "HASH_ALGO_RIPE_MD_256", value: 9)
!150 = !DIEnumerator(name: "HASH_ALGO_RIPE_MD_320", value: 10)
!151 = !DIEnumerator(name: "HASH_ALGO_WP_256", value: 11)
!152 = !DIEnumerator(name: "HASH_ALGO_WP_384", value: 12)
!153 = !DIEnumerator(name: "HASH_ALGO_WP_512", value: 13)
!154 = !DIEnumerator(name: "HASH_ALGO_TGR_128", value: 14)
!155 = !DIEnumerator(name: "HASH_ALGO_TGR_160", value: 15)
!156 = !DIEnumerator(name: "HASH_ALGO_TGR_192", value: 16)
!157 = !DIEnumerator(name: "HASH_ALGO_SM3_256", value: 17)
!158 = !DIEnumerator(name: "HASH_ALGO_STREEBOG_256", value: 18)
!159 = !DIEnumerator(name: "HASH_ALGO_STREEBOG_512", value: 19)
!160 = !DIEnumerator(name: "HASH_ALGO__LAST", value: 20)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_being_used_for", file: !162, line: 32, baseType: !35, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/verification.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0be59001e400d3f62940c7afe8f81f63")
!163 = !{!164, !165, !166, !167, !168, !169, !170}
!164 = !DIEnumerator(name: "VERIFYING_MODULE_SIGNATURE", value: 0)
!165 = !DIEnumerator(name: "VERIFYING_FIRMWARE_SIGNATURE", value: 1)
!166 = !DIEnumerator(name: "VERIFYING_KEXEC_PE_SIGNATURE", value: 2)
!167 = !DIEnumerator(name: "VERIFYING_KEY_SIGNATURE", value: 3)
!168 = !DIEnumerator(name: "VERIFYING_KEY_SELF_SIGNATURE", value: 4)
!169 = !DIEnumerator(name: "VERIFYING_UNSPECIFIED_SIGNATURE", value: 5)
!170 = !DIEnumerator(name: "NR__KEY_BEING_USED_FOR", value: 6)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 10, baseType: !35, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!173 = !{!174, !175}
!174 = !DIEnumerator(name: "false", value: 0)
!175 = !DIEnumerator(name: "true", value: 1)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asn1_tag", file: !177, line: 28, baseType: !35, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/asn1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bfb79e98a58ecc0214aefb4ff1311213")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!179 = !DIEnumerator(name: "ASN1_EOC", value: 0)
!180 = !DIEnumerator(name: "ASN1_BOOL", value: 1)
!181 = !DIEnumerator(name: "ASN1_INT", value: 2)
!182 = !DIEnumerator(name: "ASN1_BTS", value: 3)
!183 = !DIEnumerator(name: "ASN1_OTS", value: 4)
!184 = !DIEnumerator(name: "ASN1_NULL", value: 5)
!185 = !DIEnumerator(name: "ASN1_OID", value: 6)
!186 = !DIEnumerator(name: "ASN1_ODE", value: 7)
!187 = !DIEnumerator(name: "ASN1_EXT", value: 8)
!188 = !DIEnumerator(name: "ASN1_REAL", value: 9)
!189 = !DIEnumerator(name: "ASN1_ENUM", value: 10)
!190 = !DIEnumerator(name: "ASN1_EPDV", value: 11)
!191 = !DIEnumerator(name: "ASN1_UTF8STR", value: 12)
!192 = !DIEnumerator(name: "ASN1_RELOID", value: 13)
!193 = !DIEnumerator(name: "ASN1_SEQ", value: 16)
!194 = !DIEnumerator(name: "ASN1_SET", value: 17)
!195 = !DIEnumerator(name: "ASN1_NUMSTR", value: 18)
!196 = !DIEnumerator(name: "ASN1_PRNSTR", value: 19)
!197 = !DIEnumerator(name: "ASN1_TEXSTR", value: 20)
!198 = !DIEnumerator(name: "ASN1_VIDSTR", value: 21)
!199 = !DIEnumerator(name: "ASN1_IA5STR", value: 22)
!200 = !DIEnumerator(name: "ASN1_UNITIM", value: 23)
!201 = !DIEnumerator(name: "ASN1_GENTIM", value: 24)
!202 = !DIEnumerator(name: "ASN1_GRASTR", value: 25)
!203 = !DIEnumerator(name: "ASN1_VISSTR", value: 26)
!204 = !DIEnumerator(name: "ASN1_GENSTR", value: 27)
!205 = !DIEnumerator(name: "ASN1_UNISTR", value: 28)
!206 = !DIEnumerator(name: "ASN1_CHRSTR", value: 29)
!207 = !DIEnumerator(name: "ASN1_BMPSTR", value: 30)
!208 = !DIEnumerator(name: "ASN1_LONG_TAG", value: 31)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !210, line: 364, baseType: !35, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!211 = !{!212, !213, !214, !215, !216, !217, !218}
!212 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!213 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!214 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!215 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!216 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!217 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!218 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!219 = !{!220, !221, !223, !224, !225, !398, !399, !401}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !222, line: 154, baseType: !35)
!222 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!223 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_alg", file: !227, line: 225, size: 3904, elements: !228)
!227 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!228 = !{!229, !343, !347, !351, !355, !356, !360, !366, !370, !374, !378, !382, !383}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !226, file: !227, line: 226, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !234}
!233 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shash_desc", file: !227, line: 175, size: 64, elements: !236)
!236 = !{!237, !342}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !235, file: !227, line: 176, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !227, line: 268, size: 320, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !239, file: !227, line: 269, baseType: !35, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !239, file: !227, line: 270, baseType: !243, size: 256, offset: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !244, line: 422, size: 256, elements: !245)
!244 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!245 = !{!246, !256, !261, !262, !267, !338}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !243, file: !244, line: 423, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !248, line: 113, baseType: !249)
!248 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !248, line: 111, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !249, file: !248, line: 112, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !222, line: 174, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 172, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !253, file: !222, line: 173, baseType: !233, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !243, file: !244, line: 425, baseType: !257, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !258, line: 21, baseType: !259)
!258 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !260, line: 27, baseType: !35)
!260 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !243, file: !244, line: 427, baseType: !233, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !243, file: !244, line: 429, baseType: !263, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !243, file: !244, line: 431, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !244, line: 343, size: 3072, align: 64, elements: !270)
!270 = !{!271, !277, !278, !279, !280, !281, !282, !283, !284, !288, !289, !293, !325, !329, !330, !334}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !269, file: !244, line: 344, baseType: !272, size: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !222, line: 190, size: 128, elements: !273)
!273 = !{!274, !276}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !222, line: 191, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !272, file: !222, line: 191, baseType: !275, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !269, file: !244, line: 345, baseType: !272, size: 128, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !269, file: !244, line: 347, baseType: !257, size: 32, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !269, file: !244, line: 348, baseType: !35, size: 32, offset: 288)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !269, file: !244, line: 349, baseType: !35, size: 32, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !269, file: !244, line: 350, baseType: !35, size: 32, offset: 352)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !269, file: !244, line: 352, baseType: !233, size: 32, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !269, file: !244, line: 353, baseType: !247, size: 32, offset: 416)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !269, file: !244, line: 355, baseType: !285, size: 1024, offset: 448)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !269, file: !244, line: 356, baseType: !285, size: 1024, offset: 1472)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !269, file: !244, line: 358, baseType: !290, size: 64, offset: 2496)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !244, line: 160, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !269, file: !244, line: 363, baseType: !294, size: 256, offset: 2560)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !244, line: 360, size: 256, elements: !295)
!295 = !{!296, !316}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !294, file: !244, line: 361, baseType: !297, size: 256)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !244, line: 235, size: 256, elements: !298)
!298 = !{!299, !300, !301, !310, !315}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !297, file: !244, line: 236, baseType: !35, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !297, file: !244, line: 237, baseType: !35, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !297, file: !244, line: 238, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!233, !266, !305, !35}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !258, line: 17, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !260, line: 21, baseType: !309)
!309 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !297, file: !244, line: 240, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !266, !314, !305}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !297, file: !244, line: 241, baseType: !311, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !294, file: !244, line: 362, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !244, line: 255, size: 128, elements: !318)
!318 = !{!319, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !317, file: !244, line: 256, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!233, !266, !305, !35, !314, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !317, file: !244, line: 258, baseType: !320, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !269, file: !244, line: 365, baseType: !326, size: 64, offset: 2816)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!233, !266}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !269, file: !244, line: 366, baseType: !263, size: 64, offset: 2880)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !269, file: !244, line: 367, baseType: !331, size: 64, offset: 2944)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !268}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !269, file: !244, line: 369, baseType: !335, size: 64, offset: 3008)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !337, line: 103, flags: DIFlagFwdDecl)
!337 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !243, file: !244, line: 433, baseType: !339, align: 64, offset: 256)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: -1)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !235, file: !227, line: 177, baseType: !339, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !226, file: !227, line: 227, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!233, !234, !305, !35}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !226, file: !227, line: 229, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!233, !234, !314}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !226, file: !227, line: 230, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!233, !234, !305, !35, !314}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !226, file: !227, line: 232, baseType: !352, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !226, file: !227, line: 234, baseType: !357, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!233, !234, !220}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !226, file: !227, line: 235, baseType: !361, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!233, !234, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !226, file: !227, line: 236, baseType: !367, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!233, !238, !305, !35}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "init_tfm", scope: !226, file: !227, line: 238, baseType: !371, size: 64, offset: 512)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!233, !238}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "exit_tfm", scope: !226, file: !227, line: 239, baseType: !375, size: 64, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !238}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "clone_tfm", scope: !226, file: !227, line: 240, baseType: !379, size: 64, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!233, !238, !238}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !226, file: !227, line: 242, baseType: !35, size: 32, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !227, line: 244, baseType: !384, size: 3136, offset: 768)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !227, line: 244, size: 3136, elements: !385)
!385 = !{!386, !392}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !227, line: 245, baseType: !387, size: 3136)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !384, file: !227, line: 245, size: 3136, elements: !388)
!388 = !{!389, !390, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !387, file: !227, line: 245, baseType: !35, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !387, file: !227, line: 245, baseType: !35, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !387, file: !227, line: 245, baseType: !269, size: 3072, align: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "halg", scope: !384, file: !227, line: 246, baseType: !393, size: 3136)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_alg_common", file: !227, line: 70, size: 3136, elements: !394)
!394 = !{!395, !396, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !393, file: !227, line: 70, baseType: !35, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !393, file: !227, line: 70, baseType: !35, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !393, file: !227, line: 70, baseType: !269, size: 3072, align: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !222, line: 42, baseType: !223)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!402 = !{!0, !7, !12, !17, !22, !27, !29, !403, !408, !410, !415, !420, !422, !427, !432, !437, !442}
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 481, type: !405, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 32)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pkcs7_supply_detached_data121", scope: !31, file: !2, line: 488, type: !220, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 35)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 43)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !24, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !210, line: 480, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 21)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 58)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 67)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 44)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !444, file: !445, line: 112, type: !220, isLocal: true, isDefinition: true)
!444 = distinct !DISubprogram(name: "might_resched", scope: !445, file: !445, line: 110, type: !446, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31)
!445 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!446 = !DISubroutineType(types: !447)
!447 = !{null}
!448 = !{i32 7, !"Dwarf Version", i32 5}
!449 = !{i32 2, !"Debug Info Version", i32 3}
!450 = !{i32 1, !"wchar_size", i32 2}
!451 = !{i32 8, !"cf-protection-branch", i32 1}
!452 = !{i32 4, !"function_return_thunk_extern", i32 1}
!453 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!454 = !{i32 1, !"Code Model", i32 2}
!455 = !{i32 1, !"override-stack-alignment", i32 8}
!456 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!457 = distinct !DISubprogram(name: "pkcs7_get_digest", scope: !2, file: !2, line: 125, type: !458, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !571)
!458 = !DISubroutineType(types: !459)
!459 = !{!233, !460, !568, !569, !570}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkcs7_message", file: !462, line: 52, size: 448, elements: !463)
!462 = !DIFile(filename: "crypto/asymmetric_keys/pkcs7_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5504888971907a15ec7b804885f1377c")
!463 = !{!464, !541, !542, !558, !559, !560, !561, !566, !567}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "certs", scope: !461, file: !462, line: 53, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_certificate", file: !467, line: 12, size: 1344, elements: !468)
!467 = !DIFile(filename: "crypto/asymmetric_keys/x509_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "706a2c38e72925540b7c53948fb9b13f")
!468 = !{!469, !470, !471, !489, !512, !514, !515, !516, !517, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !467, line: 13, baseType: !465, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !466, file: !467, line: 14, baseType: !465, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !466, file: !467, line: 15, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key", file: !474, line: 22, size: 448, elements: !475)
!474 = !DIFile(filename: "./include/crypto/public_key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bba3709dd387ae2fcb2dcdb4db69068a")
!475 = !{!476, !477, !478, !479, !480, !481, !484, !487, !488}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !473, file: !474, line: 23, baseType: !220, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !473, file: !474, line: 24, baseType: !257, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !473, file: !474, line: 25, baseType: !33, size: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !473, file: !474, line: 26, baseType: !220, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "paramlen", scope: !473, file: !474, line: 27, baseType: !257, size: 32, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "key_is_private", scope: !473, file: !474, line: 28, baseType: !482, size: 8, offset: 224)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !222, line: 35, baseType: !483)
!483 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "id_type", scope: !473, file: !474, line: 29, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !473, file: !474, line: 30, baseType: !485, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "key_eflags", scope: !473, file: !474, line: 31, baseType: !223, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !466, file: !467, line: 16, baseType: !490, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "public_key_signature", file: !474, line: 42, size: 576, elements: !492)
!492 = !{!493, !505, !506, !507, !508, !509, !510, !511}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ids", scope: !491, file: !474, line: 43, baseType: !494, size: 192)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 192, elements: !503)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asymmetric_key_id", file: !497, line: 50, size: 16, elements: !498)
!497 = !DIFile(filename: "./include/keys/asymmetric-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3daffae8091b612618c69279094a4c0")
!498 = !{!499, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !496, file: !497, line: 51, baseType: !500, size: 16)
!500 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !496, file: !497, line: 52, baseType: !502, offset: 16)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, elements: !340)
!503 = !{!504}
!504 = !DISubrange(count: 3)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !491, file: !474, line: 44, baseType: !314, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !491, file: !474, line: 45, baseType: !314, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_size", scope: !491, file: !474, line: 46, baseType: !257, size: 32, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "digest_size", scope: !491, file: !474, line: 47, baseType: !257, size: 32, offset: 352)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_algo", scope: !491, file: !474, line: 48, baseType: !485, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !491, file: !474, line: 49, baseType: !485, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !491, file: !474, line: 50, baseType: !485, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !466, file: !467, line: 17, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !466, file: !467, line: 18, baseType: !513, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !466, file: !467, line: 19, baseType: !495, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !466, file: !467, line: 20, baseType: !495, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "valid_from", scope: !466, file: !467, line: 21, baseType: !518, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !519, line: 8, baseType: !520)
!519 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !260, line: 30, baseType: !521)
!521 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "valid_to", scope: !466, file: !467, line: 22, baseType: !518, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tbs", scope: !466, file: !467, line: 23, baseType: !364, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tbs_size", scope: !466, file: !467, line: 24, baseType: !35, size: 32, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sig_size", scope: !466, file: !467, line: 25, baseType: !35, size: 32, offset: 736)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sig", scope: !466, file: !467, line: 26, baseType: !364, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial", scope: !466, file: !467, line: 27, baseType: !364, size: 64, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "raw_serial_size", scope: !466, file: !467, line: 28, baseType: !35, size: 32, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer_size", scope: !466, file: !467, line: 29, baseType: !35, size: 32, offset: 928)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "raw_issuer", scope: !466, file: !467, line: 30, baseType: !364, size: 64, offset: 960)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "raw_subject", scope: !466, file: !467, line: 31, baseType: !364, size: 64, offset: 1024)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "raw_subject_size", scope: !466, file: !467, line: 32, baseType: !35, size: 32, offset: 1088)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid_size", scope: !466, file: !467, line: 33, baseType: !35, size: 32, offset: 1120)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "raw_skid", scope: !466, file: !467, line: 34, baseType: !364, size: 64, offset: 1152)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !466, file: !467, line: 35, baseType: !35, size: 32, offset: 1216)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "seen", scope: !466, file: !467, line: 36, baseType: !482, size: 8, offset: 1248)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "verified", scope: !466, file: !467, line: 37, baseType: !482, size: 8, offset: 1256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "self_signed", scope: !466, file: !467, line: 38, baseType: !482, size: 8, offset: 1264)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_sig", scope: !466, file: !467, line: 39, baseType: !482, size: 8, offset: 1272)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted", scope: !466, file: !467, line: 40, baseType: !482, size: 8, offset: 1280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !461, file: !462, line: 54, baseType: !465, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "signed_infos", scope: !461, file: !462, line: 55, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkcs7_signed_info", file: !462, line: 17, size: 576, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !544, file: !462, line: 18, baseType: !543, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !544, file: !462, line: 19, baseType: !465, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !544, file: !462, line: 20, baseType: !35, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported_crypto", scope: !544, file: !462, line: 21, baseType: !482, size: 8, offset: 160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted", scope: !544, file: !462, line: 22, baseType: !482, size: 8, offset: 168)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "msgdigest", scope: !544, file: !462, line: 25, baseType: !364, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "msgdigest_len", scope: !544, file: !462, line: 26, baseType: !35, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "authattrs_len", scope: !544, file: !462, line: 29, baseType: !35, size: 32, offset: 288)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "authattrs", scope: !544, file: !462, line: 30, baseType: !364, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "aa_set", scope: !544, file: !462, line: 31, baseType: !223, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "signing_time", scope: !544, file: !462, line: 38, baseType: !518, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !544, file: !462, line: 49, baseType: !490, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !461, file: !462, line: 56, baseType: !307, size: 8, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "have_authattrs", scope: !461, file: !462, line: 57, baseType: !482, size: 8, offset: 200)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !461, file: !462, line: 60, baseType: !33, size: 32, offset: 224)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !461, file: !462, line: 61, baseType: !562, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !222, line: 61, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !564, line: 72, baseType: !565)
!564 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !564, line: 16, baseType: !223)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data_hdrlen", scope: !461, file: !462, line: 62, baseType: !562, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !461, file: !462, line: 63, baseType: !364, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!571 = !{!572, !573, !574, !575, !576, !577, !578}
!572 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !457, file: !2, line: 125, type: !460)
!573 = !DILocalVariable(name: "buf", arg: 2, scope: !457, file: !2, line: 125, type: !568)
!574 = !DILocalVariable(name: "len", arg: 3, scope: !457, file: !2, line: 125, type: !569)
!575 = !DILocalVariable(name: "hash_algo", arg: 4, scope: !457, file: !2, line: 126, type: !570)
!576 = !DILocalVariable(name: "sinfo", scope: !457, file: !2, line: 128, type: !543)
!577 = !DILocalVariable(name: "i", scope: !457, file: !2, line: 129, type: !233)
!578 = !DILocalVariable(name: "ret", scope: !457, file: !2, line: 129, type: !233)
!579 = !DILocation(line: 125, column: 44, scope: !457)
!580 = !DILocation(line: 125, column: 62, scope: !457)
!581 = !DILocation(line: 125, column: 72, scope: !457)
!582 = !DILocation(line: 126, column: 24, scope: !457)
!583 = !DILocation(line: 128, column: 2, scope: !457)
!584 = !DILocation(line: 128, column: 28, scope: !457)
!585 = !DILocation(line: 128, column: 36, scope: !457)
!586 = !DILocation(line: 128, column: 43, scope: !457)
!587 = !DILocation(line: 129, column: 2, scope: !457)
!588 = !DILocation(line: 129, column: 6, scope: !457)
!589 = !DILocation(line: 129, column: 9, scope: !457)
!590 = !DILocation(line: 134, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !457, file: !2, line: 134, column: 6)
!592 = !DILocation(line: 134, column: 12, scope: !591)
!593 = !DILocation(line: 134, column: 20, scope: !591)
!594 = !DILocation(line: 134, column: 23, scope: !591)
!595 = !DILocation(line: 134, column: 30, scope: !591)
!596 = !DILocation(line: 134, column: 35, scope: !591)
!597 = !DILocation(line: 134, column: 6, scope: !457)
!598 = !DILocation(line: 135, column: 3, scope: !591)
!599 = !DILocation(line: 137, column: 21, scope: !457)
!600 = !DILocation(line: 137, column: 28, scope: !457)
!601 = !DILocation(line: 137, column: 8, scope: !457)
!602 = !DILocation(line: 137, column: 6, scope: !457)
!603 = !DILocation(line: 138, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !457, file: !2, line: 138, column: 6)
!605 = !DILocation(line: 138, column: 6, scope: !457)
!606 = !DILocation(line: 139, column: 10, scope: !604)
!607 = !DILocation(line: 139, column: 3, scope: !604)
!608 = !DILocation(line: 141, column: 9, scope: !457)
!609 = !DILocation(line: 141, column: 16, scope: !457)
!610 = !DILocation(line: 141, column: 21, scope: !457)
!611 = !DILocation(line: 141, column: 3, scope: !457)
!612 = !DILocation(line: 141, column: 7, scope: !457)
!613 = !DILocation(line: 142, column: 9, scope: !457)
!614 = !DILocation(line: 142, column: 16, scope: !457)
!615 = !DILocation(line: 142, column: 21, scope: !457)
!616 = !DILocation(line: 142, column: 3, scope: !457)
!617 = !DILocation(line: 142, column: 7, scope: !457)
!618 = !DILocation(line: 145, column: 5, scope: !457)
!619 = !DILocation(line: 145, column: 12, scope: !457)
!620 = !DILocation(line: 145, column: 17, scope: !457)
!621 = !DILocation(line: 144, column: 6, scope: !457)
!622 = !DILocation(line: 144, column: 4, scope: !457)
!623 = !DILocation(line: 146, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !457, file: !2, line: 146, column: 6)
!625 = !DILocation(line: 146, column: 8, scope: !624)
!626 = !DILocation(line: 146, column: 6, scope: !457)
!627 = !DILocation(line: 147, column: 16, scope: !624)
!628 = !DILocation(line: 147, column: 4, scope: !624)
!629 = !DILocation(line: 147, column: 14, scope: !624)
!630 = !DILocation(line: 147, column: 3, scope: !624)
!631 = !DILocation(line: 149, column: 2, scope: !457)
!632 = !DILocation(line: 150, column: 1, scope: !457)
!633 = distinct !DISubprogram(name: "pkcs7_digest", scope: !2, file: !2, line: 22, type: !634, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!233, !460, !543}
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !647, !648}
!637 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !633, file: !2, line: 22, type: !460)
!638 = !DILocalVariable(name: "sinfo", arg: 2, scope: !633, file: !2, line: 23, type: !543)
!639 = !DILocalVariable(name: "sig", scope: !633, file: !2, line: 25, type: !490)
!640 = !DILocalVariable(name: "tfm", scope: !633, file: !2, line: 26, type: !238)
!641 = !DILocalVariable(name: "desc", scope: !633, file: !2, line: 27, type: !234)
!642 = !DILocalVariable(name: "desc_size", scope: !633, file: !2, line: 28, type: !562)
!643 = !DILocalVariable(name: "ret", scope: !633, file: !2, line: 29, type: !233)
!644 = !DILocalVariable(name: "tag", scope: !645, file: !2, line: 73, type: !307)
!645 = distinct !DILexicalBlock(scope: !646, file: !2, line: 72, column: 24)
!646 = distinct !DILexicalBlock(scope: !633, file: !2, line: 72, column: 6)
!647 = !DILabel(scope: !633, name: "error", file: !2, line: 117)
!648 = !DILabel(scope: !633, name: "error_no_desc", file: !2, line: 119)
!649 = !DILocation(line: 22, column: 47, scope: !633)
!650 = !DILocation(line: 23, column: 30, scope: !633)
!651 = !DILocation(line: 25, column: 2, scope: !633)
!652 = !DILocation(line: 25, column: 31, scope: !633)
!653 = !DILocation(line: 25, column: 37, scope: !633)
!654 = !DILocation(line: 25, column: 44, scope: !633)
!655 = !DILocation(line: 26, column: 2, scope: !633)
!656 = !DILocation(line: 26, column: 23, scope: !633)
!657 = !DILocation(line: 27, column: 2, scope: !633)
!658 = !DILocation(line: 27, column: 21, scope: !633)
!659 = !DILocation(line: 28, column: 2, scope: !633)
!660 = !DILocation(line: 28, column: 9, scope: !633)
!661 = !DILocation(line: 29, column: 2, scope: !633)
!662 = !DILocation(line: 29, column: 6, scope: !633)
!663 = !DILocation(line: 31, column: 2, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !2, line: 31, column: 2)
!665 = distinct !DILexicalBlock(scope: !633, file: !2, line: 31, column: 2)
!666 = !DILocation(line: 31, column: 2, scope: !665)
!667 = !DILocation(line: 34, column: 6, scope: !668)
!668 = distinct !DILexicalBlock(scope: !633, file: !2, line: 34, column: 6)
!669 = !DILocation(line: 34, column: 11, scope: !668)
!670 = !DILocation(line: 34, column: 6, scope: !633)
!671 = !DILocation(line: 35, column: 3, scope: !668)
!672 = !DILocation(line: 37, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !633, file: !2, line: 37, column: 6)
!674 = !DILocation(line: 37, column: 14, scope: !673)
!675 = !DILocation(line: 37, column: 19, scope: !673)
!676 = !DILocation(line: 37, column: 6, scope: !633)
!677 = !DILocation(line: 38, column: 3, scope: !673)
!678 = !DILocation(line: 43, column: 27, scope: !633)
!679 = !DILocation(line: 43, column: 34, scope: !633)
!680 = !DILocation(line: 43, column: 39, scope: !633)
!681 = !DILocation(line: 43, column: 8, scope: !633)
!682 = !DILocation(line: 43, column: 6, scope: !633)
!683 = !DILocation(line: 44, column: 13, scope: !684)
!684 = distinct !DILexicalBlock(scope: !633, file: !2, line: 44, column: 6)
!685 = !DILocation(line: 44, column: 6, scope: !684)
!686 = !DILocation(line: 44, column: 6, scope: !633)
!687 = !DILocation(line: 45, column: 19, scope: !684)
!688 = !DILocation(line: 45, column: 11, scope: !684)
!689 = !DILocation(line: 45, column: 24, scope: !684)
!690 = !DILocation(line: 45, column: 10, scope: !684)
!691 = !DILocation(line: 45, column: 56, scope: !684)
!692 = !DILocation(line: 45, column: 48, scope: !684)
!693 = !DILocation(line: 45, column: 3, scope: !684)
!694 = !DILocation(line: 47, column: 36, scope: !633)
!695 = !DILocation(line: 47, column: 14, scope: !633)
!696 = !DILocation(line: 47, column: 41, scope: !633)
!697 = !DILocation(line: 47, column: 12, scope: !633)
!698 = !DILocation(line: 48, column: 45, scope: !633)
!699 = !DILocation(line: 48, column: 21, scope: !633)
!700 = !DILocation(line: 48, column: 2, scope: !633)
!701 = !DILocation(line: 48, column: 7, scope: !633)
!702 = !DILocation(line: 48, column: 19, scope: !633)
!703 = !DILocation(line: 50, column: 6, scope: !633)
!704 = !DILocation(line: 51, column: 24, scope: !633)
!705 = !DILocation(line: 51, column: 29, scope: !633)
!706 = !DILocation(line: 51, column: 16, scope: !633)
!707 = !DILocation(line: 51, column: 2, scope: !633)
!708 = !DILocation(line: 51, column: 7, scope: !633)
!709 = !DILocation(line: 51, column: 14, scope: !633)
!710 = !DILocation(line: 52, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !633, file: !2, line: 52, column: 6)
!712 = !DILocation(line: 52, column: 12, scope: !711)
!713 = !DILocation(line: 52, column: 6, scope: !633)
!714 = !DILocation(line: 53, column: 3, scope: !711)
!715 = !DILocation(line: 55, column: 17, scope: !633)
!716 = !DILocation(line: 55, column: 9, scope: !633)
!717 = !DILocation(line: 55, column: 7, scope: !633)
!718 = !DILocation(line: 56, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !633, file: !2, line: 56, column: 6)
!720 = !DILocation(line: 56, column: 6, scope: !633)
!721 = !DILocation(line: 57, column: 3, scope: !719)
!722 = !DILocation(line: 59, column: 16, scope: !633)
!723 = !DILocation(line: 59, column: 2, scope: !633)
!724 = !DILocation(line: 59, column: 8, scope: !633)
!725 = !DILocation(line: 59, column: 14, scope: !633)
!726 = !DILocation(line: 62, column: 28, scope: !633)
!727 = !DILocation(line: 62, column: 34, scope: !633)
!728 = !DILocation(line: 62, column: 41, scope: !633)
!729 = !DILocation(line: 62, column: 47, scope: !633)
!730 = !DILocation(line: 62, column: 54, scope: !633)
!731 = !DILocation(line: 63, column: 7, scope: !633)
!732 = !DILocation(line: 63, column: 12, scope: !633)
!733 = !DILocation(line: 62, column: 8, scope: !633)
!734 = !DILocation(line: 62, column: 6, scope: !633)
!735 = !DILocation(line: 64, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !633, file: !2, line: 64, column: 6)
!737 = !DILocation(line: 64, column: 10, scope: !736)
!738 = !DILocation(line: 64, column: 6, scope: !633)
!739 = !DILocation(line: 65, column: 3, scope: !736)
!740 = !DILocation(line: 66, column: 2, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !2, line: 66, column: 2)
!742 = distinct !DILexicalBlock(scope: !633, file: !2, line: 66, column: 2)
!743 = !DILocation(line: 66, column: 2, scope: !742)
!744 = !DILocation(line: 72, column: 6, scope: !646)
!745 = !DILocation(line: 72, column: 13, scope: !646)
!746 = !DILocation(line: 72, column: 6, scope: !633)
!747 = !DILocation(line: 73, column: 3, scope: !645)
!748 = !DILocation(line: 73, column: 6, scope: !645)
!749 = !DILocation(line: 75, column: 8, scope: !750)
!750 = distinct !DILexicalBlock(scope: !645, file: !2, line: 75, column: 7)
!751 = !DILocation(line: 75, column: 15, scope: !750)
!752 = !DILocation(line: 75, column: 7, scope: !645)
!753 = !DILocation(line: 76, column: 4, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !2, line: 76, column: 4)
!755 = distinct !DILexicalBlock(scope: !750, file: !2, line: 75, column: 26)
!756 = !DILocation(line: 76, column: 4, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !2, line: 76, column: 4)
!758 = !DILocation(line: 77, column: 8, scope: !755)
!759 = !DILocation(line: 78, column: 4, scope: !755)
!760 = !DILocation(line: 81, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !645, file: !2, line: 81, column: 7)
!762 = !DILocation(line: 81, column: 14, scope: !761)
!763 = !DILocation(line: 81, column: 31, scope: !761)
!764 = !DILocation(line: 81, column: 36, scope: !761)
!765 = !DILocation(line: 81, column: 28, scope: !761)
!766 = !DILocation(line: 81, column: 7, scope: !645)
!767 = !DILocation(line: 82, column: 4, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !2, line: 82, column: 4)
!769 = distinct !DILexicalBlock(scope: !761, file: !2, line: 81, column: 49)
!770 = !DILocation(line: 82, column: 4, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !2, line: 82, column: 4)
!772 = !DILocation(line: 84, column: 8, scope: !769)
!773 = !DILocation(line: 85, column: 4, scope: !769)
!774 = !DILocation(line: 88, column: 14, scope: !775)
!775 = distinct !DILexicalBlock(scope: !645, file: !2, line: 88, column: 7)
!776 = !DILocation(line: 88, column: 19, scope: !775)
!777 = !DILocation(line: 88, column: 27, scope: !775)
!778 = !DILocation(line: 88, column: 34, scope: !775)
!779 = !DILocation(line: 89, column: 7, scope: !775)
!780 = !DILocation(line: 89, column: 14, scope: !775)
!781 = !DILocation(line: 88, column: 7, scope: !775)
!782 = !DILocation(line: 89, column: 29, scope: !775)
!783 = !DILocation(line: 88, column: 7, scope: !645)
!784 = !DILocation(line: 90, column: 4, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !2, line: 90, column: 4)
!786 = distinct !DILexicalBlock(scope: !775, file: !2, line: 89, column: 35)
!787 = !DILocation(line: 90, column: 4, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !2, line: 90, column: 4)
!789 = !DILocation(line: 92, column: 8, scope: !786)
!790 = !DILocation(line: 93, column: 4, scope: !786)
!791 = !DILocation(line: 101, column: 10, scope: !645)
!792 = !DILocation(line: 101, column: 15, scope: !645)
!793 = !DILocation(line: 101, column: 26, scope: !645)
!794 = !DILocation(line: 101, column: 31, scope: !645)
!795 = !DILocation(line: 101, column: 3, scope: !645)
!796 = !DILocation(line: 103, column: 27, scope: !645)
!797 = !DILocation(line: 103, column: 9, scope: !645)
!798 = !DILocation(line: 103, column: 7, scope: !645)
!799 = !DILocation(line: 104, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !645, file: !2, line: 104, column: 7)
!801 = !DILocation(line: 104, column: 11, scope: !800)
!802 = !DILocation(line: 104, column: 7, scope: !645)
!803 = !DILocation(line: 105, column: 4, scope: !800)
!804 = !DILocation(line: 106, column: 7, scope: !645)
!805 = !DILocation(line: 107, column: 29, scope: !645)
!806 = !DILocation(line: 107, column: 9, scope: !645)
!807 = !DILocation(line: 107, column: 7, scope: !645)
!808 = !DILocation(line: 108, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !645, file: !2, line: 108, column: 7)
!810 = !DILocation(line: 108, column: 11, scope: !809)
!811 = !DILocation(line: 108, column: 7, scope: !645)
!812 = !DILocation(line: 109, column: 4, scope: !809)
!813 = !DILocation(line: 110, column: 28, scope: !645)
!814 = !DILocation(line: 110, column: 34, scope: !645)
!815 = !DILocation(line: 110, column: 41, scope: !645)
!816 = !DILocation(line: 111, column: 7, scope: !645)
!817 = !DILocation(line: 111, column: 14, scope: !645)
!818 = !DILocation(line: 111, column: 29, scope: !645)
!819 = !DILocation(line: 111, column: 34, scope: !645)
!820 = !DILocation(line: 110, column: 9, scope: !645)
!821 = !DILocation(line: 110, column: 7, scope: !645)
!822 = !DILocation(line: 112, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !645, file: !2, line: 112, column: 7)
!824 = !DILocation(line: 112, column: 11, scope: !823)
!825 = !DILocation(line: 112, column: 7, scope: !645)
!826 = !DILocation(line: 113, column: 4, scope: !823)
!827 = !DILocation(line: 114, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !2, line: 114, column: 3)
!829 = distinct !DILexicalBlock(scope: !645, file: !2, line: 114, column: 3)
!830 = !DILocation(line: 114, column: 3, scope: !829)
!831 = !DILocation(line: 115, column: 2, scope: !646)
!832 = !DILocation(line: 115, column: 2, scope: !645)
!833 = !DILocation(line: 117, column: 1, scope: !633)
!834 = !DILocation(line: 118, column: 8, scope: !633)
!835 = !DILocation(line: 118, column: 2, scope: !633)
!836 = !DILocation(line: 119, column: 1, scope: !633)
!837 = !DILocation(line: 120, column: 20, scope: !633)
!838 = !DILocation(line: 120, column: 2, scope: !633)
!839 = !DILocation(line: 121, column: 2, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 121, column: 2)
!841 = distinct !DILexicalBlock(scope: !633, file: !2, line: 121, column: 2)
!842 = !DILocation(line: 121, column: 2, scope: !841)
!843 = !DILocation(line: 122, column: 9, scope: !633)
!844 = !DILocation(line: 122, column: 2, scope: !633)
!845 = !DILocation(line: 123, column: 1, scope: !633)
!846 = !DISubprogram(name: "match_string", scope: !847, file: !847, line: 227, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!848 = !DISubroutineType(types: !849)
!849 = !{!233, !850, !562, !485}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!852 = distinct !DISubprogram(name: "pkcs7_verify", scope: !2, file: !2, line: 394, type: !853, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!233, !460, !161}
!855 = !{!856, !857, !858, !859, !860}
!856 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !852, file: !2, line: 394, type: !460)
!857 = !DILocalVariable(name: "usage", arg: 2, scope: !852, file: !2, line: 395, type: !161)
!858 = !DILocalVariable(name: "sinfo", scope: !852, file: !2, line: 397, type: !543)
!859 = !DILocalVariable(name: "actual_ret", scope: !852, file: !2, line: 398, type: !233)
!860 = !DILocalVariable(name: "ret", scope: !852, file: !2, line: 399, type: !233)
!861 = !DILocation(line: 394, column: 40, scope: !852)
!862 = !DILocation(line: 395, column: 28, scope: !852)
!863 = !DILocation(line: 397, column: 2, scope: !852)
!864 = !DILocation(line: 397, column: 28, scope: !852)
!865 = !DILocation(line: 398, column: 2, scope: !852)
!866 = !DILocation(line: 398, column: 6, scope: !852)
!867 = !DILocation(line: 399, column: 2, scope: !852)
!868 = !DILocation(line: 399, column: 6, scope: !852)
!869 = !DILocation(line: 401, column: 2, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 401, column: 2)
!871 = distinct !DILexicalBlock(scope: !852, file: !2, line: 401, column: 2)
!872 = !DILocation(line: 401, column: 2, scope: !871)
!873 = !DILocation(line: 403, column: 10, scope: !852)
!874 = !DILocation(line: 403, column: 2, scope: !852)
!875 = !DILocation(line: 405, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !2, line: 405, column: 7)
!877 = distinct !DILexicalBlock(scope: !852, file: !2, line: 403, column: 17)
!878 = !DILocation(line: 405, column: 14, scope: !876)
!879 = !DILocation(line: 405, column: 24, scope: !876)
!880 = !DILocation(line: 405, column: 7, scope: !877)
!881 = !DILocation(line: 406, column: 4, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !2, line: 406, column: 4)
!883 = distinct !DILexicalBlock(scope: !876, file: !2, line: 405, column: 37)
!884 = !DILocation(line: 406, column: 4, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !2, line: 406, column: 4)
!886 = !DILocation(line: 407, column: 4, scope: !883)
!887 = !DILocation(line: 409, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !877, file: !2, line: 409, column: 7)
!889 = !DILocation(line: 409, column: 14, scope: !888)
!890 = !{i8 0, i8 2}
!891 = !{}
!892 = !DILocation(line: 409, column: 7, scope: !877)
!893 = !DILocation(line: 410, column: 4, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !2, line: 410, column: 4)
!895 = distinct !DILexicalBlock(scope: !888, file: !2, line: 409, column: 30)
!896 = !DILocation(line: 410, column: 4, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !2, line: 410, column: 4)
!898 = !DILocation(line: 411, column: 4, scope: !895)
!899 = !DILocation(line: 413, column: 3, scope: !877)
!900 = !DILocation(line: 415, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !877, file: !2, line: 415, column: 7)
!902 = !DILocation(line: 415, column: 14, scope: !901)
!903 = !DILocation(line: 415, column: 24, scope: !901)
!904 = !DILocation(line: 415, column: 7, scope: !877)
!905 = !DILocation(line: 416, column: 4, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !2, line: 416, column: 4)
!907 = distinct !DILexicalBlock(scope: !901, file: !2, line: 415, column: 37)
!908 = !DILocation(line: 416, column: 4, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !2, line: 416, column: 4)
!910 = !DILocation(line: 417, column: 4, scope: !907)
!911 = !DILocation(line: 419, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !877, file: !2, line: 419, column: 7)
!913 = !DILocation(line: 419, column: 15, scope: !912)
!914 = !DILocation(line: 419, column: 7, scope: !877)
!915 = !DILocation(line: 420, column: 4, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 420, column: 4)
!917 = distinct !DILexicalBlock(scope: !912, file: !2, line: 419, column: 31)
!918 = !DILocation(line: 420, column: 4, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !2, line: 420, column: 4)
!920 = !DILocation(line: 421, column: 4, scope: !917)
!921 = !DILocation(line: 423, column: 3, scope: !877)
!922 = !DILocation(line: 425, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !877, file: !2, line: 425, column: 7)
!924 = !DILocation(line: 425, column: 14, scope: !923)
!925 = !DILocation(line: 425, column: 24, scope: !923)
!926 = !DILocation(line: 425, column: 7, scope: !877)
!927 = !DILocation(line: 426, column: 4, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 426, column: 4)
!929 = distinct !DILexicalBlock(scope: !923, file: !2, line: 425, column: 47)
!930 = !DILocation(line: 426, column: 4, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !2, line: 426, column: 4)
!932 = !DILocation(line: 427, column: 4, scope: !929)
!933 = !DILocation(line: 430, column: 3, scope: !877)
!934 = !DILocation(line: 432, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !877, file: !2, line: 432, column: 7)
!936 = !DILocation(line: 432, column: 14, scope: !935)
!937 = !DILocation(line: 432, column: 24, scope: !935)
!938 = !DILocation(line: 432, column: 7, scope: !877)
!939 = !DILocation(line: 433, column: 4, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 433, column: 4)
!941 = distinct !DILexicalBlock(scope: !935, file: !2, line: 432, column: 37)
!942 = !DILocation(line: 433, column: 4, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !2, line: 433, column: 4)
!944 = !DILocation(line: 434, column: 4, scope: !941)
!945 = !DILocation(line: 436, column: 3, scope: !877)
!946 = !DILocation(line: 438, column: 3, scope: !877)
!947 = !DILocation(line: 441, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !852, file: !2, line: 441, column: 2)
!949 = !DILocation(line: 441, column: 22, scope: !948)
!950 = !DILocation(line: 441, column: 13, scope: !948)
!951 = !DILocation(line: 441, column: 7, scope: !948)
!952 = !DILocation(line: 441, column: 36, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !2, line: 441, column: 2)
!954 = !DILocation(line: 441, column: 2, scope: !948)
!955 = !DILocation(line: 442, column: 26, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !2, line: 441, column: 64)
!957 = !DILocation(line: 442, column: 33, scope: !956)
!958 = !DILocation(line: 442, column: 9, scope: !956)
!959 = !DILocation(line: 442, column: 7, scope: !956)
!960 = !DILocation(line: 443, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !956, file: !2, line: 443, column: 7)
!962 = !DILocation(line: 443, column: 14, scope: !961)
!963 = !DILocation(line: 443, column: 7, scope: !956)
!964 = !DILocation(line: 444, column: 8, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 444, column: 8)
!966 = distinct !DILexicalBlock(scope: !961, file: !2, line: 443, column: 27)
!967 = !DILocation(line: 444, column: 19, scope: !965)
!968 = !DILocation(line: 444, column: 8, scope: !966)
!969 = !DILocation(line: 445, column: 16, scope: !965)
!970 = !DILocation(line: 445, column: 5, scope: !965)
!971 = !DILocation(line: 446, column: 4, scope: !966)
!972 = !DILocation(line: 448, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !956, file: !2, line: 448, column: 7)
!974 = !DILocation(line: 448, column: 11, scope: !973)
!975 = !DILocation(line: 448, column: 7, scope: !956)
!976 = !DILocation(line: 449, column: 8, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !2, line: 449, column: 8)
!978 = distinct !DILexicalBlock(scope: !973, file: !2, line: 448, column: 16)
!979 = !DILocation(line: 449, column: 12, scope: !977)
!980 = !DILocation(line: 449, column: 8, scope: !978)
!981 = !DILocation(line: 450, column: 5, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !2, line: 449, column: 24)
!983 = !DILocation(line: 450, column: 12, scope: !982)
!984 = !DILocation(line: 450, column: 31, scope: !982)
!985 = !DILocation(line: 451, column: 5, scope: !982)
!986 = !DILocation(line: 453, column: 4, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !2, line: 453, column: 4)
!988 = distinct !DILexicalBlock(scope: !978, file: !2, line: 453, column: 4)
!989 = !DILocation(line: 453, column: 4, scope: !988)
!990 = !DILocation(line: 454, column: 11, scope: !978)
!991 = !DILocation(line: 454, column: 4, scope: !978)
!992 = !DILocation(line: 456, column: 14, scope: !956)
!993 = !DILocation(line: 457, column: 2, scope: !956)
!994 = !DILocation(line: 441, column: 51, scope: !953)
!995 = !DILocation(line: 441, column: 58, scope: !953)
!996 = !DILocation(line: 441, column: 49, scope: !953)
!997 = !DILocation(line: 441, column: 2, scope: !953)
!998 = distinct !{!998, !954, !999, !1000, !1001}
!999 = !DILocation(line: 457, column: 2, scope: !948)
!1000 = !{!"llvm.loop.mustprogress"}
!1001 = !{!"llvm.loop.unroll.disable"}
!1002 = !DILocation(line: 459, column: 2, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 459, column: 2)
!1004 = distinct !DILexicalBlock(scope: !852, file: !2, line: 459, column: 2)
!1005 = !DILocation(line: 459, column: 2, scope: !1004)
!1006 = !DILocation(line: 460, column: 9, scope: !852)
!1007 = !DILocation(line: 460, column: 2, scope: !852)
!1008 = !DILocation(line: 461, column: 1, scope: !852)
!1009 = !DISubprogram(name: "_printk", scope: !1010, file: !1010, line: 153, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!233, !485, null}
!1013 = distinct !DISubprogram(name: "pkcs7_verify_one", scope: !2, file: !2, line: 316, type: !634, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !1013, file: !2, line: 316, type: !460)
!1016 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1013, file: !2, line: 317, type: !543)
!1017 = !DILocalVariable(name: "ret", scope: !1013, file: !2, line: 319, type: !233)
!1018 = !DILocation(line: 316, column: 51, scope: !1013)
!1019 = !DILocation(line: 317, column: 34, scope: !1013)
!1020 = !DILocation(line: 319, column: 2, scope: !1013)
!1021 = !DILocation(line: 319, column: 6, scope: !1013)
!1022 = !DILocation(line: 321, column: 2, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 321, column: 2)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 321, column: 2)
!1025 = !DILocation(line: 321, column: 2, scope: !1024)
!1026 = !DILocation(line: 326, column: 21, scope: !1013)
!1027 = !DILocation(line: 326, column: 28, scope: !1013)
!1028 = !DILocation(line: 326, column: 8, scope: !1013)
!1029 = !DILocation(line: 326, column: 6, scope: !1013)
!1030 = !DILocation(line: 327, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 327, column: 6)
!1032 = !DILocation(line: 327, column: 10, scope: !1031)
!1033 = !DILocation(line: 327, column: 6, scope: !1013)
!1034 = !DILocation(line: 328, column: 10, scope: !1031)
!1035 = !DILocation(line: 328, column: 3, scope: !1031)
!1036 = !DILocation(line: 331, column: 23, scope: !1013)
!1037 = !DILocation(line: 331, column: 30, scope: !1013)
!1038 = !DILocation(line: 331, column: 8, scope: !1013)
!1039 = !DILocation(line: 331, column: 6, scope: !1013)
!1040 = !DILocation(line: 332, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 332, column: 6)
!1042 = !DILocation(line: 332, column: 10, scope: !1041)
!1043 = !DILocation(line: 332, column: 6, scope: !1013)
!1044 = !DILocation(line: 333, column: 10, scope: !1041)
!1045 = !DILocation(line: 333, column: 3, scope: !1041)
!1046 = !DILocation(line: 335, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 335, column: 6)
!1048 = !DILocation(line: 335, column: 14, scope: !1047)
!1049 = !DILocation(line: 335, column: 6, scope: !1013)
!1050 = !DILocation(line: 336, column: 3, scope: !1047)
!1051 = !DILocation(line: 338, column: 2, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 338, column: 2)
!1053 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 338, column: 2)
!1054 = !DILocation(line: 338, column: 2, scope: !1053)
!1055 = !DILocation(line: 345, column: 6, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 345, column: 6)
!1057 = !DILocation(line: 345, column: 6, scope: !1013)
!1058 = !DILocation(line: 346, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 346, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 345, column: 56)
!1061 = !DILocation(line: 346, column: 14, scope: !1059)
!1062 = !DILocation(line: 346, column: 29, scope: !1059)
!1063 = !DILocation(line: 346, column: 36, scope: !1059)
!1064 = !DILocation(line: 346, column: 44, scope: !1059)
!1065 = !DILocation(line: 346, column: 27, scope: !1059)
!1066 = !DILocation(line: 346, column: 55, scope: !1059)
!1067 = !DILocation(line: 347, column: 7, scope: !1059)
!1068 = !DILocation(line: 347, column: 14, scope: !1059)
!1069 = !DILocation(line: 347, column: 29, scope: !1059)
!1070 = !DILocation(line: 347, column: 36, scope: !1059)
!1071 = !DILocation(line: 347, column: 44, scope: !1059)
!1072 = !DILocation(line: 347, column: 27, scope: !1059)
!1073 = !DILocation(line: 346, column: 7, scope: !1060)
!1074 = !DILocation(line: 348, column: 4, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 348, column: 4)
!1076 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 347, column: 54)
!1077 = !DILocation(line: 348, column: 4, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 348, column: 4)
!1079 = !DILocation(line: 349, column: 4, scope: !1076)
!1080 = !DILocation(line: 351, column: 2, scope: !1060)
!1081 = !DILocation(line: 354, column: 36, scope: !1013)
!1082 = !DILocation(line: 354, column: 43, scope: !1013)
!1083 = !DILocation(line: 354, column: 51, scope: !1013)
!1084 = !DILocation(line: 354, column: 56, scope: !1013)
!1085 = !DILocation(line: 354, column: 63, scope: !1013)
!1086 = !DILocation(line: 354, column: 8, scope: !1013)
!1087 = !DILocation(line: 354, column: 6, scope: !1013)
!1088 = !DILocation(line: 355, column: 6, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 355, column: 6)
!1090 = !DILocation(line: 355, column: 10, scope: !1089)
!1091 = !DILocation(line: 355, column: 6, scope: !1013)
!1092 = !DILocation(line: 356, column: 10, scope: !1089)
!1093 = !DILocation(line: 356, column: 3, scope: !1089)
!1094 = !DILocation(line: 358, column: 2, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 358, column: 2)
!1096 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 358, column: 2)
!1097 = !DILocation(line: 358, column: 2, scope: !1096)
!1098 = !DILocation(line: 361, column: 32, scope: !1013)
!1099 = !DILocation(line: 361, column: 39, scope: !1013)
!1100 = !DILocation(line: 361, column: 9, scope: !1013)
!1101 = !DILocation(line: 361, column: 2, scope: !1013)
!1102 = !DILocation(line: 362, column: 1, scope: !1013)
!1103 = distinct !DISubprogram(name: "pkcs7_supply_detached_data", scope: !2, file: !2, line: 477, type: !1104, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!233, !460, !364, !562}
!1106 = !{!1107, !1108, !1109}
!1107 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !1103, file: !2, line: 477, type: !460)
!1108 = !DILocalVariable(name: "data", arg: 2, scope: !1103, file: !2, line: 478, type: !364)
!1109 = !DILocalVariable(name: "datalen", arg: 3, scope: !1103, file: !2, line: 478, type: !562)
!1110 = !DILocation(line: 477, column: 54, scope: !1103)
!1111 = !DILocation(line: 478, column: 23, scope: !1103)
!1112 = !DILocation(line: 478, column: 36, scope: !1103)
!1113 = !DILocation(line: 480, column: 6, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 480, column: 6)
!1115 = !DILocation(line: 480, column: 13, scope: !1114)
!1116 = !DILocation(line: 480, column: 6, scope: !1103)
!1117 = !DILocation(line: 481, column: 3, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 481, column: 3)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 480, column: 19)
!1120 = !DILocation(line: 481, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 481, column: 3)
!1122 = !DILocation(line: 482, column: 3, scope: !1119)
!1123 = !DILocation(line: 484, column: 16, scope: !1103)
!1124 = !DILocation(line: 484, column: 2, scope: !1103)
!1125 = !DILocation(line: 484, column: 9, scope: !1103)
!1126 = !DILocation(line: 484, column: 14, scope: !1103)
!1127 = !DILocation(line: 485, column: 20, scope: !1103)
!1128 = !DILocation(line: 485, column: 2, scope: !1103)
!1129 = !DILocation(line: 485, column: 9, scope: !1103)
!1130 = !DILocation(line: 485, column: 18, scope: !1103)
!1131 = !DILocation(line: 486, column: 2, scope: !1103)
!1132 = !DILocation(line: 487, column: 1, scope: !1103)
!1133 = !DISubprogram(name: "crypto_alloc_shash", scope: !227, file: !227, line: 768, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!238, !485, !257, !257}
!1136 = distinct !DISubprogram(name: "IS_ERR", scope: !1137, file: !1137, line: 59, type: !1138, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1140)
!1137 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!482, !364}
!1140 = !{!1141}
!1141 = !DILocalVariable(name: "ptr", arg: 1, scope: !1136, file: !1137, line: 59, type: !364)
!1142 = !DILocation(line: 59, column: 60, scope: !1136)
!1143 = !DILocation(line: 61, column: 9, scope: !1136)
!1144 = !DILocation(line: 61, column: 2, scope: !1136)
!1145 = distinct !DISubprogram(name: "PTR_ERR", scope: !1137, file: !1137, line: 49, type: !1146, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!224, !364}
!1148 = !{!1149}
!1149 = !DILocalVariable(name: "ptr", arg: 1, scope: !1145, file: !1137, line: 49, type: !364)
!1150 = !DILocation(line: 49, column: 61, scope: !1145)
!1151 = !DILocation(line: 51, column: 16, scope: !1145)
!1152 = !DILocation(line: 51, column: 9, scope: !1145)
!1153 = !DILocation(line: 51, column: 2, scope: !1145)
!1154 = distinct !DISubprogram(name: "crypto_shash_descsize", scope: !227, file: !227, line: 880, type: !1155, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!35, !238}
!1157 = !{!1158}
!1158 = !DILocalVariable(name: "tfm", arg: 1, scope: !1154, file: !227, line: 880, type: !238)
!1159 = !DILocation(line: 880, column: 71, scope: !1154)
!1160 = !DILocation(line: 882, column: 9, scope: !1154)
!1161 = !DILocation(line: 882, column: 14, scope: !1154)
!1162 = !DILocation(line: 882, column: 2, scope: !1154)
!1163 = distinct !DISubprogram(name: "crypto_shash_digestsize", scope: !227, file: !227, line: 840, type: !1155, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1164)
!1164 = !{!1165}
!1165 = !DILocalVariable(name: "tfm", arg: 1, scope: !1163, file: !227, line: 840, type: !238)
!1166 = !DILocation(line: 840, column: 73, scope: !1163)
!1167 = !DILocation(line: 842, column: 26, scope: !1163)
!1168 = !DILocation(line: 842, column: 9, scope: !1163)
!1169 = !DILocation(line: 842, column: 32, scope: !1163)
!1170 = !DILocation(line: 842, column: 2, scope: !1163)
!1171 = distinct !DISubprogram(name: "kmalloc", scope: !210, file: !210, line: 591, type: !1172, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!220, !562, !221}
!1174 = !{!1175, !1176, !1177}
!1175 = !DILocalVariable(name: "size", arg: 1, scope: !1171, file: !210, line: 591, type: !562)
!1176 = !DILocalVariable(name: "flags", arg: 2, scope: !1171, file: !210, line: 591, type: !221)
!1177 = !DILocalVariable(name: "index", scope: !1178, file: !210, line: 594, type: !35)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !210, line: 593, column: 42)
!1179 = distinct !DILexicalBlock(scope: !1171, file: !210, line: 593, column: 6)
!1180 = !DILocation(line: 591, column: 61, scope: !1171)
!1181 = !DILocation(line: 591, column: 73, scope: !1171)
!1182 = !DILocation(line: 593, column: 27, scope: !1179)
!1183 = !DILocation(line: 593, column: 6, scope: !1179)
!1184 = !DILocation(line: 593, column: 33, scope: !1179)
!1185 = !DILocation(line: 593, column: 36, scope: !1179)
!1186 = !DILocation(line: 593, column: 6, scope: !1171)
!1187 = !DILocation(line: 594, column: 3, scope: !1178)
!1188 = !DILocation(line: 594, column: 16, scope: !1178)
!1189 = !DILocation(line: 596, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1178, file: !210, line: 596, column: 7)
!1191 = !DILocation(line: 596, column: 12, scope: !1190)
!1192 = !DILocation(line: 596, column: 7, scope: !1178)
!1193 = !DILocation(line: 597, column: 25, scope: !1190)
!1194 = !DILocation(line: 597, column: 31, scope: !1190)
!1195 = !DILocation(line: 597, column: 11, scope: !1190)
!1196 = !DILocation(line: 597, column: 4, scope: !1190)
!1197 = !DILocation(line: 599, column: 11, scope: !1178)
!1198 = !DILocation(line: 599, column: 9, scope: !1178)
!1199 = !DILocation(line: 601, column: 33, scope: !1178)
!1200 = !DILocation(line: 601, column: 40, scope: !1178)
!1201 = !DILocation(line: 601, column: 20, scope: !1178)
!1202 = !DILocation(line: 601, column: 5, scope: !1178)
!1203 = !DILocation(line: 601, column: 51, scope: !1178)
!1204 = !DILocation(line: 602, column: 5, scope: !1178)
!1205 = !DILocation(line: 602, column: 12, scope: !1178)
!1206 = !DILocation(line: 600, column: 10, scope: !1178)
!1207 = !DILocation(line: 600, column: 3, scope: !1178)
!1208 = !DILocation(line: 603, column: 2, scope: !1179)
!1209 = !DILocation(line: 604, column: 19, scope: !1171)
!1210 = !DILocation(line: 604, column: 25, scope: !1171)
!1211 = !DILocation(line: 604, column: 9, scope: !1171)
!1212 = !DILocation(line: 604, column: 2, scope: !1171)
!1213 = !DILocation(line: 605, column: 1, scope: !1171)
!1214 = distinct !DISubprogram(name: "kzalloc", scope: !210, file: !210, line: 719, type: !1172, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1215)
!1215 = !{!1216, !1217}
!1216 = !DILocalVariable(name: "size", arg: 1, scope: !1214, file: !210, line: 719, type: !562)
!1217 = !DILocalVariable(name: "flags", arg: 2, scope: !1214, file: !210, line: 719, type: !221)
!1218 = !DILocation(line: 719, column: 52, scope: !1214)
!1219 = !DILocation(line: 719, column: 64, scope: !1214)
!1220 = !DILocation(line: 721, column: 17, scope: !1214)
!1221 = !DILocation(line: 721, column: 23, scope: !1214)
!1222 = !DILocation(line: 721, column: 29, scope: !1214)
!1223 = !DILocation(line: 721, column: 9, scope: !1214)
!1224 = !DILocation(line: 721, column: 2, scope: !1214)
!1225 = !DISubprogram(name: "crypto_shash_digest", scope: !227, file: !227, line: 921, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = !DISubprogram(name: "memcmp", scope: !847, file: !847, line: 196, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!233, !364, !364, !563}
!1229 = distinct !DISubprogram(name: "crypto_shash_init", scope: !227, file: !227, line: 994, type: !231, scopeLine: 995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1230)
!1230 = !{!1231, !1232}
!1231 = !DILocalVariable(name: "desc", arg: 1, scope: !1229, file: !227, line: 994, type: !234)
!1232 = !DILocalVariable(name: "tfm", scope: !1229, file: !227, line: 996, type: !238)
!1233 = !DILocation(line: 994, column: 56, scope: !1229)
!1234 = !DILocation(line: 996, column: 2, scope: !1229)
!1235 = !DILocation(line: 996, column: 23, scope: !1229)
!1236 = !DILocation(line: 996, column: 29, scope: !1229)
!1237 = !DILocation(line: 996, column: 35, scope: !1229)
!1238 = !DILocation(line: 998, column: 29, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1229, file: !227, line: 998, column: 6)
!1240 = !DILocation(line: 998, column: 6, scope: !1239)
!1241 = !DILocation(line: 998, column: 34, scope: !1239)
!1242 = !DILocation(line: 998, column: 6, scope: !1229)
!1243 = !DILocation(line: 999, column: 3, scope: !1239)
!1244 = !DILocation(line: 1001, column: 26, scope: !1229)
!1245 = !DILocation(line: 1001, column: 9, scope: !1229)
!1246 = !DILocation(line: 1001, column: 32, scope: !1229)
!1247 = !DILocation(line: 1001, column: 37, scope: !1229)
!1248 = !DILocation(line: 1001, column: 2, scope: !1229)
!1249 = !DILocation(line: 1002, column: 1, scope: !1229)
!1250 = !DISubprogram(name: "crypto_shash_update", scope: !227, file: !227, line: 1016, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubprogram(name: "crypto_shash_finup", scope: !227, file: !227, line: 1050, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DISubprogram(name: "kfree", scope: !210, file: !210, line: 227, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !364}
!1255 = distinct !DISubprogram(name: "crypto_free_shash", scope: !227, file: !227, line: 786, type: !376, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1256)
!1256 = !{!1257}
!1257 = !DILocalVariable(name: "tfm", arg: 1, scope: !1255, file: !227, line: 786, type: !238)
!1258 = !DILocation(line: 786, column: 59, scope: !1255)
!1259 = !DILocation(line: 788, column: 21, scope: !1255)
!1260 = !DILocation(line: 788, column: 43, scope: !1255)
!1261 = !DILocation(line: 788, column: 26, scope: !1255)
!1262 = !DILocation(line: 788, column: 2, scope: !1255)
!1263 = !DILocation(line: 789, column: 1, scope: !1255)
!1264 = distinct !DISubprogram(name: "crypto_shash_alg", scope: !227, file: !227, line: 826, type: !1265, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!225, !238}
!1267 = !{!1268}
!1268 = !DILocalVariable(name: "tfm", arg: 1, scope: !1264, file: !227, line: 826, type: !238)
!1269 = !DILocation(line: 826, column: 71, scope: !1264)
!1270 = !DILocation(line: 828, column: 45, scope: !1264)
!1271 = !DILocation(line: 828, column: 28, scope: !1264)
!1272 = !DILocation(line: 828, column: 51, scope: !1264)
!1273 = !DILocation(line: 828, column: 9, scope: !1264)
!1274 = !DILocation(line: 828, column: 2, scope: !1264)
!1275 = distinct !DISubprogram(name: "__crypto_shash_alg", scope: !227, file: !227, line: 821, type: !1276, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!225, !268}
!1278 = !{!1279, !1280}
!1279 = !DILocalVariable(name: "alg", arg: 1, scope: !1275, file: !227, line: 821, type: !268)
!1280 = !DILocalVariable(name: "__mptr", scope: !1281, file: !227, line: 823, type: !220)
!1281 = distinct !DILexicalBlock(scope: !1275, file: !227, line: 823, column: 9)
!1282 = !DILocation(line: 821, column: 71, scope: !1275)
!1283 = !DILocation(line: 823, column: 9, scope: !1281)
!1284 = !DILocation(line: 823, column: 9, scope: !1275)
!1285 = !DILocation(line: 823, column: 2, scope: !1275)
!1286 = distinct !DISubprogram(name: "crypto_shash_tfm", scope: !227, file: !227, line: 775, type: !1287, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!266, !238}
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "tfm", arg: 1, scope: !1286, file: !227, line: 775, type: !238)
!1291 = !DILocation(line: 775, column: 72, scope: !1286)
!1292 = !DILocation(line: 777, column: 10, scope: !1286)
!1293 = !DILocation(line: 777, column: 15, scope: !1286)
!1294 = !DILocation(line: 777, column: 2, scope: !1286)
!1295 = !DISubprogram(name: "kmalloc_large", scope: !210, file: !210, line: 531, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = distinct !DISubprogram(name: "__kmalloc_index", scope: !210, file: !210, line: 444, type: !1297, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!35, !562, !482}
!1299 = !{!1300, !1301}
!1300 = !DILocalVariable(name: "size", arg: 1, scope: !1296, file: !210, line: 444, type: !562)
!1301 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1296, file: !210, line: 445, type: !482)
!1302 = !DILocation(line: 444, column: 60, scope: !1296)
!1303 = !DILocation(line: 445, column: 16, scope: !1296)
!1304 = !DILocation(line: 447, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 447, column: 6)
!1306 = !DILocation(line: 447, column: 6, scope: !1296)
!1307 = !DILocation(line: 448, column: 3, scope: !1305)
!1308 = !DILocation(line: 450, column: 6, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 450, column: 6)
!1310 = !DILocation(line: 450, column: 11, scope: !1309)
!1311 = !DILocation(line: 450, column: 6, scope: !1296)
!1312 = !DILocation(line: 451, column: 3, scope: !1309)
!1313 = !DILocation(line: 453, column: 32, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 453, column: 6)
!1315 = !DILocation(line: 453, column: 37, scope: !1314)
!1316 = !DILocation(line: 453, column: 42, scope: !1314)
!1317 = !DILocation(line: 453, column: 45, scope: !1314)
!1318 = !DILocation(line: 453, column: 50, scope: !1314)
!1319 = !DILocation(line: 453, column: 6, scope: !1296)
!1320 = !DILocation(line: 454, column: 3, scope: !1314)
!1321 = !DILocation(line: 455, column: 32, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 455, column: 6)
!1323 = !DILocation(line: 455, column: 37, scope: !1322)
!1324 = !DILocation(line: 455, column: 43, scope: !1322)
!1325 = !DILocation(line: 455, column: 46, scope: !1322)
!1326 = !DILocation(line: 455, column: 51, scope: !1322)
!1327 = !DILocation(line: 455, column: 6, scope: !1296)
!1328 = !DILocation(line: 456, column: 3, scope: !1322)
!1329 = !DILocation(line: 457, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 457, column: 6)
!1331 = !DILocation(line: 457, column: 11, scope: !1330)
!1332 = !DILocation(line: 457, column: 6, scope: !1296)
!1333 = !DILocation(line: 457, column: 26, scope: !1330)
!1334 = !DILocation(line: 458, column: 6, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 458, column: 6)
!1336 = !DILocation(line: 458, column: 11, scope: !1335)
!1337 = !DILocation(line: 458, column: 6, scope: !1296)
!1338 = !DILocation(line: 458, column: 26, scope: !1335)
!1339 = !DILocation(line: 459, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 459, column: 6)
!1341 = !DILocation(line: 459, column: 11, scope: !1340)
!1342 = !DILocation(line: 459, column: 6, scope: !1296)
!1343 = !DILocation(line: 459, column: 26, scope: !1340)
!1344 = !DILocation(line: 460, column: 6, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 460, column: 6)
!1346 = !DILocation(line: 460, column: 11, scope: !1345)
!1347 = !DILocation(line: 460, column: 6, scope: !1296)
!1348 = !DILocation(line: 460, column: 26, scope: !1345)
!1349 = !DILocation(line: 461, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 461, column: 6)
!1351 = !DILocation(line: 461, column: 11, scope: !1350)
!1352 = !DILocation(line: 461, column: 6, scope: !1296)
!1353 = !DILocation(line: 461, column: 26, scope: !1350)
!1354 = !DILocation(line: 462, column: 6, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 462, column: 6)
!1356 = !DILocation(line: 462, column: 11, scope: !1355)
!1357 = !DILocation(line: 462, column: 6, scope: !1296)
!1358 = !DILocation(line: 462, column: 26, scope: !1355)
!1359 = !DILocation(line: 463, column: 6, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 463, column: 6)
!1361 = !DILocation(line: 463, column: 11, scope: !1360)
!1362 = !DILocation(line: 463, column: 6, scope: !1296)
!1363 = !DILocation(line: 463, column: 26, scope: !1360)
!1364 = !DILocation(line: 464, column: 6, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 464, column: 6)
!1366 = !DILocation(line: 464, column: 11, scope: !1365)
!1367 = !DILocation(line: 464, column: 6, scope: !1296)
!1368 = !DILocation(line: 464, column: 26, scope: !1365)
!1369 = !DILocation(line: 465, column: 6, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 465, column: 6)
!1371 = !DILocation(line: 465, column: 11, scope: !1370)
!1372 = !DILocation(line: 465, column: 6, scope: !1296)
!1373 = !DILocation(line: 465, column: 26, scope: !1370)
!1374 = !DILocation(line: 466, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 466, column: 6)
!1376 = !DILocation(line: 466, column: 11, scope: !1375)
!1377 = !DILocation(line: 466, column: 6, scope: !1296)
!1378 = !DILocation(line: 466, column: 26, scope: !1375)
!1379 = !DILocation(line: 467, column: 6, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 467, column: 6)
!1381 = !DILocation(line: 467, column: 11, scope: !1380)
!1382 = !DILocation(line: 467, column: 6, scope: !1296)
!1383 = !DILocation(line: 467, column: 26, scope: !1380)
!1384 = !DILocation(line: 468, column: 6, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 468, column: 6)
!1386 = !DILocation(line: 468, column: 11, scope: !1385)
!1387 = !DILocation(line: 468, column: 6, scope: !1296)
!1388 = !DILocation(line: 468, column: 26, scope: !1385)
!1389 = !DILocation(line: 469, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 469, column: 6)
!1391 = !DILocation(line: 469, column: 11, scope: !1390)
!1392 = !DILocation(line: 469, column: 6, scope: !1296)
!1393 = !DILocation(line: 469, column: 26, scope: !1390)
!1394 = !DILocation(line: 470, column: 6, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 470, column: 6)
!1396 = !DILocation(line: 470, column: 11, scope: !1395)
!1397 = !DILocation(line: 470, column: 6, scope: !1296)
!1398 = !DILocation(line: 470, column: 26, scope: !1395)
!1399 = !DILocation(line: 471, column: 6, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 471, column: 6)
!1401 = !DILocation(line: 471, column: 11, scope: !1400)
!1402 = !DILocation(line: 471, column: 6, scope: !1296)
!1403 = !DILocation(line: 471, column: 26, scope: !1400)
!1404 = !DILocation(line: 472, column: 6, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 472, column: 6)
!1406 = !DILocation(line: 472, column: 11, scope: !1405)
!1407 = !DILocation(line: 472, column: 6, scope: !1296)
!1408 = !DILocation(line: 472, column: 26, scope: !1405)
!1409 = !DILocation(line: 473, column: 6, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 473, column: 6)
!1411 = !DILocation(line: 473, column: 11, scope: !1410)
!1412 = !DILocation(line: 473, column: 6, scope: !1296)
!1413 = !DILocation(line: 473, column: 26, scope: !1410)
!1414 = !DILocation(line: 474, column: 6, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 474, column: 6)
!1416 = !DILocation(line: 474, column: 11, scope: !1415)
!1417 = !DILocation(line: 474, column: 6, scope: !1296)
!1418 = !DILocation(line: 474, column: 27, scope: !1415)
!1419 = !DILocation(line: 475, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 475, column: 6)
!1421 = !DILocation(line: 475, column: 11, scope: !1420)
!1422 = !DILocation(line: 475, column: 6, scope: !1296)
!1423 = !DILocation(line: 475, column: 32, scope: !1420)
!1424 = !DILocation(line: 477, column: 50, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1296, file: !210, line: 477, column: 6)
!1426 = !DILocation(line: 477, column: 6, scope: !1296)
!1427 = !DILocation(line: 478, column: 3, scope: !1425)
!1428 = !DILocation(line: 478, column: 3, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !210, line: 478, column: 3)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !210, line: 478, column: 3)
!1431 = !{i32 -2143549870}
!1432 = !DILocation(line: 478, column: 3, scope: !1430)
!1433 = !DILocation(line: 480, column: 3, scope: !1425)
!1434 = !DILocation(line: 480, column: 3, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1425, file: !210, line: 480, column: 3)
!1436 = !DILocation(line: 480, column: 3, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1435, file: !210, line: 480, column: 3)
!1438 = !DILocation(line: 480, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !210, line: 480, column: 3)
!1440 = !{i64 2151417629, i64 2151417658, i64 2151417704, i64 2151417762, i64 2151417816, i64 2151417870, i64 2151417925, i64 2151417956}
!1441 = !DILocation(line: 483, column: 2, scope: !1296)
!1442 = !DILocation(line: 484, column: 1, scope: !1296)
!1443 = !DISubprogram(name: "kmalloc_trace", scope: !210, file: !210, line: 525, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!220, !1446, !221, !562}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1448, line: 11, flags: DIFlagFwdDecl)
!1448 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1449 = distinct !DISubprogram(name: "kmalloc_type", scope: !210, file: !210, line: 401, type: !1450, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!209, !221, !223}
!1452 = !{!1453, !1454}
!1453 = !DILocalVariable(name: "flags", arg: 1, scope: !1449, file: !210, line: 401, type: !221)
!1454 = !DILocalVariable(name: "caller", arg: 2, scope: !1449, file: !210, line: 401, type: !223)
!1455 = !DILocation(line: 401, column: 67, scope: !1449)
!1456 = !DILocation(line: 401, column: 88, scope: !1449)
!1457 = !DILocation(line: 407, column: 6, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1449, file: !210, line: 407, column: 6)
!1459 = !DILocation(line: 407, column: 6, scope: !1449)
!1460 = !DILocation(line: 413, column: 3, scope: !1458)
!1461 = !DILocation(line: 423, column: 38, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1449, file: !210, line: 423, column: 6)
!1463 = !DILocation(line: 423, column: 44, scope: !1462)
!1464 = !DILocation(line: 423, column: 6, scope: !1449)
!1465 = !DILocation(line: 424, column: 3, scope: !1462)
!1466 = !DILocation(line: 426, column: 3, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1449, file: !210, line: 425, column: 6)
!1468 = !DILocation(line: 429, column: 1, scope: !1449)
!1469 = !DISubprogram(name: "__kmalloc", scope: !210, file: !210, line: 488, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DISubprogram(name: "__compiletime_assert_117", scope: !210, file: !210, line: 478, type: !446, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1471 = distinct !DISubprogram(name: "crypto_shash_get_flags", scope: !227, file: !227, line: 850, type: !1472, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1474)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!257, !238}
!1474 = !{!1475}
!1475 = !DILocalVariable(name: "tfm", arg: 1, scope: !1471, file: !227, line: 850, type: !238)
!1476 = !DILocation(line: 850, column: 63, scope: !1471)
!1477 = !DILocation(line: 852, column: 47, scope: !1471)
!1478 = !DILocation(line: 852, column: 30, scope: !1471)
!1479 = !DILocation(line: 852, column: 9, scope: !1471)
!1480 = !DILocation(line: 852, column: 2, scope: !1471)
!1481 = distinct !DISubprogram(name: "crypto_tfm_get_flags", scope: !244, file: !244, line: 475, type: !1482, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!257, !266}
!1484 = !{!1485}
!1485 = !DILocalVariable(name: "tfm", arg: 1, scope: !1481, file: !244, line: 475, type: !266)
!1486 = !DILocation(line: 475, column: 59, scope: !1481)
!1487 = !DILocation(line: 477, column: 9, scope: !1481)
!1488 = !DILocation(line: 477, column: 14, scope: !1481)
!1489 = !DILocation(line: 477, column: 2, scope: !1481)
!1490 = !DISubprogram(name: "crypto_destroy_tfm", scope: !244, file: !244, line: 445, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !220, !266}
!1493 = distinct !DISubprogram(name: "pkcs7_find_key", scope: !2, file: !2, line: 158, type: !634, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1494)
!1494 = !{!1495, !1496, !1497, !1498}
!1495 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !1493, file: !2, line: 158, type: !460)
!1496 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1493, file: !2, line: 159, type: !543)
!1497 = !DILocalVariable(name: "x509", scope: !1493, file: !2, line: 161, type: !465)
!1498 = !DILocalVariable(name: "certix", scope: !1493, file: !2, line: 162, type: !35)
!1499 = !DILocation(line: 158, column: 49, scope: !1493)
!1500 = !DILocation(line: 159, column: 32, scope: !1493)
!1501 = !DILocation(line: 161, column: 2, scope: !1493)
!1502 = !DILocation(line: 161, column: 27, scope: !1493)
!1503 = !DILocation(line: 162, column: 2, scope: !1493)
!1504 = !DILocation(line: 162, column: 11, scope: !1493)
!1505 = !DILocation(line: 164, column: 2, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 164, column: 2)
!1507 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 164, column: 2)
!1508 = !DILocation(line: 164, column: 2, scope: !1507)
!1509 = !DILocation(line: 166, column: 14, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 166, column: 2)
!1511 = !DILocation(line: 166, column: 21, scope: !1510)
!1512 = !DILocation(line: 166, column: 12, scope: !1510)
!1513 = !DILocation(line: 166, column: 7, scope: !1510)
!1514 = !DILocation(line: 166, column: 28, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 166, column: 2)
!1516 = !DILocation(line: 166, column: 2, scope: !1510)
!1517 = !DILocation(line: 172, column: 31, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 172, column: 7)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 166, column: 63)
!1520 = !DILocation(line: 172, column: 37, scope: !1518)
!1521 = !DILocation(line: 172, column: 41, scope: !1518)
!1522 = !DILocation(line: 172, column: 48, scope: !1518)
!1523 = !DILocation(line: 172, column: 53, scope: !1518)
!1524 = !DILocation(line: 172, column: 8, scope: !1518)
!1525 = !DILocation(line: 172, column: 7, scope: !1519)
!1526 = !DILocation(line: 173, column: 4, scope: !1518)
!1527 = !DILocation(line: 174, column: 3, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !2, line: 174, column: 3)
!1529 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 174, column: 3)
!1530 = !DILocation(line: 174, column: 3, scope: !1529)
!1531 = !DILocation(line: 177, column: 19, scope: !1519)
!1532 = !DILocation(line: 177, column: 3, scope: !1519)
!1533 = !DILocation(line: 177, column: 10, scope: !1519)
!1534 = !DILocation(line: 177, column: 17, scope: !1519)
!1535 = !DILocation(line: 178, column: 3, scope: !1519)
!1536 = !DILocation(line: 166, column: 41, scope: !1515)
!1537 = !DILocation(line: 166, column: 47, scope: !1515)
!1538 = !DILocation(line: 166, column: 39, scope: !1515)
!1539 = !DILocation(line: 166, column: 59, scope: !1515)
!1540 = !DILocation(line: 166, column: 2, scope: !1515)
!1541 = distinct !{!1541, !1516, !1542, !1000, !1001}
!1542 = !DILocation(line: 179, column: 2, scope: !1510)
!1543 = !DILocation(line: 184, column: 2, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 184, column: 2)
!1545 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 184, column: 2)
!1546 = !DILocation(line: 184, column: 2, scope: !1545)
!1547 = !DILocation(line: 187, column: 2, scope: !1493)
!1548 = !DILocation(line: 188, column: 1, scope: !1493)
!1549 = distinct !DISubprogram(name: "const_test_bit", scope: !1550, file: !1550, line: 166, type: !1551, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1556)
!1550 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!482, !223, !1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !223)
!1556 = !{!1557, !1558, !1559, !1560, !1561}
!1557 = !DILocalVariable(name: "nr", arg: 1, scope: !1549, file: !1550, line: 166, type: !223)
!1558 = !DILocalVariable(name: "addr", arg: 2, scope: !1549, file: !1550, line: 166, type: !1553)
!1559 = !DILocalVariable(name: "p", scope: !1549, file: !1550, line: 168, type: !399)
!1560 = !DILocalVariable(name: "mask", scope: !1549, file: !1550, line: 169, type: !223)
!1561 = !DILocalVariable(name: "val", scope: !1549, file: !1550, line: 170, type: !223)
!1562 = !DILocation(line: 166, column: 30, scope: !1549)
!1563 = !DILocation(line: 166, column: 64, scope: !1549)
!1564 = !DILocation(line: 168, column: 2, scope: !1549)
!1565 = !DILocation(line: 168, column: 23, scope: !1549)
!1566 = !DILocation(line: 168, column: 50, scope: !1549)
!1567 = !DILocation(line: 168, column: 57, scope: !1549)
!1568 = !DILocation(line: 168, column: 55, scope: !1549)
!1569 = !DILocation(line: 169, column: 2, scope: !1549)
!1570 = !DILocation(line: 169, column: 16, scope: !1549)
!1571 = !DILocation(line: 169, column: 23, scope: !1549)
!1572 = !DILocation(line: 170, column: 2, scope: !1549)
!1573 = !DILocation(line: 170, column: 16, scope: !1549)
!1574 = !DILocation(line: 170, column: 23, scope: !1549)
!1575 = !DILocation(line: 170, column: 22, scope: !1549)
!1576 = !DILocation(line: 172, column: 12, scope: !1549)
!1577 = !DILocation(line: 172, column: 18, scope: !1549)
!1578 = !DILocation(line: 172, column: 16, scope: !1549)
!1579 = !DILocation(line: 172, column: 10, scope: !1549)
!1580 = !DILocation(line: 172, column: 9, scope: !1549)
!1581 = !DILocation(line: 173, column: 1, scope: !1549)
!1582 = !DILocation(line: 172, column: 2, scope: !1549)
!1583 = distinct !DISubprogram(name: "_test_bit", scope: !1584, file: !1584, line: 139, type: !1551, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1585)
!1584 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1585 = !{!1586, !1587}
!1586 = !DILocalVariable(name: "nr", arg: 1, scope: !1583, file: !1584, line: 139, type: !223)
!1587 = !DILocalVariable(name: "addr", arg: 2, scope: !1583, file: !1584, line: 139, type: !1553)
!1588 = !DILocation(line: 139, column: 25, scope: !1583)
!1589 = !DILocation(line: 139, column: 59, scope: !1583)
!1590 = !DILocation(line: 141, column: 25, scope: !1583)
!1591 = !DILocation(line: 141, column: 32, scope: !1583)
!1592 = !DILocation(line: 141, column: 30, scope: !1583)
!1593 = !DILocation(line: 141, column: 2, scope: !1583)
!1594 = !DILocation(line: 142, column: 23, scope: !1583)
!1595 = !DILocation(line: 142, column: 27, scope: !1583)
!1596 = !DILocation(line: 142, column: 9, scope: !1583)
!1597 = !DILocation(line: 142, column: 2, scope: !1583)
!1598 = !DISubprogram(name: "public_key_verify_signature", scope: !474, file: !474, line: 113, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!233, !1601, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!1605 = distinct !DISubprogram(name: "pkcs7_verify_sig_chain", scope: !2, file: !2, line: 193, type: !634, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1618, !1619}
!1607 = !DILocalVariable(name: "pkcs7", arg: 1, scope: !1605, file: !2, line: 193, type: !460)
!1608 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1605, file: !2, line: 194, type: !543)
!1609 = !DILocalVariable(name: "sig", scope: !1605, file: !2, line: 196, type: !490)
!1610 = !DILocalVariable(name: "x509", scope: !1605, file: !2, line: 197, type: !465)
!1611 = !DILocalVariable(name: "p", scope: !1605, file: !2, line: 197, type: !465)
!1612 = !DILocalVariable(name: "auth", scope: !1605, file: !2, line: 198, type: !495)
!1613 = !DILocalVariable(name: "ret", scope: !1605, file: !2, line: 199, type: !233)
!1614 = !DILabel(scope: !1615, name: "found_issuer_check_skid", file: !2, line: 274)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 206, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 206, column: 2)
!1617 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 206, column: 2)
!1618 = !DILabel(scope: !1615, name: "found_issuer", file: !2, line: 284)
!1619 = !DILabel(scope: !1605, name: "unsupported_sig_in_x509", file: !2, line: 303)
!1620 = !DILocation(line: 193, column: 57, scope: !1605)
!1621 = !DILocation(line: 194, column: 33, scope: !1605)
!1622 = !DILocation(line: 196, column: 2, scope: !1605)
!1623 = !DILocation(line: 196, column: 31, scope: !1605)
!1624 = !DILocation(line: 197, column: 2, scope: !1605)
!1625 = !DILocation(line: 197, column: 27, scope: !1605)
!1626 = !DILocation(line: 197, column: 34, scope: !1605)
!1627 = !DILocation(line: 197, column: 41, scope: !1605)
!1628 = !DILocation(line: 197, column: 50, scope: !1605)
!1629 = !DILocation(line: 198, column: 2, scope: !1605)
!1630 = !DILocation(line: 198, column: 28, scope: !1605)
!1631 = !DILocation(line: 199, column: 2, scope: !1605)
!1632 = !DILocation(line: 199, column: 6, scope: !1605)
!1633 = !DILocation(line: 201, column: 2, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 201, column: 2)
!1635 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 201, column: 2)
!1636 = !DILocation(line: 201, column: 2, scope: !1635)
!1637 = !DILocation(line: 203, column: 11, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 203, column: 2)
!1639 = !DILocation(line: 203, column: 18, scope: !1638)
!1640 = !DILocation(line: 203, column: 9, scope: !1638)
!1641 = !DILocation(line: 203, column: 7, scope: !1638)
!1642 = !DILocation(line: 203, column: 25, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 203, column: 2)
!1644 = !DILocation(line: 203, column: 2, scope: !1638)
!1645 = !DILocation(line: 204, column: 3, scope: !1643)
!1646 = !DILocation(line: 204, column: 6, scope: !1643)
!1647 = !DILocation(line: 204, column: 11, scope: !1643)
!1648 = !DILocation(line: 203, column: 32, scope: !1643)
!1649 = !DILocation(line: 203, column: 35, scope: !1643)
!1650 = !DILocation(line: 203, column: 30, scope: !1643)
!1651 = !DILocation(line: 203, column: 2, scope: !1643)
!1652 = distinct !{!1652, !1644, !1653, !1000, !1001}
!1653 = !DILocation(line: 204, column: 13, scope: !1638)
!1654 = !DILocation(line: 206, column: 2, scope: !1605)
!1655 = !DILocation(line: 207, column: 3, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 207, column: 3)
!1657 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 207, column: 3)
!1658 = !DILocation(line: 207, column: 3, scope: !1657)
!1659 = !DILocation(line: 210, column: 3, scope: !1615)
!1660 = !DILocation(line: 210, column: 9, scope: !1615)
!1661 = !DILocation(line: 210, column: 14, scope: !1615)
!1662 = !DILocation(line: 212, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 212, column: 7)
!1664 = !DILocation(line: 212, column: 13, scope: !1663)
!1665 = !DILocation(line: 212, column: 7, scope: !1615)
!1666 = !DILocation(line: 216, column: 4, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 212, column: 26)
!1668 = !DILocation(line: 216, column: 11, scope: !1667)
!1669 = !DILocation(line: 216, column: 23, scope: !1667)
!1670 = !DILocation(line: 217, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 217, column: 4)
!1672 = !DILocation(line: 217, column: 20, scope: !1671)
!1673 = !DILocation(line: 217, column: 11, scope: !1671)
!1674 = !DILocation(line: 217, column: 9, scope: !1671)
!1675 = !DILocation(line: 217, column: 28, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 217, column: 4)
!1677 = !DILocation(line: 217, column: 33, scope: !1676)
!1678 = !DILocation(line: 217, column: 30, scope: !1676)
!1679 = !DILocation(line: 217, column: 4, scope: !1671)
!1680 = !DILocation(line: 218, column: 5, scope: !1676)
!1681 = !DILocation(line: 218, column: 8, scope: !1676)
!1682 = !DILocation(line: 218, column: 20, scope: !1676)
!1683 = !DILocation(line: 217, column: 43, scope: !1676)
!1684 = !DILocation(line: 217, column: 46, scope: !1676)
!1685 = !DILocation(line: 217, column: 41, scope: !1676)
!1686 = !DILocation(line: 217, column: 4, scope: !1676)
!1687 = distinct !{!1687, !1679, !1688, !1000, !1001}
!1688 = !DILocation(line: 218, column: 22, scope: !1671)
!1689 = !DILocation(line: 219, column: 4, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 219, column: 4)
!1691 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 219, column: 4)
!1692 = !DILocation(line: 219, column: 4, scope: !1691)
!1693 = !DILocation(line: 220, column: 4, scope: !1667)
!1694 = !DILocation(line: 223, column: 3, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 223, column: 3)
!1696 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 223, column: 3)
!1697 = !DILocation(line: 223, column: 3, scope: !1696)
!1698 = !DILocation(line: 224, column: 9, scope: !1615)
!1699 = !DILocation(line: 224, column: 15, scope: !1615)
!1700 = !DILocation(line: 224, column: 7, scope: !1615)
!1701 = !DILocation(line: 225, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 225, column: 7)
!1703 = !DILocation(line: 225, column: 12, scope: !1702)
!1704 = !DILocation(line: 225, column: 7, scope: !1615)
!1705 = !DILocation(line: 226, column: 4, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !2, line: 226, column: 4)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !2, line: 226, column: 4)
!1708 = !DILocation(line: 226, column: 4, scope: !1707)
!1709 = !DILocation(line: 226, column: 4, scope: !1702)
!1710 = !DILocation(line: 228, column: 7, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 228, column: 7)
!1712 = !DILocation(line: 228, column: 12, scope: !1711)
!1713 = !DILocation(line: 228, column: 7, scope: !1615)
!1714 = !DILocation(line: 229, column: 4, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 229, column: 4)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 229, column: 4)
!1717 = !DILocation(line: 229, column: 4, scope: !1716)
!1718 = !DILocation(line: 229, column: 4, scope: !1711)
!1719 = !DILocation(line: 232, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 232, column: 7)
!1721 = !DILocation(line: 232, column: 13, scope: !1720)
!1722 = !DILocation(line: 232, column: 7, scope: !1615)
!1723 = !DILocation(line: 238, column: 8, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 238, column: 8)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 232, column: 26)
!1726 = !DILocation(line: 238, column: 14, scope: !1724)
!1727 = !DILocation(line: 238, column: 8, scope: !1725)
!1728 = !DILocation(line: 239, column: 5, scope: !1724)
!1729 = !DILocation(line: 240, column: 19, scope: !1725)
!1730 = !DILocation(line: 240, column: 4, scope: !1725)
!1731 = !DILocation(line: 240, column: 10, scope: !1725)
!1732 = !DILocation(line: 240, column: 17, scope: !1725)
!1733 = !DILocation(line: 241, column: 4, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 241, column: 4)
!1735 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 241, column: 4)
!1736 = !DILocation(line: 241, column: 4, scope: !1735)
!1737 = !DILocation(line: 242, column: 4, scope: !1725)
!1738 = !DILocation(line: 248, column: 10, scope: !1615)
!1739 = !DILocation(line: 248, column: 15, scope: !1615)
!1740 = !DILocation(line: 248, column: 8, scope: !1615)
!1741 = !DILocation(line: 249, column: 7, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 249, column: 7)
!1743 = !DILocation(line: 249, column: 7, scope: !1615)
!1744 = !DILocation(line: 250, column: 4, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 250, column: 4)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 250, column: 4)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 249, column: 13)
!1748 = !DILocation(line: 250, column: 4, scope: !1746)
!1749 = !DILocation(line: 251, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 251, column: 4)
!1751 = !DILocation(line: 251, column: 20, scope: !1750)
!1752 = !DILocation(line: 251, column: 11, scope: !1750)
!1753 = !DILocation(line: 251, column: 9, scope: !1750)
!1754 = !DILocation(line: 251, column: 27, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 251, column: 4)
!1756 = !DILocation(line: 251, column: 4, scope: !1750)
!1757 = !DILocation(line: 252, column: 5, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 252, column: 5)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 252, column: 5)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 251, column: 43)
!1761 = !DILocation(line: 252, column: 5, scope: !1759)
!1762 = !DILocation(line: 254, column: 32, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 254, column: 9)
!1764 = !DILocation(line: 254, column: 35, scope: !1763)
!1765 = !DILocation(line: 254, column: 39, scope: !1763)
!1766 = !DILocation(line: 254, column: 9, scope: !1763)
!1767 = !DILocation(line: 254, column: 9, scope: !1760)
!1768 = !DILocation(line: 255, column: 6, scope: !1763)
!1769 = !DILocation(line: 256, column: 4, scope: !1760)
!1770 = !DILocation(line: 251, column: 34, scope: !1755)
!1771 = !DILocation(line: 251, column: 37, scope: !1755)
!1772 = !DILocation(line: 251, column: 32, scope: !1755)
!1773 = !DILocation(line: 251, column: 4, scope: !1755)
!1774 = distinct !{!1774, !1756, !1775, !1000, !1001}
!1775 = !DILocation(line: 256, column: 4, scope: !1750)
!1776 = !DILocation(line: 257, column: 3, scope: !1747)
!1777 = !DILocation(line: 257, column: 14, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 257, column: 14)
!1779 = !DILocation(line: 257, column: 19, scope: !1778)
!1780 = !DILocation(line: 257, column: 14, scope: !1742)
!1781 = !DILocation(line: 258, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 257, column: 32)
!1783 = !DILocation(line: 258, column: 16, scope: !1782)
!1784 = !DILocation(line: 258, column: 9, scope: !1782)
!1785 = !DILocation(line: 259, column: 4, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 259, column: 4)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 259, column: 4)
!1788 = !DILocation(line: 259, column: 4, scope: !1787)
!1789 = !DILocation(line: 260, column: 13, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 260, column: 4)
!1791 = !DILocation(line: 260, column: 20, scope: !1790)
!1792 = !DILocation(line: 260, column: 11, scope: !1790)
!1793 = !DILocation(line: 260, column: 9, scope: !1790)
!1794 = !DILocation(line: 260, column: 27, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 260, column: 4)
!1796 = !DILocation(line: 260, column: 4, scope: !1790)
!1797 = !DILocation(line: 261, column: 10, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !2, line: 261, column: 9)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 260, column: 43)
!1800 = !DILocation(line: 261, column: 13, scope: !1798)
!1801 = !DILocation(line: 261, column: 9, scope: !1799)
!1802 = !DILocation(line: 262, column: 6, scope: !1798)
!1803 = !DILocation(line: 263, column: 5, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 263, column: 5)
!1805 = distinct !DILexicalBlock(scope: !1799, file: !2, line: 263, column: 5)
!1806 = !DILocation(line: 263, column: 5, scope: !1805)
!1807 = !DILocation(line: 265, column: 32, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1799, file: !2, line: 265, column: 9)
!1809 = !DILocation(line: 265, column: 35, scope: !1808)
!1810 = !DILocation(line: 265, column: 41, scope: !1808)
!1811 = !DILocation(line: 265, column: 9, scope: !1808)
!1812 = !DILocation(line: 265, column: 9, scope: !1799)
!1813 = !DILocation(line: 266, column: 6, scope: !1808)
!1814 = !DILocation(line: 267, column: 4, scope: !1799)
!1815 = !DILocation(line: 260, column: 34, scope: !1795)
!1816 = !DILocation(line: 260, column: 37, scope: !1795)
!1817 = !DILocation(line: 260, column: 32, scope: !1795)
!1818 = !DILocation(line: 260, column: 4, scope: !1795)
!1819 = distinct !{!1819, !1796, !1820, !1000, !1001}
!1820 = !DILocation(line: 267, column: 4, scope: !1790)
!1821 = !DILocation(line: 268, column: 3, scope: !1782)
!1822 = !DILocation(line: 271, column: 3, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 271, column: 3)
!1824 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 271, column: 3)
!1825 = !DILocation(line: 271, column: 3, scope: !1824)
!1826 = !DILocation(line: 272, column: 3, scope: !1615)
!1827 = !DILocation(line: 274, column: 2, scope: !1615)
!1828 = !DILocation(line: 278, column: 7, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 278, column: 7)
!1830 = !DILocation(line: 278, column: 12, scope: !1829)
!1831 = !DILocation(line: 278, column: 24, scope: !1829)
!1832 = !DILocation(line: 279, column: 31, scope: !1829)
!1833 = !DILocation(line: 279, column: 34, scope: !1829)
!1834 = !DILocation(line: 279, column: 40, scope: !1829)
!1835 = !DILocation(line: 279, column: 45, scope: !1829)
!1836 = !DILocation(line: 279, column: 8, scope: !1829)
!1837 = !DILocation(line: 278, column: 7, scope: !1615)
!1838 = !DILocation(line: 280, column: 4, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 280, column: 4)
!1840 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 279, column: 59)
!1841 = !DILocation(line: 280, column: 4, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 280, column: 4)
!1843 = !DILocation(line: 282, column: 4, scope: !1840)
!1844 = !DILocation(line: 279, column: 56, scope: !1829)
!1845 = !DILocation(line: 284, column: 2, scope: !1615)
!1846 = !DILocation(line: 285, column: 3, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 285, column: 3)
!1848 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 285, column: 3)
!1849 = !DILocation(line: 285, column: 3, scope: !1848)
!1850 = !DILocation(line: 286, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 286, column: 7)
!1852 = !DILocation(line: 286, column: 10, scope: !1851)
!1853 = !DILocation(line: 286, column: 7, scope: !1615)
!1854 = !DILocation(line: 287, column: 4, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 287, column: 4)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 286, column: 16)
!1857 = !DILocation(line: 287, column: 4, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 287, column: 4)
!1859 = !DILocation(line: 289, column: 4, scope: !1856)
!1860 = !DILocation(line: 291, column: 37, scope: !1615)
!1861 = !DILocation(line: 291, column: 40, scope: !1615)
!1862 = !DILocation(line: 291, column: 45, scope: !1615)
!1863 = !DILocation(line: 291, column: 51, scope: !1615)
!1864 = !DILocation(line: 291, column: 9, scope: !1615)
!1865 = !DILocation(line: 291, column: 7, scope: !1615)
!1866 = !DILocation(line: 292, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 292, column: 7)
!1868 = !DILocation(line: 292, column: 11, scope: !1867)
!1869 = !DILocation(line: 292, column: 7, scope: !1615)
!1870 = !DILocation(line: 293, column: 11, scope: !1867)
!1871 = !DILocation(line: 293, column: 4, scope: !1867)
!1872 = !DILocation(line: 294, column: 18, scope: !1615)
!1873 = !DILocation(line: 294, column: 3, scope: !1615)
!1874 = !DILocation(line: 294, column: 9, scope: !1615)
!1875 = !DILocation(line: 294, column: 16, scope: !1615)
!1876 = !DILocation(line: 295, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 295, column: 7)
!1878 = !DILocation(line: 295, column: 15, scope: !1877)
!1879 = !DILocation(line: 295, column: 12, scope: !1877)
!1880 = !DILocation(line: 295, column: 7, scope: !1615)
!1881 = !DILocation(line: 296, column: 4, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 296, column: 4)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 296, column: 4)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !2, line: 295, column: 18)
!1885 = !DILocation(line: 296, column: 4, scope: !1883)
!1886 = !DILocation(line: 297, column: 4, scope: !1884)
!1887 = !DILocation(line: 299, column: 10, scope: !1615)
!1888 = !DILocation(line: 299, column: 8, scope: !1615)
!1889 = !DILocation(line: 300, column: 3, scope: !1615)
!1890 = !DILocation(line: 300, column: 3, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 300, column: 3)
!1892 = !DILocation(line: 206, column: 2, scope: !1616)
!1893 = distinct !{!1893, !1894, !1895, !1001}
!1894 = !DILocation(line: 206, column: 2, scope: !1617)
!1895 = !DILocation(line: 301, column: 2, scope: !1617)
!1896 = !DILocation(line: 303, column: 1, scope: !1605)
!1897 = !DILocation(line: 310, column: 2, scope: !1605)
!1898 = !DILocation(line: 311, column: 1, scope: !1605)
!1899 = !DISubprogram(name: "asymmetric_key_id_same", scope: !497, file: !497, line: 59, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!482, !1902, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!1904 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1905, file: !1905, line: 66, type: !1906, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1911)
!1905 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1908, !562}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1911 = !{!1912, !1913}
!1912 = !DILocalVariable(name: "v", arg: 1, scope: !1904, file: !1905, line: 66, type: !1908)
!1913 = !DILocalVariable(name: "size", arg: 2, scope: !1904, file: !1905, line: 66, type: !562)
!1914 = !DILocation(line: 66, column: 73, scope: !1904)
!1915 = !DILocation(line: 66, column: 83, scope: !1904)
!1916 = !DILocation(line: 68, column: 19, scope: !1904)
!1917 = !DILocation(line: 68, column: 22, scope: !1904)
!1918 = !DILocation(line: 68, column: 2, scope: !1904)
!1919 = !DILocation(line: 69, column: 2, scope: !1904)
!1920 = !DILocation(line: 70, column: 1, scope: !1904)
!1921 = distinct !DISubprogram(name: "arch_test_bit", scope: !1922, file: !1922, line: 237, type: !1551, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1923)
!1922 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1923 = !{!1924, !1925}
!1924 = !DILocalVariable(name: "nr", arg: 1, scope: !1921, file: !1922, line: 237, type: !223)
!1925 = !DILocalVariable(name: "addr", arg: 2, scope: !1921, file: !1922, line: 237, type: !1553)
!1926 = !DILocation(line: 237, column: 29, scope: !1921)
!1927 = !DILocation(line: 237, column: 63, scope: !1921)
!1928 = !DILocation(line: 239, column: 30, scope: !1921)
!1929 = !DILocation(line: 239, column: 9, scope: !1921)
!1930 = !DILocation(line: 239, column: 54, scope: !1921)
!1931 = !DILocation(line: 239, column: 58, scope: !1921)
!1932 = !DILocation(line: 239, column: 36, scope: !1921)
!1933 = !DILocation(line: 240, column: 26, scope: !1921)
!1934 = !DILocation(line: 240, column: 30, scope: !1921)
!1935 = !DILocation(line: 240, column: 8, scope: !1921)
!1936 = !DILocation(line: 239, column: 2, scope: !1921)
!1937 = distinct !DISubprogram(name: "kasan_check_read", scope: !1938, file: !1938, line: 40, type: !1939, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1941)
!1938 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!482, !1908, !35}
!1941 = !{!1942, !1943}
!1942 = !DILocalVariable(name: "p", arg: 1, scope: !1937, file: !1938, line: 40, type: !1908)
!1943 = !DILocalVariable(name: "size", arg: 2, scope: !1937, file: !1938, line: 40, type: !35)
!1944 = !DILocation(line: 40, column: 58, scope: !1937)
!1945 = !DILocation(line: 40, column: 74, scope: !1937)
!1946 = !DILocation(line: 42, column: 2, scope: !1937)
!1947 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1948, file: !1948, line: 229, type: !1949, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1951)
!1948 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1908, !562, !233}
!1951 = !{!1952, !1953, !1954}
!1952 = !DILocalVariable(name: "ptr", arg: 1, scope: !1947, file: !1948, line: 229, type: !1908)
!1953 = !DILocalVariable(name: "size", arg: 2, scope: !1947, file: !1948, line: 229, type: !562)
!1954 = !DILocalVariable(name: "type", arg: 3, scope: !1947, file: !1948, line: 230, type: !233)
!1955 = !DILocation(line: 229, column: 60, scope: !1947)
!1956 = !DILocation(line: 229, column: 72, scope: !1947)
!1957 = !DILocation(line: 230, column: 15, scope: !1947)
!1958 = !DILocation(line: 230, column: 23, scope: !1947)
!1959 = distinct !DISubprogram(name: "constant_test_bit", scope: !1922, file: !1922, line: 204, type: !1960, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!482, !224, !1553}
!1962 = !{!1963, !1964}
!1963 = !DILocalVariable(name: "nr", arg: 1, scope: !1959, file: !1922, line: 204, type: !224)
!1964 = !DILocalVariable(name: "addr", arg: 2, scope: !1959, file: !1922, line: 204, type: !1553)
!1965 = !DILocation(line: 204, column: 52, scope: !1959)
!1966 = !DILocation(line: 204, column: 86, scope: !1959)
!1967 = !DILocation(line: 206, column: 19, scope: !1959)
!1968 = !DILocation(line: 206, column: 22, scope: !1959)
!1969 = !DILocation(line: 206, column: 15, scope: !1959)
!1970 = !DILocation(line: 207, column: 4, scope: !1959)
!1971 = !DILocation(line: 207, column: 9, scope: !1959)
!1972 = !DILocation(line: 207, column: 12, scope: !1959)
!1973 = !DILocation(line: 206, column: 44, scope: !1959)
!1974 = !DILocation(line: 207, column: 37, scope: !1959)
!1975 = !DILocation(line: 206, column: 2, scope: !1959)
!1976 = distinct !DISubprogram(name: "variable_test_bit", scope: !1922, file: !1922, line: 224, type: !1960, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DILocalVariable(name: "nr", arg: 1, scope: !1976, file: !1922, line: 224, type: !224)
!1979 = !DILocalVariable(name: "addr", arg: 2, scope: !1976, file: !1922, line: 224, type: !1553)
!1980 = !DILocalVariable(name: "oldbit", scope: !1976, file: !1922, line: 226, type: !482)
!1981 = !DILocation(line: 224, column: 52, scope: !1976)
!1982 = !DILocation(line: 224, column: 86, scope: !1976)
!1983 = !DILocation(line: 226, column: 2, scope: !1976)
!1984 = !DILocation(line: 226, column: 7, scope: !1976)
!1985 = !DILocation(line: 231, column: 33, scope: !1976)
!1986 = !DILocation(line: 231, column: 46, scope: !1976)
!1987 = !DILocation(line: 228, column: 2, scope: !1976)
!1988 = !{i64 2147811260, i64 2147811334}
!1989 = !DILocation(line: 233, column: 9, scope: !1976)
!1990 = !DILocation(line: 234, column: 1, scope: !1976)
!1991 = !DILocation(line: 233, column: 2, scope: !1976)
!1992 = !DILocation(line: 112, column: 2, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !444, file: !445, line: 112, column: 2)
!1994 = !DILocation(line: 112, column: 2, scope: !444)
!1995 = !DILocation(line: 113, column: 1, scope: !444)
